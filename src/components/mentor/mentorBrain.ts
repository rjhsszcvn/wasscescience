export interface MentorMessage {
  id: string;
  role: 'user' | 'mentor';
  content: string;
  timestamp: number;
}

export interface MentorSession {
  messages: MentorMessage[];
  lastUpdated: number;
}

const STORAGE_KEY = 'mentorx_history';
const FIRST_OPEN_KEY = 'mentorx_first_open';

export function loadHistory(): MentorMessage[] {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const session: MentorSession = JSON.parse(raw);
    return session.messages || [];
  } catch {
    return [];
  }
}

export function saveHistory(messages: MentorMessage[]) {
  try {
    const session: MentorSession = { messages, lastUpdated: Date.now() };
    localStorage.setItem(STORAGE_KEY, JSON.stringify(session));
  } catch {}
}

export function clearHistory() {
  try {
    localStorage.removeItem(STORAGE_KEY);
  } catch {}
}

export function isFirstOpen(): boolean {
  try {
    return !localStorage.getItem(FIRST_OPEN_KEY);
  } catch {
    return true;
  }
}

export function markOpened() {
  try {
    localStorage.setItem(FIRST_OPEN_KEY, '1');
  } catch {}
}

function generateId(): string {
  return Math.random().toString(36).slice(2) + Date.now().toString(36);
}

export function createMessage(role: 'user' | 'mentor', content: string): MentorMessage {
  return { id: generateId(), role, content, timestamp: Date.now() };
}

interface KnowledgeEntry {
  keywords: string[];
  subject: string;
  response: string;
}

const WASSCE_KNOWLEDGE: KnowledgeEntry[] = [
  {
    subject: 'Mathematics - Algebra',
    keywords: ['quadratic', 'quadratic formula', 'solve quadratic', 'factorize quadratic', 'factorisation', 'factorization', 'completing the square', 'discriminant', 'ax squared', 'roots of equation', 'polynomial', 'linear equation', 'simultaneous equations', 'algebra'],
    response: `**Quadratic Equations** — WASSCE Core Topic

A quadratic equation has the form **ax² + bx + c = 0**, where a ≠ 0.

**Three Methods to Solve:**

**1. Factorization** (fastest when it works)
For x² + 5x + 6 = 0:
→ Find two numbers that multiply to +6 and add to +5: (2 and 3)
→ (x + 2)(x + 3) = 0
→ x = -2 or x = -3

**2. Quadratic Formula** (always works)
x = [-b ± √(b² - 4ac)] / 2a

For 2x² - 7x + 3 = 0 (a=2, b=-7, c=3):
→ x = [7 ± √(49 - 24)] / 4 = [7 ± √25] / 4 = [7 ± 5] / 4
→ x = 3 or x = ½

**3. Completing the Square**
x² + 6x + 5 = 0 → (x + 3)² - 9 + 5 = 0 → (x + 3)² = 4 → x = -1 or x = -5

**Discriminant (b² - 4ac):**
- > 0 → two real roots
- = 0 → one repeated root
- < 0 → no real roots

**WASSCE Tip:** Always check whether factorization works first — it's faster. If the discriminant is not a perfect square, use the formula.`
  },
  {
    subject: 'Mathematics - Trigonometry',
    keywords: ['trigonometry', 'sin', 'cos', 'tan', 'sine', 'cosine', 'tangent', 'sohcahtoa', 'trig', 'bearing', 'angle', 'sine rule', 'cosine rule', 'elevation', 'depression', 'right triangle', 'right angle triangle', 'pythagoras', 'hypotenuse'],
    response: `**Trigonometry** — WASSCE Frequent Topic

**SOHCAHTOA** (memorize this):
- **SOH**: sin θ = Opposite / Hypotenuse
- **CAH**: cos θ = Adjacent / Hypotenuse
- **TOA**: tan θ = Opposite / Adjacent

**Key Angles (memorize values):**
| Angle | sin | cos | tan |
|-------|-----|-----|-----|
| 0°    | 0   | 1   | 0   |
| 30°   | ½   | √3/2 | 1/√3 |
| 45°   | √2/2 | √2/2 | 1 |
| 60°   | √3/2 | ½ | √3 |
| 90°   | 1   | 0   | undefined |

**Sine Rule** (for any triangle):
a/sin A = b/sin B = c/sin C

**Cosine Rule:**
a² = b² + c² - 2bc·cos A

**Bearings in WASSCE:**
- Always measured clockwise from North
- Three digits: 045°, 270°
- Draw a diagram before solving!

**Identities to Know:**
- sin²θ + cos²θ = 1
- tan θ = sin θ / cos θ

**Exam Tip:** In WASSCE, angles of elevation and depression are very common. Always draw a right triangle and label carefully.`
  },
  {
    subject: 'Mathematics - Sets',
    keywords: ['set', 'sets', 'union', 'intersection', 'venn diagram', 'subset', 'complement', 'element', 'number of elements', 'universal set', 'empty set', 'power set'],
    response: `**Sets** — WASSCE Repeated Topic

**Key Notation:**
- A ∪ B = Union (elements in A OR B)
- A ∩ B = Intersection (elements in A AND B)
- A' = Complement (elements NOT in A)
- A ⊂ B = A is a subset of B
- n(A) = number of elements in A

**Venn Diagram Formula** (very important for WASSCE):
n(A ∪ B) = n(A) + n(B) − n(A ∩ B)

For three sets:
n(A ∪ B ∪ C) = n(A) + n(B) + n(C) − n(A∩B) − n(A∩C) − n(B∩C) + n(A∩B∩C)

**Classic WASSCE Problem Style:**
"In a class of 40 students, 25 study Maths, 20 study English, and 10 study both. How many study neither?"

Solution:
→ n(M ∪ E) = 25 + 20 − 10 = 35
→ Neither = 40 − 35 = **5 students**

**Laws of Sets:**
- Commutative: A ∪ B = B ∪ A
- De Morgan's: (A ∪ B)' = A' ∩ B'
- (A ∩ B)' = A' ∪ B'

**Exam Tip:** Draw the Venn diagram first. Fill in the intersection region first, then work outward. WASSCE consistently tests three-set problems.`
  },
  {
    subject: 'Mathematics - Indices & Logarithms',
    keywords: ['index', 'indices', 'logarithm', 'log', 'power', 'exponent', 'laws of indices', 'surds', 'surd', 'simplify', 'rationalize', 'square root', 'cube root', 'log base', 'natural log', 'ln'],
    response: `**Indices and Logarithms** — WASSCE Core

**Laws of Indices:**
- aᵐ × aⁿ = aᵐ⁺ⁿ
- aᵐ ÷ aⁿ = aᵐ⁻ⁿ
- (aᵐ)ⁿ = aᵐⁿ
- a⁰ = 1 (a ≠ 0)
- a⁻ⁿ = 1/aⁿ
- a^(1/n) = ⁿ√a
- a^(m/n) = ⁿ√(aᵐ)

**Laws of Logarithms:**
- log(AB) = log A + log B
- log(A/B) = log A − log B
- log(Aⁿ) = n·log A
- log_a(a) = 1
- log_a(1) = 0

**Change of Base:**
log_b(x) = log(x) / log(b)

**Relationship:** log_a(x) = y ⟺ aʸ = x

**Example:** Solve 3ˣ = 20
→ x·log 3 = log 20
→ x = log 20 / log 3 = 1.301 / 0.477 = **2.73**

**Surds Connection:**
√a × √b = √(ab), √a / √b = √(a/b)
To rationalize: multiply by conjugate (a − √b)/(a − √b)

**WASSCE Tip:** Know both forms — indices form and log form. Examiners often give one and ask you to find the other.`
  },
  {
    subject: 'Mathematics - Statistics',
    keywords: ['statistics', 'mean', 'median', 'mode', 'frequency', 'histogram', 'bar chart', 'average', 'standard deviation', 'probability', 'ogive', 'cumulative frequency', 'quartile', 'interquartile', 'range', 'data', 'frequency table', 'class interval', 'grouped data', 'pie chart'],
    response: `**Statistics** — WASSCE Repeated Topic

**Measures of Central Tendency:**
- **Mean** = Σfx / Σf (for grouped data)
- **Median** = middle value when sorted; for grouped: L + [(n/2 − F)/f] × h
- **Mode** = most frequent value; for grouped: modal class = class with highest frequency

**Probability:**
P(A) = number of favourable outcomes / total outcomes
- P(A') = 1 − P(A)
- P(A ∪ B) = P(A) + P(B) − P(A ∩ B)
- P(A ∩ B) = P(A) × P(B) for independent events

**Reading Histograms:**
Frequency density = Frequency / Class width
Frequency = Frequency density × Class width

**Ogive (Cumulative Frequency Curve):**
- Used to find median, quartiles, percentiles
- Plot upper class boundary vs cumulative frequency
- Median = value at n/2

**Quartiles:**
- Q1 (lower quartile) = n/4
- Q2 (median) = n/2
- Q3 (upper quartile) = 3n/4
- IQR = Q3 − Q1

**WASSCE Tip:** Grouped data mean and cumulative frequency/ogive are the most frequently tested. Practice reading off values from graphs carefully.`
  },
  {
    subject: 'Mathematics - Geometry & Mensuration',
    keywords: ['circle', 'area', 'perimeter', 'volume', 'mensuration', 'geometry', 'cylinder', 'sphere', 'cone', 'circumference', 'arc', 'sector', 'triangle', 'rectangle', 'square', 'polygon', 'trapezium', 'parallelogram', 'circle theorem', 'chord', 'tangent', 'angle subtended', 'cyclic quadrilateral', 'coordinate geometry', 'midpoint', 'gradient', 'slope', 'straight line'],
    response: `**Mensuration & Geometry** — WASSCE Essential

**Circle Formulas:**
- Area = πr²
- Circumference = 2πr
- Arc length = (θ/360) × 2πr
- Area of sector = (θ/360) × πr²
- Area of segment = area of sector − area of triangle

**3D Shapes:**
| Shape | Volume | Surface Area |
|-------|--------|-------------|
| Cylinder | πr²h | 2πr(r + h) |
| Cone | ⅓πr²h | πr(r + l), l = slant height |
| Sphere | 4/3πr³ | 4πr² |
| Pyramid | ⅓ × base area × height | |

**Circle Theorems (very common in WASSCE):**
- Angle at centre = 2 × angle at circumference
- Angles in same segment are equal
- Angle in semicircle = 90°
- Opposite angles in cyclic quadrilateral add to 180°
- Tangent meets radius at 90°
- Two tangents from external point are equal

**Coordinate Geometry:**
- Distance = √[(x₂-x₁)² + (y₂-y₁)²]
- Midpoint = ((x₁+x₂)/2, (y₁+y₂)/2)
- Gradient = (y₂-y₁)/(x₂-x₁)
- y = mx + c (gradient-intercept form)

**WASSCE Tip:** Circle theorems require you to state the reason. Always write the theorem name next to your angle calculation.`
  },
  {
    subject: 'English - Essay Writing',
    keywords: ['essay', 'writing', 'letter', 'formal letter', 'informal letter', 'narrative', 'argumentative', 'expository', 'composition', 'write a letter', 'write an essay', 'paragraph', 'introduction', 'conclusion', 'english writing', 'english language', 'describe', 'story', 'article', 'speech', 'report writing'],
    response: `**Essay Writing** — WASSCE Section A (Compulsory)

**Types of Essays in WASSCE:**
1. **Narrative** — tells a story (personal experience or imaginative)
2. **Descriptive** — paints a picture with words
3. **Argumentative/Persuasive** — one-sided, present your view with evidence
4. **Expository** — explains a topic objectively
5. **Formal Letter** — official/business writing
6. **Informal Letter** — to a friend or relative

**Essay Structure (5 Paragraphs):**
- **Introduction** (2–3 sentences): Hook + thesis statement
- **Body Paragraph 1**: Topic sentence + evidence + explanation
- **Body Paragraph 2**: Topic sentence + evidence + explanation
- **Body Paragraph 3**: Topic sentence + evidence + explanation
- **Conclusion**: Restate thesis + final thought (never introduce new ideas)

**Formal Letter Format:**
Sender's Address (top right)
Date
Recipient's Name & Address (left)
Salutation: Dear Sir/Madam,
Subject: (underlined)
Body paragraphs
Closing: Yours faithfully,
Signature + Full Name

**Informal Letter:**
Address (top right)
Date
Dear [First Name],
Body (casual, personal tone)
Your friend, [Name]

**WASSCE Scoring Tips:**
- Spelling and grammar errors lose heavy marks
- Use varied vocabulary — avoid repeating words
- Paragraphs must be clearly separated
- Stick to the word limit (~450 words)
- Always plan before writing (5-minute outline)`
  },
  {
    subject: 'English - Comprehension',
    keywords: ['comprehension', 'passage', 'reading', 'inference', 'vocabulary', 'context clue', 'summary', 'summarize', 'summarise', 'literary devices', 'idiom', 'proverb', 'figure of speech', 'simile', 'metaphor'],
    response: `**Comprehension** — WASSCE Section B

**How to Tackle Comprehension:**

**Step 1: Read the Questions First**
Before reading the passage, scan all questions. This helps you read with purpose.

**Step 2: Read the Passage Actively**
Underline key ideas, circle unfamiliar words, note paragraph themes.

**Step 3: Answer Strategies by Question Type:**

**Vocabulary Questions** ("What does 'x' mean in context?")
→ Look at surrounding sentences for clues
→ Try substituting your answer to see if it fits
→ Answer in the same form (noun for noun, verb for verb)

**Inference Questions** ("What does the author imply?")
→ The answer is not stated directly — you must read between the lines
→ Use evidence from the text to support your inference

**Summary Questions** ("Summarize the writer's main points...")
→ Find the topic sentence of each paragraph
→ Use your OWN words (paraphrase, don't copy)
→ Stay within the word limit

**"Give evidence from the passage" Questions**
→ Quote exactly, using quotation marks

**WASSCE Tips:**
- Always answer in complete sentences unless told otherwise
- Do not go outside the passage (use only what's given)
- Watch the mark allocation — 2-mark questions need 2 distinct points
- Summary writing is usually worth 10 marks — plan carefully`
  },
  {
    subject: 'English - Grammar',
    keywords: ['grammar', 'tense', 'verb', 'noun', 'pronoun', 'adjective', 'adverb', 'sentence', 'clause', 'phrase', 'parts of speech', 'concord', 'subject verb agreement', 'reported speech', 'direct speech', 'indirect speech', 'preposition', 'conjunction', 'punctuation', 'spelling', 'word class', 'passive voice', 'active voice'],
    response: `**Grammar** — WASSCE Section C

**Parts of Speech (Quick Reference):**
- **Noun**: person, place, thing, idea (Ghana, happiness)
- **Pronoun**: replaces a noun (he, they, which)
- **Verb**: action or state (run, is, become)
- **Adjective**: modifies a noun (tall, beautiful)
- **Adverb**: modifies verb/adjective/adverb (quickly, very)
- **Preposition**: shows relationship (in, on, under, between)
- **Conjunction**: joins clauses (and, but, because, although)

**Common WASSCE Grammar Topics:**

**Tenses:**
- Simple Past: walked, ate
- Present Perfect: has/have + past participle (has eaten)
- Past Perfect: had + past participle (had eaten before she arrived)

**Concord (Subject-Verb Agreement):**
- Singular subject → singular verb: "The boy runs"
- Two subjects joined by "or/nor" → verb agrees with closer subject
- Collective nouns can be singular or plural depending on context

**Reported Speech:**
Direct → Indirect tense shifts:
- "I am tired" → She said she WAS tired
- "I will come" → He said he WOULD come
- "Come here" → She told him TO GO there

**Common Errors to Avoid:**
- Between you and ME (not I)
- Neither of them IS (not are) here
- Each of the boys HAS (not have)

**WASSCE Tip:** Concord and reported speech are tested almost every year. Practice changing direct speech to indirect speech with all tense shifts.`
  },
  {
    subject: 'Biology - Cell Biology',
    keywords: ['cell', 'nucleus', 'mitochondria', 'chloroplast', 'cell membrane', 'organelle', 'cell wall', 'prokaryote', 'eukaryote', 'mitosis', 'meiosis', 'cell division', 'osmosis', 'diffusion', 'active transport', 'ribosome', 'golgi', 'vacuole', 'lysosome', 'plant cell', 'animal cell'],
    response: `**Cell Biology** — WASSCE Foundation Topic

**Plant vs Animal Cell:**
| Feature | Plant Cell | Animal Cell |
|---------|-----------|------------|
| Cell wall | Yes (cellulose) | No |
| Chloroplast | Yes | No |
| Large vacuole | Yes | No (small/absent) |
| Centriole | No | Yes |
| Shape | Fixed/rectangular | Irregular |

**Key Organelles and Functions:**
- **Nucleus**: Controls cell activities; contains DNA
- **Mitochondria**: Site of aerobic respiration; "powerhouse of cell"
- **Chloroplast**: Site of photosynthesis; contains chlorophyll
- **Ribosome**: Site of protein synthesis
- **Endoplasmic Reticulum (ER)**: Transport network
  - Rough ER: has ribosomes, makes proteins
  - Smooth ER: makes lipids, no ribosomes
- **Golgi Apparatus**: Packages and secretes proteins
- **Vacuole**: Storage (water, food, waste)
- **Lysosome**: Digests waste materials

**Cell Division:**
- **Mitosis**: Growth and repair → 2 identical daughter cells
- **Meiosis**: Sexual reproduction → 4 genetically different cells (half chromosome number)

**Osmosis vs Diffusion vs Active Transport:**
- Diffusion: high → low concentration; no energy needed
- Osmosis: water movement through semipermeable membrane; high water potential → low
- Active transport: against concentration gradient; requires energy (ATP)

**WASSCE Tip:** Draw and label cell diagrams accurately — marks are given for correct labeling. Mitosis stages (PMAT: Prophase, Metaphase, Anaphase, Telophase) are frequently tested.`
  },
  {
    subject: 'Biology - Genetics',
    keywords: ['genetics', 'DNA', 'gene', 'allele', 'dominant', 'recessive', 'genotype', 'phenotype', 'inheritance', 'mendel', 'punnett', 'chromosome', 'heredity', 'blood group', 'sex determination', 'mutation', 'variation', 'monohybrid', 'dihybrid', 'homozygous', 'heterozygous'],
    response: `**Genetics** — WASSCE High-Value Topic

**Key Terms:**
- **Genotype**: Genetic makeup (e.g., Tt, AA)
- **Phenotype**: Physical appearance (e.g., Tall, Blue eyes)
- **Dominant**: Allele expressed when present (capital letter: T)
- **Recessive**: Only expressed when homozygous (lowercase: t)
- **Homozygous**: Both alleles same (TT or tt)
- **Heterozygous**: Different alleles (Tt)

**Mendel's Laws:**
1. **Law of Segregation**: Each organism has two alleles for a trait; they separate during gamete formation
2. **Law of Independent Assortment**: Genes for different traits are inherited independently

**Monohybrid Cross (one trait):**
Parents: Tt × Tt
Gametes: T, t × T, t
Punnett Square:
| | T | t |
|--|--|--|
| T | TT | Tt |
| t | Tt | tt |

Ratio: 3 Tall (TT, Tt, Tt) : 1 short (tt)

**Sex Determination:**
- Females: XX
- Males: XY
- 50% chance of male or female at each birth

**Blood Groups (ABO):**
- Type A: Iᴬ Iᴬ or Iᴬ i
- Type B: I^B I^B or I^B i
- Type AB: Iᴬ I^B (universal recipient)
- Type O: ii (universal donor)

**WASSCE Tip:** Always draw the Punnett square — never guess. State clearly: "The probability of..." and give ratios and percentages.`
  },
  {
    subject: 'Biology - Photosynthesis',
    keywords: ['photosynthesis', 'chlorophyll', 'light reaction', 'dark reaction', 'carbon dioxide', 'glucose', 'stomata', 'leaf', 'plants make food', 'green plants', 'sunlight', 'oxygen produced', 'carbon dioxide absorbed', 'calvin cycle', 'thylakoid', 'stroma', 'limiting factors photosynthesis'],
    response: `**Photosynthesis** — WASSCE Core Biology

**Equation:**
6CO₂ + 6H₂O + light energy → C₆H₁₂O₆ + 6O₂

(Carbon dioxide + water + light → glucose + oxygen)

**Where it Happens:** Chloroplasts (specifically in the thylakoid membranes and stroma)

**Two Stages:**

**1. Light-Dependent Reactions (in thylakoids):**
- Light splits water molecules (photolysis): H₂O → H⁺ + O₂
- ATP and NADPH are produced
- O₂ is released as a by-product

**2. Light-Independent Reactions / Calvin Cycle (in stroma):**
- CO₂ is fixed using ATP and NADPH
- Glucose is produced

**Factors Affecting Rate of Photosynthesis:**
- **Light intensity**: More light → faster rate (up to a limit)
- **CO₂ concentration**: More CO₂ → faster rate
- **Temperature**: Increases rate up to ~35°C; enzymes denature above ~45°C
- **Water**: Essential; shortage slows photosynthesis

**Leaf Adaptations:**
- Broad and flat — large surface area for light absorption
- Thin — short diffusion distance for CO₂ and O₂
- Many chloroplasts in palisade layer
- Stomata — allows gas exchange
- Vascular bundles — transport water and products

**WASSCE Tip:** Know the word equation AND the balanced chemical equation. Also be ready to describe and explain experiments testing photosynthesis (e.g., starch test with iodine).`
  },
  {
    subject: 'Chemistry - Atomic Structure',
    keywords: ['atom', 'proton', 'neutron', 'electron', 'atomic number', 'mass number', 'isotope', 'electronic configuration', 'periodic table', 'valence electron', 'shell', 'energy level', 'ionic bond', 'covalent bond', 'metallic bond', 'bonding', 'dot and cross', 'relative atomic mass', 'element', 'compound'],
    response: `**Atomic Structure** — WASSCE Chemistry Foundation

**Subatomic Particles:**
| Particle | Charge | Mass | Location |
|---------|--------|------|---------|
| Proton | +1 | 1 | Nucleus |
| Neutron | 0 | 1 | Nucleus |
| Electron | -1 | ~0 | Shells/orbitals |

**Key Definitions:**
- **Atomic Number (Z)** = number of protons
- **Mass Number (A)** = protons + neutrons
- Number of neutrons = A − Z
- In neutral atom: protons = electrons

**Isotopes:**
Same element, different number of neutrons
Example: Carbon-12 (⁶¹²C) and Carbon-14 (⁶¹⁴C) — same protons, different neutrons

**Electronic Configuration:**
- Shell 1: max 2 electrons
- Shell 2: max 8 electrons
- Shell 3: max 8 electrons (for WASSCE level)

Example: Sodium (Na, Z=11) → 2, 8, 1
Valence electrons = 1 (last shell)

**Periodic Table Trends:**
- Period: horizontal row; same number of electron shells
- Group: vertical column; same number of valence electrons → similar chemical properties

**Bonding:**
- **Ionic**: metal + non-metal; transfer of electrons; forms lattice
- **Covalent**: non-metal + non-metal; sharing of electrons
- **Metallic**: metal atoms; sea of electrons

**WASSCE Tip:** Be able to draw dot-and-cross diagrams for covalent and ionic compounds. Know which elements form ions and with what charge (Na⁺, Mg²⁺, Cl⁻, O²⁻).`
  },
  {
    subject: 'Chemistry - Acids, Bases and Salts',
    keywords: ['acid', 'base', 'alkali', 'salt', 'neutralization', 'pH', 'indicator', 'titration', 'hydrochloric', 'sulphuric', 'hydroxide', 'litmus', 'phenolphthalein', 'methyl orange', 'strong acid', 'weak acid', 'buffer', 'concentration', 'mole', 'molarity', 'neutralisation'],
    response: `**Acids, Bases & Salts** — WASSCE Chemistry Favourite

**Properties of Acids:**
- pH < 7
- Turn litmus red; turn methyl orange red
- React with metals to produce hydrogen gas
- React with carbonates to produce CO₂ + water + salt
- React with bases to form salt + water (neutralization)

**Properties of Bases/Alkalis:**
- pH > 7; alkalis are soluble bases
- Turn litmus blue; turn phenolphthalein pink
- React with acids in neutralization

**Common Acids:**
- HCl (hydrochloric acid) — strong
- H₂SO₄ (sulphuric acid) — strong
- HNO₃ (nitric acid) — strong
- CH₃COOH (ethanoic/acetic acid) — weak

**Neutralization:**
Acid + Base → Salt + Water
HCl + NaOH → NaCl + H₂O
H₂SO₄ + 2NaOH → Na₂SO₄ + 2H₂O

**Naming Salts:**
- HCl + metal → chloride salt
- H₂SO₄ + metal → sulphate salt
- HNO₃ + metal → nitrate salt

**Titration Steps:**
1. Fill burette with acid; record initial reading
2. Pipette fixed volume of alkali into conical flask
3. Add indicator (phenolphthalein or methyl orange)
4. Add acid slowly until colour change (endpoint)
5. Record final burette reading; calculate titre

**WASSCE Tip:** You must know pH values, indicator colours, and neutralization equations. Titration calculations require: n = C × V, then work out the unknown using molar ratios.`
  },
  {
    subject: 'Chemistry - Redox Reactions',
    keywords: ['oxidation', 'reduction', 'redox', 'oxidizing agent', 'reducing agent', 'electron transfer', 'rusting', 'electrochemistry', 'oil rig', 'electrolysis', 'anode', 'cathode', 'oxidation state', 'half equation', 'corrosion', 'galvanizing'],
    response: `**Redox Reactions** — WASSCE Chemistry Core

**Key Definitions:**
- **Oxidation**: Loss of electrons (OIL — Oxidation Is Loss)
- **Reduction**: Gain of electrons (RIG — Reduction Is Gain)
- **OIL RIG** is the memory tool!

**Oxidizing Agent**: Causes oxidation of another substance; it GAINS electrons (gets reduced itself)
**Reducing Agent**: Causes reduction of another substance; it LOSES electrons (gets oxidized itself)

**Oxidation States:**
- Pure elements: oxidation state = 0
- Monatomic ions: oxidation state = charge (Na⁺ = +1, Cl⁻ = -1)
- Oxygen in compounds: usually -2 (except in peroxides: -1)
- Hydrogen in compounds: usually +1

**Example:** In Fe₂O₃ + 3CO → 2Fe + 3CO₂
- Iron: Fe³⁺ → Fe⁰ (reduction — gains electrons)
- Carbon: C²⁺ → C⁴⁺ (oxidation — loses electrons)
- CO is the reducing agent; Fe₂O₃ is the oxidizing agent

**Rusting:**
4Fe + 3O₂ + 2H₂O → 2Fe₂O₃·H₂O
- Requires oxygen AND water
- Prevention: painting, galvanizing, cathodic protection

**Electrochemical Cells:**
- Oxidation at anode (-), reduction at cathode (+)
- In electrolysis: anode is positive, cathode is negative

**WASSCE Tip:** Half-equations are commonly tested. Practice writing and balancing them. Always specify oxidation states when explaining redox.`
  },
  {
    subject: 'Physics - Motion',
    keywords: ['motion', 'velocity', 'acceleration', 'distance', 'speed', 'displacement', 'equations of motion', 'newton', 'kinematics', "newton's law", "newtons law", 'first law', 'second law', 'third law', 'inertia', 'force', 'mass', 'momentum', 'impulse', 'suvat', 'projectile', 'friction', 'gravity'],
    response: `**Motion** — WASSCE Physics Core

**Key Definitions:**
- **Distance**: Total path covered (scalar)
- **Displacement**: Shortest straight-line path with direction (vector)
- **Speed**: Distance / Time (scalar)
- **Velocity**: Displacement / Time (vector)
- **Acceleration**: Change in velocity / Time

**Equations of Motion (SUVAT):**
- v = u + at
- s = ut + ½at²
- v² = u² + 2as
- s = ½(u + v)t

Where: s = displacement, u = initial velocity, v = final velocity, a = acceleration, t = time

**Newton's Laws:**
1. **First**: A body remains at rest or uniform motion unless acted upon by a net force (inertia)
2. **Second**: F = ma (force = mass × acceleration)
3. **Third**: For every action, there is an equal and opposite reaction

**Graphs:**
- Distance-time graph: gradient = speed
- Velocity-time graph: gradient = acceleration; area under graph = distance

**Momentum:**
p = mv (kg·m/s)
Conservation: Total momentum before = total momentum after (in closed system)
Impulse = Ft = change in momentum = mv − mu

**WASSCE Tip:** Always list given values (u, v, a, s, t) before choosing the right SUVAT equation. Graphs are very commonly tested — practice calculating gradient and area.`
  },
  {
    subject: 'Physics - Waves',
    keywords: ['wave', 'frequency', 'wavelength', 'amplitude', 'sound', 'light', 'transverse', 'longitudinal', 'reflection', 'refraction', 'diffraction', 'electromagnetic spectrum', 'electromagnetic wave', 'radio wave', 'infrared', 'ultraviolet', 'x-ray', 'gamma ray', 'total internal reflection', 'snell', 'wave theory', 'wave equation', 'period', 'oscillation'],
    response: `**Waves** — WASSCE Physics Regular Topic

**Wave Equation:**
v = fλ
(wave speed = frequency × wavelength)

**Types of Waves:**
- **Transverse**: vibrations perpendicular to direction of travel (light, water waves, electromagnetic)
- **Longitudinal**: vibrations parallel to direction of travel (sound)

**Key Terms:**
- **Amplitude**: maximum displacement from rest position
- **Frequency (f)**: number of complete cycles per second (Hz)
- **Wavelength (λ)**: distance of one complete cycle
- **Period (T)**: time for one complete cycle; T = 1/f

**Sound:**
- Travels through solids, liquids, gases (NOT vacuum)
- Speed in air: ~340 m/s; faster in solids
- Requires a medium (mechanical wave)

**Light:**
- Electromagnetic wave; travels at 3 × 10⁸ m/s in vacuum
- Does NOT need a medium

**Electromagnetic Spectrum (in order of increasing frequency):**
Radio → Microwave → Infrared → Visible → UV → X-ray → Gamma

**Reflection:** Angle of incidence = Angle of reflection

**Refraction:** Snell's Law: n₁ sin θ₁ = n₂ sin θ₂
Light bends towards normal when entering denser medium

**Total Internal Reflection:**
Occurs when angle of incidence > critical angle, and light goes from denser to less dense medium
sin(critical angle) = 1/n (or n₂/n₁)

**WASSCE Tip:** Electromagnetic spectrum order is frequently tested. Practice ray diagrams for reflection and refraction — draw normal lines clearly.`
  },
  {
    subject: 'Physics - Electricity',
    keywords: ['electricity', 'current', 'voltage', 'resistance', 'ohm', 'circuit', 'power', 'series', 'parallel', 'capacitor', "ohm's law", 'ohms law', 'electric', 'potential difference', 'ammeter', 'voltmeter', 'resistor', 'fuse', 'watt', 'kilowatt', 'energy', 'domestic electricity', 'live wire', 'neutral wire', 'earth wire', 'emf', 'terminal voltage'],
    response: `**Electricity** — WASSCE Physics High-Priority

**Ohm's Law:**
V = IR (Voltage = Current × Resistance)
- V in volts (V)
- I in amperes (A)
- R in ohms (Ω)

**Power:**
P = IV = I²R = V²/R

**Energy:**
E = Pt (energy = power × time) → in joules or kilowatt-hours

**Series Circuits:**
- Same current flows through all: I_total = I₁ = I₂
- Voltages add: V_total = V₁ + V₂
- Resistances add: R_total = R₁ + R₂

**Parallel Circuits:**
- Same voltage across all: V_total = V₁ = V₂
- Currents add: I_total = I₁ + I₂
- 1/R_total = 1/R₁ + 1/R₂

**Electromotive Force (EMF) vs Terminal PD:**
EMF = Terminal PD + voltage drop across internal resistance
E = V + Ir

**Domestic Electricity:**
- Live wire: brown (240V AC)
- Neutral wire: blue (0V)
- Earth wire: green/yellow (safety)
- Fuses protect appliances from current surges
- RCD (Residual Current Device) for personal safety

**WASSCE Tip:** Distinguish series from parallel clearly before calculating. A common exam error is applying series formulas to parallel circuits. Draw and label the circuit first.`
  },
  {
    subject: 'Geography - West Africa',
    keywords: ['west africa', 'ghana', 'nigeria', 'sierra leone', 'guinea', 'sahel', 'savanna', 'rainforest', 'harmattan', 'climate', 'vegetation', 'river niger', 'river volta', 'akosombo', 'ecowas', 'cocoa', 'gold coast', 'tropical', 'equatorial', 'sudan savanna', 'guinea savanna', 'monsoon', 'semi arid', 'natural resources', 'economic activities'],
    response: `**West Africa — Geography** — WASSCE Core

**Climate Zones (from south to north):**
1. **Equatorial/Rainforest**: Hot and wet all year; near equator; Ghana south, Nigeria south
2. **Tropical Monsoon**: Distinct wet/dry seasons; 2 rainy seasons
3. **Guinea Savanna**: One rainy season; tall grasses; moderate rainfall
4. **Sudan Savanna**: Less rainfall; shorter grasses; trees like shea and baobab
5. **Sahel**: Semi-arid; sparse vegetation; edge of Sahara
6. **Desert**: Very little rainfall; Sahara

**Harmattan Wind:**
- Dry, dusty, north-east trade wind
- Blows from Sahara Desert (October–March)
- Brings haze, dust; lowers humidity; cracks lips/skin
- Useful: dries fish, crops; harmful: reduces visibility

**West African Rivers:**
- **River Niger**: Longest in West Africa; flows through Guinea, Mali, Niger, Nigeria → Atlantic
- **River Volta**: Ghana; Akosombo Dam — hydroelectric power
- **River Senegal**: Borders Senegal and Mauritania
- **River Gambia**: Gambia

**Major Economic Activities:**
- Agriculture: Cocoa (Ghana), Palm oil (Nigeria), Groundnuts (Gambia)
- Mining: Gold (Ghana — "Gold Coast"), Oil (Nigeria), Diamonds (Sierra Leone)
- Trade: Coastal ports, ECOWAS free trade

**WASSCE Tip:** Know map locations of major rivers, countries, capitals, and natural resources. Climate and vegetation types are tested almost every year.`
  },
  {
    subject: 'Geography - Population',
    keywords: ['population', 'birth rate', 'death rate', 'migration', 'urbanization', 'census', 'density', 'growth rate', 'demographic', 'population pyramid', 'rural urban', 'overpopulation', 'underpopulation', 'demographic transition', 'settlement', 'push factors', 'pull factors'],
    response: `**Population Geography** — WASSCE Regular Topic

**Key Measures:**
- **Birth Rate**: Number of live births per 1,000 people per year
- **Death Rate**: Number of deaths per 1,000 people per year
- **Natural Growth Rate**: Birth Rate − Death Rate
- **Population Density**: Total population / Area (people per km²)

**Demographic Transition Model (DTM):**
- **Stage 1**: High birth + high death rate → slow growth (traditional societies)
- **Stage 2**: High birth + falling death rate → rapid growth (improving health care)
- **Stage 3**: Falling birth + low death rate → slowing growth
- **Stage 4**: Low birth + low death rate → stable or declining

**Types of Population Pyramids:**
- **Expansive (triangular)**: Wide base, rapidly tapering — young population, high birth rate (common in West Africa)
- **Constrictive (urn-shaped)**: Narrow base — ageing population, low birth rate
- **Stationary**: Near-uniform width — stable population

**Migration:**
- **Push factors**: drought, poverty, conflict, lack of jobs
- **Pull factors**: employment, education, better services
- **Rural-urban migration**: Major trend in West Africa

**Urbanization Effects:**
- Positive: economic development, services
- Negative: overcrowding, slums, pollution, unemployment

**WASSCE Tip:** Describe and explain population pyramids — not just describe shape. Give specific West African examples (Lagos, Accra, Freetown) when discussing urbanization.`
  },
  {
    subject: 'Further Mathematics - Calculus',
    keywords: ['differentiation', 'integration', 'calculus', 'derivative', 'gradient', 'turning point', 'maximum', 'minimum', 'rate of change', 'dy/dx', 'dy dx', 'chain rule', 'product rule', 'quotient rule', 'second derivative', 'stationary point', 'area under curve', 'definite integral', 'indefinite integral', 'further maths'],
    response: `**Calculus** — Further Mathematics WASSCE

**Differentiation (finding gradient):**

**Basic Rules:**
- d/dx(xⁿ) = nxⁿ⁻¹
- d/dx(constant) = 0
- d/dx(kxⁿ) = knxⁿ⁻¹

**Example:** f(x) = 3x⁴ − 5x² + 7
f'(x) = 12x³ − 10x

**Chain Rule:** d/dx[f(g(x))] = f'(g(x)) · g'(x)
Example: d/dx[(2x+1)⁵] = 5(2x+1)⁴ · 2 = 10(2x+1)⁴

**Product Rule:** d/dx[uv] = u·v' + v·u'

**Quotient Rule:** d/dx[u/v] = (v·u' − u·v') / v²

**Turning Points:**
1. Set f'(x) = 0, solve for x
2. Find y values
3. Use second derivative test:
   - f''(x) > 0 → minimum
   - f''(x) < 0 → maximum

**Integration (reverse of differentiation):**
∫xⁿ dx = xⁿ⁺¹/(n+1) + C (n ≠ -1)

**Definite Integrals** (area under curve):
∫[a to b] f(x) dx = F(b) − F(a)

**WASSCE Tip:** Show all working step by step. In turning point problems, always verify with second derivative. Integration often involves finding area between a curve and the x-axis — check if the area goes below x-axis and handle it carefully.`
  },
  {
    subject: 'Further Mathematics - Vectors',
    keywords: ['vector', 'scalar', 'magnitude', 'dot product', 'cross product', 'position vector', 'resultant', 'unit vector', 'column vector', 'perpendicular vectors', 'parallel vectors', 'relative velocity', 'displacement vector', 'force vector'],
    response: `**Vectors** — Further Mathematics WASSCE

**Scalar vs Vector:**
- **Scalar**: magnitude only (speed, temperature, mass)
- **Vector**: magnitude AND direction (velocity, force, displacement)

**Vector Notation:**
- Column form: **a** = (3, 4) or **a** = 3**i** + 4**j**
- Magnitude: |**a**| = √(3² + 4²) = √25 = 5

**Unit Vector:**
â = **a** / |**a**|

**Vector Addition:**
**a** + **b** = (a₁ + b₁, a₂ + b₂)

**Position Vectors:**
If A has position vector **a** and B has **b**:
→ AB = **b** − **a** (from A to B)
→ Midpoint M = (**a** + **b**) / 2

**Scalar (Dot) Product:**
**a** · **b** = |**a**||**b**| cos θ = a₁b₁ + a₂b₂

If **a** · **b** = 0 → vectors are perpendicular

**Parallel Vectors:**
**a** = k**b** for some scalar k

**Applications:**
- Resultant force: add all force vectors
- Relative velocity: v_AB = v_A − v_B
- Work done: W = **F** · **d**

**WASSCE Tip:** Always state clearly whether you're using column form or component form. Show magnitude calculations step-by-step. Perpendicularity (dot product = 0) is a favourite examination question.`
  },
  {
    subject: 'Agricultural Science - Crop Production',
    keywords: ['crop', 'farming', 'soil', 'fertilizer', 'irrigation', 'weed', 'pest', 'planting', 'harvest', 'nursery', 'tillage', 'agriculture', 'agricultural', 'agric', 'nitrogen', 'phosphorus', 'potassium', 'npk', 'organic farming', 'crop rotation', 'pest control', 'animal husbandry', 'livestock', 'poultry', 'fish farming'],
    response: `**Crop Production** — WASSCE Agricultural Science

**Soil Preparation:**
- **Primary tillage**: Deep ploughing/harrowing to break compacted soil
- **Secondary tillage**: Refining seedbed (ridging, furrowing)
- **Zero tillage**: No ploughing — conserves soil moisture and structure

**Nutrients and Fertilizers:**
**Macronutrients (NPK):**
- **N (Nitrogen)**: Promotes leafy growth; deficiency causes yellowing
- **P (Phosphorus)**: Root development, flowering; deficiency causes purple leaves
- **K (Potassium)**: Disease resistance, fruit quality; deficiency causes brown leaf edges

**Types of Fertilizers:**
- **Organic**: Compost, manure — slow release, improves soil structure
- **Inorganic/Chemical**: NPK, Urea — quick release, precise dosage
- **Green manure**: Legumes ploughed back into soil

**Common Crop Pests:**
- Stem borers, aphids, weevils, caterpillars
- Control: pesticides, biological control, crop rotation

**Weed Control Methods:**
- Mechanical: hand weeding, hoeing
- Chemical: herbicides (selective vs non-selective)
- Cultural: crop rotation, mulching

**Irrigation Systems:**
- Surface/Flood: cheap, wasteful
- Drip/Trickle: efficient, expensive
- Sprinkler: moderate efficiency

**WASSCE Tip:** Know the three macronutrients (N, P, K) and their deficiency symptoms. Distinguish organic from inorganic fertilizers. Crop rotation advantages are frequently tested.`
  },
  {
    subject: 'General - Study Tips',
    keywords: ['how to study', 'study tips', 'pass wassce', 'exam preparation', 'time management', 'revision'],
    response: `**How to Pass WASSCE — MentorX Strategy**

**1. Know the Exam Structure**
Each subject has Paper 1 (objectives/multiple choice) and Paper 2 (theory/essays). Manage your time for each paper.

**2. Past Questions are Gold**
WASSCE repeats patterns. Practicing past questions from 5–10 years back builds pattern recognition. Notice which topics appear every year.

**3. Active Revision (not passive)**
Don't just re-read notes. Practice:
- Solving past questions under timed conditions
- Writing out formulas and definitions from memory
- Teaching a concept to yourself out loud

**4. Subject-Specific Strategies:**
- **Maths**: Do 3 practice problems per topic daily
- **English**: Write one essay per week; review grammar rules
- **Sciences**: Draw diagrams from memory; practice equations
- **Geography**: Draw maps; connect climate to vegetation

**5. Time Management in Exam:**
- Read all questions before starting
- Answer easiest questions first
- Allocate time proportional to marks
- Leave time to review answers

**6. The Night Before:**
- Review summaries only (no new material)
- Sleep 7–8 hours — tired brains make errors
- Prepare materials: pens, ID, calculator

**MentorX Reminder:** Consistency beats cramming. 45 minutes of focused study daily is more effective than an all-night session. Start your revision 3 months before WASSCE.`
  }
];

function normalize(text: string): string {
  return text.toLowerCase().replace(/[^a-z0-9\s]/g, ' ').replace(/\s+/g, ' ').trim();
}

function scoreMatch(input: string, entry: KnowledgeEntry): number {
  const normalInput = normalize(input);
  const words = normalInput.split(' ').filter(w => w.length > 2);
  let score = 0;
  for (const keyword of entry.keywords) {
    const normalKeyword = normalize(keyword);
    if (normalInput.includes(normalKeyword)) {
      score += normalKeyword.split(' ').length * 4;
    } else {
      for (const word of words) {
        if (word.length > 3 && normalKeyword.split(' ').some(kw => kw === word || kw.startsWith(word) || word.startsWith(kw))) {
          score += 2;
        }
      }
    }
  }
  return score;
}

function getBestMatch(input: string): KnowledgeEntry | null {
  let best: KnowledgeEntry | null = null;
  let bestScore = 0;
  for (const entry of WASSCE_KNOWLEDGE) {
    const score = scoreMatch(input, entry);
    if (score > bestScore) {
      bestScore = score;
      best = entry;
    }
  }
  return bestScore >= 1 ? best : null;
}

const GREETINGS = ['hi', 'hello', 'hey', 'good morning', 'good afternoon', 'good evening', 'good day', 'howdy'];
const GRATITUDE = ['thank', 'thanks', 'thank you', 'grateful', 'appreciate'];
const FAREWELLS = ['bye', 'goodbye', 'see you', 'later', 'good night'];

function detectIntent(input: string): 'greeting' | 'gratitude' | 'farewell' | 'question' | 'unclear' {
  const n = normalize(input);
  if (GREETINGS.some(g => n === g || n.startsWith(g + ' '))) return 'greeting';
  if (GRATITUDE.some(g => n.includes(g))) return 'gratitude';
  if (FAREWELLS.some(f => n.includes(f))) return 'farewell';
  if (n.length < 4) return 'unclear';
  return 'question';
}

function buildConversationContext(messages: MentorMessage[], currentInput: string): string {
  const recent = messages.slice(-6);
  const mentorMsgs = recent.filter(m => m.role === 'mentor').map(m => m.content.toLowerCase());
  const userMsgs = recent.filter(m => m.role === 'user').map(m => m.content.toLowerCase());

  for (const prev of userMsgs.slice().reverse()) {
    const combined = prev + ' ' + currentInput;
    const match = getBestMatch(combined);
    if (match) return combined;
  }

  for (const prev of mentorMsgs.slice().reverse()) {
    for (const entry of WASSCE_KNOWLEDGE) {
      if (scoreMatch(prev, entry) >= 2) {
        const keywords = entry.keywords.slice(0, 3).join(' ');
        return keywords + ' ' + currentInput;
      }
    }
  }

  return currentInput;
}

const FOLLOW_UP_PROMPTS: Record<string, string[]> = {
  'Mathematics - Algebra': ['Do you want me to walk you through factorization step-by-step?', 'Would you like a practice problem?', 'Want me to explain the discriminant in more detail?'],
  'Mathematics - Trigonometry': ['Shall I explain bearings with a worked example?', 'Want to practice the sine or cosine rule?', 'Would you like me to explain the unit circle?'],
  'Biology - Cell Biology': ['Want me to explain osmosis vs diffusion in detail?', 'Shall I go deeper into mitosis stages?', 'Would you like to compare plant and animal cells further?'],
  'Chemistry - Acids, Bases and Salts': ['Want me to walk through a titration calculation?', 'Shall I explain the pH scale further?', 'Would you like more neutralization equations?'],
  'Physics - Motion': ['Want me to solve a SUVAT problem with you?', 'Shall I explain velocity-time graphs in more detail?', 'Would you like to work through a momentum problem?'],
};

function getFollowUp(entry: KnowledgeEntry): string {
  const prompts = FOLLOW_UP_PROMPTS[entry.subject];
  if (prompts && prompts.length > 0) {
    return '\n\n---\n*' + prompts[Math.floor(Math.random() * prompts.length)] + '*';
  }
  return '';
}

export function generateResponse(input: string, history: MentorMessage[]): string {
  const intent = detectIntent(input);

  if (intent === 'greeting') {
    const greetings = [
      "Hello! I'm MentorX, your WASSCE study companion. What topic are you working on today? I'm here to help with Mathematics, English, Biology, Chemistry, Physics, Geography, Further Mathematics, and Agricultural Science.",
      "Hey there! Ready to study? Ask me anything about your WASSCE subjects — I'll break it down clearly for you.",
      "Good to see you! What subject or topic shall we tackle together today?",
    ];
    return greetings[Math.floor(Math.random() * greetings.length)];
  }

  if (intent === 'gratitude') {
    const responses = [
      "You're welcome! Keep up the great work — consistency is key to WASSCE success. What else would you like to explore?",
      "Happy to help! Mastering one topic at a time is how it's done. Anything else on your mind?",
      "Glad that was useful! Feel free to ask me anything else anytime.",
    ];
    return responses[Math.floor(Math.random() * responses.length)];
  }

  if (intent === 'farewell') {
    return "Good luck with your studies! Remember: practice past questions, stay consistent, and you'll do great in WASSCE. Come back anytime you need help!";
  }

  if (intent === 'unclear') {
    return "I didn't quite catch that. Could you rephrase your question? Try asking about a specific topic like 'How do I solve quadratic equations?' or 'Explain photosynthesis'.";
  }

  const contextualInput = buildConversationContext(history, input);
  const match = getBestMatch(contextualInput) || getBestMatch(input);

  if (match) {
    const followUp = getFollowUp(match);
    return match.response + followUp;
  }

  return `I can help with that! Try rephrasing your question with the specific topic name. Here are the areas I cover:

**Mathematics**: Algebra, Quadratics, Trigonometry, Sets, Statistics, Probability, Indices, Logarithms, Geometry, Mensuration, Coordinate Geometry
**English**: Essay Writing, Formal/Informal Letters, Comprehension, Grammar, Reported Speech
**Biology**: Cell Biology, Genetics, Photosynthesis, Osmosis, Respiration, Ecology
**Chemistry**: Atomic Structure, Bonding, Acids & Bases, Redox, Electrolysis, Titration
**Physics**: Newton's Laws, Motion, Waves, Electricity, Circuits, Electromagnetic Spectrum
**Geography**: West Africa, Climate, Vegetation, Population, Migration
**Further Maths**: Calculus, Differentiation, Integration, Vectors
**Agricultural Science**: Crop Production, Soil, Fertilizers, Pest Control

Try asking something like: "Explain photosynthesis", "How do I solve quadratic equations?", or "What are Newton's Laws of Motion?"`;
}
