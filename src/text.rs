use metra::{Metra, Sprite};

#[derive(Copy, Clone, Default)]
pub struct FontMetric {
	pos: u16,
	width: u8,
	glyph: u8,
}

impl FontMetric {
	pub const fn new(pos: u16, width: u8, glyph: char) -> Self {
		Self {
			pos,
			width,
			glyph: glyph as u8,
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq)]
pub enum Font {
	Tiny,
	Medium,
	Big,
}

impl Font {
	const MEDIUM_METRICS: [FontMetric; 89] = {
		const fn new_bulk<const N: usize>(data: [(u8, char); N]) -> [FontMetric; N] {
			let mut pos = 0;
			let mut i = 0;
			let mut out = [FontMetric {
				pos: 0,
				width: 0,
				glyph: 0,
			}; N];
			while i < N {
				let width = data[i].0;
				let glyph = data[i].1 as u8;
				out[i] = FontMetric { pos, width, glyph };
				pos += width as u16;
				i += 1;
			}
			out
		}

		new_bulk([
			// the +1 is padding.
			(2, '!'),
			(3, '"'),
			(5, '#'),
			(5, '$'),
			(6, '%'),
			(6, '&'),
			(3, '\''),
			(3, '('),
			(3, ')'),
			(5, '*'),
			(5, '+'),
			(2, ','),
			(4, '-'),
			(2, '.'),
			(3, '/'),
			(5, '0'),
			(3, '1'),
			(5, '2'),
			(5, '3'),
			(5, '4'),
			(5, '5'),
			(5, '6'),
			(5, '7'),
			(5, '8'),
			(5, '9'),
			(2, ':'),
			(2, ';'),
			(4, '<'),
			(4, '='),
			(4, '>'),
			(5, '?'),
			(6, '@'),
			(5, 'A'),
			(5, 'B'),
			(5, 'C'),
			(5, 'D'),
			(5, 'E'),
			(5, 'F'),
			(5, 'G'),
			(5, 'H'),
			(2, 'I'),
			(4, 'J'),
			(6, 'K'),
			(4, 'L'),
			(7, 'M'),
			(6, 'N'),
			(6, 'O'),
			(5, 'P'),
			(6, 'Q'),
			(5, 'R'),
			(5, 'S'),
			(6, 'T'),
			(5, 'U'),
			(6, 'V'),
			(7, 'W'),
			(6, 'X'),
			(6, 'Y'),
			(5, 'Z'),
			(3, '['),
			(3, '\\'),
			(3, ']'),
			(3, '^'),
			(5, '_'),
			(4, '`'),
			(5, 'a'),
			(5, 'b'),
			(4, 'c'),
			(5, 'd'),
			(5, 'e'),
			(3, 'f'),
			(5, 'g'),
			(5, 'h'),
			(2, 'i'),
			(4, 'j'),
			(5, 'k'),
			(3, 'l'),
			(7, 'm'),
			(5, 'n'),
			(5, 'o'),
			(5, 'p'),
			(5, 'q'),
			(4, 'r'),
			(4, 's'),
			(3, 't'),
			(5, 'u'),
			(5, 'v'),
			(7, 'w'),
			(5, 'x'),
			(5, 'z'),
		])
	};

	const BIG_METRICS: [FontMetric; 70] = {
		const fn new_bulk<const N: usize>(data: [(u8, char); N]) -> [FontMetric; N] {
			let mut pos = 0;
			let mut i = 0;
			let mut out = [FontMetric {
				pos: 0,
				width: 0,
				glyph: 0,
			}; N];
			while i < N {
				let glyph = data[i].1 as u8;
				let width = data[i].0 - 2;
				out[i] = FontMetric {
					pos: pos + 1,
					width,
					glyph,
				};
				pos += data[i].0 as u16;
				i += 1;
			}
			out
		}

		new_bulk([
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
			(13, '1'),
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
			(5, ','),
			(21, '\0'),
			(8, '('),
			(8, ')'),
			(18, 'A'),
			(14, 'B'),
			(17, 'C'),
			(16, 'D'),
			(13, 'E'),
			(13, 'F'),
			(17, 'G'),
			(16, 'H'),
			(5, 'I'),
			(13, 'J'),
			(16, 'K'),
			(12, 'L'),
			(19, 'M'),
			(16, 'N'),
			(18, 'O'),
			(15, 'P'),
			(18, 'Q'),
			(15, 'R'),
			(15, 'S'),
			(15, 'T'),
			(15, 'U'),
			(18, 'V'),
			(25, 'W'),
			(17, 'X'),
			(15, 'Y'),
			(16, 'Z'),
		])
	};

	const fn tiny_metric(ch: char) -> FontMetric {
		let width = 3;
		if !ch.is_ascii() {
			return FontMetric {
				glyph: 0,
				pos: 0,
				width: 0,
			};
		}
		let ch8 = ch as u8;
		if ch8 >= 'a' as u8 && ch8 <= 'z' as u8 {
			return FontMetric {
				width,
				pos: 4 * ((ch8 - 'a' as u8) as u16),
				glyph: ch8,
			};
		}
		if ch8 >= 'A' as u8 && ch8 <= 'Z' as u8 {
			return FontMetric {
				width,
				pos: 4 * ((ch8 - 'A' as u8) as u16),
				glyph: ch8 + 32,
			};
		}
		if ch8 >= '0' as u8 && ch8 <= '9' as u8 {
			return FontMetric {
				width,
				pos: 4 * (26 + (ch8 - '0' as u8) as u16),
				glyph: ch8,
			};
		}
		match ch {
			'-' => FontMetric {
				width,
				pos: 4 * 36,
				glyph: ch8,
			},
			'+' => FontMetric {
				width,
				pos: 4 * 37,
				glyph: ch8,
			},
			'!' => FontMetric {
				width,
				pos: 4 * 38,
				glyph: ch8,
			},
			'.' => FontMetric {
				width,
				pos: 4 * 39,
				glyph: ch8,
			},
			_ => FontMetric {
				glyph: 0,
				pos: 0,
				width: 0,
			},
		}
	}

	const fn medium_metric(ch: char) -> FontMetric {
		// if !ch.is_ascii() {
		return FontMetric {
			glyph: 0,
			pos: 0,
			width: 0,
		};
		// }
	}

	const fn big_metric(ch: char) -> FontMetric {
		if !ch.is_ascii() {
			return Self::BIG_METRICS[41];
		}
		let ch8 = ch as u8;
		if ch8 >= 'a' as u8 && ch8 <= 'z' as u8 {
			return Self::BIG_METRICS[(ch8 - 'a' as u8) as usize];
		}
		if ch8 >= 'A' as u8 && ch8 <= 'Z' as u8 {
			return Self::BIG_METRICS[(ch8 - 'A' as u8) as usize + 44];
		}
		if ch8 >= '0' as u8 && ch8 <= '9' as u8 {
			return Self::BIG_METRICS[(ch8 - '0' as u8) as usize + 27];
		}
		match ch {
			'!' => Self::BIG_METRICS[26],
			'#' => Self::BIG_METRICS[37],
			'*' => Self::BIG_METRICS[38],
			'.' => Self::BIG_METRICS[39],
			',' => Self::BIG_METRICS[40],
			'(' => Self::BIG_METRICS[42],
			')' => Self::BIG_METRICS[43],
			_ => Self::BIG_METRICS[41],
		}
	}

	pub const fn glyph_metric(&self, glyph: char) -> FontMetric {
		match self {
			Font::Tiny => Self::tiny_metric(glyph),
			Font::Medium => Self::medium_metric(glyph),
			Font::Big => Self::big_metric(glyph),
		}
	}

	pub const fn height(&self) -> u32 {
		match self {
			Font::Tiny => 5,
			Font::Medium => 9,
			Font::Big => 21,
		}
	}

	pub const fn sprite(&self) -> Sprite {
		match self {
			Font::Tiny => Sprite::FontTiny,
			Font::Medium => Sprite::FontMedium,
			Font::Big => Sprite::FontBig,
		}
	}
}

pub fn measure_string(font: Font, string: &str) -> (u32, u32) {
	let mut pos: u16 = 0;
	let mut lines = 1;
	let space = match font {
		Font::Tiny => 2,
		Font::Medium => 5,
		Font::Big => 6,
	};
	let line_spacing = match font {
		Font::Tiny => 1,
		Font::Medium => 1,
		Font::Big => 2,
	};
	let kern = match font {
		Font::Tiny => 1,
		Font::Medium => 1,
		Font::Big => 1,
	};
	for ch in string.chars() {
		if ch == '\r' {
			continue;
		} else if ch == '\n' {
			lines += 1;
			pos = 0;
			continue;
		} else if ch.is_whitespace() {
			pos += space;
			continue;
		}
		let metric = font.glyph_metric(ch);
		if pos != 0 {
			pos += kern;
		}
		pos += metric.width as u16;
		if font == Font::Big && ch == ',' {
			pos -= 1;
		};
	}

	(pos as _, font.height() * lines + line_spacing * (lines - 1))
}

pub fn draw_string(engine: &mut Metra, font: Font, string: &str, x: i32, y: i32, color: u32) -> (u32, u32) {
	let mut lines = { string.chars().filter(|ch| *ch == '\n').count() as i32 };
	let mut pos: u16 = 0;
	let space = match font {
		Font::Tiny => 2,
		Font::Medium => 5,
		Font::Big => 6,
	};
	let y_offset = match font {
		Font::Tiny => -1,
		Font::Medium => 0,
		Font::Big => -1,
	};
	let line_spacing = match font {
		Font::Tiny => 1,
		Font::Medium => 1,
		Font::Big => 2,
	};
	let kern = match font {
		Font::Tiny => 1,
		Font::Medium => 1,
		Font::Big => 1,
	};
	for ch in string.chars() {
		if ch == '\r' {
			continue;
		} else if ch == '\n' {
			lines -= 1;
			pos = 0;
			continue;
		} else if ch.is_whitespace() {
			pos += space;
			continue;
		}
		let metric = font.glyph_metric(ch);
		if font == Font::Big && ch == ',' {
			pos = pos.saturating_sub(1);
		};
		engine.draw(
			font.sprite(),
			pos as i32 + x,
			y + (lines) * (font.height() as i32 + line_spacing),
			metric.width as _,
			font.height() as _,
			metric.pos as _,
			y_offset,
			if metric.glyph == 0 { 0xFFFFFFFF } else { color },
		);
		pos += metric.width as u16 + kern;
	}

	(pos as _, font.height() as _)
}
