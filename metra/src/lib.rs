#![no_std]

extern crate alloc;

#[cfg(not(target_arch = "wasm32"))]
compile_error!("Metra must target WASM32");

// lol, lmao.
// #![forbid(unsafe_code)]

#[global_allocator]
static DLMALLOC: dlmalloc::GlobalDlmalloc = dlmalloc::GlobalDlmalloc;

use core::ops::Deref;

use alloc::string::String;
use alloc::vec::Vec;
use alloc::{borrow::ToOwned, boxed::Box};
use base64::Engine;
use core::num::NonZeroU32;
use core::ptr::NonNull;
use log::{debug, error, warn};
use crate::resource::ResourceTarget;

mod logger;
pub mod prelude;
pub mod resource;
mod sys;

pub const VIEWPORT_WIDTH: u32 = 240;
pub const VIEWPORT_HEIGHT: u32 = 180;

pub struct Metra {}

#[derive(Copy, Clone)]
pub enum Sprite {
	Atlas,
	Square,
	Checker,
	FontTiny,
	FontMedium,
	FontBig,
}

impl Sprite {
	fn asset_index(&self) -> u32 {
		match self {
			Sprite::FontTiny => 1,
			Sprite::FontMedium => 2,
			Sprite::FontBig => 3,
			Sprite::Atlas => 4,
			Sprite::Square => 5,
			Sprite::Checker => 6,
		}
	}
}

#[derive(Copy, Clone)]
pub struct MouseStatus {
	pub x: i32,
	pub y: i32,
	pub status: bool,
}

impl Metra {
	pub(crate) fn new() -> Self {
		Self {}
	}

	#[inline]
	pub(crate) fn update_internal(&mut self, status: MetraStatus) {
		fn iterate_targets<T>(
			targets: &mut Vec<NonNull<ResourceTarget<T>>>,
			func: fn(target: &mut T),
		) {
			targets.retain_mut(|a| unsafe {
				// SAFETY: `a` is always allocated by a Box, ensuring proper alignment,
				//		It will only ever be deallocated by this function
				let target = a.as_mut();
				match &mut target.data {
					None => {
						// remove from array and release resources.
						// SAFETY: the NonNull will never be accessed again (removed from vec)
						//		by the end of this block.
						let boxed: Box<ResourceTarget<T>> = Box::from_raw(a.as_mut());
						drop(boxed);
						false
					}
					Some(data) => {
						// run the closure and keep in the array
						func(data);
						true
					}
				}
			});
		}
		//
		// // self.universal_shader_uniform
		// // 	.upload(&[UniversalShaderUniform {
		// // 		time: unsafe { sys::get_time() as f32 },
		// // 		transform: [1.0, 0.0, 0.0, 1.0],
		// // 	}]);
		//
		// // TODO: use uniform blocks to share universal shader inputs (time/transform)!!!
		// //		 you already added support for uniform buffers anyway
		// iterate_targets(&mut self.meshes, |mesh| {
		// 	// TODO: render mesh
		// 	unsafe {
		// 		sys::bind_vertex_array(mesh.model.vertex_array_handle);
		// 		mesh.model.positions.bind();
		// 		mesh.model.coordinates.bind();
		// 		mesh.model.indices.bind();
		// 		mesh.material.bind();
		// 		// the multiplication is because each triangle is an element in the greater array
		// 		let index_count = mesh.model.indices.len() as u32 * 3;
		// 		sys::draw_triangles(index_count);
		// 		debug!("drew mesh with {index_count} indices");
		// 	}
		// });
		// // TODO: render everything!
	}

	/// Returns the time elapsed since the start of the game, in milliseconds.
	#[must_use]
	#[inline]
	pub fn time(&self) -> f64 {
		unsafe { sys::get_time() }
	}

	#[inline]
	pub fn draw(&self, sprite: Sprite, x: i32, y: i32, w: i32, h: i32, inner_x: i32, inner_y: i32, color: u32) {
		unsafe {
			sys::draw(
				x,
				y,
				w,
				h,
				sprite.asset_index(),
				inner_x,
				inner_y,
				color
			);
		}
	}

	#[must_use]
	#[inline]
	pub fn mouse_status(&self) -> MouseStatus{
		unsafe {
			MouseStatus {
				x: sys::EXPOSED_MOUSE_POS_X,
				y: sys::EXPOSED_MOUSE_POS_Y,
				status: sys::EXPOSED_MOUSE_STATUS == 1
			}
		}
	}

	/// Returns a pseudo-random number from 0 to 1.
	#[must_use]
	#[inline]
	pub fn random(&self) -> f64 {
		unsafe { sys::get_random() }
	}

	/// Writes a buffer to the persistent data store.
	/// Returns 1 on success, or 0 otherwise.
	#[must_use]
	pub fn save_persistent(&mut self, data: &[u8]) -> bool {
		unsafe {
			let decoded = base64::engine::general_purpose::STANDARD.encode(data);
			let res = sys::save_persistent(decoded.as_ptr() as u32, decoded.len() as u32);
			drop(decoded);
			res
		}
	}

	/// Returns
	#[must_use]
	pub fn load_persistent(&self) -> Option<Box<[u8]>> {
		unsafe {
			match sys::load_persistent(0, 0) {
				u32::MAX => None,
				0 => Some(Box::new([])),
				size => {
					let mut allocation = Box::new_uninit_slice(size as usize);
					let res = sys::load_persistent(allocation.as_mut_ptr() as u32, size);
					if res == u32::MAX {
						panic!("Size of persistent data changed while performing load!");
					}
					let text = allocation.assume_init();
					let decoded = base64::engine::general_purpose::STANDARD.decode(text);
					match decoded {
						Ok(v) => Some(v.into_boxed_slice()),
						Err(err) => {
							error!("DecodeError during persistent data load, {err}");
							None
						}
					}
				}
			}
		}
	}

	// pub fn get_action_state<T>(&self) -> { }
	// pub fn did_just_action<T>(&self) -> bool {}
	// pub fn load_asset(&self) -> Asset {}
}

pub struct Effect {}

#[derive(Clone, Copy, PartialEq, Eq)]
#[repr(u32)]
pub enum MetraStatus {
	/// Stops execution whenever possible and releases assets and resources.
	Stop = 0,
	/// Continues execution as normal.
	Continue = 1,
	// /// Continues execution, but with a higher tolerance for delays.
	// /// Use this for things like pause menus, where performance is less of a concern.
	// Yield = 2,
}

/// The beginning of a Metra game.
#[macro_export]
macro_rules! metra_main {
	{ $init:expr, $update:expr } => {
		#[unsafe(export_name = "engineMain")]
		extern "C" fn __engine_main() {
			::metra::run(
				$init,
				$update
			)
		}
	};
}

pub struct MetraResourceManifest;

/// This function initializes the Metra engine,
/// and should only be called from within the [metra_main!] macro.
// can you tell we're committing crimes against Rust?
// We **have** to use global state here in order to get the registration-based API I really wanted.
//
#[allow(static_mut_refs)]
#[inline]
pub fn run<T: 'static>(
	init_callback: fn(engine: &mut Metra) -> T,
	update_callback: fn(state: &mut T, engine: &mut Metra) -> MetraStatus,
) {
	static mut HAS_SETUP: bool = false;
	// possibly replace with a cell in the future?
	static mut UPDATE_FN: Option<Box<dyn FnMut() -> MetraStatus>> = None;

	#[unsafe(export_name = "engineUpdate")]
	extern "C" fn engine_update() -> MetraStatus {
		unsafe { UPDATE_FN.as_mut().unwrap()() }
	}

	#[unsafe(export_name = "engineClean")]
	extern "C" fn engine_clean() -> () {
		unsafe {
			debug!("dropping closure");
			drop(UPDATE_FN.take().unwrap());
		}
	}

	unsafe {
		if HAS_SETUP {
			panic!("run is not allowed to be called multiple times");
		} else {
			HAS_SETUP = true;
		}
	}

	logger::init();

	let mut engine = Metra::new();
	// The game state will be set to None when the game requests quit (via MetaStatus::Stop)
	let mut game_state = Some(init_callback(&mut engine));
	unsafe {
		UPDATE_FN = Some(Box::new(move || {
			// This closure captures the engine and the game state,
			// which at this point have known sizes.
			match &mut game_state {
				None => {
					warn!("update called after game state was dropped");
					MetraStatus::Stop
				}
				Some(state) => {
					let status = update_callback(state, &mut engine);

					if status == MetraStatus::Stop {
						debug!("dropping game state");
						game_state = None;
						debug!("game state dropped, all assets/resources should be freed.");
						debug!("performing final internal update");
						engine.update_internal(status);
					} else {
						engine.update_internal(status);
					}

					status
				}
			}
		}));
	}
}
