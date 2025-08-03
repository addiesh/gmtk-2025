use crate::articles::{City, Person, Thing};
use alloc::fmt::format;
use alloc::format;
use alloc::string::String;
use alloc::vec::Vec;
use libm::round;
use log::info;
use metra::Metra;

#[derive(Clone, Eq, PartialEq)]
pub struct TrendingData {
	people: Vec<(Person, u32)>,
	cities: Vec<(City, u32)>,
	things: Vec<(Thing, u32)>,
}

impl TrendingData {
	pub fn new(engine: &mut Metra) -> Self {
		let mut this = Self {
			people: Default::default(),
			cities: Default::default(),
			things: Default::default(),
		};

		let all_people = [
			Person::LeoMulbery,
			Person::GamesBoy,
			Person::JohnCrapcon,
			Person::JonaldDragon,
			Person::BenchGator,
			Person::LesMorester,
			Person::GeorgeKing,
			Person::DougMoffster,
			Person::LoganDreamer,
			Person::ToyLBeaubuo,
		];
		let all_things = [
			Thing::Cats,
			Thing::X6847,
			Thing::Rats,
			Thing::Bats,
			Thing::Water,
			Thing::Deodorant,
			Thing::Soda,
			Thing::Sofa,
			Thing::Mouth,
			Thing::Flags,
		];
		let all_cities = [
			City::NewForkville,
			City::Burghin,
			City::Floridistan,
			City::Jebraznil,
			City::RepublicOfMudrock,
			City::Nightmare,
			City::Mars,
			City::MonteBeer,
		];

		for city in all_cities {
			this.cities.push((city, round(engine.random() * 2.0) as u32 + 1))
		}
		for person in all_people {
			this.people.push((person, round(engine.random() * 2.0) as u32 + 1))
		}
		for thing in all_things {
			this.things.push((thing, round(engine.random() * 2.0) as u32 + 1))
		}

		this.update_cache();

		let mut out_str = String::from("rankings:\n");
		for (city, score) in &this.cities {
			out_str += &format!(" - city - {} @ {score}\n", city.as_str());
		}
		for (person, score) in &this.people {
			out_str += &format!(" - person - {} @ {score}\n", person.as_str());
		}
		for (thing, score) in &this.things {
			out_str += &format!(" - thing - {} @ {score}\n", thing.as_str());
		}
		info!("{out_str}");

		this
	}
	fn update_cache(&mut self) {
		self.people.sort_by(|a, b| a.1.cmp(&b.1).reverse());
		self.cities.sort_by(|a, b| a.1.cmp(&b.1).reverse());
		self.things.sort_by(|a, b| a.1.cmp(&b.1).reverse());
	}

	#[inline]
	pub fn people(&self) -> &Vec<(Person, u32)> {
		&self.people
	}

	#[inline]
	pub fn cities(&self) -> &Vec<(City, u32)> {
		&self.cities
	}

	#[inline]
	pub fn things(&self) -> &Vec<(Thing, u32)> {
		&self.things
	}

	#[inline]
	pub fn set_person_score(&mut self, person: Person, score: u32) {
		if Self::set_score(&mut self.people, person, score) {
			self.update_cache()
		}
	}

	#[inline]
	pub fn set_city_score(&mut self, city: City, score: u32) {
		if Self::set_score(&mut self.cities, city, score) {
			self.update_cache()
		}
	}

	#[inline]
	pub fn set_thing_score(&mut self, thing: Thing, score: u32) {
		if Self::set_score(&mut self.things, thing, score) {
			self.update_cache()
		}
	}

	fn set_score<T: Copy + PartialEq>(vec: &mut Vec<(T, u32)>, k: T, score: u32) -> bool {
		let idx_of = vec.iter().position(|p| p.0 == k);
		if let Some(idx_of) = idx_of {
			let old_score = vec[idx_of];
			vec[idx_of].1 = score;
			if old_score.1 == score {
				return false;
			}
		} else {
			vec.push((k, score));
		}
		true
	}
}
