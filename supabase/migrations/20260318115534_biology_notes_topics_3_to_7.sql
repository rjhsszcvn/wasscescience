
/*
  # Biology notes for topics 3-7: Ecology, Nutrition, Respiration, Transport, Excretion
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- ==========================
  -- TOPIC 3: ECOLOGY
  -- ==========================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Ecology and Environment' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Ecology — Organisms and Their Environment', $CONTENT$
## Ecology: The Study of Interactions

**Ecology** is the scientific study of interactions among organisms and between organisms and their environment.

### Levels of Organisation in Ecology
1. **Individual organism** — a single plant, animal, or microorganism
2. **Population** — all individuals of the SAME species in an area at the same time
3. **Community** — all populations of DIFFERENT species in an area (biotic component)
4. **Ecosystem** — community + its non-living (abiotic) environment
5. **Biome** — large-scale ecosystem characterised by climate and vegetation (e.g., tropical rainforest, savanna, desert)
6. **Biosphere** — all ecosystems on Earth; the global sum of all ecosystems

### Biotic vs Abiotic Components
**Biotic (living):** All living organisms — plants, animals, fungi, bacteria, protists

**Abiotic (non-living):** Physical and chemical factors:
- Temperature, light intensity, rainfall
- Soil pH, mineral content, type
- Water availability, humidity
- Altitude, aspect (direction of slope)

### Habitat, Niche, and Ecosystem
**Habitat:** The physical place where an organism lives (where it is found)
Example: A pond is the habitat for frogs, water plants, and fish.

**Ecological niche:** The role an organism plays in its ecosystem — what it eats, how it affects others, its interactions. No two species occupy EXACTLY the same niche (competitive exclusion principle).

**Ecosystem:** A biological community of interacting organisms and their physical environment functioning as a system.

### Examples of Ecosystems
- Tropical rainforest (West Africa)
- Savanna grassland
- Mangrove swamp
- Coral reef
- Desert
- Freshwater pond/lake
- Marine (ocean)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Food Chains, Webs, and Energy Flow', $CONTENT$
## Energy Flow Through Ecosystems

### Food Chains
A **food chain** shows the feeding relationships between organisms — who eats whom.

Arrow direction: → means "is eaten by" or "energy flows to"

Example:
Grass → Grasshopper → Lizard → Hawk

- **Producer (Autotroph):** Makes its own food via photosynthesis (green plants, algae)
- **Primary consumer (Herbivore):** Eats producers (grass → grasshopper)
- **Secondary consumer:** Eats primary consumers (grasshopper → lizard)
- **Tertiary consumer:** Eats secondary consumers (lizard → hawk)
- **Decomposer:** Breaks down dead organisms (fungi, bacteria) — returns nutrients to soil

### Trophic Levels
Each level in a food chain is called a **trophic level** (trophe = nutrition):
- Level 1: Producers
- Level 2: Primary consumers
- Level 3: Secondary consumers
- Level 4: Tertiary consumers

### Food Webs
A **food web** is a complex network of interconnected food chains. More realistic than a single food chain.

Why food webs are more realistic: Most organisms eat more than one type of food; most organisms are eaten by more than one predator.

### Energy Transfer Efficiency
Only about **10%** of energy at one trophic level is transferred to the next.
The rest (90%) is lost as:
- Heat (from respiration)
- Undigested material (in faeces)
- Dead organic matter not consumed

**Ecological pyramid:**
- **Pyramid of numbers:** Number of organisms at each level (usually decreases up)
- **Pyramid of biomass:** Total mass of organisms at each level (always decreases upward)
- **Pyramid of energy:** Energy available at each level (always decreases upward — ALWAYS a true pyramid)

### Nutrient Cycling

**Carbon Cycle:**
- CO₂ → Plants (photosynthesis) → Animals (feeding) → back to CO₂ (respiration, decomposition, combustion)

**Nitrogen Cycle:**
- Nitrogen fixation (N₂ → NH₃): by Rhizobium bacteria in root nodules; Azotobacter in soil
- Nitrification: NH₃ → NO₂ → NO₃ (by Nitrosomonas and Nitrobacter)
- Assimilation: Plants absorb NO₃, make amino acids
- Ammonification: Decomposers break down proteins → NH₃
- Denitrification: NO₃ → N₂ (by denitrifying bacteria in waterlogged soil)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Population Ecology and Environmental Issues', $CONTENT$
## Population Dynamics and Environmental Impact

### Population Growth
Factors affecting population size:
- **Natality (birth rate):** Adds to population
- **Mortality (death rate):** Reduces population
- **Immigration:** Organisms entering
- **Emigration:** Organisms leaving

**Population growth = (Natality + Immigration) - (Mortality + Emigration)**

**J-shaped growth curve:** Exponential growth when resources are unlimited
**S-shaped (sigmoid) growth curve:** Growth slows as population approaches carrying capacity (K)
**Carrying capacity:** Maximum population size an environment can support

### Limiting Factors (Density-Dependent)
- Food supply
- Competition (intraspecific and interspecific)
- Predation
- Disease
- Parasitism

### Predator-Prey Relationships
When prey increases → predators increase (more food)
When predators increase → prey decreases (over-hunting)
When prey decreases → predators decrease (less food)
Cyclical fluctuations result.

### Human Impact on the Environment
**Deforestation:**
- Loss of biodiversity
- Soil erosion (tree roots hold soil)
- Increased CO₂ (less photosynthesis)
- Disruption of water cycle
- Loss of habitat

**Pollution:**
- **Air pollution:** CO₂ (greenhouse effect), SO₂ (acid rain), CFC (ozone depletion)
- **Water pollution:** Industrial effluents, agricultural chemicals, oil spills → kills aquatic life
- **Soil pollution:** Pesticides, heavy metals → affects crops and food chains

**Greenhouse Effect and Climate Change:**
CO₂, CH₄, N₂O, water vapour trap heat → global warming → melting ice, rising sea levels, extreme weather

**Biodiversity:**
- Variety of living organisms in an area
- Threatened by habitat destruction, pollution, overhunting, invasive species
- Conservation: national parks, breeding programmes, seed banks, laws
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Ecological Relationships and Worked Examples', $CONTENT$
## Types of Ecological Relationships

### Interspecific Interactions (Between Different Species)

**Predation:** One organism (predator) kills and eats another (prey)
Example: Lion eats antelope — benefits lion (+), harms antelope (-)

**Competition:** Two organisms compete for the same resource
- Intraspecific: Within the SAME species (e.g., two male lions fighting for territory)
- Interspecific: Between DIFFERENT species (e.g., different grass species competing for light)

**Symbiosis:** A close, long-term relationship between two species
1. **Mutualism (+/+):** Both benefit
   - Rhizobium bacteria in legume root nodules (bacteria get glucose; plant gets fixed nitrogen)
   - Cleaner fish and larger fish (cleaner fish gets food; large fish gets parasites removed)
   - Mycorrhizae (fungi + plant roots)
2. **Commensalism (+/0):** One benefits, other unaffected
   - Epiphytes (plants growing on other plants for support only)
   - Remora fish attached to sharks
3. **Parasitism (+/-):** One benefits (parasite), other harmed (host)
   - Tapeworm in human intestine
   - Malaria parasite (Plasmodium) in human blood (transmitted by Anopheles mosquito)
   - Mistletoe on trees

### Worked Example: Food Web Analysis
Consider this food web:
Grass → Grasshopper → Frog → Snake → Eagle
Grass → Rabbit → Fox → Eagle
Grass → Rabbit → Snake → Eagle

Questions:
1. Name TWO producers: **Grass** (only producer here)
2. Name the apex predator: **Eagle**
3. If all foxes were removed, what would happen to the rabbit population? **Rabbits would increase** (less predation pressure)
4. If snakes were removed, what would happen to the eagle? **Eagle would have less food (prey)**; eagle population might decrease
5. What would happen if grass was destroyed? **Entire food web would collapse** — all organisms would eventually die

### Energy Calculation Example
If 10,000 kJ of energy is available at the producer level:
- Primary consumers receive: 10% × 10,000 = 1,000 kJ
- Secondary consumers receive: 10% × 1,000 = 100 kJ
- Tertiary consumers receive: 10% × 100 = 10 kJ

This explains why: (1) large predators need large areas; (2) food chains rarely exceed 4-5 links; (3) vegetarian diets are more energy-efficient
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Ecology', $CONTENT$
## WASSCE Examination Questions: Ecology

### Question 1 (WASSCE 2022)
The diagram shows a food web. Use it to answer the questions.
Grass → Rats → Snakes → Hawks
Grass → Locusts → Frogs → Snakes → Hawks
Grass → Locusts → Rats → Snakes

(a) Name the producers in this food web.
(b) Identify organisms that occupy two trophic levels.
(c) Construct a food chain with 4 links from the web.

**Answer:**
(a) **Grass** (the only producer — it makes its own food)
(b) **Rats** (can be primary consumer eating grass, or secondary consumer eating locusts); **Snakes** (can be secondary or tertiary consumer)
(c) Grass → Locusts → Frogs → Snakes ✓ (or Grass → Locusts → Rats → Snakes ✓)

---

### Question 2 (WASSCE 2021)
(a) Define the term "ecosystem."
(b) State THREE abiotic factors that affect organisms in a habitat.

**Answer:**
(a) An **ecosystem** is a community of living organisms (biotic component) interacting with each other and with their non-living (abiotic) environment as a functional unit.

(b) Any three: temperature, light intensity, rainfall/water availability, soil pH, humidity, wind speed, altitude

---

### Question 3 (WASSCE 2020)
Explain the importance of decomposers in an ecosystem.

**Answer:**
Decomposers (bacteria and fungi) break down dead organic matter (dead plants, animals, faeces) into simple inorganic substances (minerals, CO₂, water). This:
1. **Releases minerals** back into the soil, making them available for plants to absorb
2. **Completes nutrient cycles** (carbon cycle, nitrogen cycle)
3. **Prevents accumulation** of dead organic matter
4. **Supports plant growth** by recycling nutrients

---

### Question 4 (WASSCE 2019)
State FOUR ways humans have negatively affected the environment.

**Answer:**
1. **Deforestation** — removes forests, causes soil erosion and biodiversity loss
2. **Industrial pollution** — releases toxic chemicals into air, water, and soil
3. **Overuse of pesticides/fertilisers** — contaminates water bodies (eutrophication)
4. **Burning fossil fuels** — increases CO₂, causing greenhouse effect and climate change
5. **Overfishing** — depletes fish stocks, disrupts aquatic food webs
6. **Mining** — destroys habitats, causes land degradation

---

### Practice Questions
1. Distinguish between a food chain and a food web.
2. What is meant by "carrying capacity" of an environment?
3. Explain the difference between mutualism and parasitism. Give one example of each.
4. State the 10% energy rule. Why does this limit the length of food chains?
5. Define "eutrophication" and state its effects on aquatic life.

**Answers:**
1. Food chain: linear sequence of feeding relationships. Food web: network of interconnected food chains (more realistic)
2. Maximum population size an environment can support with available resources
3. Mutualism: both species benefit (+/+); Parasitism: parasite benefits, host harmed (+/-). [Examples as above]
4. Only ~10% of energy at one level passes to the next; after 4-5 steps, so little energy remains that another link becomes impossible
5. Eutrophication: excessive nutrient enrichment of water bodies (usually from fertiliser runoff); causes algal bloom → algae use up O₂ as they decompose → aquatic organisms suffocate (die of oxygen depletion)
$CONTENT$, 'practice', 5);

  -- ==========================
  -- TOPIC 4: NUTRITION AND DIGESTION
  -- ==========================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Nutrition and Digestion' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Nutrition and the Human Diet', $CONTENT$
## Nutrition: Fuelling the Body

**Nutrition** is the process by which organisms obtain and use food for energy, growth, repair, and body functions.

### Classes of Food (The Six Nutrients)

**1. Carbohydrates**
- Made of C, H, O (ratio of H:O = 2:1)
- Types: Simple (monosaccharides, disaccharides) and Complex (polysaccharides)
- **Monosaccharides:** Glucose, fructose, galactose (cannot be broken down further)
- **Disaccharides:** Sucrose (glucose + fructose), maltose (glucose + glucose), lactose (glucose + galactose)
- **Polysaccharides:** Starch (storage in plants), glycogen (storage in animals/liver), cellulose (plant cell wall)
- Function: Main energy source; 1g → 17 kJ (4 kcal)
- Sources: Yams, cassava, rice, bread, maize

**2. Proteins**
- Made of C, H, O, N (and sometimes S)
- Built from amino acids joined by peptide bonds
- 20 different amino acids; 8-10 are essential (must come from diet)
- Functions: Growth and repair; enzyme production; antibody production; haemoglobin; hormones
- Sources: Meat, fish, eggs, milk, legumes (beans, soya)

**3. Lipids (Fats and Oils)**
- Made of C, H, O
- Made of glycerol + 3 fatty acids
- Saturated fats: solid at room temperature (animal fats); linked to cardiovascular disease
- Unsaturated fats: liquid at room temperature (plant oils); healthier
- Functions: Energy storage (1g → 39 kJ); insulation; protection of organs; fat-soluble vitamins
- Sources: Palm oil, groundnut oil, butter, avocado, nuts

**4. Vitamins**
Organic compounds needed in small amounts for specific functions.
- **Vitamin A (Retinol):** Vision (especially night vision), skin health. Deficiency → night blindness, xerophthalmia. Sources: Carrots, liver, palm oil
- **Vitamin B complex:** Many types; involved in energy metabolism, nerve function
- **Vitamin C (Ascorbic acid):** Wound healing, immune function, collagen synthesis. Deficiency → scurvy (bleeding gums, loose teeth). Sources: Citrus fruits, tomatoes
- **Vitamin D (Calciferol):** Calcium absorption; bone health. Deficiency → rickets (children), osteomalacia (adults). Synthesised by skin in sunlight. Sources: Fish liver oil, eggs
- **Vitamin K:** Blood clotting. Deficiency → excessive bleeding. Sources: Green vegetables

**5. Minerals (Mineral Salts)**
Inorganic elements needed for body functions.
- **Calcium:** Bone and teeth formation, blood clotting, muscle contraction. Sources: Milk, cheese, bones
- **Iron:** Haemoglobin production; oxygen transport. Deficiency → anaemia. Sources: Meat, liver, green vegetables
- **Iodine:** Thyroid hormone production. Deficiency → goitre (enlarged thyroid), cretinism (in children). Sources: Seafood, iodised salt
- **Phosphorus:** Bones, teeth, ATP, DNA. Sources: Meat, fish
- **Sodium:** Nerve impulse transmission; fluid balance. Sources: Table salt

**6. Water**
- Most abundant compound in body (about 60-70% of body weight)
- Functions: Solvent for chemical reactions; transport medium (blood plasma); temperature regulation; lubrication
- Deficiency → dehydration

**7. Dietary Fibre (Roughage)**
- Made of cellulose (not digested)
- Functions: Stimulates peristalsis; prevents constipation; may reduce bowel cancer risk
- Sources: Fruits, vegetables, whole grains
$CONTENT$, 'overview', 1),

  (v_topic_id, 'The Human Digestive System', $CONTENT$
## Digestion: Breaking Down Food

### The Alimentary Canal (Digestive Tract)

**Mouth (Buccal Cavity)**
- **Mechanical digestion:** Teeth chew food (incisors cut, canines tear, premolars and molars grind)
- **Chemical digestion:** Salivary amylase (in saliva) breaks starch → maltose
- Saliva also lubricates food (mucus) and forms it into a bolus
- pH: ~6.5-7.0 (slightly acidic to neutral)

**Oesophagus (Gullet)**
- Muscular tube connecting mouth to stomach
- No digestion occurs here
- **Peristalsis:** Wave-like muscle contractions that push food along (circular and longitudinal muscles)

**Stomach**
- Muscular bag with thick walls
- **Gastric juice** contains:
  - Pepsin (protease) — breaks proteins → polypeptides
  - Hydrochloric acid (HCl) — kills bacteria; activates pepsin; provides acidic pH (~2)
  - Mucus — protects stomach lining from acid
- Churns food into chyme (semi-liquid)

**Small Intestine** (6-7 metres long!)
Two regions:
1. **Duodenum:** Receives chyme from stomach
   - **Bile** (from liver, stored in gall bladder): Emulsifies fats (breaks large fat globules into smaller ones — NOT chemical digestion, just mechanical)
   - **Pancreatic juice:** Contains amylase (starch→maltose), lipase (fats→fatty acids + glycerol), protease/trypsin (proteins → amino acids)
   - Intestinal juice: Contains maltase, sucrase, lactase (disaccharides → monosaccharides), peptidases
2. **Ileum:** Main site of absorption
   - Villi and microvilli (brush border) — enormously increase surface area
   - Each villus has: thin wall (one cell thick), good blood supply (capillaries for glucose, amino acids), lacteals (for fatty acids and glycerol)

**Large Intestine (Colon)**
- Reabsorbs water from undigested material
- Bacterial action (e.g., synthesise vitamin K and B vitamins)
- Faeces formed here

**Rectum and Anus**
- Faeces stored in rectum
- Egestion through anus (defecation)

### Enzymes of Digestion Summary
| Enzyme | Produced by | Substrate | Product |
|--------|-------------|-----------|---------|
| Salivary amylase | Salivary glands | Starch | Maltose |
| Pepsin | Stomach | Proteins | Polypeptides |
| Pancreatic amylase | Pancreas | Starch | Maltose |
| Trypsin | Pancreas | Proteins | Peptides |
| Lipase | Pancreas | Fats | Fatty acids + glycerol |
| Maltase | Small intestine | Maltose | Glucose + Glucose |
| Sucrase | Small intestine | Sucrose | Glucose + Fructose |
| Peptidases | Small intestine | Peptides | Amino acids |
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Absorption and Deficiency Diseases', $CONTENT$
## Absorption of Digested Food

### How Absorption Occurs in the Ileum

The ileum is specially adapted for absorption:
1. **Extremely long** (6-7 m) — more area for absorption
2. **Highly folded walls (rugae)** — increases surface area
3. **Villi** — finger-like projections that increase surface area further
4. **Microvilli (brush border)** — tiny projections on each villus cell — massive increase in area
5. **Single-cell-thick epithelium** — short diffusion distance
6. **Rich blood supply** — maintains concentration gradient for diffusion
7. **Lacteals** — lymph vessels in each villus for fat absorption

**Absorption routes:**
- Glucose, amino acids, vitamins B and C, minerals: absorbed into blood capillaries → hepatic portal vein → liver
- Fatty acids and glycerol: absorbed into lacteals → lymph system → eventually into bloodstream

### Deficiency Diseases
| Nutrient | Deficiency Disease | Symptoms |
|----------|-------------------|----------|
| Protein | Kwashiorkor | Swollen belly, weak muscles, discoloured hair, growth retardation |
| Protein + Energy | Marasmus | Severe wasting, thin limbs, loss of subcutaneous fat |
| Vitamin A | Night blindness / Xerophthalmia | Cannot see in dim light; dry, scaly cornea; blindness |
| Vitamin C | Scurvy | Bleeding gums, loose teeth, slow wound healing, bruising |
| Vitamin D | Rickets (children) / Osteomalacia (adults) | Soft/deformed bones, bow legs |
| Vitamin B1 (Thiamine) | Beri-beri | Nerve damage, muscle weakness, heart problems |
| Iron | Anaemia | Fatigue, pale skin, weakness, shortness of breath |
| Iodine | Goitre | Enlarged thyroid gland in neck; cretinism in infants |
| Calcium | Osteoporosis (adults) | Weak, brittle bones |

### Balanced Diet
A balanced diet contains the right AMOUNTS of all nutrients.
Factors affecting dietary needs:
- **Age:** Growing children, pregnant women, elderly need different amounts
- **Sex:** Males generally need more energy than females
- **Activity level:** Athletes and manual workers need more energy (carbohydrates)
- **Health:** Sick individuals may need specific nutrients
- **Climate:** People in cold climates need more energy to maintain body temperature
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Digestion Worked Examples and Analysis', $CONTENT$
## Worked Examples: Nutrition and Digestion

### Example 1: Food Test Experiments
You are given an unknown food sample. Describe how to test for each nutrient:

**Test for Starch (Iodine test):**
Add iodine solution to the sample.
Result: Blue-black colour = starch PRESENT; remains orange/brown = starch ABSENT

**Test for Reducing Sugars (Benedict's test):**
Add Benedict's solution and heat in water bath (80°C).
Result: Brick-red/orange precipitate = reducing sugar PRESENT; remains blue = ABSENT
[Reducing sugars include: glucose, fructose, maltose, lactose. Sucrose is NON-reducing]

**Test for Protein (Biuret test):**
Add dilute NaOH, then a few drops of dilute CuSO₄ solution.
Result: Purple/violet colour = protein PRESENT; remains blue = ABSENT

**Test for Fat (Emulsion test):**
Dissolve food in ethanol, then pour into water.
Result: Milky-white emulsion = fat PRESENT; clear = ABSENT

**Test for Vitamin C (DCPIP test):**
Add food sample to blue DCPIP solution.
Result: DCPIP decolourises (turns colourless) = Vitamin C PRESENT

### Example 2: Interpreting an Experiment
A student added food X to Benedict's solution and heated it. The solution turned orange-red.
(a) What does this indicate? **Food X contains a reducing sugar (e.g., glucose or maltose)**
(b) Another student then added iodine to Food X — no colour change occurred. What does this tell us? **Food X does NOT contain starch**

### Example 3: Calculating BMI and Energy Requirements
A person's Basal Metabolic Rate (BMR) = 1800 kJ/day.
They do moderate activity (activity factor = 1.5).
Total daily energy requirement = 1800 × 1.5 = **2700 kJ/day**

If 1 g of carbohydrate = 17 kJ, how many grams of rice (pure starch) would they need?
= 2700/17 = **159 g of starch/carbohydrate**

### Example 4: Villus Structure and Function
Explain why the small intestine is well adapted for absorption:
1. **Large surface area** (villi + microvilli) — increases rate of absorption
2. **Good blood supply** — maintains concentration gradient (products of digestion constantly removed)
3. **Single cell layer** — short diffusion distance → faster absorption
4. **Lacteals** — specialised for fat absorption into lymph
5. **Long length** — more time and area for absorption
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Nutrition and Digestion', $CONTENT$
## WASSCE Examination Questions: Nutrition and Digestion

### Question 1 (WASSCE 2022)
(a) Name TWO enzymes secreted by the pancreas and state what each digests.
(b) What is the function of bile in digestion?

**Answer:**
(a) Any two:
- **Pancreatic amylase** — digests starch into maltose
- **Trypsin/Protease** — digests proteins into peptides/amino acids
- **Lipase** — digests fats into fatty acids and glycerol

(b) Bile **emulsifies fats** — breaks large fat globules into smaller droplets, increasing surface area for lipase to act on. Bile is NOT an enzyme — it does not chemically digest fats.

---

### Question 2 (WASSCE 2021)
State the deficiency disease associated with each of the following vitamins and give the symptoms:
(a) Vitamin C  (b) Vitamin D  (c) Vitamin A

**Answer:**
(a) Vitamin C deficiency → **Scurvy** — bleeding gums, loose teeth, slow wound healing, small bleeding under skin
(b) Vitamin D deficiency → **Rickets** (children) or **Osteomalacia** (adults) — soft/deformed bones, bow-legs in children
(c) Vitamin A deficiency → **Night blindness** / **Xerophthalmia** — inability to see in dim light; dry, damaged cornea; may lead to total blindness

---

### Question 3 (WASSCE 2020)
Describe what happens to a piece of bread from the time it enters the mouth until its digested products are absorbed into the bloodstream.

**Answer:**
1. **Mouth:** Teeth mechanically break bread; salivary amylase breaks starch → maltose; bolus formed
2. **Oesophagus:** Peristalsis moves bolus to stomach; no digestion
3. **Stomach:** HCl creates acid environment; salivary amylase inactivated; gastric protease begins protein digestion
4. **Duodenum:** Bile emulsifies any fats; pancreatic amylase continues starch → maltose digestion; other enzymes act
5. **Ileum:** Maltase converts maltose → glucose; glucose is absorbed through villi into blood capillaries → hepatic portal vein → liver

---

### Question 4 (WASSCE 2019)
State THREE ways in which the small intestine is adapted for absorption.

**Answer:**
1. Very long (6-7 metres) — provides large surface area
2. Lined with villi and microvilli — greatly increase surface area
3. Villi have thin epithelium (single cell layer) — short diffusion distance
4. Villi have dense capillary network — maintains concentration gradient
5. Lacteals in villi — absorb fatty acids and glycerol

---

### Practice Questions
1. List six classes of food and give one function of each.
2. What test would you use to distinguish between starch and glucose in a food sample?
3. Where in the body is bile produced? Where is it stored? What is its function?
4. Why is cellulose important even though it cannot be digested by humans?
5. Describe the symptoms of kwashiorkor and state its cause.

**Answers:**
1. (See definitions section — all six classes with functions)
2. **Iodine test** for starch (blue-black positive); **Benedict's test** for glucose (red/orange positive)
3. Produced in **liver**; stored in **gall bladder**; functions: emulsifies fats, neutralises stomach acid
4. Acts as dietary fibre/roughage; stimulates peristalsis; prevents constipation; may reduce bowel cancer risk
5. Kwashiorkor: caused by protein deficiency (often when a child is weaned too early). Symptoms: swollen abdomen (oedema), wasting muscles, discoloured/reddish hair, skin sores, irritability
$CONTENT$, 'practice', 5);

  -- ==========================
  -- TOPIC 5: RESPIRATION
  -- ==========================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Respiration' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Cellular Respiration', $CONTENT$
## Respiration: Releasing Energy from Food

**Respiration** is the chemical process by which living organisms break down food (glucose) to release energy in the form of ATP.

**Important distinction:**
- **Breathing (ventilation):** Movement of air in and out of lungs — a PHYSICAL process
- **Respiration:** Chemical breakdown of glucose to release energy — occurs in ALL living cells

### Why Cells Need ATP
ATP (Adenosine Triphosphate) is the universal energy currency of cells.
Energy from ATP is used for:
- Muscle contraction (movement)
- Active transport across membranes
- Protein synthesis (building molecules)
- Nerve impulse transmission
- Maintaining body temperature (heat generation)
- Cell division

### Two Types of Respiration
1. **Aerobic respiration:** Uses oxygen; much more efficient; occurs in mitochondria
2. **Anaerobic respiration:** Without oxygen; less efficient; occurs in cytoplasm

### Aerobic Respiration: The Main Equation
C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + **ATP (energy)**
(Glucose + Oxygen → Carbon dioxide + Water + Energy)

Energy released per mole of glucose: approximately **2870 kJ** (about 38 ATP molecules)

### Anaerobic Respiration
In animals and bacteria:
C₆H₁₂O₆ → 2C₃H₆O₃ + **ATP (small amount)**
(Glucose → Lactic acid + Energy)
Only **2 ATP** molecules produced per glucose

In yeast (and plants):
C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ + **ATP (small amount)**
(Glucose → Ethanol + Carbon dioxide + Energy)
This is **fermentation** — used in bread making and alcohol production
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Stages of Aerobic Respiration', $CONTENT$
## The Three Stages of Aerobic Respiration

### Stage 1: Glycolysis (in Cytoplasm)
- Glucose (6C) is split into 2 molecules of pyruvate (3C)
- Produces: **2 ATP** (net) and **2 NADH**
- Does NOT require oxygen — can occur under aerobic or anaerobic conditions
- Location: Cytoplasm (cytosol)

### Stage 2: Krebs Cycle / Citric Acid Cycle (in Mitochondrial Matrix)
- Pyruvate is converted to Acetyl-CoA (entering the cycle)
- Each turn of the cycle produces:
  - 3 NADH
  - 1 FADH₂
  - 1 ATP (GTP)
  - 2 CO₂ (released as waste)
- Since 2 pyruvate from one glucose → cycle turns TWICE
- Location: Mitochondrial matrix

### Stage 3: Electron Transport Chain / Oxidative Phosphorylation (Inner Mitochondrial Membrane)
- NADH and FADH₂ donate electrons to the chain
- Electrons pass through protein complexes → release energy
- Energy used to pump H⁺ ions across membrane (chemiosmosis)
- H⁺ flows back through ATP synthase → makes ATP
- Final electron acceptor: **Oxygen** (O₂) → combines with H⁺ to form water (H₂O)
- Produces approximately **34 ATP** molecules
- Location: Inner mitochondrial membrane (cristae)

**Total ATP from one glucose (aerobic):** ~38 ATP
- Glycolysis: 2
- Krebs cycle: 2
- Electron transport chain: 34

### Anaerobic Respiration in Detail

**In muscle cells (during intense exercise):**
Pyruvate → Lactic acid (lactate)
- Allows glycolysis to continue (NAD+ regenerated)
- Lactic acid causes muscle fatigue and soreness
- After exercise: lactic acid is converted back to glucose in liver (requires O₂ = "oxygen debt")

**In yeast:**
Pyruvate → Acetaldehyde → Ethanol + CO₂
- Used commercially: Beer, wine, bread making
- Bread rises because CO₂ bubbles make dough expand; ethanol evaporates during baking
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Breathing and Gas Exchange', $CONTENT$
## Gas Exchange in the Lungs

Breathing (ventilation) gets O₂ into the lungs and removes CO₂.

### The Human Respiratory System
- **Nasal cavity:** Filters, warms, moistens air
- **Trachea (windpipe):** Reinforced with C-shaped cartilage rings; lined with cilia and mucus to trap particles
- **Bronchi:** Two branches leading to each lung
- **Bronchioles:** Smaller branches
- **Alveoli (singular: alveolus):** Tiny air sacs where gas exchange occurs

### Mechanism of Breathing

**Inhalation (breathing in):**
1. Diaphragm contracts → moves down
2. External intercostal muscles contract → ribs move up and out
3. Chest volume INCREASES
4. Pressure inside chest DECREASES (below atmospheric)
5. Air rushes IN

**Exhalation (breathing out):**
1. Diaphragm relaxes → moves up
2. Internal intercostal muscles contract → ribs move down and in
3. Chest volume DECREASES
4. Pressure inside chest INCREASES (above atmospheric)
5. Air is PUSHED out

### The Alveoli — Adapted for Gas Exchange
Alveoli are where O₂ enters blood and CO₂ is removed. Adaptations:
1. **Very large number** (300 million in humans) → huge total surface area (~70 m²)
2. **Thin walls** (one cell thick) → short diffusion distance
3. **Moist surfaces** → gases dissolve and diffuse more easily
4. **Dense capillary network** → maintains concentration gradients
5. **Large surface area to volume ratio**

### Gas Exchange Across Alveolus
- O₂: High concentration in alveolus → diffuses into blood → binds to haemoglobin → carried to cells
- CO₂: High concentration in blood → diffuses into alveolus → exhaled

### Comparison: Inhaled vs Exhaled Air
| Gas | Inhaled | Exhaled |
|-----|---------|---------|
| Oxygen | 21% | 16% |
| Carbon dioxide | 0.04% | 4% |
| Nitrogen | 79% | 79% |
| Water vapour | Variable | Saturated |
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Respiration Experiments and Calculations', $CONTENT$
## Worked Examples: Respiration

### Example 1: Aerobic vs Anaerobic — When Does Each Occur?
A sprinter runs 100m in 10 seconds, then a marathon runner runs 42km.

**Sprinter:** During explosive, short bursts → not enough time to deliver O₂ → **anaerobic respiration** (lactic acid produced)

**Marathon runner:** Steady pace over long distance → O₂ delivery keeps up → **aerobic respiration** (more efficient, sustainable)

### Example 2: Respiratory Quotient (RQ)
RQ = Volume CO₂ produced / Volume O₂ consumed

For glucose: C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O
RQ = 6CO₂/6O₂ = **1.0** (carbohydrate being respired)

For fat: Fats produce more CO₂ per O₂
RQ ≈ **0.7** (fat/lipid being respired)

For protein: RQ ≈ **0.8** (mixed)

**Interpretation:** RQ > 1 indicates anaerobic respiration is occurring (CO₂ from lactic acid conversion)

### Example 3: Yeast Fermentation Experiment
Setup: Yeast + sugar solution in sealed flask; delivery tube into limewater
Result: Limewater turns milky → CO₂ is being produced (confirming fermentation)
Controlled variables: Temperature, amount of yeast, sugar concentration

**Effect of temperature on fermentation rate:**
As temperature increases (up to ~35-40°C for yeast): rate increases (more kinetic energy → more enzyme-substrate collisions)
Above ~45°C: enzymes denature → rate drops sharply
Below ~10°C: enzymes very slow → fermentation very slow

### Example 4: Calculation
If a person's cells respire 180g of glucose per hour (aerobically):
(a) How many moles of CO₂ are produced?
Molar mass of glucose = 180 g/mol → 1 mole of glucose
From equation: 1 mol glucose → 6 mol CO₂
CO₂ produced = **6 mol**

(b) What volume of O₂ is consumed (at STP, 1 mol = 22.4 L)?
6 mol O₂ × 22.4 L = **134.4 litres of O₂**
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Respiration', $CONTENT$
## WASSCE Examination Questions: Respiration

### Question 1 (WASSCE 2022)
(a) Write the equation for aerobic respiration.
(b) State THREE differences between aerobic and anaerobic respiration.

**Answer:**
(a) C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + Energy (ATP)

(b) Three differences:
| Aerobic | Anaerobic |
|---------|-----------|
| Requires oxygen | Does not require oxygen |
| Produces CO₂ and water | In animals: produces lactic acid; In yeast: ethanol + CO₂ |
| Produces ~38 ATP per glucose | Produces only 2 ATP per glucose |
| Occurs in mitochondria (mainly) | Occurs in cytoplasm only |
| Complete oxidation of glucose | Incomplete breakdown of glucose |

---

### Question 2 (WASSCE 2021)
State THREE adaptations of the alveoli for efficient gas exchange.

**Answer:**
1. **Large number of alveoli** — provides very large total surface area (~70 m²)
2. **Thin walls (one cell thick)** — short diffusion distance for gases
3. **Rich blood supply (dense capillary network)** — maintains steep concentration gradient
4. **Moist lining** — gases dissolve before diffusing
5. **Close proximity to capillaries** — rapid exchange

---

### Question 3 (WASSCE 2020)
A student set up an experiment with yeast, glucose solution, and a gas delivery tube leading to limewater. After 30 minutes, the limewater turned milky.
(a) What gas caused the limewater to turn milky?
(b) Write an equation for the reaction occurring in the flask.
(c) State ONE practical use of this process.

**Answer:**
(a) **Carbon dioxide (CO₂)**

(b) C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ (anaerobic respiration/fermentation by yeast)

(c) **Bread making** (CO₂ causes dough to rise) OR **Alcohol/beer/wine production** (ethanol formed)

---

### Question 4 (WASSCE 2019)
Explain what happens in muscles during vigorous exercise and the recovery period afterwards.

**Answer:**
**During vigorous exercise:**
- Oxygen demand exceeds oxygen supply
- Cells switch to anaerobic respiration
- Glucose → Lactic acid + 2 ATP
- Lactic acid accumulates in muscles → causes muscle fatigue, cramps, burning sensation

**Recovery period (oxygen debt):**
- Breathing rate remains elevated (paying back "oxygen debt")
- Extra O₂ is used by liver to convert lactic acid back to glucose (and some is oxidised to CO₂ and H₂O)
- Breathing gradually returns to normal as lactic acid is removed

---

### Practice Questions
1. Where exactly in the cell does aerobic respiration occur? Name all stages and their locations.
2. Calculate the RQ if 120 cm³ of CO₂ is produced and 120 cm³ of O₂ is consumed. What substrate is being respired?
3. Why is aerobic respiration so much more efficient than anaerobic respiration?
4. Describe the mechanism of exhalation (breathing out) in humans.
5. Why does bread rise during baking?

**Answers:**
1. Glycolysis → cytoplasm; Krebs cycle → mitochondrial matrix; Electron transport chain → inner mitochondrial membrane
2. RQ = 120/120 = **1.0** → carbohydrate (glucose) is being respired
3. Aerobic completely oxidises glucose to CO₂ and H₂O, extracting all available energy → ~38 ATP. Anaerobic only partially breaks down glucose → 2 ATP (most energy remains in lactic acid/ethanol)
4. Diaphragm relaxes (moves up); internal intercostal muscles contract (ribs move in and down); thoracic volume decreases; pressure inside increases above atmospheric; air is pushed out through trachea and mouth/nose
5. Yeast in dough performs anaerobic respiration (fermentation): glucose → ethanol + CO₂. The CO₂ bubbles are trapped in the dough, causing it to expand and rise.
$CONTENT$, 'practice', 5);

END $$;
