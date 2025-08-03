use crate::articles::ARTICLE_TEMPLATES;
use crate::text::{Font, StringDraw, draw_string, measure_string};
use crate::trending::TrendingData;
use crate::{GameMode, GameState, PALETTE_FG, PALETTE_PINK, draw_cursor, ease};
use alloc::format;
use alloc::string::ToString;
use core::f32::consts::TAU;
use libm::{cosf, sinf};
use metra::{Metra, Sound, Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

#[derive(Copy, Clone, Eq, PartialEq)]
pub enum OfficeMode {
	Init,
	Main,
}

#[derive(Copy, Clone, PartialEq, Default)]
struct ScoreCounter {
	current_offset_x: f32,
	current_offset_y: f32,
	current_vel_x: f32,
	current_vel_y: f32,
}

impl ScoreCounter {
	fn update_draw(&mut self, engine: &mut Metra, points: usize) {
		let point_string = points.to_string();
		let (w, h) = measure_string(Font::Big, &point_string);

		draw_string(
			engine,
			StringDraw::basic(
				Font::Big,
				&point_string,
				VIEWPORT_WIDTH - 19 - w + self.current_offset_x as i32,
				VIEWPORT_HEIGHT - 19 - h + self.current_offset_y as i32,
				0xd74885ff,
			),
		);

		self.current_vel_x *= (1.0 - 20.0 * engine.delta()) as f32;
		self.current_vel_y *= (1.0 - 20.0 * engine.delta()) as f32;

		self.current_offset_x += engine.delta() as f32 * self.current_vel_x;
		self.current_offset_y += engine.delta() as f32 * self.current_vel_y;

		self.current_offset_x *= (1.0 - 10.0 * engine.delta()) as f32;
		self.current_offset_y *= (1.0 - 10.0 * engine.delta()) as f32;

		if self.current_offset_x.abs() <= 0.5 {
			self.current_offset_x = 0.0;
		}
		if self.current_offset_y.abs() <= 0.5 {
			self.current_offset_y = 0.0;
		}
		if self.current_vel_x.abs() <= 0.5 {
			self.current_vel_x = 0.0;
		}
		if self.current_vel_y.abs() <= 0.5 {
			self.current_vel_y = 0.0;
		}
	}

	fn bounce(&mut self, engine: &mut Metra) {
		let theta = engine.random() as f32 * TAU;

		self.current_vel_x = cosf(theta) * 900.0;
		self.current_vel_y = sinf(theta) * 900.0;
	}
}

#[derive(Copy, Clone, PartialEq)]
pub struct TrendingWidget {
	pos: f32,
	is_open: bool,
}

impl TrendingWidget {
	const WIDTH: i32 = 73;
	const CEILING_DROP: i32 = 16;

	fn update_draw(&mut self, engine: &mut Metra, trending: &mut TrendingData) {
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
			self.pos = (self.pos + (1800.0 * engine.delta() as f32)).clamp(0.0, Self::WIDTH as f32);
		} else {
			self.pos = (self.pos * (1.0 - 16.0 * engine.delta() as f32)).clamp(0.0, Self::WIDTH as f32);
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

		// let mut total_width = 0;
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
				// total_width += w as i32 + 4;
				y_offset += 8;
			} else {
				y_offset += 3;
			}
		}
	}
}

#[derive(Clone, PartialEq)]
pub struct Office {
	last_mode: OfficeMode,
	mode: OfficeMode,
	last_transition_start: f64,
	transition_start: f64,
	score_counter: ScoreCounter,
	trending_widget: TrendingWidget,
	trending_data: TrendingData,
}

impl Office {
	pub fn new(time: f64, engine: &mut Metra) -> Self {
		Self {
			last_mode: OfficeMode::Init,
			mode: OfficeMode::Init,
			last_transition_start: time,
			transition_start: time,
			score_counter: ScoreCounter::default(),
			trending_widget: TrendingWidget {
				pos: 0.0,
				is_open: false,
			},
			trending_data: TrendingData::new(engine),
		}
	}
}

pub fn go(state: &mut GameState, engine: &mut Metra) {
	let time = engine.time();
	let mouse = engine.mouse_status();
	let GameMode::Office(mode) = &mut state.mode else {
		unreachable!()
	};

	ARTICLE_TEMPLATES[0].draw(engine, 0, 64);

	mode.trending_widget.update_draw(engine, &mut mode.trending_data);
	if engine.mouse_just_pressed() {
		mode.score_counter.bounce(engine);
	}
	mode.score_counter.update_draw(engine, 0);

	match mode.mode {
		OfficeMode::Init => {
			// fade out
			let a = ease((600.0 + mode.transition_start - time) / 600.0);
			engine.draw(
				Sprite::Square,
				0,
				0,
				VIEWPORT_WIDTH,
				VIEWPORT_HEIGHT,
				0,
				0,
				0x20242800 | ((a * 255.0) as u32 & 0xFF),
			);
			// mode.last_transition_start = mode.transition_start;
			// mode.transition_start = time;
			// mode.last_mode = mode.mode;
			// mode.mode = OfficeMode::Main;
		}
		OfficeMode::Main => {}
	}

	draw_cursor(engine);
}
