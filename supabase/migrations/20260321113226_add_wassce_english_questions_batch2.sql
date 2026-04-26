/*
  # Add WASSCE English Language Questions Batch 2

  Adds 70 new WASSCE-standard English Language questions covering:
  - Comprehension and reading skills
  - Grammar (tenses, voice, punctuation, parts of speech)
  - Vocabulary and lexis
  - Essay writing and composition
  - Oral English (phonetics/phonology)
  - Summary and register
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000002';
  v_topic_id uuid := '04f29c6a-5df6-414e-942c-f56a5f504101';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'Which sentence is grammatically correct?',
 '["Neither of the boys are ready.","Neither of the boys is ready.","Neither boys is ready.","Not any of the boys are ready."]', 1,
 '"Neither" is singular and takes a singular verb. Correct: "Neither of the boys IS ready."', 'medium'),

(v_subject_id, v_topic_id, 'Choose the word that is correctly spelt:',
 '["Embarass","Embarras","Embarrass","Embarest"]', 2,
 'The correct spelling is EMBARRASS (double r and double s).', 'easy'),

(v_subject_id, v_topic_id, 'The plural form of "phenomenon" is',
 '["Phenomenas","Phenomenons","Phenomena","Phenomenes"]', 2,
 'Phenomenon has the Greek plural PHENOMENA. This is a common irregular plural.', 'medium'),

(v_subject_id, v_topic_id, 'In the sentence "She gave him the book," the word "him" is a',
 '["Subject pronoun","Object pronoun","Possessive pronoun","Reflexive pronoun"]', 1,
 '"Him" is an object pronoun (indirect object) - receiving the action.', 'easy'),

(v_subject_id, v_topic_id, 'Which punctuation mark separates items in a list?',
 '["Full stop","Semicolon","Comma","Colon"]', 2,
 'Commas separate items in a list: "I bought bread, milk, eggs, and butter."', 'easy'),

(v_subject_id, v_topic_id, 'The antonym of "benevolent" is',
 '["Kind","Generous","Malevolent","Helpful"]', 2,
 'Benevolent means well-meaning and kind. Its antonym is MALEVOLENT (having evil intentions).', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a conjunction?',
 '["Quickly","Although","Beautiful","Carefully"]', 1,
 'ALTHOUGH is a subordinating conjunction that introduces a dependent clause.', 'easy'),

(v_subject_id, v_topic_id, 'Convert to passive voice: "The teacher praised the students."',
 '["The students were praised by the teacher.","The students praised the teacher.","The teacher was praised by students.","The students had been praised."]', 0,
 'Passive voice: object becomes subject + to be + past participle. "The students WERE PRAISED by the teacher."', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following words is an adverb?',
 '["Happy","Happiness","Happily","Happier"]', 2,
 'HAPPILY is an adverb (modifies verbs, adjectives, or other adverbs). It answers the question "how?".', 'easy'),

(v_subject_id, v_topic_id, 'The literary device of comparing two unlike things without using "like" or "as" is called a',
 '["Simile","Metaphor","Personification","Alliteration"]', 1,
 'A metaphor makes a direct comparison without using "like" or "as" (e.g., "Life is a journey").', 'easy'),

(v_subject_id, v_topic_id, 'Which sentence uses the subjunctive mood correctly?',
 '["I wish I was taller.","I wish I were taller.","I wish I am taller.","I wish I be taller."]', 1,
 'The subjunctive mood uses "were" for all persons in contrary-to-fact conditions: "I wish I WERE taller."', 'hard'),

(v_subject_id, v_topic_id, 'The word "the" is classified as',
 '["Indefinite article","Definite article","Preposition","Adjective only"]', 1,
 '"The" is the DEFINITE article, used to specify a particular noun.', 'easy'),

(v_subject_id, v_topic_id, 'Choose the correct sentence:',
 '["Each of the players have signed the contract.","Each of the players has signed the contract.","Each players has signed the contract.","Each player have signed the contract."]', 1,
 '"Each" is singular and requires a singular verb: "Each of the players HAS signed the contract."', 'medium'),

(v_subject_id, v_topic_id, 'The word "predator" is derived from Latin and means',
 '["A plant","A hunter/plunderer","A friend","A helper"]', 1,
 'Predator comes from the Latin "praedator" meaning plunderer/hunter - an animal that hunts others.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is an example of reported (indirect) speech?',
 '["He said, I am tired.","He said that he was tired.","I am tired, he said.","He: I am tired."]', 1,
 'Reported speech reports what was said without using quotation marks and changes pronouns and tenses.', 'easy'),

(v_subject_id, v_topic_id, 'The prefix "mis-" as in "misunderstand" means',
 '["Again","Before","Wrongly/badly","After"]', 2,
 'The prefix MIS- means wrongly or badly: misunderstand (understand wrongly), mislead, misspell.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following sentences contains a dangling modifier?',
 '["Running fast, the finish line was reached.","Running fast, she reached the finish line.","She ran fast to reach the finish line.","The finish line was reached after running fast."]', 0,
 'A dangling modifier is not logically connected to the subject. "Running fast, the finish line" suggests the finish line was running.', 'hard'),

(v_subject_id, v_topic_id, 'The word "serendipity" means',
 '["Sadness","The occurrence of fortunate discoveries by accident","Anger","A type of melody"]', 1,
 'Serendipity means making happy, unexpected discoveries by chance.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following is NOT a type of essay?',
 '["Expository","Argumentative","Narrative","Interrogative"]', 3,
 'Main essay types include expository (informs), argumentative (persuades), narrative (tells a story), and descriptive. Interrogative is not an essay type.', 'medium'),

(v_subject_id, v_topic_id, 'Identify the figure of speech: "The stars danced playfully in the night sky."',
 '["Simile","Metaphor","Personification","Hyperbole"]', 2,
 'Personification gives human qualities (dancing playfully) to non-human things (stars).', 'easy'),

(v_subject_id, v_topic_id, 'Which word correctly completes: "He went to the market ___ buy food."',
 '["for","so","to","in order"]', 2,
 '"To" is used to show purpose with infinitive verbs: "He went to the market TO buy food."', 'easy'),

(v_subject_id, v_topic_id, 'The possessive form of "children" is',
 '["Childrens''","Childrens","Children''s","Childrens''s"]', 2,
 'For irregular plurals not ending in -s, add apostrophe + s: CHILDREN''S.', 'medium'),

(v_subject_id, v_topic_id, 'Identify the clause type: "Before he arrived, we had eaten."',
 '["Main clause","Adverbial clause","Relative clause","Noun clause"]', 1,
 '"Before he arrived" is an adverbial clause of time, modifying when the main action occurred.', 'medium'),

(v_subject_id, v_topic_id, 'The synonym for "verbose" is',
 '["Concise","Wordy","Silent","Brief"]', 1,
 'Verbose means using too many words; its synonym is WORDY. Antonyms include concise, brief, terse.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following is an example of alliteration?',
 '["Life is like a box of chocolates","Peter Piper picked a peck of pickled peppers","He runs as fast as a cheetah","The moon smiled down on us"]', 1,
 'Alliteration is the repetition of the same initial consonant sound: Peter, Piper, picked, peck, pickled, peppers.', 'easy'),

(v_subject_id, v_topic_id, 'The conditional sentence "If it rains, we will stay indoors" is in',
 '["Zero conditional","First conditional","Second conditional","Third conditional"]', 1,
 'First conditional (if + present simple, will + infinitive) expresses real possibility in the present/future.', 'medium'),

(v_subject_id, v_topic_id, 'In English phonetics, a vowel sound is distinguished from a consonant because',
 '["Vowels are always longer","Vowels are produced without obstruction to the airflow","Vowels always end words","Vowels are written with specific letters only"]', 1,
 'Vowel sounds are produced with an open vocal tract - the airflow is not obstructed or stopped.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following words has the stress on the FIRST syllable?',
 '["re-CORD (verb)","POR-trait","de-PART","ma-CHINE"]', 1,
 'PORTRAIT has stress on the first syllable (POR-trait). When "record" is a noun, stress is on the first syllable: RE-cord.', 'hard'),

(v_subject_id, v_topic_id, 'The literary term for a word that sounds like what it means is',
 '["Alliteration","Assonance","Onomatopoeia","Personification"]', 2,
 'Onomatopoeia refers to words that imitate the sound they describe: buzz, hiss, splash, crash.', 'easy'),

(v_subject_id, v_topic_id, 'Choose the correct form: "I ___ to the market yesterday."',
 '["go","goes","went","have gone"]', 2,
 '"Yesterday" requires the simple past tense. The simple past of "go" is "WENT".', 'easy'),

(v_subject_id, v_topic_id, 'The word that best completes the sentence "The new law will ___ smoking in public places" is',
 '["permit","prohibit","allow","encourage"]', 1,
 'PROHIBIT means to officially forbid something. The new law forbids/bans smoking in public places.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a subordinate clause?',
 '["The sun set.","She sang a song.","Because he was tired","Go home!"]', 2,
 '"Because he was tired" is a subordinate (dependent) adverbial clause - it cannot stand alone as a complete sentence.', 'medium'),

(v_subject_id, v_topic_id, 'What is the plural of "criterion"?',
 '["Criterions","Criteria","Criterias","Criterions"]', 1,
 'Criterion has the Greek plural CRITERIA. Other examples: phenomenon/phenomena, datum/data.', 'medium'),

(v_subject_id, v_topic_id, 'The expression "to burn the midnight oil" means',
 '["To waste energy","To work or study late into the night","To cause a fire","To be reckless"]', 1,
 'The idiom "burn the midnight oil" means to work or study very late at night.', 'easy'),

(v_subject_id, v_topic_id, 'Identify the grammatical error: "The committee have reached their decision."',
 '["No error - collective nouns can take plural verbs","Committee should take singular verb: has","Have is wrong; use having","Decision should be decisions"]', 0,
 'Collective nouns (committee, team) can take either singular or plural verbs in British English. Both are acceptable.', 'hard'),

(v_subject_id, v_topic_id, 'The word "unanimous" means',
 '["Sharing a common boundary","In complete agreement","Acting independently","Existing at the same time"]', 1,
 'Unanimous means all members of a group are in full agreement (e.g., a unanimous decision).', 'medium'),

(v_subject_id, v_topic_id, 'Which sentence is in the future perfect tense?',
 '["She will finish the work.","She will have finished the work by noon.","She is finishing the work.","She finishes the work."]', 1,
 'Future perfect tense (will + have + past participle) expresses completion before a future time.', 'medium'),

(v_subject_id, v_topic_id, 'A word formed by taking the initial letters of a phrase is called',
 '["Acronym","Abbreviation","Contraction","Portmanteau"]', 0,
 'An acronym is a word formed from initial letters of a phrase (e.g., NASA, WAEC, UNESCO).', 'medium'),

(v_subject_id, v_topic_id, 'The rhetorical device of repetition at the beginning of successive clauses is',
 '["Epistrophe","Anaphora","Chiasmus","Asyndeton"]', 1,
 'Anaphora is the repetition of a word or phrase at the beginning of successive clauses (e.g., "We shall fight on the beaches, we shall fight on the landing grounds...").', 'hard'),

(v_subject_id, v_topic_id, 'Choose the correct spelling:',
 '["Accomodate","Accommodate","Acomodate","Acommodate"]', 1,
 'The correct spelling is ACCOMMODATE (double c and double m).', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a transitive verb?',
 '["Sleep","Arrive","Eat","Come"]', 2,
 'A transitive verb requires a direct object: "eat" (eat what? - requires an object). Sleep, arrive, and come are intransitive.', 'medium'),

(v_subject_id, v_topic_id, 'The term "register" in language refers to',
 '["A type of musical instrument","The variety of language used in a particular social situation","A book for recording names","The grammar of a language"]', 1,
 'Register is the type of language appropriate to a particular situation (formal, informal, technical, etc.).', 'medium'),

(v_subject_id, v_topic_id, 'In English, a morpheme is',
 '["A complete sentence","The smallest unit of meaning in language","A type of punctuation","A figure of speech"]', 1,
 'A morpheme is the smallest meaningful unit of language (e.g., "dogs" has two morphemes: "dog" + "s").', 'hard'),

(v_subject_id, v_topic_id, 'Identify the tense: "By the time she arrives, we will have eaten."',
 '["Simple future","Future perfect","Future continuous","Present perfect"]', 1,
 'Will + have + past participle (will have eaten) is the FUTURE PERFECT tense.', 'medium'),

(v_subject_id, v_topic_id, 'The opposite (antonym) of "exacerbate" is',
 '["Worsen","Intensify","Alleviate","Aggravate"]', 2,
 'Exacerbate means to make a problem worse. ALLEVIATE means to make it better/reduce it.', 'hard'),

(v_subject_id, v_topic_id, 'The phrase "all intents and purposes" is an example of',
 '["A simile","An idiom","A metaphor","An oxymoron"]', 1,
 '"For all intents and purposes" is a common English idiom meaning in every practical sense or effectively.', 'medium'),

(v_subject_id, v_topic_id, 'Which of these sentences is in the active voice?',
 '["The ball was kicked by the boy.","The car was repaired.","She wrote the letter.","The cake was eaten."]', 2,
 'Active voice: subject (she) + verb (wrote) + object (the letter). The subject performs the action.', 'easy'),

(v_subject_id, v_topic_id, 'What does the suffix "-ology" mean?',
 '["Fear of","Study of","Lack of","In favour of"]', 1,
 'The suffix -ology means "the study of" (e.g., biology = study of life, geology = study of earth).', 'easy'),

(v_subject_id, v_topic_id, 'Choose the sentence with correct subject-verb agreement:',
 '["The news are shocking.","The news is shocking.","News are always shocking.","Some news are shocking."]', 1,
 '"News" is uncountable and takes a singular verb: "The news IS shocking."', 'medium'),

(v_subject_id, v_topic_id, 'A word that modifies a noun is called',
 '["An adverb","An adjective","A preposition","A conjunction"]', 1,
 'An ADJECTIVE modifies (describes) a noun or pronoun (e.g., a beautiful flower, the tall man).', 'easy'),

(v_subject_id, v_topic_id, 'The phrase "a blessing in disguise" means',
 '["An obvious advantage","Something that seems bad but turns out to be good","A fake blessing","An unexpected danger"]', 1,
 '"A blessing in disguise" refers to something that appears negative at first but ultimately proves to be beneficial.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following contains a gerund?',
 '["She is swimming.","Swimming is good exercise.","She swam yesterday.","She will swim tomorrow."]', 1,
 'A gerund is a verb + -ing used as a noun. In "SWIMMING is good exercise," swimming is a gerund (subject of the sentence).', 'medium'),

(v_subject_id, v_topic_id, 'Identify the sentence with correct use of the apostrophe:',
 '["The boys bicycle is red.","The boys'' bicycle is red.","The boy''s bicycle is red.","The boys''s bicycle is red."]', 2,
 'For singular possession: add apostrophe + s: "The BOY''S bicycle." For plural boys, it would be "the boys'' bicycle."', 'medium'),

(v_subject_id, v_topic_id, 'The word "fortuitous" means',
 '["Fortunate","Happening by chance (not necessarily fortunate)","Strong","Delayed"]', 1,
 'Fortuitous means happening by chance or accident - it does not necessarily mean fortunate (though commonly confused).', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following correctly uses a semicolon?',
 '["She likes tea; and coffee.","I love reading; she prefers writing.","Go to the shop; buy bread.","I am tired; so I will sleep."]', 1,
 'Semicolons join two independent clauses of equal importance: "I love reading; she prefers writing."', 'medium'),

(v_subject_id, v_topic_id, 'The literary term for a story within a story is called',
 '["A subplot","Frame narrative (story within a story)","An epilogue","A prologue"]', 1,
 'A frame narrative (frame story) is a technique where a main story contains one or more embedded narratives.', 'hard'),

(v_subject_id, v_topic_id, 'Choose the correct preposition: "She is interested ___ learning French."',
 '["at","on","in","for"]', 2,
 '"Interested IN" is the correct collocation: "She is interested IN learning French."', 'easy'),

(v_subject_id, v_topic_id, 'The term "coherence" in essay writing refers to',
 '["The number of paragraphs","Logical flow and clear connection of ideas","Correct spelling","Using long sentences"]', 1,
 'Coherence means the ideas in a piece of writing flow logically and connect clearly to each other.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is an example of a compound sentence?',
 '["She ran fast.","Because she was late, she ran.","She ran fast, but she missed the bus.","Running fast, she missed the bus."]', 2,
 'A compound sentence joins two independent clauses with a coordinating conjunction: "She ran fast, BUT she missed the bus."', 'medium'),

(v_subject_id, v_topic_id, 'What is the meaning of the word "ambivalent"?',
 '["Very certain","Having mixed or contradictory feelings about something","Completely against","In strong support of"]', 1,
 'Ambivalent means having contradictory or mixed feelings about something - neither strongly for nor against.', 'hard'),

(v_subject_id, v_topic_id, 'The correct plural of "syllabus" is',
 '["Syllabi or syllabuses","Syllabis","Syllabuses only","Syllabi only"]', 0,
 'Syllabus has two accepted plurals: the Latin form SYLLABI and the anglicised SYLLABUSES. Both are correct.', 'medium'),

(v_subject_id, v_topic_id, 'In the sentence "Although tired, she continued working," the underlined clause is an',
 '["Adjective clause","Noun clause","Adverb clause","Independent clause"]', 2,
 '"Although tired" is an adverb clause of concession, modifying the main verb.', 'medium');

END $$;
