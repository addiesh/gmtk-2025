You are an intern at Nuclear News, your job is to churn out as many fake news articles as possible and maximise ad revenue while doing it.

- Not reporting on actual news

# Gameplay Loop
1. Each day has trending events and topics, as well as boring topics too.
2. You pick
3. You are given random words for each category you need in your template
	1. 3 words per (the maximum number of required categories of the templates,  instance category
```rust
type Category = i32; // some enum
struct Template(&'static [Category]);
fn get_words(templates: &[Template]) -> Vec<&'static str> {
	let categoryCounts: HashMap<Category, usize> = HashMap::new();
	for template in templates {
		
	}
}
```

a(1 noun, 2 verbs) +
b(3 nouns, 1 verb)
3 nouns, 2 verbs

# Algorithm
## Subjects
- Locations
	- Floridistan
		- New Forkville
		- Gedagedi
		- Burgin
	- Jebraznil
		- Older Forkevill
		- Nightmare
		- Monte Beer
	- Republic of Mudrock
		- Diego
		- Jozelo
		- Toyoza
- People
	- Tech Bros
		- Leo Mulbery - Burgin, FS
		- Games Boy - Nightmare, JB
		- John Crapcon - Jozelo, RM
	- Celebrities
		- Jonald Dragon - Gedagedi, FS
		- Bench Gator - Burgin, FS
		- Joe - Monte Beer, JB
	- Politicians
		- Les Morester - Burgin, FS
		- George King - Diego, RM
		- Doug Moffester - Older Forkevill, JB
	- Influencer
		- Goom Ner - Monte Beer, JB
		- Logal Dreamer - Gedagedi, FS
		- Toy L'beaubuo - Toyoza, RM
# Dictionary
each word can IN
## Nouns
### Events
- Death(s)
- Car Crash(es)
- Court Case(s)
- Fail(s)
- 
## Verbs

## 

## Article Scoring

topics \* cohesiveness \* extremity

An article uses a Mad Libs-like templates.
- If you use 100% matching word types, you get almost all points, but if you use ONE SHORT of that, you get MAXIMUM points.
- Points are multiplied by the trendiness of
# Plot
# Templates
- Trying to lose \[word:any\]? Try \[word:any\] NOW!
- Local \[word:place\] \[word:any\] day celebration gone WRONG (gone \[word:any\]?!)
- You will not believe \[word:people\]'s take on \[word:any\]
- \[word:people\]'s Response to the \[word:any\] Allegations
- BREAKING: \[word:people\] DIES at age 58 (are you next?)
- Top 10 \[word:actions\]