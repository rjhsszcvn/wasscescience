/*
  # Add Questions for English, Biology, Chemistry, Physics, Geography, Further Maths

  Adds comprehensive WASSCE-style questions across all subjects that need more questions.
  Each subject gets ~10-15 new questions covering key WASSCE topics.
*/

INSERT INTO quiz_questions (topic_id, subject_id, question, options, correct_answer, explanation, difficulty) VALUES

-- ===== ENGLISH LANGUAGE =====

-- Grammar: Parts of Speech (b1000002-0000-0000-0000-000000000002)
('b1000002-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000002',
 'In the sentence "She sings beautifully", the word "beautifully" is a:',
 '["Adjective","Adverb","Conjunction","Preposition"]', 1,
 '"Beautifully" modifies the verb "sings" telling us HOW she sings — it is an adverb of manner. Adjectives modify nouns/pronouns, not verbs.', 'easy'),

('b1000002-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000002',
 'Choose the correct sentence with proper subject-verb agreement:',
 '["The committee have reached their decision.","Neither the teacher nor the students was prepared.","Each of the boys are responsible.","The news are very disturbing today."]', 0,
 '"The committee" can be treated as singular or plural in British English. Options B (should be "were"), C (should be "is"), and D (News is singular — "is") all have agreement errors.', 'medium'),

('b1000002-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000002',
 'Which of the following is an example of a collective noun?',
 '["Happiness","Flock","Running","Beautiful"]', 1,
 'A collective noun refers to a group of people or things as a single unit. "Flock" (of birds/sheep) is collective. "Happiness" is abstract, "running" is a gerund, "beautiful" is an adjective.', 'easy'),

-- Lexis and Structure (b1000002-0000-0000-0000-000000000005)
('b1000002-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000002',
 'Select the word closest in meaning to "benevolent":',
 '["Cruel","Generous","Intelligent","Brave"]', 1,
 '"Benevolent" means well-meaning and kindly, especially in giving. It comes from Latin "bene" (well) + "vole" (wish). "Generous" is the closest synonym.', 'medium'),

('b1000002-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000002',
 'The word "reticent" most nearly means:',
 '["Talkative","Reserved or reluctant to speak","Forgetful","Argumentative"]', 1,
 '"Reticent" describes someone who is not inclined to speak freely — reserved or restrained in speech. Do not confuse it with "reluctant" (unwilling to do something).', 'hard'),

('b1000002-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000002',
 'Select the option that best fills the gap: "The minister arrived _____ the ceremony had started."',
 '["before","after","when","because"]', 1,
 'Context indicates the minister arrived late (after the ceremony had begun). "After" correctly shows sequence. "Before" would mean he arrived early.', 'easy'),

-- Figures of Speech (b1000002-0000-0000-0000-000000000007)
('b1000002-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000002',
 '"The wind whispered through the trees" is an example of:',
 '["Simile","Metaphor","Personification","Hyperbole"]', 2,
 'Personification gives human qualities to non-human things. The wind "whispered" — whispering is a human action. This makes the description vivid and engaging.', 'easy'),

('b1000002-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000002',
 '"He ate a mountain of food" is an example of:',
 '["Metaphor","Simile","Personification","Hyperbole"]', 3,
 'Hyperbole is deliberate exaggeration for effect. "A mountain of food" exaggerates the amount to create a vivid impression. A simile would use "like" or "as".', 'easy'),

-- Comprehension Skills (b1000002-0000-0000-0000-000000000003)
('b1000002-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000002',
 'In reading comprehension, "inference" means:',
 '["Copying directly from the text","Drawing conclusions not directly stated","Summarizing the main ideas","Identifying the writer''s tone"]', 1,
 'Inference involves reading between the lines — drawing logical conclusions from evidence in the text that are not explicitly stated. It is a key higher-order comprehension skill.', 'medium'),

-- Tenses and Verb Forms (04f29c6a-5df6-414e-942c-f56a5f504101)
('04f29c6a-5df6-414e-942c-f56a5f504101', 'a1000000-0000-0000-0000-000000000002',
 'Choose the correct tense: "By the time she arrived, we _____ dinner."',
 '["have finished","had finished","finished","were finishing"]', 1,
 'The past perfect "had finished" is used for an action that was completed BEFORE another past action ("arrived"). This is the sequence: finished dinner → she arrived.', 'medium'),

('04f29c6a-5df6-414e-942c-f56a5f504101', 'a1000000-0000-0000-0000-000000000002',
 'The sentence "If I were rich, I would travel the world" uses the:',
 '["First conditional","Second conditional","Third conditional","Zero conditional"]', 1,
 'The second conditional uses "if + past simple" + "would + infinitive" for unreal or hypothetical present/future situations. "If I were rich" is hypothetical.', 'hard'),

-- Oral English (b1000002-0000-0000-0000-000000000004)
('b1000002-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000002',
 'How many vowel sounds are there in Standard British English?',
 '["5","12","20","26"]', 2,
 'Standard British English (Received Pronunciation) has approximately 20 vowel sounds: 12 monophthongs (pure vowels) and 8 diphthongs. This differs from the 5 vowel letters.', 'hard'),

-- ===== BIOLOGY =====

-- Cell Biology (b1000005-0000-0000-0000-000000000001)
('b1000005-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000005',
 'The organelle responsible for producing energy (ATP) through cellular respiration is the:',
 '["Nucleus","Ribosome","Mitochondria","Vacuole"]', 2,
 'Mitochondria are the "powerhouses of the cell" — they carry out aerobic respiration, converting glucose and oxygen into ATP (energy), CO₂, and water.', 'easy'),

('b1000005-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000005',
 'Which organelle is found in plant cells but NOT in animal cells?',
 '["Mitochondria","Cell membrane","Chloroplast","Ribosome"]', 2,
 'Chloroplasts are found only in plant cells and some algae. They contain chlorophyll and carry out photosynthesis. Animal cells lack chloroplasts.', 'easy'),

('b1000005-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000005',
 'Osmosis is defined as the movement of:',
 '["Solute molecules from low to high concentration","Water molecules from high to low water potential through a semi-permeable membrane","All molecules from high to low concentration","Glucose from source to sink"]', 1,
 'Osmosis is the passive movement of water molecules through a selectively permeable membrane from a region of high water potential (dilute solution) to low water potential (concentrated solution).', 'medium'),

-- Ecology (b1000005-0000-0000-0000-000000000003)
('b1000005-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000005',
 'An organism that feeds on dead organic matter is called a:',
 '["Carnivore","Herbivore","Detritivore/Decomposer","Autotroph"]', 2,
 'Detritivores and decomposers (bacteria, fungi, earthworms) feed on dead organic matter (detritus). They are essential for nutrient cycling and returning minerals to the soil.', 'easy'),

('b1000005-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000005',
 'The total dry mass of living organisms in an ecosystem is called:',
 '["Biodiversity","Biomass","Biome","Biosphere"]', 1,
 'Biomass is the total dry mass of living organisms (or a specific group) in a given area at a given time. It is measured in g/m² or kg/ha and represents stored energy.', 'medium'),

-- Respiration (b1000005-0000-0000-0000-000000000005)
('b1000005-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000005',
 'The word equation for aerobic respiration is:',
 '["Glucose → lactic acid + energy","Glucose + oxygen → carbon dioxide + water + energy","Carbon dioxide + water → glucose + oxygen","Glucose → ethanol + CO₂ + energy"]', 1,
 'Aerobic respiration: C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + energy (ATP). It produces 38 ATP molecules per glucose — much more than anaerobic respiration.', 'easy'),

-- Reproduction (b1000005-0000-0000-0000-000000000009)
('b1000005-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000005',
 'In human reproduction, fertilization normally occurs in the:',
 '["Uterus","Ovary","Fallopian tube (oviduct)","Cervix"]', 2,
 'Fertilization (fusion of sperm and egg) normally occurs in the upper third of the fallopian tube (oviduct). The resulting zygote then travels to the uterus for implantation.', 'medium'),

-- Genetics (b1000005-0000-0000-0000-000000000002)
('b1000005-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000005',
 'If a tall plant (TT) is crossed with a dwarf plant (tt), what proportion of the offspring will be tall?',
 '["25%","50%","75%","100%"]', 3,
 'TT × tt → all Tt offspring. Since T (tall) is dominant over t (dwarf), all 100% of the F1 offspring (Tt) will be phenotypically tall, though all are heterozygous.', 'medium'),

('b1000005-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000005',
 'The physical appearance of an organism as a result of its genetic makeup is called its:',
 '["Genotype","Phenotype","Allele","Chromosome"]', 1,
 'Phenotype is the observable physical characteristics of an organism (height, colour, blood group). Genotype is the genetic constitution that determines the phenotype.', 'easy'),

-- Transport (b1000005-0000-0000-0000-000000000006)
('b1000005-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000005',
 'In flowering plants, water and mineral salts are transported from roots to leaves through the:',
 '["Phloem","Xylem","Cortex","Epidermis"]', 1,
 'Xylem vessels transport water and dissolved mineral salts from roots upward to leaves (transpiration stream). Phloem transports sugars from leaves to the rest of the plant.', 'easy'),

-- ===== CHEMISTRY =====

-- Chemical Bonding (b1000004-0000-0000-0000-000000000002)
('b1000004-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000004',
 'An ionic bond is formed by:',
 '["Sharing of electrons between atoms","Transfer of electrons from one atom to another","Sharing of protons","Attraction between similar charges"]', 1,
 'Ionic bonds form when one atom transfers electron(s) to another, creating oppositely charged ions (cation+ and anion−). These opposite charges attract each other electrostatically.', 'easy'),

('b1000004-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000004',
 'Which type of bonding is responsible for the high boiling point of water?',
 '["Covalent bonding","Ionic bonding","Hydrogen bonding","Metallic bonding"]', 2,
 'Hydrogen bonds between water molecules are unusually strong intermolecular forces. Breaking these bonds requires significant energy, giving water an anomalously high boiling point (100°C).', 'medium'),

-- Rates of Reaction (b1000004-0000-0000-0000-000000000006)
('b1000004-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000004',
 'A catalyst increases the rate of a chemical reaction by:',
 '["Increasing the temperature","Providing an alternative pathway with lower activation energy","Increasing the concentration of reactants","Increasing pressure"]', 1,
 'A catalyst provides an alternative reaction pathway with a lower activation energy. More reactant molecules can overcome the lower energy barrier, increasing the reaction rate without being consumed.', 'medium'),

('b1000004-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000004',
 'According to Le Chatelier''s Principle, if the pressure of a reaction system is increased, the equilibrium will shift:',
 '["Toward the side with more moles of gas","Toward the side with fewer moles of gas","To the right always","To the left always"]', 1,
 'Le Chatelier''s Principle states that a system responds to oppose changes imposed on it. Increasing pressure favours the side with fewer moles of gas to reduce pressure.', 'hard'),

-- Metals (b1000004-0000-0000-0000-000000000008)
('b1000004-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000004',
 'Which metal is extracted from its ore by electrolysis rather than by reduction with carbon?',
 '["Iron","Copper","Aluminium","Zinc"]', 2,
 'Aluminium (Al) is too reactive to be reduced by carbon economically, so it is extracted by electrolysis of molten aluminium oxide (Al₂O₃) in the Hall-Héroult process.', 'hard'),

('b1000004-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000004',
 'In the activity series, which metal is most reactive?',
 '["Gold","Silver","Iron","Potassium"]', 3,
 'Potassium (K) is the most reactive common metal — it reacts violently with water and oxygen. The reactivity series from top to bottom: K > Na > Ca > Mg > Al > Zn > Fe > Pb > Cu > Ag > Au.', 'medium'),

-- Organic Chemistry (b1000004-0000-0000-0000-000000000004)
('b1000004-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000004',
 'Ethanol (C₂H₅OH) belongs to which homologous series?',
 '["Alkanes","Alkenes","Alcohols","Carboxylic acids"]', 2,
 'Ethanol has the functional group –OH (hydroxyl group) which is characteristic of alcohols. The general formula for alcohols is CₙH₂ₙ₊₁OH.', 'easy'),

('b1000004-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000004',
 'The addition of bromine water to an alkene produces:',
 '["No reaction","A colourless dibromo compound","A coloured carbonate","Water and CO₂"]', 1,
 'Alkenes decolourise bromine water in an electrophilic addition reaction, adding Br₂ across the C=C double bond to form a colourless dibromoalkane. This is a test for unsaturation.', 'medium'),

-- Electrochemistry (b1000004-0000-0000-0000-000000000005)
('b1000004-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000004',
 'During electrolysis of dilute sulphuric acid, what is produced at the cathode?',
 '["Oxygen","Chlorine","Hydrogen","Sulphur dioxide"]', 2,
 'At the cathode (negative electrode), H⁺ ions are reduced: 2H⁺ + 2e⁻ → H₂↑. At the anode, OH⁻ is oxidized producing oxygen: 4OH⁻ → 2H₂O + O₂↑ + 4e⁻.', 'medium'),

-- Redox (b1000004-0000-0000-0000-000000000007)
('b1000004-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000004',
 'Oxidation in terms of electrons means:',
 '["Gain of electrons","Loss of electrons","Gain of protons","Loss of oxygen"]', 1,
 'OIL RIG: Oxidation Is Loss (of electrons), Reduction Is Gain (of electrons). Oxidation increases oxidation number; reduction decreases it.', 'easy'),

-- ===== PHYSICS =====

-- Waves and Sound (b1000003-0000-0000-0000-000000000003)
('b1000003-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000003',
 'Sound travels fastest in which medium?',
 '["Vacuum","Air","Water","Steel"]', 3,
 'Sound travels fastest in solids (steel ~5,100 m/s) because particles are closest together, then liquids (~1,500 m/s), then gases (~340 m/s in air). Sound cannot travel through vacuum.', 'easy'),

('b1000003-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000003',
 'The number of complete waves that pass a point per second is called the:',
 '["Wavelength","Amplitude","Frequency","Period"]', 2,
 'Frequency (f) is the number of complete oscillations or waves per second, measured in Hertz (Hz). Period (T) = 1/f. Wavelength is the distance between successive crests.', 'easy'),

-- Light and Optics (b1000003-0000-0000-0000-000000000005)
('b1000003-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000003',
 'A converging (convex) lens is used to correct which vision defect?',
 '["Myopia (short-sightedness)","Hyperopia (long-sightedness)","Astigmatism","Colour blindness"]', 1,
 'A convex (converging) lens adds refracting power to correct hyperopia (long-sightedness), where the eye cannot focus on near objects. Concave lenses correct myopia.', 'medium'),

('b1000003-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000003',
 'The speed of light in a vacuum is approximately:',
 '["3 × 10⁸ m/s","3 × 10⁶ m/s","3 × 10¹⁰ m/s","3 × 10⁴ m/s"]', 0,
 'The speed of light in a vacuum is c = 3 × 10⁸ m/s (300,000 km/s). This is the universal speed limit — no matter or information can travel faster.', 'easy'),

-- Pressure and Fluids (b1000003-0000-0000-0000-000000000008)
('b1000003-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000003',
 'Pressure in a fluid increases with:',
 '["Decreasing depth","Increasing surface area","Increasing depth","Decreasing temperature"]', 2,
 'Fluid pressure p = ρgh, where ρ is fluid density, g is gravitational acceleration, and h is depth. Pressure increases linearly with depth below the fluid surface.', 'easy'),

-- Magnetism (b1000003-0000-0000-0000-000000000006)
('b1000003-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000003',
 'Fleming''s Left Hand Rule is used to determine the:',
 '["Direction of current in a conductor","Direction of force on a current-carrying conductor in a magnetic field","Direction of magnetic field","Magnitude of EMF induced"]', 1,
 'Fleming''s Left Hand Rule (FBI rule) uses the thumb, index finger, and middle finger for Force (motion), B (magnetic field), and I (current) respectively to find force direction in motors.', 'medium'),

-- Radioactivity (b1000003-0000-0000-0000-000000000009)
('b1000003-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000003',
 'Which type of nuclear radiation has the greatest penetrating power?',
 '["Alpha (α) particles","Beta (β) particles","Gamma (γ) rays","Neutrons"]', 2,
 'Gamma rays (γ) are electromagnetic radiation with the highest penetrating power — they can penetrate thick lead and concrete. Alpha particles are stopped by paper; beta by thin aluminium.', 'easy'),

('b1000003-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000003',
 'The half-life of a radioactive substance is:',
 '["The time for all radioactive atoms to decay","The time for half the radioactive atoms to decay","The time for one atom to decay","The age of the substance"]', 1,
 'Half-life (t½) is the time taken for half of the radioactive nuclei in a sample to decay. It is a constant for each radioisotope, regardless of temperature, pressure, or chemical state.', 'easy'),

-- Electricity (b1000003-0000-0000-0000-000000000002)
('b1000003-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000003',
 'In a series circuit with resistors R₁ = 4Ω and R₂ = 6Ω connected to a 20V battery, the current flowing is:',
 '["0.5 A","2 A","10 A","4 A"]', 1,
 'Total resistance = R₁ + R₂ = 4 + 6 = 10Ω. Using Ohm''s Law: I = V/R = 20/10 = 2 A. In series circuits, total resistance is the sum of individual resistances.', 'medium'),

-- ===== GEOGRAPHY =====

-- Plate Tectonics (b1000006-0000-0000-0000-000000000001)
('b1000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000006',
 'The theory that explains the movement of large sections of the Earth''s crust is called:',
 '["Continental shelf theory","Plate tectonics","Geomorphology","Biogeography"]', 1,
 'Plate tectonics theory explains how the Earth''s lithosphere is divided into plates that move relative to each other, causing earthquakes, volcanoes, and mountain building at plate boundaries.', 'easy'),

-- Population (b1000006-0000-0000-0000-000000000003)
('b1000006-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000006',
 'The movement of people from rural areas to urban areas is called:',
 '["Emigration","Rural-urban migration","Urbanisation","Population explosion"]', 1,
 'Rural-urban migration is the internal movement of people from rural to urban areas in search of employment, education, and better services. It is a major driver of urbanisation in West Africa.', 'easy'),

('b1000006-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000006',
 'The birth rate is expressed as the number of live births per:',
 '["1,000 population per year","100 population per year","10,000 population per year","Million population per year"]', 0,
 'Birth rate (crude birth rate) = number of live births per 1,000 people per year. West African countries typically have birth rates of 35–45 per 1,000, among the highest in the world.', 'medium'),

-- Map Reading (b1000006-0000-0000-0000-000000000004)
('b1000006-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000006',
 'On a topographic map, contour lines that are close together indicate:',
 '["Flat land","Gentle slopes","Steep slopes","River valleys"]', 2,
 'Contour lines represent equal elevation. When they are close together, the elevation changes rapidly over a short distance — indicating steep slopes. Widely-spaced contours indicate gentle slopes.', 'easy'),

-- Vegetation (b1000006-0000-0000-0000-000000000008)
('b1000006-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000006',
 'The vegetation zone in West Africa that receives the highest annual rainfall and is characterized by dense, multi-layered forest is the:',
 '["Sudan Savanna","Sahel","Guinea Savanna","Tropical Rainforest"]', 3,
 'The tropical rainforest zone (along the coast of Ghana, Nigeria, Ivory Coast, Liberia) receives 1,500–3,000 mm annually. It has tall canopy trees, diverse species, and dense undergrowth.', 'easy'),

-- Rivers (b1000006-0000-0000-0000-000000000005)
('b1000006-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000006',
 'The feature formed when a meander loop is cut off from the main river is called a(n):',
 '["Delta","Waterfall","Oxbow lake","Flood plain"]', 2,
 'An oxbow lake forms when a river meander loop becomes isolated from the main channel. The river cuts across the neck of the bend, leaving a curved, crescent-shaped lake.', 'medium'),

('b1000006-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000006',
 'The largest lake in West Africa, formed by the Akosombo Dam, is:',
 '["Lake Chad","Lake Volta","Lake Tanganyika","Lake Victoria"]', 1,
 'Lake Volta in Ghana is the largest man-made lake in West Africa and one of the largest in the world by surface area. It was created by the Akosombo Dam on the Volta River.', 'easy'),

-- ===== FURTHER MATHEMATICS =====

-- Complex Numbers (b1000007-0000-0000-0000-000000000003)
('b1000007-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000007',
 'The modulus of the complex number z = 3 + 4i is:',
 '["7","1","5","12"]', 2,
 '|z| = √(a² + b²) = √(3² + 4²) = √(9 + 16) = √25 = 5. The modulus represents the distance from the origin to the point (3, 4) on the Argand diagram.', 'medium'),

('b1000007-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000007',
 'The complex conjugate of z = 5 − 3i is:',
 '["5 + 3i","−5 + 3i","−5 − 3i","3 + 5i"]', 0,
 'The complex conjugate of a + bi is a − bi. So the conjugate of 5 − 3i is 5 + 3i. Multiplying a complex number by its conjugate gives a real number: |z|².', 'easy'),

-- Matrices (b1000007-0000-0000-0000-000000000002)
('b1000007-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000007',
 'The determinant of the matrix [[2, 3], [1, 4]] is:',
 '["11","5","8","14"]', 1,
 'det([[a,b],[c,d]]) = ad - bc = (2)(4) - (3)(1) = 8 - 3 = 5. The determinant is used to find the inverse and solve systems of equations.', 'medium'),

-- Calculus: Differentiation (b1000007-0000-0000-0000-000000000001)
('b1000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000007',
 'If f(x) = 5x³ − 2x² + 7x − 3, then f''(x) is:',
 '["5x² − 2x + 7","15x² − 4x + 7","15x² − 4x","15x³ − 4x² + 7"]', 1,
 'Differentiating: d/dx(5x³) = 15x², d/dx(−2x²) = −4x, d/dx(7x) = 7, d/dx(−3) = 0. Therefore f''(x) = 15x² − 4x + 7.', 'medium'),

('b1000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000007',
 'The derivative of sin(x) with respect to x is:',
 '["−cos(x)","cos(x)","−sin(x)","tan(x)"]', 1,
 'd/dx[sin(x)] = cos(x). This is a fundamental derivative. Similarly: d/dx[cos(x)] = −sin(x), d/dx[tan(x)] = sec²(x).', 'easy'),

-- Probability (b1000007-0000-0000-0000-000000000008)
('b1000007-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000007',
 'A bag contains 4 red and 6 blue balls. If one ball is selected at random, the probability of selecting a red ball is:',
 '["4/6","6/10","4/10","10/4"]', 2,
 'P(red) = number of red balls / total balls = 4/(4+6) = 4/10 = 2/5. Probability must be between 0 and 1.', 'easy'),

-- Binomial Theorem (b1000007-0000-0000-0000-000000000007)
('b1000007-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000007',
 'The expansion of (1 + x)ⁿ using the binomial theorem is valid for |x| < 1 when n is:',
 '["A positive integer only","Any positive integer","Any real number","A negative integer only"]', 2,
 'The binomial theorem expansion (1+x)ⁿ = 1 + nx + n(n-1)x²/2! + ... converges for |x| < 1 when n is any real number (positive, negative, or fractional).', 'hard'),

-- Trigonometric Identities (b1000007-0000-0000-0000-000000000010)
('b1000007-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000007',
 'Which of the following is a Pythagorean trigonometric identity?',
 '["sin²θ + cos²θ = 2","sin²θ − cos²θ = 1","sin²θ + cos²θ = 1","sinθ × cosθ = 1"]', 2,
 'The fundamental Pythagorean identity is sin²θ + cos²θ = 1, derived from Pythagoras'' theorem applied to a unit circle. From it: 1 + tan²θ = sec²θ and 1 + cot²θ = cosec²θ.', 'easy');

-- Backfill subject_id for newly inserted questions
UPDATE quiz_questions qq
SET subject_id = t.subject_id
FROM topics t
WHERE qq.topic_id = t.id
  AND qq.subject_id IS NULL;
