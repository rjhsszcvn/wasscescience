/*
  # English Language Notes: Topics 11-15
  
  Formal Letter Writing, Report Writing, Narrative/Descriptive Writing,
  Argumentative/Debate Writing, Sentence Structure and Syntax
*/

DO $$
DECLARE
  tid UUID;
BEGIN

-- ============================================================
-- TOPIC 11: FORMAL LETTER WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Formal Letter Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Formal Letter Writing', $C$
## Overview: Formal Letter Writing

A **formal letter** is a professional, official piece of writing addressed to someone in authority or an institution. It differs from informal letters in its structure, tone, and vocabulary.

### When You Write Formal Letters

- Applying for a job, scholarship, or admission
- Complaining to a company or institution
- Making a request to an authority
- Responding to an official invitation
- Writing to a newspaper editor

### What WASSCE Tests

WASSCE may ask you to write a formal letter in either the essay section or the directed writing section. Marks are awarded for:
- **Format** (addresses, date, salutation, subject heading, closing formula)
- **Content** (relevant, well-organised information)
- **Register** (formal throughout — no contractions, no colloquialisms)
- **Expression** (clear, accurate English)
$C$, 'overview', 1),

(tid, 'Format, Structure, and Language of Formal Letters', $C$
## Complete Guide to Formal Letter Format

### The Seven Essential Components

**1. Your Address (top right)**
Write your own address — not your name — at the top right.
21 Kaneshie Road
North Kaneshie
Accra
Ghana

**2. The Date (below your address)**
Write in full: 12th March, 2024 OR March 12, 2024

**3. Recipient's Name and Address (left-aligned)**
The Principal
Achimota Senior High School
Achimota
Accra

**4. Salutation**
- If you know the name: Dear Mr. Mensah, / Dear Dr. Owusu,
- If you do not know: Dear Sir, / Dear Madam, / Dear Sir or Madam,

**5. Subject Heading (optional but excellent practice)**
Underline or bold it: **Re: Application for the Post of English Teacher**

**6. Body Paragraphs**
- Opening: State purpose clearly
- Middle: Develop main points in organised paragraphs
- Closing: State expected action and express willingness to provide more information

**7. Closing Formula + Signature**
- "Yours sincerely," (when you know the name)
- "Yours faithfully," (when you used "Dear Sir/Madam")
- Leave space for signature
- Print your full name below

### Formal Letter Language

| Formal Expression | Instead of |
|-------------------|-----------|
| I am writing to express... | I want to say... |
| I would like to draw your attention to... | I want to tell you about... |
| I would be grateful if you could... | Please... |
| I look forward to hearing from you | Talk to you soon |
| Please find enclosed/attached | Here is... |
| Further to our conversation | After we spoke... |
| I remain at your disposal | I'm available |
$C$, 'definitions', 2),

(tid, 'Types of Formal Letters and Their Conventions', $C$
## Types of Formal Letters

### 1. Letter of Application (Job)

**Opening:** State the position and where you saw it advertised.
**Body:** Educational qualifications, work experience, skills and attributes, why you want the position.
**Closing:** Request for interview; state attachments (CV, certificates).

**Key phrases:**
- "I write to apply for the position of..."
- "I hold a certificate in..."
- "I have X years of experience in..."
- "I am confident that my skills in... would be an asset to your organisation."
- "I have enclosed my curriculum vitae for your consideration."

### 2. Letter of Complaint

**Tone:** Professional but firm — not aggressive or emotional.
**Structure:**
- What you purchased/experienced and when
- What went wrong (specific details)
- What you want done (refund, replacement, apology)
- Deadline for response

**Key phrases:**
- "I am writing to express my dissatisfaction with..."
- "On [date], I purchased/visited/used..."
- "I was extremely disappointed to discover that..."
- "I would expect this matter to be resolved within fourteen days."

### 3. Letter of Request

**Structure:**
- Who you are and your relationship to the recipient
- What you are requesting and why
- How the request will be beneficial
- Polite close with expected response

### 4. Letter to a Newspaper Editor

**Address "The Editor" not a specific name.**
**Opening:** Reference to a recent article or current issue.
**Body:** Your views, with evidence and reasoning.
**Closing:** Restate your position; invite others to reflect.

**Format note:** These are often signed "Yours faithfully, [Name], [Location]"
$C$, 'explanation', 3),

(tid, 'Worked Examples: Model Formal Letters', $C$
## Worked Examples — Formal Letters

### Example: Letter of Application

*12 Aboabo Lane*
*Tamale*
*Northern Region*
*Ghana*
*15th April, 2024*

*The Human Resource Manager*
*Ghana Education Service*
*Tamale Regional Office*
*Tamale*

*Dear Sir/Madam,*

*RE: APPLICATION FOR THE POSITION OF ENGLISH LANGUAGE TEACHER*

*I write with great enthusiasm to apply for the position of English Language Teacher, as advertised in the Daily Graphic of Tuesday, 9th April 2024. I believe that my academic qualifications, teaching experience, and passion for language education make me a strong candidate for this role.*

*I hold a Bachelor of Education degree in English Language and Literature from the University of Education, Winneba, obtained in 2021 with Second Class Honours (Upper Division). Since graduation, I have served as a contract teacher at Tamale Technical Senior High School, where I have taught English Language to WASSCE candidates for three consecutive years. During this period, the school's English pass rate improved from 61% to 84%, an achievement in which I take considerable pride.*

*I am proficient in communicative language teaching approaches and have designed supplementary study materials used across five schools in the Tamale metropolitan area. I am equally comfortable teaching comprehension, essay writing, oral English, and literature.*

*I have attached my curriculum vitae, copies of my certificates, and two professional references for your review. I would welcome the opportunity to discuss my application further at an interview.*

*Yours faithfully,*

*[Signature]*
*Ibrahim Alhassan*
$C$, 'examples', 4),

(tid, 'Practice: Formal Letter Writing', $C$
## Practice Questions — Formal Letter Writing

### Question 1 — Scholarship Application

Write a formal letter to the Scholarship Secretariat applying for a government scholarship to study abroad. Include: your academic background, your proposed course of study, why you deserve the scholarship, and how you plan to use your education to benefit Ghana.

### Question 2 — Letter of Complaint

You purchased a mobile phone from a retailer three weeks ago. The phone has developed a fault that makes it impossible to charge. The retailer has refused to honour the warranty. Write a formal complaint letter to the Ghana Standards Authority.

### Question 3 — Letter to the Editor

Write a letter to the editor of a national newspaper expressing your view on the state of public libraries in Ghana and what the government should do to improve them.

### Self-Marking Checklist

After writing each letter, check:
- [ ] Your address is at the top right (not your name)
- [ ] Date is in full, below your address
- [ ] Recipient's address is on the left
- [ ] Correct salutation (Dear Sir/Madam or Dear Mr./Ms. + Name)
- [ ] Subject heading is present and underlined
- [ ] Opening paragraph states purpose clearly
- [ ] Each paragraph develops one main point
- [ ] No contractions in the body
- [ ] Closing paragraph invites response
- [ ] Correct closing formula (Yours faithfully/sincerely)
- [ ] Name printed below signature
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 12: REPORT WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Report Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Report Writing', $C$
## Overview: Report Writing

A **report** is a formal document that presents factual information, findings, and recommendations about a specific situation or investigation. Reports are written for a specific audience and purpose — they are not personal essays or arguments but objective, structured accounts.

### Types of Reports in WASSCE

- **Investigative report:** What happened and why (e.g., accident report)
- **Observational report:** What was seen during an inspection or event
- **Progress report:** How far a project or programme has advanced
- **Committee report:** The work and findings of a group

### Key Characteristics of Reports

| Feature | Description |
|---------|-------------|
| **Objective** | Facts, not personal opinions |
| **Structured** | Numbered sections with headings |
| **Formal** | Professional tone and language |
| **Specific** | Names, dates, facts, figures |
| **Action-oriented** | Ends with recommendations |
$C$, 'overview', 1),

(tid, 'Report Format and Language Conventions', $C$
## Report Format — Complete Guide

### Standard Report Structure

**TITLE:** (In capitals, centred)
REPORT ON THE OUTBREAK OF ILLNESS IN FORM 2 STUDENTS

**Submission details:**
Submitted to: The Principal, Accra High School
Submitted by: The School Health Committee
Date: 15th April, 2024

**1.0 INTRODUCTION / TERMS OF REFERENCE**
State who commissioned the report, what it investigates, and its scope.
*"This report was commissioned by the school principal following a series of reported illnesses among Form 2 students between 10th and 14th April 2024. It seeks to identify the cause, assess the impact, and recommend preventive measures."*

**2.0 METHODOLOGY (if relevant)**
How was information gathered? Interviews, observation, inspection, records review?

**3.0 FINDINGS / OBSERVATIONS**
Present facts clearly and objectively. Use numbered sub-sections.
*"3.1 It was observed that thirty-seven (37) students in Form 2 reported symptoms of nausea and diarrhoea between the dates in question."*
*"3.2 All affected students had consumed meals from the school canteen on Monday, 10th April."*
*"3.3 A laboratory analysis of food samples revealed the presence of Salmonella bacteria in the rice served."*

**4.0 CONCLUSIONS**
Interpret the findings. What do they mean?

**5.0 RECOMMENDATIONS**
What should be done? Be specific, practical, and numbered.
*"5.1 The canteen operator should be suspended pending investigation."*
*"5.2 All kitchen facilities should be professionally sanitised within 48 hours."*

**Signed:**
Name + Position

---

### Report Language Features

- **Passive voice:** "It was found that..." / "The inspection revealed..."
- **Past tense:** "Students reported..." / "Tests showed..."
- **Formal, impersonal:** Avoid "I think" — use "The evidence suggests"
- **Precise details:** Dates, numbers, names are important
- **Factual not emotional:** No exaggeration or personal feeling
$C$, 'definitions', 2),

(tid, 'Step-by-Step Report Writing Method', $C$
## How to Write a High-Scoring Report

### Before You Write

1. Identify: Who commissioned the report? Who will read it?
2. What specific question must the report answer?
3. What sections does this report need?

### Writing Each Section

**Introduction:** One paragraph. State what the report is about, why it was written, and what it covers.

**Findings:** This is the longest section. Present ALL relevant facts. Group related findings under sub-headings if necessary. Never mix findings with recommendations.

**Conclusions:** Short. What do the findings add up to? What is the main message?

**Recommendations:** Practical, numbered, specific. Begin each with a verb: "The committee recommends that..."

### Reporting Language

Instead of: "I think the canteen is dirty."
Write: "An inspection of the canteen facilities revealed significant hygiene deficiencies."

Instead of: "Many students were sick."
Write: "A total of thirty-seven students reported symptoms consistent with food poisoning."

Instead of: "We should close the canteen."
Write: "It is recommended that canteen operations be suspended immediately pending a health inspection."
$C$, 'explanation', 3),

(tid, 'Worked Example: Full Report', $C$
## Worked Example — Full Report

**REPORT ON THE VANDALISM OF SCHOOL PROPERTY IN BLOCK B**

Submitted to: The Headmaster, Kumasi Polytechnic Senior High School
Submitted by: The Disciplinary Committee
Date: 20th February, 2024

**1.0 INTRODUCTION**
This report was prepared at the request of the headmaster following reports of extensive damage to property in Block B classrooms during the February half-term break. The committee was tasked with establishing the extent of damage, identifying probable causes, and recommending appropriate action.

**2.0 FINDINGS**
2.1 An inspection of Block B conducted on 19th February 2024 revealed that fourteen (14) classroom chairs were broken, three (3) windows were shattered, and one whiteboard was defaced with permanent ink.

2.2 Security camera footage from 15th February shows three individuals entering Block B at approximately 9:45 PM through a broken window at the back of the building. Two individuals appeared to be in school uniform.

2.3 Interviews with the school night watchman confirmed that he was absent from his post between 9:00 PM and 11:00 PM on the night in question, citing illness.

2.4 The total estimated cost of repairs is GHC 4,500.

**3.0 CONCLUSIONS**
The evidence strongly suggests that the damage was perpetrated by students or former students who exploited a security lapse caused by the watchman's absence. The broken rear window, which had reportedly been faulty for several weeks, facilitated unauthorised entry.

**4.0 RECOMMENDATIONS**
The committee respectfully recommends that:
4.1 The faulty rear window be repaired immediately and all external entry points be regularly inspected.
4.2 An additional security officer be engaged to cover for the existing watchman during illness or absence.
4.3 The two uniformed individuals identified in the footage be traced and, if identified as current students, face appropriate disciplinary proceedings.
4.4 CCTV coverage be expanded to the rear of the building.

Signed: Mrs. A. Boateng, Chairperson, Disciplinary Committee
$C$, 'examples', 4),

(tid, 'Practice: Report Writing', $C$
## Practice Questions — Report Writing

### Question 1

As the president of your school's Environmental Club, write a report to the headmistress on a clean-up exercise carried out in the school and its surroundings. The report should cover: what was done, how many students participated, what challenges were faced, and what you recommend to maintain cleanliness.

### Question 2

You are the captain of the school's football team. Write a report to the Sports Director on your team's performance in the inter-school competition, identifying strengths, weaknesses, and recommendations for future competitions.

### Question 3

Write a report for the School Council on the results of a survey conducted among 100 students about their preferred teaching methods. Use the following invented data:
- 45% preferred group discussions
- 30% preferred lecture-based teaching
- 15% preferred online resources
- 10% had no preference

### Format Self-Check
- [ ] Title in capitals and centred
- [ ] Submitted to / Submitted by / Date present
- [ ] Numbered sections with headings
- [ ] Passive and impersonal language used
- [ ] Findings separated from recommendations
- [ ] Signed with name and position
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 13: NARRATIVE AND DESCRIPTIVE WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Narrative and Descriptive Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Narrative and Descriptive Writing', $C$
## Overview: Narrative and Descriptive Writing

**Narrative writing** tells a story — real or imagined — with a sequence of events, characters, and a resolution. **Descriptive writing** paints a detailed picture using sensory language, without necessarily having a plot.

In WASSCE, these are often combined: a narrative essay usually contains rich description, and a descriptive essay may have elements of narrative.

### What Makes a Story Compelling?

Great narrative writing has:
- A **memorable character** (not just a name — a person with feelings, flaws, and voice)
- A **conflict** (something must be at stake)
- **Tension** (the reader must care about the outcome)
- **Vivid detail** (showing, not just telling)
- A **satisfying resolution** (not necessarily happy, but meaningful)

### The Difference Between Telling and Showing

**Telling:** "She was scared."
**Showing:** "Her hands would not stop trembling. She pressed them flat against her thighs, willing them still, but her body refused to obey."

Examiners award high expression marks for "showing" — using concrete detail to convey emotion rather than simply naming it.
$C$, 'overview', 1),

(tid, 'Techniques: Narrative and Descriptive Devices', $C$
## Key Narrative and Descriptive Techniques

### Plot Structure (Narrative)

Every story follows a basic arc:

1. **Exposition:** Introduce setting, characters, situation
2. **Rising action:** Events that create conflict and build tension
3. **Climax:** The turning point — the most intense moment
4. **Falling action:** Events following the climax
5. **Resolution:** How the conflict is resolved and characters are changed

### Point of View

| POV | Features | Effect |
|-----|---------|--------|
| **First person (I)** | Narrator is a character | Intimate, subjective, personal |
| **Third person limited (he/she/they)** | Narrator outside story but follows one character | Flexible, can create suspense |
| **Third person omniscient** | Narrator knows all characters' thoughts | Wide scope, authoritative |

**In WASSCE:** First person is usually most effective for personal narrative. Use it well.

### Descriptive Techniques

**Sensory detail:** Engage ALL five senses
- Sight: "The market blazed with colour — pyramids of tomatoes, bolts of kente cloth, buckets of silver fish."
- Sound: "The tinny blare of highlife music competed with vendors' calls and the shriek of car horns."
- Smell: "The air was thick with the sweet rot of overripe plantain and the sharp bite of dried pepper."
- Touch: "The concrete ground burned through the soles of her slippers."
- Taste: "She bit into the kenkey and tasted salt, fermented corn, and the memory of her grandmother's kitchen."

**Atmosphere:** The emotional mood of a scene. Created through word choice, sentence length, and imagery.

**Pacing:**
- **Slow pace:** Long sentences, detailed description, internal reflection
- **Fast pace:** Short sentences. Fragments. Action. Movement. Urgency.

### Character Development

**Flat characters** have one trait. **Round characters** have complexity — contradictions, growth, depth.

Show character through:
- **Dialogue:** What they say and how they say it
- **Action:** What they do under pressure
- **Thought:** What they feel but may not express
- **Others' reactions:** How people respond to them
$C$, 'definitions', 2),

(tid, 'Writing Techniques: Beginning, Middle and End', $C$
## Deep Craft: How to Write Compelling Narrative

### How to Open a Story (Narrative Hook)

The opening must grab the examiner's attention immediately. Avoid starting with:
- "Once upon a time..." (cliche)
- "I am going to tell you about the time..." (weak and meta)
- "My name is... and I live in..." (boring exposition)

**Effective openings:**

**In medias res (in the middle of things):**
*"The door was locked from the outside. This was how I knew the night had gone wrong."*

**Atmospheric opening:**
*"The harmattan came early that year, coating everything in a fine red dust — the walls, the leaves, the faces of the children playing in the compound. It settled on the tin roof like a shroud."*

**Dialogue opening:**
*"'You should never have come back,' my father said, without turning from the window."*

**Reflective opening:**
*"Looking back now, I can see that it was already over before any of us understood it had begun."*

---

### Sustaining Tension

Once you have hooked the reader, you must sustain tension through:

1. **Withholding information:** The reader wants to know; delay revealing it
2. **Complications:** Every time the character gets closer to the goal, something new goes wrong
3. **Internal conflict:** Characters torn between choices
4. **Time pressure:** Events must happen by a deadline
5. **Foreshadowing:** Subtle hints of what will come

---

### How to End a Story

Avoid:
- "And then I woke up and it was all a dream." (Examiner's nightmare)
- Sudden happy resolution that is not earned
- No resolution at all — simply stopping

Good endings:
- **Full circle:** Return to an image or phrase from the opening
- **Revelation:** A moment of understanding changes everything
- **Open ending:** Not everything resolved, but the character has changed
- **Twist:** If well-foreshadowed, deeply satisfying

---

### Descriptive Writing — Building a Scene

**TECHNIQUE: The zoom lens method**
Start with a wide establishing shot → zoom to medium shot → zoom to close-up detail.

Wide: *"Accra at rush hour was a city that breathed too fast."*
Medium: *"On the bridge over the Odaw, hawkers weaved between cars, balancing trays of biscuits, water sachets, and phone chargers on their heads."*
Close-up: *"One boy, no older than ten, pressed his face against the glass of a black SUV, his hand raised in the gesture of offering, his eyes telling a different story entirely."*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Narrative and Descriptive Passages', $C$
## Worked Examples — Narrative and Descriptive Writing

### Example: Opening Paragraphs

**Question:** Write a narrative essay about an experience that taught you the importance of honesty.

**Model Opening:**
*"The first lie I told in that examination hall was a small one — merely a glance at Kofi's paper, just for the answer to one question. I told myself it did not count. By the third time I looked, I had stopped counting entirely. It was only when the invigilator's hand came down on my shoulder, firm and final, that the full weight of what I had done settled over me like a cold cloth.*

*'You. Outside,' she said.*

*And that was when the real examination began."*

---

**What makes this effective:**
- Opens in the middle of action — no time wasted with setup
- Uses first-person to create immediacy and guilt
- The self-justification ("I told myself it did not count") is psychologically real
- Dialogue is used for impact — short, powerful
- Final line creates tension: what is the "real examination"? The reader wants to find out.

---

### Example: Descriptive Paragraph (Market Scene)

*"The Makola Market on a Saturday morning is a living creature — heaving, breathing, demanding. You do not enter it so much as you are swallowed by it. The moment you cross the threshold of the main gate, the noise becomes physical: a wall of voices bargaining, children crying, radios competing. The air carries a thousand competing histories — fried yam, raw fish, fresh tomatoes, the diesel breath of the delivery trucks at the edges. Everything is in motion. There are no straight lines. You navigate by instinct and apology, pressing through gaps, following the pull of the crowd like a leaf in a current, until you are deposited, breathless and damp, at whatever stall the market has decided you needed all along."*

**Analysis:**
- Extended personification of the market as a "living creature"
- Five senses engaged: sound, smell, touch, movement
- Short sentence among longer ones: "Everything is in motion." — creates rhythm
- Second person "you" draws the reader into the scene
$C$, 'examples', 4),

(tid, 'Practice: Narrative and Descriptive Writing', $C$
## Practice Questions — Narrative and Descriptive Writing

### Question 1 — Narrative

*"Write a story that ends with the words: '...and at that moment, I understood what it meant to truly forgive.'"*

**Planning prompts:**
- Who wronged the narrator and how?
- Why was forgiveness so difficult?
- What moment or event changed things?
- What does the narrator realise at the end?

---

### Question 2 — Descriptive

*"Describe the scene at your school on the morning of the final examinations."*

**Techniques to use:**
- Build atmosphere before describing specific people
- Include different types of students — the anxious, the confident, the resigned
- Capture sounds, sights, the physical sensation of exam-morning anxiety
- End with the invigilator calling for silence — a symbolic moment

---

### Question 3 — Combined Narrative-Descriptive

*"Write a story about someone who makes a decision that changes their life forever. Include a vivid description of the setting in which the decision is made."*

---

### Self-Evaluation After Writing

- [ ] Does my opening create immediate interest?
- [ ] Have I used sensory detail throughout?
- [ ] Have I shown feelings rather than just naming them?
- [ ] Is there a clear conflict and resolution?
- [ ] Have I varied my sentence length to control pacing?
- [ ] Is my character believable and developed?
- [ ] Does my ending feel earned and satisfying?
- [ ] Have I used at least two literary devices (simile, metaphor, personification, etc.)?
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 14: ARGUMENTATIVE AND DEBATE WRITING
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Argumentative and Debate Writing';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Argumentative and Debate Writing', $C$
## Overview: Argumentative and Debate Writing

**Argumentative writing** presents a clear position on an issue and defends it with evidence, reasoning, and counterargument. **Debate writing** is similar but follows the specific format of formal debate, with propositions and oppositions.

### The Difference Between Argumentative and Discursive

| Feature | Argumentative | Discursive |
|---------|--------------|------------|
| Position | One-sided — takes a clear position | Balanced — presents multiple views |
| Purpose | Persuade | Inform and stimulate thought |
| Conclusion | Reaffirms the argument | May offer balanced reflection |
| Signal words | "The evidence clearly shows..." | "On one hand...on the other hand..." |

**Read the question carefully.** If it says "argue for or against," it wants argumentative. If it says "discuss," it wants discursive.

### What Makes a Winning Argument?

The best arguments are built on three foundations (the classical rhetorical triangle):
- **Ethos:** Establishing credibility and trustworthiness
- **Pathos:** Appealing to the reader's emotions and values
- **Logos:** Using logic, evidence, and reasoning

WASSCE examiners reward essays that use all three — not just emotion, not just cold logic.
$C$, 'overview', 1),

(tid, 'Structure and Techniques of Argumentative Writing', $C$
## How to Structure an Argumentative Essay

### The Classic Argumentative Structure (5 Paragraphs)

**Paragraph 1 — Introduction**
- Hook (shocking statistic, powerful quote, rhetorical question)
- Context (brief background to the issue)
- Thesis statement (your clear position)

**Paragraph 2 — First Main Argument**
- Topic sentence (state the argument)
- Evidence and examples (support the claim)
- Explanation (link back to thesis)

**Paragraph 3 — Second Main Argument**
- Follow same structure

**Paragraph 4 — Counterargument + Rebuttal**
- Acknowledge the opposing view fairly
- Then disprove or limit it
- This shows intellectual honesty and strengthens your own position

**Paragraph 5 — Conclusion**
- Restate thesis in new words
- Summarise key arguments briefly
- End with a call to action or powerful final statement

---

### Persuasive Language Techniques

| Technique | Example |
|-----------|---------|
| **Rhetorical questions** | "Can we truly call ourselves a civilised society if...?" |
| **Anaphora** | "It is unjust. It is unsustainable. It is unacceptable." |
| **Statistics and data** | "Studies show that 78% of..." |
| **Expert authority** | "As the Nobel laureate Wole Soyinka observed..." |
| **Concession and rebuttal** | "While some argue that...this view overlooks..." |
| **Inclusive language** | "We, as citizens of this nation, cannot afford to..." |
| **Emotive language** | "The suffering of these children is unconscionable." |

---

### Debate Writing Format

A formal debate speech has specific conventions:

**Opening:**
*"Mr./Madam Chairman, the motion before this house is: [Motion]. I stand firmly on the side of [Proposition/Opposition] and I am here today to prove that [restate your position]."*

**Body:** 3-4 points, each clearly structured

**Closing:**
*"For all the reasons I have stated, and for the sake of our [community/nation/future], I urge this house to vote [For/Against] the motion. Thank you."*

**Addressing counter-arguments in debate:**
*"My distinguished opponents would have you believe that... However, this argument fails to account for the fact that..."*
$C$, 'definitions', 2),

(tid, 'Key Argumentative Skills: Evidence, Reasoning, Rebuttal', $C$
## Deep Skills: Building a Strong Argument

### Types of Evidence

Not all evidence is equally persuasive. Rank your evidence:

1. **Statistical evidence:** Specific numbers from credible sources (most persuasive)
2. **Expert testimony:** Quotes from recognized authorities
3. **Case studies:** Specific documented examples
4. **Analogies:** Comparisons to situations the reader understands
5. **General examples:** Broader illustrations (less persuasive alone)

**Weak argument:** "Corruption is bad. Many countries suffer from it. Ghana has corruption problems too."

**Strong argument:** "According to Transparency International's 2023 Corruption Perceptions Index, Ghana ranked 70th out of 180 countries — a significant decline from previous years. This erosion of institutional integrity carries direct economic consequences: the World Bank estimates that developing nations lose approximately USD 1 trillion annually to corruption, funds that could otherwise finance schools, hospitals, and infrastructure."

---

### How to Rebut an Opposing Argument

The three-step rebuttal:
1. **Acknowledge:** "While it is true that..."
2. **Challenge:** "...this claim overlooks / overstates / is contradicted by..."
3. **Counter:** "In fact, the evidence shows that..."

**Example:**
"While proponents of capital punishment argue that it serves as a deterrent to violent crime, this claim is flatly contradicted by the empirical evidence. States and nations that have abolished the death penalty have not experienced corresponding increases in homicide rates. In fact, a comprehensive study by the Death Penalty Information Centre found no significant correlation between the presence of capital punishment and reduced murder rates."

---

### Common Argumentative Errors

| Error | Description | Example |
|-------|------------|---------|
| **Ad hominem** | Attacking the person, not the argument | "He would say that, he is biased." |
| **Straw man** | Misrepresenting the opponent's view | "They want total anarchy." |
| **False dichotomy** | Presenting only two options when more exist | "Either you support the bill or you hate children." |
| **Slippery slope** | Assuming one action inevitably leads to extreme consequences | "If we allow this, it will lead to complete chaos." |
| **Appeal to tradition** | "We have always done it this way." |
| **Hasty generalisation** | Drawing a broad conclusion from limited examples | "All politicians are corrupt." |
$C$, 'explanation', 3),

(tid, 'Worked Examples: Argumentative and Debate Essays', $C$
## Worked Examples — Argumentative Writing

### Model Argumentative Essay Opening

**Question:** "Capital punishment is an ineffective deterrent to crime and should be abolished. Argue for or against."

**Model Introduction:**
*"Every year, dozens of men are executed in the name of justice across West Africa, yet violent crime rates show no meaningful decline. The argument for capital punishment rests on the intuitive assumption that the fear of death deters would-be criminals — an assumption that five decades of criminological research has consistently failed to support. Far from reducing violent crime, the death penalty perpetuates a cycle of state-sanctioned violence, consumes enormous judicial resources, and carries the irreversible risk of executing the innocent. It is time for West African nations to confront the evidence and consign this brutal relic of penal history to the past."*

**What works:**
- Opens with a striking statistic-based observation
- Identifies the central assumption of the opposing view
- States the thesis clearly and strongly
- Lists the three main arguments to be developed
- Ends with a call to action embedded in the conclusion

---

### Model Debate Speech Opening

**Motion:** "This house believes that social media should be banned for those under 18."

**Proposition (For the motion):**
*"Mr. Chairman, members of the panel, fellow students — the motion before this house is both timely and urgent: that social media should be banned for those under 18. I rise on the side of the proposition, and I say to this house: the evidence of harm is overwhelming, the consequences of inaction are dire, and our children deserve better than an industry that profits from their anxiety.*

*The facts speak for themselves. The Mental Health Foundation reports a 70% increase in anxiety disorders among teenagers since the widespread adoption of social media platforms. Instagram's own internal research — leaked and reported by the Wall Street Journal — confirmed that the platform makes body image issues worse for one in three girls. These are not hypothetical risks; they are documented, measurable, and preventable harms. And we are choosing to do nothing.*

*I will prove to this house that a temporary restriction on social media access for minors is not censorship — it is safeguarding. Thank you."*
$C$, 'examples', 4),

(tid, 'Practice: Argumentative and Debate Writing', $C$
## Practice Questions — Argumentative and Debate Writing

### Question 1 — Argumentative Essay

*"The single most effective way to reduce poverty in West Africa is to invest in girls' education. Do you agree?"*

**Approach:** Take a clear position. Use specific evidence from West Africa. Address the counterargument that other factors matter more. Conclude powerfully.

---

### Question 2 — Argumentative Essay (Discursive)

*"Traditional medicine has as much to offer modern healthcare as Western medicine. Discuss."*

**Approach:** This asks you to discuss (both sides). Present the strengths of traditional medicine, the criticisms, the strengths of Western medicine, and offer a balanced conclusion — perhaps arguing for integration rather than competition.

---

### Question 3 — Debate Speech

Write a speech for or against the following motion:
*"This house believes that examinations do more harm than good in the educational system."*

**Include:**
- Formal opening address (Mr./Madam Chairman, etc.)
- Clear position statement
- Three developed arguments
- One acknowledgment and rebuttal of the opposing view
- Powerful closing appeal to vote with you

---

### Argumentative Writing Self-Assessment

After writing, evaluate your essay:

- [ ] Is my position stated clearly in the introduction?
- [ ] Does each body paragraph have a clear topic sentence?
- [ ] Have I used specific evidence (not vague statements)?
- [ ] Have I acknowledged and rebutted the opposing view?
- [ ] Have I used at least three persuasive techniques?
- [ ] Is my conclusion forceful and not simply repetitive?
- [ ] Is my language formal and precise?
- [ ] Have I avoided logical fallacies?
$C$, 'practice', 5);


-- ============================================================
-- TOPIC 15: SENTENCE STRUCTURE AND SYNTAX
-- ============================================================
SELECT id INTO tid FROM topics WHERE name = 'Sentence Structure and Syntax';

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
(tid, 'Overview: Sentence Structure and Syntax', $C$
## Overview: Sentence Structure and Syntax

**Syntax** is the set of rules that governs how words are ordered and combined to form sentences. **Sentence structure** refers to the patterns in which clauses and phrases are arranged.

Understanding sentence structure is essential for:
- Writing varied, sophisticated prose
- Identifying errors in Lexis and Structure questions
- Analysing language effects in comprehension
- Transforming sentences as required in WASSCE

### Why Sentence Variety Matters

Examiners award higher expression marks to essays that demonstrate sentence variety. Writing only in short, simple sentences creates a monotonous, immature effect. Writing only in long, complex sentences can obscure meaning. The best writing mixes all types deliberately.

**Monotonous:** *"The student studied. He was tired. He made tea. He continued studying. He passed his exams."*

**Varied:** *"The student studied late into the night, fuelled by tea and the slow-burning conviction that this time, he would not fail. He did not."*
$C$, 'overview', 1),

(tid, 'Types of Sentences and Clause Structure', $C$
## The Four Sentence Types

### 1. Simple Sentence
One **independent clause** (subject + verb, complete meaning).
*"The student failed the examination."*
*"Ghana gained independence in 1957."*

### 2. Compound Sentence
Two or more **independent clauses** joined by a coordinating conjunction (FANBOYS: for, and, nor, but, or, yet, so) or a semicolon.
*"She studied diligently, but she still failed."*
*"He applied for the scholarship; he did not receive it."*

### 3. Complex Sentence
One **independent clause** + one or more **dependent/subordinate clauses**.
*"Although she had studied diligently, she still failed the examination."*
*"He wept when he learned that he had not been selected."*

### 4. Compound-Complex Sentence
Two or more **independent clauses** + one or more **dependent clauses**.
*"Although she had studied all year, she failed the mock examination, and her confidence collapsed completely."*

---

## Types of Clauses

### Independent Clause (Main Clause)
Can stand alone as a sentence. Has a subject and a verb and expresses complete meaning.
*"She passed the examination."*

### Dependent Clause (Subordinate Clause)
Cannot stand alone — it depends on the main clause for meaning.
*"...because she had studied consistently."*

**Types of subordinate clauses:**

| Type | Function | Example |
|------|---------|---------|
| **Noun clause** | Acts as a noun | "I know **that she is intelligent**." |
| **Adjective clause** | Modifies a noun | "The student **who scored highest** won the prize." |
| **Adverbial clause** | Modifies a verb | "She left **before the results were announced**." |

---

## Phrases vs. Clauses

**Phrase:** A group of words WITHOUT a subject-verb relationship.
- Noun phrase: *"the brilliant student"*
- Verb phrase: *"had been studying"*
- Prepositional phrase: *"in the examination hall"*
- Participial phrase: *"exhausted by the ordeal,"*
- Infinitive phrase: *"to pass at all costs"*

**Clause:** A group of words WITH a subject-verb relationship.
- Independent: *"she passed"*
- Dependent: *"although she was exhausted"*
$C$, 'definitions', 2),

(tid, 'Sentence Structures: Coordination, Subordination and Emphasis', $C$
## Advanced Sentence Structures

### Coordination vs. Subordination

**Coordination** places equal weight on two ideas:
*"She worked hard, and she succeeded."* (both ideas equally important)

**Subordination** shows that one idea is more important than another:
*"Because she worked hard, she succeeded."* (the working is the reason; success is the focus)
*"She succeeded, even though the odds were against her."* (success is the focus; odds against is extra information)

The choice between coordination and subordination is a key stylistic decision.

---

### Sentence Patterns for Emphasis

**1. Fronting / Sentence inversion (for emphasis):**
Normal: *"She had never seen such courage."*
Fronted: *"Never had she seen such courage."* (more emphatic, formal, literary)

**2. Cleft sentences (for focus):**
Normal: *"The principal announced the results."*
Cleft: *"It was the principal who announced the results."* (emphasises the principal)
Cleft: *"It was the results that the principal announced."* (emphasises the results)

**3. Passive voice (for emphasis or to hide the agent):**
Active: *"The committee rejected the proposal."*
Passive: *"The proposal was rejected."* (hides who rejected it)
Passive: *"The proposal was rejected by the committee."* (emphasises the proposal, not the committee)

**4. Parallel structure (for balance and rhythm):**
*"She came, she saw, she conquered."*
*"The nation needs leaders who are honest, who are competent, and who are committed."*

---

### Identifying and Correcting Sentence Errors

**Sentence fragment:** An incomplete sentence used as if it were complete.
Wrong: *"Because she studied hard."* (dependent clause alone)
Correct: *"Because she studied hard, she passed."*

**Run-on sentence:** Two independent clauses incorrectly joined.
Wrong: *"She studied hard she still failed."*
Correct options:
- *"She studied hard, but she still failed."* (conjunction)
- *"She studied hard; she still failed."* (semicolon)
- *"Although she studied hard, she still failed."* (subordination)

**Comma splice:** Two independent clauses joined only by a comma.
Wrong: *"She studied hard, she still failed."*
Correct: *"She studied hard, yet she still failed."*
$C$, 'explanation', 3),

(tid, 'Worked Examples: Sentence Analysis and Transformation', $C$
## Worked Examples — Sentence Structure

### Example 1: Classify Each Sentence

1. *"The committee met on Thursday."*
**Simple** — one independent clause.

2. *"The committee met on Thursday, and the results were announced on Friday."*
**Compound** — two independent clauses joined by "and."

3. *"Although the committee met on Thursday, the results were not announced until the following week."*
**Complex** — one dependent clause ("Although...Thursday") + one independent clause.

4. *"Although the committee met on Thursday, the results were not immediately available, and students had to wait anxiously for another week."*
**Compound-complex** — one dependent clause + two independent clauses.

---

### Example 2: Identify the Type of Subordinate Clause

1. *"I believe **that you can succeed**."* — **Noun clause** (object of "believe")

2. *"The student **who worked hardest** won the prize."* — **Adjective clause** (modifies "student")

3. *"She left **before the ceremony ended**."* — **Adverbial clause** (tells when she left)

---

### Example 3: Rewrite to Vary Sentence Structure

**Original (monotonous):**
*"She woke up early. She made breakfast. She studied for two hours. She went to school."*

**Rewritten (varied):**
*"Rising before dawn, she made a quick breakfast before settling at her desk for two focused hours of study. By the time the rest of the household stirred, she was already on her way to school — calm, prepared, and ready."*

**Techniques used:**
- Participial phrase opening ("Rising before dawn")
- Complex sentence with "before"
- Compound-complex final sentence
- Varied sentence lengths
$C$, 'examples', 4),

(tid, 'Practice: Sentence Structure and Syntax', $C$
## Practice Questions — Sentence Structure

### Section A: Classify Each Sentence

Identify each as simple, compound, complex, or compound-complex.

1. *"Education is the most powerful weapon you can use to change the world."*
2. *"She studied medicine, but she really wanted to be a musician."*
3. *"Because the examination had been postponed, students had an extra week to prepare."*
4. *"Although poverty creates significant barriers, many students overcome adversity and excel academically when they receive adequate support."*
5. *"The school closed at three o'clock."*
6. *"He failed the first time, yet he persevered, and eventually he succeeded brilliantly."*

**Answers:** 1-Simple, 2-Compound, 3-Complex, 4-Compound-complex, 5-Simple, 6-Compound-complex

---

### Section B: Correct the Errors

Identify and correct the error in each sentence.

1. *"She studied for weeks. Because she was determined to pass."*
2. *"The committee was impressed, they offered him the scholarship immediately."*
3. *"Running to catch the bus the driver did not see him."*
4. *"She was not only intelligent but also she was diligent."*

**Answers:**
1. Fragment — join: *"She studied for weeks because she was determined to pass."*
2. Comma splice — *"The committee was impressed; they offered him the scholarship immediately."* or use "so"
3. Dangling modifier — *"Running to catch the bus, he was not seen by the driver."*
4. Faulty parallelism — *"She was not only intelligent but also diligent."*

---

### Section C: Rewrite for Variety and Effect

Rewrite the following passage to improve sentence variety. Use at least three different sentence types.

*"The examination started. Students were nervous. Some students had not studied. They tried to copy. The invigilator caught them. They were sent out. The rest of the students focused. They completed the paper. They left feeling hopeful."*
$C$, 'practice', 5);

END $$;
