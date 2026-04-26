/*
  # English Language Notes: Topics 16-20
  
  Vocabulary and Word Formation, Reading for Inference,
  Tenses and Verb Forms, Concord and Agreement, Speech Writing and Presentations
*/

DO $$
DECLARE
  tid UUID;
BEGIN

-- ============================================================
-- TOPIC 16: VOCABULARY AND WORD FORMATION
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Vocabulary and Word Formation';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Building Your Vocabulary', $C$
## Overview: Vocabulary and Word Formation

**Vocabulary** is the total stock of words a person knows and uses. In WASSCE English, a rich vocabulary is rewarded in every section — essays, comprehension, directed writing, and the Lexis and Structure paper.

**Word formation** refers to the processes by which new words are created in English — through prefixes, suffixes, compounding, conversion, and other mechanisms.

### Why Vocabulary Matters

- In essays: Precise vocabulary earns expression marks
- In comprehension: You must understand words in context
- In Lexis and Structure: Vocabulary questions test word meaning and usage
- In oral English: You need the right word at the right moment

### The Four Vocabulary Levels

| Level | Description |
|-------|-------------|
| **Recognition vocabulary** | Words you understand when you see or hear them |
| **Recall vocabulary** | Words you can actively use in speech or writing |
| **Productive vocabulary** | Words you use with confidence and precision |
| **Collocational vocabulary** | Knowing which words go together naturally |

The goal is to move words from recognition to productive use through deliberate practice.
$C$, 'overview', 1),

(tid, 'Prefixes, Suffixes, and Word Roots', $C$
## Word Formation: Building and Decoding Words

### Prefixes — Added to the Beginning of a Root Word

| Prefix | Meaning | Examples |
|--------|---------|---------|
| **un-** | not / reversal | unhappy, undo, unusual |
| **dis-** | not / reversal | disagree, disappear, dishonest |
| **mis-** | wrongly | misunderstand, misbehave, mislead |
| **re-** | again / back | rewrite, return, reconsider |
| **pre-** | before | pretest, prejudge, precaution |
| **post-** | after | postwar, postpone, postgraduate |
| **over-** | too much | overwork, overestimate, overdue |
| **under-** | too little / below | underestimate, underpaid, undermine |
| **inter-** | between | international, interact, intermediate |
| **trans-** | across | transfer, transport, transform |
| **anti-** | against | antibiotic, antisocial, anti-corruption |
| **non-** | not | non-fiction, nonprofit, nonsense |
| **semi-** | half | semicircle, semifinal, semi-formal |
| **super-** | above / beyond | supernatural, supermarket, superior |
| **sub-** | under / below | submarine, substandard, subtract |
| **co-** | together | cooperate, co-author, coexist |
| **mono-** | one | monologue, monotonous, monarch |
| **bi-** | two | bilingual, bicycle, biannual |
| **poly-** | many | polygamy, polyglot, polysyllabic |

---

### Suffixes — Added to the End of a Root Word

**Noun-forming suffixes:**
| Suffix | Meaning | Examples |
|--------|---------|---------|
| **-tion / -sion** | act or result of | education, decision, permission |
| **-ment** | act or result of | improvement, government, achievement |
| **-ness** | state of being | happiness, darkness, awareness |
| **-ity** | state or quality | ability, equality, creativity |
| **-er / -or** | one who does | teacher, actor, supervisor |
| **-ism** | belief or practice | capitalism, optimism, criticism |
| **-ist** | one who believes/practices | artist, socialist, journalist |
| **-ance / -ence** | state or action | performance, independence, preference |

**Adjective-forming suffixes:**
| Suffix | Examples |
|--------|---------|
| **-ful** | helpful, beautiful, powerful |
| **-less** | careless, homeless, hopeless |
| **-able / -ible** | readable, possible, comfortable |
| **-ous / -ious** | dangerous, precious, ambitious |
| **-al** | natural, educational, political |
| **-ic** | artistic, scientific, dramatic |
| **-ive** | creative, active, decisive |

**Verb-forming suffixes:**
| Suffix | Examples |
|--------|---------|
| **-ise / -ize** | modernise, organise, realise |
| **-en** | strengthen, lengthen, widen |
| **-ify** | clarify, simplify, justify |

---

### Important Greek and Latin Roots

| Root | Meaning | Examples |
|------|---------|---------|
| **-port-** | carry | export, import, transport |
| **-dict-** | say / speak | predict, dictate, verdict |
| **-vis- / -vid-** | see | visible, vision, evidence |
| **-scrib- / -script-** | write | describe, manuscript, inscription |
| **-mit- / -miss-** | send | transmit, mission, permit |
| **-rupt-** | break | corrupt, interrupt, erupt |
| **-struct-** | build | construct, instruct, destroy |
| **-graph-** | write | photograph, biography, paragraph |
| **-log-** | word / study | biology, dialogue, monologue |
| **-path-** | feeling / suffering | sympathy, empathy, pathology |
$C$, 'definitions', 2),

(tid, 'Synonyms, Antonyms, Connotation and Denotation', $C$
## Advanced Vocabulary Concepts

### Synonyms (Words with Similar Meanings)

A **synonym** is a word with the same or very similar meaning to another. However, synonyms are rarely perfectly interchangeable — they carry different connotations and fit different contexts.

**"Walk" synonyms — with nuance:**
- *stride* (confident, purposeful)
- *stroll* (leisurely, relaxed)
- *trudge* (heavy, tired, reluctant)
- *saunter* (casual, unhurried)
- *march* (rhythmic, military, determined)

**"Say" synonyms — with nuance:**
- *whisper* (quiet, secret)
- *announce* (formal, public)
- *mutter* (quiet, discontented)
- *declare* (formal, definitive)
- *boast* (brag, with pride)

---

### Antonyms (Words with Opposite Meanings)

**Complementary antonyms:** One must be true if the other is false
- alive / dead | present / absent | true / false

**Gradable antonyms:** A scale exists between them
- hot / cold (warm, cool, lukewarm in between)
- happy / sad | rich / poor | young / old

**Relational antonyms:** Each defines the other by relation
- teacher / student | parent / child | employer / employee

---

### Denotation vs. Connotation

**Denotation:** The literal, dictionary definition of a word.
**Connotation:** The emotional or cultural associations the word carries.

| Word | Denotation | Connotation |
|------|-----------|-------------|
| house | A structure for human habitation | Neutral |
| home | A structure for human habitation | Warm, belonging, emotional |
| mansion | A large house | Wealth, privilege, excess |
| shack | A small crude structure | Poverty, neglect, hardship |
| thin | Low body weight | Neutral to positive |
| skinny | Low body weight | Negative — unhealthy, unattractively lean |
| slender | Low body weight | Positive — elegantly lean |

**In writing:** Choose words for their connotations, not just their denotations. The difference between calling someone "determined" and "stubborn" is not the fact — it is the writer's attitude toward the person.

---

### Words Commonly Confused

| Pair | Distinction |
|------|------------|
| **imply / infer** | A speaker implies; a listener infers. |
| **affect / effect** | Affect is the verb; effect is the noun. |
| **disinterested / uninterested** | Disinterested = impartial; uninterested = bored |
| **nauseous / nauseated** | Nauseous = causing nausea; nauseated = feeling sick |
| **fewer / less** | Fewer for countable; less for uncountable |
| **who / whom** | Who = subject; Whom = object |
| **historic / historical** | Historic = of great importance; historical = relating to history |
| **emigrate / immigrate** | Emigrate = leave a country; immigrate = enter a country |
$C$, 'explanation', 3),

(tid, 'Worked Examples: Word Formation and Vocabulary', $C$
## Worked Examples — Vocabulary

### Example 1: Word Formation Table

Complete the table:

| Noun | Verb | Adjective | Adverb |
|------|------|-----------|--------|
| decision | decide | decisive | decisively |
| improvement | improve | improved | — |
| education | educate | educated / educational | educationally |
| criticism | criticise | critical | critically |
| strength | strengthen | strong | strongly |
| confidence | — | confident | confidently |
| analysis | analyse | analytical | analytically |

---

### Example 2: Use Context Clues

Even if you do not know a word, the surrounding text often gives clues.

*"Despite his garrulous nature in social settings, he became completely taciturn whenever the topic of his past arose."*

Even without knowing "garrulous" or "taciturn," you can infer:
- "garrulous" = talkative (social settings, contrast with "taciturn")
- "taciturn" = silent/reserved (opposite of garrulous, what he becomes)

**Context clue strategies:**
- **Contrast:** "despite," "although," "however" signal that words mean opposite things
- **Synonym:** "...or, in other words,..." gives a restatement
- **Example:** "for instance" gives a clarifying example
- **Definition:** Sometimes the text defines the word directly

---

### Example 3: Connotation in Practice

Which word would you choose for each sentence, and why?

*"The minister spoke for two hours about the budget."*

Option A: "The minister rambled for two hours..."
Option B: "The minister elaborated for two hours..."
Option C: "The minister explained for two hours..."

- **Rambled** — negative connotation, suggests disorganised, unfocused speech
- **Elaborated** — positive connotation, suggests detailed, careful explanation
- **Explained** — neutral connotation, simply states the action
$C$, 'examples', 4),

(tid, 'Practice: Vocabulary and Word Formation', $C$
## Practice Questions — Vocabulary

### Section A: Add a Prefix or Suffix

1. Form a noun from "decide" using a suffix: _______
2. Form an adjective meaning "not possible" using a prefix: _______
3. Form a verb meaning "to make modern" using a suffix: _______
4. Form a noun meaning "the state of being equal" using a suffix: _______
5. Form an adjective meaning "able to be read" using a suffix: _______

**Answers:** 1-decision, 2-impossible, 3-modernise, 4-equality, 5-readable

---

### Section B: Synonym Choice with Nuance

Choose the word with the most appropriate connotation for each sentence.

1. The protest was (small / tiny / modest / insignificant) but vocal.
2. She was (thin / skinny / slender / gaunt) in her wedding dress.
3. He (walked / trudged / strolled / marched) home after losing the match.
4. The politician (said / declared / boasted / announced) that he had never broken a promise.

---

### Section C: Word Formation Table

Complete the word family:

| Noun | Verb | Adjective | Adverb |
|------|------|-----------|--------|
| creation | ______ | ______ | creatively |
| ______ | examine | examined | — |
| beauty | ______ | beautiful | ______ |
| ______ | resist | resistant | — |
| argument | argue | ______ | argumentatively |
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 17: READING FOR INFERENCE
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Reading for Inference';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Reading Beyond the Surface', $C$
## Overview: Reading for Inference

**Inference** is the ability to deduce meaning that is implied rather than explicitly stated. When you infer, you read between the lines — you use evidence in the text plus your knowledge of language, human behaviour, and context to arrive at conclusions the writer has not spelled out.

### Why Inference is the Highest-Order Reading Skill

Literal comprehension (finding stated facts) is the starting point. Inference goes further:

| Reading Level | Example |
|--------------|---------|
| **Literal:** What does the text say? | "She did not speak at the meeting." |
| **Inferential:** What does this imply? | She was upset, intimidated, excluded, or was planning to speak privately. |
| **Critical:** Why does the writer include this detail? | To show that her silence was more powerful than anything she could have said. |

WASSCE questions testing inference use language like:
- "What does the writer **suggest** about...?"
- "What can we **infer** from...?"
- "What does this **imply**?"
- "What do you understand by...?"
- "What is the **tone** of the passage?"
$C$, 'overview', 1),

(tid, 'Techniques for Making Valid Inferences', $C$
## How to Make Valid Inferences

### The Evidence-Inference Framework

Every inference must be supported by textual evidence. The formula:

**"The writer implies [your inference] because [specific evidence from text]."**

This structure prevents you from making wild guesses and shows the examiner your reasoning.

---

### Types of Inferences in WASSCE

**1. Character Inference**
Deduce a character's personality, feelings, or motivations from their words and actions.

*Text:* "He straightened his tie for the fourth time and checked his watch again. The door remained closed."

*Inference:* The character is anxious — the repetitive checking of his tie and watch suggests nervous behaviour; the closed door implies he is waiting for something important.

**2. Authorial Intention**
Deduce why the writer included a specific detail or made a particular choice.

*Text:* "The government's anti-corruption drive, launched with great fanfare in January, had produced no arrests by December."

*Inference:* The writer is being ironic. The contrast between "great fanfare" (suggests official enthusiasm) and "no arrests" (suggests failure) implies the campaign was performative rather than genuine.

**3. Tone Inference**
Deduce the writer's attitude from word choice and structure.

Words that signal tone:
- Irony/Sarcasm: exaggerated praise, understatement, contradiction between expectation and result
- Sympathy: emotive language, focus on suffering, inclusive "we"
- Urgency: short sentences, imperatives, repetition
- Objectivity: passive voice, statistics, absence of emotional language
- Pessimism: negatives, disappointment, historical patterns of failure

**4. Theme Inference**
Deduce the central message or idea the writer is communicating.

*Process:* What do all the evidence and examples point toward? What is the writer fundamentally arguing, even if they do not state it directly?

---

### Reading Strategies That Support Inference

**1. Pay attention to what is NOT said.**
Writers make deliberate choices about what to leave out. Absence is as meaningful as presence.

**2. Notice patterns.**
If the writer mentions three examples of government failure in a row, the inference is that the failure is systematic, not accidental.

**3. Consider the source and audience.**
Who wrote this, and who were they writing for? This shapes what can be assumed and what must be explained.

**4. Track the writer's language shifts.**
When a writer moves from neutral language to emotive language, something has changed in their position or purpose.
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Inference in Practice', $C$
## Inference in Practice — Deep Analysis

### Worked Analysis: Inferring from a Complex Text

*"The children of the wealthy attend schools where the Wi-Fi is faster than the roads in rural communities, where teachers hold master's degrees and attend professional development workshops in Europe, and where the school library is better stocked than the national library. Meanwhile, in the schools that educate the majority of our children, a textbook shared among seven students is considered a blessing."*

**Literal meaning:** There is a large gap in school quality between rich and poor children.

**Inference 1:** The writer implies deep frustration and moral indignation at the inequality described — the language is not neutral. "The Wi-Fi is faster than the roads" is a deliberately ironic comparison that highlights the absurdity of the disparity.

**Inference 2:** The writer implies that this educational gap is systematic and deliberate (or at least institutionally enabled) rather than accidental. The contrast is too stark to be explained by simple resource shortages.

**Inference 3:** The phrase "considered a blessing" implies that expectations in poor schools are so low that a shared textbook seems like generosity. This is bitter irony.

**Inference 4:** The writer implies that the educational system is reinforcing social inequality — the wealthy get better education to become wealthier, while the poor receive less to enable their continued marginalisation.

---

### Common Inference Question Formats and How to Answer Them

**"What does the writer imply about...?"**
Structure: [Inference statement] + "This is suggested by [quote or reference to specific detail]."

**"What can we infer from the writer's use of the phrase '...'?"**
Structure: "The phrase '...' implies [meaning], suggesting that [broader inference about attitude/situation]."

**"What is the tone of this passage?"**
Structure: "The tone is [word]. This is conveyed through [specific example: word choice, sentence structure, imagery]."
$C$, 'explanation', 3),

(tid, 'Worked Examples: Inference Practice Passages', $C$
## Worked Examples — Reading for Inference

### Passage and Questions

*"The auditors arrived on a Tuesday, without warning. By Wednesday morning, three senior officials had applied for annual leave. By Thursday, the finance director had retired on medical grounds. The audit report, when it was finally released six months later, found that 'certain irregularities require further investigation.' No further investigations were conducted. The officials who had taken leave returned to their posts. The finance director, upon recovery from his medical condition, was appointed to a more senior position in a different ministry."*

---

**Q1: What does the writer imply about the senior officials who applied for annual leave when the auditors arrived?**

The writer implies that they fled deliberately to avoid being questioned by the auditors. The timing — immediately after the auditors' arrival, without any apparent prior planning (the auditors arrived "without warning") — suggests panic rather than coincidence. The reader is invited to conclude that these officials had knowledge of or involvement in financial misconduct.

**Q2: What is the tone of the passage?**

The tone is darkly ironic and cynical. The writer presents a sequence of suspicious events in a flat, matter-of-fact tone — as though they are simply reporting facts — yet every detail is chosen to expose how accountability has been evaded. The phrase "upon recovery from his medical condition" is particularly ironic, as the illness appears to have been conveniently timed and brief. The writer's neutrality is a rhetorical strategy; the outrage is embedded in the facts chosen.

**Q3: What can we infer about the effectiveness of the audit process described?**

We can infer that the audit process was entirely ineffective — or worse, a performance of accountability without any genuine intention to pursue wrongdoing. Despite finding "irregularities requiring further investigation," no investigation followed, the officials returned to their positions, and one even received a promotion. The writer implies that the institutions designed to enforce accountability are either powerless or complicit.
$C$, 'examples', 4),

(tid, 'Practice: Reading for Inference', $C$
## Practice Questions — Reading for Inference

### Passage

*"After thirty years in the classroom, Mr. Acquah knew exactly what failure looked like. It looked like the student who copied homework every morning and could not explain a single answer. It looked like the parent who came to school only on results day, certificate in hand, ready to protest on behalf of a child who had not studied. It looked like the examination system that rewarded those who were best at memorising, not those who could think. He had decided, a long time ago, that none of this was the students' fault. But he had also decided, much more recently, that it was not entirely his fault either."*

---

**Questions:**

1. What does the writer imply about Mr. Acquah's attitude toward the students who copy homework? (2 marks)

2. What does Mr. Acquah's comment about parents imply about parental involvement in education? (2 marks)

3. What does the phrase "ready to protest on behalf of a child who had not studied" suggest about these parents? (2 marks)

4. What can we infer from Mr. Acquah's "much more recent" decision that the failures are not entirely his fault? (3 marks)

5. Comment on the tone of this passage and how it is achieved. (3 marks)

---

### Self-Assessment Guidance

**Q1:** He does not blame them for failing, but he sees the copying as a symptom of a deeper problem — students know they can get away with it, so they do. His "knowledge" is resigned rather than judgmental.

**Q4:** The "much more recently" suggests a shift — at some point he DID blame himself, and only more recently has he begun to attribute the problem to systemic failures (the examination system, parental attitudes, institutional culture). This implies a long struggle with professional guilt and disillusionment.

**Q5:** The tone is weary, resigned but not bitter — a kind of philosophical acceptance that things are broken in ways beyond any one person's control. The repetition of "It looked like..." creates a litany effect — a long list of recognisable failures, each one adding to the cumulative weight of the teacher's experience.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 18: TENSES AND VERB FORMS
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Tenses and Verb Forms';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: English Tense System', $C$
## Overview: Tenses and Verb Forms

The English tense system is one of the most complex aspects of the language. Tenses do not just mark time (past, present, future) — they also mark **aspect** (whether an action is completed, ongoing, or habitual) and **mood** (certainty, possibility, condition).

### Why Tenses Are Crucial in WASSCE

- **Essays:** Consistency of tense is tested; mixing tenses inappropriately loses marks
- **Narrative writing:** Knowing when to use past simple vs. past continuous vs. past perfect is key to storytelling
- **Lexis and Structure:** Tense choice questions appear regularly
- **Comprehension:** Understanding tense helps you interpret meaning accurately

### Overview of the 12 Main Tenses

| Tense | Form | Example |
|-------|------|---------|
| Present Simple | base form / -s | "She studies every day." |
| Present Continuous | am/is/are + -ing | "She is studying now." |
| Present Perfect | have/has + past participle | "She has studied for three hours." |
| Present Perfect Continuous | have/has been + -ing | "She has been studying since morning." |
| Past Simple | past form (regular -ed / irregular) | "She studied yesterday." |
| Past Continuous | was/were + -ing | "She was studying when he arrived." |
| Past Perfect | had + past participle | "She had studied before the exam." |
| Past Perfect Continuous | had been + -ing | "She had been studying for hours." |
| Future Simple | will + base form | "She will study tomorrow." |
| Future Continuous | will be + -ing | "She will be studying at 8 PM." |
| Future Perfect | will have + past participle | "She will have studied by then." |
| Future Perfect Continuous | will have been + -ing | "She will have been studying for 5 hours." |
$C$, 'overview', 1),

(tid, 'Deep Guide to Each Tense — Form, Meaning, Use', $C$
## The 12 Tenses — Complete Guide

### Present Simple
**Form:** base verb (or +s for third person singular)
**Uses:**
- Habits and routines: "He reads the newspaper every morning."
- General truths: "Water boils at 100 degrees Celsius."
- Permanent states: "She lives in Accra."
- Scheduled future events: "The train leaves at 6 AM tomorrow."

### Present Continuous
**Form:** am/is/are + verb-ing
**Uses:**
- Actions happening now: "She is reading this sentence."
- Temporary situations: "I am staying with my cousin this week."
- Annoying habits (with "always"): "He is always interrupting!"
- Definite future plans: "We are moving to Kumasi next month."

### Present Perfect
**Form:** have/has + past participle
**Uses:**
- Past action with present relevance: "She has passed the examination." (result matters now)
- Experience (ever/never): "Have you ever been to London?"
- Recent past (just/already/yet): "He has just arrived."
- Duration (for/since): "She has lived here since 2010." / "...for ten years."

**Key contrast:**
- "I studied." (Past simple — specific time in past, time indicated or implied)
- "I have studied." (Present perfect — unspecified time in past, result relevant now)

### Past Simple
**Form:** verb + -ed (regular) or irregular past form
**Uses:**
- Completed actions at specific past time: "She graduated in 2020."
- Sequence of past events: "He entered, sat down, and opened his book."
- Habitual past (with "used to"): "She used to walk to school."

### Past Continuous
**Form:** was/were + verb-ing
**Uses:**
- Ongoing action interrupted by another: "She was studying **when** the lights went out."
- Two simultaneous past actions: "While he was cooking, she was cleaning."
- Setting the scene in narrative: "The sun was setting as he drove into the village."

### Past Perfect
**Form:** had + past participle
**Uses:**
- Action completed BEFORE another past action: "She **had already eaten** when he arrived."
- Reported speech (sequence of tenses): He said that he **had finished** the report.

### Future Simple
**Form:** will + base verb
**Uses:**
- Predictions: "It will rain tomorrow."
- Spontaneous decisions: "I'll answer the phone."
- Promises: "I will be there."

### Conditional Tenses
Type 1 (Real condition): "If she studies, she will pass."
Type 2 (Hypothetical): "If she studied, she would pass."
Type 3 (Impossible past): "If she had studied, she would have passed."
$C$, 'definitions', 2),

(tid, 'Common Tense Errors and How to Correct Them', $C$
## Common Tense Errors

### Error 1: Wrong Tense After "Since/For"

**Since** is used with Present Perfect to indicate a starting point.
**For** is used with Present Perfect to indicate duration.

Wrong: "She lives here since 2010."
Correct: "She **has lived** here since 2010."

Wrong: "He is studying for three hours."
Correct: "He **has been studying** for three hours."

---

### Error 2: Mixing Tenses in Narrative

Once you establish a tense for your narrative, maintain it consistently. The past simple is standard for storytelling.

Wrong: "She walked into the room. She sees the letter on the table. She picked it up and reads it slowly."

Correct: "She walked into the room. She **saw** the letter on the table. She picked it up and **read** it slowly."

---

### Error 3: Incorrect Past Perfect Usage

The past perfect is ONLY needed when you need to show that ONE past action happened BEFORE ANOTHER past action.

Wrong: "He had gone to school." (when no earlier reference point is needed)
Correct in context: "By the time we arrived, he **had already gone** to school."

---

### Error 4: Should/Would Confusion in Indirect Speech

When reporting speech, modal verbs shift back:
- "I will come" → He said he **would** come
- "I can help" → He said he **could** help
- "I must go" → He said he **had to** go
- "I may leave" → He said he **might** leave

---

### Error 5: The Unreal Past with "Wish" and "If Only"

"I wish" is followed by the PAST TENSE (even for present situations):
- "I wish I **knew** the answer." (I don't know it now)
- "I wish she **were** here." (She is not here — note "were" not "was")
- "I wish I **had studied** harder." (Regret about the past — Past Perfect)

"If only" follows the same pattern:
- "If only I **had** more time!" (I don't have it now)
$C$, 'explanation', 3),

(tid, 'Worked Examples: Tense in Context', $C$
## Worked Examples — Tenses

### Example 1: Choose the Correct Tense

1. By the time the teacher arrived, the students _____ (already left / had already left / already leave).
**Answer: had already left** (Past Perfect — action completed before another past action)

2. She _____ (lives / has lived / is living) in Accra since she was a child.
**Answer: has lived** (Present Perfect with "since")

3. If he _____ (studied / had studied) more, he _____ (would pass / would have passed).
**Answer: had studied / would have passed** (Type 3 conditional — past impossible)

4. When I _____ (arrived / had arrived), the ceremony _____ (already started / had already started).
**Answer: arrived / had already started** (Past Simple for the arriving; Past Perfect for the earlier action)

5. She _____ (is working / works) on an important project at the moment.
**Answer: is working** (Present Continuous for action happening now)

---

### Example 2: Rewrite in the Correct Tense

Rewrite: "I start the school in 2015. I am there for four years. Now I am working as a teacher."

**Corrected:** "I **started** school in 2015. I **was there** for four years. Now I **am working** as a teacher."

---

### Example 3: Tense in Indirect Speech

Convert to indirect speech:

1. "I will pass," she said.
→ She said that she **would pass**.

2. "I have never been to Kumasi," he told me.
→ He told me that he **had never been** to Kumasi.

3. "We are leaving tomorrow," they announced.
→ They announced that they **were leaving** the following day.
$C$, 'examples', 4),

(tid, 'Practice: Tenses and Verb Forms', $C$
## Practice Questions — Tenses and Verb Forms

### Section A: Fill in the Blank

1. By the time she graduated, she _____ (write) four research papers.
2. She _____ (study) medicine for five years when she decided to switch to law.
3. If I _____ (know) then what I know now, I _____ (make) different choices.
4. He _____ (not / see) his family since he moved to the capital.
5. The phone _____ (ring) three times before he answered it.
6. I wish I _____ (be) taller.
7. No sooner had the ceremony begun _____ (it begins / than it began / when it began).

**Answers:** 1-had written, 2-had been studying, 3-had known/would have made, 4-has not seen, 5-had rung, 6-were, 7-than it began

---

### Section B: Identify and Correct Tense Errors

1. She is a teacher since 2015.
2. When I arrived, the meeting already started.
3. He said that he will come later.
4. I wish I studied harder for the last exam.
5. She usually goes to the market on Saturdays, but last week she is sick.

**Answers:**
1. has been → "She **has been** a teacher since 2015."
2. had already started → "When I arrived, the meeting **had already started**."
3. would come → "He said that he **would** come later."
4. had studied → "I wish I **had studied** harder for the last exam."
5. was sick → "...but last week she **was** sick."

---

### Section C: Rewrite in Indirect Speech

1. "Please close the door," the teacher said to the student.
2. "I have already submitted my assignment," she told the tutor.
3. "We will review the policy next month," the minister announced.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 19: CONCORD AND AGREEMENT
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Concord and Agreement';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Concord and Subject-Verb Agreement', $C$
## Overview: Concord and Agreement

**Concord** (also called **agreement**) is the grammatical principle that certain words in a sentence must match in form. The most important type in English is **subject-verb agreement** — the verb must match its subject in number (singular or plural) and person.

Concord errors are among the most common and most penalised mistakes in WASSCE English.

### The Basic Rule

A **singular subject** takes a **singular verb.**
A **plural subject** takes a **plural verb.**

*"The student **works** hard."* (singular subject, singular verb)
*"The students **work** hard."* (plural subject, plural verb)

### Why Concord Is Difficult

English concord becomes complex because:
1. The subject may be separated from its verb by intervening phrases
2. Some subjects look plural but are singular (or vice versa)
3. Certain structures (neither...nor, either...or) have specific rules
4. Collective nouns can take either singular or plural verbs
5. Indefinite pronouns have fixed agreement rules
$C$, 'overview', 1),

(tid, 'The Complete Rules of Subject-Verb Agreement', $C$
## Complete Concord Rules

### Rule 1: Intervening Phrases Do Not Change Agreement

The subject, NOT the intervening phrase, determines the verb.

*"The quality of the results **is** impressive."* (subject = "quality" — singular)
*"The results of the examination **are** impressive."* (subject = "results" — plural)
*"The teacher, together with all the students, **was** late."* (subject = "teacher" — singular; "together with" is not a conjunction)

### Rule 2: "Either...Or" and "Neither...Nor"

Verb agrees with the NEAREST subject.

*"Either the teacher or the students **are** responsible."* (nearest = "students" — plural)
*"Either the students or the teacher **is** responsible."* (nearest = "teacher" — singular)
*"Neither the manager nor the employees **were** informed."* (nearest = "employees" — plural)

### Rule 3: Collective Nouns

**Singular** when the group acts as one unit:
*"The committee **has** made its decision."*
*"The team **is** celebrating."*

**Plural** when individual members act separately:
*"The committee **are** divided in their opinions."*
*"The team **have** their own views."*

Common collective nouns: committee, team, staff, government, family, board, jury, audience, crowd, class, army, fleet

### Rule 4: Indefinite Pronouns

**Always singular:** each, every, either, neither, one, everyone, everyone, someone, no one, anybody, nobody, everything, nothing
*"Everyone **is** responsible."*
*"Neither of the options **is** acceptable."*
*"Each of the students **was** given a textbook."*

**Always plural:** both, few, many, several, others
*"Many **are** called, but few **are** chosen."*

**Either singular or plural depending on context:** all, any, some, most, none
*"Some of the water **is** contaminated."* (water = uncountable — singular)
*"Some of the students **are** absent."* (students = countable — plural)

### Rule 5: "None"

"None" is traditionally singular, but modern usage accepts plural when referring to countable items.
Formal: *"None of the students **was** present."*
Accepted: *"None of the students **were** present."*

### Rule 6: Subject After the Verb (Inverted Sentences)

The verb still agrees with the actual subject, even when it comes after.
*"There **are** many problems in the system."* (subject = "problems" — plural)
*"There **is** a serious problem here."* (subject = "problem" — singular)

### Rule 7: Relative Clause Agreement

A relative clause verb agrees with the ANTECEDENT (the noun it refers back to).
*"She is one of the students who **work** extremely hard."* (verb agrees with "students," not "one")
*"She is the only one of the students who **works** like this."* (verb agrees with "one" — singular)

### Rule 8: Titles and Quantities as Single Concepts

*"Twenty years **is** a long time."* (treated as one period)
*"Economics **is** a fascinating subject."*
*"The United Nations **has** approved the resolution."*
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Tricky Concord Cases', $C$
## Tricky Concord Cases

### Tricky Case 1: "As well as," "Along with," "In addition to"

These are NOT conjunctions — they do not make a plural subject. The verb agrees with the FIRST subject only.

*"The principal, **as well as** the teachers, **was** present."* (subject = "principal")
*"Ghana, **along with** other West African nations, **is** facing this challenge."* (subject = "Ghana")

**Contrast with "and":**
*"The principal **and** the teachers **were** present."* ("and" makes a compound plural subject)

---

### Tricky Case 2: Mathematical Expressions

When expressing calculation results, use singular or plural depending on the expression:
*"Three plus three **is** six."* (mathematical fact — singular)
*"Ten percent of the students **are** failing."* (refers to actual students — plural)
*"Half of the class **is** asleep."* (class = collective — singular)
*"Half of the students **are** absent."* (students — plural)

---

### Tricky Case 3: The Word "Number"

*"A number of students **are** absent."* (plural — "a number" = several)
*"The number of absent students **is** increasing."* (singular — refers to the count itself)

---

### Tricky Case 4: "More than one"

Despite the word "more," this is singular:
*"More than one student **has** complained."*

---

### Tricky Case 5: Nouns That Look Plural But Are Singular

*"The news **is** alarming."*
*"Mathematics **is** a compulsory subject."*
*"Physics, Chemistry, and Biology — each **is** taught at this school."*
*"Measles **is** a childhood disease."* (medical conditions ending in -s)

---

### Tricky Case 6: Nouns That Look Singular But Are Plural

*"The police **are** investigating."* (no singular "a police")
*"The cattle **are** grazing."*
*"The people **are** protesting."*
*"The clergy **are** divided."*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Concord', $C$
## Worked Examples — Concord

### Example 1: Choose the Correct Verb

1. Each of the students _____ (has / have) submitted the assignment.
**Answer: has** ("each" is always singular)

2. The teacher, as well as the students, _____ (was / were) shocked by the result.
**Answer: was** ("as well as" does not create a plural subject; "teacher" governs the verb)

3. Either the principal or the class teachers _____ (is / are) responsible.
**Answer: are** (nearest noun = "teachers" — plural)

4. Neither of the candidates _____ (is / are) qualified.
**Answer: is** ("neither" is always singular)

5. A number of complaints _____ (has / have) been received.
**Answer: have** ("a number of" takes plural verb)

6. The committee _____ (is / are) holding its annual meeting today.
**Answer: is** (committee acting as a unit)

7. One of the students who _____ (was / were) absent has failed.
**Answer: were** (relative clause refers to "students" — plural)

---

### Example 2: Identify and Correct Concord Errors

1. *"The quality of the products are very poor."*
**Error:** are → **is** (subject = "quality")

2. *"Neither the students nor the teacher have been informed."*
**Error:** have → **has** (nearest noun = "teacher" — singular)

3. *"Every one of the boys were given a prize."*
**Error:** were → **was** ("every one" is singular)

4. *"The news are very disturbing."*
**Error:** are → **is** ("news" is uncountable, always singular)

5. *"She is one of those teachers who is always prepared."*
**Error:** is → **are** (relative clause refers to "teachers")
$C$, 'examples', 4),

(tid, 'Practice: Concord and Agreement', $C$
## Practice Questions — Concord and Agreement

### Section A: Choose the Correct Option

1. The manager, together with his assistants, _____ (is / are) attending the conference.
2. Not only the students but also the teacher _____ (was / were) tested.
3. None of the plans _____ (is / are) acceptable.
4. The number of applicants this year _____ (has / have) increased significantly.
5. Each of the three candidates _____ (is / are) qualified.
6. Physics _____ (is / are) my favourite subject.
7. There _____ (was / were) many reasons for his decision.
8. She is one of the teachers who _____ (is / are) always inspiring.
9. Two weeks _____ (is / are) not enough time to prepare.
10. The family _____ (is / are) very supportive of each other's individual decisions.

**Answers:** 1-is, 2-was, 3-is (formal) / are (acceptable), 4-has, 5-is, 6-is, 7-were, 8-are, 9-is, 10-are (acting as individuals)

---

### Section B: Error Correction

Identify and correct the concord error in each sentence.

1. The committee have made its final decision.
2. Neither of the answers are correct.
3. A number of students has failed the supplementary examination.
4. The principal along with the teachers were present at the assembly.
5. Every student in all the classes are expected to participate.
6. The police is investigating the matter.
7. More than one teacher have resigned this term.

**Answers:**
1. have → **has** (or alternatively, if treating as individual members, both are arguable — but in this context "its decision" signals unit, so use "has")
2. are → **is** ("neither" takes singular)
3. has → **have** ("a number of" takes plural)
4. were → **was** ("along with" — verb agrees with "principal")
5. are → **is** ("every" takes singular)
6. is → **are** ("police" is always plural)
7. have → **has** ("more than one" takes singular)
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 20: SPEECH WRITING AND PRESENTATIONS
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Speech Writing and Presentations';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Speech Writing', $C$
## Overview: Speech Writing and Presentations

A **speech** is a piece of writing composed for oral delivery to a specific audience on a specific occasion. Speech writing is tested in WASSCE as a directed writing task because it has specific conventions that differ from essay writing.

### Types of Speeches in WASSCE

| Type | Occasion | Tone |
|------|---------|------|
| **Ceremonial speech** | Prize-giving, graduation, welcome | Formal, celebratory |
| **Persuasive speech** | Debate, campaign, awareness | Persuasive, energetic |
| **Informative speech** | Assembly talk, lecture | Clear, informative |
| **After-dinner speech** | Celebration, end of event | Warm, sometimes humorous |
| **Valedictory speech** | Leaving school/job | Reflective, grateful |
| **Keynote address** | Conference, launch event | Authoritative, inspiring |

### Key Difference: Speech vs. Essay

| Feature | Speech | Essay |
|---------|--------|-------|
| **Audience** | Listeners — they cannot re-read | Readers — can revisit text |
| **Style** | Conversational but formal | Formal throughout |
| **Opening** | Address the audience | Hook the reader |
| **Repetition** | Used deliberately for impact | Generally avoided |
| **Signposting** | "I have three points to make..." | Less necessary |
| **Closing** | Thank the audience | Formal conclusion |
$C$, 'overview', 1),

(tid, 'Format and Conventions of Speech Writing', $C$
## Speech Writing Conventions

### Standard Speech Format

**1. Salutation / Address**
Begin by addressing ALL key groups present, in order of seniority.

*"The Honourable Minister of Education, the Distinguished Guests, the Respected Principal, Teachers and Staff, Parents and Guardians, and my Fellow Students — Good morning."*

In a school debate:
*"Mr./Madam Chairman, Honourable Panel of Judges, Timekeeper, Fellow Students, Respected Opponents, and Distinguished Members of this House — Good morning."*

**2. Introduction**
- State who you are (if not obvious)
- State the topic or occasion
- Create immediate interest or establish your authority

*"I am the Senior Prefect of this institution, and I stand before you today not merely to mark the end of another academic year, but to speak honestly about what this year has taught us."*

**3. Body (Main Content)**
- Clearly structured points (usually 3-5)
- Use signposting: "My first point...", "Furthermore...", "Turning now to...", "Finally..."
- Use rhetorical devices for effect: repetition, rhetorical questions, anaphora
- Include stories, examples, or data to support points

**4. Conclusion**
- Summarise key message
- End with a memorable statement, call to action, or quotation
- Thank the audience

*"As I conclude, I leave you with these words of the great Kwame Nkrumah: 'We face neither East nor West; we face forward.' Ghana, let us face forward together. Thank you for your kind attention."*

---

### Language Features of Effective Speeches

| Feature | Example |
|---------|---------|
| **Direct address** | "You, sitting here today..." |
| **Inclusive pronoun** | "We must all take responsibility..." |
| **Rhetorical questions** | "Can we afford to ignore this?" |
| **Rule of three** | "We came, we saw, we conquered." |
| **Anaphora** | "Today we say no. Today we stand up. Today we claim our future." |
| **Short, punchy sentences** | "This must end. Now." |
| **Emotive language** | "The suffering of our children is unconscionable." |
| **Quotations** | Relevant quote from respected figure |
| **Personal story** | Brief anecdote to humanise the speech |
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Writing for a Listening Audience', $C$
## Writing a Speech That Works When Spoken

### Key Principles

**Principle 1: Write for the Ear, Not the Eye**

Listeners cannot pause, rewind, or re-read. Therefore:
- Repeat key ideas in different words
- Use shorter sentences than you would in an essay
- Structure your points clearly and number them aloud: "My first argument is..."
- Avoid dense academic language that is difficult to follow when spoken

**Principle 2: Use Signposting**

Guide your audience through the speech explicitly:
- "Let me begin by..."
- "This brings me to my second point..."
- "Having considered the problem, let us now turn to solutions..."
- "In conclusion..."
- "Before I close, let me share one final thought..."

**Principle 3: Vary Your Rhetorical Pace**

Alternate between:
- Emotional appeal and logical argument
- Fast-paced urgency and slower, reflective passages
- Personal story and broader social commentary

**Principle 4: Build to a Climax**

The most powerful moment should be near the end. Save your strongest argument, most moving example, or most memorable phrase for the final section before your conclusion.

---

### Adapting Language to Audience

**To student peers:**
More informal within the formal structure; use relatable examples; some humour is appropriate.

**To parents and teachers:**
Respectful, formal; show that you understand the adult world; avoid being condescending.

**To the public/nation:**
Authoritative, inclusive ("we, our nation"); reference national values and shared aspirations.

**To an examining panel (debate):**
Extremely formal; use precise argumentation; avoid personal anecdotes unless very relevant.
$C$, 'explanation', 3),

(tid, 'Worked Examples: Model Speeches', $C$
## Worked Examples — Speech Writing

### Example 1: Valedictory Address (School Leaving)

*"Distinguished members of the Board of Governors, our esteemed Principal, dedicated teachers, proud parents, and my beloved Class of 2024 — good afternoon.*

*It falls to me today to speak on behalf of this graduating class — a class that has been tested by challenges we did not ask for and lessons we did not expect. We came to this school as children. We leave as something more — as people who have been asked to think, to question, to grow, and occasionally to fail, and to learn that failure is not the end of a story but the beginning of a better one.*

*Three things have shaped us here above all others. First, the belief — driven into us by every teacher who stayed late and graded papers on weekends — that mediocrity is a choice, and excellence is too. Second, the friendships that have been forged in shared examination halls and shared anxieties — bonds that, I am certain, will outlast every certificate we carry out of here today. And third, the understanding that what we do with what we have been given here is not merely for ourselves, but for the families who sacrificed, the communities that invested, and the nation that waits.*

*We are ready. Ghana is waiting. And we have a great deal to offer.*

*On behalf of the graduating class of 2024, I thank this institution, its staff, and our families for everything. We will not waste it.*

*Thank you."*

---

### Examiner's Commentary

- ✓ Correct and full salutation (all groups addressed in order of seniority)
- ✓ Personal and warm tone appropriate for valedictory speech
- ✓ Clear three-point structure ("First... Second... Third...")
- ✓ Rhetorical devices: rule of three; direct address; inclusive pronoun "we"
- ✓ Conclusion builds to a climax and thanks the audience
- ✓ Formal register maintained throughout
$C$, 'examples', 4),

(tid, 'Practice: Speech Writing', $C$
## Practice Questions — Speech Writing

### Question 1 — School Assembly Speech

Write a speech to be delivered at your school's assembly on the topic: *"The Dangers of Examination Malpractice."*

**Before you write:**
- Who is the audience? (students, possibly teachers)
- What is the occasion? (school assembly)
- What is your purpose? (inform and warn; inspire integrity)
- What three main points will you make?
- How will you open dramatically?
- What memorable statement will you end with?

**Required elements:**
- Full salutation
- Engaging introduction
- Three developed body points
- Rhetorical devices (at least two)
- Memorable conclusion
- Thanking the audience

---

### Question 2 — Debate Speech

Write either the proposition or opposition speech for the debate:
*"This house believes that technology does more harm than good in education."*

**Required elements:**
- Formal debate salutation (Chairman, Panel, etc.)
- Clear statement of position
- Three arguments (each with evidence)
- Acknowledgment and rebuttal of opposing view
- Powerful closing call to vote

---

### Question 3 — Prize-Giving Day Speech

You have been invited to deliver the keynote address at your school's prize-giving ceremony. The theme is: *"Excellence is a Habit, Not a Gift."*

Write the speech you would deliver.

---

### Self-Assessment Checklist

- [ ] Full salutation (all groups in order of seniority)
- [ ] Opening creates immediate interest
- [ ] Body has 3+ clearly structured points
- [ ] Signposting used throughout ("First...", "Furthermore...", "In conclusion...")
- [ ] At least two rhetorical devices used
- [ ] Tone appropriate for the occasion and audience
- [ ] Conclusion is memorable and builds to a climax
- [ ] Audience is thanked at the end
- [ ] Formal register maintained (no contractions, no slang)
$C$, 'practice', 5);

END $$;
