
/*
  # Biology notes for remaining topics: Nervous System, Reproduction, Photosynthesis, 
    Classification (Plant & Animal), Support and Movement, Growth, Disease and Immunity,
    Evolution, Biotechnology, Practical Skills, Plant Coordination, Food Webs
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Nervous System and Hormones
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Nervous System and Hormones' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Nervous System and Endocrine System', $CONTENT$
## Coordination in the Human Body

The body has two main coordination systems that work together:

### 1. Nervous System
- Uses **electrical impulses** (nerve signals) along neurons
- **Very fast** responses (milliseconds)
- Effects are **short-lived** and **localised**
- Three components: Central Nervous System (CNS), Peripheral Nervous System, Autonomic Nervous System

**CNS:** Brain + Spinal cord (coordinating centre)
**Peripheral NS:** All nerves connecting CNS to rest of body

### 2. Endocrine System
- Uses **chemical messengers (hormones)** transported in blood
- **Slow** responses (seconds to days)
- Effects are **long-lasting** and **widespread**
- Main glands: hypothalamus, pituitary, thyroid, parathyroid, adrenal, pancreas, gonads (ovaries/testes)

### The Neurone (Nerve Cell)
Three types:
- **Sensory neurone:** Carries impulses from receptors → CNS
- **Motor neurone:** Carries impulses from CNS → effectors (muscles/glands)
- **Relay (interneurone):** In CNS; connects sensory and motor neurones

**Structure of a motor neurone:**
- Cell body (contains nucleus)
- Dendrites (receive signals)
- Axon (carries signal away from cell body)
- Myelin sheath (insulates axon; speeds up transmission)
- Axon terminals (where signal is passed on)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Nerve Impulses, Synapses, and Reflex Arcs', $CONTENT$
## How Nerve Signals Work

### Action Potential (Nerve Impulse)
At rest, the inside of a neurone is negatively charged (-70mV). When stimulated:
1. **Depolarisation:** Na⁺ ions rush in → inside becomes +40mV
2. **Repolarisation:** K⁺ ions rush out → membrane potential restored
3. **Refractory period:** Neurone cannot fire again briefly

**All-or-nothing principle:** Either an impulse fires (above threshold) or it doesn't — no partial impulses.

### The Synapse
Junction between two neurones. Signals cross chemically:
1. Impulse reaches axon terminal
2. Synaptic vesicles release **neurotransmitter** (e.g., acetylcholine) into synaptic cleft
3. Neurotransmitter diffuses across gap
4. Binds to receptors on post-synaptic membrane → generates new impulse
5. Neurotransmitter is broken down by enzymes (or recycled)

**Why synapses are important:**
- Ensure one-way transmission (neurotransmitter only on post-synaptic side)
- Allow summation (multiple small signals add up)
- Allow integration of signals
- Site of action of many drugs (painkillers, stimulants)

### The Reflex Arc
A rapid, automatic response to a stimulus.
Components: Receptor → Sensory neurone → Spinal cord (relay neurone) → Motor neurone → Effector

**Example: Withdrawal reflex (touching hot object)**
1. Thermoreceptors in skin (receptor) detect heat
2. Sensory neurone carries impulse to spinal cord
3. Relay neurone in spinal cord processes → signals motor neurone
4. Motor neurone → biceps muscle (effector) → arm is pulled away
5. SIMULTANEOUSLY: impulse sent to brain (you feel pain AFTER moving)

**Why reflex arcs bypass the brain:** Speed — faster to avoid damage

### Important Human Hormones
| Hormone | Gland | Function |
|---------|-------|----------|
| Insulin | Pancreas (β-cells) | Lowers blood glucose |
| Glucagon | Pancreas (α-cells) | Raises blood glucose |
| ADH | Hypothalamus/Pituitary | Water reabsorption in kidneys |
| Adrenaline | Adrenal gland | "Fight or flight" response |
| Oestrogen | Ovary | Female secondary sex characteristics; menstrual cycle |
| Testosterone | Testes | Male secondary sex characteristics |
| Thyroxine | Thyroid | Metabolic rate; growth |
| Growth hormone | Pituitary | Growth of bones and tissues |
| FSH, LH | Pituitary | Control menstrual cycle; stimulate gonads |
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Sense Organs: The Eye and Ear', $CONTENT$
## The Human Eye

**Structure and Function of Eye Parts:**

**Cornea:** Transparent outer layer; responsible for most light refraction
**Iris:** Coloured part; muscles control pupil size
**Pupil:** Opening in iris; size regulated by iris muscles
**Lens:** Elastic; changes shape for focusing (accommodation)
**Retina:** Contains light-sensitive receptors: rods (dim light; black and white) and cones (colour vision; bright light)
**Fovea (yellow spot):** Highest concentration of cones; point of sharpest vision
**Blind spot:** Where optic nerve exits; no receptors → no vision here
**Vitreous humour:** Gel filling main eye cavity; maintains shape
**Aqueous humour:** Fluid in front of lens; maintains pressure

**Near and Far Vision (Accommodation):**
- **Near object:** Ciliary muscles CONTRACT → suspensory ligaments RELAX → lens becomes FATTER (more curved) → more refraction
- **Distant object:** Ciliary muscles RELAX → suspensory ligaments TAUT → lens becomes THINNER → less refraction

**Pupil reflex:**
- Bright light: iris circular muscles contract → pupil constricts (gets smaller) → less light enters
- Dim light: iris radial muscles contract → pupil dilates (gets bigger) → more light enters

## The Human Ear

**Outer ear:** Pinna (directs sound) → External auditory canal → Eardrum (tympanic membrane) — vibrates with sound waves

**Middle ear:** Three ossicles (malleus, incus, stapes) — amplify vibrations
Eustachian tube — equalises pressure with throat

**Inner ear:**
- **Cochlea:** Converts vibrations to electrical nerve impulses (hearing)
- **Semicircular canals:** Detect rotational movements (balance)
- **Utricle and saccule:** Detect linear acceleration and gravity (balance)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Hormone Disorders and Worked Examples', $CONTENT$
## Hormone Imbalances and Their Effects

### Thyroid Disorders
- **Hypothyroidism (underactive thyroid):** Too little thyroxine → slow metabolism, weight gain, fatigue, goitre in iodine deficiency
- **Hyperthyroidism (overactive thyroid):** Too much thyroxine → rapid metabolism, weight loss, increased heart rate, bulging eyes (exophthalmos)
- **Cretinism:** Severe hypothyroidism in childhood → stunted growth, intellectual disability

### Adrenal Gland and Adrenaline
Adrenaline is released in "fight or flight" situations:
- Increases heart rate (faster oxygen delivery)
- Dilates pupils (better vision)
- Increases blood glucose (more energy available)
- Dilates bronchioles (more air in)
- Diverts blood from gut to muscles

### Worked Example: Comparing Nervous and Hormonal Control
Muscle shaking when you touch a hot pan vs. puberty changes:

**Shaking (withdrawal reflex):** nervous system; instant response; lasts seconds; localised (arm muscles only)
**Puberty:** hormonal (testosterone/oestrogen); slow onset (years); long-lasting; widespread (whole body)

### WASSCE Exam-Style Questions

**Q: A child lacks iodine in diet. What condition may develop? Explain.**
A: **Goitre** — iodine is needed for thyroxine synthesis. Without iodine, the thyroid cannot make thyroxine. The thyroid gland enlarges (compensatory hypertrophy) as it tries to make more thyroxine → visible swelling in neck.

**Q: How does adrenaline prepare the body for exercise?**
A: Increases heart rate and stroke volume (more blood to muscles); dilates bronchioles (more O₂); breaks down glycogen → glucose (more energy); diverts blood from digestive system to muscles; dilates pupils (better awareness).
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Nervous System and Hormones', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) State the main differences between nervous coordination and hormonal coordination.
(b) Name the organ that produces insulin and state its function.

**Answer:**
(a) Nervous: electrical signals, very fast, short-lived effects, localised
Hormonal: chemical messengers in blood, slow, long-lasting effects, widespread

(b) **Pancreas** (specifically the islets of Langerhans, beta cells)
Function: Insulin lowers blood glucose by stimulating liver and muscle cells to take up glucose and convert it to glycogen (glycogenesis).

---

### Question 2 (WASSCE 2021)
With the aid of a labelled diagram, describe the pathway of a reflex arc.

**Answer:**
Receptor (detects stimulus) → sensory neurone → relay neurone (in spinal cord) → motor neurone → effector (muscle/gland produces response)

Key features to describe:
- Impulses travel in ONE direction
- Synapses at junctions (chemical transmission)
- Response occurs BEFORE brain processes the information consciously

---

### Practice Questions
1. State THREE functions of the hypothalamus.
2. Explain the pupil reflex in bright light.
3. How does the lens accommodate for near vision?
4. Name the ossicles of the middle ear. What is their function?
5. What is the endocrine system? Name four endocrine glands.

**Answers:**
1. Temperature regulation (thermostat); controls pituitary gland (master gland); produces ADH and oxytocin; regulates hunger and thirst; controls biological rhythms
2. Bright light detected by retina → nerve impulse to brain → brain signals iris → circular muscles of iris contract → pupil constricts → less light enters eye → prevents damage
3. Ciliary muscles contract → suspensory ligaments lose tension → elastic lens bulges (becomes fatter/more convex) → greater refraction → focuses near objects on retina
4. Malleus (hammer), incus (anvil), stapes (stirrup). Function: amplify sound vibrations from eardrum and transmit them to the oval window of the cochlea
5. System of ductless glands that secrete hormones directly into the bloodstream. Four glands: pituitary, thyroid, pancreas, adrenal gland, gonads (any four)
$CONTENT$, 'practice', 5);

  -- Reproduction
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Reproduction' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Reproduction in Living Organisms', $CONTENT$
## Reproduction: Continuation of Life

**Reproduction** is the biological process by which organisms produce new individuals of the same species.

### Two Types of Reproduction

**1. Asexual Reproduction**
- Only ONE parent involved
- No fusion of gametes
- Offspring are genetically IDENTICAL to parent (clones)
- Fast and energy-efficient
- No genetic variation → vulnerability to environmental changes

**Methods:**
- **Binary fission:** Cell divides in two (bacteria, Amoeba)
- **Budding:** New organism grows from parent (yeast, Hydra)
- **Sporulation:** Spores produced (fungi, mosses, ferns)
- **Vegetative propagation (plants):** New plants from runner (strawberry), corm (cocoyam), rhizome (ginger), tuber (yam, potato), bulb (onion), stem cuttings

**2. Sexual Reproduction**
- TWO parents (usually) — each contributes a gamete
- Involves fusion of male and female gametes (fertilisation)
- Offspring are genetically DIFFERENT from parents (variation)
- Genetic variation → adaptability and evolution
- Requires more energy; slower

### Types of Fertilisation
- **External fertilisation:** Gametes released outside body into water (fish, frogs, most aquatic organisms)
- **Internal fertilisation:** Gametes meet inside female's body (mammals, reptiles, birds, insects)

### Human Reproductive System
**Male:** Testes (produce sperm and testosterone) → epididymis (sperm matured and stored) → vas deferens → urethra. Accessory glands: seminal vesicle, prostate gland (produce seminal fluid)

**Female:** Ovaries (produce eggs and oestrogen) → fallopian tubes/oviducts (egg transport; fertilisation occurs here) → uterus (implantation and development of embryo) → cervix → vagina
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Menstrual Cycle and Human Reproduction', $CONTENT$
## The Menstrual Cycle

The menstrual cycle is approximately 28 days and prepares the female body for possible pregnancy.

**Day 1-5: Menstruation (period)**
- Uterine lining (endometrium) breaks down and is shed
- Oestrogen and progesterone levels LOW

**Day 1-13: Follicular Phase**
- FSH (Follicle Stimulating Hormone) from pituitary → stimulates follicle development in ovary
- Follicle produces oestrogen → endometrium rebuilds and thickens
- Oestrogen rises → triggers LH surge

**Day 14: Ovulation**
- LH surge (from pituitary) → follicle ruptures → egg released → travels down fallopian tube
- The empty follicle becomes the **corpus luteum**

**Day 15-28: Luteal Phase**
- Corpus luteum produces **progesterone** → maintains thickened endometrium
- If fertilisation does NOT occur: corpus luteum degenerates → progesterone drops → endometrium shed = menstruation (cycle restarts)
- If fertilisation DOES occur: HCG from embryo maintains corpus luteum → progesterone high → no menstruation

### Hormonal Summary
| Hormone | Source | Effect |
|---------|--------|--------|
| FSH | Pituitary | Stimulates follicle growth; stimulates oestrogen production |
| LH | Pituitary | Triggers ovulation; maintains corpus luteum |
| Oestrogen | Ovary (follicle) | Thickens endometrium; inhibits FSH; triggers LH surge |
| Progesterone | Corpus luteum | Maintains endometrium; inhibits FSH and LH |

### Fertilisation and Pregnancy
- Sperm penetrates egg in fallopian tube → zygote formed
- Zygote divides repeatedly (cleavage) → morula → blastocyst
- Blastocyst implants in endometrium (~7 days after fertilisation)
- Placenta develops — exchanges nutrients, gases, waste between mother and foetus
- HCG hormone produced → maintains pregnancy (detected in pregnancy tests)
- Gestation period: ~9 months (38 weeks)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'STIs, Contraception, and Plant Reproduction', $CONTENT$
## Sexual Infections and Contraception

### Sexually Transmitted Infections (STIs)

**HIV/AIDS:**
- Cause: HIV (Human Immunodeficiency Virus) — retrovirus
- Transmission: Unprotected sex, contaminated blood transfusion, sharing needles, mother to child (during birth, breastfeeding)
- Effect: Destroys helper T-lymphocytes → immune system weakens → opportunistic infections → AIDS
- Prevention: Abstinence, faithful partnership, condoms, not sharing needles, blood screening
- No cure — managed with antiretroviral drugs (ARVs)

**Gonorrhoea:**
- Cause: Neisseria gonorrhoeae (bacterium)
- Symptoms: Discharge, burning urination (can be asymptomatic)
- Treated with antibiotics

**Syphilis:**
- Cause: Treponema pallidum (bacterium)
- Stages: Primary (painless sore), secondary (rash), tertiary (organ damage)
- Treated with penicillin

**Chlamydia:** Often asymptomatic; causes infertility if untreated

### Methods of Contraception
| Method | Type | Mechanism |
|--------|------|-----------|
| Condom | Barrier | Prevents sperm reaching egg; also prevents STIs |
| Pill (combined) | Hormonal | Oestrogen + progesterone prevent ovulation |
| IUD (coil) | Mechanical | Prevents implantation |
| Vasectomy | Surgical | Cuts vas deferens → sperm cannot be ejaculated |
| Tubal ligation | Surgical | Cuts fallopian tubes → egg cannot reach sperm |
| Abstinence | Behavioural | No sexual intercourse |

### Reproduction in Flowering Plants
**Pollination:** Transfer of pollen from anther to stigma
- **Self-pollination:** Within same flower or same plant
- **Cross-pollination:** Between different plants of same species

**Agents of pollination:** Wind (grass, maize), insects (most flowers), water, animals

**Fertilisation in plants:** Pollen tube grows down style → releases male gamete → fuses with ovule → forms seed

**Seed dispersal:** Wind (dandelion), water (coconut), animals (fruits with hooks), explosive mechanisms (touch-me-not)

**Germination conditions:** Water, oxygen, warm temperature (some also need light)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Reproduction Worked Examples', $CONTENT$
## Worked Examples: Reproduction

### Example 1: Menstrual Cycle Hormones
A woman has a 28-day cycle. On which day does ovulation occur and which hormone triggers it?

**Answer:** Ovulation occurs on approximately **Day 14**. It is triggered by a surge in **LH (Luteinising Hormone)** from the anterior pituitary gland.

### Example 2: Why is sexual reproduction important for evolution?
**Answer:** Sexual reproduction produces genetic VARIATION through:
1. Meiosis → random assortment of chromosomes
2. Crossing over in meiosis I → new allele combinations
3. Random fertilisation → different allele combinations in offspring

This variation is the raw material for natural selection → organisms better adapted to environment survive and reproduce → evolution over generations.

### Example 3: Comparing Asexual and Sexual Reproduction
A strawberry plant produces runners (asexual) AND flowers (sexual). Advantages of each:

**Runners (asexual):**
- Fast — quickly colonises new area
- Successful parent genetics exactly copied
- No need to wait for pollinator
- All offspring survive to become established plants

**Flowers (sexual):**
- Produces variation → some offspring may be better adapted to new conditions
- Spreads to new locations via seed dispersal
- Maintains species adaptability long-term

### Example 4: Identifying Pollination Type
Flower A: Small, no scent, no nectaries, large amounts of light pollen, feathery stigma
Flower B: Brightly coloured, sweet scent, sticky pollen, nectaries present, sticky stigma

**Flower A:** **Wind-pollinated** — Light pollen to be carried by wind; feathery stigma to catch wind-blown pollen; large amounts needed (most pollen lost)
**Flower B:** **Insect-pollinated** — Colourful and scented to attract insects; sticky pollen attaches to insect; sticky stigma catches insect-transported pollen
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Reproduction', $CONTENT$
## WASSCE Examination Questions: Reproduction

### Question 1 (WASSCE 2022)
(a) State THREE differences between sexual and asexual reproduction.
(b) Name TWO methods of vegetative propagation in plants.

**Answer:**
(a) Three differences:
1. Sexual: two parents; Asexual: one parent
2. Sexual: offspring have genetic variation; Asexual: offspring are genetically identical (clones)
3. Sexual: involves gametes and fertilisation; Asexual: no gametes or fertilisation
4. Sexual: slower and requires more energy; Asexual: faster and more energy-efficient

(b) Any two: runners/stolons (strawberry), corm (cocoyam/taro), rhizome (ginger, grass), tuber (yam, potato), bulb (onion), stem cuttings

---

### Question 2 (WASSCE 2021)
Describe the menstrual cycle in humans, including the roles of FSH, LH, oestrogen, and progesterone.

**Answer:**
(See Menstrual Cycle section above for complete answer — describe the 28-day cycle with hormone changes at each phase)

Key points:
- Day 1-5: Menstruation (low hormones)
- Day 1-13: FSH stimulates follicle → follicle makes oestrogen → endometrium rebuilds
- Day 14: LH surge → ovulation
- Day 15-28: Corpus luteum makes progesterone → maintains endometrium
- If no fertilisation: progesterone drops → menstruation

---

### Question 3 (WASSCE 2020)
State FOUR ways of preventing the spread of HIV/AIDS.

**Answer:**
1. Abstinence from sexual intercourse
2. Consistent and correct use of condoms during sexual intercourse
3. Faithful, mutually exclusive partnership (being with only one uninfected partner)
4. Avoid sharing needles or syringes (especially among drug users)
5. Screening of blood before transfusion
6. Use of antiretroviral drugs by infected pregnant women to prevent mother-to-child transmission

---

### Practice Questions
1. What is fertilisation? State where it occurs in (a) humans (b) flowering plants.
2. Name three STIs and state the causative organism for each.
3. Explain why cross-pollination is generally preferred to self-pollination in most plants.
4. State the function of the placenta in human pregnancy.
5. State THREE conditions necessary for seed germination.

**Answers:**
1. Fusion of male and female gametes (sperm and egg) to form a zygote. (a) Humans: fallopian tube/oviduct (b) Plants: inside the ovule
2. HIV/AIDS (HIV virus); Gonorrhoea (Neisseria gonorrhoeae bacterium); Syphilis (Treponema pallidum bacterium)
3. Cross-pollination promotes genetic variation (different parents combine their genes), increasing adaptability; self-pollination promotes inbreeding which can lead to accumulation of harmful recessive traits
4. Allows exchange of nutrients and oxygen from mother's blood to foetus; exchange of waste (CO₂, urea) from foetus to mother; acts as a barrier against some pathogens and maternal immune cells; produces hormones (HCG, progesterone) to maintain pregnancy
5. Water (for metabolic processes and to soften seed coat); oxygen (for aerobic respiration); appropriate temperature (enzymes work best in warmth)
$CONTENT$, 'practice', 5);

  -- Photosynthesis
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Photosynthesis' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Photosynthesis', $CONTENT$
## Photosynthesis: Converting Light Energy to Chemical Energy

**Photosynthesis** is the process by which green plants (and some other organisms) use light energy to convert carbon dioxide and water into glucose and oxygen.

### The Overall Equation
6CO₂ + 6H₂O + Light energy → C₆H₁₂O₆ + 6O₂
(Carbon dioxide + Water + Light → Glucose + Oxygen)

This is essentially the REVERSE of aerobic respiration.

### Why Photosynthesis is Essential
- **Food production:** Basis of almost all food chains (plants are producers)
- **Oxygen production:** Maintains atmospheric oxygen for aerobic organisms
- **Carbon dioxide removal:** Reduces greenhouse gas levels
- **Energy storage:** Converts solar energy to chemical energy stored in glucose

### Where Does Photosynthesis Occur?
**In the chloroplast** — specifically:
- **Light-dependent reactions:** In the thylakoid membranes (grana)
- **Light-independent reactions (Calvin cycle):** In the stroma

### Chlorophyll and Light Absorption
**Chlorophyll** is the main photosynthetic pigment:
- **Chlorophyll a:** Absorbs red and blue light mainly
- **Chlorophyll b:** Absorbs blue and yellow-orange light
- Both reflect GREEN light → plants appear green

**Carotenoids:** Accessory pigments (carotene, xanthophyll) absorb additional wavelengths

**Action spectrum:** Graph showing rate of photosynthesis vs wavelength — peaks in red and blue
**Absorption spectrum:** Graph showing light absorbed by chlorophyll vs wavelength — similar shape to action spectrum
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Leaf Structure and Photosynthesis Stages', $CONTENT$
## The Leaf: Adapted for Photosynthesis

### Adaptations of a Leaf
1. **Large, flat surface** → large surface area for light absorption
2. **Thin** → short diffusion path for CO₂ and O₂
3. **Transparent epidermis and cuticle** → light reaches mesophyll cells
4. **Palisade mesophyll cells** (top layer, packed with chloroplasts) → maximum light absorption
5. **Spongy mesophyll cells** (air spaces below) → gas exchange; CO₂ reaches palisade cells
6. **Stomata** (mainly on lower surface) → CO₂ enters, O₂ exits, water vapour exits
7. **Vascular bundles (veins)** → deliver water (xylem) and remove sugars (phloem)

### Two Stages of Photosynthesis

**Stage 1: Light-Dependent Reactions (Thylakoid membranes)**
1. Light absorbed by chlorophyll
2. **Photolysis of water:** H₂O → H⁺ + O₂ [water split by light]
   - Oxygen released as by-product (O₂ released into air)
3. Energy from light excites electrons → electron transport chain
4. ATP is produced (photophosphorylation)
5. NADPH is produced (reduced NADP)

Products: ATP, NADPH, O₂

**Stage 2: Light-Independent Reactions / Calvin Cycle (Stroma)**
1. CO₂ from air is fixed (joined to organic molecule) — Calvin cycle
2. ATP and NADPH from Stage 1 are used to reduce CO₂
3. Glucose (and other organic molecules) is produced
4. The cycle is regenerated — can continue as long as ATP and NADPH are supplied

Products: Glucose (C₆H₁₂O₆)

### Limiting Factors of Photosynthesis
Rate of photosynthesis is limited by whichever factor is in shortest supply:
- **Light intensity:** More light → faster rate (until saturation point)
- **CO₂ concentration:** More CO₂ → faster rate (until another factor limits)
- **Temperature:** Higher temperature → faster (up to ~40°C); then enzymes denature → rate falls
- **Water:** Severe shortage → stomata close → less CO₂ → less photosynthesis

These are applied commercially in greenhouses: supplementary lighting, CO₂ enrichment, heating.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Photosynthesis Experiments', $CONTENT$
## Classic Photosynthesis Experiments

### Experiment 1: Testing a Leaf for Starch
**Purpose:** To show that light and chlorophyll are needed for photosynthesis

**Procedure:**
1. Destarch plant (keep in dark for 48 hours — plant uses up stored starch)
2. Cover part of leaf with black paper (or use variegated leaf — green and white parts)
3. Leave in sunlight for several hours
4. Remove leaf → boil in water (to soften)
5. Boil in ethanol (to remove chlorophyll — leaf turns yellow-white)
6. Wash in warm water → spread flat
7. Add iodine solution → observe colour change

**Results:**
- Exposed green parts: Blue-black (starch present → photosynthesis occurred)
- Covered parts: Orange-brown (no starch → no photosynthesis without light)
- White parts of variegated leaf: Orange-brown (no starch → no chlorophyll → no photosynthesis)

**Conclusion:** Both light AND chlorophyll are necessary for photosynthesis.

### Experiment 2: Testing for Oxygen Production (Pondweed)
**Purpose:** To investigate effect of light intensity on photosynthesis rate

**Procedure:** Place aquatic plant (Elodea) in water + CO₂ source (sodium bicarbonate); count bubbles of O₂ per minute at different distances from light source.

**Results:** As light intensity increases, rate of bubble production increases (up to light saturation point).

### Experiment 3: Importance of CO₂
- Remove CO₂ by placing NaOH solution near leaf (absorbs CO₂)
- Test leaf for starch after several hours
- Result: No starch → CO₂ is necessary for photosynthesis
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Photosynthesis Worked Examples and Calculations', $CONTENT$
## Worked Examples: Photosynthesis

### Example 1: Interpreting a Graph — Limiting Factors
A graph shows rate of photosynthesis vs light intensity at three different CO₂ concentrations. What can you conclude?

Analysis:
- At low light intensity: All three curves overlap → light is the limiting factor
- As light increases at low CO₂: Rate levels off early → CO₂ is now limiting
- At high CO₂ concentration: Rate continues to increase up to higher light intensities
- The plateau indicates another limiting factor (temperature or CO₂)

### Example 2: Compensation Point
At low light intensities, a plant uses more O₂ in respiration than it produces in photosynthesis (net O₂ uptake).
The **compensation point** is the light intensity at which:
Rate of photosynthesis = Rate of respiration
(O₂ produced = O₂ consumed; CO₂ produced = CO₂ absorbed)

Above the compensation point: photosynthesis > respiration → net O₂ output (plant grows)
Below the compensation point: respiration > photosynthesis → net O₂ uptake (plant slowly depleted)

### Example 3: Calculating % Efficiency
If a plant absorbs 20,000 J of light energy and stores 1,000 J in glucose:
Efficiency = (Energy stored / Energy input) × 100
= (1,000/20,000) × 100 = **5%**

(Typical plant photosynthesis efficiency is about 1-8%)

### Example 4: WASSCE-Style Scenario
A plant is placed in a sealed container with a known volume of air. After 6 hours in bright light, the CO₂ level decreased and O₂ increased. After 6 more hours in darkness, the opposite occurred. Explain these observations.

**In light:** Photosynthesis rate > Respiration rate → CO₂ absorbed > CO₂ produced → net CO₂ decrease; O₂ produced > O₂ consumed → net O₂ increase.

**In dark:** Only respiration (no photosynthesis) → CO₂ produced; O₂ consumed → CO₂ increases; O₂ decreases.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Photosynthesis', $CONTENT$
## WASSCE Examination Questions: Photosynthesis

### Question 1 (WASSCE 2022)
(a) Write the equation for photosynthesis.
(b) State THREE limiting factors of photosynthesis.

**Answer:**
(a) 6CO₂ + 6H₂O + Light energy → C₆H₁₂O₆ + 6O₂
(or: Carbon dioxide + Water + Light energy → Glucose + Oxygen)

(b) Any three: light intensity, CO₂ concentration, temperature, water availability

---

### Question 2 (WASSCE 2021)
A student conducted an experiment to test for starch in a destarched leaf. Describe the procedure.

**Answer:**
1. Destarch the plant (keep in dark for 48 hours)
2. Remove leaf and boil it in water briefly (to soften/kill it)
3. Boil leaf in ethanol (or methylated spirit) using water bath to remove chlorophyll → leaf turns yellowish-white
4. Rinse leaf in warm water and spread flat on white tile
5. Add drops of iodine solution to leaf
6. Observe colour change

**Results:** Blue-black = starch present; orange-brown = no starch

---

### Question 3 (WASSCE 2020)
State THREE ways in which a leaf is adapted for photosynthesis.

**Answer:**
1. Large flat surface — maximises light absorption
2. Contains many chloroplasts (especially in palisade layer) — site of photosynthesis
3. Transparent cuticle and upper epidermis — allows light to penetrate to mesophyll
4. Stomata — allow CO₂ to enter and O₂ to exit
5. Thin — short diffusion path for gases
6. Vascular bundles — supply water (xylem) for photosynthesis

---

### Practice Questions
1. Where exactly in the chloroplast do the light-dependent and light-independent reactions occur?
2. What is meant by the "compensation point" of a plant?
3. A plant is grown in red light only. Will photosynthesis occur? Explain.
4. State TWO differences between photosynthesis and respiration.
5. Why do commercial greenhouses add CO₂ and increase temperature?

**Answers:**
1. Light-dependent: thylakoid membranes; Light-independent (Calvin cycle): stroma
2. The light intensity at which the rate of photosynthesis exactly equals the rate of respiration — no net gas exchange
3. Yes — chlorophyll absorbs red light effectively (as shown by the action spectrum with a peak at red wavelengths)
4. Photosynthesis: requires light energy; produces glucose; occurs in chloroplasts; uses CO₂, releases O₂. Respiration: releases energy as ATP; breaks down glucose; occurs in all cells; uses O₂, releases CO₂
5. Increasing CO₂ concentration and temperature (within limits) both increase the rate of photosynthesis → faster plant growth → higher crop yields
$CONTENT$, 'practice', 5);

  -- Disease and Immunity
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Disease and Immunity' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Disease and the Body''s Defences', $CONTENT$
## Understanding Disease

**Disease** is any condition that impairs the normal functioning of an organism's body.

### Types of Disease
1. **Infectious (communicable) diseases:** Caused by pathogens (disease-causing organisms); can spread from person to person
2. **Non-infectious diseases:** Cannot be transmitted; include genetic diseases, nutritional deficiencies, cancer, degenerative diseases

### Pathogens and Their Types
| Type | Examples | Disease caused |
|------|----------|----------------|
| Bacteria | Mycobacterium tuberculosis | Tuberculosis |
| Bacteria | Vibrio cholerae | Cholera |
| Bacteria | Salmonella typhi | Typhoid fever |
| Bacteria | Neisseria gonorrhoeae | Gonorrhoea |
| Virus | HIV | AIDS |
| Virus | Influenza virus | Flu |
| Virus | Poliovirus | Poliomyelitis |
| Virus | Hepatitis B virus | Hepatitis B |
| Protozoan | Plasmodium falciparum | Malaria |
| Protozoan | Entamoeba histolytica | Amoebic dysentery |
| Fungus | Tinea species | Ringworm, athlete's foot |
| Worm (Helminth) | Schistosoma | Schistosomiasis/Bilharzia |

### Modes of Transmission
- **Droplet infection (airborne):** Coughing, sneezing — tuberculosis, flu, COVID
- **Contaminated food/water (faecal-oral):** Typhoid, cholera, dysentery, hepatitis A
- **Direct contact:** STIs, ringworm, impetigo
- **Vectors (animals that carry disease):** Mosquito (malaria, yellow fever, dengue), tsetse fly (sleeping sickness), housefly (typhoid, cholera)
- **Blood/body fluids:** HIV, hepatitis B and C
- **Transplacental:** Mother to foetus (HIV, syphilis, rubella)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Malaria, Cholera, and Other Key Diseases', $CONTENT$
## Key Diseases for WASSCE

### Malaria
**Cause:** Plasmodium parasite (species: P. falciparum — most dangerous in West Africa)
**Vector:** Female Anopheles mosquito (bites at night)
**Life cycle:**
1. Infected mosquito bites human → Plasmodium sporozoites enter blood
2. Sporozoites travel to liver → multiply inside liver cells
3. Released merozoites invade red blood cells → multiply → red cells burst (causes fever spikes)
4. Some merozoites become gametocytes → another mosquito bites → gametocytes enter mosquito → sexual reproduction in mosquito → cycle continues

**Symptoms:** Recurring fever and chills (every 48-72 hours depending on species), headache, muscle pain, anaemia (red cells destroyed), enlarged spleen
**Treatment:** Artemisinin-based Combination Therapy (ACT); chloroquine (some resistance)
**Prevention:** Sleep under insecticide-treated bed nets, eliminate standing water (breeding sites), use of mosquito repellents, prophylactic drugs for travellers

### Cholera
**Cause:** Vibrio cholerae (bacterium)
**Transmission:** Contaminated water and food (faecal-oral route)
**Symptoms:** Profuse watery diarrhoea (rice-water stools), vomiting → severe dehydration → can be fatal within hours
**Treatment:** Oral Rehydration Salts (ORS) — replacing lost water and electrolytes; antibiotics
**Prevention:** Clean water supply, proper sewage disposal, handwashing, food hygiene, vaccination

### Tuberculosis (TB)
**Cause:** Mycobacterium tuberculosis (bacterium)
**Transmission:** Airborne droplets (coughing, sneezing)
**Symptoms:** Persistent cough (blood-stained sputum), weight loss, night sweats, fever
**Treatment:** Prolonged course of antibiotics (6 months — combination of drugs: DOTS)
**Prevention:** BCG vaccine, early detection and treatment, good ventilation

### Acquired Immune Deficiency Syndrome (AIDS)
**Cause:** HIV (Human Immunodeficiency Virus) — retrovirus
**Attacks:** Helper T-lymphocytes (CD4 cells) — destroys immune system
**Stages:**
1. Acute infection (flu-like symptoms 2-4 weeks after infection)
2. Clinical latency (asymptomatic for years)
3. AIDS: CD4 count < 200 cells/μL → opportunistic infections (TB, pneumonia, toxoplasmosis, Kaposi's sarcoma)
**Treatment:** Antiretroviral drugs (ARVs) — suppresses virus, allows near-normal life; no cure
**Prevention:** (see STIs section in Reproduction)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Immune Response and Vaccination', $CONTENT$
## The Body''s Defence System

### First Line of Defence (Non-specific, Innate)
Physical and chemical barriers:
- **Skin:** Waterproof, physical barrier; sweat contains lysozyme (antibacterial enzyme)
- **Mucus and cilia:** In respiratory tract — trap pathogens; cilia sweep mucus upward
- **Stomach acid (HCl):** Kills most swallowed pathogens
- **Saliva and tears:** Contain lysozyme (breaks down bacterial cell walls)
- **Inflammatory response:** Damaged cells release histamine → vasodilation → phagocytes arrive

### Second Line of Defence (Non-specific)
- **Phagocytosis:** Neutrophils and macrophages engulf and destroy pathogens
- **Natural killer cells:** Destroy virus-infected cells and tumour cells
- **Fever:** High temperature inhibits pathogen growth; increases metabolic rate of immune cells
- **Inflammation:** Localises infection

### Third Line of Defence (Specific, Adaptive Immune Response)
Involves lymphocytes that respond to specific antigens:

**B lymphocytes (B cells):**
- Activated when they encounter a specific antigen
- Differentiate into **plasma cells** → produce **antibodies** (immunoglobulins)
- Some become **memory B cells** → fast response if same antigen encountered again

**Antibodies:**
- Y-shaped proteins
- Highly specific — each antibody fits ONE specific antigen (lock and key)
- How they work: Agglutination (clumping bacteria), neutralisation (block virus from entering cells), opsonisation (coat pathogen → easier for phagocytes to engulf)

**T lymphocytes (T cells):**
- **Helper T cells (CD4):** Activate B cells and cytotoxic T cells; coordinate immune response; THESE ARE DESTROYED BY HIV
- **Cytotoxic T cells (CD8):** Directly kill virus-infected cells and tumour cells
- **Memory T cells:** Long-lasting immunity

### Vaccination (Immunisation)
**Principle:** Introduce antigen to immune system without causing disease → immune system makes antibodies and memory cells → if real pathogen invades, immune system responds rapidly

**Types of vaccines:**
- **Live attenuated (weakened) vaccines:** Strongest immunity (MMR, oral polio, TB/BCG)
- **Killed/inactivated pathogen vaccines:** Safer (injectable polio, flu)
- **Toxoid vaccines:** Against toxins (tetanus, diphtheria)
- **Subunit vaccines:** Just protein antigens (hepatitis B)
- **mRNA vaccines:** Instruct cells to make antigen (COVID-19)

**Herd immunity:** When enough people in population are immune, pathogen cannot spread → even unvaccinated people are protected

### EPI (Expanded Programme on Immunisation) in Ghana
Children vaccinated against: BCG (TB), OPV (polio), DPT/Penta (diphtheria, whooping cough, tetanus, hepatitis B, Hib), measles, yellow fever, meningitis A, rotavirus, pneumococcal, HPV (girls)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Disease Worked Examples', $CONTENT$
## Worked Examples: Disease and Immunity

### Example 1: How Does the Malaria Parasite Evade the Immune System?
The Plasmodium parasite evades immunity because:
1. It hides inside liver cells and red blood cells (protected from antibodies)
2. It rapidly changes its surface proteins (antigenic variation) → antibodies made against previous protein no longer work
3. It suppresses immune cell activity in some ways

This is why a long-lasting, effective malaria vaccine has been difficult to develop (though some are now available like RTS,S/Mosquirix).

### Example 2: Primary vs Secondary Immune Response
**Primary response** (first exposure to antigen):
- Lag phase of ~7-14 days before antibodies appear
- Low levels of antibodies produced
- Person gets sick before immunity develops

**Secondary response** (second exposure — or vaccine booster):
- Memory cells respond within 1-3 days
- Much LARGER quantity of antibodies produced faster
- Higher antibody levels maintained longer
- Person often does NOT get sick (or milder illness)

This is why vaccines often need booster doses!

### Example 3: Interpreting Antibody Graph
A graph shows antibody levels over time. First peak at week 3, levels drop, second (higher) peak at week 10:

**Explanation:**
- Week 1-3: First antigen injection → primary immune response → antibody level rises
- Week 3-8: Antibody level drops as antigen cleared
- Week 8-10: Second injection (booster) → secondary immune response → memory cells respond rapidly → much higher antibody level
- Peak 2 is higher and faster than peak 1 due to memory cells

### Example 4: How Cholera Kills
Vibrio cholerae produces a toxin that:
1. Enters intestinal cells → causes Cl⁻ ions to be pumped out into intestinal lumen
2. Water follows by osmosis → massive water loss into gut
3. Result: Rice-water diarrhoea — up to 20 litres/day
4. Severe dehydration, electrolyte imbalance → heart failure and death if untreated

Treatment: ORS replaces water and electrolytes, buying time for body to fight infection
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Disease and Immunity', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) State the causative organism and vector of malaria.
(b) State THREE ways of preventing malaria.

**Answer:**
(a) Causative organism: **Plasmodium falciparum** (protozoan/parasite)
Vector: **Female Anopheles mosquito**

(b) Three prevention methods:
1. Use of insecticide-treated bed nets (ITNs/LLINs)
2. Elimination of standing water (destroys mosquito breeding sites)
3. Use of mosquito repellents
4. Indoor residual spraying with insecticide
5. Prophylactic antimalarial drugs (for pregnant women and travellers)
6. Vaccination (RTS,S malaria vaccine)

---

### Question 2 (WASSCE 2021)
Explain why a person who has had measles is usually immune to a second attack of the disease.

**Answer:**
When the measles virus first infects the body (primary response):
- The immune system produces antibodies against measles antigens
- Long-lived **memory B cells** and **memory T cells** are also produced

If exposed to measles virus a second time:
- Memory cells recognise the antigen immediately
- Secondary immune response is mounted rapidly (within days rather than 2 weeks)
- Large quantities of antibodies produced quickly
- Virus is neutralised and destroyed before it can cause disease

Therefore, the person is immune to further infection.

---

### Question 3 (WASSCE 2020)
State the difference between active and passive immunity.

**Answer:**
**Active immunity:** The body PRODUCES ITS OWN antibodies in response to an antigen (natural infection or vaccination). Long-lasting because memory cells are produced.

**Passive immunity:** Antibodies are TRANSFERRED to the person from an external source (mother to baby via placenta or breast milk; injection of antiserum). Fast-acting but SHORT-LIVED (no memory cells formed, antibodies eventually broken down).

---

### Practice Questions
1. Name the type of pathogen that causes each: (a) tuberculosis (b) malaria (c) ringworm (d) HIV/AIDS
2. State the mode of transmission for: (a) cholera (b) malaria (c) HIV
3. Explain why antibiotics are effective against bacterial infections but NOT viral infections.
4. State THREE ways the body prevents pathogens from entering (first line of defence).
5. What is the difference between a vaccine and an antibiotic?

**Answers:**
1. (a) Bacterium (b) Protozoan/parasite (c) Fungus (d) Virus
2. (a) Contaminated food/water (b) Bite of female Anopheles mosquito (c) Sexual contact, blood, mother to child
3. Antibiotics target bacterial structures/processes (cell wall, ribosomes, DNA replication) that are specific to bacteria. Viruses use the host cell's own machinery to replicate — antibiotics have nothing to target. Antiviral drugs are needed for viral infections.
4. Skin (physical barrier), mucus and cilia (trapping pathogens in respiratory tract), stomach acid (kills pathogens), lysozyme in tears/saliva
5. Vaccine: stimulates immune system to produce immunity (preventive); Antibiotic: kills or inhibits bacteria after infection (treatment); antibiotics do NOT work against viruses
$CONTENT$, 'practice', 5);

END $$;
