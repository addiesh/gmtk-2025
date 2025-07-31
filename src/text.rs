use metra::{Metra, Sprite};

#[derive(Copy, Clone, Default)]
struct FontMetric {
	pos: u16,
	width: u8,
	glyph: u8,
}

impl FontMetric {
	pub const fn new_bulk<const N: usize>(data: [(u8, char); N]) -> [Self; N] {
		let mut pos = 0;
		let mut i = 0;
		let mut out = [Self {
			pos: 0,
			width: 0,
			glyph: 0,
		}; N];
		while i < N {
			let width = data[i].0;
			let glyph = data[i].1 as u8;
			out[i] = Self { pos, width, glyph };
			pos += width as u16;
			i += 1;
		}
		out
	}

	pub const fn new(pos: u16, width: u8, glyph: char) -> Self {
		Self {
			pos,
			width,
			glyph: glyph as u8,
		}
	}
}

pub fn draw_string(engine: &mut Metra, string: &str, color: u32) -> (u32, u32) {
	const FONT_WIDTHS: &[FontMetric] = &FontMetric::new_bulk([
		(12, 'a'),
		(12, 'b'),
		(12, 'c'),
		(12, 'd'),
		(12, 'e'),
		(9, 'f'),
		(12, 'g'),
		(12, 'h'),
		(5, 'i'),
		(7, 'j'),
		(12, 'k'),
		(6, 'l'),
		(18, 'm'),
		(12, 'n'),
		(12, 'o'),
		(12, 'p'),
		(12, 'q'),
		(9, 'r'),
		(11, 's'),
		(9, 't'),
		(12, 'u'),
		(14, 'v'),
		(19, 'w'),
		(13, 'x'),
		(14, 'y'),
		(11, 'z'),
		(5, '!'),
		(13, '0'),
		(9, '1'),
		(13, '2'),
		(13, '3'),
		(13, '4'),
		(13, '5'),
		(13, '6'),
		(13, '7'),
		(13, '8'),
		(13, '9'),
		(14, '#'),
		(14, '*'),
		(4, '.'),
		(4, ','),
	]);

	const fn get_font_char(ch: char) -> FontMetric {
		let default = FontMetric::new(0, 0, '\0');
		if !ch.is_ascii() {
			return default;
		}
		let ch8 = ch as u8;
		if ch8 >= 'a' as u8 && ch8 <= 'z' as u8 {
			return FONT_WIDTHS[(ch8 - 'a' as u8) as usize];
		}
		if ch8 >= '0' as u8 && ch8 <= '9' as u8 {
			return FONT_WIDTHS[(ch8 - '0' as u8) as usize + 27];
		}
		match ch {
			'!' => FONT_WIDTHS[26],
			// '.' => FONT_WIDTHS[26],
			// ',' => FONT_WIDTHS[26],
			_ => default,
		}
	}
	const FONT_HEIGHT: i32 = 21;

	let mut pos: u16 = 0;
	for ch in string.chars() {
		if ch.is_whitespace() {
			pos += 8;
			continue;
		}
		let metric = get_font_char(ch);
		engine.draw(
			Sprite::Font,
			pos as i32,
			0i32,
			metric.width as _,
			FONT_HEIGHT,
			metric.pos as _,
			0,
			color,
		);
		pos += metric.width as u16;
	}

	(pos as _, FONT_HEIGHT as _)
}
