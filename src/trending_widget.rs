use crate::PALETTE_PINK;
use crate::text::{Font, StringDraw, draw_string, measure_string};
use crate::trending::TrendingData;
use alloc::format;
use metra::{Metra, Sound, Sprite, VIEWPORT_HEIGHT};

#[derive(Copy, Clone, PartialEq)]
pub struct TrendingWidget {
	pub pos: f32,
	is_open: bool,
}

impl TrendingWidget {
	pub const WIDTH: i32 = 73;
	pub const CEILING_DROP: i32 = 16;

	#[inline]
	pub const fn new() -> Self {
		Self {
			pos: 0.0,
			is_open: false,
		}
	}

	#[inline]
	pub fn open(&self) -> bool {
		self.is_open
	}

	pub fn update_draw(&mut self, engine: &mut Metra, trending: &mut TrendingData) {
		let mouse = engine.mouse_status();

		let h = 110;
		let tab_h = 48;
		let w = 88;

		let is_hovering_tab = mouse.x >= 0
			// the additional is just to make it smoother to use
			&& mouse.x <= w - Self::WIDTH + 16
			&& mouse.y >= VIEWPORT_HEIGHT - Self::CEILING_DROP - tab_h
			&& mouse.y <= VIEWPORT_HEIGHT - Self::CEILING_DROP;

		if is_hovering_tab {
			if !self.is_open {
				engine.play_sound(Sound::ClickUp);
				self.is_open = true;
			}
		}

		let is_hovering_whole = mouse.x >= 0
			&& mouse.x <= w
			&& mouse.y >= VIEWPORT_HEIGHT - Self::CEILING_DROP - h
			&& mouse.y <= VIEWPORT_HEIGHT - Self::CEILING_DROP;

		if self.is_open && !is_hovering_whole {
			engine.play_sound(Sound::Vcr);
			self.is_open = false;
		}

		if self.is_open {
			self.pos = (self.pos + (1800.0 * engine.delta() as f32)).min(Self::WIDTH as f32);
		} else {
			self.pos = self.pos * (1.0 - 16.0 * engine.delta() as f32);
		}

		engine.draw(
			Sprite::Atlas,
			self.pos as i32 - Self::WIDTH,
			VIEWPORT_HEIGHT - Self::CEILING_DROP - h,
			w,
			h,
			0,
			-16,
			u32::MAX,
		);
		{
			let header = "trends";
			measure_string(Font::Big, header);
			draw_string(
				engine,
				StringDraw::wavy(
					Font::Big,
					header,
					7 + self.pos as i32 - Self::WIDTH,
					VIEWPORT_HEIGHT - Self::CEILING_DROP - 25,
					PALETTE_PINK,
					5.0,
				),
			);
		}
		let trending_strings = [
			Some(trending.people()[0].0.as_str()),
			Some(trending.people()[1].0.as_str()),
			None,
			Some(trending.cities()[0].0.as_str()),
			Some(trending.cities()[1].0.as_str()),
			None,
			Some(trending.things()[0].0.as_str()),
			Some(trending.things()[1].0.as_str()),
		];

		let mut y_offset = 0;
		for t_str in trending_strings {
			if let Some(t_str) = t_str {
				let s = format!("- {t_str}");
				let (w, h) = measure_string(Font::Tiny, &s);
				draw_string(
					engine,
					StringDraw::basic(
						Font::Tiny,
						&s,
						5 + self.pos as i32 - Self::WIDTH, // + total_width,
						VIEWPORT_HEIGHT - Self::CEILING_DROP - 31 - h - y_offset,
						PALETTE_PINK,
					),
				);
				y_offset += 8;
			} else {
				y_offset += 3;
			}
		}
	}
}
