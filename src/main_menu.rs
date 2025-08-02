use crate::button::Button;
use crate::office::Office;
use crate::text::{Font, draw_string, measure_string};
use crate::{GameMode, GameState, draw_cursor, ease};
use log::info;
use metra::{Metra, Sound, Sprite, VIEWPORT_HEIGHT, VIEWPORT_WIDTH};

#[derive(Copy, Clone, Eq, PartialEq)]
pub enum MainMenuMode {
	Init,
	Title,
	Credits,
	Start,
}

#[derive(Copy, Clone, PartialEq)]
pub struct MainMenu {
	last_mode: MainMenuMode,
	mode: MainMenuMode,
	last_transition_start: f64,
	transition_start: f64,
	start_button: Button,
	credits_button: Button,
}

impl MainMenu {
	pub fn new() -> Self {
		Self {
			last_mode: MainMenuMode::Init,
			mode: MainMenuMode::Title,
			last_transition_start: 0.0,
			transition_start: 0.0,
			start_button: Button::new(Font::Big, "start", true),
			credits_button: Button::new(Font::Big, "credits", true),
		}
	}
}

pub fn go(state: &mut GameState, engine: &mut Metra) {
	let GameMode::MainMenu(mode) = &mut state.mode else {
		unreachable!()
	};
	let time = engine.time();
	let mouse = engine.mouse_status();

	let color = 0x202428FF;
	let t1 = "BREAKING!\nout of the loop";
	let (w, h) = measure_string(Font::Big, t1);
	let ty = (VIEWPORT_HEIGHT - h) as i32 - 8;
	let hw = w as f64 / 2.0;
	let transition_delta = if mode.mode == MainMenuMode::Title {
		time - mode.transition_start
	} else {
		time - mode.last_transition_start
	};
	let tx = (ease(transition_delta / 1200.0) * (hw + 8.0) - hw) as _;
	draw_string(engine, Font::Big, t1, tx, ty, color);
	let rw = ease(transition_delta / 1500.0);
	let underline_y = ty - 4;
	// underline bar
	engine.draw(Sprite::Square, tx, underline_y, (rw * w as f64) as i32, 2, 0, 0, color);

	let bg = 0xd74885ff;
	let fg = 0xE6DECFFF;

	let start_button_x = (ease((transition_delta - 150.0) / 1200.0) * (hw + 8.0) - hw) as _;
	let start_button_y = underline_y - 2 - mode.start_button.height();
	mode.start_button
		.update_draw(engine, bg, fg, start_button_x, start_button_y);

	// let tx = (ease((transition_delta - 300.0) / 1200.0) * (hw + 8.0) - hw) as _;
	// let ty = start_button_y - 2 - mode.credits_button.height();
	// mode.credits_button.update_draw(engine, bg, fg, tx, ty);

	let cred = "made by addie.sh";
	let (w, h) = measure_string(Font::Tiny, cred);
	let ty = start_button_y - h as i32 - 2;
	let fade = (ease((transition_delta - 600.0) / 800.0) * 128.0) as u32;
	draw_string(engine, Font::Tiny, cred, 8, ty, (color & 0xFFFFFF00) | (fade & 0xFF));

	if mode.mode == MainMenuMode::Title {
		// click event
		if engine.mouse_just_pressed() {
			//
			if mouse.x > start_button_x
				&& mouse.x < start_button_x + mode.start_button.width()
				&& mouse.y > start_button_y
				&& mouse.y < start_button_y + mode.start_button.height()
			{
				engine.play_sound(Sound::Vcr);
				mode.last_transition_start = mode.transition_start;
				mode.transition_start = time;
				mode.last_mode = mode.mode;
				mode.mode = MainMenuMode::Start;
				mode.start_button.enabled = false;
				mode.credits_button.enabled = false;
			}
		}
	} else if mode.mode == MainMenuMode::Start {
		// fade out
		let a = ease((time - mode.transition_start) / 1200.0);
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
		if a >= 1.0 {
			state.mode = GameMode::Office(Office::new(time));
			info!("changing gamemode to office");
		}
	}

	draw_cursor(engine);
}
