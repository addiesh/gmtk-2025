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
use metra::{MouseStatus, Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

#[derive(Copy, Clone, Eq, PartialEq)]
enum MainMenuMode {
	Init,
	Title,
	Credits,
	Start,
}

#[derive(Copy, Clone, PartialEq)]
struct MainMenu {
	last_mode: MainMenuMode,
	mode: MainMenuMode,
	last_transition_start: f64,
	transition_start: f64,
}

#[derive(Copy, Clone, PartialEq)]
enum GameMode {
	MainMenu(MainMenu),
}

#[derive(Copy, Clone)]
struct GameState {
	mode: GameMode,
	last_mouse: MouseStatus,
}

fn ease(n: f64) -> f64 {
	if n >= 0.8 {
		1.0
	} else {
		1.0 - pow(2.0, -10.0 * n)
	}
}

fn init(engine: &mut Metra) -> GameState {
	info!("hello from init!");
	GameState {
		mode: GameMode::MainMenu(MainMenu {
			last_mode: MainMenuMode::Init,
			mode: MainMenuMode::Title,
			last_transition_start: 0.0,
			transition_start: 0.0,
		}),
		last_mouse: MouseStatus {
			status: false,
			x: 0,
			y: 0,
		},
	}
}

fn draw_cursor(engine: &mut Metra) {
	let mouse = engine.mouse_status();

	engine.draw(
		Sprite::Atlas,
		mouse.x - 5,
		mouse.y - 7,
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

fn shade(c: u32, n: u32, d: u32) -> u32 {
	let r = (((c >> 24) & 0xFF) * n / d) & 0xFF;
	let g = (((c >> 16) & 0xFF) * n / d) & 0xFF;
	let b = (((c >> 8) & 0xFF) * n / d) & 0xFF;
	(r << 24) | (g << 16) | (b << 8) | (c & 0xFF)
}

fn draw_button(
	engine: &mut Metra,
	font: Font,
	bg_color: u32,
	fg_color: u32,
	label: &str,
	x: i32,
	y: i32,
) {
	let border_color = shade(bg_color, 1, 2);

	let mouse = engine.mouse_status();

	let (w, h) = measure_string(font, label);
	let (w, h) = (w as i32, h as i32);

	let pd = match font {
		Font::Tiny => 2,
		Font::Medium => 2,
		Font::Big => 2,
	};

	let hovered = mouse.x > x
		&& mouse.x < x + (w + pd * 2 + 1)
		&& mouse.y > y
		&& mouse.y < y + (h + pd * 2 + 1);

	let bg_color = if hovered {
		shade(bg_color, 4, 5)
	} else {
		bg_color
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
		border_color,
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
		border_color,
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
		border_color,
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
		border_color,
	);
	draw_string(engine, font, label, x, y, fg_color);
}

fn update(state: &mut GameState, engine: &mut Metra) -> MetraStatus {
	let time = engine.time();
	let mouse = engine.mouse_status();
	match &mut state.mode {
		GameMode::MainMenu(mode) => {
			let color = 0x202428FF;
			let t1 = "breaking!\nout of the loop";
			let (w, h) = measure_string(Font::Big, t1);
			let ty = (VIEWPORT_HEIGHT - h) as i32 - 8;
			let hw = w as f64 / 2.0;
			let transition_delta = if mode.mode == MainMenuMode::Title {
				time - mode.transition_start
			} else {
				time - mode.last_transition_start
			};
			let tx = (ease(transition_delta / 1200.0) * (hw + 8.0) - hw) as _;
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
			let rw = ease(transition_delta / 1500.0);
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

			let bg = 0xd74885ff;
			let fg = 0xE6DECFFF;

			let b1 = "start";
			let start_button_x = (ease((transition_delta - 150.0) / 1500.0) * (hw + 8.0) - hw) as _;
			let (start_button_w, start_button_h) = measure_button(Font::Big, b1);
			let start_button_y = ty - 7 - start_button_h;
			draw_button(
				engine,
				Font::Big,
				bg,
				fg,
				b1,
				start_button_x,
				start_button_y,
			);

			let b2 = "credits";
			let tx = (ease((transition_delta - 300.0) / 1500.0) * (hw + 8.0) - hw) as _;
			let (_, y) = measure_button(Font::Big, b2);
			let ty = start_button_y - 3 - y;
			draw_button(engine, Font::Big, bg, fg, b2, tx, ty);

			if mode.mode == MainMenuMode::Title {
				// click event
				if state.last_mouse.status == false && mouse.status == true {
					if mouse.x > start_button_x
						&& mouse.x < start_button_x + start_button_w
						&& mouse.y > start_button_y
						&& mouse.y < start_button_y + start_button_h
					{
						mode.last_transition_start = mode.transition_start;
						mode.transition_start = time;
						mode.last_mode = mode.mode;
						mode.mode = MainMenuMode::Start;
					}
				}
			} else if mode.mode == MainMenuMode::Start {
				// fade out
				let a = ease((time - mode.transition_start) / 2000.0);
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
			}

			draw_cursor(engine);

			state.last_mouse = mouse;
			MetraStatus::Continue
		}
	}
}

metra_main! {
	init,
	update
}
