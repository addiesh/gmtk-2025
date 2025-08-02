use crate::text::{Font, draw_string, measure_string};
use crate::{GameMode, GameState, draw_cursor, ease};
use alloc::string::ToString;
use core::f32::consts::TAU;
use libm::{cosf, round, sinf};
use metra::{Metra, Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

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
			Font::Big,
			&point_string,
			VIEWPORT_WIDTH as i32 - 19 - w as i32 + self.current_offset_x as i32,
			VIEWPORT_HEIGHT as i32 - 19 - h as i32 + self.current_offset_y as i32,
			0xd74885ff,
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
pub struct Office {
	last_mode: OfficeMode,
	mode: OfficeMode,
	last_transition_start: f64,
	transition_start: f64,
	score_counter: ScoreCounter,
}

impl Office {
	pub fn new(time: f64) -> Self {
		Self {
			last_mode: OfficeMode::Init,
			mode: OfficeMode::Init,
			last_transition_start: time,
			transition_start: time,
			score_counter: ScoreCounter::default(),
		}
	}
}

pub fn go(state: &mut GameState, engine: &mut Metra) {
	let time = engine.time();
	let mouse = engine.mouse_status();
	let GameMode::Office(mode) = &mut state.mode else {
		unreachable!()
	};

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
				VIEWPORT_WIDTH as i32,
				VIEWPORT_HEIGHT as i32,
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
