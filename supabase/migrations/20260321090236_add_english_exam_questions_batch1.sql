/*
  # Add English Language Exam Questions - Batch 1
  
  Adds 80 new WASSCE-standard multiple choice questions for English Language
  covering Grammar, Comprehension, Lexis, Oral English, Figures of Speech,
  Summary Writing, and more topics.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Grammar: Parts of Speech (b1000002-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Identify the part of speech of the underlined word: "She spoke very QUICKLY."',
 '["Adjective","Adverb","Verb","Noun"]', 1,
 'Quickly modifies the verb spoke, making it an adverb.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Which sentence contains a transitive verb?',
 '["The baby slept soundly.","He kicked the ball hard.","She smiled at me.","They arrived late."]', 1,
 'A transitive verb takes a direct object. "kicked the ball" — ball is the direct object.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'In "Neither the students nor the teacher was present," the subject-verb agreement is:',
 '["Incorrect — should be ''were''","Correct — verb agrees with nearer subject","Incorrect — should be ''are''","Correct — but only in informal English"]', 1,
 'With ''neither...nor'', the verb agrees with the noun closest to it (the teacher — singular).', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Choose the correct form: "Each of the boys ______ a pen."',
 '["have","has","having","had"]', 1,
 '"Each" is singular, so it takes a singular verb "has".', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Which of the following is a demonstrative pronoun?',
 '["who","which","those","whose"]', 2,
 '"Those" is a demonstrative pronoun used to point to specific things.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Identify the gerund in: "Swimming is her favourite sport."',
 '["her","favourite","sport","Swimming"]', 3,
 '"Swimming" functions as a noun (subject of the sentence) — it is a gerund.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Which sentence uses the subjunctive mood correctly?',
 '["If I was you, I would leave.","I wish he was here.","If I were you, I would leave.","She acts as if she is the boss."]', 2,
 'The subjunctive ''were'' is used in hypothetical/wish conditions: "If I were you..."', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'The word "beautiful" in "She is a beautiful singer" is:',
 '["A predicate adjective","An attributive adjective","An adverb","A noun"]', 1,
 'When an adjective directly precedes the noun it modifies, it is an attributive adjective.', 'medium'),

-- Lexis and Structure (b1000002-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Choose the word most nearly opposite in meaning to FRUGAL:',
 '["careful","wasteful","generous","thrifty"]', 1,
 'Frugal means careful with money/resources. Its antonym is wasteful or extravagant.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Select the word closest in meaning to ELOQUENT:',
 '["silent","fluent","awkward","confused"]', 1,
 'Eloquent means having a fluent, persuasive, and expressive way of speaking.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'The word EPHEMERAL means:',
 '["lasting forever","very old","short-lived","colourful"]', 2,
 'Ephemeral means lasting for a very short time.', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Choose the correct word to complete: "The minister gave an ______ speech that moved everyone."',
 '["emotionally","emotive","emotional","emotion"]', 1,
 '"Emotive" is the adjective meaning tending to arouse strong emotion, fitting for a speech.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Which word correctly completes: "She has a ______ for expensive clothes"?',
 '["penchant","pendant","pencil","pension"]', 0,
 '"Penchant" means a strong liking or tendency for something.', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'The phrase "to beat around the bush" means:',
 '["to fight in the forest","to avoid the main topic","to work very hard","to be physically active"]', 1,
 'This idiom means to avoid speaking directly about the main issue.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Choose the correctly spelt word:',
 '["accomodation","accommodation","acommodation","accommodtion"]', 1,
 'The correct spelling is "accommodation" — double c and double m.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'The word GARRULOUS means:',
 '["very quiet","excessively talkative","extremely angry","highly intelligent"]', 1,
 'Garrulous describes someone who is excessively talkative about trivial things.', 'hard'),

-- Comprehension Skills (b1000002-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000003',
 'When answering comprehension questions, the BEST approach is to:',
 '["Write everything you know about the topic","Base answers strictly on the passage","Use your personal opinions","Summarise the entire passage"]', 1,
 'Comprehension answers must be derived from information in the passage, not personal opinions.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000003',
 'The ''tone'' of a passage refers to:',
 '["The loudness of the writing","The writer''s attitude toward the subject","The length of sentences","The vocabulary used"]', 1,
 'Tone refers to the emotional attitude the writer has toward the subject matter.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000003',
 'A ''rhetorical question'' in a passage is used to:',
 '["Seek information from the reader","Emphasise a point without expecting an answer","Test the reader''s knowledge","Request clarification"]', 1,
 'Rhetorical questions are asked for effect and emphasis, not to get an answer.', 'medium'),

-- Oral English and Phonetics (b1000002-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'How many syllables does the word "EXAMINATION" have?',
 '["4","5","6","3"]', 1,
 'Ex-am-i-na-tion = 5 syllables.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'In English phonetics, a vowel sound produced with the tongue in a high front position is:',
 '["/ɑː/ as in ''car''","/iː/ as in ''see''","/ɔː/ as in ''law''","/ʊ/ as in ''book''"]', 1,
 'The /iː/ sound is a high front vowel, produced with the tongue raised at the front of the mouth.', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'The primary stress in the word "PHOTOGRAPH" falls on which syllable?',
 '["First (PHO-)","Second (-TO-)","Third (-GRAPH)","All equally stressed"]', 0,
 'PHO-to-graph — primary stress is on the first syllable.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'Which pair of words are homophones?',
 '["write / right","right / rite / wright","bear / bare","All of the above"]', 3,
 'Write/right, right/rite/wright, and bear/bare are all pairs/groups of homophones.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'The consonant sound at the beginning of "phone" is:',
 '["/p/","/f/","/ph/","/v/"]', 1,
 '"Phone" begins with the /f/ sound even though it is spelt with "ph".', 'easy'),

-- Figures of Speech and Literary Devices (b1000002-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 '"The classroom was a zoo." This is an example of:',
 '["Simile","Metaphor","Personification","Hyperbole"]', 1,
 'A metaphor directly states one thing is another without using "like" or "as".', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 '"I have a million things to do today." This is an example of:',
 '["Metaphor","Irony","Hyperbole","Alliteration"]', 2,
 'Hyperbole is an extreme exaggeration used for emphasis.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 'The repetition of the same consonant sound at the beginning of nearby words is called:',
 '["Assonance","Alliteration","Rhyme","Onomatopoeia"]', 1,
 'Alliteration is the repetition of initial consonant sounds, e.g., "Peter Piper picked a peck."', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 '"The leaves danced in the wind." This figure of speech is:',
 '["Simile","Alliteration","Personification","Metaphor"]', 2,
 'Giving human qualities (dancing) to non-human things (leaves) is personification.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 'What literary device is used in: "The silence was deafening"?',
 '["Paradox","Oxymoron","Simile","Metaphor"]', 1,
 'An oxymoron combines contradictory terms — silence cannot literally be deafening.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 '"As brave as a lion" is an example of:',
 '["Metaphor","Simile","Hyperbole","Personification"]', 1,
 'A simile makes a comparison using "like" or "as".', 'easy'),

-- Punctuation and Spelling (b1000002-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000008',
 'Which sentence is correctly punctuated?',
 '["Its a beautiful day.","It''s a beautiful day.","Its'' a beautiful day.","It''s a beautiful day''s."]', 1,
 '"It''s" is the contraction of "it is" and requires an apostrophe.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000008',
 'A semicolon is correctly used to:',
 '["Join two independent clauses of equal importance","Introduce a list after a colon","Separate items in a simple list","End an exclamatory sentence"]', 0,
 'Semicolons connect two closely related independent clauses without a coordinating conjunction.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000008',
 'Choose the correctly spelt word:',
 '["recieve","receive","receve","receeve"]', 1,
 'The correct spelling is "receive" — follow the rule "i before e except after c".', 'easy'),

-- Summary Writing (b1000002-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000006',
 'In summary writing, the most important rule is to:',
 '["Copy sentences directly from the passage","Use your own words as much as possible","Include all details from the original","Write as much as possible"]', 1,
 'A good summary uses the writer''s own words and captures the main ideas concisely.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000006',
 'When writing a summary, you should:',
 '["Include examples and illustrations","Omit irrelevant details","Express your personal opinion","Repeat the introduction"]', 1,
 'A summary should focus on the main points and omit minor details and examples.', 'medium'),

-- Tenses and Verb Forms (04f29c6a-5df6-414e-942c-f56a5f504101)
('a1000000-0000-0000-0000-000000000002', '04f29c6a-5df6-414e-942c-f56a5f504101',
 'Choose the correct tense: "By the time she arrives, we ______ the food."',
 '["will eat","will have eaten","are eating","have eaten"]', 1,
 'Future perfect tense (will have + past participle) expresses an action completed before a future time.', 'hard'),

('a1000000-0000-0000-0000-000000000002', '04f29c6a-5df6-414e-942c-f56a5f504101',
 'Identify the tense in: "She has been working since morning."',
 '["Simple present","Present perfect","Present perfect continuous","Past continuous"]', 2,
 '"Has been working" is present perfect continuous — an ongoing action that started in the past.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '04f29c6a-5df6-414e-942c-f56a5f504101',
 'Choose the correct verb form: "I wish I ______ taller."',
 '["am","was","were","be"]', 2,
 'After "wish," we use the subjunctive past form "were" for all subjects.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '04f29c6a-5df6-414e-942c-f56a5f504101',
 'Which sentence is in the passive voice?',
 '["The dog chased the cat.","The letter was written by John.","She is cooking dinner.","He runs every morning."]', 1,
 'Passive voice: the subject receives the action — "The letter was written."', 'easy'),

-- Concord and Agreement (d0648437-e047-45dc-95bb-f536a6f0b668)
('a1000000-0000-0000-0000-000000000002', 'd0648437-e047-45dc-95bb-f536a6f0b668',
 'Choose the correct option: "The committee ______ reached a decision."',
 '["have","has","are","were"]', 1,
 'Collective nouns like "committee" are treated as singular in British English.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'd0648437-e047-45dc-95bb-f536a6f0b668',
 '"Either of the two candidates ______ suitable." Choose the correct verb:',
 '["are","were","is","have been"]', 2,
 '"Either" is singular and takes a singular verb "is".', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'd0648437-e047-45dc-95bb-f536a6f0b668',
 'Choose the correct concord: "A number of students ______ absent today."',
 '["was","is","were","has been"]', 2,
 '"A number of" takes a plural verb — "a number of students were."', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'd0648437-e047-45dc-95bb-f536a6f0b668',
 'Identify the error: "The news are very disturbing today."',
 '["''news'' should be ''new''","''are'' should be ''is''","''very'' should be removed","No error"]', 1,
 '"News" is an uncountable noun and takes a singular verb — "the news is."', 'easy'),

-- Sentence Structure and Syntax (45b25566-eab0-4b8d-9037-cc1e80ce4bf9)
('a1000000-0000-0000-0000-000000000002', '45b25566-eab0-4b8d-9037-cc1e80ce4bf9',
 'A clause that cannot stand alone as a sentence is called:',
 '["An independent clause","A dependent clause","A compound sentence","A phrase"]', 1,
 'A dependent (subordinate) clause cannot stand alone — it needs a main clause.', 'easy'),

('a1000000-0000-0000-0000-000000000002', '45b25566-eab0-4b8d-9037-cc1e80ce4bf9',
 'Identify the type of sentence: "Although it rained, the match continued."',
 '["Simple","Compound","Complex","Compound-complex"]', 2,
 'It has a dependent clause (Although it rained) and an independent clause — this is complex.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '45b25566-eab0-4b8d-9037-cc1e80ce4bf9',
 'A dangling modifier occurs when:',
 '["A modifier is placed at the end of a sentence","A modifier does not logically modify any word in the sentence","Two modifiers are used together","A modifier is used with a pronoun"]', 1,
 'A dangling modifier has no clear subject to modify in the sentence.', 'hard'),

-- Vocabulary and Word Formation (10854ad4-8414-4095-a8ba-428ffbe72189)
('a1000000-0000-0000-0000-000000000002', '10854ad4-8414-4095-a8ba-428ffbe72189',
 'The prefix "mis-" in "misunderstand" means:',
 '["not","wrongly","again","under"]', 1,
 'The prefix "mis-" means wrongly or badly, as in misunderstand, misuse.', 'easy'),

('a1000000-0000-0000-0000-000000000002', '10854ad4-8414-4095-a8ba-428ffbe72189',
 'What is the noun form of the verb "justify"?',
 '["justification","justifying","justified","justifiable"]', 0,
 'The noun form of "justify" is "justification."', 'easy'),

('a1000000-0000-0000-0000-000000000002', '10854ad4-8414-4095-a8ba-428ffbe72189',
 'Choose the word that completes the analogy: "Doctor : Hospital :: Teacher : ____"',
 '["clinic","school","market","office"]', 1,
 'A doctor works at a hospital; a teacher works at a school.', 'easy'),

('a1000000-0000-0000-0000-000000000002', '10854ad4-8414-4095-a8ba-428ffbe72189',
 'The suffix "-ology" as in "biology" means:',
 '["study of","fear of","love of","hatred of"]', 0,
 '"-ology" comes from Greek and means "the study of."', 'easy'),

-- Register and Varieties of English (b1000002-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000009',
 'Which is an example of formal register?',
 '["Yo, what''s up?","I shall be grateful if you could attend.","Gonna be there soon.","That was super cool!"]', 1,
 'Formal register uses polite, standard language appropriate for official communication.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000009',
 'The term "jargon" refers to:',
 '["Rude and offensive language","Specialised vocabulary of a profession or group","Very old-fashioned words","Simple everyday language"]', 1,
 'Jargon is technical language specific to a particular field or group.', 'medium'),

-- Reading for Inference (40931317-3d20-4936-b7f7-52b7762d90d7)
('a1000000-0000-0000-0000-000000000002', '40931317-3d20-4936-b7f7-52b7762d90d7',
 'Reading for inference means:',
 '["Reading only the first sentence of each paragraph","Drawing conclusions from clues in the text","Reading the passage aloud","Skimming for key words"]', 1,
 'Inference involves understanding what is implied rather than directly stated.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '40931317-3d20-4936-b7f7-52b7762d90d7',
 'If a passage says "John looked at his empty plate and sighed," we can INFER that:',
 '["John is tired","John is angry","John is still hungry","John is happy"]', 2,
 'An empty plate and a sigh suggest John has finished eating and may want more.', 'medium'),

-- Essay Writing (b1000002-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000001',
 'The introductory paragraph of an essay should:',
 '["State all the main points in detail","Grab attention and introduce the topic","Contain the conclusion","List all evidence"]', 1,
 'An introduction should engage the reader and clearly introduce the essay topic.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000001',
 'In expository writing, the primary purpose is to:',
 '["Entertain the reader","Persuade the reader to take action","Explain and inform","Describe personal feelings"]', 2,
 'Expository writing aims to explain, describe, or inform objectively.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000001',
 'Which type of essay presents two sides of an issue?',
 '["Narrative essay","Descriptive essay","Argumentative essay","Personal essay"]', 2,
 'An argumentative essay presents and evaluates two sides of a debate.', 'medium'),

-- Formal Letter Writing (50ffeabe-6547-457e-874f-569abc2967a2)
('a1000000-0000-0000-0000-000000000002', '50ffeabe-6547-457e-874f-569abc2967a2',
 'A formal letter to someone whose name you do not know should end with:',
 '["Yours sincerely","Yours faithfully","Yours truly","Best regards"]', 1,
 'When you do not know the recipient''s name (Dear Sir/Madam), end with "Yours faithfully."', 'easy'),

('a1000000-0000-0000-0000-000000000002', '50ffeabe-6547-457e-874f-569abc2967a2',
 'In a formal letter, where does the writer''s address appear?',
 '["Below the date","Top left corner","Top right corner","Below the salutation"]', 2,
 'In formal British letter format, the writer''s address appears at the top right.', 'easy'),

('a1000000-0000-0000-0000-000000000002', '50ffeabe-6547-457e-874f-569abc2967a2',
 'The subject line in a formal letter:',
 '["Is written after the complimentary close","Indicates what the letter is about","Is not necessary","Is the same as the salutation"]', 1,
 'The subject line briefly states the purpose or topic of the letter.', 'medium'),

-- Directed Writing (b1000002-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000010',
 'A speech written for a school debate should:',
 '["Use informal slang throughout","Have a clear argument with supporting points","Avoid addressing the audience","Be written in paragraph form without headings"]', 1,
 'A debate speech needs a clear, well-structured argument with evidence.', 'medium'),

-- More Grammar questions
('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Choose the correct option: "He is one of the students who ______ passed."',
 '["has","have","had","is"]', 1,
 'The relative clause refers to "students" (plural), so we use "have."', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Identify the appositive phrase in: "My brother, a doctor, lives abroad."',
 '["My brother","a doctor","lives abroad","My brother, a doctor"]', 1,
 'An appositive renames or gives more information about a noun — "a doctor" identifies "My brother."', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'd0648437-e047-45dc-95bb-f536a6f0b668',
 '"The police ______ investigating the case." Choose the correct verb:',
 '["is","was","are","has been"]', 2,
 '"Police" is a plural noun and takes a plural verb "are."', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'The word LOQUACIOUS means:',
 '["very quiet","fond of talking","extremely wise","quick to anger"]', 1,
 'Loquacious means tending to talk a great deal; garrulous.', 'hard'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000005',
 'Choose the correct preposition: "She is good ______ mathematics."',
 '["in","with","at","for"]', 2,
 'The correct collocation is "good at" something.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 '"The stars sang together" is an example of:',
 '["Metaphor","Personification","Simile","Hyperbole"]', 1,
 'Attributing the human action of singing to stars (non-human) is personification.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000007',
 'Identify the figure of speech in: "Peter Piper picked a peck of pickled peppers."',
 '["Assonance","Onomatopoeia","Alliteration","Rhyme"]', 2,
 'Repeated /p/ consonant sounds at the start of words — this is alliteration.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000008',
 'Choose the sentence with correct use of the apostrophe:',
 '["The boys books were torn.","The boy''s books were torn.","The boys'' book''s were torn.","The boy''s book''s were torn."]', 1,
 'One boy possessing books: "The boy''s books" — apostrophe before s.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '04f29c6a-5df6-414e-942c-f56a5f504101',
 'Which sentence is grammatically correct?',
 '["She don''t like coffee.","She doesn''t likes coffee.","She doesn''t like coffee.","She not like coffee."]', 2,
 'Third person singular present: "She doesn''t like coffee" is correct.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'The term "intonation" refers to:',
 '["The speed of speech","The rise and fall of pitch in speech","The volume of voice","The clarity of pronunciation"]', 1,
 'Intonation is the variation in pitch (rise and fall) while speaking.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000004',
 'In the word "record," the noun form is stressed on which syllable?',
 '["Second (re-CORD)","First (RE-cord)","Both equally","Neither"]', 1,
 'RE-cord (noun) vs re-CORD (verb) — nouns have stress on first syllable.', 'hard'),

('a1000000-0000-0000-0000-000000000002', '10854ad4-8414-4095-a8ba-428ffbe72189',
 'The antonym of VERBOSE is:',
 '["wordy","concise","loud","vague"]', 1,
 'Verbose means using too many words; its antonym is concise.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000009',
 'Which is an example of pidgin English?',
 '["I would be most grateful for your assistance.","Make we go — I wan chop.","The situation has been resolved.","Kindly submit your application."]', 1,
 'Pidgin English is a simplified form of English mixed with local language patterns.', 'medium'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000006',
 'Which of these should NOT be included in a summary?',
 '["Main ideas","Key arguments","Figurative language and examples","Central theme"]', 2,
 'Summaries should omit illustrations, examples, and figurative language — focus on main points.', 'medium'),

('a1000000-0000-0000-0000-000000000002', '45b25566-eab0-4b8d-9037-cc1e80ce4bf9',
 '"Because she studied hard" is:',
 '["A simple sentence","An independent clause","A dependent clause","A compound sentence"]', 2,
 'It begins with a subordinating conjunction and cannot stand alone — it is a dependent clause.', 'easy'),

('a1000000-0000-0000-0000-000000000002', 'b1000002-0000-0000-0000-000000000002',
 'Choose the correct option: "The team ______ playing well in the second half."',
 '["were","was","are","is"]', 0,
 'In WASSCE English (West African context), collective nouns like "team" often take plural verbs.', 'medium');
