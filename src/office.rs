use crate::articles::{ARTICLE_TEMPLATES, TemplateBlank};
use crate::button::Button;
use crate::main_menu::MainMenuMode;
use crate::text::{Font, StringDraw, draw_string, measure_string};
use crate::trending::TrendingData;
use crate::trending_widget::TrendingWidget;
use crate::{GameMode, GameState, PALETTE_BG, PALETTE_FG, PALETTE_PINK, draw_cursor, ease};
use alloc::format;
use alloc::string::ToString;
use core::f32::consts::TAU;
use libm::{cosf, sinf};
use log::info;
use metra::{Metra, Sound, Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

#[derive(Copy, Clone, PartialEq)]
pub enum OfficeMode {
	Init,
	Dealing,
	Assembling,
	Scoring,
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

#[derive(Clone, PartialEq)]
pub struct Office {
	last_mode: OfficeMode,
	mode: OfficeMode,
	last_transition_start: f64,
	transition_start: f64,
	submit_assembled_button: Button,
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
			submit_assembled_button: Button::new(Font::Medium, "Submit", false),
			score_counter: ScoreCounter::default(),
			trending_widget: TrendingWidget::new(),
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

	let (w, h) = ARTICLE_TEMPLATES[0].draw(engine, 0, 64, &[TemplateBlank::Blank, TemplateBlank::Blank]);
	let (w, h2) = ARTICLE_TEMPLATES[1].draw(engine, 0, 64 - h, &[TemplateBlank::Blank, TemplateBlank::Blank]);
	ARTICLE_TEMPLATES[2].draw(engine, 0, 64 - h - h2, &[TemplateBlank::Blank]);

	// hide the widget before it comes onscreen
	if mode.mode != OfficeMode::Assembling {
		mode.trending_widget.pos = (-TrendingWidget::WIDTH - 16) as f32;
	}

	if mode.mode == OfficeMode::Assembling {
		mode.trending_widget.update_draw(engine, &mut mode.trending_data);

		mode.submit_assembled_button.enabled = true;
		let transition_delta = time - mode.transition_start;
		let (w, h) = mode.submit_assembled_button.measure();
		let tx = ((ease(transition_delta / 600.0)) * (8.0 + w as f64)) as i32;
		mode.submit_assembled_button
			.update_draw(engine, PALETTE_PINK, PALETTE_BG, VIEWPORT_WIDTH - tx, 4);
	}

	if mode.mode == OfficeMode::Scoring {
		mode.score_counter.update_draw(engine, 0);
	}

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
			if time - mode.transition_start >= 1000.0 {
				mode.last_transition_start = mode.transition_start;
				mode.transition_start = time;
				mode.last_mode = mode.mode;
				mode.mode = OfficeMode::Assembling;
				info!("changing office mode to dealing");
			}
		}
		OfficeMode::Dealing => {}
		OfficeMode::Assembling => {
			mode.score_counter.current_offset_y = -16.0;
		}
		OfficeMode::Scoring => {}
	}

	if engine.mouse_just_pressed() {
		match mode.mode {
			OfficeMode::Init => {}
			OfficeMode::Dealing => {}
			OfficeMode::Assembling => {}
			OfficeMode::Scoring => {}
		}
	}

	draw_cursor(engine);
}
