
/*
  # Biology notes for topics 6-10: Transport, Excretion, Nervous System, Reproduction, Photosynthesis
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Transport in Organisms
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Transport in Organisms' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Transport Systems in Living Organisms', $CONTENT$
## Why Transport Systems Are Needed

Single-celled organisms (e.g., Amoeba) can absorb nutrients and exchange gases by simple diffusion — their surface area is large enough relative to their volume.

Multicellular organisms are too large for diffusion alone to supply all cells. They need specialised transport systems.

### Transport in Plants: Two Systems
1. **Xylem:** Transports water and dissolved mineral salts from roots to leaves and stems (upward)
2. **Phloem:** Transports dissolved sugars (mainly sucrose) from leaves to all other parts (translocation — can move up or down)

### Transport in Animals: The Circulatory System
Humans have a **closed double circulatory system:**
- **Closed:** Blood stays inside vessels (arteries, veins, capillaries) — never directly contacts cells
- **Double:** Two circuits — pulmonary (heart → lungs → heart) and systemic (heart → body → heart)
- **Heart:** The pump — four-chambered (right and left atria; right and left ventricles)

### Components of Blood
1. **Red blood cells (erythrocytes):** Carry oxygen using haemoglobin; biconcave disc shape; no nucleus (in mammals)
2. **White blood cells (leucocytes):** Immune defence (phagocytes engulf bacteria; lymphocytes produce antibodies)
3. **Platelets (thrombocytes):** Blood clotting
4. **Plasma:** Liquid part — carries dissolved substances (glucose, CO₂, hormones, urea, proteins, antibodies, vitamins)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Heart Structure and Blood Vessels', $CONTENT$
## The Human Heart

### Structure
The heart has four chambers:
- **Right atrium:** Receives deoxygenated blood from body (via vena cava)
- **Right ventricle:** Pumps deoxygenated blood to lungs (via pulmonary artery)
- **Left atrium:** Receives oxygenated blood from lungs (via pulmonary vein)
- **Left ventricle:** Pumps oxygenated blood to body (via aorta) — has THICKEST wall

### Valves
- **Atrioventricular valves (tricuspid on right, bicuspid/mitral on left):** Prevent backflow from ventricles to atria
- **Semilunar valves (aortic and pulmonary):** Prevent backflow into ventricles

### The Cardiac Cycle
1. Atria fill with blood (diastole)
2. Atria contract → blood into ventricles
3. Ventricles contract (systole) → blood pumped out
4. Valves prevent backflow

**Heart rate:** ~70 beats per minute (bpm) at rest
**Blood pressure:** measured as systolic/diastolic (e.g., 120/80 mmHg)

### Blood Vessels Comparison
| Feature | Arteries | Veins | Capillaries |
|---------|----------|-------|-------------|
| Carry blood | Away from heart | To heart | Between arteries and veins |
| Pressure | High | Low | Very low |
| Wall thickness | Thick, elastic | Thin | One cell thick |
| Valves | None (except semilunar) | Present (prevent backflow) | None |
| Pulse | Felt | Not felt | None |
| Oxygen level | High (usually) | Low (usually) | Varies |

### Pulmonary vs Systemic Circulation
**Pulmonary circulation:** Right ventricle → pulmonary artery → lungs (oxygenation) → pulmonary vein → left atrium

**Systemic circulation:** Left ventricle → aorta → body organs → vena cava → right atrium

Note: Pulmonary ARTERY carries DEoxygenated blood; Pulmonary VEIN carries oxygenated blood (exception to usual rule)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Transport in Plants: Xylem and Phloem', $CONTENT$
## How Water and Nutrients Move in Plants

### Water Uptake by Roots

**Root hairs:** Thin-walled projections from root epidermal cells; increase surface area; absorb water and minerals

**Osmosis:** Water enters root hairs from soil by osmosis (soil water has higher water potential than root hair cells)

**Active transport:** Mineral ions are absorbed against a concentration gradient using ATP (especially potassium, nitrate ions)

### Movement Through the Plant — Transpiration Stream

1. Water enters root hairs by osmosis
2. Water moves across root cells (cortex) by osmosis → into xylem
3. Water moves up xylem by:
   - **Transpiration pull (tension):** Water evaporating from leaves creates a negative pressure that pulls water up
   - **Cohesion:** Water molecules stick to each other (hydrogen bonds)
   - **Adhesion:** Water molecules stick to xylem walls
   - **Root pressure:** Osmosis pushes water into xylem from root cells

### Transpiration
**Definition:** Loss of water vapour from leaves (mainly through stomata)

Factors affecting transpiration rate:
- **Temperature:** Higher temperature → faster evaporation → more transpiration
- **Humidity:** Low humidity → steeper concentration gradient → more transpiration
- **Wind:** Moving air removes water vapour → more transpiration
- **Light intensity:** Light causes stomata to open → more transpiration

**Stomata:** Pores in leaf epidermis surrounded by guard cells. Open in light (for CO₂ entry), close at night. Also regulate water loss.

### Phloem and Translocation
**Phloem** transports sugars (sucrose) made in leaves to all parts of the plant (storage organs, growing regions).

**Translocation:** Active process requiring ATP; sugars move in BOTH directions (source to sink)
- **Source:** Where sugars are produced (leaves) or released (storage organs)
- **Sink:** Where sugars are used (growing roots, fruits, stems)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Blood, Immunity, and Worked Examples', $CONTENT$
## Blood Functions and Immunity

### Haemoglobin and Oxygen Transport
- Haemoglobin (Hb) is a protein in red blood cells
- Each Hb molecule can carry 4 oxygen molecules
- HbO₂ = oxyhaemoglobin (bright red; formed at high O₂ pressure in lungs)
- In tissues (low O₂): HbO₂ → Hb + O₂ (releases oxygen to cells)

**Carbon dioxide transport:**
- ~70% as bicarbonate ions (HCO₃⁻) in plasma
- ~23% bound to haemoglobin (carbaminohaemoglobin)
- ~7% dissolved in plasma

### The Immune System
**Non-specific defences (first line):**
- Skin: physical barrier
- Mucus and cilia in respiratory tract: trap and remove pathogens
- Stomach acid: kills most ingested microbes

**Specific immune response (second line):**
- **Phagocytes (neutrophils, macrophages):** Engulf and destroy pathogens
- **Lymphocytes:** B cells (produce antibodies); T cells (destroy infected cells)
- **Antibodies:** Proteins that bind to specific antigens on pathogens → neutralise, clump, or mark for destruction
- **Antigens:** Foreign molecules on pathogens that trigger immune response
- **Memory cells:** Long-lived cells that provide rapid response if same pathogen encountered again

### Worked Example: Blood Transfusion Compatibility
Why must blood types match for transfusions?

Blood group A: Has antigen A on red cells; anti-B antibodies in plasma
Blood group B: Has antigen B on red cells; anti-A antibodies in plasma
Blood group AB: Has antigens A and B; no antibodies (universal RECIPIENT)
Blood group O: No antigens; has both anti-A and anti-B antibodies (universal DONOR)

If type A blood is given to a type B person:
Anti-A antibodies in type B person attack type A red cells → agglutination (clumping) → dangerous reaction
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Transport', $CONTENT$
## WASSCE Past Questions: Transport in Organisms

### Question 1 (WASSCE 2022)
(a) State TWO functions of the xylem.
(b) State TWO differences between arteries and veins.

**Answer:**
(a) 1. Transports water and dissolved mineral salts from roots to leaves
2. Provides structural support (xylem is made of dead, lignified cells with thick walls)

(b) Differences:
1. Arteries carry blood AWAY from heart; veins carry blood TOWARDS heart
2. Arteries have thick walls and high pressure; veins have thin walls and low pressure
3. Most arteries carry oxygenated blood; most veins carry deoxygenated blood
4. Veins have valves to prevent backflow; arteries do not

---

### Question 2 (WASSCE 2021)
Trace the path of a drop of blood from the right atrium to the left ventricle.

**Answer:**
Right atrium → tricuspid valve → right ventricle → semilunar valve → pulmonary artery → lungs (capillaries) → oxygenated → pulmonary vein → left atrium → bicuspid (mitral) valve → left ventricle

---

### Question 3 (WASSCE 2020)
Explain how water moves from the soil into the leaves of a plant.

**Answer:**
1. Root hair cells absorb water from soil by **osmosis** (soil solution has higher water potential)
2. Water passes through root cortex cells by osmosis
3. Water enters **xylem** vessels
4. Water is pulled up the xylem by **transpiration pull** (water evaporating from leaves creates tension)
5. Water is maintained as a continuous column by **cohesion** (between water molecules) and **adhesion** (to xylem walls)
6. Water reaches mesophyll cells in leaves; evaporates through stomata (transpiration)

---

### Practice Questions
1. Name the four chambers of the human heart and state the function of each.
2. What is the difference between plasma and serum?
3. Explain why the left ventricle has a thicker wall than the right ventricle.
4. Define transpiration. State four factors that affect the rate of transpiration.
5. What are phagocytes? Describe how they defend the body against infection.

**Answers:**
1. Right atrium (receives deoxygenated blood from body); Right ventricle (pumps to lungs); Left atrium (receives oxygenated blood from lungs); Left ventricle (pumps oxygenated blood to body)
2. Plasma includes clotting factors/fibrinogen; serum is plasma with clotting factors removed
3. Left ventricle must pump blood around entire body at high pressure; right ventricle only pumps to nearby lungs at lower pressure. Greater distance and resistance requires more force = thicker wall
4. Loss of water vapour from plant surfaces (mainly through stomata). Factors: temperature, humidity, wind speed, light intensity, water availability
5. Phagocytes are white blood cells that engulf pathogens. They chemically detect pathogens, extend pseudopodia (false feet) around them, engulf in vacuole, fuse with lysosomes containing digestive enzymes, digest and destroy the pathogen.
$CONTENT$, 'practice', 5);

  -- Excretion and Homeostasis
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Excretion and Homeostasis' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Excretion and Homeostasis', $CONTENT$
## Excretion: Removing Metabolic Waste

**Excretion** is the removal of metabolic waste products from the body.

**Important: Excretion ≠ Egestion**
- **Excretion:** Removal of waste products OF METABOLISM (made inside cells)
- **Egestion (defecation):** Removal of undigested food (faeces) — this material was never absorbed into cells

### Excretory Products and Their Organs

| Waste Product | Source | Organ |
|--------------|--------|-------|
| Carbon dioxide (CO₂) | Respiration | Lungs |
| Water (excess) | Respiration, digestion | Kidneys, lungs, skin |
| Urea | Amino acid breakdown (deamination) | Kidneys |
| Mineral salts (excess) | Diet | Kidneys, skin (sweat) |
| Bile pigments (bilirubin) | Breakdown of haemoglobin | Liver → gut |

### What Is Homeostasis?
**Homeostasis** is the maintenance of a constant internal environment despite changes in external conditions.

The body regulates:
- **Body temperature** (thermoregulation)
- **Blood glucose concentration**
- **Water content** of blood (osmoregulation)
- **pH** of blood
- **Ion concentrations**

### The Principle of Negative Feedback
Negative feedback maintains homeostasis:
1. Stimulus causes change from the SET POINT (normal level)
2. Receptor detects the change
3. Control centre processes information
4. Effectors take corrective action
5. Level returns to set point
6. Receptor detects return to normal → response switched off

This prevents overcorrection and keeps levels stable.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'The Human Kidney: Structure and Function', $CONTENT$
## The Kidney: Master of Excretion

### Gross Structure
- Two kidneys in the abdomen, protected by lower ribs
- **Cortex:** Outer region (contains glomeruli and Bowman's capsules)
- **Medulla:** Inner region (contains loops of Henle and collecting ducts)
- **Renal pelvis:** Funnel collecting urine → ureter → bladder → urethra

### The Nephron — Functional Unit of the Kidney
Each kidney contains about 1 million nephrons!

**Parts of the Nephron:**
1. **Bowman's Capsule:** Cup-shaped; surrounds the glomerulus
2. **Glomerulus:** Knot of capillaries inside Bowman's capsule; site of filtration
3. **Proximal Convoluted Tubule (PCT):** Reabsorption of most glucose, amino acids, water, ions
4. **Loop of Henle:** Creates concentration gradient in medulla; important for water conservation
5. **Distal Convoluted Tubule (DCT):** Fine-tuning of water and ion balance
6. **Collecting Duct:** Final water reabsorption; concentrates urine

### Three Processes in Urine Formation

**1. Ultrafiltration (in Bowman's Capsule/Glomerulus):**
- Blood enters glomerulus under HIGH pressure (afferent arteriole wider than efferent)
- Small molecules forced through filtration membrane into Bowman's capsule
- Filtrate contains: water, glucose, amino acids, urea, mineral salts, uric acid
- STAYS in blood: Large proteins, blood cells (too big to filter)

**2. Selective Reabsorption (mainly in PCT):**
- Useful substances reabsorbed BACK into blood
- All glucose, all amino acids: reabsorbed by active transport (requires ATP)
- About 99% of water: reabsorbed by osmosis
- Mineral ions: selectively reabsorbed
- Urea: NOT fully reabsorbed → remains in urine for excretion

**3. Secretion:**
- Some additional waste actively secreted INTO the tubule from blood (e.g., excess H⁺ ions, certain drugs)

### Final Composition of Urine
- Water (95-97%)
- Urea (2%)
- Mineral salts (0.9%)
- Uric acid, creatinine (traces)
- NO glucose, NO amino acids, NO proteins, NO red blood cells

### ADH (Antidiuretic Hormone) — Water Balance
When blood is too concentrated (dehydrated):
- Hypothalamus detects → pituitary releases ADH
- ADH makes collecting ducts MORE permeable to water
- More water reabsorbed → concentrated urine (small volume)

When blood is too dilute (over-hydrated):
- Less ADH released → collecting ducts LESS permeable
- Less water reabsorbed → dilute urine (large volume)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Thermoregulation and Liver Functions', $CONTENT$
## Regulation of Body Temperature

**Normal human body temperature:** 37°C (range 36.1–37.2°C)
**Regulation centre:** Hypothalamus in brain

### When Body Is Too HOT (Hyperthermia prevention):
1. **Vasodilation:** Blood vessels in skin widen → more blood near surface → heat lost to air
2. **Sweating:** Sweat evaporates → removes heat (latent heat of evaporation)
3. **Erector muscles relax:** Hairs lie flat → less air trapped → less insulation
4. **Decreased metabolic rate:** Less heat generated

### When Body Is Too COLD (Hypothermia prevention):
1. **Vasoconstriction:** Blood vessels in skin narrow → less blood near surface → less heat lost
2. **Shivering:** Involuntary muscle contractions → generates heat
3. **Erector muscles contract:** Hairs stand up → traps air → insulation (goosebumps in humans — vestigial)
4. **Increased metabolic rate:** More heat generated
5. **Behavioural responses:** Put on more clothing, move to warmer place, curl up

### The Liver — A Multi-Function Organ
The liver is the largest internal organ and performs many vital functions:

**Metabolic functions:**
- **Deamination:** Removal of amino groups (NH₂) from excess amino acids → ammonia → converted to urea
- **Gluconeogenesis:** Makes glucose from non-carbohydrate sources (amino acids, glycerol) when blood glucose falls
- **Glycogenesis:** Converts excess glucose → glycogen (storage)
- **Glycogenolysis:** Breaks glycogen → glucose when blood glucose falls
- **Lipid metabolism:** Synthesises lipoproteins, cholesterol; converts excess carbohydrates to fat

**Other functions:**
- **Detoxification:** Breaks down alcohol, drugs, hormones, toxins
- **Bile production:** Makes bile (for fat emulsification)
- **Protein synthesis:** Makes blood proteins (albumin, clotting factors, fibrinogen)
- **Temperature regulation:** Highly metabolically active → generates much heat
- **Iron storage:** Stores iron from broken-down haemoglobin; stores vitamins A, D, B12
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Excretion and Homeostasis', $CONTENT$
## Worked Examples

### Example 1: Blood Glucose Regulation
Draw and explain the negative feedback loop for blood glucose:

**After a carbohydrate meal:**
Blood glucose rises → Pancreas (β-cells of islets of Langerhans) detects rise → Releases **INSULIN** → Insulin causes:
- Liver and muscle cells take up more glucose
- Glucose converted to glycogen (glycogenesis)
- Glucose used in more respiration
Blood glucose returns to normal → Less insulin released

**During fasting or exercise:**
Blood glucose falls → Pancreas (α-cells) detects fall → Releases **GLUCAGON** → Glucagon causes:
- Liver breaks down glycogen → glucose (glycogenolysis)
- Gluconeogenesis (amino acids → glucose)
Blood glucose rises back to normal → Less glucagon released

**Type 1 Diabetes:** β-cells destroyed (autoimmune) → no insulin → blood glucose uncontrolled → treated with insulin injections
**Type 2 Diabetes:** Cells become resistant to insulin → blood glucose poorly controlled → treated with diet, exercise, medication

### Example 2: Analysing Urine Sample
A patient's urine sample contains glucose. What does this indicate?

**Answer:** This indicates the patient may have **diabetes mellitus**. Normally, ALL glucose filtered by the glomerulus is reabsorbed in the PCT. Glucose appearing in urine (glycosuria) means blood glucose is so high that the kidneys cannot reabsorb all of it.

Alternative causes: Kidney tubule damage preventing normal reabsorption

### Example 3: Comparing Two Kidney Conditions
| | Kidney failure | Diabetes insipidus |
|-|----------------|-------------------|
| Cause | Nephrons damaged | Insufficient ADH |
| Urine produced | Very little (or none) | Very large volumes |
| Urine concentration | Variable | Very dilute |
| Treatment | Dialysis/transplant | ADH replacement |
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Excretion and Homeostasis', $CONTENT$
## WASSCE Past Questions

### Question 1 (WASSCE 2022)
(a) Define excretion.
(b) State the excretory products of the kidney and the lungs.

**Answer:**
(a) Excretion is the removal of metabolic waste products (substances produced by chemical reactions in cells) from the body.

(b) Kidney: urea, excess water, excess mineral salts, uric acid
Lungs: carbon dioxide, water vapour

---

### Question 2 (WASSCE 2021)
Describe how the human body responds when body temperature rises above normal.

**Answer:**
1. Hypothalamus (thermoregulatory centre) detects rise in blood temperature
2. Sweat glands become more active → sweat evaporates from skin surface → heat removed by evaporation
3. Arterioles in skin vasodilate (widen) → more blood flows close to skin surface → more heat radiated/convected to air
4. Erector pili muscles relax → hairs lie flat → less insulating air layer → heat lost more easily
5. These mechanisms together cool the body back to 37°C (negative feedback)

---

### Question 3 (WASSCE 2020)
Explain the role of ADH in regulating water balance in the body.

**Answer:**
ADH (Antidiuretic hormone) is produced by the hypothalamus and released from the pituitary gland.

When the body is **dehydrated** (blood too concentrated):
- Hypothalamus osmoreceptors detect rise in blood concentration
- More ADH released → collecting ducts of kidneys become more permeable to water
- More water reabsorbed by osmosis into blood → smaller volume of concentrated urine
- Blood water content restored to normal → negative feedback reduces ADH secretion

When body has **excess water** (blood too dilute):
- Less ADH released → collecting ducts less permeable
- Less water reabsorbed → larger volume of dilute urine
- Excess water excreted

---

### Practice Questions
1. State THREE differences between excretion and egestion.
2. What is deamination? Where does it occur? What products are formed?
3. Describe the THREE processes involved in urine formation.
4. Why do people urinate more in cold weather than in hot weather?
5. State TWO effects of diabetes mellitus on the body.

**Answers:**
1. Excretion removes metabolic waste from inside cells; egestion removes undigested food that never entered cells. Excretion involves lungs, kidneys, skin; egestion occurs through anus only. Excretion products include urea, CO₂; egestion product is faeces.
2. Deamination: removal of amino group (NH₂) from excess amino acids; occurs in liver; produces ammonia (→ converted to urea) + organic acids (used for energy/other molecules)
3. Ultrafiltration (glomerulus/Bowman's capsule) → selective reabsorption (tubules) → secretion; resulting in concentrated urine
4. In cold weather, less sweating → less water lost through skin → kidneys must excrete more water to maintain balance → more urine. In hot weather, much water lost in sweat → less water available for urine → concentrated urine
5. High blood glucose (hyperglycaemia); glucose in urine (glycosuria); excessive thirst; frequent urination; poor wound healing; blurred vision; risk of coma in severe cases
$CONTENT$, 'practice', 5);

END $$;
