use crate::data::{City, FamousPerson};
use core::convert::Into;

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

// const ARTICLE_TEMPLATES: &[ArticleTemplate] = &[ArticleTemplate(&[ArticleWordType::Noun.into()])];

// - Trying to lose [word:any]? Try [word:any] NOW!
// - Local [word:place] [word:any] day celebration gone WRONG (gone [word:any]?!)
// - You will not believe [word:people]'s take on [word:any]
// - [word:people]'s Response to the [word:any] Allegations
// - [word:people] DIES at age 58 (are you next?)
// - Top 10 [word:actions]
