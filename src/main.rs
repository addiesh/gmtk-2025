#![no_std]
#![no_main]

mod articles;
mod button;
mod data;
mod main_menu;
mod office;
mod text;

extern crate alloc;

use crate::main_menu::MainMenu;
use crate::office::Office;
use libm::pow;
use log::info;
use metra::prelude::*;

#[derive(Copy, Clone, PartialEq)]
enum GameMode {
	MainMenu(MainMenu),
	Office(Office),
}

#[derive(Copy, Clone)]
struct GameState {
	mode: GameMode,
}

fn ease(n: f64) -> f64 {
	if n >= 0.8 {
		1.0
	} else if n <= 0.0 {
		0.0
	} else {
		1.0 - pow(2.0, -11.0 * n)
	}
}

fn init(engine: &mut Metra) -> GameState {
	info!("hello from init!");
	GameState {
		mode: GameMode::MainMenu(MainMenu::new()),
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

fn shade(c: u32, n: u32, d: u32) -> u32 {
	let r = (((c >> 24) & 0xFF) * n / d) & 0xFF;
	let g = (((c >> 16) & 0xFF) * n / d) & 0xFF;
	let b = (((c >> 8) & 0xFF) * n / d) & 0xFF;
	(r << 24) | (g << 16) | (b << 8) | (c & 0xFF)
}

fn update(state: &mut GameState, engine: &mut Metra) -> MetraStatus {
	match &mut state.mode {
		GameMode::MainMenu(_) => main_menu::go(state, engine),
		GameMode::Office(_) => office::go(state, engine),
	};
	MetraStatus::Continue
}

metra_main! {
	init,
	update
}
