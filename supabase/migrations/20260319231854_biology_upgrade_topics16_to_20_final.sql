/*
  # Biology Topics 16-20: Evolution, Biotechnology, Practical Skills, Plant Coordination, Food Webs — Upgrade
*/

-- TOPIC 16: EVOLUTION AND NATURAL SELECTION
UPDATE topic_sections SET content = '## Evolution and Natural Selection — Overview

**Evolution** is the change in the inherited characteristics of a population over successive generations.

**Key principle:** All living organisms are related and have descended from common ancestors through a process of gradual change over millions of years.

---

### Evidence for Evolution

**1. Fossil Record**
- Fossils show progressive changes in organisms over time
- Older (deeper) fossils show simpler organisms; newer (shallower) show more complex
- Shows transitional forms (e.g., Archaeopteryx — between reptiles and birds)
- **Limitations:** Fossils form rarely; many gaps exist

**2. Comparative Anatomy**
- **Homologous structures:** Same basic structure but different functions
  ```
  Human arm    Bat wing    Dolphin flipper    Horse leg
      ↑              ↑            ↑               ↑
  All have the same basic bone structure (humerus, radius, ulna, carpals, metacarpals, phalanges)
  → Suggests common ancestor; modification for different functions (divergent evolution)
  ```
- **Analogous structures:** Different structure but same function (convergent evolution)
  - Bird wing and insect wing — both for flying but completely different structure
  - No common evolutionary origin

**3. Comparative Biochemistry**
- All living organisms use the same DNA code (genetic code is universal)
- Similar protein sequences (cytochrome c) in related organisms
- More similar DNA = more closely related

**4. Comparative Embryology**
- Vertebrate embryos look almost identical in early stages
- Suggests shared common ancestry

**5. Biogeography**
- Similar environments in different parts of world have different organisms → evolved separately
- Island species closely related to nearest mainland species' WHERE id = 'ffd5bebf-8c51-43b9-a6cc-e2e6a8b4fd23';

UPDATE topic_sections SET content = '## Natural Selection — Darwin''s Theory

### Charles Darwin (1809-1882)
Darwin proposed the theory of evolution by **natural selection** based on observations during his voyage on HMS Beagle (1831-1836), especially in the Galápagos Islands.

**Darwin''s Four Observations:**
1. **Overproduction:** Organisms produce more offspring than can survive
2. **Variation:** Individuals in a population show variation (differences) in their traits
3. **Struggle for survival:** Resources are limited; individuals compete
4. **Differential reproduction:** Individuals with favourable variations survive and reproduce more

**Conclusion — Natural Selection:**
```
Random mutations → NEW VARIATION in population
        ↓
Environment selects: those with ADVANTAGEOUS traits
SURVIVE and REPRODUCE more (are "selected for")
        ↓
Advantageous alleles become MORE COMMON in population
        ↓
Over many generations → EVOLUTION (change in population)
```

---

### Worked Example: Peppered Moth (Biston betularia)
**Before industrial revolution:**
- Tree bark was pale/grey (lichens)
- Light-coloured moths were CAMOUFLAGED → survived → reproduced
- Dark (melanic) moths were VISIBLE → eaten by birds → rare

**After industrial revolution:**
- Soot killed lichens; trees became black with soot
- Dark moths were now CAMOUFLAGED → survived
- Light moths were now VISIBLE → eaten → became rare
- Dark allele became more common in polluted areas

This is **industrial melanism** — a classic example of natural selection in action.

---

### Types of Natural Selection
| Type | Effect on Population | Example |
|---|---|---|
| **Directional selection** | Favours one extreme phenotype → population mean shifts | Antibiotic resistance; industrial melanism |
| **Stabilising selection** | Favours intermediate phenotype → reduces variation | Human birth weight (very small or very large babies die more) |
| **Disruptive selection** | Favours both extreme phenotypes → two groups emerge | Beak sizes in birds with bimodal food availability |

---

### Speciation — Formation of New Species
**Species:** A group of organisms that can interbreed and produce fertile offspring.

**Allopatric speciation (geographic isolation):**
```
One population
    ↓ Physical barrier forms (mountain, river, ocean)
Two isolated populations
    ↓ Different mutations accumulate in each; different environments select different traits
Two populations become genetically different
    ↓ Eventually can no longer interbreed
Two new SPECIES formed
```

**Example:** Darwin''s finches in Galápagos — one ancestor species → 14 species with different beak shapes adapted to different food sources' WHERE id = '34ff02be-c486-4574-a95b-58f8d00a3aac';

UPDATE topic_sections SET content = '## Lamarck vs Darwin, and Worked Examples

### Lamarck vs Darwin (WASSCE Comparison)

**Jean-Baptiste Lamarck (1744-1829) — Theory of Inheritance of Acquired Characteristics:**
- Organisms develop new features during their lifetime in response to the environment
- These acquired characteristics are PASSED ON to offspring
- Example: Giraffes stretched necks to reach leaves → longer necks passed to offspring
- **WRONG — disproved by evidence**; acquired changes during lifetime are NOT inherited (genetic changes needed)

**Charles Darwin (1809-1882) — Theory of Natural Selection:**
- Variation already EXISTS in population (through random mutation)
- Environment SELECTS the already-present favourable variation
- Giraffes with ALREADY LONGER necks (due to genetic variation) survived better and reproduced more
- Long neck alleles became more common over generations
- **CORRECT — supported by evidence**

| Feature | Lamarck | Darwin |
|---|---|---|
| Source of variation | Use/disuse during lifetime | Random mutations |
| How traits are inherited | Acquired traits inherited | Only genetic variation inherited |
| Mechanism | Organisms actively adapt | Environment selects pre-existing variation |
| Scientific status | Discredited | Accepted; supported by evidence |

---

### Adaptation
An **adaptation** is an inherited characteristic that helps an organism survive and reproduce in its environment.

**Types of adaptations:**
- **Structural:** Body features (e.g., camouflage colour, streamlined body)
- **Physiological:** Internal processes (e.g., producing antifreeze proteins, concentrated urine in desert animals)
- **Behavioural:** Actions (e.g., migration, hibernation, nocturnal habits)

**West African examples:**
- **Camel:** Hump (fat storage), wide feet, long eyelashes, ability to tolerate dehydration — adapted to desert
- **Mangrove tree:** Aerial (prop) roots for gas exchange in waterlogged soil; salt excretion
- **Crocodile:** Eyes and nostrils on top of head for stalking prey while submerged

---

### Artificial Selection (Selective Breeding)
Humans deliberately choose organisms with desirable traits and breed them together.

**Examples:**
| Organism | Trait selected | Use |
|---|---|---|
| Cattle | High milk yield | Dairy farming |
| Maize | High grain yield, disease resistance | Food production |
| Dogs | Various traits (size, behaviour) | Working animals, pets |
| Yam | High starch content, disease resistance | Food security |

**Problem:** Reduces genetic diversity → populations vulnerable to new diseases' WHERE id = '7fcc689f-761a-4d30-b885-8ca8d18c5c83';

UPDATE topic_sections SET content = '## WASSCE Questions: Evolution

### Multiple Choice

**Q1.** Darwin''s theory of evolution is based on:
A) Inheritance of acquired characteristics
B) Natural selection of random variations
C) Organisms actively adapting to their environment
D) Direct transmission of learned behaviour
**Answer: B**

**Q2.** The peppered moth example demonstrates:
A) Lamarckian evolution   B) Artificial selection   C) Natural selection   D) Mutation only
**Answer: C**

**Q3.** Homologous structures are organs that:
A) Perform the same function in different organisms
B) Have the same basic structure but different functions
C) Look identical in different organisms
D) Are found only in vertebrates
**Answer: B** — e.g., human arm, bat wing, dolphin flipper

**Q4.** Which of the following is evidence for evolution?
A) All organisms need food   B) Fossil record showing progressive changes   C) All organisms reproduce   D) All organisms are made of cells
**Answer: B**

---

### Essay Question

**Q5.** Compare the theories of Lamarck and Darwin on evolution. State which theory is accepted and give reasons. [10]

Key points:
- Lamarck: acquired characteristics inherited; organisms modify themselves during lifetime; e.g., giraffe neck
- Darwin: random variation exists; natural selection favours better-adapted individuals; better adapted survive and reproduce; allele frequencies change over time

- Darwin''s theory accepted because:
  - DNA evidence shows acquired traits cannot be inherited
  - Experiments failed to support inheritance of acquired characteristics
  - Fossil record supports gradual change over time
  - Molecular biology confirms DNA mutations as source of variation
  - Natural selection observed in real time (e.g., antibiotic resistance, peppered moth)

**WASSCE Tip:** The Lamarck vs Darwin comparison is a perennial favourite — know both theories and be able to explain why Darwin''s is supported by evidence!' WHERE id = '681c8cbe-3185-49a1-9a0f-a8ff8057662b';

UPDATE topic_sections SET content = '## Evolution: Extended Examples

### Antibiotic Resistance — Natural Selection in Bacteria
```
Large population of bacteria (some with random mutation for antibiotic resistance)
        ↓ Antibiotic introduced
Most bacteria KILLED (not resistant)
        ↓
Resistant bacteria SURVIVE and REPRODUCE
        ↓
Population now mostly RESISTANT bacteria
        ↓
Antibiotic no longer effective → "superbugs" (e.g., MRSA)
```

This happens in YEARS — demonstrates natural selection is ongoing.

**Prevention:** Complete full course of antibiotics; don''t use unnecessarily; use combination therapy.

### Hardy-Weinberg Principle (Brief Note)
In a population with no evolution occurring:
- Allele frequencies remain constant from generation to generation
- Conditions required: large population, random mating, no mutation, no selection, no gene flow

### Co-evolution
Two species evolve together, each influencing the evolution of the other:
- Flowers and their pollinators (bees evolved alongside flowering plants)
- Parasites and hosts (Plasmodium and human immune system)
- Predators and prey (cheetah speed and impala speed)' WHERE id = 'f8a37c58-d5ef-4e81-80a4-143cee3966a7';

-- TOPIC 17: BIOTECHNOLOGY
UPDATE topic_sections SET content = '## Biotechnology — Overview

**Biotechnology** is the use of living organisms, cells, or biological processes to develop products and processes that are useful to humans.

### Traditional vs Modern Biotechnology
| Type | Description | Examples |
|---|---|---|
| **Traditional biotechnology** | Uses whole organisms or fermentation processes (ancient) | Bread making, beer brewing, cheese making, yoghurt |
| **Modern biotechnology** | Uses genetic engineering, molecular biology techniques | GMOs, gene therapy, monoclonal antibodies, PCR |

---

### Fermentation Technology
**Fermentation:** Use of microorganisms to produce useful products through metabolic processes

**1. Bread Making (Yeast — Saccharomyces cerevisiae)**
```
Sugar (starch → glucose by amylase in flour)
        ↓ Yeast (anaerobic respiration)
CO₂ gas → causes dough to rise (bubble formation)
Ethanol → evaporates during baking
```

**2. Beer and Wine Production**
- Yeast ferments glucose → ethanol + CO₂
- Beer: barley grain malted (germinated) → starch digested to maltose → yeast ferments → ethanol
- Wine: grapes crushed → grape sugar fermented by yeast → wine

**3. Yoghurt and Cheese**
- Lactobacillus bacteria ferment lactose → lactic acid
- Lactic acid curdles milk proteins → yoghurt or cheese

**4. Antibiotics (Industrial Fermentation)**
- Penicillium mould produces penicillin
- Grown in large fermenters; penicillin extracted and purified
- Other examples: Streptomycin, Tetracycline (from Streptomyces bacteria)

**5. Single Cell Protein (SCP)**
- Fungi (Fusarium) grown on glucose medium → Quorn™ (mycoprotein)
- High protein content; used as meat substitute' WHERE id = '8455da46-4ef2-43ec-b925-2c35797f5c37';

UPDATE topic_sections SET content = '## Genetic Engineering, Cloning, and Medical Biotechnology

### Genetic Engineering (Recombinant DNA Technology)
**Definition:** The direct manipulation of an organism''s genome using biotechnology to insert, delete, or modify genes.

**Basic steps of genetic engineering:**
```
1. Identify and isolate the desired gene from a donor organism
   (using restriction enzymes that cut DNA at specific sequences)
        ↓
2. Cut open a vector (usually a plasmid from bacteria) using same restriction enzyme
   → "sticky ends" formed
        ↓
3. Insert gene into vector using DNA ligase (joins sticky ends)
   → Recombinant DNA formed
        ↓
4. Insert recombinant plasmid into host organism (e.g., bacteria, plant cell)
        ↓
5. Host organism expresses the inserted gene → produces desired protein
```

---

### Applications of Genetic Engineering

**1. Human Insulin Production**
- Human insulin gene inserted into E. coli bacteria
- Bacteria grown in fermenters → produce human insulin → purified
- Used for Type 1 diabetes treatment; replaced pig/cow insulin
- More effective; no allergic reactions; large-scale production

**2. Golden Rice**
- Vitamin A precursor (beta-carotene) genes from daffodil inserted into rice genome
- Rice normally has no beta-carotene
- Golden Rice contains beta-carotene → yellow colour
- Potential to prevent Vitamin A deficiency in developing countries

**3. Bt Crops (Bacillus thuringiensis)**
- Toxin gene from Bt bacterium inserted into crop plants (maize, cotton)
- Plant cells produce Bt toxin → kills insect pests when they eat the plant
- Reduces need for insecticide spraying

**4. PCR (Polymerase Chain Reaction)**
- Amplifies (copies) tiny amounts of DNA millions of times
- Used in forensic science (crime investigation), disease diagnosis, paternity testing, archaeological analysis

---

### Cloning
**Definition:** Production of genetically identical copies of a cell or organism.

**Types:**
- **Microbial cloning:** Bacteria reproduce asexually → all cells genetically identical
- **Plant cloning:** Tissue culture (totipotency of plant cells); cuttings
- **Animal cloning:** 
  - Embryo splitting (identical twins naturally)
  - Somatic cell nuclear transfer (SCNT): nucleus from adult body cell inserted into enucleated egg cell
  - **Dolly the sheep (1996)** — first cloned mammal from adult body cell

---

### Gene Therapy
- Defective gene replaced or supplemented with functional gene
- Viral vectors used to deliver gene into patient''s cells
- **Somatic gene therapy:** Only treats that individual; not passed to offspring
- **Germline gene therapy:** Changes egg/sperm cells; inheritable (controversial; mostly banned)
- Applications: Cystic fibrosis, SCID (severe combined immunodeficiency), some cancers' WHERE id = '5299db45-a587-4141-8300-1d7ba2fe1685';

UPDATE topic_sections SET content = '## Biotechnology Applications and Ethical Issues

### Monoclonal Antibodies
- Identical antibodies produced from a single B lymphocyte clone
- Made by fusing B lymphocyte with cancer cell (hybridoma cell)
- Hybridoma cells divide indefinitely AND produce specific antibodies

**Applications:**
- **Pregnancy tests:** Detect HCG hormone in urine
- **Cancer treatment:** Antibodies attach to cancer cells → guide drug/immune attack (Herceptin)
- **Disease diagnosis:** Detect specific antigens (HIV test, COVID-19 rapid test)
- **Blood typing:** Identify blood group antigens

---

### Stem Cell Technology
**Stem cells:** Undifferentiated cells capable of self-renewal and differentiating into specialised cell types.

| Type | Source | Potential |
|---|---|---|
| Embryonic stem cells | Blastocyst (3-5 day embryo) | Can become ANY cell type (totipotent/pluripotent) |
| Adult stem cells | Bone marrow, skin, gut | Can become limited cell types |
| Induced pluripotent (iPS) | Adult cells reprogrammed | Similar to embryonic; avoids ethical issues |

**Applications:** Treating leukaemia (bone marrow transplant), Parkinson''s, spinal cord injury, diabetes

---

### Ethical Issues in Biotechnology

**GMOs (Genetically Modified Organisms):**
| Arguments For | Arguments Against |
|---|---|
| Higher crop yields; fewer pesticides | Unknown long-term effects on health and environment |
| Nutritional improvement (Golden Rice) | Biodiversity loss if GM crops outcompete wild species |
| Drought/disease resistance | Corporate control of food supply (patent issues) |
| Faster growth in livestock | Cross-contamination of organic crops |

**Human Cloning:**
- Reproductive cloning (making human babies) — universally banned
- Therapeutic cloning (making tissues/organs) — controversial but permitted in some countries

**Gene Therapy:**
- Somatic therapy generally accepted
- Germline therapy (heritable changes) — ethically very controversial

**Stem Cell Research:**
- Embryonic stem cells require destruction of embryo → ethical concerns
- Many religious groups oppose this' WHERE id = 'b2a8437f-dbc3-4e63-88e3-ec2eb9e444ae';

UPDATE topic_sections SET content = '## WASSCE Questions: Biotechnology

### Multiple Choice

**Q1.** Insulin for diabetic patients is now produced by:
A) Extracting from pig pancreas   B) Genetically engineered bacteria
C) Chemical synthesis only   D) Cloned human cells
**Answer: B** — Human insulin gene inserted into E. coli bacteria

**Q2.** The process of using Yeast to produce alcohol from sugar is:
A) Photosynthesis   B) Transpiration   C) Fermentation   D) Respiration only
**Answer: C** — Fermentation (anaerobic respiration by yeast)

**Q3.** Which enzyme is used to cut DNA at specific recognition sequences in genetic engineering?
A) DNA polymerase   B) DNA ligase   C) Restriction enzyme   D) RNA polymerase
**Answer: C**

**Q4.** Dolly the sheep was famous because she was:
A) First transgenic animal   B) First cloned mammal from adult body cell
C) First genetically modified sheep   D) First animal produced by IVF
**Answer: B**

---

### Essay Question

**Q5.** (a) Explain how genetic engineering is used to produce human insulin. [6]
(b) Discuss TWO advantages and TWO disadvantages of using genetically modified crops. [4]

**(a) Model answer:**
1. Identify human insulin gene from human DNA
2. Extract gene using restriction enzymes (cut at specific sequences)
3. Cut open bacterial plasmid (vector) using same restriction enzyme → sticky ends
4. Insert insulin gene into plasmid using DNA ligase
5. Insert recombinant plasmid into E. coli bacteria
6. Bacteria multiply in industrial fermenters → each produces human insulin
7. Insulin extracted, purified, and used for diabetic patients

**(b) Advantages:**
- Higher crop yield → more food for growing population
- Reduced need for pesticides → less environmental damage / lower farming costs

**Disadvantages:**
- Risk of gene transfer to wild plants (superweeds)
- Unknown long-term health effects on consumers; testing limited

**WASSCE Tip:** Biotechnology questions often ask for BOTH advantages and disadvantages — always present a balanced answer!' WHERE id = '3d00aa09-bd3c-48c8-bf38-45e24112d87d';

UPDATE topic_sections SET content = '## Biotechnology: Extended Notes

### Bioreactors (Industrial Fermenters)
```
Large vessel (1,000-100,000 litres)
├── Stirrer/agitator — keeps mixture uniform
├── Temperature control — water jacket or coils
├── pH control — acid/alkali addition
├── Aeration — sterile air pumped in (for aerobic fermentation)
├── Sterilisation — steam before use (prevents contamination)
└── Monitoring probes — pH, temperature, O₂, product concentration
```

Used for: antibiotic production, insulin, interferon, enzymes (protease for biological washing powder)

### Biogas
- Anaerobic digestion of organic waste (dung, crop residues) by bacteria
- Produces **methane (CH₄)** — used as fuel for cooking and lighting
- Residue used as fertiliser
- **Biogas plants widely used in rural West Africa and India**
- Renewable energy source; reduces deforestation (reduces need for firewood)

### DNA Fingerprinting (DNA Profiling)
1. DNA extracted from sample (blood, hair, saliva)
2. PCR amplifies specific regions (STRs — Short Tandem Repeats)
3. Gel electrophoresis separates DNA fragments by size
4. Pattern compared between samples
5. Used in: crime investigation, paternity testing, identifying unknown bodies' WHERE id = '46f412ca-c40c-4061-95ce-7515ef4b9da4';

-- TOPIC 18: PRACTICAL BIOLOGY SKILLS
UPDATE topic_sections SET content = '## Practical Biology Skills — Overview

Practical biology involves planning experiments, making accurate observations, recording results, and drawing valid conclusions.

### Scientific Method
```
Observation / Question
        ↓
Hypothesis (testable prediction)
        ↓
Experimental design (control variables)
        ↓
Data collection (results)
        ↓
Analysis and interpretation
        ↓
Conclusion (does result support hypothesis?)
        ↓
Evaluation (limitations, improvements)
```

---

### Key Variables
| Variable | Definition | Example |
|---|---|---|
| **Independent variable** | What you deliberately change | Light intensity (different lamp distances) |
| **Dependent variable** | What you measure (changes in response) | Rate of photosynthesis (bubbles/minute) |
| **Control variables** | What you keep constant (fair test) | Temperature, CO₂ concentration, pH |

---

### Controls in Experiments
- **Positive control:** Known to produce positive result → confirms test works correctly
- **Negative control:** Known to produce negative result → confirms no false positives
- **Experimental control:** Identical setup without the independent variable → for comparison

---

### Accuracy, Precision, and Reliability
- **Accuracy:** How close a measurement is to the true value
- **Precision:** How reproducible/consistent measurements are
- **Reliability:** Results can be repeated and similar results obtained → take multiple readings' WHERE id = '985cf70b-ce7b-4175-8407-a5251a1c05fe';

UPDATE topic_sections SET content = '## Key Biological Tests and Procedures

### Food Tests (WASSCE Practical Staples)
| Substance | Test | Reagent | Observation (Positive) |
|---|---|---|---|
| Starch | Iodine test | Iodine solution | Blue-black colour |
| Reducing sugars (glucose, maltose) | Benedict''s test | Benedict''s solution; heat in water bath | Brick red/orange precipitate |
| Non-reducing sugars (sucrose) | Benedict''s + hydrolysis | Boil with dilute HCl; neutralise; Benedict''s | Brick red (after hydrolysis) |
| Protein | Biuret test | NaOH + CuSO₄ | Purple/violet colour |
| Fat | Emulsion test | Dissolve in ethanol; add water | Milky white emulsion |
| Fat (alternative) | Sudan III test | Sudan III dye | Orange-red staining |
| Vitamin C | DCPIP test | DCPIP blue solution | Blue decolourises to colourless |

---

### Microscopy Skills
**Parts of a light microscope:**
```
Eyepiece lens (×10) — you look through here
    ↓
Coarse adjustment knob — rough focussing
    ↓
Fine adjustment knob — precise focussing
    ↓
Objective lenses (×4, ×10, ×40) — mounted on revolving nosepiece
    ↓
Stage — holds slide
    ↓
Condenser — focuses light on slide
    ↓
Iris diaphragm — controls light intensity
    ↓
Light source (lamp or mirror)
```

**Total magnification = Eyepiece magnification × Objective magnification**
Example: ×10 eyepiece × ×40 objective = ×400 total magnification

**Calculating actual size:**
```
Actual size = Measured size ÷ Magnification
If a cell appears 5 mm under ×100 magnification:
Actual size = 5 mm ÷ 100 = 0.05 mm = 50 µm
```

---

### Staining Techniques
| Stain | What it stains | Use |
|---|---|---|
| Methylene blue | Nucleus (blue) | Animal cells (e.g., cheek cells) |
| Iodine solution | Starch (blue-black) | Plant cells; show starch grains |
| Eosin | Cytoplasm (pink-red) | Cell cytoplasm |
| Crystal violet | Gram-positive bacteria (purple) | Gram staining |
| Aceto-carmine/orcein | Chromosomes (red) | Mitosis; seeing chromosomes |

---

### Osmosis Practical (Classic WASSCE Experiment)
**Visking tubing experiment (semi-permeable membrane model):**
- Fill Visking tubing with concentrated sugar solution → knot both ends → weigh → place in water
- After 30 minutes: tubing becomes turgid (heavier) → water entered by osmosis

**Potato chips in different salt concentrations:**
- Cut identical potato chips; measure length/mass
- Place in different NaCl concentrations (0%, 0.5%, 1%, 2%)
- After 30 min: weigh/measure again
- In distilled water: chips increase in mass (turgid — water entered)
- In concentrated NaCl: chips decrease in mass (plasmolysed — water left)
- Find isotonic point (no change in mass) = cell sap concentration of potato (~0.3M)' WHERE id = 'f4666536-b0d3-444b-8358-f4f7aefba63a';

UPDATE topic_sections SET content = '## Experimental Design and Data Analysis

### Drawing Scientific Diagrams
Rules for biological drawings:
1. Use pencil only (not pen)
2. Single continuous lines (no sketching/shading)
3. No artistic shading or colour
4. Label lines must be straight and not cross each other
5. Labels should be horizontal
6. Include: title, scale/magnification, date
7. Drawing should be large, clear, and in proportion

---

### Graphing Skills

**Bar chart:** For discontinuous/categorical data (blood groups, species counts)
**Line graph:** For continuous data (temperature vs enzyme rate)
**Scatter graph:** To show correlation between two variables

**Drawing a graph:**
1. Title: "Effect of [independent variable] on [dependent variable]"
2. Independent variable on x-axis; dependent variable on y-axis
3. Appropriate scale (uses >50% of available space)
4. Clearly labelled axes with units
5. Plot points accurately with ×
6. Draw best-fit line (straight or smooth curve) through points
7. Do NOT connect dot-to-dot

---

### Data Analysis — Calculating Rate
```
Rate = Change in quantity ÷ Time taken

Example: 10 cm³ of O₂ produced in 5 minutes
Rate = 10 ÷ 5 = 2 cm³ per minute
```

---

### Common WASSCE Practical Scenarios

**1. Testing unknown food samples:**
- Apply each food test systematically
- Record observations
- Draw conclusions about food composition

**2. Investigating enzyme activity:**
- Test enzyme at different temperatures or pH
- Measure rate of product formation or substrate disappearance
- Plot graph; identify optimum conditions

**3. Investigating transpiration (potometer):**
- Measure water uptake by plant shoot in different conditions
- Calculate rate: distance moved by bubble ÷ time

**4. Investigating osmosis (potato chips):**
- Measure mass/length before and after
- Calculate percentage change: (change ÷ initial) × 100
- Plot % change vs NaCl concentration

**5. Germination experiment:**
- Test effect of temperature on germination rate
- Count seeds germinated each day
- Identify optimal germination temperature' WHERE id = 'edc54b73-01a0-49cb-8122-fcdc61c882fb';

UPDATE topic_sections SET content = '## WASSCE Practical Questions

### Practical Question 1
A student tests four food samples (A, B, C, D) with different reagents. Results:

| Sample | Iodine | Benedict''s | Biuret | Emulsion |
|---|---|---|---|---|
| A | Blue-black | No change | No colour | No emulsion |
| B | No change | Brick red | No colour | No emulsion |
| C | No change | No change | Purple | No emulsion |
| D | No change | No change | No colour | White emulsion |

(a) State which food substances are present in each sample. [4]
- A: Contains starch
- B: Contains reducing sugars (glucose/maltose)
- C: Contains protein
- D: Contains fat/lipid

(b) What further test would you do to determine if sample B contains sucrose? [3]
- Boil sample B with dilute HCl (hydrolyse sucrose to glucose + fructose)
- Neutralise with NaHCO₃
- Perform Benedict''s test again
- If brick red precipitate forms = sucrose was present (not just reducing sugar)

---

### Practical Question 2: Osmosis in Potato
Results: potato chips placed in different NaCl solutions for 30 minutes:

| NaCl concentration (M) | Initial mass (g) | Final mass (g) | Change (g) | % change |
|---|---|---|---|---|
| 0.0 | 5.0 | 5.8 | +0.8 | +16% |
| 0.2 | 5.0 | 5.5 | +0.5 | +10% |
| 0.4 | 5.0 | 5.0 | 0.0 | 0% |
| 0.6 | 5.0 | 4.6 | -0.4 | -8% |
| 0.8 | 5.0 | 4.2 | -0.8 | -16% |

(a) At which concentration is there no net movement of water? [1] **0.4 M** (isotonic point)

(b) Explain the result at 0.0 M (distilled water). [3]
- Distilled water has higher water potential than potato cell sap
- Water moves into potato cells by osmosis
- Cells become turgid → mass increases

(c) What would you see in the cells at 0.8 M? [2]
- Cell membrane pulls away from cell wall (plasmolysis)
- Cell becomes flaccid/shrunken

**WASSCE Tip:** In practical questions, always explain results using the biological principle (osmosis, enzyme activity, etc.) — not just describing what happened!' WHERE id = '42b38563-1306-4680-814b-75410705c58e';

UPDATE topic_sections SET content = '## Practical Biology: Extended Skills

### Using a Microscope — Procedure
1. Start with the lowest power objective (×4)
2. Place slide on stage; secure with clips
3. Use coarse adjustment to bring slide into rough focus
4. Switch to higher power objective; use fine adjustment only
5. Adjust iris diaphragm for optimal lighting

### Preparing a Wet Mount Slide
1. Place a drop of water on glass slide
2. Add specimen (thin section, scraping, or smear)
3. Lower coverslip at 45° angle (prevents air bubbles)
4. Remove excess water with tissue at edge of coverslip
5. Add stain at one edge; draw through with tissue at other edge

### Calculating Cell Size (WASSCE Calculation)
```
Image of cell = 50 mm long under ×400 magnification

Actual size = 50 mm ÷ 400 = 0.125 mm = 125 µm

Or in µm: Image size in µm ÷ magnification
= 50,000 µm ÷ 400 = 125 µm
```

### Evaluating Experiments
When asked to evaluate an experiment, consider:
- **Reliability:** Were enough repeats done? (Usually 3+)
- **Validity:** Were variables properly controlled?
- **Accuracy:** Were measuring instruments appropriate?
- **Possible errors:** Parallax, evaporation, contamination
- **Improvements:** Suggest how to make more reliable/valid' WHERE id = '9cbea537-816c-4176-8f84-89e3a2ea2f81';

-- TOPIC 19: COORDINATION IN PLANTS
UPDATE topic_sections SET content = '## Coordination in Plants — Overview

Plants do not have a nervous system or hormones transported in blood, but they do respond to stimuli through **chemical signals (phytohormones)** and **physical/structural responses**.

### Types of Plant Responses
| Type | Definition | Examples |
|---|---|---|
| **Tropism** | Growth movement in RESPONSE to directional stimulus; direction depends on stimulus direction | Phototropism, geotropism |
| **Nasty (Nastic movement)** | Non-directional response to non-directional stimulus | Stomatal opening/closing, Venus flytrap |
| **Taxis** | Movement of a freely motile organism toward/away from stimulus | Algae moving toward light |

---

### Five Major Plant Hormones (Phytohormones)

**1. Auxin (IAA):**
- Made at shoot tips, young leaves, seeds
- Promotes cell elongation in stems
- HIGH concentration inhibits root growth; LOW promotes root growth
- Causes phototropism and geotropism
- Causes apical dominance

**2. Gibberellin:**
- Promotes stem elongation
- Breaks seed dormancy
- Promotes flowering in long-day plants
- Used in brewing (barley malting)

**3. Cytokinin:**
- Promotes cell division
- Slows leaf ageing (senescence)
- Works with auxin to control growth

**4. Abscisic acid (ABA):**
- "Stress hormone"
- Causes stomata to CLOSE in drought
- Induces seed dormancy
- Promotes leaf fall (abscission)

**5. Ethylene (ethene):**
- Promotes fruit ripening
- Causes abscission (fruit and leaf drop)
- Inhibits elongation growth
- Commercial use: ripening of bananas, pineapple' WHERE id = '7fed2b55-2851-4561-ab05-bcf7f5aa1833';

UPDATE topic_sections SET content = '## Phytohormones: Plant Chemical Signals

### Auxin and Phototropism (Detailed)

**The Went Experiment (classic experiment proving auxin causes phototropism):**
```
Experiment 1: Normal shoot in uniform light → grows straight
Experiment 2: Shoot tip removed → no growth (no auxin)
Experiment 3: Tip replaced symmetrically → growth resumes (straight)
Experiment 4: Light from one side → shoot bends toward light
Experiment 5: Tip placed to one side → shoot curves even in dark

Conclusion: Chemical (auxin) produced at tip causes bending
```

**Mechanism of phototropism:**
```
Light from LEFT side
        ↓
Photoreceptors in tip detect light direction
        ↓
Auxin moves to SHADED (right) side
        ↓
More auxin on right side → more cell elongation on right
        ↓
Right side grows FASTER than left
        ↓
Shoot bends LEFT (toward light)
        ↓
Positive phototropism (shoots grow TOWARD light)
```

**Root phototropism is NEGATIVE** (roots grow AWAY from light)

---

### Auxin and Geotropism (Gravitropism)

```
Shoot placed horizontally:
- Auxin accumulates on LOWER side (gravity)
- Lower side elongates MORE → shoot grows UPWARD
- This is NEGATIVE geotropism (shoots grow AGAINST gravity)

Root placed horizontally:
- Auxin accumulates on LOWER side
- Lower side INHIBITED (roots are MORE sensitive to high auxin)
- Upper side grows faster → root bends DOWNWARD
- This is POSITIVE geotropism (roots grow WITH gravity)
```

---

### Stomatal Opening and Closing (ABA and Guard Cells)

```
Stomate OPEN (day, well-watered):
Guard cells take up K⁺ ions by active transport →
Water enters guard cells by osmosis → cells become turgid →
Guard cells bow outward (thick inner wall) → pore opens

Stomate CLOSED (drought/dark):
ABA released when water stress detected →
K⁺ ions leave guard cells →
Water leaves by osmosis → guard cells become flaccid →
Guard cells straighten → pore closes
```

---

### Apical Dominance
```
Main shoot apex (tip) produces high auxin concentration
        ↓
High auxin diffuses down → inhibits lateral bud growth
        ↓
Side branches do not grow while main shoot is intact
        ↓
Remove tip → auxin removed → lateral buds grow → bushy plant
```

**Practical applications:**
- Pruning hedges and shrubs (removes apical dominance → bushy growth)
- Pinching out growing tips in tomatoes, peppers
- Rooting powder contains auxin → promotes root formation in cuttings' WHERE id = '00b22d3c-38ae-4d65-98fd-57a7f77a0a0d';

UPDATE topic_sections SET content = '## Worked Examples: Plant Coordination

### Worked Example 1: Interpreting Auxin Experiment
Q: A student placed grass seedlings in a box with a hole on one side. After 48 hours, all seedlings had bent toward the hole. Explain.

**Answer:**
- Light enters the box through the hole on one side
- Auxin in the shoot tips moves to the shaded side (away from light source)
- The shaded side has higher auxin concentration
- Higher auxin causes more cell elongation on the shaded side
- Shaded side grows faster → shoot bends toward the light (toward the hole)
- This is **positive phototropism**

---

### Worked Example 2: Auxin Concentration and Growth
Q: A graph shows the effect of auxin concentration on root growth and shoot growth. At concentration X, shoot growth is maximum. What happens to root growth at concentration X?

**Typical answer:**
- Roots are much MORE sensitive to auxin than shoots
- A concentration that maximises shoot growth will be very HIGH for roots
- At that high concentration, auxin INHIBITS root growth
- Root growth will be below optimum or even inhibited at concentration X
- This explains why roots and shoots respond differently to the same auxin concentration

---

### Worked Example 3: Dormancy and Germination
Q: A gardener wants to break the dormancy of seeds stored over winter. What plant hormone could help?

**Answer:**
- **Gibberellin** can break seed dormancy
- Gibberellin promotes production of amylase enzyme in seeds
- Amylase digests stored starch → glucose → provides energy for germination
- **ABA (abscisic acid)** maintains dormancy; gibberellin antagonises ABA
- Alternatively: stratification (cold treatment) reduces ABA levels naturally

---

### Commercial Uses of Plant Hormones
| Hormone | Commercial Application | How used |
|---|---|---|
| Auxin (2,4-D) | Weed killer (herbicide) | Applied to lawn; broad-leaved weeds absorb more → overgrowth → death |
| Auxin (IBA) | Rooting powder | Applied to cut end of stem cuttings → promotes root formation |
| Gibberellin | Seedless grapes | Applied to grape flowers → parthenocarpy (fruit without fertilisation) |
| Gibberellin | Malting (beer) | Speeds up barley germination |
| Ethylene | Fruit ripening | Expose fruit to ethylene gas during transport |
| Cytokinins | Tissue culture | Promote cell division in culture medium |' WHERE id = 'f7d6e2fa-7892-420f-8dcb-97830d2782de';

UPDATE topic_sections SET content = '## WASSCE Questions: Plant Coordination

### Multiple Choice

**Q1.** The bending of a plant shoot toward light is due to:
A) More auxin on the illuminated side
B) More auxin on the shaded side
C) Equal auxin on both sides
D) No auxin in the shoot
**Answer: B** — Auxin moves to shaded side; causes more elongation there

**Q2.** Which hormone causes stomata to close during water stress?
A) Auxin   B) Gibberellin   C) Abscisic acid   D) Ethylene
**Answer: C** — ABA is the stress hormone that closes stomata

**Q3.** A plant''s tip is removed and auxin is applied to ONE side. The plant will:
A) Grow straight   B) Bend away from the side with auxin
C) Bend toward the side with auxin   D) Stop growing
**Answer: C** — Auxin promotes cell elongation; side with more auxin grows faster → bends toward auxin side

**Q4.** Which plant hormone is responsible for fruit ripening?
A) Auxin   B) Cytokinin   C) Gibberellin   D) Ethylene
**Answer: D**

---

### Structured Questions

**Q5.** Describe an experiment to demonstrate that auxin is responsible for phototropism in oat seedlings (Avena). [6]

Key points:
- Grow seedlings in dark to obtain straight seedlings (control)
- Experimental group: shine light from one side
- Result: shoots bend toward light
- Further experiment: remove shoot tip → no bending even with unilateral light
- Conclusion: tip produces chemical that causes bending
- Place agar block under tip in dark → agar absorbs auxin
- Place agar block on one side of decapitated shoot → shoot bends away from agar
- This proves auxin causes bending (chemically, not light directly)

**Q6.** Explain what is meant by apical dominance and discuss its practical importance. [4]
- Apical dominance = suppression of lateral (side) bud growth by hormones from main shoot tip
- Auxin from apical bud diffuses down; inhibits lateral bud growth
- Practical importance: pruning removes apical bud → lateral buds grow → bushy, fuller plant
- Used in hedge trimming, shrub shaping, increasing yield in some crops

**WASSCE Tip:** Draw clear diagrams of phototropism and geotropism with arrows showing auxin distribution and direction of bending — diagrams earn marks!' WHERE id = 'c2c71064-ec7e-4a42-86ae-e9b5aac9be39';

UPDATE topic_sections SET content = '## Plant Coordination: Extended Notes

### Flowering and Photoperiodism
Plants detect day length (actually night length) to trigger flowering.

| Category | Requirement | Examples |
|---|---|---|
| **Short-day plants** | Need long NIGHTS (short days) to flower | Chrysanthemum, soybean |
| **Long-day plants** | Need short nights (long days) to flower | Wheat, barley, spinach |
| **Day-neutral plants** | Flower regardless of day length | Tomato, maize, cucumber |

**Practical importance:** Commercial growers manipulate photoperiod to produce flowers and crops out of season.

### Thigmotropism (Touch Response)
- Climbing plants have tendrils that coil around supports
- Auxin redistribution on touch side
- Examples: Passion fruit, cucumber, pea

### Hydrotropism
- Roots grow toward water sources
- Important for plant survival in dry conditions

### Nastic Movements (Non-directional)
| Nastic movement | Stimulus | Example |
|---|---|---|
| Thigmonasty | Touch | Venus flytrap closes; Mimosa pudica folds leaves |
| Photonasty | Light/dark | Daisy flowers open in light, close at night |
| Thermonasty | Temperature change | Tulip flowers open in warm conditions |

### Wound Response
- Plants produce salicylic acid and jasmonic acid when wounded
- Triggers production of protease inhibitors → deters herbivores from eating further
- Can signal neighbouring plants to prepare defences' WHERE id = '781c5927-675e-41b7-bf28-30eb01b639e9';

-- TOPIC 20: FOOD WEBS AND ENERGY FLOW
UPDATE topic_sections SET content = '## Food Webs and Energy Flow — Overview

This topic revisits and deepens the ecology concepts already introduced in Topic 3, with a focus on energy dynamics, nutrient cycling, and ecosystem stability.

### Review: Trophic Levels and Energy Transfer

```
SOLAR ENERGY
      ↓
Producers (plants, algae) — Trophic Level 1
      ↓ ~10% energy transferred
Primary consumers (herbivores) — Trophic Level 2
      ↓ ~10% energy transferred
Secondary consumers (carnivores) — Trophic Level 3
      ↓ ~10% energy transferred
Tertiary consumers — Trophic Level 4
```

**Only ~10% of energy passes to the next level** because:
- ~60% lost in respiration (as heat)
- ~20% lost in excretion (urine, faeces)
- ~10% not consumed (bones, shells, roots)
- ~10% available for next level

---

### Gross vs Net Primary Production
- **Gross Primary Production (GPP):** Total energy fixed by photosynthesis
- **Net Primary Production (NPP):** Energy remaining after plants use some for their own respiration
  ```
  NPP = GPP − Plant Respiration
  ```
- NPP is the energy actually available to herbivores
- Tropical rainforests have highest NPP (warm, high light, high rainfall)

---

### Why Food Chains Are Short
- Energy lost at each trophic level (only 10% transferred)
- After 4-5 levels, so little energy remains that no organism could survive
- This is why apex predators (lions, eagles, sharks) are always relatively rare' WHERE id = '52996e81-0e79-4328-803f-8619f9e8f5ec';

UPDATE topic_sections SET content = '## Ecological Pyramids and Energy Transfer

### Three Types of Ecological Pyramids

**1. Pyramid of Numbers**
Shows number of organisms at each trophic level.
```
      ▲        (1 hawk)
     ▲▲▲       (3 snakes)
   ▲▲▲▲▲▲      (6 frogs)
 ▲▲▲▲▲▲▲▲▲    (9 grasshoppers)
▲▲▲▲▲▲▲▲▲▲▲   (11 grass plants)
```
Can be INVERTED (e.g., one oak tree supports thousands of insects → inverted pyramid of numbers).

**2. Pyramid of Biomass**
Shows dry mass of organisms at each level.
```
      ▲
     ▲▲▲
    ▲▲▲▲▲
   ▲▲▲▲▲▲▲
  ▲▲▲▲▲▲▲▲▲
```
Almost always pyramid-shaped. More reliable than pyramid of numbers.
Can occasionally be inverted (marine ecosystems: phytoplankton biomass can be less than zooplankton at one time due to rapid turnover).

**3. Pyramid of Energy**
Shows energy content (kJ per m² per year) at each level.
**ALWAYS pyramid-shaped** — energy is always lost at each level (thermodynamic law).
Most useful of the three for understanding ecosystem function.

---

### Worked Calculation: Pyramid of Energy
Given:
- Grass: 500,000 kJ/m²/year
- Grasshoppers: 50,000 kJ/m²/year
- Frogs: 5,000 kJ/m²/year
- Snakes: 500 kJ/m²/year
- Hawks: 50 kJ/m²/year

Efficiency at each step = 10% (50,000/500,000 = 0.1 = 10%)

**Q:** How much energy must grass produce to support a population of hawks consuming 50 kJ/m²/year?
**A:** 50 kJ (hawks) ÷ (0.10)⁴ = 50 ÷ 0.0001 = **500,000 kJ** (grass must fix)

---

### Food Web Stability
More complex food webs are more STABLE because:
- More alternative food sources for each consumer
- If one species disappears, others can compensate
- Simpler food webs (fewer species) = more vulnerable to disruption

**Keystone species:** A species that has a disproportionately large effect on ecosystem structure relative to its abundance.
- Example: Elephants in African savanna (maintain open habitat by breaking trees)
- Removing keystone species causes ecosystem collapse (trophic cascade)' WHERE id = 'dc00aacd-1df8-406c-a5b2-10655f513917';

UPDATE topic_sections SET content = '## Nutrient Cycles: Carbon and Nitrogen

### The Carbon Cycle

```
                    ATMOSPHERE (CO₂)
                    /         \
          Photosynthesis      Combustion
                /                 \
          Producers ←─ Death ─── Decomposers
              ↓                      ↑
          Consumers ──── Death ───────┘
              ↓
          Respiration → CO₂

Also: Dissolved CO₂ in oceans → shells → limestone → geological uplift
      Fossil fuels (ancient organic carbon) → combustion → CO₂
```

**Key processes:**
| Process | Effect on atmospheric CO₂ |
|---|---|
| Photosynthesis | Removes CO₂ |
| Respiration (all organisms) | Adds CO₂ |
| Decomposition | Adds CO₂ |
| Combustion | Adds CO₂ |
| Fossilisation | Removes CO₂ (long-term storage) |

**Human impact:** Combustion of fossil fuels + deforestation → increased CO₂ → enhanced greenhouse effect → global warming

---

### The Nitrogen Cycle (Full Detail)

```
ATMOSPHERE: N₂ gas (78% of air) — cannot be used directly by plants or animals
      ↓ Nitrogen fixation
   NH₃ (Ammonia) in soil
      ↓ Nitrification
   NO₂⁻ (Nitrites) → NO₃⁻ (Nitrates) — taken up by plant roots
      ↓ Assimilation (by plants)
   Proteins in plants and animals
      ↓ Ammonification (by decomposers)
   NH₃ back to soil
      ↓ Denitrification
   N₂ back to atmosphere
```

**Key microorganisms:**
| Organism | Process | Where found |
|---|---|---|
| Rhizobium | Nitrogen fixation | Root nodules of legumes (beans, groundnuts) |
| Azotobacter, Cyanobacteria | Free-living nitrogen fixation | Soil, water |
| Nitrosomonas | Nitrification (NH₃ → NO₂⁻) | Soil |
| Nitrobacter | Nitrification (NO₂⁻ → NO₃⁻) | Soil |
| Bacteria/fungi (decomposers) | Ammonification | Soil |
| Pseudomonas | Denitrification (NO₃⁻ → N₂) | Waterlogged/anaerobic soil |

**Agricultural importance:**
- Legume crops (beans, groundnuts, cowpea) fix nitrogen → improve soil fertility
- Crop rotation with legumes reduces need for artificial fertilisers
- Nitrogen fertilisers (urea, ammonium nitrate) supplement natural cycle
- Excess fertiliser → leaching → eutrophication of water bodies' WHERE id = '3d122dcf-dc31-4676-87ca-a2b7daad3572';

UPDATE topic_sections SET content = '## Food Web Analysis: Worked Examples

### Worked Example 1: Predicting Ecosystem Changes

**Food web:**
```
         Eagle
        ↗     ↖
     Hawk       Owl
      ↑            ↑
    Snake        Rat
      ↑            ↑
   Frog          Mouse
      ↑            ↑
Insects ────────── Grain
            ↑
           Grass
```

**Scenario:** Disease kills all frogs.

**Predicted effects:**
- **Insect population:** Increases (less predation by frogs)
- **Snake population:** Decreases (lost a major food source)
- **Hawk population:** May decrease (less snakes to eat)
- **Eagle population:** May decrease (indirect effect)
- **Grass/grain:** May decrease (more insects eating them)
- **Rat and mouse populations:** Unaffected directly (don''t eat frogs)

---

### Worked Example 2: Energy Efficiency Calculation

**Q:** A farm produces 1,000 kg of grass biomass. How much human biomass could this support if humans eat:
(a) Only grass (as herbivores)?
(b) Only beef cattle fed on the grass?

**(a) Humans as herbivores:**
1,000 kg grass × 10% = **100 kg of human biomass**

**(b) Humans eating cattle:**
1,000 kg grass → 100 kg cattle (10%) → 10 kg human biomass (10%)
**Only 10 kg human biomass** — 10 times LESS efficient!

**Conclusion:** Eating lower in the food chain is far more energy-efficient. This is why plant-based diets can feed more people from the same land area.

---

### Worked Example 3: Carbon Cycle and Human Impact

Q: Explain how deforestation leads to increased atmospheric CO₂.

**Answer:**
1. Trees absorb CO₂ during photosynthesis → stored as organic carbon in wood and leaves
2. Deforestation removes trees → less photosynthesis → less CO₂ absorbed
3. Burning of cleared trees → combustion releases stored carbon as CO₂ to atmosphere
4. Dead trees decomposed by bacteria/fungi → decomposition releases CO₂
5. Net result: more CO₂ enters atmosphere; less removed → CO₂ accumulates → enhanced greenhouse effect
6. This contributes to global warming and climate change' WHERE id = '07700e6d-5dc1-438e-856a-d5f7155efa26';

UPDATE topic_sections SET content = '## WASSCE Questions: Food Webs and Energy Flow

### Multiple Choice

**Q1.** Only about 10% of energy is transferred from one trophic level to the next. Where does the remaining 90% go?
A) To decomposers only   B) Lost as heat in respiration, excretion, and parts not eaten
C) To the sun   D) Stored in the soil
**Answer: B**

**Q2.** Which of the following always has a true pyramid shape?
A) Pyramid of numbers   B) Pyramid of biomass   C) Pyramid of energy   D) Both A and B
**Answer: C** — Pyramid of energy is ALWAYS pyramid-shaped

**Q3.** Nitrogen fixation is carried out by:
A) Nitrobacter   B) Pseudomonas   C) Rhizobium   D) Decomposers
**Answer: C** — Rhizobium in legume root nodules fixes N₂

**Q4.** The process by which nitrates are converted back to atmospheric nitrogen is called:
A) Ammonification   B) Nitrification   C) Nitrogen fixation   D) Denitrification
**Answer: D** — Denitrification by Pseudomonas in waterlogged soil

**Q5.** What would happen to the grass population if all herbivores were removed from an ecosystem?
A) Grass decreases   B) Grass remains unchanged   C) Grass increases   D) Grass goes extinct
**Answer: C** — No herbivores to eat it → grass population increases

---

### Structured Questions

**Q6.** (a) Explain why food chains rarely have more than 5 trophic levels. [3]
- Only about 10% of energy passes from one level to the next
- At each level, 90% of energy is lost (respiration, excretion, uneaten parts)
- After 4-5 trophic levels, the amount of energy available is too small to support a viable population
- There would not be enough energy to sustain another trophic level

(b) State THREE ways that energy is lost between trophic levels. [3]
1. Heat lost during respiration
2. Energy in excretory products (urine and faeces)
3. Uneaten parts of organisms (bones, shells, roots)

(c) Calculate: If grass contains 200,000 kJ of energy, how much energy would be available to a tertiary consumer? [2]
200,000 × 10% = 20,000 (primary consumer)
20,000 × 10% = 2,000 (secondary consumer)
2,000 × 10% = **200 kJ** (tertiary consumer)

---

### Essay Question

**Q7.** Describe the nitrogen cycle and explain the importance of microorganisms at each stage. [12]

**Complete model answer:**
- Nitrogen makes up 78% of air but cannot be used directly by plants/animals in N₂ form
- **Nitrogen fixation:** Rhizobium (in legume root nodules) and free-living Azotobacter convert N₂ → ammonia (NH₃); lightning also fixes nitrogen; makes nitrogen available in soil
- **Nitrification:** Nitrosomonas converts NH₃ → nitrites (NO₂⁻); Nitrobacter converts NO₂⁻ → nitrates (NO₃⁻); plants absorb nitrates through roots for protein synthesis
- **Assimilation:** Plants use nitrates → amino acids → proteins; animals eat plants → protein in animal tissue
- **Ammonification:** When organisms die, decomposers (bacteria, fungi) break down proteins → amino acids → ammonia → returns nitrogen to soil
- **Denitrification:** Pseudomonas bacteria in waterlogged/anaerobic soil convert NO₃⁻ → N₂ → returned to atmosphere; reduces soil fertility
- **Agricultural relevance:** Legume rotation (beans, groundnuts, cowpea) adds nitrogen naturally; prevents need for synthetic fertilisers

**WASSCE Tip:** Learn the specific names of bacteria at each stage — nitrogen fixation (Rhizobium, Azotobacter), nitrification (Nitrosomonas, Nitrobacter), denitrification (Pseudomonas). These are frequently asked!' WHERE id = '3903ac2b-7d08-422b-b747-dda844938e4d';
