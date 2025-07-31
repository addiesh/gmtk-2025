#![no_std]
#![no_main]

mod articles;
mod data;
mod text;

extern crate alloc;

use crate::text::draw_string;
use alloc::string::{String, ToString};
use libm::{cos, round, sin};
use log::{debug, error, info, trace, warn};
use metra::Sprite;
use metra::prelude::*;

struct GameState {}

impl Drop for GameState {
	fn drop(&mut self) {
		debug!("game state dropped");
	}
}

fn init(engine: &mut Metra) -> GameState {
	info!("hello from init!");
	GameState {}
}

fn update(_state: &mut GameState, engine: &mut Metra) -> MetraStatus {
	let time = engine.time() / 1000.0;
	let pos = (cos(time) * 32.0 + 64.0, sin(time) * 32.0 + 64.0);
	engine.draw(
		Sprite::Atlas,
		pos.0 as i32,
		pos.1 as i32,
		32,
		32,
		0,
		0,
		0xFFFFFFFF,
	);

	draw_string(engine, "you can write many words!", 0xFF1060FF);

	MetraStatus::Continue
}

metra_main! {
	init,
	update
}
