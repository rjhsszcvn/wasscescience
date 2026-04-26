/*
  # English Language Notes: Topics 6-10
  
  Adds comprehensive notes for:
  6. Summary Writing
  7. Figures of Speech and Literary Devices
  8. Punctuation and Spelling
  9. Register and Varieties of English
  10. Directed Writing
*/

DO $$
DECLARE
  tid UUID;
BEGIN

-- ============================================================
-- TOPIC 6: SUMMARY WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Summary Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: What is Summary Writing?', $C$
## What is Summary Writing?

A **summary** is a condensed version of a longer text that captures only the main ideas, presented in your own words. Summary writing is tested in WASSCE because it demonstrates:
- Your ability to distinguish main points from supporting details
- Your paraphrasing skill (using your own vocabulary)
- Your ability to write concisely and accurately

### Summary Writing in WASSCE

The WASSCE summary question typically:
- Provides a passage of 250-400 words
- Asks you to summarise specific content (often: "advantages," "problems," "arguments for," etc.)
- Sets a word limit (usually 80-120 words)
- Requires you to state your word count at the end

### What Examiners Reward

| Criterion | Description | Marks |
|-----------|-------------|-------|
| **Content** | Correct identification of relevant points | 10 |
| **Expression** | Fluency, paraphrasing, coherence | 5 |
| **Word count** | Within the stipulated limit | Penalty for exceeding |

Examiners award marks for each valid point identified. Typically 5-8 points are expected, each worth 1-2 marks.
$C$, 'overview', 1),

(tid, 'Definitions and Key Rules of Summary Writing', $C$
## Rules and Key Concepts in Summary Writing

### Rule 1: Use Your Own Words

The most fundamental rule — do NOT copy sentences from the passage. Examiners are trained to identify lifted sentences and award zero marks for them.

**Original:** *"The proliferation of digital devices in classrooms has generated unprecedented pedagogical challenges for educators who must now compete with the seductive pull of social media for their students' attention."*

**Copied (0 marks for this point):** *"The proliferation of digital devices in classrooms has generated unprecedented pedagogical challenges."*

**Paraphrased (full marks):** *Digital technology in schools has made it harder for teachers to keep students focused.*

### Rule 2: Include Only What Is Asked

If the question asks for "reasons why students fail," do not include solutions or consequences. Read the task precisely.

### Rule 3: Do Not Include Your Own Opinion

A summary is objective. Never add "I think," "In my opinion," or information not in the passage.

### Rule 4: Use Connective Language

Link your points with appropriate connectors:
- *Furthermore, Additionally, Moreover* — adding points
- *However, Nevertheless* — contrasting
- *As a result, Consequently* — showing effect
- *For instance, Specifically* — giving examples (from the text)

### Rule 5: Check and State Your Word Count

At the end of your summary, write: **"Word count: [X]"**

If you exceed the word limit, marks are deducted. If you fall significantly short, you have probably missed key points.

### Types of Summary Questions

| Type | Instructions Look Like |
|------|----------------------|
| Point-and-explain | "State FIVE reasons why..." |
| Continuous prose | "In not more than 100 words, summarise..." |
| Two-part | "Outline the advantages AND disadvantages..." |
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Step-by-Step Summary Method', $C$
## Step-by-Step Method for Summary Writing

### Step 1: Read the Question First
Know exactly what you are summarising BEFORE reading the passage. Underline key words in the question.

**Example question:** *"In about 100 words, summarise the writer's arguments against the use of corporal punishment in schools."*

Key focus: **arguments against corporal punishment** — not causes, not alternatives, only arguments against.

### Step 2: Read the Passage — Underline Relevant Points
Read through once for general understanding. Then re-read, underlining ONLY what is relevant to your question. Number each point you underline (1, 2, 3...).

### Step 3: List Your Points in Draft Form

Before writing the final summary, list your points briefly:
1. Corporal punishment causes psychological trauma
2. It destroys the teacher-student relationship
3. It teaches children that violence is acceptable
4. It has been banned by child rights conventions
5. It does not address the root cause of misbehaviour

### Step 4: Write in Continuous Prose

Do NOT write a bullet-point list (unless specifically asked). Write in flowing paragraphs using your own words.

**Draft:** *The writer argues against corporal punishment in schools for several compelling reasons. First, physical punishment inflicts lasting psychological damage on children, stunting their emotional development. Furthermore, it creates an atmosphere of fear that undermines healthy teacher-student relationships. The writer also contends that beatings communicate the wrong message — that physical force is an appropriate response to conflict. Additionally, international child rights conventions expressly prohibit such practices. Finally, punishment that causes pain fails to address the underlying reasons for a student's misbehaviour.* [Word count: 93]

### Step 5: Review and Count

- Recount your words carefully
- Check for copied phrases — replace them
- Ensure your summary is coherent, not just a list of disconnected sentences
- Verify you have not included irrelevant information

### Common Summary Mistakes

| Mistake | Solution |
|---------|---------|
| Copying sentences from the passage | Always paraphrase |
| Including irrelevant points | Re-read the question; focus strictly on what is asked |
| Listing points without linking | Use transition words |
| Ignoring the word limit | Count carefully; edit ruthlessly |
| Including personal opinion | Stick to what the passage says |
| Writing point form instead of prose | Write in paragraphs |
$C$, 'explanation', 3),

(tid, 'Worked Example: Full Summary Question and Answer', $C$
## Worked Example — Complete Summary

### Passage

*The debate over whether students should wear school uniforms has persisted for decades, with passionate advocates on both sides. Proponents argue that uniforms create a sense of belonging and school identity, reducing the visible socioeconomic disparities that can marginalise poorer students. When all students dress alike, the pressure to wear expensive designer clothing diminishes, potentially allowing families with limited means to participate more equitably in school culture.*

*Beyond socioeconomic equality, advocates insist that uniforms improve discipline and create a focused learning environment. The logic is straightforward: dressing professionally encourages professional behaviour. Many schools that have adopted mandatory uniforms report improvements in attendance and reductions in instances of bullying related to appearance.*

*However, critics counter that uniforms suppress individual expression, which is a fundamental aspect of adolescent identity formation. Forcing teenagers into identical clothing stifles their creativity and autonomy at precisely the developmental stage when they are discovering who they are. Moreover, the cost of purchasing specific uniforms can itself be a financial burden for low-income families, particularly when uniforms from approved suppliers are expensive.*

*There is also the question of whether uniforms actually improve academic outcomes. The evidence, critics note, is inconclusive — many studies show no significant correlation between uniform policies and student achievement. Ultimately, they argue, school culture, quality of teaching, and the home environment are far more powerful determinants of student success than what students wear.*

---

### Question

*In not more than 100 words, summarise the arguments AGAINST school uniforms presented in the passage.*

---

### Model Answer

Opponents of school uniforms raise several persuasive objections. They argue that mandatory uniforms restrict individual expression, which is particularly damaging during adolescence — a period when young people need freedom to develop their identities. Critics also challenge the assumption that uniforms reduce financial pressure; in reality, purchasing specific uniform items from approved suppliers can be costly for struggling families. Furthermore, opponents question whether uniforms produce any measurable improvement in academic performance, pointing to evidence that the results are inconclusive. They maintain that better teaching, positive school culture, and supportive home environments matter far more than students' clothing.

**Word count: 97**

### Examiner's Commentary
- ✓ Uses own words throughout (no copying)
- ✓ Focuses strictly on arguments AGAINST (not arguments FOR)
- ✓ All four main counter-arguments addressed
- ✓ Written in fluent, connected prose
- ✓ Within word limit
$C$, 'examples', 4),

(tid, 'Practice Summary Questions', $C$
## Practice Summary Questions

### Practice 1

*Mobile technology has transformed modern healthcare in developing countries in ways that would have seemed impossible a generation ago. Remote clinics in rural communities can now transmit patient data, X-ray images, and diagnostic results to specialist doctors in urban hospitals within seconds, enabling consultations that previously required days of travel. Community health workers armed with smartphones can access detailed drug interaction databases and treatment protocols, reducing prescription errors that once proved fatal in resource-limited settings.*

*Furthermore, mobile platforms now deliver maternal health reminders, childhood vaccination schedules, and malaria prevention information directly to millions of households previously beyond the reach of public health campaigns. The result has been measurable reductions in infant mortality, improved vaccination coverage, and more timely responses to disease outbreaks.*

*Despite these achievements, significant barriers persist. Unreliable electricity supply means many rural health workers cannot charge their devices consistently. Mobile network coverage remains patchy in mountainous and densely forested regions. There is also the challenge of digital literacy — health workers in their forties and fifties often struggle to adapt to rapidly evolving applications.*

---

**Question:** In not more than 80 words, summarise the **problems** facing mobile healthcare technology in developing countries as described in the passage.

**Your task:**
1. Identify the relevant points (problems only)
2. Paraphrase each point
3. Write as continuous prose
4. Count and state words

---

### Practice 2

Read any newspaper editorial and:
1. Identify the main argument
2. List the sub-arguments (3-5 points)
3. Write a 100-word summary of the editorial's main contentions

This practice builds the most transferable summary skill: identifying the author's hierarchy of ideas.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 7: FIGURES OF SPEECH AND LITERARY DEVICES
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Figures of Speech and Literary Devices';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Why Figures of Speech Matter', $C$
## Overview: Figures of Speech

**Figures of speech** are literary devices that use language in creative, non-literal ways to achieve specific effects. They are the building blocks of powerful writing and are tested in WASSCE in:
- Comprehension questions ("identify the figure of speech in line X")
- Essay writing (using them to earn expression marks)
- Literature in English (analysing their effects in poems and prose)

### The Two Main Categories

**Figures of speech based on comparison:**
Simile, Metaphor, Analogy, Personification

**Figures of speech based on sound:**
Alliteration, Assonance, Onomatopoeia, Rhyme

**Figures of speech based on meaning:**
Irony, Sarcasm, Hyperbole, Litotes (understatement), Euphemism

**Figures of speech based on structure:**
Repetition, Anaphora, Antithesis, Oxymoron, Paradox

**Figures of speech based on word play:**
Pun, Apostrophe, Rhetorical question

### Why They Matter in WASSCE

Identification questions are worth 2-3 marks each. Being able to:
1. Name the device correctly
2. Explain its meaning in context
3. Comment on its effect on the reader

...is worth significant marks in both comprehension and literature papers.
$C$, 'overview', 1),

(tid, 'Complete Definitions of All Major Figures of Speech', $C$
## Complete Classification — Figures of Speech

### Comparison Devices

**Simile**
A direct comparison using "like" or "as."
*"She fought like a lion."* / *"His smile was as bright as the morning sun."*
**Effect:** Creates vivid imagery; helps readers visualise abstract qualities

**Metaphor**
A comparison WITHOUT "like" or "as" — states that one thing IS another.
*"Life is a journey."* / *"He is a wolf in sheep's clothing."*
**Effect:** More powerful than simile; asserts identity rather than resemblance

**Extended Metaphor**
A metaphor developed over several lines or sentences.

**Personification**
Giving human qualities to non-human things.
*"The wind whispered through the trees."* / *"Opportunity knocked at his door."*
**Effect:** Makes abstract ideas or natural phenomena relatable and vivid

**Apostrophe**
Directly addressing something absent, dead, or non-human.
*"O Death, where is thy sting?"* / *"Oh, Memory, thou cruel mistress!"*
**Effect:** Creates emotional intensity and dramatic appeal

---

### Sound Devices

**Alliteration**
Repetition of the same CONSONANT SOUND at the beginning of nearby words.
*"Peter Piper picked a peck of pickled peppers."*
*"The fair breeze blew, the white foam flew."* (Coleridge)
**Effect:** Creates rhythm, musicality; draws attention to key words

**Assonance**
Repetition of VOWEL SOUNDS within nearby words.
*"The rain in Spain stays mainly in the plain."* (/eɪ/ repeated)
**Effect:** Creates internal rhyme and musical quality

**Onomatopoeia**
Words that imitate the sounds they describe.
*buzz, hiss, crash, murmur, clang, splash, sizzle, roar, whisper*
**Effect:** Creates sensory immediacy — the reader hears the action

**Consonance**
Repetition of consonant sounds at the END or middle of words.
*"The last leaf"* / *"Mike likes his bike"* (/k/ sound repeated)

---

### Meaning Devices

**Irony**
When words convey the OPPOSITE of their literal meaning.
*"What a lovely day!"* (said during a thunderstorm)
**Effect:** Creates humour, bitterness, or critical commentary

**Dramatic Irony**
When the audience knows something the character does not.
Common in drama and fiction.

**Sarcasm**
Harsh or cutting irony, intended to wound.
*"Well, you've really proven yourself a genius, haven't you?"*

**Hyperbole**
Deliberate extreme exaggeration for emphasis.
*"I've told you a thousand times."* / *"She cried an ocean of tears."*
**Effect:** Emphasises intensity of feeling; creates comic or dramatic effect

**Litotes (Understatement)**
Deliberate understatement, often using a negative.
*"Not bad at all"* (meaning excellent) / *"It was no small achievement."*
**Effect:** Creates irony; modesty; can emphasise through contrast

**Euphemism**
A mild or indirect expression substituted for a harsh one.
*"Passed away"* (instead of "died") / *"Economically disadvantaged"* (instead of "poor")
**Effect:** Softens harsh realities; can also be used critically to show avoidance

---

### Structure Devices

**Repetition**
The deliberate use of the same word or phrase for emphasis.
*"We shall fight on the beaches, we shall fight on the landing grounds, we shall fight in the fields..."* (Churchill)
**Effect:** Creates rhythm, emphasis, and emotional power

**Anaphora**
Repetition of words at the BEGINNING of successive clauses.
*"I have a dream...I have a dream...I have a dream..."* (Martin Luther King Jr.)
**Effect:** Creates crescendo of emotion; extremely powerful in speeches

**Antithesis**
Placing contrasting ideas in parallel structure.
*"To err is human; to forgive is divine."*
*"One small step for man, one giant leap for mankind."*
**Effect:** Highlights contrast; creates memorable, balanced statements

**Oxymoron**
Two contradictory words placed together.
*"bittersweet"* / *"deafening silence"* / *"living death"* / *"sweet sorrow"*
**Effect:** Creates paradox; expresses complex emotions

**Paradox**
A statement that seems contradictory but reveals a deeper truth.
*"The more I learn, the less I know."*
*"War is peace; freedom is slavery."* (Orwell)
**Effect:** Provokes thought; reveals hidden truths

---

### Rhetorical Devices

**Rhetorical Question**
A question asked for effect, not expecting an answer.
*"How long must we suffer in silence?"* / *"Is this the justice we were promised?"*
**Effect:** Engages audience; emphasises a point dramatically

**Pun**
A play on words with similar sounds but different meanings.
*"Time flies like an arrow; fruit flies like a banana."*
**Effect:** Creates humour; draws attention to multiple meanings
$C$, 'definitions', 2),

(tid, 'Deep Explanation: How to Analyse Figures of Speech', $C$
## How to Analyse Figures of Speech (3-Step Method)

When asked to comment on a figure of speech in WASSCE, you must:
1. **Name** the device
2. **Explain** its meaning in context
3. **Comment** on its effect on the reader

**Never just name it and move on. Examiners reward analysis, not identification alone.**

---

### Worked Analysis Examples

**Sentence:** *"The city was a sleeping giant, breathing slowly under the orange glow of streetlights."*

**Question:** Identify and comment on the figure of speech used.

**Full answer:**
The writer uses **personification and metaphor**. The city is compared to "a sleeping giant" (metaphor — the city does not literally exist as a giant), and it is given the human action of "breathing" (personification). The effect is to convey the city's massive scale and power, while its state of "sleeping" creates an atmosphere of eerie calm and latent potential — as though the city could awaken at any moment.

---

**Sentence:** *"Her voice was honey poured over gravel."*

**Full answer:**
This is a **metaphor** — a comparison made without "like" or "as." The writer combines two contradictory images: honey (sweet, smooth) and gravel (rough, harsh). This **oxymoronic metaphor** creates a paradoxical image of a voice that is simultaneously pleasing and rough, suggesting a quality that is both attractive and unexpectedly raw. It is more powerful than a simple "sweet voice" because it captures the distinctive, complex nature of the sound.

---

### Simile vs. Metaphor — How to Distinguish

| Feature | Simile | Metaphor |
|---------|--------|----------|
| Uses "like" or "as" | Yes | No |
| States similarity | Yes | States identity |
| Example | "as brave as a lion" | "He is a lion" |
| Effect | Suggests resemblance | Asserts transformation |

---

### How to Identify Irony

Irony is tricky because it depends on context. Ask: *"Does what is said contradict what is meant or what is true?"*

**Verbal irony:** The speaker says the opposite of what they mean.
*"Oh great, another Monday."* (Speaker is not enthusiastic)

**Situational irony:** What happens is the opposite of what was expected.
*A fire station burns down.* (The protectors need protection)

**Dramatic irony:** The audience knows more than the character.
*The audience knows the murderer is in the house; the character does not.*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Identifying and Using Figures of Speech', $C$
## Worked Examples — Figures of Speech

### Example 1: Identify the Figure of Speech

Identify the figure of speech and explain its meaning in context.

1. *"The soldiers fell like leaves in autumn."*
**Simile.** The soldiers' deaths in large numbers are compared to autumn leaves falling from trees. The comparison emphasises the scale and inevitability of the loss, while the natural imagery creates a sense of tragic beauty.

2. *"The government has turned a blind eye to the suffering of the poor."*
**Metaphor.** "Turned a blind eye" means deliberately ignored. The image of physical blindness is transferred to the government's wilful failure to see or acknowledge hardship. It implies intentional negligence rather than ignorance.

3. *"Failure is simply the opportunity to begin again more intelligently."*
**Paradox.** The idea that failure could be an opportunity contradicts conventional understanding — failure is seen as negative, not positive. The statement provokes thought and reveals a deeper truth about learning from mistakes.

4. *"I have a thousand things to do today."*
**Hyperbole.** The speaker obviously does not have literally one thousand tasks. The exaggeration emphasises feeling overwhelmed, creating an emotional rather than mathematical impression.

5. *"The lonely tree stood sentinel at the edge of the cliff."*
**Personification.** "Stood sentinel" is a human military action (standing guard) attributed to a tree. This gives the tree a sense of purpose, duty, and solitary vigilance, enhancing the dramatic atmosphere of the scene.

---

### Example 2: Use of Figures of Speech in Your Own Writing

**Without figures of speech:**
"The examination hall was quiet. The students were nervous. They looked at their papers."

**With figures of speech:**
"The examination hall was a cathedral of silence — each student an island unto themselves, hearts drumming against their ribs as question papers lay before them like unsolved riddles of fate."

Analysis of improvements:
- "cathedral of silence" — metaphor for reverent, imposing quiet
- "each student an island" — metaphor for isolation
- "hearts drumming" — personification/metaphor for fear
- "unsolved riddles of fate" — metaphor for the uncertainty ahead
$C$, 'examples', 4),

(tid, 'Practice Questions: Figures of Speech', $C$
## Practice Questions — Figures of Speech

### Section A: Identify and Explain

For each sentence, name the figure of speech and explain its meaning and effect.

1. *"She was the eye of the storm — perfectly calm at the centre of all the chaos."*

2. *"Oh, so you think losing the company millions is an achievement, do you?"*

3. *"The old man's laughter was the creaking of a rusty gate."*

4. *"Stone walls do not a prison make, nor iron bars a cage."* (Richard Lovelace)

5. *"The news hit him like a freight train."*

6. *"The stars danced in the velvet sky."*

7. *"She is as cold as ice, as warm as a summer's breeze, as sharp as a sword."*

8. *"To be or not to be — that is the question."*

---

### Section B: Match the Device

Match each literary device with its correct definition.

| Device | Definition |
|--------|-----------|
| Litotes | Comparison WITHOUT "like" or "as" |
| Metaphor | Words that sound like what they describe |
| Euphemism | Mild word replacing a harsh one |
| Onomatopoeia | Understatement using a negative |
| Anaphora | Repetition at the start of successive clauses |

---

### Section C: Create Your Own

Write one sentence using each figure of speech:

1. A simile describing grief
2. A metaphor describing hope
3. Personification for the sun at dawn
4. Hyperbole expressing extreme hunger
5. An oxymoron describing a complicated feeling

**Sample Answers (Section A):**
1. Metaphor + personification — she is compared to the calm centre of a storm; implies composure under pressure.
2. Sarcasm — the bitter, cutting tone mocks someone for thinking failure is achievement.
3. Metaphor — the unpleasant sound of a rusty gate conveys the old man's laughter as grating, aged, unpleasant.
4. Paradox — a jail cell made of stone and iron can physically confine the body, yet the mind and spirit remain free; true imprisonment is mental.
5. Simile — violent, sudden impact of shocking news.
6. Personification — stars given the human action of dancing; suggests joyful, lively movement.
7. Antithesis — contradictory qualities presented in parallel; captures complexity of character.
8. Rhetorical question — no answer expected; forces contemplation of life's fundamental dilemma.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 8: PUNCTUATION AND SPELLING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Punctuation and Spelling';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Why Punctuation and Spelling Matter', $C$
## Overview: Punctuation and Spelling

**Punctuation** is the system of marks used to organise writing and clarify meaning. **Spelling** is the correct representation of words in their written form.

These two areas are examined directly in WASSCE and also affect marks across ALL written components — an essay with poor punctuation and misspellings loses significant expression marks.

### Why Punctuation Changes Meaning

Consider these sentences with different punctuation:

*"Woman, without her man, is nothing."* → Man is superior
*"Woman: without her, man is nothing."* → Woman is superior

The words are identical. The punctuation changes the entire meaning.

*"Let's eat grandma!"* → Cannibal invitation
*"Let's eat, grandma!"* → Dinner invitation

### The WASSCE Punctuation Question

You will typically be given an unpunctuated passage and asked to add correct punctuation. Marks are awarded for each correct mark used, and deducted for incorrect marks. The most tested marks are:
- Full stop, comma, apostrophe, inverted commas, colon, semicolon
$C$, 'overview', 1),

(tid, 'Definitions: All Punctuation Marks with Rules', $C$
## Complete Guide to Punctuation Marks

### 1. The Full Stop (.)

**Uses:**
- To end a declarative (statement) sentence: *She passed the examination.*
- To end an imperative sentence: *Close the door.*
- After abbreviations: *Dr., etc., e.g., i.e.* (though modern style often omits these)
- NOT used after a question mark or exclamation mark

### 2. The Comma (,)

**Uses:**
- To separate items in a list: *She bought apples, oranges, mangoes, and bananas.*
- To separate a non-essential (parenthetical) clause: *The teacher, who had been ill, returned to school.*
- After introductory phrases: *After the examination, the students celebrated.*
- Before a coordinating conjunction joining two independent clauses: *She studied hard, but she still failed.*
- After yes, no, oh at the start of a sentence: *Yes, I agree.*
- To separate direct address: *"I believe, Kofi, that you can succeed."*

**Do NOT use a comma:**
- To separate a subject from its verb
- Between two independent clauses without a conjunction (this is a "comma splice")

### 3. The Apostrophe (')

**Use 1 — Possession:**
- Singular noun: the student**'s** book, Ghana**'s** capital
- Plural noun ending in "s": the students**'** books, the teachers**'** lounge
- Plural noun NOT ending in "s": children**'s** toys, women**'s** rights

**Use 2 — Contraction:** (shortened words — avoid in formal writing)
- it**'**s = it is / it has (NOT possessive!)
- they**'**re = they are
- we**'**re = we are
- don**'**t = do not

**Frequent Error:** "its" (possessive) vs. "it's" (it is)
*The cat licked **its** paw.* / *It's (It is) a beautiful day.*

### 4. Inverted Commas / Quotation Marks (" ")

**Uses:**
- To mark direct speech: *She said, "I will return by noon."*
- To mark titles of short works (poems, articles): *"The Second Coming"*
- To indicate a word used in a special sense: *He is considered a "genius."*

**Punctuation inside or outside?**
In British English (used in Ghana/Nigeria), punctuation usually goes OUTSIDE the closing quotation mark unless it is part of the quoted text.

### 5. The Colon (:)

**Uses:**
- To introduce a list: *She needed three things: courage, patience, and faith.*
- To introduce an explanation or elaboration: *There was one problem: nobody had studied.*
- Between two independent clauses where the second explains the first: *She was absent: her mother had been hospitalised.*
- To introduce a quotation

### 6. The Semicolon (;)

**Uses:**
- To join two closely related independent clauses WITHOUT a conjunction: *She studied all night; she still failed the exam.*
- To separate items in a list where the items themselves contain commas: *The delegation included representatives from Accra, Ghana; Lagos, Nigeria; and Abidjan, Côte d'Ivoire.*

### 7. The Question Mark (?)

- After a direct question: *Where are you going?*
- NOT after an indirect question: *She asked where he was going.*

### 8. The Exclamation Mark (!)

- After exclamations: *What a wonderful performance!*
- After strong commands: *Stop!*
- Use sparingly — overuse diminishes effect

### 9. The Hyphen (-)

**Uses:**
- In compound adjectives before nouns: *a well-known author, a six-year-old child*
- In compound nouns: *mother-in-law, check-in*
- With prefixes: *ex-president, self-confidence*

### 10. The Dash (—)

**Uses:**
- To add emphasis or indicate a sudden break: *She finally saw the answer — it had been in front of her all along.*
- To set off a parenthetical comment: *The president — who had been abroad — returned yesterday.*
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Spelling Rules and Common Errors', $C$
## Spelling Rules and Common Errors

### Key Spelling Rules

**Rule 1: I before E, except after C**
*believe, achieve, receive, perceive, ceiling, receipt*
**Exceptions:** *weird, seize, height, either, neither, leisure, forfeit*

**Rule 2: Doubling the final consonant before a suffix**
Double when: the word ends in a single consonant, preceded by a single vowel, and the suffix begins with a vowel.
*run → running, sit → sitting, big → bigger*
Do NOT double with two vowels: *read → reading, sleep → sleeping*
Do NOT double with two consonants: *jump → jumping, help → helping*

**Rule 3: Drop the silent "e" before a vowel suffix**
*make → making, love → lovable, come → coming*
**Keep the "e" before a consonant suffix:** *love → lovely, safe → safely*

**Rule 4: Change Y to I before a suffix (when preceded by a consonant)**
*happy → happily, beauty → beautiful, carry → carried*
**Exception:** before -ing: *carry → carrying* (keep the Y)

---

### Commonly Misspelled Words in WASSCE

| Correct Spelling | Common Misspelling |
|-----------------|-------------------|
| necessary | neccesary, necesary |
| definitely | definitly, definately |
| separate | seperate |
| accommodation | accomodation |
| environment | enviroment |
| government | goverment |
| occurrence | occurence, occurance |
| immediately | immediatly |
| receive | recieve |
| believe | beleive |
| embarrass | embarass |
| achieve | acheive |
| rhythm | rythm |
| privilege | priviledge |
| disappear | dissappear |
| recommend | recomend |
| exaggerate | exagerate |
| committee | commitee |
| necessary | neccesary |
| conscientious | consciencious |

---

### British vs. American Spelling

WASSCE uses **British English** spelling:

| Concept | British (WASSCE) | American |
|---------|----------------|---------|
| -our words | colour, favour, honour | color, favor, honor |
| -ise/-ize | organise, recognise | organize, recognize |
| -re words | centre, theatre, litre | center, theater, liter |
| -ce/-se | defence, licence (noun) | defense, license |
| Double L | travelling, cancelled | traveling, canceled |

Always use British spelling in WASSCE.
$C$, 'explanation', 3),

(tid, 'Worked Examples: Punctuation and Spelling Exercises', $C$
## Worked Examples — Punctuation

### Example 1: Add Punctuation

**Unpunctuated text:**
*the principal addressing the students said you are the future leaders of this nation however your performance in last terms examination was deeply disappointing three students in this school were found cheating and five others failed all subjects I expect a dramatic improvement by the end of this term failure will not be tolerated*

**Correctly punctuated:**
*The principal, addressing the students, said, "You are the future leaders of this nation. However, your performance in last term's examination was deeply disappointing. Three students in this school were found cheating, and five others failed all subjects. I expect a dramatic improvement by the end of this term; failure will not be tolerated."*

**Marks analysis:**
- Capital T at start (1)
- Commas around "addressing the students" (2)
- Comma before opening speech (1)
- Opening quotation mark (1)
- Capital Y (1)
- Full stops after each sentence within speech (3)
- Apostrophe in "term's" (1)
- Comma before "and" (1)
- Semicolon before "failure" (1)
- Closing quotation mark (1)

---

### Example 2: Correct the Spelling

Find and correct the spelling errors:

1. *She was definately the most inteligent student in the class.*
**definately → definitely; inteligent → intelligent**

2. *The accomodation at the hotel was truely magnificient.*
**accomodation → accommodation; truely → truly; magnificient → magnificent**

3. *The commitee decided to seperate the two departments.*
**commitee → committee; seperate → separate**
$C$, 'examples', 4),

(tid, 'Practice Questions: Punctuation and Spelling', $C$
## Practice Questions — Punctuation and Spelling

### Section A: Punctuate the Passage

Add all necessary punctuation to the following passage:

*ama had not slept well the night before her interview she had rehearsed her answers so many times that the words had lost all meaning by the time the alarm rang at six oclock she was already dressed and sitting at the kitchen table turning her certificates over in her hands her mother entered and said dont be nervous you have worked hard for this ama smiled but inside her stomach felt like it was filled with stones she took a deep breath put on her shoes and walked out into the morning*

---

### Section B: Spelling Correction

Correct all spelling errors in the following paragraph:

*The goverment has recomended that all secondary school students recieve free textbooks as part of its education improvement programme. Critics argue that the policy, while well-intentioned, is unneccessary because many schools already have accomodation for library books. However, supporters beleive the measure will have an immediate and measurable efect on examination results accross the country.*

---

### Section C: Apostrophe Usage

Add apostrophes where needed:

1. The schools results improved dramatically last year.
2. Its raining but the players wont stop the match.
3. The childrens playground was renovated.
4. She is one of the teachers whose students always pass.
5. In two weeks time, the results will be announced.

**Answers (Section C):**
1. school**'**s results
2. **It'**s raining / player**s won't** stop
3. children**'**s playground
4. No apostrophe needed (whose = possessive relative pronoun)
5. two weeks**'** time
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 9: REGISTER AND VARIETIES OF ENGLISH
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Register and Varieties of English';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Register and Language Variation', $C$
## Overview: Register and Varieties of English

**Register** refers to the level of formality and the style of language appropriate for a particular situation, audience, and purpose. English is not a single, fixed language — it varies according to who is speaking, to whom, why, and where.

### Why Register Matters in WASSCE

The examination tests whether you can:
- Identify the register of a given passage
- Write in the appropriate register for a given task
- Recognise features that signal different registers
- Understand varieties of English (West African English, Standard English, Pidgin)

### The Register Spectrum

**Formal** ←————————————————————→ **Informal**

| Formal | Semi-Formal | Informal | Very Informal |
|--------|------------|---------|--------------|
| Legal documents | Business emails | Personal letters | Text messages |
| Academic essays | Report writing | Conversation with friends | Social media |
| Speeches | News articles | Friendly emails | Pidgin |

### The Key Variables in Register

1. **Field** — the subject matter (technical medical language vs. everyday talk about health)
2. **Tenor** — the relationship between writer and reader (boss to employee vs. friend to friend)
3. **Mode** — whether the communication is spoken or written
$C$, 'overview', 1),

(tid, 'Definitions: Features of Different Registers', $C$
## Features of Formal vs. Informal Register

### Formal English — Features

- **Full sentences** always used
- **No contractions:** "do not" not "don't"; "I am" not "I'm"
- **No colloquialisms or slang**
- **Complex sentence structures** with subordinate clauses
- **Precise, elevated vocabulary:** "commence" not "start"; "obtain" not "get"; "facilitate" not "help"
- **Third person or impersonal constructions:** "It is recommended that..." rather than "I think you should..."
- **Passive voice** frequently used: "The report was compiled by..."
- **No contractions of modal verbs:** "cannot" not "can't"

### Informal English — Features

- **Contractions:** "won't," "they're," "it's"
- **Colloquialisms:** "hang out," "cool," "stuff"
- **Phrasal verbs:** "get away with," "look into," "show up"
- **Ellipsis:** "Coming tomorrow?" (dropping "Are you")
- **Short, simple sentences**
- **First person:** "I think," "I feel," "I believe"
- **Emotive language:** "I was absolutely gutted"

### Semi-Formal English

Used in news articles, business communication, formal reports — formal structure but accessible vocabulary.

---

### Varieties of English

**Standard British English:** The prestige variety used in international communication, examined in WASSCE.

**West African English:** English as spoken across West Africa. Features include:
- Calques from local languages: "He should go and come" (return quickly)
- Reduplication: "small small" (gradually), "now now" (immediately)
- Different idiomatic expressions

**Nigerian/Ghanaian Pidgin English:** A contact language with simplified grammar:
- "I no sabi" (I don't know)
- "E don do" (It is finished)
- "How de body?" (How are you?)
Pidgin has its own grammar rules and is NOT simply "bad English."

### Technical Registers (Field-Specific Language)

Different professions use specialised vocabulary:

**Legal register:** plaintiff, defendant, affidavit, subpoena, tort, injunction
**Medical register:** diagnosis, prognosis, symptom, prescription, biopsy
**Academic register:** hypothesis, methodology, literature review, empirical data
**Religious register:** congregation, sermon, benediction, liturgy, sanctification
$C$, 'definitions', 2),

(tid, 'Deep Explanation: Matching Register to Context', $C$
## Choosing the Right Register

### How to Identify the Required Register

Ask four questions:
1. **Who am I writing to?** (Friend? Teacher? The public? A formal body?)
2. **What is my purpose?** (Persuade? Inform? Entertain? Apply for something?)
3. **What is the format?** (Letter? Essay? Report? Speech?)
4. **What is the context?** (School? Work? Personal? Legal?)

### Register Transformation

A key WASSCE skill is **rewriting the same information in a different register**.

**Informal version:**
*"Hey! The school trip got cancelled cos the bus broke down. So bummed out about it! We were all super excited. They're gonna try and reschedule but who knows when lol."*

**Formal version:**
*"We wish to inform parents that the school excursion scheduled for this Friday has been postponed due to a mechanical fault with the transport vehicle. The school administration deeply regrets any inconvenience caused. A revised date will be communicated as soon as one is confirmed."*

**Analysis of changes:**
- "Hey!" → Formal salutation removed
- "got cancelled" → "has been postponed"
- "cos" → "due to"
- "So bummed out" → "deeply regrets"
- "super excited" → removed (not relevant in formal notice)
- "lol" → removed entirely
- Active voice → Passive voice ("the school administration...regrets")
- Short informal sentences → Formal, complete sentences

---

### The Language of Different Text Types

**Job application letter:**
*"I write with great interest to apply for the position of..."*

**Complaint letter:**
*"I am writing to express my dissatisfaction with..."*

**Friendly letter:**
*"I hope this letter finds you well. It has been ages since we last spoke..."*

**Academic essay:**
*"This paper seeks to examine the correlation between..."*

**Newspaper report:**
*"Police have confirmed that three suspects were arrested on Thursday in connection with..."*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Register Identification and Transformation', $C$
## Worked Examples — Register

### Example 1: Identify the Register

Read each extract and identify the register and text type.

**Extract A:**
*"Please be advised that your application for the aforementioned position has been received and is currently under review. Should you be shortlisted, you will be contacted no later than fourteen (14) working days from the date of this correspondence."*

**Register:** Formal / Official
**Text type:** Business/HR letter
**Evidence:** "please be advised," "aforementioned," "under review," "shortlisted," no contractions, numerical dates written formally.

---

**Extract B:**
*"So basically, what happened was I rocked up to the exam hall like twenty minutes late and the invigilator was giving me major side-eye but honestly I couldn't care less — I'd revised for that paper all week."*

**Register:** Informal / Colloquial
**Text type:** Spoken narrative / Personal account
**Evidence:** "basically," "rocked up," "like" (as filler), "major side-eye" (slang), "honestly," "couldn't care less," contraction "I'd".

---

### Example 2: Transform the Register

Rewrite the following informal message as a formal letter:

**Informal message:**
*"Dear Sir/Madam, I wanna apply for the teaching job I saw on your website. I've taught English for 3 years and I'm pretty good at it. I attach my CV. Hit me up if you need more info. Cheers."*

**Formal version:**
*"Dear Sir/Madam,*

*I am writing to express my interest in the English Language teaching position advertised on your institution's website. I hold three years of experience in English Language instruction at the secondary school level and am confident in my ability to contribute effectively to your team.*

*Please find attached my curriculum vitae for your consideration. Should you require any additional information, I would be happy to provide it at your earliest convenience.*

*Yours faithfully,*
*[Name]"*
$C$, 'examples', 4),

(tid, 'Practice Questions: Register and Varieties of English', $C$
## Practice Questions — Register

### Section A: Identify the Register

For each passage, identify: (a) the register, (b) two features that indicate the register.

1. *"The findings of this study suggest a statistically significant correlation between parental educational attainment and student academic performance, confirming hypotheses advanced in prior empirical literature."*

2. *"Oi, you lot! Listen up! We're gonna have a quick meeting after school to sort out who's doing what for the project, yeah?"*

3. *"It is hereby ordained that any person found in contravention of the provisions of this Act shall be liable to a fine not exceeding five thousand Ghana cedis or to a term of imprisonment not exceeding six months, or both."*

---

### Section B: Register Transformation

Transform each text as instructed.

1. Rewrite the following formal notice as an informal note to a friend:
*"All students are hereby notified that the school library will be closed from Monday, 14th November to Friday, 18th November for annual inventory assessment. Students are encouraged to borrow required materials prior to the aforementioned period."*

2. Rewrite the following informal email as a formal letter to a company:
*"Hi there, I bought a blender from you guys last month and the motor's burnt out already. Pretty shocking for something that cost that much. I'd like a replacement asap please. Thanks."*

---

### Section C: Short Answer

1. What is the difference between "register" and "dialect"?
2. List FOUR features that distinguish formal from informal English.
3. Is Pidgin English a "corrupted" form of English? Explain your view.

**Sample Answer (Q3):**
No. Pidgin English is a legitimate contact language with its own phonological, grammatical, and lexical rules. It developed to facilitate communication between speakers of different languages and has become a primary language of daily communication for millions of West Africans. Calling it "corrupted" English reflects a colonial linguistic hierarchy that privileges one variety over others. It is more accurate to describe Pidgin as a distinct variety of English with different rules, not inferior ones.
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 10: DIRECTED WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Directed Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: What is Directed Writing?', $C$
## Overview: Directed Writing

**Directed writing** is a task in which you are given specific instructions about what to write, how to write it, who to write it to, and for what purpose. Unlike free essay writing, directed writing constrains the form, audience, and content.

### Forms Tested Under Directed Writing in WASSCE

| Form | Description |
|------|-------------|
| **Letter** | Formal or informal, with specific format requirements |
| **Report** | Factual account of events, findings, or recommendations |
| **Speech** | Written for delivery to a specific audience |
| **Article** | For a newspaper, magazine, or school publication |
| **Minutes of meeting** | Official record of proceedings |
| **Notice** | Short, official announcement |
| **Invitation** | Formal or informal invitation to an event |
| **Advertisement** | Promotional text for a product or event |

### Why Format Matters

In directed writing, **marks are awarded for using the correct format**. A beautifully written letter that is formatted as an essay will lose format marks. Always identify the required form and apply its conventions rigorously.

### What WASSCE Directed Writing Tests

1. **Format compliance** — Does the text look like the required form?
2. **Content relevance** — Does it address what was asked?
3. **Appropriate register** — Is the tone right for the audience and purpose?
4. **Language quality** — Is the expression clear and accurate?
$C$, 'overview', 1),

(tid, 'Definitions: Formats for All Major Directed Writing Forms', $C$
## Complete Formats — Directed Writing

### Formal Letter Format

```
[Your address — top right]
[Date — below your address]

[Recipient's name and title]
[Recipient's address — left aligned]

Dear [Title + Surname], / Dear Sir/Madam,

[Subject heading — optional but good practice, e.g., "Re: Application for...]

[Opening paragraph — state purpose]

[Body paragraphs — main content]

[Closing paragraph — action requested / conclusion]

Yours sincerely, [if you know the name]
Yours faithfully, [if you started with "Dear Sir/Madam"]

[Signature]
[Full name — printed]
```

### Informal Letter Format

```
[Your address — top right]
[Date]

Dear [First name],

[Opening — greeting and reference to previous contact]

[Body — conversational, personal]

[Closing — warm ending]

[Signature — first name only]
```

### Report Format

```
[Title: REPORT ON ___]
[Submitted by: Name]
[Submitted to: Recipient]
[Date:]

1.0 INTRODUCTION / BACKGROUND
[State the purpose and scope of the report]

2.0 FINDINGS / OBSERVATIONS
[Factual account — what was observed or investigated]

3.0 CONCLUSIONS
[Interpretations of findings]

4.0 RECOMMENDATIONS
[What should be done]

Signed: ___________
```

### Speech Format

```
[Salutation — address the audience]
"Distinguished guests, honourable chairman, teachers, and students..."

[Introduction — state your name and purpose]

[Body — clearly structured points]

[Conclusion — summarise and close with impact]

[Closing formula]
"Thank you for your kind attention."
```

### Newspaper/Magazine Article Format

```
[HEADLINE — in capitals or bold]
By [Author name]

[Opening paragraph — hook the reader; answer who, what, when, where]

[Body paragraphs — develop the story or argument]

[Conclusion — summarise or call to action]
```

### Notice Format

```
[NOTICE — in capitals, centred]
[Name of organisation or school]

[Body — brief, clear, official language]

[Signed by authority figure]
[Date]
```
$C$, 'definitions', 2),

(tid, 'Deep Explanation: How to Score Maximum Marks in Directed Writing', $C$
## Strategies for Maximum Marks in Directed Writing

### Step 1: Read the Instructions Three Times

The instructions tell you everything you need. Do not guess. Identify:
- **What type** of text (letter? report? speech?)
- **Who** you are writing as (yourself? a prefect? a parent?)
- **Who** you are writing to (the principal? a friend? the public?)
- **What** content is required (check if specific points are listed)

### Step 2: Plan Your Content

If the question gives you bullet points to include, treat each as a paragraph. If not, generate your own 3-5 main points.

### Step 3: Apply the Correct Format

Do not begin writing until you have mentally drawn the format. Letter openings, report headings, speech salutations — these earn marks before you write a single content sentence.

### Step 4: Match Your Register to the Audience

- Writing to a principal: **formal**
- Writing to a friend: **informal/friendly**
- Writing a newspaper article: **semi-formal/journalistic**
- Writing a speech: **formal but engaging**

### Common Directed Writing Mistakes

| Mistake | Solution |
|---------|---------|
| Wrong salutation (Dear Sir when name is given) | Use "Dear Mr. Mensah" if the name is known |
| No address or wrong placement | Always include and position correctly |
| Wrong closing formula ("Yours sincerely" with "Dear Sir/Madam") | "Yours faithfully" when name not known |
| Report written as an essay | Use numbered sections and headings |
| Inappropriate tone for the audience | Identify the relationship and adjust register |
| Ignoring content points in the question | Address every point listed |

### The Two-Closing Formulas Rule (Letters)

| Salutation | Closing |
|-----------|---------|
| Dear Sir / Dear Madam / Dear Sir or Madam | **Yours faithfully** |
| Dear Mr. Mensah / Dear Ama | **Yours sincerely** |
$C$, 'explanation', 3),

(tid, 'Worked Examples: Model Directed Writing Responses', $C$
## Worked Examples — Directed Writing

### Example 1: Formal Letter

**Question:** You are the Senior Prefect of your school. Write a letter to the District Education Directorate requesting sports equipment for your school. State the specific needs and explain how the equipment will benefit students.

**Model Answer:**

*Senior Prefect's Office*
*Achimota Senior High School*
*Achimota, Accra*
*12th March, 2024*

*The District Director of Education*
*Ga Central Municipal Education Directorate*
*Accra*

*Dear Sir,*

*RE: REQUEST FOR SPORTS EQUIPMENT FOR ACHIMOTA SENIOR HIGH SCHOOL*

*I write on behalf of the students and management of Achimota Senior High School to respectfully request the supply of sports equipment to our institution. Our school currently lacks adequate facilities to support physical education activities, and we believe a donation of equipment would significantly enhance the wellbeing and performance of our students.*

*Specifically, our Physical Education Department has identified the following priority needs: twenty footballs, eight volleyball nets and corresponding balls, four sets of athletics hurdles, and one hundred units of standard athletic vests for inter-school competitions.*

*The provision of this equipment would benefit our students in several important ways. It would enable regular structured training for the inter-district sports competition scheduled for June. Furthermore, it would improve students' physical health, discipline, and team spirit — qualities that complement academic excellence.*

*We assure you that all donated equipment would be maintained responsibly under the supervision of our Physical Education teachers and Student Sports Committee.*

*We would be honoured to receive the Directorate's support in this matter. I remain available to provide any additional information at your convenience.*

*Yours faithfully,*

*[Signature]*
*Kwame Asante*
*Senior Prefect, Achimota Senior High School*

---

### Example 2: Report (Brief Model)

**Question:** As Student Council President, write a report on poor sanitation conditions in your school for the headmaster.

*REPORT ON SANITATION CONDITIONS IN ASANTE HIGH SCHOOL*

*Submitted to: The Headmaster, Asante High School*
*Submitted by: The Student Council President*
*Date: 12th March, 2024*

*1.0 INTRODUCTION*
*This report was prepared following a school-wide sanitation inspection conducted by the Student Council on 5th March 2024. Its purpose is to document current conditions and recommend corrective measures.*

*2.0 FINDINGS*
*Inspection revealed three critical areas of concern. First, the female ablution block has four non-functional toilet facilities, forcing students to use overstrained facilities during school hours. Second, waste bins in classroom blocks are emptied only twice weekly, leading to overflow and odour. Third, the drainage channel behind the science block is blocked and accumulates stagnant water, posing a health risk.*

*3.0 RECOMMENDATIONS*
*The Student Council respectfully recommends that the four toilet facilities be repaired before the end of term, that waste collection be increased to daily, and that the blocked drainage channel be cleared immediately.*

*Submitted by: [Signature]*
*Abena Owusu, Student Council President*
$C$, 'examples', 4),

(tid, 'Practice Questions: Directed Writing', $C$
## Practice Questions — Directed Writing

### Question 1 — Formal Letter

You are a parent who attended your child's school's open day. Write a letter to the headmaster commending the school on three specific strengths you observed and suggesting two areas that could be improved.

**Checklist before writing:**
- [ ] Address (both yours and the school's)
- [ ] Correct date
- [ ] Appropriate salutation
- [ ] Subject heading
- [ ] Introduction (state purpose and context)
- [ ] Body (three strengths + two improvements)
- [ ] Polite, constructive closing
- [ ] Correct closing formula

---

### Question 2 — Report

As the Chairman of the School Environment Committee, write a report to your headmistress on the environmental conditions of your school compound, identifying THREE specific problems and suggesting appropriate solutions.

**Use this format:**
- Title
- Submitted to / Submitted by / Date
- Introduction
- Findings (numbered)
- Recommendations
- Signature

---

### Question 3 — Article

Write an article for your school magazine on the topic: *"Why Reading is the Foundation of All Learning."*

Remember:
- Headline (in capitals)
- Byline ("By [Your Name]")
- Engaging opening paragraph
- 3-4 body paragraphs
- Strong conclusion

---

### Question 4 — Speech

You have been invited to speak at an assembly on the importance of time management for examination candidates. Write the speech you would deliver.

Remember:
- Salutation (address all groups present)
- Introduce yourself and your topic
- 3-4 clear points with examples
- Motivational close
- "Thank you for your kind attention."
$C$, 'practice', 5);

END $$;
