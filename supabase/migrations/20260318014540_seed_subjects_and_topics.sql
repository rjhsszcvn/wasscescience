
/*
  # Seed WASSCE Science Subjects, Topics, and Quiz Questions

  ## Summary
  Populates the platform with:
  - 7 premium WASSCE science subjects
  - Multiple topics per subject with full markdown notes
  - Quiz questions with answers and explanations for each topic

  ## Subjects Added
  1. Mathematics
  2. English Language
  3. Physics
  4. Chemistry
  5. Biology
  6. Geography
  7. Further Mathematics
*/

-- Insert Subjects
INSERT INTO subjects (id, name, description, icon, color, is_premium, order_index) VALUES
  ('a1000000-0000-0000-0000-000000000001', 'Mathematics', 'Core WASSCE Mathematics covering algebra, geometry, statistics, and more', 'calculator', '#2563EB', true, 1),
  ('a1000000-0000-0000-0000-000000000002', 'English Language', 'Comprehensive English covering grammar, comprehension, and writing skills', 'book-open', '#059669', true, 2),
  ('a1000000-0000-0000-0000-000000000003', 'Physics', 'Mechanics, electricity, waves, optics and modern physics', 'zap', '#DC2626', true, 3),
  ('a1000000-0000-0000-0000-000000000004', 'Chemistry', 'Organic, inorganic and physical chemistry with practical applications', 'flask-conical', '#7C3AED', true, 4),
  ('a1000000-0000-0000-0000-000000000005', 'Biology', 'Cell biology, genetics, ecology, physiology and evolution', 'leaf', '#16A34A', true, 5),
  ('a1000000-0000-0000-0000-000000000006', 'Geography', 'Physical and human geography, maps, climate and population studies', 'globe', '#EA580C', true, 6),
  ('a1000000-0000-0000-0000-000000000007', 'Further Mathematics', 'Advanced calculus, complex numbers, vectors, matrices and statistics', 'sigma', '#0891B2', true, 7)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Mathematics
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000001', 'Algebra: Equations and Inequalities', 'Solving linear and quadratic equations, inequalities',
  '## Algebra: Equations and Inequalities

### Linear Equations
A linear equation has the form **ax + b = c**, where a ≠ 0.

**Steps to solve:**
1. Isolate the variable term
2. Divide both sides by the coefficient

**Example:** Solve 3x + 7 = 19
- 3x = 19 - 7 = 12
- x = 12/3 = **4**

### Quadratic Equations
The standard form is **ax² + bx + c = 0**.

**Methods of solution:**
1. **Factorization** – Express as (px + q)(rx + s) = 0
2. **Quadratic Formula:** x = (-b ± √(b²-4ac)) / 2a
3. **Completing the square**

**Example:** Solve x² - 5x + 6 = 0
- Factorize: (x-2)(x-3) = 0
- Solutions: x = 2 or x = 3

### Inequalities
Inequalities use symbols: >, <, ≥, ≤

**Key rule:** When multiplying or dividing by a negative number, **reverse the inequality sign**.

**Example:** Solve -2x > 8
- Divide by -2 (reverse sign): x < -4

### Word Problems
Always:
1. Define the variable(s)
2. Translate to an equation
3. Solve and verify',
  1, 25),
  ('b1000001-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000001', 'Geometry: Circles and Theorems', 'Circle theorems, angles, arcs and tangents',
  '## Geometry: Circles and Theorems

### Circle Definitions
- **Radius (r):** Distance from centre to any point on circle
- **Diameter (d):** d = 2r
- **Chord:** A line joining two points on the circle
- **Arc:** Part of the circumference
- **Sector:** Region bounded by two radii and an arc
- **Segment:** Region between a chord and an arc

### Key Circle Theorems
1. **Angle at Centre = 2 × Angle at Circumference** (same arc)
2. **Angles in the Same Segment are Equal**
3. **Angle in a Semicircle = 90°**
4. **Opposite Angles of a Cyclic Quadrilateral sum to 180°**
5. **Tangent-Radius Theorem:** Tangent ⊥ radius at point of tangency
6. **Alternate Segment Theorem:** Angle between tangent and chord = inscribed angle in alternate segment

### Formulas
- Circumference = 2πr = πd
- Area of circle = πr²
- Arc length = (θ/360) × 2πr
- Area of sector = (θ/360) × πr²',
  2, 30),
  ('b1000001-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000001', 'Statistics and Probability', 'Mean, median, mode, standard deviation and probability',
  '## Statistics and Probability

### Measures of Central Tendency
- **Mean (x̄):** Sum of values ÷ number of values
- **Median:** Middle value when arranged in order
- **Mode:** Most frequently occurring value

**Example:** Data: 3, 7, 5, 7, 9, 2, 7
- Mean = (3+7+5+7+9+2+7)/7 = 40/7 ≈ 5.71
- Median (arranged: 2,3,5,7,7,7,9) = **7**
- Mode = **7**

### Standard Deviation
Measures spread of data.

σ = √[Σ(x - x̄)² / n]

### Probability
- P(event) = Number of favourable outcomes / Total outcomes
- 0 ≤ P(A) ≤ 1
- P(A) + P(A'') = 1

**Addition Rule:** P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
**Multiplication Rule (independent):** P(A ∩ B) = P(A) × P(B)

### Frequency Tables & Histograms
Used to display grouped data efficiently.
Class width must be uniform for area to represent frequency.',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Physics
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000003', 'Mechanics: Newton''s Laws of Motion', 'Forces, mass, acceleration and Newton''s three laws',
  '## Mechanics: Newton''s Laws of Motion

### Newton''s First Law (Inertia)
**"An object remains at rest or in uniform motion unless acted upon by an external force."**

- Objects resist changes in their state of motion
- Mass is a measure of inertia

### Newton''s Second Law
**F = ma**

Where:
- F = net force (Newtons, N)
- m = mass (kg)
- a = acceleration (m/s²)

**Example:** A 5 kg object accelerates at 3 m/s². Find the force.
- F = 5 × 3 = **15 N**

### Newton''s Third Law
**"For every action, there is an equal and opposite reaction."**

Forces always occur in pairs:
- A book on a table: book pushes down (weight), table pushes up (normal force)

### Equations of Motion (SUVAT)
- v = u + at
- s = ut + ½at²
- v² = u² + 2as
- s = ½(u + v)t

Where: s=displacement, u=initial velocity, v=final velocity, a=acceleration, t=time

### Weight and Mass
- **Weight W = mg** (g = 9.8 m/s² or 10 m/s² in WASSCE)
- Mass is constant; Weight varies with gravity',
  1, 30),
  ('b1000003-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000003', 'Electricity: Current, Voltage and Resistance', 'Ohm''s law, circuits, power and energy',
  '## Electricity: Current, Voltage and Resistance

### Key Quantities
- **Current (I):** Flow of charge; measured in Amperes (A). I = Q/t
- **Voltage (V):** Potential difference; measured in Volts (V)
- **Resistance (R):** Opposition to current; measured in Ohms (Ω)

### Ohm''s Law
**V = IR**

**Example:** If I = 2A and R = 5Ω, find V
- V = 2 × 5 = **10 V**

### Series vs Parallel Circuits
**Series:**
- Same current throughout
- Total resistance: R_T = R₁ + R₂ + R₃
- Voltages add up

**Parallel:**
- Same voltage across branches
- Total resistance: 1/R_T = 1/R₁ + 1/R₂ + 1/R₃
- Currents add up

### Power and Energy
- **Power P = IV = I²R = V²/R** (Watts, W)
- **Energy E = Pt** (Joules, J)
- 1 kWh = 3,600,000 J

### Electromotive Force (EMF)
EMF (ε) = terminal voltage + voltage drop across internal resistance
ε = V + Ir where r is internal resistance',
  2, 30),
  ('b1000003-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000003', 'Waves and Sound', 'Wave properties, sound waves, resonance and speed',
  '## Waves and Sound

### Wave Properties
- **Wavelength (λ):** Distance between successive crests/troughs (metres)
- **Frequency (f):** Number of complete waves per second (Hz)
- **Amplitude:** Maximum displacement from equilibrium
- **Speed (v):** v = fλ

### Types of Waves
- **Transverse:** Oscillation perpendicular to direction of travel (light, water waves)
- **Longitudinal:** Oscillation parallel to direction of travel (sound)

### Sound Waves
- Require a medium to travel
- Speed in air ≈ 340 m/s
- Speed is higher in solids and liquids than in gases

### The Electromagnetic Spectrum (High to Low Frequency)
Gamma rays → X-rays → UV → Visible light → Infrared → Microwaves → Radio waves

All travel at **3 × 10⁸ m/s** in a vacuum.

### Resonance
Occurs when a system is driven at its **natural frequency** → amplitude becomes very large.

### Echoes and Sonar
Echo: reflected sound. Minimum distance for echo = v×t/2
SONAR uses sound to measure depth of ocean.',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Chemistry
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000004', 'Atomic Structure and Periodic Table', 'Electrons, protons, neutrons, electronic configuration',
  '## Atomic Structure and Periodic Table

### The Atom
- **Proton:** positive charge, in nucleus, relative mass = 1
- **Neutron:** no charge, in nucleus, relative mass = 1
- **Electron:** negative charge, outside nucleus, mass ≈ negligible

- **Atomic number (Z):** number of protons
- **Mass number (A):** protons + neutrons
- **Isotopes:** Same element, different neutron number

### Electronic Configuration
Electrons fill shells in order: 2, 8, 8, 18...

**Example:** Sodium (Na, Z=11): 2, 8, 1
**Example:** Chlorine (Cl, Z=17): 2, 8, 7

### The Periodic Table
- Elements arranged by increasing atomic number
- **Groups (vertical):** Elements with same number of valence electrons; similar properties
- **Periods (horizontal):** Elements with same number of electron shells

### Trends in the Periodic Table
**Across a period (→):**
- Atomic size decreases
- Ionization energy increases
- Electronegativity increases

**Down a group (↓):**
- Atomic size increases
- Ionization energy decreases
- Metallic character increases',
  1, 30),
  ('b1000004-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000004', 'Chemical Bonding', 'Ionic, covalent and metallic bonding',
  '## Chemical Bonding

### Why Atoms Bond
Atoms bond to achieve a stable (full outer shell) electron configuration.

### Ionic Bonding
- Transfer of electrons from metal to non-metal
- Forms ions: cation (+) and anion (-)
- Example: NaCl — Na loses 1e⁻ to become Na⁺; Cl gains 1e⁻ to become Cl⁻
- Properties: high melting point, conducts electricity when molten/dissolved

### Covalent Bonding
- Sharing of electrons between non-metals
- Can be single (H₂), double (O₂), or triple (N₂) bonds
- Properties: low melting point, poor conductor (usually)

### Metallic Bonding
- Sea of delocalized electrons surrounding positive ion lattice
- Explains: conductivity, malleability, ductility, high melting points

### Polar and Non-polar Molecules
- **Polar:** Unequal sharing of electrons (e.g., H₂O, HCl)
- **Non-polar:** Equal sharing (e.g., H₂, Cl₂, CO₂)
- Polarity determines intermolecular forces and solubility

### VSEPR Theory
Electron pairs repel → determine molecular shape:
- 2 bonds: linear
- 3 bonds: trigonal planar
- 4 bonds: tetrahedral',
  2, 25),
  ('b1000004-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000004', 'Acids, Bases and Salts', 'pH scale, neutralisation, indicators and salt preparation',
  '## Acids, Bases and Salts

### Definitions
- **Acid:** Donates H⁺ ions; pH < 7 (Brønsted-Lowry)
- **Base:** Accepts H⁺ ions / produces OH⁻ in water; pH > 7
- **Alkali:** A soluble base

### Common Acids and Bases
- Acids: HCl (hydrochloric), H₂SO₄ (sulphuric), HNO₃ (nitric), CH₃COOH (ethanoic)
- Bases: NaOH, KOH, Ca(OH)₂, NH₃

### pH Scale
0–6: Acidic | 7: Neutral | 8–14: Alkaline

Indicators:
- Litmus: Red in acid, Blue in alkali
- Universal: Full range
- Phenolphthalein: Colourless in acid, Pink in alkali

### Neutralisation
**Acid + Base → Salt + Water**
Example: HCl + NaOH → NaCl + H₂O

### Salt Preparation
1. **Soluble salts:** Titration or excess acid/base method
2. **Insoluble salts:** Precipitation (mixing two solutions)
3. **Salts from metals:** Metal + acid reaction

### Acid Rain
- Caused by SO₂ and NO₂ in atmosphere
- pH < 5.6
- Harms ecosystems, corrodes buildings',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Biology
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000005-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000005', 'Cell Biology', 'Cell structure, organelles, and cell processes',
  '## Cell Biology

### Cell Theory
1. All living things are made of cells
2. The cell is the basic unit of life
3. All cells come from pre-existing cells

### Types of Cells
| Feature | Prokaryotic | Eukaryotic |
|---------|-------------|------------|
| Nucleus | No membrane | Membrane-bound |
| Size | Smaller (~1-10μm) | Larger (~10-100μm) |
| Examples | Bacteria | Plants, Animals, Fungi |

### Animal Cell Organelles
- **Nucleus:** Controls cell activities; contains DNA
- **Mitochondria:** Site of aerobic respiration; "powerhouse"
- **Ribosomes:** Site of protein synthesis
- **Endoplasmic Reticulum (ER):** Transport of materials; rough ER has ribosomes
- **Golgi Apparatus:** Packages and secretes proteins
- **Lysosome:** Contains digestive enzymes
- **Cell membrane:** Controls what enters/leaves cell

### Plant Cell (additional)
- **Cell wall:** Made of cellulose; gives rigidity
- **Chloroplasts:** Site of photosynthesis; contains chlorophyll
- **Vacuole:** Large central vacuole for storage and turgidity

### Diffusion, Osmosis and Active Transport
- **Diffusion:** Movement from high → low concentration (passive)
- **Osmosis:** Diffusion of water through semi-permeable membrane
- **Active Transport:** Movement against concentration gradient (requires energy/ATP)',
  1, 30),
  ('b1000005-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000005', 'Genetics and Heredity', 'DNA, chromosomes, Mendel''s laws, inheritance',
  '## Genetics and Heredity

### DNA Structure
- Double helix: two strands of nucleotides
- Bases: Adenine-Thymine (A-T), Guanine-Cytosine (G-C)
- Genes: specific sequences of DNA coding for proteins
- Chromosome: tightly coiled DNA + protein

### Key Terms
- **Genotype:** Genetic makeup (e.g., Aa, TT)
- **Phenotype:** Physical appearance
- **Allele:** Alternative forms of a gene
- **Dominant:** Allele that masks the other (capital letter)
- **Recessive:** Masked allele (lowercase letter)
- **Homozygous:** Same alleles (AA or aa)
- **Heterozygous:** Different alleles (Aa)

### Mendel''s Laws
1. **Law of Segregation:** Alleles separate during gamete formation
2. **Law of Independent Assortment:** Alleles of different genes assort independently

### Punnett Square
Used to predict offspring ratios.

**Example (Monohybrid):** Tall (Tt) × Tall (Tt)
```
    T    t
T | TT | Tt |
t | Tt | tt |
```
Ratio: 3 Tall : 1 short

### Sex Determination
- Human sex chromosomes: XX (female), XY (male)
- Sex-linked traits carried on X chromosome (e.g., colour blindness, haemophilia)',
  2, 30),
  ('b1000005-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000005', 'Ecology and Environment', 'Ecosystems, food webs, energy flow and conservation',
  '## Ecology and Environment

### Key Ecological Terms
- **Ecology:** Study of organisms and their environment
- **Ecosystem:** Community of organisms + their physical environment
- **Biome:** Large geographic area with similar climate and organisms
- **Population:** Organisms of same species in an area
- **Community:** All populations in an area

### Food Chains and Webs
**Food chain:** Grass → Grasshopper → Frog → Snake → Hawk

- **Producer:** Makes own food (photosynthesis)
- **Primary Consumer:** Eats producers (herbivores)
- **Secondary Consumer:** Eats primary consumers
- **Tertiary Consumer:** Top predator
- **Decomposer:** Breaks down dead matter (bacteria, fungi)

### Energy Flow
Only **10%** of energy passes to next trophic level.
90% is lost as heat, respiration, excretion.

### Nutrient Cycles
**Carbon Cycle:** Photosynthesis, respiration, decomposition, combustion
**Nitrogen Cycle:** Nitrogen fixation, nitrification, denitrification, decomposition

### Conservation and Biodiversity
Threats: deforestation, pollution, climate change, overhunting
Strategies: national parks, breeding programmes, sustainable farming',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Geography
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000006', 'Plate Tectonics and Earthquakes', 'Tectonic plates, earthquakes, volcanoes',
  '## Plate Tectonics and Earthquakes

### The Earth''s Structure
- **Crust:** Thin outer layer (continental & oceanic)
- **Mantle:** Semi-molten rock; convection currents drive plate movement
- **Outer Core:** Liquid iron and nickel
- **Inner Core:** Solid iron and nickel

### Tectonic Plates
Earth''s crust is divided into large plates that move on the mantle.
Movement rates: 2-10 cm per year.

### Types of Plate Boundaries
1. **Constructive (divergent):** Plates move apart → new crust forms (e.g., Mid-Atlantic Ridge)
2. **Destructive (convergent):** Plates collide → one subducts (e.g., Himalayas, Pacific Ring of Fire)
3. **Conservative (transform):** Plates slide past each other (e.g., San Andreas Fault)

### Earthquakes
- Occur at plate boundaries and fault lines
- **Focus/Hypocentre:** Point underground where earthquake starts
- **Epicentre:** Point on surface directly above focus
- Measured on Richter Scale (logarithmic)

### Volcanoes
- Found at constructive margins and hotspots
- Types: Shield (gentle), Composite (explosive), Cinder Cone
- Products: Lava, ash, pyroclastic flows, gases

### West Africa Context
The West African Craton is stable, but minor seismic activity occurs along the Romanche Fracture Zone.',
  1, 30),
  ('b1000006-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000006', 'Climate and Weather', 'Atmospheric conditions, rainfall types, climate zones',
  '## Climate and Weather

### Weather vs Climate
- **Weather:** Atmospheric conditions at a specific time and place
- **Climate:** Average weather conditions over 30+ years

### Elements of Weather
Temperature, rainfall, humidity, wind speed/direction, atmospheric pressure, cloud cover

### Types of Rainfall
1. **Relief (Orographic):** Air rises over mountains, cools, condenses
2. **Convectional:** Surface heating causes air to rise rapidly; common in tropics
3. **Frontal (Cyclonic):** Warm and cold air masses meet; warm air rises over cold

### Climate Zones
- **Equatorial:** High rainfall year-round, high temperatures (Congo Basin)
- **Tropical Savanna (Guinea Savanna):** Distinct wet and dry seasons (West Africa interior)
- **Sahel:** Semi-arid, transition to desert
- **Desert:** Very low rainfall, extreme temperatures (Sahara)

### West African Climate
- Influenced by ITCZ (Inter-Tropical Convergence Zone)
- Harmattan wind: dry, dusty wind from Sahara (Nov-March)
- Southwest monsoon brings rains (May-October in south)

### Climate Change
- Causes: burning fossil fuels, deforestation
- Effects in Africa: shifting rainfall, droughts, sea level rise, desertification',
  2, 30),
  ('b1000006-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000006', 'Population and Settlement', 'Population distribution, urbanisation, migration',
  '## Population and Settlement

### Population Distribution
Uneven distribution of people across Earth''s surface.

**Factors affecting distribution:**
- Physical: climate, relief, soils, water supply
- Human: economic opportunities, history, political factors

**West Africa:** Dense populations along coasts and rivers; sparse in Sahel/desert

### Population Growth
- **Birth rate:** Births per 1000 people per year
- **Death rate:** Deaths per 1000 people per year
- **Natural increase rate:** Birth rate - Death rate
- **Demographic Transition Model (DTM):** 4 stages of population change

### Population Pyramids
- Wide base = high birth rate
- Narrow top = low life expectancy
- West African countries have broad-based pyramids

### Migration
- **Push factors:** Poverty, conflict, drought, unemployment
- **Pull factors:** Employment, education, security, better services
- **Rural-urban migration:** Major trend in West Africa

### Urbanisation
- Growth of towns and cities
- Over 50% of world now urban
- Challenges: housing, infrastructure, unemployment, pollution
- **Lagos, Accra, Freetown, Monrovia** are major West African cities

### Settlements
- **Nucleated:** Clustered around a centre
- **Dispersed:** Spread out
- **Linear:** Along roads, rivers, or railways',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: English Language
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000002', 'Essay Writing', 'Types of essays, structure, vocabulary and techniques',
  '## Essay Writing

### Types of Essays in WASSCE

#### 1. Argumentative/Discursive Essay
- Present a balanced or one-sided argument
- Use facts, examples, and logical reasoning
- Structure: Introduction → For → Against → Conclusion (or take a stance)

#### 2. Narrative Essay
- Tell a story (real or imagined)
- Use vivid language, dialogue, and description
- Follow: Beginning → Rising action → Climax → Resolution

#### 3. Descriptive Essay
- Describe a person, place, event, or object
- Engage the senses (sight, sound, smell, taste, touch)

#### 4. Letter Writing
- **Formal letter:** Use formal address, proper salutation, clear purpose
- **Informal letter:** Casual tone, to friends/family

### Essay Structure
1. **Introduction:** Hook + background + thesis statement
2. **Body paragraphs:** Topic sentence + evidence + explanation
3. **Conclusion:** Summarize + restate thesis + final thought

### Good Writing Habits
- Use **varied sentence structures** (simple, compound, complex)
- Avoid repetition; use **synonyms**
- Use **connectives:** However, Therefore, Furthermore, Nevertheless, In addition
- Check **spelling, grammar, punctuation**

### Word Count and Timing
WASSCE essays: typically 300-500 words in ~35-45 minutes
Plan before you write; spend 5 minutes on outline.',
  1, 30),
  ('b1000002-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000002', 'Grammar: Parts of Speech', 'Nouns, verbs, adjectives, adverbs, prepositions and more',
  '## Grammar: Parts of Speech

### 1. Nouns
Names of people, places, things, or ideas.
- **Common:** teacher, city, book
- **Proper:** Lagos, Monday, Einstein
- **Abstract:** freedom, beauty, courage
- **Collective:** flock, team, herd

### 2. Pronouns
Replace nouns: I, you, he, she, it, we, they, who, which, that

### 3. Verbs
Action or state words.
- **Action:** run, write, teach
- **Auxiliary:** be, have, do, will, can, should
- **Linking:** is, are, was, seem, become

### 4. Adjectives
Describe nouns: brave student, tall building, ancient tradition
- Degrees: positive → comparative → superlative (tall → taller → tallest)

### 5. Adverbs
Modify verbs, adjectives, or other adverbs.
- Manner: quickly, carefully
- Time: yesterday, soon
- Frequency: always, never, often

### 6. Prepositions
Show relationship: in, on, at, by, with, from, to, through, between

### 7. Conjunctions
Join words/clauses:
- Coordinating: for, and, nor, but, or, yet, so (FANBOYS)
- Subordinating: because, although, when, since, unless

### 8. Interjections
Express emotion: Oh! Wow! Alas!

### Common Grammar Errors to Avoid
- Subject-verb agreement: "He doesn''t" not "He don''t"
- Tense consistency
- Pronoun-antecedent agreement',
  2, 25),
  ('b1000002-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000002', 'Comprehension Skills', 'Reading techniques, answering questions, inference',
  '## Comprehension Skills

### Reading Comprehension Strategy
Use the **SQ3R Method:**
1. **Survey:** Skim the passage first
2. **Question:** Turn headings into questions
3. **Read:** Read actively
4. **Recite:** Recall key points
5. **Review:** Go back and check

### Types of Questions
1. **Literal:** Answer directly in the text
2. **Inferential:** Read between the lines; use clues
3. **Vocabulary in context:** Meaning of words/phrases as used
4. **Summary:** Condense main ideas
5. **Tone/Attitude:** Identify the writer''s feeling

### Answering Tips
- Read the question carefully
- Locate the relevant section in the passage
- Use the wording of the question in your answer
- Do not copy unnecessarily long sections

### Identifying Literary Devices
- **Simile:** "He ran like the wind"
- **Metaphor:** "Life is a journey"
- **Personification:** "The trees whispered secrets"
- **Alliteration:** "Peter Piper picked..."
- **Irony:** When the literal meaning is opposite to intended
- **Hyperbole:** Exaggeration for effect

### Vocabulary Building
- Learn root words, prefixes, suffixes
- Context clues: use surrounding words to guess meaning
- Common WASSCE vocabulary: arduous, benevolent, eloquent, meticulous, pragmatic',
  3, 25)
ON CONFLICT (id) DO NOTHING;

-- Insert Topics: Further Mathematics
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000007', 'Calculus: Differentiation', 'Derivatives, rules of differentiation, applications',
  '## Calculus: Differentiation

### The Derivative
The derivative of f(x) measures the **rate of change** of the function.

**First Principles:**
f''(x) = lim[h→0] [f(x+h) - f(x)] / h

### Rules of Differentiation
| Rule | Formula |
|------|---------|
| Power Rule | d/dx(xⁿ) = nxⁿ⁻¹ |
| Constant Rule | d/dx(c) = 0 |
| Sum Rule | d/dx(u+v) = u'' + v'' |
| Product Rule | d/dx(uv) = uv'' + vu'' |
| Quotient Rule | d/dx(u/v) = (vu'' - uv'')/v² |
| Chain Rule | d/dx[f(g(x))] = f''(g(x))·g''(x) |

### Standard Derivatives
- d/dx(sin x) = cos x
- d/dx(cos x) = -sin x
- d/dx(eˣ) = eˣ
- d/dx(ln x) = 1/x

### Applications
1. **Finding gradient** at a point on a curve
2. **Stationary points:** Set f''(x) = 0, then test with f''''(x)
   - If f''''(x) > 0: minimum
   - If f''''(x) < 0: maximum
3. **Rate of change problems:** velocity = dx/dt, acceleration = dv/dt
4. **Curve sketching:** Use first and second derivatives',
  1, 35),
  ('b1000007-0000-0000-0000-000000000002', 'a1000000-0000-0000-0000-000000000007', 'Matrices and Determinants', 'Matrix operations, determinants, inverse matrices',
  '## Matrices and Determinants

### Matrix Basics
A matrix is a rectangular array of numbers.
- **Order (m × n):** m rows, n columns
- **Square matrix:** m = n
- **Identity matrix (I):** 1s on diagonal, 0s elsewhere

### Matrix Operations
- **Addition/Subtraction:** Element by element (same order only)
- **Scalar multiplication:** Multiply every element
- **Matrix multiplication:** Row × Column (not commutative: AB ≠ BA)

### 2×2 Matrix Operations
If A = [[a,b],[c,d]]:
- **Determinant:** det(A) = |A| = ad - bc
- **Inverse:** A⁻¹ = (1/|A|) × [[d,-b],[-c,a]]
- Condition: |A| ≠ 0 (non-singular)

### Solving Systems of Equations
For Ax = b, solve using A⁻¹b = x

**Example:**
2x + y = 5
x + 3y = 10

Write as matrix equation and solve using inverse.

### Singular vs Non-Singular
- Singular: determinant = 0, no inverse exists
- Non-singular: determinant ≠ 0, inverse exists

### Transformations Using Matrices
Common 2D transformations:
- Reflection in y-axis: [[-1,0],[0,1]]
- Rotation 90° anticlockwise: [[0,-1],[1,0]]
- Enlargement scale k: [[k,0],[0,k]]',
  2, 35),
  ('b1000007-0000-0000-0000-000000000003', 'a1000000-0000-0000-0000-000000000007', 'Complex Numbers', 'Imaginary numbers, Argand diagram, modulus and argument',
  '## Complex Numbers

### Introduction
i = √(-1), so i² = -1

A complex number: **z = a + bi**
- a = real part
- b = imaginary part

### Operations
- **Addition:** (a+bi) + (c+di) = (a+c) + (b+d)i
- **Subtraction:** (a+bi) - (c+di) = (a-c) + (b-d)i
- **Multiplication:** (a+bi)(c+di) = ac + adi + bci + bdi² = (ac-bd) + (ad+bc)i
- **Division:** Multiply by conjugate of denominator

### Conjugate
If z = a + bi, then conjugate z* = a - bi
- z × z* = a² + b² (real number)

### Modulus and Argument
- **Modulus |z|** = √(a² + b²) (distance from origin)
- **Argument arg(z)** = arctan(b/a) (angle with positive x-axis)

### Argand Diagram
Plot z = a + bi as point (a, b) on complex plane.
- x-axis: real axis
- y-axis: imaginary axis

### Polar Form
z = r(cos θ + i sin θ) where r = |z|, θ = arg(z)
Also written: z = re^(iθ)

### De Moivre''s Theorem
zⁿ = rⁿ(cos nθ + i sin nθ)
Useful for finding powers and roots of complex numbers.',
  3, 35)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- QUIZ QUESTIONS
-- =============================================

-- Mathematics: Algebra
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000001', 'Solve for x: 3x + 7 = 19', '["x = 3", "x = 4", "x = 5", "x = 6"]', 1, 'Subtract 7 from both sides: 3x = 12. Divide by 3: x = 4.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000001', 'Solve: x² - 5x + 6 = 0', '["x = 1 or x = 6", "x = 2 or x = 3", "x = -2 or x = -3", "x = 5 or x = -1"]', 1, 'Factorize: (x-2)(x-3) = 0, so x = 2 or x = 3.', 'medium'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000001', 'If 2x - 3 > 7, what is the solution?', '["x > 2", "x > 5", "x < 5", "x < 2"]', 1, 'Add 3 to both sides: 2x > 10. Divide by 2: x > 5.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000001', 'Using the quadratic formula, solve x² + 2x - 8 = 0', '["x = 2 or x = -4", "x = -2 or x = 4", "x = 1 or x = -8", "x = 4 or x = 2"]', 0, 'Using x = (-b ± √(b²-4ac))/2a with a=1, b=2, c=-8: x = (-2 ± √36)/2 = (-2 ± 6)/2. So x = 2 or x = -4.', 'medium'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000001', 'Which method cannot be used to solve x² + x + 1 = 0?', '["Quadratic formula", "Factorization over real numbers", "Graphical method", "Completing the square"]', 1, 'x² + x + 1 has discriminant b²-4ac = 1-4 = -3 < 0, so it cannot be factorized over real numbers. The quadratic formula gives complex roots.', 'hard')
ON CONFLICT DO NOTHING;

-- Mathematics: Statistics
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000003', 'Find the mean of: 4, 7, 2, 9, 3', '["4", "5", "6", "7"]', 1, 'Mean = (4+7+2+9+3)/5 = 25/5 = 5.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000003', 'What is the median of: 2, 3, 5, 7, 9?', '["3", "5", "7", "4"]', 1, 'Already arranged in order. Median is the middle value (3rd of 5): 5.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000003', 'A bag contains 4 red, 6 blue balls. P(blue) = ?', '["4/10", "6/10", "4/6", "6/4"]', 1, 'P(blue) = 6 favourable ÷ 10 total = 6/10 = 3/5.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000003', 'P(A) = 0.4, P(B) = 0.3, A and B are mutually exclusive. Find P(A or B)', '["0.1", "0.12", "0.7", "1.0"]', 2, 'P(A ∪ B) = P(A) + P(B) = 0.4 + 0.3 = 0.7 (mutually exclusive means P(A∩B)=0)', 'medium'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000003', 'In a normal distribution, approximately what % of data lies within 1 standard deviation of the mean?', '["50%", "68%", "95%", "99.7%"]', 1, 'The empirical rule states 68% within ±1σ, 95% within ±2σ, and 99.7% within ±3σ.', 'medium')
ON CONFLICT DO NOTHING;

-- Physics: Newton''s Laws
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000001', 'A 4 kg object accelerates at 5 m/s². What is the net force?', '["9 N", "1.25 N", "20 N", "0.8 N"]', 2, 'F = ma = 4 × 5 = 20 N.', 'easy'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000001', 'A car starts from rest and reaches 20 m/s in 4 s. Find acceleration.', '["4 m/s²", "5 m/s²", "80 m/s²", "0.2 m/s²"]', 1, 'a = (v-u)/t = (20-0)/4 = 5 m/s²', 'easy'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000001', 'Which of Newton''s laws explains why seat belts are necessary?', '["Third Law", "Second Law", "First Law", "Law of Gravitation"]', 2, 'Newton''s First Law (inertia) means passengers continue moving forward when car stops suddenly. Seat belts apply the force to stop them.', 'medium'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000001', 'A 60 kg person stands on a scale in a lift accelerating upward at 2 m/s². What does the scale read? (g=10)', '["600 N", "720 N", "480 N", "120 N"]', 1, 'R = m(g + a) = 60(10 + 2) = 60 × 12 = 720 N.', 'hard'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000001', 'A ball thrown upward reaches max height. What is its velocity at that point?', '["Maximum", "Zero", "Equal to initial", "Negative"]', 1, 'At maximum height, the ball momentarily stops before falling back down. Velocity = 0 at max height.', 'easy')
ON CONFLICT DO NOTHING;

-- Physics: Electricity
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000002', 'If V = 12 V and R = 4 Ω, what is the current?', '["48 A", "8 A", "3 A", "16 A"]', 2, 'I = V/R = 12/4 = 3 A', 'easy'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000002', 'Two resistors of 6 Ω and 3 Ω are connected in parallel. What is the total resistance?', '["9 Ω", "2 Ω", "0.5 Ω", "18 Ω"]', 1, '1/R = 1/6 + 1/3 = 1/6 + 2/6 = 3/6 = 1/2. So R = 2 Ω', 'medium'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000002', 'An electric heater uses 2000 W for 30 minutes. How much energy is used in joules?', '["60,000 J", "3,600,000 J", "66,667 J", "1,000 J"]', 1, 'E = Pt = 2000 W × 1800 s = 3,600,000 J', 'medium'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000002', 'What happens to resistance if temperature increases in a metal conductor?', '["Decreases", "Stays same", "Increases", "Becomes zero"]', 2, 'In metallic conductors, resistance increases with temperature as atomic vibrations increase, impeding electron flow.', 'medium'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000002', 'The unit of electric power is:', '["Joule", "Watt", "Ampere", "Ohm"]', 1, 'Power is measured in Watts (W). 1 W = 1 J/s', 'easy')
ON CONFLICT DO NOTHING;

-- Chemistry: Atomic Structure
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000001', 'The atomic number of an element is equal to the number of:', '["Neutrons", "Protons", "Electrons + Neutrons", "Nucleons"]', 1, 'Atomic number = number of protons (which equals number of electrons in a neutral atom).', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000001', 'What is the electronic configuration of Phosphorus (Z=15)?', '["2,8,5", "2,8,4,1", "2,5,8", "2,8,8"]', 0, 'Fill shells: 2 (1st), 8 (2nd), 5 (3rd). Phosphorus has 2,8,5 configuration.', 'medium'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000001', 'Isotopes of the same element have different:', '["Atomic numbers", "Number of protons", "Number of neutrons", "Chemical properties"]', 2, 'Isotopes have the same atomic number (protons) but different mass numbers, meaning different neutron counts.', 'medium'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000001', 'Going across Period 3, how does atomic radius change?', '["Increases", "Decreases", "Stays same", "First increases then decreases"]', 1, 'Across a period, the number of protons increases while electrons are added to the same shell, so nuclear attraction increases and atomic radius decreases.', 'medium'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000001', 'Elements in the same group of the periodic table have similar:', '["Atomic masses", "Number of neutrons", "Chemical properties", "Melting points"]', 2, 'Elements in the same group have the same number of valence electrons, giving them similar chemical properties.', 'easy')
ON CONFLICT DO NOTHING;

-- Chemistry: Acids Bases
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000003', 'What is the pH of a neutral solution at 25°C?', '["0", "7", "14", "1"]', 1, 'pH 7 is neutral at 25°C. Below 7 is acidic, above 7 is alkaline.', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000003', 'What does litmus paper turn in an acid?', '["Blue", "Red", "Green", "Purple"]', 1, 'Litmus turns red in acids and blue in alkalis/bases.', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000003', 'Which reaction produces a salt and water?', '["Combustion", "Neutralisation", "Displacement", "Decomposition"]', 1, 'Neutralisation: Acid + Base → Salt + Water', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000003', 'HCl + NaOH → NaCl + H₂O. What type of reaction is this?', '["Oxidation", "Reduction", "Neutralisation", "Decomposition"]', 2, 'This is a neutralisation reaction where an acid (HCl) reacts with a base (NaOH) to form salt (NaCl) and water.', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000003', 'What causes acid rain?', '["CO₂ and N₂", "SO₂ and NO₂", "O₂ and Cl₂", "H₂ and CH₄"]', 1, 'Acid rain is caused by SO₂ (from burning coal/oil) and NO₂ (from vehicle exhausts) dissolving in rainwater to form sulphuric and nitric acid.', 'medium')
ON CONFLICT DO NOTHING;

-- Biology: Cell Biology
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000001', 'Which organelle is known as the "powerhouse of the cell"?', '["Nucleus", "Ribosome", "Mitochondria", "Vacuole"]', 2, 'Mitochondria produce ATP through cellular respiration, providing energy for cell activities — hence "powerhouse".', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000001', 'Which organelle is found in plant cells but NOT animal cells?', '["Mitochondria", "Ribosome", "Chloroplast", "Nucleus"]', 2, 'Chloroplasts (for photosynthesis), cell wall (cellulose), and large vacuoles are unique to plant cells.', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000001', 'Osmosis is defined as the movement of water from a region of:', '["High solute concentration to low solute concentration", "Low solute concentration to high solute concentration", "High pressure to low pressure", "Low pressure to high pressure"]', 1, 'Osmosis: water moves from a region of low solute concentration (high water concentration) to high solute concentration (low water concentration) through a semi-permeable membrane.', 'medium'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000001', 'Ribosomes are the site of:', '["Respiration", "Photosynthesis", "Protein synthesis", "Lipid storage"]', 2, 'Ribosomes translate mRNA into proteins — they are the site of protein synthesis.', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000001', 'Active transport requires:', '["A concentration gradient", "Energy (ATP)", "A semi-permeable membrane", "A low temperature"]', 1, 'Active transport moves substances AGAINST the concentration gradient, which requires energy in the form of ATP.', 'medium')
ON CONFLICT DO NOTHING;

-- Biology: Genetics
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000002', 'In genetics, a dominant allele is represented by:', '["A lowercase letter", "A capital letter", "A number", "A symbol"]', 1, 'Dominant alleles are represented by uppercase letters (e.g., T for tall), recessive by lowercase (e.g., t for short).', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000002', 'A cross between Tt × Tt produces which ratio of phenotypes?', '["1:1", "1:2:1", "3:1", "1:3"]', 2, 'Tt × Tt produces TT, Tt, Tt, tt. TT and Tt are tall (dominant), tt is short. Ratio = 3 Tall : 1 short.', 'medium'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000002', 'What are the sex chromosomes of a normal human male?', '["XX", "XY", "YY", "XXY"]', 1, 'Human males have XY sex chromosomes; females have XX.', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000002', 'Which base pairs with Adenine in DNA?', '["Cytosine", "Guanine", "Thymine", "Uracil"]', 2, 'In DNA: Adenine pairs with Thymine (A-T) and Guanine pairs with Cytosine (G-C).', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000002', 'A homozygous dominant individual crossed with a homozygous recessive individual. What are the offspring genotypes?', '["All dominant", "All recessive", "All heterozygous", "1:1 ratio"]', 2, 'AA × aa produces all Aa offspring — all heterozygous (carriers of both alleles).', 'medium')
ON CONFLICT DO NOTHING;

-- Geography: Climate
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000002', 'What is the main cause of convectional rainfall?', '["Cold air masses meeting", "Surface heating causing air to rise", "Air rising over mountains", "Sea breezes"]', 1, 'Convectional rainfall occurs when the sun heats the ground, warm air rises rapidly, cools, condenses and forms heavy rain — common in the tropics.', 'easy'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000002', 'The ITCZ stands for:', '["Inter-Tropical Circulation Zone", "International Tropical Convergence Zone", "Inter-Tropical Convergence Zone", "Intra-Tropical Climate Zone"]', 2, 'ITCZ = Inter-Tropical Convergence Zone. It is a belt near the equator where northeast and southeast trade winds meet, causing heavy rainfall.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000002', 'The Harmattan wind in West Africa comes from which direction?', '["South-West", "North-East", "South-East", "North-West"]', 1, 'The Harmattan is a dry, dusty wind that blows from the north-east (from the Sahara Desert) across West Africa, typically November to March.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000002', 'Which climate zone has distinct wet and dry seasons?', '["Equatorial", "Desert", "Tropical Savanna", "Mediterranean"]', 2, 'Tropical Savanna (Guinea Savanna) has a distinct rainy season and dry season, unlike equatorial regions which have rain year-round.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000002', 'Climate change is primarily caused by:', '["Volcanic eruptions", "Burning fossil fuels", "Deforestation alone", "Solar activity"]', 1, 'While natural factors contribute, the primary driver of current climate change is the burning of fossil fuels, releasing CO₂ and other greenhouse gases.', 'medium')
ON CONFLICT DO NOTHING;

-- Further Maths: Differentiation
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000001', 'Differentiate y = x⁴ with respect to x', '["4x³", "x³", "4x⁵", "x⁵/5"]', 0, 'Using power rule: d/dx(xⁿ) = nxⁿ⁻¹. So d/dx(x⁴) = 4x³.', 'easy'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000001', 'If f(x) = 3x² + 2x - 1, find f''(x)', '["6x + 2", "6x - 2", "3x + 2", "x + 2"]', 0, 'Differentiate term by term: d/dx(3x²) = 6x, d/dx(2x) = 2, d/dx(-1) = 0. So f''(x) = 6x + 2.', 'easy'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000001', 'A stationary point occurs when:', '["f''(x) = 1", "f''(x) = 0", "f''''(x) = 0", "f(x) = 0"]', 1, 'A stationary (or turning) point occurs where the gradient is zero, i.e., f''(x) = 0.', 'medium'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000001', 'Differentiate y = sin(3x)', '["cos(3x)", "3cos(3x)", "-cos(3x)", "-3cos(3x)"]', 1, 'Using chain rule: d/dx[sin(u)] = cos(u) × du/dx. Here u = 3x, so dy/dx = cos(3x) × 3 = 3cos(3x).', 'medium'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000001', 'If f''''(x) > 0 at a stationary point, it is a:', '["Maximum", "Minimum", "Point of inflection", "Undefined"]', 1, 'Second derivative test: if f''''(x) > 0, it is a local minimum (curve is concave up); if f''''(x) < 0, it is a local maximum.', 'medium')
ON CONFLICT DO NOTHING;
