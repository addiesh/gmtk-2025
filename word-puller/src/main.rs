use std::fs;
use rand::prelude::SliceRandom;
use rand::random_bool;

fn main() {
	let mut r = rand::rng();
	let dict = fs::read_to_string("/usr/share/dict/usa").unwrap();
	let mut out: Vec<&str> = dict.lines().filter(|s| s.chars().all(|c| c.is_ascii_alphabetic() && c.is_lowercase())).collect();
	out.shuffle(&mut r);
	out.resize(200, "");
	let out = out.join("\n");
	fs::write("skibidi", out).unwrap();
	()
}
