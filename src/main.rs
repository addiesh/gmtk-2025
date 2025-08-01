#![no_std]
#![no_main]

mod articles;
mod data;
mod text;

extern crate alloc;

use crate::text::{Font, draw_string, measure_string};
use alloc::string::{String, ToString};
use libm::{cos, pow, round, sin, sqrt};
use log::{debug, error, info, trace, warn};
use metra::prelude::*;
use metra::{Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

enum MainMenuMode {
	Init,
	Title,
	Credits,
}

struct MainMenu {
	last_mode: MainMenuMode,
	mode: MainMenuMode,
	transition_start: f64,
}

enum GameMode {
	MainMenu(MainMenu),
}

struct GameState {
	mode: GameMode,
}

fn ease(n: f64) -> f64 {
	if n >= 0.8 {
		1.0
	} else {
		1.0 - pow(2.0, -10.0 * n)
	}
}

impl Drop for GameState {
	fn drop(&mut self) {
		debug!("game state dropped");
	}
}

fn init(engine: &mut Metra) -> GameState {
	info!("hello from init!");
	GameState {
		mode: GameMode::MainMenu(MainMenu {
			last_mode: MainMenuMode::Init,
			mode: MainMenuMode::Title,
			transition_start: 0.0,
		}),
	}
}

fn draw_cursor(engine: &mut Metra) {
	let time = engine.time() / 500.0;
	let pos = (cos(time) * 32.0 - 16.0, sin(time) * 32.0 - 16.0);

	let mouse = engine.mouse_status();

	engine.draw(
		Sprite::Atlas,
		mouse.x - 5,
		mouse.y - 10,
		11,
		12,
		if mouse.status { 15 } else { 4 },
		0,
		0xFFFFFFFF,
	);
}

fn measure_button(font: Font, label: &str) -> (i32, i32) {
	let (w, h) = measure_string(font, label);
	let (w, h) = (w as i32, h as i32);
	let pd = match font {
		Font::Tiny => 2,
		Font::Medium => 2,
		Font::Big => 2,
	};
	(w + pd * 2 + 1, h + pd * 2 + 1)
}

fn draw_button(engine: &mut Metra, font: Font, label: &str, x: i32, y: i32) {
	let color = 0x202428FF;
	let bg_color = 0xD74885FF;
	let (w, h) = measure_string(font, label);
	let (w, h) = (w as i32, h as i32);
	let pd = match font {
		Font::Tiny => 2,
		Font::Medium => 2,
		Font::Big => 2,
	};
	let x = x + pd + 1;
	let y = y + pd + 1;
	// bg
	engine.draw(
		Sprite::Square,
		x - pd,
		y - pd,
		w + pd * 2,
		h + pd * 2,
		0,
		0,
		bg_color,
	);
	// top
	engine.draw(
		Sprite::Square,
		x - pd,
		y + h + pd,
		w + pd * 2,
		1,
		0,
		0,
		color,
	);
	// bottom
	engine.draw(
		Sprite::Square,
		x - pd,
		y - pd - 1,
		w + pd * 2,
		1,
		0,
		0,
		color,
	);
	// left
	engine.draw(
		Sprite::Square,
		x - pd - 1,
		y - pd,
		1,
		h + pd * 2,
		0,
		0,
		color,
	);
	// right
	engine.draw(
		Sprite::Square,
		x + w + pd,
		y - pd,
		1,
		h + pd * 2,
		0,
		0,
		color,
	);
	draw_string(engine, font, label, x, y, color);
}

fn update(state: &mut GameState, engine: &mut Metra) -> MetraStatus {
	let time = engine.time();
	match &mut state.mode {
		GameMode::MainMenu(mode) => {
			let color = 0x202428FF;
			let t1 = "breaking!\nout of the loop";
			let (w, h) = measure_string(Font::Big, t1);
			let ty = (VIEWPORT_HEIGHT - h) as i32 - 8;
			let hw = w as f64 / 2.0;
			let tx = (ease((time - mode.transition_start) / 1200.0) * (hw + 8.0) - hw) as _;
			draw_string(
				engine,
				Font::Big,
				t1,
				tx,
				// (VIEWPORT_WIDTH - w) as i32 / 2,
				// 8,
				ty,
				color,
			);
			let rw = ease((time - mode.transition_start) / 1500.0);
			engine.draw(
				Sprite::Square,
				tx,
				ty - 4,
				(rw * w as f64) as i32,
				2,
				0,
				0,
				color,
			);

			let b1 = "start";
			let tx = (ease((time - 150.0 - mode.transition_start) / 1500.0) * (hw + 8.0) - hw) as _;
			let (_, y) = measure_button(Font::Big, b1);
			let ty = ty - 7 - y;
			draw_button(engine, Font::Big, b1, tx, ty);
			let b2 = "credits";
			let tx = (ease((time - 300.0 - mode.transition_start) / 1500.0) * (hw + 8.0) - hw) as _;
			let (_, y) = measure_button(Font::Big, b2);
			let ty = ty - 3 - y;
			draw_button(engine, Font::Big, b2, tx, ty);

			draw_cursor(engine);
			// let time = engine.time() / 500.0;
			// let pos = (cos(time) * 32.0 - 16.0, sin(time) * 32.0 - 16.0);
			//
			// let mouse = engine.mouse_status();
			//
			// engine.draw(
			// 	Sprite::Atlas,
			// 	pos.0 as i32 + mouse.x,
			// 	pos.1 as i32 + mouse.y,
			// 	32,
			// 	32,
			// 	0,
			// 	0,
			// 	0xFFFFFFFF,
			// );
			//
			// if (round(time / 4.0) as usize % 2) == 0 {
			// 	draw_string(
			// 		engine,
			// 		Font::Big,
			// 		"you can write many words!",
			// 		16,
			// 		VIEWPORT_HEIGHT as i32 - 19 - 16,
			// 		0x1060FFFF,
			// 		false,
			// 	);
			// } else {
			// 	draw_string(
			// 		engine,
			// 		Font::Tiny,
			// 		"you can write many words!",
			// 		16,
			// 		VIEWPORT_HEIGHT as i32 - 5 - 16,
			// 		0xFF1060FF,
			// 		false,
			// 	);
			// }
			//
			MetraStatus::Continue
		}
	}
}

metra_main! {
	init,
	update
}
