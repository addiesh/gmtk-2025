extern crate alloc;

use crate::text::{Font, StringDraw, draw_string, measure_string};
use crate::trending::TrendingData;
use crate::{PALETTE_BG, PALETTE_FG, PALETTE_PINK};
use alloc::boxed::Box;
use alloc::string::String;
use alloc::vec::Vec;
use metra::{Metra, Sprite};

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum Thing {
	Cats,
	X6847,
	Rats,
	Bats,
	Water,
	Deodorant,
	Soda,
	Sofa,
	Mouth,
	Flags,
}

impl Thing {
	pub const fn as_str(&self) -> &'static str {
		match self {
			Thing::Cats => "Cats",
			Thing::X6847 => "X6847",
			Thing::Rats => "Rats",
			Thing::Bats => "Bats",
			Thing::Water => "Water",
			Thing::Deodorant => "Deodorant",
			Thing::Soda => "Soda",
			Thing::Sofa => "Sofa",
			Thing::Mouth => "Mouth",
			Thing::Flags => "Flags",
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum City {
	NewForkville,
	Burghin,
	Floridistan,
	Jebraznil,
	RepublicOfMudrock,
	Nightmare,
	Mars,
	MonteBeer,
}

impl City {
	pub const fn as_str(&self) -> &'static str {
		match self {
			City::NewForkville => "New Forkville",
			City::Burghin => "Burghin",
			City::Floridistan => "Floridistan",
			City::Jebraznil => "Jebraznil",
			City::RepublicOfMudrock => "Mud Republic",
			City::Nightmare => "Nightmare",
			City::Mars => "Mars",
			City::MonteBeer => "Monte Beer",
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum Person {
	LeoMulbery,
	GamesBoy,
	JohnCrapcon,
	JonaldDragon,
	BenchGator,
	LesMorester,
	GeorgeKing,
	DougMoffster,
	LoganDreamer,
	ToyLBeaubuo,
}

impl Person {
	pub const fn city(&self) -> City {
		match self {
			Person::LeoMulbery => City::Burghin,
			Person::GamesBoy => City::Nightmare,
			Person::JohnCrapcon => City::MonteBeer,
			Person::JonaldDragon => City::Mars,
			Person::BenchGator => City::Floridistan,
			Person::LesMorester => City::Jebraznil,
			Person::GeorgeKing => City::RepublicOfMudrock,
			Person::DougMoffster => City::MonteBeer,
			Person::LoganDreamer => City::Mars,
			Person::ToyLBeaubuo => City::NewForkville,
		}
	}

	pub(crate) const fn as_str(&self) -> &'static str {
		match self {
			Person::LeoMulbery => "Leo Mulbery",
			Person::GamesBoy => "Games Boy",
			Person::JohnCrapcon => "John Crapcon",
			Person::JonaldDragon => "Jonald Dragon",
			Person::BenchGator => "Bench Gator",
			Person::LesMorester => "Les Morester",
			Person::GeorgeKing => "George King",
			Person::DougMoffster => "Doug Moffster",
			Person::LoganDreamer => "Logan Dreamer",
			Person::ToyLBeaubuo => "Toy L'BeauBuo",
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum ArticleWord {
	Person(Person),
	City(City),
	Thing(Thing),
}

impl ArticleWord {
	const fn category(&self) -> ArticleCategory {
		match self {
			ArticleWord::Person(_) => ArticleCategory::Person,
			ArticleWord::City(_) => ArticleCategory::City,
			ArticleWord::Thing(_) => ArticleCategory::Thing,
		}
	}

	const fn as_str(&self) -> &'static str {
		match self {
			ArticleWord::Person(p) => p.as_str(),
			ArticleWord::City(c) => c.as_str(),
			ArticleWord::Thing(t) => t.as_str(),
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum ArticleCategory {
	Person,
	City,
	Thing,
	Any,
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum ArticlePart {
	Word(ArticleCategory),
	Literal(&'static str),
}

pub struct ArticleTemplate {
	pub parts: &'static [ArticlePart],
}

impl ArticleTemplate {
	#[inline]
	const fn new(parts: &'static [ArticlePart]) -> Self {
		Self { parts }
	}

	const FONT: Font = Font::Tiny;

	pub fn measure(&self) -> (i32, i32) {
		let mut total_width = 0;
		let blank = measure_string(Self::FONT, "____").0 + 2;
		for part in self.parts {
			total_width += match part {
				ArticlePart::Word(w) => blank,
				ArticlePart::Literal(s) => measure_string(Self::FONT, s).0,
			}
		}
		(total_width, Self::FONT.height() + 2)
	}

	pub fn draw(&self, engine: &mut Metra, x: i32, y: i32) -> (i32, i32) {
		let mut pos = 0;
		let blank = measure_string(Self::FONT, "____").0 + 2;
		for part in self.parts {
			pos += match part {
				ArticlePart::Word(w) => {
					engine.draw(
						Sprite::Square,
						x + pos,
						y - 1,
						blank,
						Self::FONT.height() + 2,
						0,
						0,
						PALETTE_PINK,
					);
					draw_string(
						engine,
						StringDraw::wavy(Self::FONT, "____", x + pos + 1, y + 1, PALETTE_BG, 12.0),
					)
					.0;
					blank
				}
				ArticlePart::Literal(s) => {
					draw_string(engine, StringDraw::basic(Self::FONT, s, x + pos, y, PALETTE_FG)).0
				}
			};
		}
		pos += (self.parts.len() as i32).saturating_sub(1) * 4;
		(pos, Self::FONT.height())
	}
}

// 	Death,
// 	CarCrash,
// 	CourtCase,
// 	Fail,
// 	Murder,
// 	Allegations,
// - Trying to lose [any]? Try [any] NOW!
// - Local [location] [any] day celebration gone WRONG (gone [word:any]?!)
// - You will not believe [person]'s take on [word:any]
// - [person]'s Response to the [word:any] Allegations
// - 5 ways to get rid of [word:actions]

pub const ARTICLE_TEMPLATES: &[ArticleTemplate] = &[
	ArticleTemplate::new(&[
		ArticlePart::Word(ArticleCategory::Person),
		ArticlePart::Literal("'s Response To The "),
		ArticlePart::Word(ArticleCategory::Any),
		ArticlePart::Literal(" Allegations"),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Literal("You Will Not Believe "),
		ArticlePart::Word(ArticleCategory::Person),
		ArticlePart::Literal("'s Take On "),
		ArticlePart::Word(ArticleCategory::Any),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Word(ArticleCategory::Person),
		ArticlePart::Literal(" DIES At Age 58 (Are You Next?)"),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Literal("Top 10 People From "),
		ArticlePart::Word(ArticleCategory::City),
		ArticlePart::Literal(" That Like "),
		ArticlePart::Word(ArticleCategory::Any),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Literal("5 Rappers That "),
		ArticlePart::Word(ArticleCategory::Person),
		ArticlePart::Literal(" Was Afraid To Diss"),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Literal("120 Ways To Remove "),
		ArticlePart::Word(ArticleCategory::City),
		ArticlePart::Literal(" "),
		ArticlePart::Word(ArticleCategory::Any),
		ArticlePart::Literal(" From Your Home "),
	]),
	ArticleTemplate::new(&[
		ArticlePart::Literal("Local "),
		ArticlePart::Word(ArticleCategory::City),
		ArticlePart::Literal(" Day Celebration Gone WRONG (Gone "),
		ArticlePart::Word(ArticleCategory::Any),
		ArticlePart::Literal("?!)"),
	]),
];

#[derive(Copy, Clone, PartialEq)]
pub enum ScoreType {
	Addition(u32),
	Multiplier(f32),
}

#[derive(Clone, PartialEq)]
pub struct ScoreInfo {
	message: String,
	score_type: ScoreType,
}

impl ScoreInfo {
	pub fn new(message: String, score_type: ScoreType) -> Self {
		Self { message, score_type }
	}
}

pub fn stringify_article(template: &ArticleTemplate, words: &[ArticleWord]) -> String {
	let mut out_string = String::new();
	for i in 0..template.parts.len() {
		let part = template.parts[i];
		match part {
			ArticlePart::Literal(s) => {
				out_string += s;
			}
			_ => {
				out_string += words[i].as_str();
			}
		}
	}

	out_string
}

pub fn score_article(template: &ArticleTemplate, words: &[ArticleWord], trending: &TrendingData) -> Vec<ScoreInfo> {
	let parts = template.parts;
	let fill_parts: Box<[ArticleCategory]> = parts
		.iter()
		.filter_map(|p| match p {
			ArticlePart::Word(word_type) => Some(*word_type),
			ArticlePart::Literal(_) => None,
		})
		.collect();

	if fill_parts.len() != words.len() {
		panic!("word count != part count!");
	}

	let mut score = Vec::with_capacity(words.len() * 2);

	let mut matched_categories = 0;

	for i in 0..words.len() {
		let word = words[i];
		let slot = fill_parts[i];
		let word_type = word.category();
		let trending_index: usize;
		let trending_score: u32;

		ScoreInfo::new(String::from("Word!"), ScoreType::Addition(20));

		match word {
			ArticleWord::Person(p) => {
				trending_index = trending.people().iter().position(|x| x.0 == p).unwrap_or(10);
				trending_score = trending.people()[trending_index].1;
			}
			ArticleWord::City(c) => {
				trending_index = trending.cities().iter().position(|x| x.0 == c).unwrap_or(10);
				trending_score = trending.cities()[trending_index].1;
			}
			ArticleWord::Thing(t) => {
				trending_index = trending.things().iter().position(|x| x.0 == t).unwrap_or(10);
				trending_score = trending.things()[trending_index].1;
			}
		}

		if trending_index < 5 {
			score.push(ScoreInfo::new(
				String::from("Trending Person!"),
				ScoreType::Addition(trending_score * 40),
			));
		}

		if slot == ArticleCategory::Any || slot == word_type {
			matched_categories += 1;
		}
	}

	words
		.iter()
		.filter_map(|w| if let ArticleWord::Person(p) = w { Some(p) } else { None })
		.for_each(|person| {
			for o_word in words {
				if let ArticleWord::City(city) = o_word {
					if person.city() == *city {
						score.push(ScoreInfo::new(
							String::from("Spatial Relevance"),
							ScoreType::Addition(80),
						));
						break;
					}
				}
			}
		});

	if matched_categories == words.len() - 1 {
		score.push(ScoreInfo::new(
			String::from("Perfectly Incoherent"),
			ScoreType::Multiplier(2.0),
		));
	} else if matched_categories > 0 {
		let mult = matched_categories.saturating_sub(words.len()) as f32 / words.len() as f32;
		score.push(ScoreInfo::new(
			String::from("Mostly Coherent"),
			ScoreType::Multiplier(mult * 1.8),
		));
	}

	score
}
