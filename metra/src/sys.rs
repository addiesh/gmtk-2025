//! Client implementation of the Metra Engine for WASM.
//! This code has all been written by-hand, with love.

use crate::{VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

#[derive(Copy, Clone, Eq, PartialEq)]
#[repr(u32)]
pub enum BufferType {
	/// Buffer containing vertex attributes, such as vertex coordinates,
	/// texture coordinate data, or vertex color data.
	Array = 0,
	/// Buffer used for element indices.
	Element = 1,
	/// Buffer used for storing uniform blocks.
	Uniform = 2,
}

#[repr(u32)]
#[allow(unused)]
pub enum LogLevel {
	/// Designates very serious errors.
	Error = 1,
	/// Designates hazardous situations.
	Warn,
	/// Designates useful information.
	Info,
	/// Designates lower priority information.
	Debug,
	/// Designates very low priority, often extremely verbose, information.
	Trace,
	/// Used for panics
	Panic,
}

impl From<log::Level> for LogLevel {
	fn from(value: log::Level) -> Self {
		use log::Level::*;
		match value {
			Error => Self::Error,
			Warn => Self::Warn,
			Info => Self::Info,
			Debug => Self::Debug,
			Trace => Self::Trace,
		}
	}
}

#[unsafe(export_name = "exposedMousePosX")]
pub static mut EXPOSED_MOUSE_POS_X: i32 = VIEWPORT_WIDTH as i32 / 2;
#[unsafe(export_name = "exposedMousePosY")]
pub static mut EXPOSED_MOUSE_POS_Y: i32 = VIEWPORT_HEIGHT as i32 / 2;
#[unsafe(export_name = "exposedMouseStatus")]
pub static mut EXPOSED_MOUSE_STATUS: u32 = 0;

#[link(wasm_import_module = "addie")]
unsafe extern "C" {
	#[must_use]
	#[link_name = "getRandom"]
	pub fn get_random() -> f64;

	/// The time (in milliseconds) since program start.
	#[must_use]
	#[link_name = "getTime"]
	pub fn get_time() -> f64;

	#[link_name = "log"]
	pub fn log(
		level: LogLevel,
		target_ptr: u32,
		target_len: u32,
		location_ptr: u32,
		location_len: u32,
		content_ptr: u32,
		content_len: u32,
	);

	#[link_name = "draw"]
	pub fn draw(
		translate_x: i32,
		translate_y: i32,
		size_w: i32,
		size_h: i32,
		sprite_index: u32,
		sprite_translate_x: i32,
		sprite_translate_y: i32,
		color: u32,
	);

	#[must_use]
	#[link_name = "savePersistent"]
	pub fn save_persistent(data_ptr: u32, data_len: u32) -> bool;
	#[must_use]
	#[link_name = "loadPersistent"]
	pub fn load_persistent(data_ptr: u32, data_len: u32) -> u32;
}

#[cfg(all(not(test), target_arch = "wasm32"))]
#[panic_handler]
fn wasm_panic_handler(panic_info: &core::panic::PanicInfo) -> ! {
	use alloc::format;
	let message = format!("{}", panic_info.message());
	let loc = panic_info.location().map(|loc| format!("{loc}"));
	unsafe {
		log(
			LogLevel::Panic,
			0,
			0,
			loc.as_ref().map(|s| s.as_ptr() as u32).unwrap_or(0),
			loc.as_ref().map(|s| s.len() as u32).unwrap_or(0),
			message.as_ptr() as u32,
			message.len() as u32,
		);
	}

	drop(message);
	drop(loc);
	core::arch::wasm32::unreachable();
}
