/*
  # English Language Notes: Topics 1-5
  
  Adds comprehensive, Aki Ola-style notes for:
  1. Essay Writing
  2. Grammar: Parts of Speech
  3. Comprehension Skills
  4. Oral English and Phonetics
  5. Lexis and Structure
  
  Each topic has 5 sections: overview, definitions, deep explanation, examples, practice
*/

DO $$
DECLARE
  tid UUID;
BEGIN

-- ============================================================
-- TOPIC 1: ESSAY WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Essay Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'What is an Essay? — Overview and Purpose', $C$
## What is an Essay?

An **essay** is a piece of writing in which the writer presents ideas, arguments, information, or a narrative on a specific topic. In WASSCE English, essay writing is the most heavily weighted component — it tests your ability to communicate effectively in Standard English.

### Why Essay Writing Matters

The essay section tests three key skills:
- **Content** — Do you understand the topic and say something meaningful?
- **Organisation** — Is your writing structured logically?
- **Expression** — Is your language clear, varied, and accurate?

### Types of Essays in WASSCE

| Type | What It Requires |
|------|-----------------|
| Expository | Explain a topic clearly and objectively |
| Argumentative | Take a position and defend it with evidence |
| Narrative | Tell a story, real or imagined |
| Descriptive | Paint a vivid picture with words |
| Discursive | Discuss multiple sides of an issue |

### How WASSCE Marks Essays

WASSCE examiners use three main criteria:
1. **Content (10 marks):** Relevance, depth, and quality of ideas
2. **Organisation (10 marks):** Introduction, body paragraphs, conclusion, paragraphing
3. **Expression (20 marks):** Grammar, vocabulary, sentence variety, style

**Total = 40 marks per essay**

The most common reason students score poorly is poor organisation and weak expression — not a lack of ideas.
$C$, 'overview', 1),

(tid, 'Definitions and Key Terms in Essay Writing', $C$
## Key Terms Every Essay Writer Must Know

### Thesis Statement
The **central argument or claim** of your essay, usually stated in the introduction. Every paragraph should support this statement.

**Weak thesis:** "Corruption is bad for Ghana."
**Strong thesis:** "Widespread corruption in Ghana's public institutions not only drains national revenue but erodes citizens' trust in governance, making anti-corruption reform the most urgent priority for sustainable development."

### Topic Sentence
The **opening sentence of each paragraph** that states the main idea of that paragraph. Think of it as a mini-thesis for each section.

### Coherence vs. Cohesion
- **Coherence:** The essay makes logical sense as a whole — ideas flow and connect
- **Cohesion:** The writing is connected at the sentence level using linking words and pronouns

### Register
The **level of formality** used in writing. WASSCE essays require **formal register** — no contractions, no slang, no first-person informality in argumentative or expository essays.

### Transition Words (Connectives)
Words and phrases that guide the reader through your argument:

| Function | Examples |
|----------|---------|
| Adding ideas | Furthermore, in addition, moreover, besides |
| Contrasting | However, on the other hand, nevertheless, despite this |
| Giving examples | For instance, for example, to illustrate, as evidence of this |
| Concluding | Therefore, consequently, thus, in conclusion, to summarise |
| Showing cause | Because, since, as a result of, owing to |
| Showing effect | Hence, therefore, as a result, consequently |

### Diction
Your **choice of words**. Strong diction means using precise, varied vocabulary rather than repeating the same words.

**Weak:** "The government should do more good things to help poor people."
**Strong:** "The government ought to implement targeted welfare programmes to alleviate the socioeconomic hardship faced by the most vulnerable citizens."
$C$, 'definitions', 2),

(tid, 'Deep Explanation: How to Write a Winning Essay', $C$
## How to Write a Winning WASSCE Essay

### Step 1: Analyse the Question (3 Minutes)

Before writing a single word, STOP and analyse the question:
- What **type** of essay is required?
- What is the **specific topic**?
- What **key words** tell you what to do? (discuss, argue, describe, narrate, explain)

**Example question:** *"Social media has done more harm than good to African youth. Discuss."*
- Type: **Discursive/Argumentative**
- Topic: Social media's impact on African youth
- Key word: **Discuss** = present both sides, then give your view

### Step 2: Plan Your Essay (5 Minutes)

Never begin writing without a plan. Jot down:
1. Your thesis/position
2. 3-4 main points (one per paragraph)
3. Evidence or examples for each point
4. Counter-arguments (for discursive essays)

### Step 3: Write the Introduction

A strong introduction does THREE things:
1. **Hooks** the reader (striking statement, relevant quote, rhetorical question)
2. **Provides context** — briefly situate the topic
3. **States your thesis** — your position or the scope of your discussion

**Example introduction for the social media question:**
"In an age where a teenager in Accra can communicate with one in Lagos in milliseconds, social media has undeniably transformed African youth culture. Yet this digital revolution carries a double edge: while it has empowered young Africans with information and connectivity, it has equally unleashed unprecedented threats to their mental health, academic focus, and cultural identity. This essay examines both dimensions of social media's influence and argues that, on balance, its harms outweigh its benefits for African youth."

### Step 4: Write the Body Paragraphs

Each paragraph must follow the **PEEL structure:**
- **P** — Point (topic sentence)
- **E** — Evidence/Example
- **E** — Explanation (link back to thesis)
- **L** — Link to next paragraph

**Example body paragraph:**
"The most pervasive harm caused by social media among African youth is its devastating impact on academic performance. [POINT] Studies conducted across universities in Nigeria and Ghana consistently show that students who spend more than three hours daily on social platforms record significantly lower grades compared to their peers. [EVIDENCE] This pattern is explained by the addictive design of platforms like TikTok and Instagram, which exploit dopamine responses to keep users scrolling rather than studying. [EXPLANATION] Beyond academic decline, this compulsive usage points to a deeper psychological vulnerability among young Africans who are increasingly mediated by digital validation rather than intrinsic motivation. [LINK]"

### Step 5: Write the Conclusion

A strong conclusion:
1. **Restates** the thesis in new words (do NOT copy the introduction)
2. **Summarises** the key arguments briefly
3. **Ends with a forward-looking statement** — a call to action, recommendation, or reflection

**Weak conclusion:** "In conclusion, I have discussed the advantages and disadvantages of social media. It has both good and bad effects."
**Strong conclusion:** "The evidence is compelling: while social media opens doors of opportunity, its psychological, academic, and cultural costs impose a disproportionate toll on Africa's youth. Governments, parents, and educators must collaborate to cultivate digital literacy that enables young Africans to harness technology's benefits while resisting its manipulative undercurrents. The future of African development depends not merely on connectivity, but on the wisdom with which the next generation navigates the digital landscape."

### Common Essay Mistakes to AVOID

- Beginning paragraphs with "I" (especially in formal essays)
- Writing one long paragraph instead of several structured ones
- Using the same words repeatedly (vary your vocabulary)
- No transition between paragraphs
- Copying the question as your first sentence
- Ending abruptly without a proper conclusion
- Using abbreviations and contractions (don't, can't, I'll)
$C$, 'explanation', 3),

(tid, 'Worked Examples: Essay Plans and Model Paragraphs', $C$
## Worked Examples — Essay Plans and Model Writing

### Example 1: Narrative Essay

**Question:** Write a story ending with: *"...and that was the day I truly understood the value of perseverance."*

**Outline Plan:**
- Setting: The day before final exams
- Character: A student who has been lazy all year
- Conflict: Fails mock exam, feels hopeless
- Rising action: Decides to study through the night
- Climax: Exam day — feels underprepared
- Resolution: Scores unexpectedly well
- Ending: Reflects on the lesson

**Model Opening Paragraph:**
"The examination hall smelled of chalk dust and anxiety. Around me, students flipped frantically through dog-eared notes while I sat, palms damp, staring at a paper I had done nothing to prepare for. It had seemed so easy to postpone revision week after week — there was always tomorrow, always another day. But as the invigilator placed the question paper face-down on my desk, I understood with cold clarity that tomorrow had arrived, and I was not ready."

---

### Example 2: Argumentative Essay

**Question:** *"The death penalty is not an effective deterrent to crime. Do you agree?"*

**Thesis:** The death penalty does not deter crime and should be abolished.

**Outline:**
- Para 1: Countries with capital punishment still have high murder rates (evidence)
- Para 2: Life imprisonment is a more effective deterrent (argument)
- Para 3: The irreversibility of execution risks killing the innocent (moral argument)
- Para 4: Counter-argument — some argue it provides closure and justice
- Conclusion: The evidence overwhelmingly argues for abolition

---

### Example 3: Expository Essay

**Question:** *"Describe the causes and effects of examination malpractice in West African schools."*

**Outline:**
- Para 1: Definition and scope of examination malpractice
- Para 2: Cause 1 — Academic pressure and fear of failure
- Para 3: Cause 2 — Inadequate preparation by teachers and students
- Para 4: Effect 1 — Devaluation of certificates and credibility
- Para 5: Effect 2 — Social and economic consequences
- Conclusion: Solutions and recommendations

**Model topic sentence for Para 2:**
"At the root of examination malpractice lies the enormous academic pressure exerted on West African students, who are led to believe that a single examination determines the entire trajectory of their lives."
$C$, 'examples', 4),

(tid, 'Practice Questions and Exam Strategies: Essay Writing', $C$
## Practice Questions — Essay Writing

Attempt each question under timed conditions (45 minutes). Plan for 5 minutes, write for 35 minutes, review for 5 minutes.

### Question 1 — Argumentative
*"Free education at the secondary school level does more harm than good to developing nations. Write an essay for or against this view."*

**Before you write, ask yourself:**
- What position will I take?
- What are my 3 strongest arguments?
- What counter-arguments must I address?
- What specific examples can I use from Ghana/West Africa?

---

### Question 2 — Narrative
*"Write a story about a person who discovers an unexpected talent."*

**Before you write, ask yourself:**
- Who is my main character? Make them believable.
- What is the conflict that drives the story?
- How does the discovery happen? Make it dramatic.
- What is the emotional resolution?

---

### Question 3 — Descriptive
*"Describe a market in your town or city on a typical Monday morning."*

**Techniques to use:**
- Appeal to ALL five senses: sight, sound, smell, touch, taste
- Use vivid, specific nouns and active verbs
- Include people, movement, dialogue snippets
- Capture the atmosphere, not just a list of objects

---

### Question 4 — Discursive
*"Mobile phones have become indispensable in modern education. Discuss."*

---

### Marking Your Own Essay — Checklist

Use this checklist after every practice essay:

- [ ] Does my introduction have a hook, context, and thesis?
- [ ] Does each paragraph have a clear topic sentence?
- [ ] Have I used PEEL structure consistently?
- [ ] Are my transition words varied and appropriate?
- [ ] Have I avoided contractions and slang?
- [ ] Is my vocabulary varied (no repeated words)?
- [ ] Does my conclusion restate the thesis without copying it?
- [ ] Have I checked spelling and punctuation?
- [ ] Is my handwriting/typing neat and legible?

### Golden Rules for WASSCE Essay Success
1. **Plan before you write** — 5 minutes of planning saves 20 minutes of confusion
2. **Quality over quantity** — 3 strong paragraphs beat 7 weak ones
3. **Read the question three times** — misreading is the #1 avoidable error
4. **Show examiner you can use English at a high level** — vary sentence structure
5. **Time yourself** — never run out of time before writing a conclusion
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 2: GRAMMAR — PARTS OF SPEECH
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Grammar: Parts of Speech';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: The Eight Parts of Speech', $C$
## Overview: Parts of Speech

The **parts of speech** are the fundamental categories into which every word in the English language falls. Understanding them is essential for writing grammatically correct sentences, answering structure questions in WASSCE, and avoiding common errors.

### The Eight Parts of Speech

| Part of Speech | Role in Sentence | Key Question to Ask |
|----------------|-----------------|---------------------|
| **Noun** | Names a person, place, thing, or idea | What is it? |
| **Pronoun** | Replaces a noun | Who/what replaces the noun? |
| **Verb** | Shows action or state of being | What is happening? |
| **Adjective** | Describes a noun or pronoun | What kind? How many? |
| **Adverb** | Modifies a verb, adjective, or another adverb | How? When? Where? To what extent? |
| **Preposition** | Shows relationship between words | Where is it in relation to something? |
| **Conjunction** | Joins words, phrases, or clauses | How are these ideas connected? |
| **Interjection** | Expresses emotion | What is the emotional outburst? |

### Key Insight: Words Can Belong to Multiple Classes

The same word can function as different parts of speech depending on its use in the sentence.

**"Light"** as noun: *The light was bright.*
**"Light"** as verb: *Please light the candle.*
**"Light"** as adjective: *She carried a light bag.*

This concept — **functional shift** — is frequently tested in WASSCE examinations.
$C$, 'overview', 1),

(tid, 'Definitions and Complete Classification of Parts of Speech', $C$
## Complete Classification — Parts of Speech

### 1. Nouns
A noun names a person, place, thing, quality, or concept.

**Types of Nouns:**
- **Proper nouns:** Specific names — *Ghana, Accra, Kofi Boateng* (always capitalised)
- **Common nouns:** General names — *country, city, man*
- **Concrete nouns:** Can be perceived by senses — *book, rain, music*
- **Abstract nouns:** Cannot be touched — *justice, freedom, courage, happiness*
- **Collective nouns:** Group of things — *a herd of cattle, a fleet of ships, a pack of wolves*
- **Countable nouns:** Can be counted — *chair, idea, student*
- **Uncountable nouns:** Cannot be counted — *water, advice, information, luggage*

**WASSCE Trap:** "Advice" and "information" are uncountable — NEVER say "an advice" or "informations."

### 2. Pronouns
Pronouns replace nouns to avoid repetition.

**Types:**
- **Personal:** I, you, he, she, it, we, they / me, him, her, us, them
- **Possessive:** mine, yours, his, hers, ours, theirs
- **Reflexive:** myself, yourself, himself, herself, ourselves, themselves
- **Demonstrative:** this, that, these, those
- **Interrogative:** who, whom, whose, which, what
- **Relative:** who, whom, whose, which, that
- **Indefinite:** anyone, everyone, someone, no one, each, either, neither

### 3. Verbs
Verbs express actions, events, or states.

**Types:**
- **Action verbs:** run, write, speak, eat
- **Linking (stative) verbs:** be, seem, appear, become, feel, taste, smell
- **Auxiliary (helping) verbs:** have, has, had, will, would, can, could, shall, should, may, might, must, do, does, did
- **Transitive verbs:** require a direct object — *She wrote a letter.*
- **Intransitive verbs:** do not require an object — *He sleeps. She smiled.*

### 4. Adjectives
Adjectives modify nouns and pronouns.

**Types:**
- **Descriptive:** beautiful, tall, intelligent, enormous
- **Quantitative:** much, little, few, many, several
- **Numeral:** two students, first prize, third row
- **Demonstrative:** this book, those students
- **Interrogative:** which path, what type
- **Possessive:** my pen, her dress, our school

**Degrees of Comparison:**
- Positive: *tall, beautiful*
- Comparative: *taller, more beautiful* (comparing two)
- Superlative: *tallest, most beautiful* (comparing three or more)

### 5. Adverbs
Adverbs modify verbs, adjectives, or other adverbs.

**Types:**
- **Manner:** quickly, carefully, loudly, gently
- **Time:** yesterday, now, soon, already, still
- **Place:** here, there, everywhere, outside
- **Frequency:** always, often, sometimes, never, rarely
- **Degree:** very, quite, almost, extremely, rather
- **Interrogative:** how, when, where, why

### 6. Prepositions
Prepositions show the relationship between a noun/pronoun and another word.

**Common prepositions:** in, on, at, by, for, from, to, with, about, between, among, through, during, under, over, before, after, beside, beyond

**Compound prepositions:** in front of, on behalf of, in spite of, with regard to, according to

### 7. Conjunctions
Conjunctions join words, phrases, or clauses.

**Co-ordinating:** and, but, or, nor, for, yet, so (FANBOYS)
**Subordinating:** because, although, unless, until, when, while, since, if, so that, in order that
**Correlative pairs:** either...or, neither...nor, both...and, not only...but also, whether...or

### 8. Interjections
Words or phrases that express emotion.

*Oh! Wow! Alas! Indeed! Bravo! Ouch! Hey!*
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Common Errors and WASSCE Traps', $C$
## Deep Explanation: Grammar Traps and Analysis

### How to Identify Parts of Speech in a Sentence

**STEP 1:** Find the verb first — it is the engine of the sentence.
**STEP 2:** Find the subject (who/what does the action).
**STEP 3:** Identify objects (what receives the action).
**STEP 4:** Classify modifiers (adjectives modify nouns; adverbs modify verbs).

**Analysis example:**
*"The intelligent students worked diligently in the library."*
- **intelligent** — Adjective (modifies "students")
- **students** — Noun (subject)
- **worked** — Verb (action)
- **diligently** — Adverb (modifies "worked", answers "how")
- **in the library** — Prepositional phrase (tells "where")

---

### Common WASSCE Grammar Errors

#### Error 1: Wrong Pronoun Case
- Wrong: *"Between you and I, this is difficult."*
- Correct: *"Between you and me, this is difficult."*
Rule: After a preposition, use object pronouns (me, him, her, us, them).

#### Error 2: Adjective vs. Adverb
- Wrong: *"He ran quick."*
- Correct: *"He ran quickly."*
Rule: Adverbs (not adjectives) modify verbs. Quick is an adjective; quickly is the adverb.

#### Error 3: Dangling Modifier
- Wrong: *"Walking to school, the rain began to fall."*
- Correct: *"Walking to school, I was caught in the rain."*
Rule: A participial phrase must modify the subject of the main clause.

#### Error 4: Double Negatives
- Wrong: *"I didn't see nobody there."*
- Correct: *"I didn't see anybody there."* or *"I saw nobody there."*

#### Error 5: Misusing "Less" and "Fewer"
- Wrong: *"There were less students in class."*
- Correct: *"There were fewer students in class."*
Rule: Use "fewer" for countable nouns; use "less" for uncountable nouns.

#### Error 6: Incorrect Comparative Forms
- Wrong: *"She is more taller than her sister."*
- Correct: *"She is taller than her sister."*
Rule: Never use "more" with adjectives that already end in -er.

---

### Functional Shift — The Same Word, Different Role

This is a favourite WASSCE question type:

**"Fast":**
- Adjective: *He is a fast runner.*
- Adverb: *She ran fast.*
- Verb: *They fast during Ramadan.*
- Noun: *He broke his fast at dawn.*

**"Well":**
- Adverb: *She performed well.*
- Adjective: *Are you well?*
- Noun: *The villagers dug a well.*
- Interjection: *Well, I suppose you are right.*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Identifying and Using Parts of Speech', $C$
## Worked Examples — Parts of Speech

### Example 1: Identify the Part of Speech

*"During the long examination, the nervous students answered every question carefully."*

| Word | Part of Speech | Reason |
|------|---------------|--------|
| During | Preposition | Shows relationship (when) |
| long | Adjective | Modifies "examination" |
| examination | Noun | Thing (concrete noun) |
| nervous | Adjective | Modifies "students" |
| students | Noun | Person (subject) |
| answered | Verb | Action performed |
| every | Adjective | Modifies "question" (quantitative) |
| question | Noun | Thing (direct object) |
| carefully | Adverb | Modifies "answered" (how) |

---

### Example 2: Choose the Correct Word

1. She performed _____ (good / well) in the examination.
**Answer: well** (adverb modifying verb "performed")

2. The _____ (fewer / less) mistakes you make, the higher your score.
**Answer: fewer** ("mistakes" is countable)

3. It was _____ (I / me) who reported the incident.
**Answer: I** (subject complement after "was")

4. Neither the teachers nor the students _____ (was / were) informed.
**Answer: were** (with "neither...nor," agree with the closer noun "students")

5. He is one of those managers who _____ (is / are) always fair.
**Answer: are** (the relative clause refers to "managers," not "one")

---

### Example 3: Fill-in-the-Blank — Prepositions

1. She graduated _____ the University of Ghana. **from**
2. The book was written _____ a Ghanaian author. **by**
3. He has lived in Accra _____ 2010. **since** (specific time point)
4. She has been studying _____ three hours. **for** (duration)
5. The results will be announced _____ Friday. **on** (specific day)
$C$, 'examples', 4),

(tid, 'Practice Questions: Parts of Speech', $C$
## Practice Questions — Parts of Speech

### Section A: Identify the Part of Speech

Identify the underlined word and state its part of speech with a reason.

1. *The **swift** horse galloped across the field.*
2. *She arrived **before** the examination started.*
3. *He **himself** carried the heavy load.*
4. *We need **either** this book or that one.*
5. *The committee **unanimously** rejected the proposal.*
6. ***Bravo!** You have done exceptionally well.*
7. *Both the principal **and** the teachers attended the ceremony.*
8. *The children played **outside** until sunset.*

### Section B: Error Correction

Identify and correct the error in each sentence.

1. *Between you and I, the plan is flawed.*
2. *She looked happy and spoke confident at the press conference.*
3. *There were less applicants this year than last year.*
4. *Neither the captain nor the players was blamed for the defeat.*
5. *He is the most cleverest student in the class.*
6. *I didn't find nobody at the office.*

### Section C: Functional Classification

State the part of speech of the word "light" in each sentence and explain.

1. *The candle provides light in the darkness.*
2. *Please light the lantern before it gets dark.*
3. *She prefers light colours for her walls.*
4. *The feather is very light.*

### Section D: Sentence Construction

Use each word in TWO different sentences to show it functioning as TWO different parts of speech.

1. **Run**
2. **Round**
3. **Still**

**Answers (Section B):**
1. *Between you and **me***
2. *...spoke **confidently***
3. *...fewer applicants...*
4. *...the players **were** blamed...*
5. *...the **cleverest** student...* (remove "most")
6. *...didn't find **anybody**...* or *...found **nobody**...*
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 3: COMPREHENSION SKILLS
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Comprehension Skills';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: What is Comprehension and Why It Matters', $C$
## What is Comprehension?

**Comprehension** is the ability to read a text and understand it at multiple levels — not just what the words say (literal meaning) but what they imply (inferential meaning) and how the writer achieves their purpose (analytical/critical meaning).

In WASSCE, the comprehension section typically:
- Provides a **prose passage** of 400-600 words
- Asks **8-10 questions** worth 30 marks total
- Tests literal recall, inference, vocabulary in context, and language analysis

### Levels of Comprehension

| Level | Description | Example Question Type |
|-------|-------------|----------------------|
| **Literal** | Information directly stated in the text | "According to the passage, what does..." |
| **Inferential** | Information implied but not stated | "What does the writer suggest about..." |
| **Critical** | Evaluation of the writer's technique | "How does the writer create tension?" |
| **Evaluative** | Personal response based on text evidence | "Do you agree with the writer's view?" |

WASSCE tests all four levels, but most students only practice literal recall. Training your inferential reading skill will significantly boost your score.

### The WASSCE Comprehension Passage — What to Expect

Passages come from various sources: newspaper editorials, academic essays, short stories, speeches, reports. Common themes include:
- Social issues (education, health, corruption)
- Environmental topics
- Cultural commentary
- Science and technology
$C$, 'overview', 1),

(tid, 'Definitions: Comprehension Vocabulary and Techniques', $C$
## Key Vocabulary for Comprehension Questions

### Understanding the Question Words

| Question Word | What It Demands |
|--------------|----------------|
| **State** / **Mention** | List briefly — no explanation needed |
| **Describe** | Give a detailed account |
| **Explain** | Make clear the meaning or reason |
| **Show** / **How** | Demonstrate using evidence from the text |
| **What do you understand by...** | Define the phrase in context |
| **Why** | Give reasons — use evidence from the text |
| **In your own words** | Paraphrase — do NOT copy the text |

### Types of Comprehension Questions

**1. Vocabulary in Context**
"What does the word/phrase '____' mean as used in the passage?"
- Look at the surrounding sentences, not just the word itself
- The answer must fit the context of the passage, not a dictionary definition

**2. Reference Questions**
"What does '___' refer to in line X?"
- Find what the pronoun or reference word points back to

**3. Reason/Cause Questions**
"Why did the writer argue that...?"
- Use phrases like "because," "as a result of," "due to"

**4. Inference Questions**
"What does the writer imply about...?"
- The answer is NOT directly stated — you must deduce it
- Support your inference with a phrase from the text

**5. Summary Questions**
"In not more than 60 words, summarise the main argument of the last paragraph."
- Identify the key points only
- Express them in your OWN words
- Count and state your word count: "Word count: 58"

### Key Literary Terms Used in Comprehension

- **Tone:** The writer's attitude (critical, ironic, sympathetic, objective, optimistic, pessimistic)
- **Mood:** The emotional atmosphere created for the reader
- **Diction:** The writer's choice of words
- **Imagery:** Language that appeals to the senses (visual, auditory, olfactory, tactile, gustatory)
- **Figurative language:** Simile, metaphor, personification, hyperbole (see Figures of Speech topic)
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Strategies for Answering Comprehension', $C$
## Strategies for High Scores in Comprehension

### The 5-Step Approach

**Step 1: Read the questions FIRST (2 minutes)**
Before reading the passage, scan through all the questions. This tells you:
- What information is important
- What type of analysis is required
- What vocabulary words you need to understand in context

**Step 2: Read the passage ACTIVELY (5 minutes)**
Read with a pencil in hand. As you read:
- Underline key ideas
- Circle unfamiliar words (return to them later)
- Number paragraphs for easy reference
- Note the tone and purpose of the passage

**Step 3: Identify the Main Idea**
Before answering anything, ask: *"What is this passage fundamentally about? What is the writer's main message?"*
This helps you interpret all other questions correctly.

**Step 4: Answer questions in your own words**
When the question says "in your own words," you MUST paraphrase. Copying sentences from the passage earns ZERO marks for that part.

**Step 5: Check answers against the passage**
Every answer must be grounded in the text. Do not bring in outside information unless the question specifically asks for it.

---

### How to Answer "In Your Own Words" Questions

**Original text:** *"The proliferation of digital devices in classrooms has generated an unprecedented pedagogical paradox — instruments designed to facilitate learning have metamorphosed into the most potent instruments of distraction."*

**Good paraphrase:** *The increasing use of technology in schools has created a contradiction: devices meant to help students learn have instead become powerful distractions.*

**Bad paraphrase (too close to original):** *The proliferation of digital devices has generated a paradox — designed to facilitate learning, they have become instruments of distraction.*

**Process:**
1. Understand the full meaning of the original
2. Look away from the passage
3. Write your version using different vocabulary and sentence structure

---

### How to Identify Tone

Look for:
- **Word choices:** Is the language emotive, neutral, angry, playful?
- **Sentence structure:** Short, punchy sentences = urgency. Long, flowing sentences = contemplative.
- **Rhetorical devices:** Rhetorical questions suggest concern; irony suggests criticism.

**Tone words to know:** satirical, cynical, optimistic, pessimistic, didactic (instructive), nostalgic, sombre, jubilant, indignant, contemplative, urgent, detached, ironic.

---

### How to Answer Inference Questions

**Question:** *"What does the writer suggest about the attitude of politicians towards education?"*

**WRONG approach:** "The writer does not mention politicians' attitude directly."

**RIGHT approach:**
1. Find every place in the text where education or politicians are discussed
2. Note the language used — is it critical? Resigned? Praising?
3. Form your inference: "The writer implies that politicians regard education as a low priority, as evidenced by his observation that 'funding for schools has consistently been the first casualty of every austerity measure.'"

---

### Common Comprehension Mistakes

- Copying sentences from the passage when asked for own words
- Not reading the question carefully (answering "why" when asked "what")
- Not giving enough detail (one-word answers for multi-mark questions)
- Ignoring line references given in questions
- Not counting words for summary sections
$C$, 'explanation', 3),

(tid, 'Worked Example: Full Comprehension Passage and Answers', $C$
## Worked Example — Full Comprehension

### Passage

*Education is the backbone of national development — this much has been stated so often it has become a platitude, mouthed by politicians and etched into national constitutions without the accompanying commitment to make it real. In Ghana, as in many African nations, the rhetoric of educational investment perpetually outstrips the reality of crumbling school buildings, undertrained teachers, and students who write their examinations in facilities that would embarrass a colonial-era administrator.*

*The consequences are not merely aesthetic. A generation schooled under conditions of inadequacy absorbs a subtle but devastating lesson: that they are not worth investing in. The psychological toll of learning in a leaking roof, sharing a tattered textbook between five students, and studying by candlelight because the school generator has been broken for three years, is immeasurable. It teaches resignation where ambition ought to flourish.*

*Yet cynicism alone helps no one. The solution, as progressive educationists have long argued, lies not in waiting for governments to act, but in communities mobilising to hold those governments accountable — demanding transparency in education budgets, insisting that school infrastructure receives adequate attention, and recognising that an educated citizenry is not a gift from the state but a right to be claimed.*

---

### Questions and Model Answers

**Q1. What, according to the writer, has the statement "education is the backbone of national development" become? (2 marks)**

It has become a **platitude** — a meaningless phrase repeated so frequently without genuine action that it has lost its significance. *(Must identify 'platitude' and explain it = 2 marks)*

**Q2. In your own words, explain the "subtle but devastating lesson" learnt by students schooled in inadequate conditions. (3 marks)**

Students who learn in poor conditions come to believe that they are unimportant and not deserving of investment. This instils a sense of hopelessness in them at an age when they should be developing drive and ambition. *(Must paraphrase — NOT copy the text)*

**Q3. What does the word "perpetually" (paragraph 1) mean? (1 mark)**

**Perpetually** means constantly or continuously — without stopping.

**Q4. What does the writer suggest should happen instead of waiting for government action? (2 marks)**

Communities should organise themselves to pressure governments into being accountable. They should demand openness about how education money is spent and insist on improvements to school buildings and facilities.

**Q5. Comment on the writer's tone in this passage. (2 marks)**

The writer's tone is **critical yet constructive**. The opening is indignant — the writer is clearly frustrated with the gap between political promises and educational reality ("rhetoric...outstrips reality"). However, the final paragraph shifts to a more urgent, empowering tone as the writer urges communities to take action.
$C$, 'examples', 4),

(tid, 'Practice Comprehension: Passage and Questions', $C$
## Practice Comprehension Passage

Read the following passage carefully and answer all questions.

---

*For decades, West Africa's fishing communities have lived in an unspoken covenant with the sea: they take what they need, and the ocean replenishes itself. This balance, maintained through generations of customary fishing practices, is now under existential threat. Industrial trawlers — many operating illegally — vacuum the ocean floor with nets the size of football fields, destroying the marine ecosystems upon which artisanal fisherfolk depend for their livelihoods and communities depend for their protein.*

*The scale of the plunder is staggering. According to data from Oceana, an international ocean advocacy organisation, West Africa loses an estimated 500,000 tonnes of fish to illegal, unreported, and unregulated (IUU) fishing annually — a theft valued at more than USD 2 billion. The governments most affected lack the naval resources to patrol their exclusive economic zones effectively, leaving the waters ungoverned and the trawlers unaccountable.*

*What is particularly galling is that the majority of these vessels are not locally owned. They fly flags of convenience from distant nations while their catches are processed and sold in European and Asian markets. The wealth extracted from West African waters flows almost entirely out of the region, leaving behind only depleted stocks, marginalised fishing communities, and coastlines increasingly stripped of biodiversity.*

*Addressing this crisis demands not rhetoric but radical policy action — stricter licensing regimes, investment in coastal monitoring infrastructure, and the political will to prosecute violators regardless of diplomatic sensitivities. The ocean does not respect political borders; neither should the commitment to protecting it.*

---

### Questions

1. Explain in your own words what is meant by "an unspoken covenant with the sea." (2 marks)

2. According to the passage, what has disrupted the traditional relationship between fishing communities and the sea? (2 marks)

3. What does the writer mean by "flags of convenience"? (2 marks)

4. In your own words, explain the phrase "The wealth extracted from West African waters flows almost entirely out of the region." (2 marks)

5. State THREE consequences of illegal fishing described in the passage. (3 marks)

6. What does the word "galling" (paragraph 3) suggest about the writer's feelings? (2 marks)

7. What solutions does the writer propose to address the fishing crisis? (3 marks)

8. Comment on the effectiveness of the final sentence as a conclusion to the passage. (2 marks)

---

### Marking Guide (Self-Assessment)

**Q1:** An informal, unwritten agreement — communities would fish responsibly and the ocean would always provide.
**Q2:** Industrial trawlers fishing illegally on a massive scale.
**Q3:** Ships registered in countries other than those that own them, to avoid strict regulations.
**Q4:** Profits from fishing in West African waters go to foreign countries rather than benefiting the local communities and nations.
**Q5:** Any three of: depleted fish stocks; marginalised fishing communities; loss of biodiversity; loss of USD 2 billion; destruction of marine ecosystems.
**Q6:** "Galling" means infuriating or bitterly frustrating — it shows the writer is deeply angered.
**Q7:** Stricter licensing; coastal monitoring infrastructure; political will to prosecute violators.
**Q8:** It is effective because it uses a parallel structure to make a powerful final point. The metaphor of the ocean not respecting borders gives moral urgency to the argument and leaves the reader with a call to action.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 4: ORAL ENGLISH AND PHONETICS
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Oral English and Phonetics';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Oral English in WASSCE', $C$
## Overview: Oral English in WASSCE

**Oral English** is one of the most misunderstood sections of the WASSCE English examination. Many students neglect it because they assume it is about speaking, but the written examination tests your **knowledge of spoken English** — how sounds are made, how words are stressed, how meaning changes with intonation.

### What WASSCE Tests in Oral English

| Area | What Is Tested |
|------|---------------|
| **Phonetic symbols** | Recognising IPA symbols for vowels and consonants |
| **Word stress** | Which syllable is stressed in a word |
| **Rhyme** | Words that have the same ending sounds |
| **Phonemic differences** | Distinguishing minimal pairs (words that differ by one sound) |
| **Intonation** | Rising and falling patterns that change meaning |
| **Vowel and consonant sounds** | Identifying and classifying sounds |

### Why Oral English Is Scoring Opportunity

Most students treat Oral English as an afterthought, yet it constitutes a significant portion of the WASSCE English examination. A focused student who masters the patterns can score 100% in this section with targeted practice.

### The International Phonetic Alphabet (IPA)

The IPA is a standardised system for representing sounds in any language. You do not need to memorise all 44 English phonemes — WASSCE focuses on the most common ones.
$C$, 'overview', 1),

(tid, 'Definitions: Vowels, Consonants, Stress and Intonation', $C$
## The English Sound System

### Vowel Sounds (20 in Standard British English)

English has 20 vowel sounds — far more than its 5 vowel letters. This is why spelling is not always a guide to pronunciation.

**Pure Vowels (Monophthongs) — 12 sounds:**

| IPA Symbol | Example Words |
|------------|--------------|
| /iː/ | sea, meet, key, believe |
| /ɪ/ | sit, bit, gym, busy |
| /e/ | bed, said, head, friend |
| /æ/ | cat, bad, hand, laugh |
| /ɑː/ | car, farm, heart, bath |
| /ɒ/ | hot, lot, want, cough |
| /ɔː/ | caught, door, law, more |
| /ʊ/ | book, put, could, wolf |
| /uː/ | food, moon, blue, shoe |
| /ʌ/ | cup, blood, love, some |
| /ɜː/ | bird, word, heard, turn |
| /ə/ | about, butter, doctor (unstressed syllable) |

**Diphthongs (Gliding Vowels) — 8 sounds:**

| IPA Symbol | Example Words |
|------------|--------------|
| /eɪ/ | day, late, rain, weight |
| /aɪ/ | my, night, tie, buy |
| /ɔɪ/ | boy, coin, noise |
| /aʊ/ | now, house, cow, out |
| /əʊ/ | go, home, know, soul |
| /ɪə/ | ear, here, idea, near |
| /eə/ | air, where, care, there |
| /ʊə/ | pure, sure, tour |

### Consonant Sounds — 24

Note the consonants that often cause confusion:

| IPA | Sound | Examples | Common Error |
|-----|-------|----------|-------------|
| /θ/ | "th" (voiceless) | think, bath, three | Often pronounced /t/ in West Africa |
| /ð/ | "th" (voiced) | this, mother, breathe | Often pronounced /d/ |
| /ŋ/ | "ng" | sing, ring, bank | Not a separate /n/ + /g/ |
| /ʒ/ | "zh" | measure, vision, pleasure | |
| /h/ | "h" | house, head, who | Often dropped in informal speech |
| /w/ | "w" | water, when, one | |
| /j/ | "y" | yes, yellow, use | |

---

### Word Stress

**Stress** means pronouncing one syllable of a word with greater force, length, and pitch than others.

**Rules for word stress:**

**Two-syllable nouns and adjectives:** Usually stressed on the FIRST syllable
- PREsent (noun), TAble, HAPpy, PROblem, STUdent

**Two-syllable verbs:** Usually stressed on the SECOND syllable
- preSENT (verb), reCORD, perMIT, exPORT

**Important:** The same word can be a noun or verb with DIFFERENT stress:
- **RE**cord (noun) vs. re**CORD** (verb)
- **PRO**test (noun) vs. pro**TEST** (verb)
- **CON**duct (noun) vs. con**DUCT** (verb)
- **IN**crease (noun) vs. in**CREASE** (verb)
- **PER**mit (noun) vs. per**MIT** (verb)

---

### Intonation

**Intonation** is the rise and fall of the voice in speech.

**Falling intonation (↘):** Used for:
- Statements: *She passed the examination. ↘*
- Wh-questions: *Where did you go? ↘*
- Commands: *Sit down. ↘*

**Rising intonation (↗):** Used for:
- Yes/No questions: *Did you eat? ↗*
- To show the sentence is not finished
- To express doubt or surprise
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Minimal Pairs, Rhyme and Phonemic Analysis', $C$
## Deep Explanation: Sound Analysis

### Minimal Pairs

**Minimal pairs** are words that differ by only ONE sound. Mastering them proves you understand how sounds work.

**Common WASSCE minimal pair groups:**

**Vowel differences:**
| Pair | IPA | Contrast |
|------|-----|---------|
| ship / sheep | /ɪ/ vs /iː/ | Short vs long vowel |
| bad / bed | /æ/ vs /e/ | Different vowel position |
| hot / hurt | /ɒ/ vs /ɜː/ | |
| pull / pool | /ʊ/ vs /uː/ | |

**Consonant differences:**
| Pair | Contrast |
|------|---------|
| thin / tin | /θ/ vs /t/ |
| then / den | /ð/ vs /d/ |
| sink / sing | /k/ vs /ŋ/ |
| bat / bad | /t/ vs /d/ (voiceless vs voiced) |
| fan / van | /f/ vs /v/ |

### Rhyme in WASSCE

Words rhyme when they share the same **vowel sound and any following consonant sounds** — not necessarily the same spelling.

**Same sound, different spelling:**
- **rain / main / lane / reign / vain** — all share /eɪn/
- **heard / bird / word / furred** — all share /ɜːd/
- **though / go / toe / sew** — all share /əʊ/

**Same spelling, different sound (does NOT rhyme):**
- **cough** (/ɒf/) does NOT rhyme with **tough** (/ʌf/)
- **done** (/dʌn/) does NOT rhyme with **bone** (/bəʊn/)
- **bear** (/beə/) does NOT rhyme with **dear** (/dɪə/)

### Vowel Classification by Position

The tongue position determines vowel quality:

**Front vowels:** /iː/, /ɪ/, /e/, /æ/ — tongue moves to front of mouth
**Central vowels:** /ɜː/, /ə/ — tongue in middle
**Back vowels:** /ɑː/, /ɒ/, /ɔː/, /ʊ/, /uː/ — tongue moves to back

**High vowels:** /iː/, /ɪ/, /ʊ/, /uː/ — tongue is high
**Mid vowels:** /e/, /ɜː/, /ə/, /əʊ/ — tongue is at mid height
**Low vowels:** /æ/, /ɑː/, /ɒ/ — tongue is low

### Voiced vs. Voiceless Consonants

**Voiced consonants:** The vocal cords vibrate — /b/, /d/, /g/, /v/, /z/, /ʒ/, /ð/, /m/, /n/, /ŋ/, /l/, /r/, /w/, /j/

**Voiceless consonants:** No vocal cord vibration — /p/, /t/, /k/, /f/, /s/, /ʃ/, /θ/, /h/, /tʃ/

**Test:** Put your fingers on your throat. If you feel vibration when making the sound, it is voiced.

Pairs (voiced/voiceless): b/p, d/t, g/k, v/f, z/s, ʒ/ʃ, ð/θ
$C$, 'explanation', 3),

(tid, 'Worked Examples: Stress Patterns and Phonetic Questions', $C$
## Worked Examples — Oral English

### Example 1: Word Stress

Mark the stressed syllable in each word (use capitals):

1. de-ci-sion → de-CI-sion
2. com-pe-ti-tion → com-pe-TI-tion
3. i-ma-gi-na-tion → i-ma-gi-NA-tion
4. gov-ern-ment → GOV-ern-ment
5. pho-tog-ra-phy → pho-TOG-ra-phy
6. pho-to-graph → PHO-to-graph
7. pho-tog-ra-pher → pho-TOG-ra-pher

Note: PHOtograph → phoTOGraphy → phoTOGrapher — stress shifts with suffix!

---

### Example 2: Identify the Odd One Out (Rhyme)

Which word does NOT rhyme with the others?

1. **height, site, night, weight, bite**
Answer: **weight** — pronounced /weɪt/, while the others all end in /aɪt/

2. **bear, care, here, fair, where**
Answer: **here** — pronounced /hɪə/, while the others end in /eə/

3. **cough, rough, tough, enough, dough**
Answer: **dough** — pronounced /dəʊ/, while the others end in /ʌf/

---

### Example 3: Phonemic Transcription Recognition

Select the word correctly transcribed:

1. /bɑːθ/ refers to: **bath** ✓ (NOT "birth" or "both")
2. /wɜːd/ refers to: **word** ✓ (NOT "ward" or "weird")
3. /θɪŋ/ refers to: **thing** ✓ (NOT "ting" or "sing")

---

### Example 4: Noun-Verb Stress Shift

State whether each word is used as a noun or verb, based on the stress pattern given:

1. **RE**cord → **Noun** (e.g., "That is a world record.")
2. re**CORD** → **Verb** (e.g., "Please record the meeting.")
3. **PER**mit → **Noun** (e.g., "Do you have a permit?")
4. per**MIT** → **Verb** (e.g., "I cannot permit this behaviour.")
$C$, 'examples', 4),

(tid, 'Practice Questions: Oral English and Phonetics', $C$
## Practice Questions — Oral English

### Section A: Rhyme

In each group, identify the ONE word that does NOT rhyme with the others.

1. floor, more, pour, sure, door
2. blood, mood, food, rude, crude
3. key, tea, say, free, bee
4. lost, cost, most, frost, tossed
5. through, true, shoe, sew, blue

**Answers:**
1. **sure** (/ʃʊə/ vs others ending in /ɔː/)
2. **blood** (/blʌd/ vs others ending in /uːd/)
3. **say** (/seɪ/ vs others ending in /iː/)
4. **most** (/məʊst/ vs others ending in /ɒst/)
5. **sew** (/səʊ/ vs others ending in /uː/)

---

### Section B: Word Stress

Mark the stressed syllable in each word:

1. magnificent
2. environment
3. appropriate (adjective)
4. appropriate (verb — to take something)
5. photograph
6. photography
7. economic
8. examination

**Answers:**
1. mag-NIF-i-cent
2. en-VI-ron-ment
3. a-PPRO-pri-ate (adj)
4. a-PPRO-pri-ate (verb — same stress, different meaning)
5. PHO-to-graph
6. pho-TOG-ra-phy
7. e-co-NOM-ic
8. ex-am-i-NA-tion

---

### Section C: Vowel Sounds

Which word has a DIFFERENT vowel sound from the others?

1. seat, feet, great, heat, beat
2. good, food, wood, book, could
3. paid, maid, said, braid, raid

**Answers:**
1. **great** (/eɪ/ vs /iː/ in the others)
2. **food** (/uː/ vs /ʊ/ in the others)
3. **said** (/e/ vs /eɪ/ in the others)

---

### Section D: Phonemic Symbols

Write the word represented by each phonetic transcription:

1. /nɒlɪdʒ/
2. /rɪˈsiːv/
3. /ˈwɒmən/
4. /pəˈliːs/

**Answers:**
1. knowledge
2. receive
3. woman
4. police
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 5: LEXIS AND STRUCTURE
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Lexis and Structure';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Lexis and Structure in WASSCE', $C$
## Overview: Lexis and Structure

**Lexis** refers to the vocabulary of a language — individual words and their meanings, including idiomatic expressions. **Structure** refers to the grammatical framework — how words combine correctly to form sentences.

The **Lexis and Structure** section of WASSCE typically presents:
1. **Fill-in-the-blank sentences** — choose the correct word from options
2. **Error identification** — find and correct grammatical mistakes
3. **Sentence rewriting** — express the same meaning using different structures
4. **Idiom and phrase usage** — test knowledge of fixed expressions

### Why This Section Requires Strategic Preparation

Unlike essay writing, which rewards creativity, Lexis and Structure has definitive right and wrong answers. This means:
- Every mark is achievable through targeted practice
- Common error types repeat across years
- Pattern recognition is more efficient than random vocabulary learning

### The Most Tested Areas

| Area | Description |
|------|-------------|
| Concord/Agreement | Subject-verb agreement rules |
| Tense consistency | Using correct and consistent verb tenses |
| Preposition usage | Correct prepositions after verbs and adjectives |
| Idiomatic expressions | Fixed phrases with non-literal meanings |
| Synonyms/Antonyms | Vocabulary range |
| Sentence transformation | Expressing the same idea differently |
$C$, 'overview', 1),

(tid, 'Definitions: Lexical and Structural Concepts', $C$
## Key Lexical and Structural Concepts

### Idioms
An **idiom** is a group of words whose combined meaning cannot be deduced from the individual words.

**Common WASSCE idioms:**

| Idiom | Meaning |
|-------|---------|
| Bite the bullet | Endure a painful situation bravely |
| Beat about the bush | Avoid the main topic |
| Burn the midnight oil | Work or study late into the night |
| The ball is in your court | It is your turn to decide/act |
| Under the weather | Feeling ill |
| Turn over a new leaf | Change one's behaviour for the better |
| Hit the nail on the head | Describe something exactly accurately |
| Let the cat out of the bag | Accidentally reveal a secret |
| A blessing in disguise | Something that seems bad but turns out good |
| Bite more than you can chew | Take on more than you can handle |
| Give someone the cold shoulder | Deliberately ignore someone |
| Once in a blue moon | Very rarely |
| Cost an arm and a leg | Be very expensive |
| Pull someone's leg | Tease or joke with someone |
| The tip of the iceberg | A small visible part of a much larger problem |

### Collocations
**Collocations** are words that naturally go together. Using the wrong collocation is a major source of errors.

| Correct Collocation | Incorrect Collocation |
|--------------------|----------------------|
| Make a decision | Do a decision |
| Do homework | Make homework |
| Take a photo | Make a photo |
| Pay attention | Give attention |
| Commit a crime | Do a crime |
| Heavy rain | Strong rain |
| Strong coffee | Heavy coffee |
| Make progress | Do progress |
| Give a speech | Make a speech |

### Phrasal Verbs
**Phrasal verbs** are verbs combined with prepositions or adverbs to create new meanings.

| Phrasal Verb | Meaning | Example |
|-------------|---------|---------|
| Bring up | Raise a child; mention a topic | She was brought up in Kumasi. |
| Call off | Cancel | The match was called off. |
| Come across | Encounter/find by chance | I came across an old letter. |
| Give up | Stop trying; surrender | Never give up on your dreams. |
| Look into | Investigate | Police are looking into the matter. |
| Put off | Postpone; delay | Do not put off what you can do today. |
| Run into | Meet by chance; collide | I ran into my teacher at the mall. |
| Set up | Establish; arrange | They set up a new company. |
| Take after | Resemble (parent/relative) | She takes after her mother. |
| Turn down | Reject; refuse | He turned down the offer. |
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Common Structure Errors and How to Fix Them', $C$
## Deep Explanation: Structure Errors

### Category 1: Prepositions After Verbs and Adjectives

Many verbs and adjectives require specific prepositions. These must be memorised.

**Common Verb + Preposition combinations:**

| Expression | Correct Preposition | Example |
|-----------|-------------------|---------|
| accuse someone OF | of | He was accused of theft. |
| agree WITH someone | with | I agree with your view. |
| agree TO a plan | to | They agreed to the terms. |
| apologise TO someone FOR something | to...for | She apologised to him for being late. |
| apply FOR a job/position | for | He applied for the scholarship. |
| arrive AT a place (specific) | at | We arrived at the airport. |
| arrive IN a city/country | in | We arrived in London. |
| blame someone FOR | for | Don't blame me for the mistake. |
| congratulate someone ON | on | I congratulate you on your success. |
| depend ON | on | Success depends on hard work. |
| differ FROM | from | This differs from what I expected. |
| dream OF/ABOUT | of/about | She dreams of becoming a doctor. |
| insist ON | on | He insisted on paying. |
| participate IN | in | She participated in the competition. |
| succeed IN | in | He succeeded in passing. |
| suffer FROM | from | She suffers from asthma. |
| tired OF | of | I am tired of excuses. |

**Common Adjective + Preposition combinations:**

| Expression | Preposition | Example |
|-----------|-----------|---------|
| afraid of | of | She is afraid of spiders. |
| good/bad at | at | He is good at mathematics. |
| interested in | in | She is interested in science. |
| responsible for | for | Who is responsible for this? |
| proud of | of | We are proud of our heritage. |
| grateful to someone FOR | to...for | I am grateful to you for your help. |
| disappointed with/in | with/in | He was disappointed with the result. |
| bored with | with | She is bored with routine work. |
| familiar with | with | Are you familiar with this topic? |

### Category 2: Sentence Transformation Patterns

**Active to Passive Voice:**
Active: *The teacher marked the scripts.*
Passive: *The scripts were marked by the teacher.*

Structure: Object + was/were + past participle + by + subject

**Direct to Indirect Speech:**
Direct: *He said, "I will come tomorrow."*
Indirect: *He said that he would come the next day.*

Changes: "will" → "would" / "tomorrow" → "the next day" / "I" → "he"

**Conditional Sentences:**
Type 1 (Likely future): *If you study, you will pass.*
Type 2 (Hypothetical): *If you studied, you would pass.*
Type 3 (Impossible past): *If you had studied, you would have passed.*

### Category 3: Confusable Words

| Word Pair | Distinction | Example |
|-----------|------------|---------|
| affect / effect | affect = verb; effect = noun | The rain **affects** the game. The **effect** was devastating. |
| accept / except | accept = receive; except = excluding | I **accept** the offer. Everyone **except** Kofi attended. |
| principal / principle | principal = head/main; principle = rule/value | The **principal** upholds his **principles**. |
| compliment / complement | compliment = praise; complement = complete/go well with | He **complimented** her dress, which **complemented** her complexion. |
| stationary / stationery | stationary = not moving; stationery = writing materials | The **stationary** car / buy **stationery** |
| lose / loose | lose = fail to win/misplace; loose = not tight | Don't **lose** your ticket. The cap is **loose**. |
$C$, 'explanation', 3),

(tid, 'Worked Examples: Lexis and Structure Questions', $C$
## Worked Examples — Lexis and Structure

### Example 1: Choose the Correct Option

1. By the time we arrived, they _____ (had already eaten / already ate / have already eaten).
**Answer: had already eaten** (Past Perfect — action completed before another past action)

2. She was accused _____ (for / with / of) stealing the documents.
**Answer: of** (accuse someone OF)

3. The new policy differs _____ (from / than / to) the previous one.
**Answer: from** (differ FROM)

4. Neither the manager nor the employees _____ (was / were) informed of the change.
**Answer: were** (with "neither...nor" agree with the nearest noun "employees")

5. He is one of the teachers who _____ (is / are) always on time.
**Answer: are** (relative clause refers to "teachers" — plural)

---

### Example 2: Identify and Correct the Error

1. *The informations provided were incomplete.*
**Error:** "informations" — "information" is uncountable, has no plural.
**Correction:** *The information provided was incomplete.*

2. *She congratulated him for passing the examination.*
**Error:** "for" — should be "on"
**Correction:** *She congratulated him on passing the examination.*

3. *I am very bored of studying all day.*
**Error:** "of" — should be "with"
**Correction:** *I am very bored with studying all day.*

4. *He advised me to not make the same mistake.*
**Error:** split infinitive in formal writing
**Correction:** *He advised me not to make the same mistake.*

---

### Example 3: Rewrite Without Changing Meaning

1. *"Where is my bag?" she asked.* [Rewrite as indirect speech]
**Answer:** She asked where her bag was.

2. *Despite working hard, she did not pass.* [Rewrite beginning with "Although"]
**Answer:** Although she worked hard, she did not pass.

3. *It was so dark that we could not see the road.* [Rewrite using "too"]
**Answer:** It was too dark for us to see the road.
$C$, 'examples', 4),

(tid, 'Practice Questions: Lexis and Structure', $C$
## Practice Questions — Lexis and Structure

### Section A: Complete Each Sentence

Choose the correct option from the brackets.

1. She has been living in Accra _____ 2015. (since / for)
2. The committee consists _____ seven members. (of / from / with)
3. I would rather stay at home than _____ to the party. (going / go / to go)
4. He was fined for _____ the traffic rules. (broke / breaking / broken)
5. She is looking forward to _____ you next week. (see / seeing / have seen)
6. No sooner had she sat down _____ the phone rang. (when / than / then)
7. The doctor insisted _____ her taking a complete rest. (for / on / upon)
8. It is time the government _____ action on this matter. (takes / took / take)

**Answers:** 1-since, 2-of, 3-go, 4-breaking, 5-seeing, 6-than, 7-on, 8-took

---

### Section B: Error Identification

Each sentence contains ONE error. Identify and correct it.

1. The students were adviced to work harder.
2. She is married with a wealthy businessman.
3. He has been ill since three months.
4. Neither of the two solutions are acceptable.
5. She is one of those students who works extremely hard.
6. The teacher along with his students were absent.
7. Much people attended the festival.

**Answers:**
1. adviced → **advised**
2. married with → **married to**
3. since → **for** (duration, not a point in time)
4. are → **is** ("neither of the two" takes singular)
5. works → **work** (relative clause refers to "students")
6. were → **was** ("along with" is not a conjunction; subject is "teacher")
7. Much → **Many** ("people" is countable)

---

### Section C: Sentence Transformation

Rewrite each sentence as instructed.

1. "Please help me with this problem," she said. [Indirect speech]
2. They planted the trees last year. [Passive voice]
3. The bag was so heavy that he could not carry it. [Rewrite using "too"]
4. Though she was ill, she attended the meeting. [Rewrite with "in spite of"]

**Answers:**
1. She asked/pleaded to be helped with the problem. / She requested that they help her with the problem.
2. The trees were planted (by them) last year.
3. The bag was too heavy for him to carry.
4. In spite of being ill, she attended the meeting.
$C$, 'practice', 5);

END $$;
