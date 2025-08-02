use crate::data::{City, FamousPerson};

pub type PlaceholderType = ();

pub enum NounEvent {
	Death,
	CarCrash,
	CourtCase,
	Fail,
	Murder,
	Allegations,
}

pub enum Allegations {
	NotFunny,
}

pub enum Noun {
	Person(FamousPerson),
	City(City),
	Event(PlaceholderType),
}

pub enum ArticleNoun {}

pub enum ArticleVerb {}

pub enum ArticleWordType {
	Noun,
	Verb,
	Person,
	City,
	Event,
	Any,
}

pub enum ArticleWord {
	Noun(ArticleNoun),
	Verb(ArticleVerb),
}

pub enum ArticlePart {
	Word(ArticleWordType),
	Literal(&'static str),
}

pub struct ArticleTemplate(pub &'static [ArticlePart]);

const ARTICLE_TEMPLATES: &[ArticleTemplate] = &[
	ArticleTemplate(&[
		ArticlePart::Word(ArticleWordType::Person),
		ArticlePart::Literal("'s Response To The "),
		ArticlePart::Word(ArticleWordType::Any),
		ArticlePart::Literal("Allegations"),
	]),
	ArticleTemplate(&[
		ArticlePart::Literal("You Will Not Believe "),
		ArticlePart::Word(ArticleWordType::Person),
		ArticlePart::Literal("'s Take On"),
		ArticlePart::Word(ArticleWordType::Any),
	]),
	ArticleTemplate(&[
		ArticlePart::Word(ArticleWordType::Person),
		ArticlePart::Literal("DIES At Age 58 (Are You Next? Click Here To Find Out)"),
	]),
];

// - Trying to lose [any]? Try [any] NOW!
// - Local [location] [any] day celebration gone WRONG (gone [word:any]?!)
// - You will not believe [person]'s take on [word:any]
// - [person]'s Response to the [word:any] Allegations
// - [person] DIES at age 58 (are you next?)
// - Top 10 [actions]
// - Top 10 [events] [person] was afraid to diss
// - 5 ways to get rid of [word:actions]
