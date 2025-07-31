#[derive(Copy, Clone, Eq, PartialEq, Hash)]
//noinspection SpellCheckingInspection
pub enum Nation {
	Floridistan,
	Jebraznil,
	RepublicOfMudrock,
}

impl Nation {
	pub const fn cities(&self) -> [City; 3] {
		match self {
			Nation::Floridistan => [City::NewForkville, City::Gedagedi, City::Burgin],
			Nation::Jebraznil => [City::OlderForkevill, City::Nightmare, City::MonteBeer],
			Nation::RepublicOfMudrock => [City::Diego, City::Jozelo, City::Toyoza],
		}
	}
}

#[derive(Copy, Clone, Eq, PartialEq, Hash)]
pub enum City {
	NewForkville,
	Gedagedi,
	Burgin,

	OlderForkevill,
	Nightmare,
	MonteBeer,

	Diego,
	Jozelo,
	Toyoza,
}

impl City {
	pub const fn nation(&self) -> Nation {
		match self {
			City::NewForkville | City::Gedagedi | City::Burgin => Nation::Floridistan,
			City::OlderForkevill | City::Nightmare | City::MonteBeer => Nation::Jebraznil,
			City::Diego | City::Jozelo | City::Toyoza => Nation::RepublicOfMudrock,
		}
	}
}

pub enum FamousRole {
	TechBro,
	Influencer,
	Politician,
	Actor,
}

pub struct FamousPerson {
	first_name: &'static str,
	last_name: Option<&'static str>,
	origin: City,
	role: FamousRole,
}

impl FamousPerson {
	pub const fn new(
		first_name: &'static str,
		last_name: &'static str,
		origin: City,
		role: FamousRole,
	) -> Self {
		Self {
			first_name,
			last_name: if last_name.is_empty() {
				None
			} else {
				Some(last_name)
			},
			origin,
			role,
		}
	}
}

pub const FAMOUS_PEOPLE: &[FamousPerson] = &[
	FamousPerson::new("Leo", "Mulbery", City::Burgin, FamousRole::TechBro),
	FamousPerson::new("Games", "Boy", City::Nightmare, FamousRole::TechBro),
	FamousPerson::new("John", "Crapcon", City::Jozelo, FamousRole::TechBro),
	FamousPerson::new("Jonald", "Dragon", City::Gedagedi, FamousRole::Influencer),
	FamousPerson::new("Bench", "Gator", City::Burgin, FamousRole::Influencer),
	FamousPerson::new("Rachel", "", City::MonteBeer, FamousRole::Influencer),
	FamousPerson::new("Les", "Morester", City::Burgin, FamousRole::Politician),
	FamousPerson::new("George", "King", City::Diego, FamousRole::Politician),
	FamousPerson::new(
		"Doug",
		"Moffster",
		City::OlderForkevill,
		FamousRole::Politician,
	),
	FamousPerson::new("Amy", "Nero", City::OlderForkevill, FamousRole::Actor),
	FamousPerson::new("Logan", "Dreamer", City::OlderForkevill, FamousRole::Actor),
	FamousPerson::new("Toy", "L'Beaubuo", City::OlderForkevill, FamousRole::Actor),
];
