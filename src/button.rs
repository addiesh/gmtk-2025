use crate::shade;
use crate::text::{Font, StringDraw, draw_string, measure_string};
use metra::{Metra, Sound, Sprite};

#[derive(Copy, Clone, PartialEq)]
pub struct Button {
	pub label: &'static str,
	pub enabled: bool,
	font: Font,
	is_hovering: bool,
	width: i32,
	height: i32,
}

impl Button {
	pub fn new(font: Font, label: &'static str, enabled: bool) -> Self {
		let (width, height) = Self::measure_button(font, label);
		Self {
			font,
			label,
			width,
			height,
			is_hovering: false,
			enabled,
		}
	}

	#[inline]
	pub fn width(&self) -> i32 {
		self.width
	}

	#[inline]
	pub fn height(&self) -> i32 {
		self.height
	}

	fn measure_button(font: Font, label: &str) -> (i32, i32) {
		let (w, h) = measure_string(font, label);
		let pd = match font {
			Font::Tiny => 2,
			Font::Medium => 2,
			Font::Big => 2,
		};
		(w + pd * 2 + 2, h + pd * 2 + 2)
	}

	pub fn update_draw(&mut self, engine: &mut Metra, bg_color: u32, fg_color: u32, x: i32, y: i32) {
		let border_color = shade(bg_color, 1, 2);

		let mouse = engine.mouse_status();

		let (w, h) = measure_string(self.font, self.label);

		let pd = match self.font {
			Font::Tiny => 2,
			Font::Medium => 2,
			Font::Big => 2,
		};
		let hovered = mouse.x > x
			&& mouse.x < x + (w + pd * 2 + 1)
			&& mouse.y > y
			&& mouse.y < y + (h + pd * 2 + 1)
			&& self.enabled;

		if hovered && !self.is_hovering {
			engine.play_sound(Sound::ClickUp);
		}
		self.is_hovering = hovered;

		let bg_color = if hovered { shade(bg_color, 4, 5) } else { bg_color };

		let x = x + pd + 1;
		let y = y + pd + 1;
		// bg
		engine.draw(Sprite::Square, x - pd, y - pd, w + pd * 2, h + pd * 2, 0, 0, bg_color);
		// top
		engine.draw(Sprite::Square, x - pd, y + h + pd, w + pd * 2, 1, 0, 0, border_color);
		// bottom
		engine.draw(Sprite::Square, x - pd, y - pd - 1, w + pd * 2, 1, 0, 0, border_color);
		// left
		engine.draw(Sprite::Square, x - pd - 1, y - pd, 1, h + pd * 2, 0, 0, border_color);
		// right
		engine.draw(Sprite::Square, x + w + pd, y - pd, 1, h + pd * 2, 0, 0, border_color);
		draw_string(engine, StringDraw::basic(self.font, self.label, x, y, fg_color));
	}
}
