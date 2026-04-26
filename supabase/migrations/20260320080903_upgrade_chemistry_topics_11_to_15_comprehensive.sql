
/*
  # Upgrade Chemistry Notes: Topics 11-15 (Comprehensive High-Quality Notes)

  ## Topics Upgraded
  11. Separation Techniques and Water
  12. Energetics and Thermochemistry
  13. Nitrogen and Its Compounds
  14. Sulphur and Its Compounds
  15. Carbon Chemistry and Fuels
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- ============================================================
  -- TOPIC 11: SEPARATION TECHNIQUES AND WATER
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Separation Techniques and Water' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Separation Techniques', E'
## Why Separate Mixtures?

A **mixture** contains two or more substances that are NOT chemically combined. The substances retain their own properties and can be separated by physical methods.

**Types of mixtures:**
- **Homogeneous:** Uniform throughout (e.g., salt water, air, alloys) — appears as one phase
- **Heterogeneous:** Non-uniform (e.g., sand + water, oil + water) — appears as multiple phases

---

## 1. Filtration

**Used for:** Separating an insoluble solid from a liquid (or solution)

**Principle:** Solid particles are too large to pass through filter paper pores; liquid passes through.

**Apparatus:** Filter funnel, filter paper (cone-shaped), conical flask/beaker

**Products:**
- **Residue** — solid left on filter paper
- **Filtrate** — liquid that passes through

**Examples:**
- Separating sand from water
- Removing unreacted CuO from CuSO4 solution
- Water purification (removing suspended particles)

**Technique tips:**
- Fold filter paper into cone shape
- Wet paper to seal it to funnel
- Pour mixture gently down a glass rod
- Do not overfill funnel above paper level

---

## 2. Evaporation (Crystallization)

**Used for:** Separating a dissolved solid from a solution (when solid is heat-stable)

**Principle:** Heat drives off water (solvent); solid remains.

**Types:**
- **Evaporation to dryness:** Evaporate ALL water → dry solid remains (e.g., NaCl)
- **Crystallization:** Heat to reduce volume, then COOL → crystals form (better for large crystals; preserves water of crystallization)

**Examples:**
- Obtaining salt (NaCl) from seawater → evaporation ponds
- Obtaining CuSO4·5H2O crystals from solution → slow crystallization (evaporate then cool)

**Caution:** Do not evaporate to dryness if compound decomposes on heating (e.g., hydrated salts, NaHCO3).

**Crystallization technique:**
1. Heat solution to reduce volume (evaporate ~50-70% of water)
2. Test for crystallization point (one drop on cold watch glass → crystals form)
3. Cool the saturated solution slowly → large crystals form
4. Filter off crystals; dry at low temperature

---

## 3. Distillation

**Used for:** Separating a liquid from a solution (or mixture of liquids with different boiling points)

**Principle:** Liquid boiled; vapor travels through condenser; cools back to liquid in receiver.

### Simple Distillation
**Used for:** Separating solvent (liquid) from a dissolved solid or from a mixture where boiling points differ greatly (>25°C apart)

**Apparatus:** Round-bottom flask, Liebig condenser, collecting flask, thermometer (placed at side arm of flask neck)

**Example:** Separating water from ink; obtaining pure water from salt water

### Fractional Distillation
**Used for:** Separating mixtures of liquids with SIMILAR but DIFFERENT boiling points

**Principle:** Uses a fractionating column packed with glass beads or rings. Vapor from the lower-boiling component rises higher in column; more volatile component distills over first.

**Examples:**
- Separating ethanol from water (bp: 78°C vs 100°C) — used in brewing/distillation
- Industrial separation of crude oil fractions (petroleum refinery)
- Separation of liquid air into N2 (bp -196°C), O2 (bp -183°C), Ar, etc.

---

## 4. Chromatography

**Used for:** Separating and identifying components of a mixture (especially colored substances and small quantities)

**Principle:** Components move through a stationary phase carried by a mobile phase. Different components have different attractions to the stationary phase and travel different distances.

**Types:**

| Type | Stationary Phase | Mobile Phase | Use |
|------|----------------|-------------|-----|
| Paper chromatography | Filter paper | Solvent (water, ethanol) | Dyes, inks, amino acids |
| Thin Layer (TLC) | Silica on glass/aluminium | Organic solvent | Drugs, food additives |
| Gas-liquid (GLC) | Liquid on solid in tube | Inert gas (He, N2) | Fragrances, forensics, pollution |
| Column | Silica/alumina in tube | Liquid solvent | Drug purification |

### Paper Chromatography — Detailed Procedure

**Equipment:** Chromatography paper, suitable solvent, pencil (not pen!), ruler, pencil line (baseline)

**Procedure:**
1. Draw pencil baseline 2 cm from bottom of paper
2. Place small spot of mixture on baseline using a glass capillary
3. Allow to dry; add spots of standards (known substances) alongside
4. Place paper in solvent (solvent level BELOW baseline — spots must not be submerged!)
5. Cover container; allow solvent to rise up paper by capillary action
6. Remove paper when solvent front is near top; mark solvent front immediately
7. Allow to dry

**Rf value:**
Rf = distance traveled by spot / distance traveled by solvent front

**Properties of Rf:**
- Rf is constant for a substance in a given solvent system
- 0 < Rf < 1 (always a fraction — cannot exceed 1)
- Used to IDENTIFY unknown compounds by comparing Rf with known standards
- Compounds with high affinity for stationary phase → low Rf (travel less)
- Compounds with low affinity for stationary phase → high Rf (travel more)

**Example calculation:**
Solvent front travels 14.0 cm from baseline. Spot travels 8.4 cm.
Rf = 8.4 / 14.0 = **0.60**

**Identifying unknowns:** Compare Rf of unknown to Rf of known standards run on same chromatogram in same solvent.

---

## 5. Other Separation Methods

### Centrifugation
- Used for: Separating fine solids from liquids faster than filtration
- Principle: Spinning at high speed → centrifugal force sediments fine particles
- Used in: Blood separation (red cells vs plasma), dairy (cream from milk), radioactive waste

### Magnetic Separation
- Used for: Separating magnetic materials (iron, steel, nickel) from non-magnetic mixture
- Example: Removing iron filings from a sulfur-iron mixture; recycling steel

### Decanting
- Used for: Removing liquid from settled solid after sedimentation
- Carefully pour off liquid, leaving solid behind

### Solvent Extraction
- Used for: Extracting a solute from one solvent into another
- Principle: "Like dissolves like" — use immiscible solvents
- Example: Extracting iodine from water using hexane (I2 more soluble in hexane)

### Sublimation
- Used for: Purifying a substance that sublimes (solid → gas directly)
- Examples: Purifying iodine (sublimes easily); ammonium chloride (NH4Cl sublimes at ~340°C)
- Procedure: Heat in a flask; sublimate deposits on cooled surface above heat source

---

## Decision Framework — Choosing a Separation Method

| Mixture | Method |
|---------|--------|
| Sand + water | Filtration |
| Salt + water | Evaporation / crystallization |
| Sand + salt + water | Filter first (removes sand); evaporate filtrate (gets salt) |
| Alcohol + water | Fractional distillation |
| Water from seawater | Distillation |
| Dyes in ink | Paper chromatography |
| Iron + sulfur | Magnetic separation (or dissolve S in CS2) |
| Iodine + water | Solvent extraction with hexane; or sublimation |
| Cream + milk | Centrifugation |
', 'overview', 1),

  (v_topic_id, 'Water Chemistry and Purification', E'
## The Water Cycle and Natural Water

**Pure water** contains nothing dissolved — it is a colorless, odorless, tasteless liquid.

**Natural water** contains dissolved minerals, gases, and sometimes bacteria. It is never truly pure.

### Sources of Water in West Africa
- Rainwater (softest, least minerals)
- Rivers (e.g., Volta, Niger, Congo) — contains suspended matter, dissolved minerals
- Underground/borehole water — often hard (contains Ca2+ and Mg2+)
- Seawater — very salty (NaCl plus many other dissolved salts)
- Treated tap water — chlorinated

---

## Drinking Water Treatment

**Purpose:** Remove suspended solids, pathogens, and make safe for drinking.

**Steps in municipal water treatment:**

1. **Intake and screening:** Large debris (leaves, fish, trash) removed by mesh screens

2. **Coagulation and flocculation:**
   - Alum [Al2(SO4)3] or iron(III) sulfate added
   - Al3+ ions react with OH- from water → Al(OH)3 gel forms
   - The Al(OH)3 gel traps fine suspended particles (clay, bacteria, organic matter)
   - Particles clump together to form larger flocs that settle

3. **Sedimentation:** Flocs settle to bottom of large tank (clarifier) by gravity

4. **Sand/gravel filtration:**
   - Water flows through layers of fine sand and gravel
   - Removes fine suspended particles and most remaining bacteria
   - Biological activity in sand bed also removes organics

5. **Chlorination:**
   - Cl2 gas or sodium hypochlorite (NaOCl) added in carefully controlled amounts
   - Kills bacteria, viruses, and other pathogens
   - Cl2 + H2O → HCl + HOCl (HOCl = hypochlorous acid, effective bactericide)
   - Residual Cl2 maintains protection in distribution pipes

6. **pH adjustment:**
   - Calcium hydroxide (lime, Ca(OH)2) added to raise pH to ~7-8
   - Prevents corrosion of metal water pipes
   - Acidic water dissolves pipe metal (lead, copper)

7. **Fluoridation (optional, country-dependent):**
   - NaF or Na2SiF6 added at 1 ppm (parts per million)
   - Strengthens tooth enamel (fluoride replaces OH- in hydroxyapatite → fluorapatite)
   - Reduces tooth decay (dental caries)

---

## Hardness of Water (Full Coverage — see also Topic 3)

**Temporary hardness:** Ca(HCO3)2 from CO2 + CaCO3 reaction
**Permanent hardness:** CaSO4, MgSO4

**Water treatment for hardness:**
- **Scale/limescale** in boilers reduces heat transfer (costs money, wastes energy)
- Ion exchange softeners remove Ca2+ and Mg2+ from hard water
- Na2CO3 (washing soda) added: Ca2+ + CO32- → CaCO3 precipitates

---

## Uses of Water

| Use | Why Water is Ideal |
|-----|-------------------|
| Drinking | Non-toxic, absorbs nutrients |
| Cooking | High specific heat capacity, good solvent |
| Agriculture (irrigation) | Plants need water for photosynthesis |
| Industry (coolant) | High specific heat — absorbs lots of heat |
| Industry (solvent) | Water dissolves many ionic and polar substances |
| Electricity (hydropower) | Kinetic energy of flowing water drives turbines |

**Specific heat capacity of water:** 4.18 kJ/kg/°C (one of the highest of any substance)
**This means:** Large amounts of energy needed to heat water → important for climate regulation (oceans moderate temperature) and cooling in industry.

---

## Worked Examples — Separation Techniques

### Example 1: Chromatography Rf Calculation
**Q:** In a paper chromatography experiment, the solvent front travels 18.0 cm. Three dyes travel: A = 4.5 cm, B = 10.8 cm, C = 16.2 cm. Calculate Rf values.

**Solution:**
Rf(A) = 4.5/18.0 = **0.25**
Rf(B) = 10.8/18.0 = **0.60**
Rf(C) = 16.2/18.0 = **0.90**

### Example 2: Separating a Mixture
**Q:** A mixture contains: sand, salt (NaCl), and iron filings. Describe how to separate all three.

**Solution:**
Step 1: **Magnetic separation** — hold a magnet over mixture → iron filings attracted and removed
Step 2: **Add water and stir** → salt dissolves; sand does not dissolve
Step 3: **Filtration** → sand stays as residue on filter paper; salt solution (filtrate) passes through
Step 4: **Evaporate** the filtrate → water evaporates; salt crystals remain

### Example 3: Choosing Appropriate Method
**Q:** State the method to separate: (a) alcohol from water, (b) salt from seawater, (c) amino acids in a protein hydrolysate.

**Answers:**
(a) **Fractional distillation** — ethanol (bp 78°C) and water (bp 100°C) have different but close boiling points
(b) **Evaporation** (solar evaporation in salt pans) or **distillation** for pure water
(c) **Paper chromatography** or thin-layer chromatography (TLC) — to identify amino acids
', 'explanation', 2),

  (v_topic_id, 'Worked Examples and Practice: Separation Techniques', E'
## Worked Examples

### Example 4: Complete Separation Procedure
**Q:** Describe how to obtain pure dry crystals of copper(II) sulfate from a mixture of copper(II) sulfate and sand.

**Procedure:**
1. Add water to the mixture and stir to dissolve CuSO4
2. **Filter** the mixture: sand remains as residue; blue CuSO4 solution passes as filtrate
3. Transfer filtrate to evaporating dish; heat gently on water bath
4. Concentrate by evaporating until crystallization point (test with one drop on cold surface)
5. Remove from heat; allow to cool slowly — blue CuSO4·5H2O crystals form
6. **Filter** off crystals; dry gently between filter papers at LOW temperature (not in oven — would lose water of crystallization)

**Key observations:** Clear blue solution after filtration; bright blue crystals after crystallization.

---

### Example 5: Interpreting Chromatogram
**Q:** A chromatogram shows spots at the following distances from baseline (solvent front = 15.0 cm):
- Unknown X: 9.0 cm
- Reference A: 9.0 cm
- Reference B: 6.0 cm
- Reference C: 12.0 cm

What can you conclude about unknown X?

**Solution:**
Rf(X) = 9.0/15.0 = 0.60
Rf(A) = 9.0/15.0 = 0.60
Rf(B) = 6.0/15.0 = 0.40
Rf(C) = 12.0/15.0 = 0.80

**X has the same Rf as Reference A (both 0.60)** → X is likely the SAME compound as A (or contains compound A). Further confirmation needed with a different solvent system.

---

### Example 6: Distillation for Pure Water
**Q:** Describe how you would obtain pure water from sea water. What separation method would you use?

**Solution:**
**Method: Simple distillation**

1. Pour seawater into a round-bottom flask fitted with a thermometer and connected to a Liebig condenser
2. Heat the seawater → water boils at 100°C; steam rises into condenser
3. Condenser: cool water running around it → steam condenses back to liquid water
4. Collect condensate in a receiver flask
5. The dissolved salts (NaCl, etc.) remain in the flask

**Product:** Pure distilled water (no dissolved salts)
**Residue:** Salt and other dissolved minerals

This is also used to desalinate water in arid regions (desalination plants — but more commonly using reverse osmosis industrially).
', 'definitions', 3),

  (v_topic_id, 'Worked Examples Continued', E'
## Additional Worked Examples

### Example 7: Explaining Why Water Treatment Uses Chlorine
**Q:** Explain why chlorine is added to drinking water even though it is a toxic gas. What is the concern?

**Answer:**
Chlorine is added because it kills bacteria, viruses, and other pathogens in the water. This prevents waterborne diseases such as cholera, typhoid, and dysentery — which can be fatal and have caused epidemics in West Africa and elsewhere.

The amount added is very carefully controlled (typically 0.2-0.5 ppm). At these low levels, chlorine is harmless to humans but effective against microorganisms.

**Concern:** Chlorine can react with naturally occurring organic compounds in water to form disinfection by-products (DBPs) such as trihalomethanes (THMs), which may be carcinogenic at high concentrations. Modern treatment facilities carefully monitor and minimize these.

Alternative: UV light treatment (doesn''t use chemicals); ozonation (ozone, O3 — very effective but expensive, and no residual protection in pipes).

---

### Example 8: Sublimation
**Q:** Ammonium chloride (NH4Cl) is mixed with sand. How would you obtain pure NH4Cl from the mixture?

**Answer:**
**Method: Sublimation**

1. Place mixture in an evaporating dish; cover with a large inverted funnel (tube pointing up) with cotton wool plugging the top
2. Heat gently — NH4Cl sublimes (solid → vapor) without melting; sand does not sublime
3. The NH4Cl vapor rises and deposits as pure white solid on the cool inner surface of the funnel
4. Allow to cool; carefully collect the pure NH4Cl crystals from inside the funnel

**Why does NH4Cl sublime?** NH4Cl dissociates on heating: NH4Cl ⇌ NH3 + HCl. These gases recombine on the cool surface to redeposit as NH4Cl. Net effect = sublimation.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Separation Techniques', E'
## WASSCE Practice Questions

### Multiple Choice

**Q1.** Which method is best for separating iodine from a mixture of iodine and sand?
A) Filtration  B) Distillation  C) Sublimation  D) Decanting
**Answer: C** — Iodine sublimes; sand does not.

**Q2.** In paper chromatography, the Rf value of a substance is:
A) Distance moved by solvent / distance moved by spot
B) Distance moved by spot / distance moved by solvent
C) Distance moved by spot / distance from baseline
D) Distance from baseline / distance moved by solvent
**Answer: B**

**Q3.** To separate sand from a mixture of sand and salt, the first step is:
A) Filtration  B) Evaporation  C) Dissolving in water  D) Centrifugation
**Answer: C** — Add water to dissolve salt; then filter to remove sand.

**Q4.** Which separation method uses a fractionating column?
A) Simple distillation  B) Fractional distillation  C) Chromatography  D) Filtration
**Answer: B**

---

### Structured Questions

**Q5.** (a) State the principle of paper chromatography. [2]
(b) An ink sample is analyzed by paper chromatography in ethanol. The solvent front travels 12.0 cm. A spot is found at 7.2 cm from the baseline.
(i) Calculate the Rf value. [1]
(ii) A reference blue dye has Rf = 0.45 in the same system. Is the spot blue dye? Explain. [2]
(c) State ONE use of chromatography in everyday life. [1]

**Answers:**
(a) Different components in a mixture have different attractions to the stationary phase (paper) and the mobile phase (solvent). Components move different distances with the solvent front based on their solubility in the solvent and their adsorption to the paper. Components with greater solubility in the mobile phase (or lower affinity for stationary phase) travel further.

(b)(i) Rf = 7.2/12.0 = **0.60**

(b)(ii) Rf of the spot = 0.60; Rf of reference blue dye = 0.45. These are DIFFERENT values, so the spot is NOT the blue dye (they are different substances — same Rf would suggest same compound).

(c) Food coloring testing (checking for unauthorized dyes in food); forensics (matching ink samples); testing drugs in athletes (doping tests); pharmaceutical quality control.

---

**Q6.** A student is given a mixture containing copper(II) sulfate (CuSO4), calcium carbonate (CaCO3, insoluble), and water.
(a) Name the method used to separate the CaCO3 from the CuSO4 solution. [1]
(b) Describe how pure CuSO4·5H2O crystals can be obtained from the blue solution. [4]
(c) If the crystals are heated strongly, what would be observed? Write an equation. [2]

**Answers:**
(a) **Filtration** — CaCO3 is insoluble and remains as residue; CuSO4 solution passes through.

(b) Transfer the blue filtrate to an evaporating dish. Heat gently on a water bath to evaporate water and concentrate the solution. Test for saturation: dip cool glass rod in and allow one drop to cool — if crystals form, solution is saturated. Remove from heat. Allow to cool slowly. Blue crystals of CuSO4·5H2O form. Filter crystals; dry gently between filter papers at low temperature.

(c) Blue crystals turn white (anhydrous CuSO4); steam (water vapor) given off.
CuSO4·5H2O → CuSO4 + 5H2O
(If heated very strongly: CuSO4 → CuO + SO3; black solid and pungent gas)
', 'practice', 5);


  -- ============================================================
  -- TOPIC 12: ENERGETICS AND THERMOCHEMISTRY
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Energetics and Thermochemistry' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Exothermic and Endothermic Reactions', E'
## Energetics — Introduction

**Energetics** (thermochemistry) is the study of energy changes that occur during chemical reactions.

**Energy:** Measured in joules (J) or kilojoules (kJ). 1 kJ = 1000 J.

---

## Exothermic Reactions

**Definition:** A reaction that RELEASES energy (heat) to the surroundings. The temperature of the surroundings INCREASES.

**Enthalpy change (ΔH):** NEGATIVE (ΔH < 0)
- Products have LESS energy than reactants
- Energy is released

**Examples of exothermic reactions:**
- Combustion of fuels: CH4 + 2O2 → CO2 + 2H2O   ΔH = -890 kJ/mol
- Neutralization: H+(aq) + OH-(aq) → H2O(l)   ΔH = -57 kJ/mol
- Respiration: C6H12O6 + 6O2 → 6CO2 + 6H2O   (ΔH negative, releases ~2870 kJ/mol)
- Rusting: 4Fe + 3O2 → 2Fe2O3   (slow exothermic)
- Dissolving NaOH in water: NaOH(s) → Na+(aq) + OH-(aq)   (exothermic — flask gets hot)
- Displacement reactions: Zn + CuSO4 → ZnSO4 + Cu   (exothermic)
- Hand warmers: Fe oxidation (slow)
- Setting of cement: CaO + H2O → Ca(OH)2 + heat

**Temperature in exothermic reaction:** RISES (heat released to solution/surroundings)

---

## Endothermic Reactions

**Definition:** A reaction that ABSORBS energy (heat) from the surroundings. The temperature of the surroundings DECREASES.

**Enthalpy change (ΔH):** POSITIVE (ΔH > 0)
- Products have MORE energy than reactants
- Energy is absorbed

**Examples of endothermic reactions:**
- Thermal decomposition of CaCO3: CaCO3 → CaO + CO2   ΔH = +178 kJ/mol
- Photosynthesis: 6CO2 + 6H2O → C6H12O6 + 6O2   (ΔH positive, light energy absorbed)
- Thermal decomposition: Cu(NO3)2 → CuO + 2NO2 + ½O2
- Dissolving NH4NO3 in water: NH4NO3(s) → NH4+(aq) + NO3-(aq)   (endothermic — gets cold)
- Cooking food (baking)
- Cold packs: dissolving NH4NO3 or NH4Cl

**Temperature in endothermic reaction:** FALLS (heat absorbed from solution/surroundings)

---

## Energy Level Diagrams (Reaction Profiles)

### Exothermic
Reactants at higher energy level; Products at lower energy level.
The curve goes UP to activation energy peak then DOWN to products.
ΔH = energy of products - energy of reactants = NEGATIVE

### Endothermic
Reactants at lower energy level; Products at higher energy level.
The curve goes UP to activation energy peak then further UP to products.
ΔH = energy of products - energy of reactants = POSITIVE

**Activation energy (Ea):** The minimum energy needed for a collision to result in reaction.
- Shown as the height of the "hump" above the reactant energy level.
- A catalyst lowers Ea but does NOT change ΔH.

---

## Standard Enthalpy Changes

| Symbol | Name | Definition |
|--------|------|-----------|
| ΔHf° | Standard enthalpy of formation | Enthalpy change to form 1 mol of compound from its elements in standard states |
| ΔHc° | Standard enthalpy of combustion | Enthalpy change when 1 mol substance is completely burned in O2 |
| ΔHneut° | Standard enthalpy of neutralization | Enthalpy change when 1 mol water formed in neutralization |
| ΔHsol° | Standard enthalpy of solution | Enthalpy change when 1 mol substance dissolves in large excess water |
| ΔHlatt° | Lattice enthalpy | Enthalpy change to form 1 mol gaseous ions from 1 mol of ionic solid |

**Standard conditions:** 25°C (298 K), 1 atm pressure, 1 mol/dm³ (where relevant)
', 'overview', 1),

  (v_topic_id, 'Bond Energies, Hess''s Law and Calorimetry', E'
## Bond Energies

**Bond energy (bond dissociation energy):** The energy required to break one mole of a covalent bond in the gaseous state, producing atoms.

**Breaking bonds:** ENDOTHERMIC (energy absorbed)
**Forming bonds:** EXOTHERMIC (energy released)

**Overall ΔH from bond energies:**
ΔH = Energy to break bonds (reactants) - Energy released forming bonds (products)
ΔH = Sum of bond energies broken - Sum of bond energies formed
(Positive = endothermic; Negative = exothermic)

### Common Bond Energies (kJ/mol)

| Bond | Energy (kJ/mol) | Bond | Energy (kJ/mol) |
|------|----------------|------|----------------|
| H-H | 436 | C-H | 413 |
| O=O | 498 | C-C | 347 |
| N≡N | 945 | C=C | 612 |
| H-O | 463 | C≡C | 838 |
| H-Cl | 432 | C-O | 358 |
| Cl-Cl | 242 | C=O | 743 |
| H-Br | 366 | N-H | 391 |
| Br-Br | 193 | O-H | 463 |
| H-F | 568 | F-F | 158 |

### Bond Energy Calculation Example

**Example:** CH4 + 2O2 → CO2 + 2H2O

Bonds broken in reactants:
CH4: 4 × C-H = 4 × 413 = 1652 kJ
2O2: 2 × O=O = 2 × 498 = 996 kJ
Total broken = 2648 kJ (endothermic input)

Bonds formed in products:
CO2: 2 × C=O = 2 × 743 = 1486 kJ
2H2O: 4 × O-H = 4 × 463 = 1852 kJ
Total formed = 3338 kJ (exothermic release)

ΔH = 2648 - 3338 = **-690 kJ/mol** (exothermic — combustion releases energy)
Note: This gives an approximate value; actual ΔHc(CH4) = -890 kJ/mol (uses average bond energies, not exact bond energies in actual molecules)

---

## Hess''s Law

**Hess''s Law:** The total enthalpy change for a reaction is INDEPENDENT of the pathway taken, as long as the initial and final states are the same.

Consequence: ΔH for a reaction can be calculated from other known ΔH values.

### Using Hess''s Law (Cycles)

**Method 1: Algebraic manipulation**
Add/subtract known equations to derive the target equation. Adjust ΔH correspondingly.

**Example:**
Find ΔH for: C(s) + 2H2(g) → CH4(g)

Given:
(1) C(s) + O2(g) → CO2(g)         ΔH1 = -393 kJ/mol
(2) H2(g) + ½O2(g) → H2O(l)      ΔH2 = -286 kJ/mol
(3) CH4(g) + 2O2(g) → CO2(g) + 2H2O(l)  ΔH3 = -890 kJ/mol

Target: C + 2H2 → CH4
= Equation (1) + 2 × Equation (2) - Equation (3)

ΔH = ΔH1 + 2×ΔH2 - ΔH3
ΔH = (-393) + 2(-286) - (-890)
ΔH = -393 - 572 + 890
ΔH = **-75 kJ/mol**

**Method 2: Hess''s cycle (Born-Haber cycle format)**

Draw a cycle: Target reaction at top; alternative route at bottom through common intermediates.
ΔH(direct) = ΔH(route 1) = ΔH(route 2) via other steps.

---

## Calorimetry — Measuring Enthalpy Changes

**Calorimetry** is the experimental measurement of heat changes in reactions.

### Simple Calorimetry (Solution)

**Apparatus:** Polystyrene cup (insulated), thermometer, measured volumes of solution.

**Formula:**
q = m × c × ΔT

Where:
- q = heat change (J)
- m = mass of solution (grams) — often approximated as mass of water
- c = specific heat capacity of water = 4.18 J/(g·°C)
- ΔT = change in temperature (°C) = T_final - T_initial

**Then:** ΔH (per mole) = -q / n (negative sign: exothermic releases heat to solution)

### Combustion Calorimetry

**Apparatus:** Spirit lamp, draught shield, copper calorimeter, thermometer.

**Procedure:**
1. Weigh spirit lamp before and after burning (mass of fuel burned = Δm_fuel)
2. Measure water volume in calorimeter; record temperature before and after
3. Calculate q = m_water × 4.18 × ΔT
4. Calculate n(fuel burned) = Δm_fuel / M(fuel)
5. ΔHc = -q / n (per mole of fuel)

---

### Calorimetry Worked Example

**Q:** When 50 cm³ of 1.0 mol/dm³ HCl is mixed with 50 cm³ of 1.0 mol/dm³ NaOH, temperature rises from 21.5°C to 27.9°C. Calculate ΔHneutralization.

**Solution:**
Total volume = 100 cm³; assume density = 1 g/cm³ → mass = 100 g
ΔT = 27.9 - 21.5 = 6.4°C

q = m × c × ΔT = 100 × 4.18 × 6.4 = 2675 J = 2.675 kJ

n(H2O formed) = n(HCl) = 1.0 × 50/1000 = 0.05 mol

ΔH (per mole) = -q/n = -2.675 / 0.05 = **-53.5 kJ/mol**

(Negative because exothermic; actual ΔHneut = -57.1 kJ/mol — close to theoretical)

Sources of error: heat loss to surroundings, density assumption, heat capacity of cup assumed negligible.
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Energetics', E'
## Worked Examples — Energetics

### Example 1: Identifying Reaction Type
**Q:** Identify each as exothermic or endothermic:
(a) Burning magnesium in air
(b) Dissolving ammonium nitrate in water
(c) Neutralization of HCl with NaOH
(d) Decomposition of CaCO3 by heating

**Answers:**
(a) **Exothermic** — bright white flame and light emitted (energy released)
(b) **Endothermic** — temperature drops (energy absorbed from surroundings)
(c) **Exothermic** — temperature rises (energy released — ΔH = -57 kJ/mol)
(d) **Endothermic** — must be heated continuously (energy absorbed to decompose CaCO3)

---

### Example 2: Bond Energy Calculation
**Q:** Calculate ΔH for: H2 + Cl2 → 2HCl
Bond energies: H-H = 436, Cl-Cl = 242, H-Cl = 432 kJ/mol

**Solution:**
Bonds BROKEN: 1 × H-H + 1 × Cl-Cl = 436 + 242 = 678 kJ
Bonds FORMED: 2 × H-Cl = 2 × 432 = 864 kJ

ΔH = bonds broken - bonds formed = 678 - 864 = **-186 kJ/mol** (exothermic)

---

### Example 3: Hess''s Law
**Q:** Calculate ΔHf for CO2 given:
(1) C(s) + O2(g) → CO2(g)   ΔH = -393 kJ/mol

This is directly the formation equation, so ΔHf(CO2) = **-393 kJ/mol**

More complex example:
**Q:** Find ΔH for: 2C(s) + 3H2(g) → C2H6(g)

Given:
(1) C2H6(g) + 7/2 O2(g) → 2CO2(g) + 3H2O(l)   ΔH = -1560 kJ/mol
(2) C(s) + O2(g) → CO2(g)                         ΔH = -393 kJ/mol
(3) H2(g) + ½O2(g) → H2O(l)                       ΔH = -286 kJ/mol

Target: 2C + 3H2 → C2H6

Rearrange: 2×(2) + 3×(3) - (1)
ΔH = 2(-393) + 3(-286) - (-1560)
= -786 - 858 + 1560
= **-84 kJ/mol**

---

### Example 4: Calorimetry — Combustion
**Q:** A spirit lamp burns 1.20 g of ethanol (M = 46 g/mol). 200 g of water is heated from 22.0°C to 44.5°C. Calculate ΔHc of ethanol.

**Solution:**
q = m × c × ΔT = 200 × 4.18 × (44.5 - 22.0) = 200 × 4.18 × 22.5 = 18,810 J = 18.81 kJ

n(ethanol) = 1.20/46 = 0.02609 mol

ΔHc = -q/n = -18.81/0.02609 = **-720.9 kJ/mol ≈ -721 kJ/mol**

(Literature value: -1368 kJ/mol — difference due to significant heat loss in simple apparatus)

---

### Example 5: Comparing ΔH from Energy Diagrams
**Q:** An energy profile shows: Reactant energy = 200 kJ; Product energy = 120 kJ; Activation energy peak = 280 kJ.
(a) Calculate ΔH.
(b) Is the reaction exothermic or endothermic?
(c) What is the activation energy (Ea)?
(d) If a catalyst is used, how does this change the diagram?

**Answers:**
(a) ΔH = Products - Reactants = 120 - 200 = **-80 kJ/mol**

(b) ΔH is negative → **exothermic** (products have less energy)

(c) Ea = peak - reactants = 280 - 200 = **80 kJ/mol**

(d) With catalyst: the activation energy is lowered (peak is lower). The starting and finishing energies are the SAME (ΔH unchanged). New Ea would be less than 80 kJ/mol.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Energetics', E'
## WASSCE Practice Questions — Energetics

### Multiple Choice

**Q1.** Which reaction is endothermic?
A) Combustion of methane  B) Neutralization of NaOH with HCl
C) Thermal decomposition of CaCO3  D) Dissolving NaOH in water
**Answer: C** — Thermal decomposition requires continuous heating (absorbs energy).

**Q2.** In an exothermic reaction, ΔH is:
A) Positive  B) Negative  C) Zero  D) Depends on temperature
**Answer: B**

**Q3.** Using bond energies (N-H = 391, N≡N = 945, H-H = 436), calculate ΔH for: N2 + 3H2 → 2NH3
A) -66 kJ/mol  B) -88 kJ/mol  C) -92 kJ/mol  D) -100 kJ/mol
**Answer: C** (approximately)
Broken: 945 + 3(436) = 945 + 1308 = 2253 kJ
Formed: 6 × N-H = 6 × 391 = 2346 kJ
ΔH = 2253 - 2346 = -93 kJ/mol ≈ -92 kJ/mol

**Q4.** Hess''s law states that the enthalpy change depends on:
A) The rate of reaction  B) The pathway taken
C) Only the initial and final states  D) The temperature and pressure used
**Answer: C**

---

### Structured Questions

**Q5.** 40.0 cm³ of 0.500 mol/dm³ H2SO4 was added to 40.0 cm³ of 1.00 mol/dm³ NaOH in a calorimeter. Temperature rose from 19.5°C to 25.0°C.
(a) Which is the limiting reagent? Explain. [2]
(b) Calculate the heat change q. [Assume: density = 1 g/cm³, c = 4.18 J/g/°C] [2]
(c) Calculate moles of H2O formed. [1]
(d) Calculate ΔH per mole of H2O formed. [2]

**Answers:**
(a) H2SO4 + 2NaOH → Na2SO4 + 2H2O
n(H2SO4) = 0.500 × 40/1000 = 0.020 mol → would need 0.040 mol NaOH
n(NaOH) = 1.00 × 40/1000 = 0.040 mol → exactly the right amount
Both are exactly in ratio → neither is in excess. However, if we call it:
n(H2O) = 2 × n(H2SO4) = 0.040 mol (since H2SO4 provides 2 H+)

(b) Mass = 80 g; ΔT = 25.0 - 19.5 = 5.5°C
q = 80 × 4.18 × 5.5 = **1839.2 J ≈ 1839 J = 1.84 kJ**

(c) n(H2O) = 0.040 mol

(d) ΔH = -q/n = -1.84/0.040 = **-46 kJ/mol**
(Negative because heat released to solution — exothermic)
(Literature value for neutralization ≈ -57 kJ/mol; difference due to heat losses)

---

**Q6.** (a) Define Hess''s law. [1]
(b) Calculate the standard enthalpy of formation of propane (C3H8) using:
ΔHc(C) = -393 kJ/mol; ΔHc(H2) = -286 kJ/mol; ΔHc(C3H8) = -2220 kJ/mol [4]

**Answer:**
(a) Hess''s Law states that the total enthalpy change for a reaction is independent of the route (pathway) taken, depending only on the initial and final states.

(b) Target: 3C(s) + 4H2(g) → C3H8(g)
Using: 3×(C → CO2) + 4×(H2 → H2O) - (C3H8 → 3CO2 + 4H2O)
ΔHf = 3(-393) + 4(-286) - (-2220)
= -1179 - 1144 + 2220
= **-103 kJ/mol**
', 'practice', 5);


  -- ============================================================
  -- TOPIC 13: NITROGEN AND ITS COMPOUNDS
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Nitrogen and Its Compounds' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Nitrogen: Properties, Cycle and Industrial Processes', E'
## Nitrogen (N2) — Properties and Occurrence

**Nitrogen** makes up about **78% of the atmosphere** (by volume). It is a colorless, odorless, tasteless diatomic gas (N2) with a very strong triple bond (N≡N, bond energy = 945 kJ/mol).

**Physical properties:**
- Colorless, odorless, tasteless gas
- Slightly less dense than air
- Boiling point: -196°C (liquid nitrogen used for cryogenic preservation)
- Very unreactive at room temperature (due to strong N≡N triple bond)

**Chemical properties:**
- Reacts with oxygen at very high temperatures (lightning, car engines):
  N2 + O2 → 2NO   (endothermic; high temperature reaction)
- Reacts with hydrogen under industrial conditions (Haber process)
- Burns in F2 (fluorine) — very reactive fluorine breaks the triple bond
- Reacts with some metals on heating: 6Li + N2 → 2Li3N (lithium nitride)

---

## The Nitrogen Cycle

The nitrogen cycle describes how nitrogen moves through the atmosphere, soil, plants, animals, and back.

**Key processes:**

1. **Nitrogen fixation:** Converting atmospheric N2 into usable compounds (NH3, NO3-)
   - **Industrial fixation:** Haber process (N2 + 3H2 → 2NH3)
   - **Biological fixation:** Nitrogen-fixing bacteria in root nodules of legumes (beans, peas, groundnuts) — contain nitrogenase enzyme; also Azotobacter in soil
   - **Lightning fixation:** N2 + O2 → 2NO → 2NO2 → HNO3 (dissolved in rain as dilute acid)

2. **Nitrification:** Soil bacteria (Nitrosomonas, Nitrobacter) convert NH3 → NO2- → NO3-
   (Nitrosomonas: 2NH3 + 3O2 → 2NO2- + 2H+ + 2H2O)
   (Nitrobacter: 2NO2- + O2 → 2NO3-)

3. **Assimilation:** Plants absorb NO3- from soil through roots; convert to amino acids/proteins

4. **Consumption:** Animals eat plants → nitrogen incorporated into animal proteins

5. **Decomposition (Ammonification):** Decomposer bacteria and fungi break down dead organic matter → NH3 released back to soil

6. **Denitrification:** Denitrifying bacteria (Pseudomonas) convert NO3- back to N2 in anaerobic conditions → N2 released back to atmosphere

---

## The Haber Process — Industrial Nitrogen Fixation

**Reaction:** N2(g) + 3H2(g) ⇌ 2NH3(g)   ΔH = -92 kJ/mol (exothermic)

**Raw materials:**
- N2: From fractional distillation of liquid air
- H2: From steam reforming of methane:
  CH4 + H2O → CO + 3H2  (then CO + H2O → CO2 + H2 — water gas shift)

**Optimum industrial conditions:**

| Condition | Value | Reason |
|-----------|-------|--------|
| Temperature | 450°C | Compromise: higher T → faster rate (kinetics) but lower yield (thermodynamics); 450°C gives ~15% yield |
| Pressure | 200 atm | Higher P → more NH3 (fewer gas moles on right); 200 atm is economic/safe compromise |
| Catalyst | Iron (Fe) with K2O/Al2O3 promoters | Lowers activation energy; increases rate; Al2O3 as structural promoter; K2O as electronic promoter |
| Recycling | Unreacted N2 and H2 recycled | Improves overall yield; economically efficient |

**Why low yield?**
The reaction is exothermic → higher temperature decreases yield (Le Chatelier). Only ~15% at 450°C/200 atm, but continuous removal of NH3 + recycling makes it economically viable.

**Products and uses of ammonia:**

| Use | Reaction/Process |
|-----|----------------|
| Fertilizers | Converted to ammonium salts: (NH4)2SO4, NH4NO3, CO(NH2)2 |
| Nitric acid | Via Ostwald process |
| Explosives | TNT, ammonium nitrate (ANFO) |
| Polymers | Nylon (hexamethylenediamine from HNO3 route) |
| Cleaning products | NH3 dissolved in water → household cleaner |
| Refrigerant | NH3 is excellent refrigerant (high latent heat of vaporization) |

---

## Ammonia (NH3) — Properties and Reactions

**Physical properties:**
- Colorless gas with characteristic pungent smell
- Lighter than air (Mr = 17; less than 29 for air)
- Very soluble in water (forms alkaline solution)
- Boiling point: -33°C (liquid at pressure)

**NH3 in water:**
NH3(g) + H2O(l) ⇌ NH4+(aq) + OH-(aq)   (weak base)
NH3(aq) is ammonium hydroxide solution

**Test for ammonia:**
- Pungent smell
- Turns moist red litmus paper BLUE
- Produces white fumes with HCl (solid NH4Cl): NH3 + HCl → NH4Cl

**Reactions of ammonia:**

1. **With acids → ammonium salts:**
   NH3 + HCl → NH4Cl (ammonium chloride)
   NH3 + HNO3 → NH4NO3 (ammonium nitrate)
   2NH3 + H2SO4 → (NH4)2SO4 (ammonium sulfate)

2. **Oxidation (Ostwald process — for HNO3 production):**
   4NH3 + 5O2 → 4NO + 6H2O   [Pt-Rh catalyst, 850-900°C]
   2NO + O2 → 2NO2
   3NO2 + H2O → 2HNO3 + NO

3. **Combustion:**
   4NH3 + 3O2 → 2N2 + 6H2O   (burns with greenish flame)

4. **Reaction with metal ion solutions → precipitates hydroxides:**
   Cu2+(aq) + 2OH-(aq) → Cu(OH)2(s) (blue ppt) [from NH3 acting as base]
   With excess NH3: Cu(OH)2 + 4NH3 → [Cu(NH3)4]2+ + 2OH- (deep blue complex)
   — Used as test for Cu2+!
', 'overview', 1),

  (v_topic_id, 'Nitric Acid, Fertilizers and Environmental Impact', E'
## Nitric Acid (HNO3) — Production and Properties

### Ostwald Process (Industrial Production of HNO3)

**Step 1:** Catalytic oxidation of ammonia
4NH3(g) + 5O2(g) → 4NO(g) + 6H2O(g)
[Platinum-rhodium gauze catalyst, 850-900°C, 1-10 atm]

**Step 2:** Oxidation of NO to NO2
2NO(g) + O2(g) → 2NO2(g)   [cooled; spontaneous]

**Step 3:** Absorption of NO2 in water
3NO2(g) + H2O(l) → 2HNO3(aq) + NO(g)
NO recycled back to step 2

**Overall:** NH3 → NO → NO2 → HNO3

**Properties of nitric acid:**
- Strong acid (fully ionizes): HNO3 → H+ + NO3-
- Oxidizing acid (especially concentrated)
- Reacts with most metals (including Cu, Ag — unlike dilute H2SO4/HCl)
- Dilute: Cu + 8HNO3(dilute) → 3Cu(NO3)2 + 4H2O + 2NO↑ (colorless gas, turns brown in air → NO2)
- Concentrated: Cu + 4HNO3(conc) → Cu(NO3)2 + 2H2O + 2NO2↑ (brown gas)

---

## Nitrogen Compounds as Fertilizers

**Why fertilizers are needed:** Crops remove nitrogen from soil during growth. Without replacement, soil becomes depleted → poor yields.

**Natural fertilizers:**
- Animal manure, compost, crop rotation (legumes fix N2)
- Slow-release; improves soil structure
- Environmental advantage: less leaching

**Artificial/chemical fertilizers:**

| Fertilizer | Formula | N content | Notes |
|-----------|---------|---------|-------|
| Ammonium sulfate | (NH4)2SO4 | 21% | Acidifies soil |
| Ammonium nitrate | NH4NO3 | 35% | Highest N content; risk of explosion |
| Urea | CO(NH2)2 | 46% | Highest % N; organic-like; made from NH3 + CO2 |
| Ammonium phosphate | (NH4)3PO4 | 17% N + P | NPK type; provides N and P |
| Calcium ammonium nitrate | Ca(NO3)2·NH4NO3 | 27% | Neutralizes soil acidity |

**NPK fertilizers:** Contain Nitrogen (N), Phosphorus (P), and Potassium (K) in various ratios. Used to provide all three major nutrients.

---

## Environmental Issues with Fertilizers

### Eutrophication

**Eutrophication** is the excessive enrichment of water bodies (rivers, lakes) with nutrients (mainly nitrogen as NO3- and phosphorus as PO43-) from fertilizer runoff.

**Chain of events:**
1. Heavy rain washes NO3- and PO43- from farmland into rivers/lakes (leaching/runoff)
2. Algae and aquatic plants grow rapidly → **algal bloom** (covers surface, blocks sunlight)
3. Plants below surface die (no sunlight for photosynthesis)
4. Decomposing bacteria break down dead plants → multiply rapidly; use up dissolved O2
5. **Dissolved oxygen depleted** → fish, insects, other aquatic animals die
6. Anaerobic bacteria take over → produce foul-smelling gases (H2S, CH4) → "dead zone"

**Effects:**
- Loss of biodiversity (fish die; food chain disrupted)
- Drinking water contamination (algal toxins, nitrates)
- Tourism and fishing industries damaged
- Aesthetic problems (green/blue algal bloom, smell)

**Prevention:**
- Buffer zones: leave strips of unplanted land near water bodies
- Precision farming: apply fertilizers only when/where needed
- Slow-release fertilizers: reduce sudden runoff
- Nitrogen management: avoid over-application; test soil before adding
- Constructed wetlands: filter runoff before it reaches water bodies

---

## Nitrogen Oxides and Acid Rain

**Nitric oxide (NO):**
- Formed in car engines: N2 + O2 → 2NO (high temp combustion)
- Colorless gas; rapidly oxidized in air to NO2

**Nitrogen dioxide (NO2):**
- Brown/orange gas; very irritating to lungs; component of photochemical smog
- Dissolves in rain: 3NO2 + H2O → 2HNO3 + NO → ACID RAIN

**Acid rain effects:**
- Acidification of lakes → fish and aquatic life die
- Leaches nutrients from soil → forest decline, tree death
- Corrodes limestone/marble buildings: CaCO3 + H2SO4 → CaSO4 + H2O + CO2
- Corrodes metal structures (bridges, statues)

**Solution:**
- Catalytic converters in cars: 2NO + 2CO → N2 + 2CO2 (Pt/Rh catalyst)
- Scrubbers in power stations: remove SOx and NOx
- Reducing combustion temperature; exhaust gas recirculation (EGR)
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Nitrogen', E'
## Worked Examples — Nitrogen Chemistry

### Example 1: Haber Process Conditions
**Q:** The Haber process runs at 450°C and 200 atm with an iron catalyst.
(a) Explain why a temperature lower than 450°C is not used.
(b) Explain the effect of increasing pressure.
(c) What is the role of the catalyst?

**Answers:**
(a) The forward reaction (N2 + 3H2 → 2NH3) is exothermic. At lower temperatures, the equilibrium position shifts to the right (more NH3 formed), which would give better yield. However, the reaction rate becomes very low — reaction proceeds too slowly to be economically viable. A compromise temperature of 450°C gives acceptable rate AND reasonable yield.

(b) The reaction: N2 + 3H2 → 2NH3 has 4 moles of gas on the left and 2 on the right. Increasing pressure shifts equilibrium to the side with fewer gas moles (right → more NH3). 200 atm gives significantly higher yield than atmospheric pressure. Higher pressures (e.g., 400 atm) would give even more yield, but require much more expensive and dangerous equipment — 200 atm is the economic compromise.

(c) The iron catalyst provides an alternative reaction pathway with lower activation energy. More molecules have sufficient energy to react → rate increases significantly. Crucially, the catalyst does NOT change the equilibrium position or the enthalpy change (ΔH). It only helps the system reach equilibrium faster.

---

### Example 2: Ostwald Process
**Q:** Nitric acid is manufactured by the Ostwald process from ammonia. Write balanced equations for the three stages.

**Solution:**
**Stage 1 (oxidation of NH3):**
4NH3(g) + 5O2(g) → 4NO(g) + 6H2O(g)   [Pt-Rh catalyst, 850°C]

**Stage 2 (oxidation of NO):**
2NO(g) + O2(g) → 2NO2(g)   [cooling; spontaneous]

**Stage 3 (absorption in water):**
3NO2(g) + H2O(l) → 2HNO3(aq) + NO(g)
[NO recycled back to Stage 2]

---

### Example 3: Eutrophication
**Q:** Explain how the use of nitrogen fertilizers can lead to eutrophication.

**Answer:**
When excessive nitrogen fertilizers (ammonium salts, nitrates) are applied to farmland, heavy rainfall can wash dissolved nitrates (NO3-) and phosphates into nearby rivers, streams, and lakes. This process is called **leaching** or **runoff**.

The high nutrient levels cause rapid growth of algae and aquatic plants (**algal bloom**). The algae cover the water surface, blocking sunlight from reaching plants below — these underwater plants die.

Bacteria decompose the dead organic matter and multiply rapidly, consuming large amounts of dissolved oxygen in the water. Fish, insects, and other oxygen-dependent organisms suffocate and die.

The lake or river essentially becomes a "dead zone" — lacking biodiversity. This is eutrophication.

---

### Example 4: Tests for NH3 and Ammonium Salts
**Q:** Describe how to test for the presence of ammonium ions (NH4+) in a solution.

**Procedure:**
1. Add excess dilute NaOH solution to the test solution
2. Heat gently
3. Hold moist red litmus paper over the mouth of the test tube

**Positive result:** Moist red litmus turns BLUE

**Why:** NaOH reacts with NH4+:
NH4+(aq) + OH-(aq) → NH3(g) + H2O(l)

Ammonia gas (pungent smell) is released. NH3 is alkaline → turns moist red litmus blue.

Additional test: The gas produces white fumes when HCl is held near it (NH3 + HCl → NH4Cl — white smoke).
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Nitrogen', E'
## WASSCE Practice Questions — Nitrogen

### Multiple Choice

**Q1.** The percentage of nitrogen in the atmosphere by volume is approximately:
A) 21%  B) 56%  C) 78%  D) 93%
**Answer: C**

**Q2.** In the Haber process, the catalyst used is:
A) Vanadium(V) oxide  B) Platinum  C) Iron  D) Nickel
**Answer: C**

**Q3.** Which nitrogen compound has the highest percentage of nitrogen?
A) (NH4)2SO4 (21%)  B) NH4NO3 (35%)  C) Urea CO(NH2)2 (46%)  D) Ca(NO3)2 (17%)
**Answer: C**

**Q4.** Eutrophication is caused by:
A) Excess pesticide in water  B) Excess nutrients (nitrates/phosphates) in water
C) Industrial heavy metals in water  D) Acid rain
**Answer: B**

---

### Structured Questions

**Q5.** (a) State TWO conditions required for the Haber process. [2]
(b) Explain why a compromise temperature (450°C) is used. [3]
(c) Name THREE uses of ammonia. [3]

**Answers:**
(a) Iron catalyst (with promoters); high pressure (~200 atm); temperature ~450°C; recycling of unreacted gases [any two]

(b) The reaction N2 + 3H2 → 2NH3 is exothermic. At lower temperatures, the equilibrium lies more to the right (more NH3 formed — better thermodynamic yield). However, lower temperature means a slower reaction rate — too slow for economic production. Higher temperature gives faster rate but poor yield (equilibrium shifts left). 450°C is the COMPROMISE that gives acceptable rate AND acceptable yield.

(c) Three uses of ammonia:
1. Manufacturing nitrogen fertilizers (e.g., ammonium sulfate, ammonium nitrate)
2. Manufacturing nitric acid (via Ostwald process)
3. Manufacturing explosives (ammonium nitrate); or: refrigerant; cleaning products; making nylon

---

**Q6.** (a) Write equations for the THREE stages of the Ostwald process. [3]
(b) Nitric acid is made at a plant next to a Haber plant. Explain why. [1]
(c) Ammonium nitrate (NH4NO3) can be used as a fertilizer. Calculate the % by mass of N. [N=14, H=1, O=16] [2]

**Answers:**
(a) 4NH3 + 5O2 → 4NO + 6H2O
    2NO + O2 → 2NO2
    3NO2 + H2O → 2HNO3 + NO

(b) Ammonia is the raw material for nitric acid production. Having both plants on the same site reduces transportation costs and means ammonia can be piped directly from Haber plant to Ostwald plant.

(c) M(NH4NO3) = 14 + 4(1) + 14 + 3(16) = 14 + 4 + 14 + 48 = 80 g/mol
Two N atoms: mass of N = 2 × 14 = 28
% N = (28/80) × 100 = **35%**
', 'practice', 5);


  -- ============================================================
  -- TOPIC 14: SULPHUR AND ITS COMPOUNDS
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Sulphur and Its Compounds' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Sulphur: Properties, Allotropes and Compounds', E'
## Sulfur — Occurrence and Properties

**Sulfur (S)** is a non-metallic element found in Group VI of the periodic table.

**Occurrence:**
- In free (elemental) form: near volcanoes, underground deposits (extracted by Frasch process)
- As metal sulfides: FeS2 (iron pyrite — "fool''s gold"), ZnS (sphalerite), PbS (galena), Cu2S
- As metal sulfates: CaSO4·2H2O (gypsum), BaSO4 (barite)
- In crude oil and natural gas (as H2S impurities — must be removed)
- In proteins (amino acids like cysteine, methionine contain S)

**Physical properties (rhombic sulfur):**
- Bright yellow solid
- Brittle crystalline solid
- Poor conductor of electricity (non-metal)
- Insoluble in water; soluble in CS2 (carbon disulfide)
- Melting point: 119°C; Boiling point: 445°C

---

## Allotropes of Sulfur

| Allotrope | Structure | Color | Stability |
|-----------|---------|-------|---------|
| Rhombic (orthorhombic) | S8 rings, octahedral crystals | Bright yellow | Stable below 96°C |
| Monoclinic | S8 rings, needle-like crystals | Pale yellow | 96°C to 119°C |
| Amorphous (plastic/rubbery) | Long Sn chains | Amber/reddish-brown | Unstable; reverts to rhombic |

**Transition temperature (rhombic ↔ monoclinic): 96°C**

**Preparing allotropes:**
- Rhombic: Dissolve sulfur in CS2 (or xylene), allow to evaporate slowly at room temp
- Monoclinic: Melt sulfur, pour into ice-cold mold, allow to solidify above 96°C
- Plastic: Pour molten sulfur into cold water; rubbery solid formed; reverts slowly to rhombic

---

## Chemical Reactions of Sulfur

1. **Burning in O2 (combustion):**
   S + O2 → SO2   (sulfur dioxide — pungent, toxic gas)

2. **Reaction with metals:**
   Fe + S → FeS   (iron(II) sulfide — black solid, on heating)
   Cu + S → Cu2S (copper(I) sulfide)
   Zn + S → ZnS  (zinc sulfide)

3. **Reaction with H2 (reverse of thermal decomposition of H2S):**
   H2 + S ⇌ H2S  (hydrogen sulfide — at high temperature)

4. **Reaction with Na2SO3 (concentrated H2SO4 treatment):**
   Na2SO3 + H2SO4 → Na2SO4 + H2O + SO2↑

---

## Hydrogen Sulfide (H2S)

**Preparation (in lab):** React metal sulfide with dilute acid:
FeS + H2SO4 → FeSO4 + H2S↑
FeS + 2HCl → FeCl2 + H2S↑

**Properties:**
- Colorless gas with characteristic **rotten egg** smell
- Toxic (even low concentrations dangerous; paralyzes sense of smell at high concentrations!)
- Slightly soluble in water (forms weak diprotic acid: H2S ⇌ H+ + HS-)
- Reducing agent (S is in -2 oxidation state, can be oxidized)
- Burns: 2H2S + 3O2 → 2SO2 + 2H2O (complete); 2H2S + O2 → 2S + 2H2O (limited O2)

**Test for H2S:**
- Pungent rotten egg smell
- Turns lead(II) acetate paper BLACK (PbS forms): H2S + Pb(CH3COO)2 → PbS(s)↓ + 2CH3COOH

---

## Sulfur Dioxide (SO2)

**Preparation (in lab):**
- Burn sulfur: S + O2 → SO2
- React copper with hot concentrated H2SO4: Cu + 2H2SO4(conc) → CuSO4 + 2H2O + SO2↑
- React Na2SO3 with dilute acid: Na2SO3 + H2SO4 → Na2SO4 + H2O + SO2↑

**Properties:**
- Colorless gas with sharp, choking smell
- Toxic (causes respiratory problems)
- Denser than air
- Acidic oxide: SO2 + H2O → H2SO3 (sulfurous acid)
- Reducing agent: Reduces KMnO4 (purple → colorless); K2Cr2O7 (orange → green)
- Bleaching agent (removes color from flowers — reversible)

**Reactions of SO2:**
1. With water: SO2 + H2O → H2SO3 (sulfurous acid — weak acid)
2. With NaOH: SO2 + 2NaOH → Na2SO3 + H2O (sodium sulfite)
3. Oxidation: 2SO2 + O2 ⇌ 2SO3 (Contact process, with V2O5 catalyst)
4. With KMnO4 (acidic): decolorizes (SO2 oxidized from +4 to +6; Mn7+ reduced to Mn2+)

**Test for SO2:**
- Acidified K2Cr2O7 (orange → green) or KMnO4 (purple → colorless)
- Litmus paper turns red (acidic gas)
', 'overview', 1),

  (v_topic_id, 'Sulfuric Acid and the Contact Process', E'
## Sulfuric Acid (H2SO4) — The Most Important Industrial Chemical

### Contact Process — Industrial Manufacture of H2SO4

**Stage 1: Production of SO2**
Method A: Burn sulfur: S + O2 → SO2
Method B: Roast metal sulfide ores: 4FeS2 + 11O2 → 2Fe2O3 + 8SO2

**Stage 2: Oxidation of SO2 to SO3 (rate-determining step)**
2SO2(g) + O2(g) ⇌ 2SO3(g)   ΔH = -196 kJ/mol (exothermic)

Conditions:
- Temperature: 450-500°C (compromise: lower T → better yield but too slow; higher T → faster but less yield)
- Pressure: 1-2 atm (nearly atmospheric; yield already ~98% — no need for high pressure)
- Catalyst: Vanadium(V) oxide (V2O5) — lowers activation energy; increases rate

**Stage 3: Absorption of SO3 in concentrated H2SO4 (NOT in water!)**
SO3 + H2SO4 → H2S2O7 (oleum/fuming sulfuric acid)
Then: H2S2O7 + H2O → 2H2SO4

**Why not absorb SO3 directly in water?**
SO3 + H2O → H2SO4 but this reaction is violent and produces a mist of fine H2SO4 droplets (acid fog) that is difficult to handle and causes pollution. Absorbing in H2SO4 is controlled.

**Overall:** SO3 + H2O → H2SO4

---

### Properties of Concentrated Sulfuric Acid

**Physical:**
- Dense, viscous, oily liquid (density = 1.84 g/cm³ — about double density of water)
- High boiling point (337°C)
- Very exothermic when diluted with water (ALWAYS add acid to water — NEVER water to acid)

**Chemical properties of concentrated H2SO4:**

1. **Dehydrating agent:** Removes water from compounds (or elements of water from organic molecules)
   - Hydrated copper sulfate + conc. H2SO4: CuSO4·5H2O → CuSO4 (blue→white)
   - Sugar + conc. H2SO4: C12H22O11 → 12C + 11H2O (black carbon "snake" formed)
   - Ethanol + conc. H2SO4 → ethene (dehydration): C2H5OH → C2H4 + H2O (at 170°C)

2. **Oxidizing agent (when hot and concentrated):**
   - Reacts with COPPER (does not react with dilute H2SO4):
     Cu + 2H2SO4(hot conc.) → CuSO4 + 2H2O + SO2↑
   - Reacts with carbon:
     C + 2H2SO4(hot conc.) → CO2 + 2SO2 + 2H2O
   - Reacts with sulfur:
     S + 2H2SO4(hot conc.) → 3SO2 + 2H2O

3. **Dilute H2SO4 — typical acid reactions:**
   - Mg + H2SO4(dilute) → MgSO4 + H2
   - CuO + H2SO4 → CuSO4 + H2O
   - Na2CO3 + H2SO4 → Na2SO4 + H2O + CO2
   - NaOH + H2SO4 → Na2SO4 + H2O (neutralization)

---

### Uses of Sulfuric Acid

| Use | Details |
|-----|---------|
| Fertilizer production | H2SO4 + NH3 → (NH4)2SO4 (ammonium sulfate); treatment of phosphate rock |
| Lead-acid batteries | Battery electrolyte (dilute H2SO4 ~30%) |
| Making other chemicals | HCl, HNO3, detergents |
| Paint/pigments | TiO2 (titanium dioxide — white paint) via sulfate process |
| Drug production | Various pharmaceutical processes |
| Iron/steel pickling | Remove rust/scale before galvanizing: Fe2O3 + H2SO4 → FeSO4 + H2O |
| Petrol refining | Alkylation process; removing impurities |

**Sulfuric acid is called the "king of chemicals"** — used as a measure of a country''s industrial development.

---

## Acid Rain — Sulfur Compounds and Atmospheric Chemistry

**Sources of SO2 in atmosphere:**
- Burning fossil fuels (coal and oil contain S): S + O2 → SO2
- Smelting metal sulfide ores: 4FeS2 + 11O2 → 2Fe2O3 + 8SO2
- Volcanic eruptions

**Formation of acid rain:**
- SO2 + H2O → H2SO3 (sulfurous acid) [in clouds/rain]
- 2SO2 + O2 → 2SO3 (oxidation in atmosphere, catalyzed by particles)
- SO3 + H2O → H2SO4 (sulfuric acid — strong acid in rain)
- NOx from cars: NO2 + H2O → HNO3 (nitric acid)

Normal rain pH ≈ 5.6 (CO2 dissolves: CO2 + H2O → H2CO3)
Acid rain pH < 5.6 (often as low as 4 or even lower)

**Effects of acid rain:**
- Acidification of lakes: fish die when pH < 5
- Forest damage: leaching of nutrients (Ca2+, Mg2+) from soil; toxic Al3+ mobilized
- Building/statue damage: CaCO3 + H2SO4 → CaSO4 + H2O + CO2 (limestone, marble dissolve)
- Bridge/metal corrosion: acids react with metals
- Human health: respiratory problems (SO2 is toxic)

**Control measures:**
- Flue gas desulfurization (scrubbers): CaCO3 + SO2 → CaSO4 + CO2 (or Ca(OH)2 + SO2 → CaSO3)
- Switching to natural gas or renewables (less sulfur)
- Catalytic converters in cars (reduce NOx)
- Removing S from fuels before burning (hydrodesulfurization)
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Sulphur Chemistry', E'
## Worked Examples — Sulfur

### Example 1: Contact Process — Applying Le Chatelier
**Q:** The key equilibrium in the Contact process is:
2SO2(g) + O2(g) ⇌ 2SO3(g)   ΔH = -196 kJ/mol

(a) Explain the choice of 450°C.
(b) Why is pressure kept relatively low (1-2 atm)?
(c) What is the role of V2O5?

**Answers:**
(a) The reaction is exothermic → lower temperature favors more SO3 (equilibrium shifts right by Le Chatelier). However, rate is too slow at very low temperatures. 450°C is the compromise giving ~98% conversion of SO2 to SO3 with acceptable rate.

(b) Left side: 3 moles of gas; Right side: 2 moles. Higher pressure should shift right → more SO3. However, at 450°C the yield is already very high (~98%). The extra cost of high-pressure equipment is not economically justified for marginal improvement. 1-2 atm is sufficient.

(c) V2O5 is the catalyst — it lowers the activation energy, allowing the reaction to reach equilibrium faster at 450°C. V2O5 can cycle between V5+ (oxidized form) and V4+ (reduced form):
V2O5 oxidizes SO2: SO2 + V2O5 → SO3 + V2O4
V2O4 is re-oxidized by O2: V2O4 + ½O2 → V2O5
Net: SO2 + ½O2 → SO3 (catalyst regenerated)

---

### Example 2: Tests for Sulfur Compounds
**Q:** Describe chemical tests to distinguish between: (a) H2S and SO2; (b) SO42- and SO32-

**Answers:**

(a) **H2S vs SO2:**

Test 1 — Lead acetate paper:
- H2S turns lead acetate paper BLACK (PbS forms)
- SO2 does NOT turn lead acetate paper black

Test 2 — Acidified KMnO4:
- H2S decolorizes KMnO4 (reducing agent — S: -2 → 0 or +6)
- SO2 also decolorizes KMnO4 (reducing agent — S: +4 → +6)
BOTH decolorize! So Test 2 alone cannot distinguish. Use Test 1 + smell (H2S = rotten eggs; SO2 = sharp/burning sulfur smell).

(b) **SO42- vs SO32-:**

Test: Add dilute HCl then Ba2+ solution:
- SO42-: BaSO4 precipitate (white, insoluble in HCl or HNO3) — indicates sulfate
- SO32-: BaSO3 precipitate (white) BUT dissolves when HCl added — indicates sulfite

Better test:
1. Add dilute HCl: if SO32-, gives SO2 (pungent smell, turns acidified K2Cr2O7 green); SO42- gives no gas.
2. Then add Ba2+: if SO42-, white precipitate BaSO4 forms (insoluble); if SO32-, BaSO3 forms but dissolves in HCl.

---

### Example 3: Dehydration by Concentrated H2SO4
**Q:** What would be observed when concentrated H2SO4 is added to blue copper(II) sulfate crystals (CuSO4·5H2O)?

**Solution:**
Concentrated H2SO4 is a powerful dehydrating agent. It removes water from the crystal lattice:
CuSO4·5H2O → CuSO4 + 5H2O

**Observation:** The blue crystals turn WHITE (anhydrous CuSO4 is white). Heat may be produced (H2SO4 absorbs water exothermically).

**Reverse reaction:** Add water to white CuSO4 → turns blue again (test for water/moisture)

---

### Example 4: Acid Rain Damage Calculation
**Q:** A limestone statue loses 2.5 kg of CaCO3 per year due to acid rain. How much H2SO4 reacts per year? [Ca=40, C=12, O=16, H=1, S=32]

**Solution:**
Equation: CaCO3 + H2SO4 → CaSO4 + H2O + CO2

M(CaCO3) = 100 g/mol; M(H2SO4) = 98 g/mol
n(CaCO3) = 2500/100 = 25 mol
n(H2SO4) = 25 mol (1:1)
m(H2SO4) = 25 × 98 = **2450 g = 2.45 kg per year**
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Sulphur', E'
## WASSCE Practice Questions — Sulfur

### Multiple Choice

**Q1.** In the Contact process, the catalyst used is:
A) Iron  B) Platinum  C) Vanadium(V) oxide  D) Nickel
**Answer: C**

**Q2.** What happens when H2S is passed through acidified KMnO4 solution?
A) Purple solution stays purple  B) Purple → colorless (H2S reduces Mn7+)
C) Purple → green  D) Blue → colorless
**Answer: B**

**Q3.** Acid rain is primarily caused by:
A) CO2 and CO  B) SO2 and NOx  C) CFC and ozone  D) NH3 and CH4
**Answer: B**

**Q4.** Concentrated H2SO4 acts as a dehydrating agent because it:
A) Is a strong acid  B) Is a reducing agent  C) Strongly removes water from substances  D) Is a good oxidizing agent
**Answer: C**

---

### Structured Questions

**Q5.** (a) Write the three stages of the Contact process for making H2SO4. [3]
(b) Explain why SO3 is absorbed in concentrated H2SO4 rather than in water. [2]
(c) Give THREE uses of sulfuric acid. [3]

**Answers:**
(a)
Stage 1: S + O2 → SO2 (or 4FeS2 + 11O2 → 2Fe2O3 + 8SO2)
Stage 2: 2SO2(g) + O2(g) ⇌ 2SO3(g)  [V2O5, 450°C]
Stage 3: SO3 + H2SO4 → H2S2O7 (oleum); then H2S2O7 + H2O → 2H2SO4

(b) If SO3 is dissolved directly in water, the reaction is violent and produces a fine mist/fog of sulfuric acid droplets that are very difficult to contain. This acid mist would escape into the atmosphere, causing pollution and health hazards. Absorbing SO3 in concentrated H2SO4 (to form oleum) is controlled; water is then carefully added in dilute quantities. This is safer and more efficient.

(c) Three uses: (1) Manufacturing fertilizers (ammonium sulfate); (2) Lead-acid batteries (car batteries); (3) Producing other chemicals (HCl, HNO3, detergents); (4) Steel pickling (removing rust); (5) Petrol refining [any three]

---

**Q6.** (a) What is acid rain? How does it form from sulfur compounds? [3]
(b) Write the equation showing how acid rain dissolves limestone. [1]
(c) State TWO effects of acid rain on the environment. [2]
(d) Suggest ONE method of reducing SO2 emissions from power stations. [1]

**Answers:**
(a) Acid rain is precipitation (rain, snow, fog) with pH below 5.6. It forms when SO2 (from burning sulfur-containing fossil fuels) is released into the atmosphere. SO2 dissolves in water droplets to form sulfurous acid (SO2 + H2O → H2SO3) or is oxidized to SO3 and dissolves as sulfuric acid (SO3 + H2O → H2SO4). Both acids make rain more acidic than normal.

(b) CaCO3(s) + H2SO4(aq) → CaSO4(s) + H2O(l) + CO2(g)

(c) Two effects:
1. Acidification of lakes → fish die (pH < 5 toxic to most aquatic organisms)
2. Damage to forests — soil nutrients leached; toxic Al3+ released; tree growth stunted and death
3. Corrosion of limestone/marble buildings and monuments
4. Corrosion of metal structures (bridges, railway tracks) [any two]

(d) Flue gas desulfurization (scrubbing): Pass flue gases through limestone (CaCO3) slurry which absorbs SO2: CaCO3 + SO2 → CaSO3 + CO2. Or: Switch to low-sulfur fuels; use nuclear or renewable energy.
', 'practice', 5);


  -- ============================================================
  -- TOPIC 15: CARBON CHEMISTRY AND FUELS
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Carbon Chemistry and Fuels' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Carbon Compounds, Fossil Fuels and Crude Oil', E'
## Carbon — The Versatile Element

Carbon (C) is unique because it can:
- Form 4 covalent bonds (tetravalent)
- Bond to itself (catenation) → chains, rings, branches
- Form single, double, and triple bonds
- Combine with H, O, N, S, halogens → millions of compounds
- Exist as allotropes (diamond, graphite, fullerenes, graphene) — see Topic 2

---

## Fossil Fuels

**Fossil fuels** are formed from the decomposed remains of ancient plants and animals over millions of years under heat and pressure. They are **non-renewable** (take millions of years to form).

**The three main fossil fuels:**
1. **Coal** — mainly carbon; some H, S, N
2. **Crude oil (petroleum)** — complex mixture of hydrocarbons (mainly alkanes)
3. **Natural gas** — mainly methane (CH4); some ethane, propane

**Formation:**
- **Coal:** From ancient forests/plants compressed over ~300 million years
- **Crude oil and natural gas:** From marine organisms (plankton, algae) compressed under seabed sediments over millions of years

**West African context:**
- Nigeria: Major oil producer (Niger Delta — one of Africa''s largest reserves)
- Ghana: Jubilee Field (offshore crude oil, discovered 2007)
- Guinea, Liberia: Gas exploration
- Coal: Absent in most of West Africa; some in other African regions

---

## Crude Oil Composition

Crude oil is a complex mixture of hydrocarbons — mainly alkanes (CnH2n+2) with some cyclic hydrocarbons and aromatic compounds. Also contains small amounts of S, N, O compounds (impurities — must be removed).

---

## Fractional Distillation of Crude Oil

**Principle:** The oil refinery uses a tall fractionating column. Crude oil is heated at the bottom to ~350°C. Vapors rise; each fraction condenses at different heights (according to boiling point).

**The Fractions (from bottom to top of column — decreasing boiling point):**

| Fraction | Carbon # | Approx. Bp range (°C) | State | Uses |
|---------|---------|---------------------|-------|-----|
| Refinery gas | C1-C4 | Below 25 | Gas | LPG (cooking, heating), chemical feedstock |
| Naphtha | C5-C10 | 25-150 | Liquid | Chemical feedstock; petrol blend |
| Petrol (gasoline) | C5-C10 | 40-175 | Liquid | Car fuel; solvent |
| Kerosene (paraffin) | C11-C16 | 150-250 | Liquid | Aircraft fuel (Jet A-1); domestic heating |
| Diesel (gas oil) | C14-C20 | 220-350 | Liquid | Diesel engines (lorries, buses, trains) |
| Lubricating oil | C20-C30 | 300-450 | Viscous liquid | Engine oil; waxes; vaseline |
| Heavy fuel oil (bunker oil) | C30+ | 400+ | Thick liquid | Ship fuel; power station fuel |
| Bitumen (asphalt/tar) | C50+ | Non-volatile | Solid | Road surfacing; roofing; waterproofing |

**Trends as molecular size increases (going down the column):**
- Boiling point INCREASES (stronger van der Waals forces)
- Viscosity INCREASES (more flow resistance)
- Flammability DECREASES (harder to ignite)
- Color DARKENS (lighter fractions = colorless; heavier = brown/black)
- Volatility DECREASES (evaporate less easily)

---

## Cracking — Converting Heavy Fractions to Lighter, More Useful Ones

**Cracking** is the thermal (or catalytic) decomposition of long-chain hydrocarbons into shorter, more useful molecules.

**Why crack?**
- There is more demand for petrol, diesel (short chains) than heavy fuel oil (long chains)
- Cracking also produces ALKENES (valuable monomers for polymers)

**Types of cracking:**

| Type | Conditions | Products |
|------|-----------|---------|
| Thermal cracking | Very high T (~500-900°C), high pressure, no catalyst | Mostly alkanes + H2 |
| Catalytic cracking | ~500°C, lower pressure, aluminium silicate (zeolite) catalyst | Branched alkanes + alkenes |
| Steam cracking | High T (~850°C), steam | Lots of alkenes (ethene, propene) for polymers |

**Example of cracking:**
C12H26 → C6H14 + C3H6 + C3H4 + more   [long chain → shorter chain + alkenes]
Or specifically: C10H22 → C8H18 + C2H4    (decane → octane + ethene)

**Products of cracking:**
- Short-chain alkanes → petrol (improved octane rating)
- Alkenes (ethene, propene) → making plastics (polyethene, polypropene)
- Hydrogen (used in Haber process or fuel cells)
', 'overview', 1),

  (v_topic_id, 'Combustion, Environmental Issues and Alternative Fuels', E'
## Combustion of Hydrocarbons

### Complete Combustion
When sufficient oxygen is available:
Hydrocarbon + O2 → CO2 + H2O only

CnH(2n+2) + (3n+1)/2 O2 → nCO2 + (n+1)H2O

**Examples:**
- CH4 + 2O2 → CO2 + 2H2O
- C3H8 + 5O2 → 3CO2 + 4H2O
- C8H18 + 25/2 O2 → 8CO2 + 9H2O (or: 2C8H18 + 25O2 → 16CO2 + 18H2O)

### Incomplete Combustion
When oxygen is limited:
- Produces carbon monoxide (CO) and/or soot (carbon C)

**Examples:**
- 2CH4 + 3O2 → 2CO + 4H2O   (CO formed; limited O2)
- CH4 + O2 → C + 2H2O         (soot formed; very limited O2)
- General: CnH(2n+2) + limited O2 → CO and/or C + H2O

**Dangers:**
- CO: binds to haemoglobin 200× more strongly than O2; blocks O2 transport → carbon monoxide poisoning (can be fatal; common in poorly ventilated rooms with gas appliances/cars)
- Soot: air pollution; respiratory problems; causes global warming (black carbon absorbs sunlight)
- Unburned hydrocarbons (VOCs): contribute to smog

---

## Environmental Issues with Fossil Fuels

### 1. Global Warming (Greenhouse Effect)

**Greenhouse gases:** CO2, CH4, N2O, H2O (vapor), CFCs

**Natural greenhouse effect:** Solar energy passes through atmosphere; Earth''s surface absorbs and re-emits as infrared; greenhouse gases absorb infrared → trap heat → maintain habitable temperatures.

**Enhanced greenhouse effect (global warming):**
- Burning fossil fuels releases massive amounts of CO2 (and CH4 from gas leaks)
- CO2 concentration has risen from ~280 ppm (pre-industrial) to ~420 ppm (2023)
- More CO2 traps more heat → global average temperatures rise → **climate change**

**Consequences of global warming:**
- Ice caps and glaciers melt → sea level rise → coastal flooding
- More frequent extreme weather (droughts, floods, cyclones)
- Ocean acidification (CO2 dissolves in seawater → H2CO3 → lowers pH → kills coral)
- Shift in agricultural zones; food security threats
- Extinction of species unable to adapt
- In West Africa: reduced rainfall in Sahel; coastal flooding (Lagos, Accra); desertification

**CO2 from combustion:** 1 kg of petrol produces ~3.1 kg CO2

### 2. Air Pollution from Cars

| Pollutant | Source | Effect |
|----------|--------|--------|
| CO | Incomplete combustion | Toxic; binds to haemoglobin |
| NOx (NO, NO2) | High-temperature combustion (N2 + O2) | Acid rain; photochemical smog; respiratory problems |
| SO2 | S impurities in fuel | Acid rain; respiratory problems |
| Particulates/soot | Diesel combustion | Respiratory diseases (asthma, cancer risk) |
| Unburned hydrocarbons (VOCs) | Evaporation; incomplete combustion | Smog; some carcinogenic |

**Catalytic converter in cars:**
Converts harmful exhaust gases to less harmful ones:
- 2CO + 2NO → 2CO2 + N2   (platinum-rhodium catalyst, ~300°C)
- 2CO + O2 → 2CO2
- CxHy + O2 → CO2 + H2O
- 2NO + 2H2 → N2 + 2H2O

### 3. Carbon Cycle

**Carbon cycle:** The movement of carbon through atmosphere, biosphere, hydrosphere, and lithosphere.

**Key processes:**
- **Photosynthesis:** 6CO2 + 6H2O → C6H12O6 + 6O2 (removes CO2 from air)
- **Respiration:** C6H12O6 + 6O2 → 6CO2 + 6H2O (releases CO2)
- **Combustion:** C-compounds + O2 → CO2 + H2O (releases CO2)
- **Decomposition:** Dead organisms → CO2 (released by bacteria)
- **Dissolution in oceans:** CO2 + H2O → H2CO3 (oceans absorb ~30% of CO2)
- **Geological:** Limestone formation; fossilization; volcanic CO2 release

**Carbon balance:** Before industrial revolution, carbon cycle was roughly balanced. Burning fossil fuels releases "ancient" carbon → imbalance → atmospheric CO2 increases.

---

## Alternative Fuels and Renewable Energy

**Why alternatives?**
- Fossil fuels are non-renewable (finite resource)
- Fossil fuels cause climate change (CO2) and air pollution
- Energy security (countries that import oil are vulnerable)

### Biofuels

**Bioethanol:**
- Made by fermentation of sugar cane, corn, cassava (very relevant in West Africa!)
- Brazil: world''s largest bioethanol producer (sugar cane)
- Ghana, Nigeria: cassava-based ethanol potential
- Burns: C2H5OH + 3O2 → 2CO2 + 3H2O
- Carbon neutral in theory (CO2 released = CO2 absorbed when plant grew)
- Issues: Competes with food production; land use change; water use

**Biodiesel:**
- Transesterification of plant oils/animal fats with methanol
- Example: palm oil (very significant in West Africa — Ghana, Côte d''Ivoire, Nigeria)
- Lower emissions of particulates than fossil diesel
- Can be used in existing diesel engines without modification

### Hydrogen Fuel

- Burns cleanly: 2H2 + O2 → 2H2O (only water produced!)
- Used in fuel cells: H2 + O2 → H2O + electrical energy (no combustion; efficient)
- Issues: Production requires energy (usually from electrolysis or natural gas); storage challenges (cryogenic or high-pressure tanks); safety (highly flammable)

### Nuclear Power

- Nuclear fission of uranium → heat → steam → turbines → electricity
- No direct CO2 emissions during operation
- Issues: Radioactive waste disposal; safety (Chernobyl, Fukushima); high construction cost
- Currently being considered in some African countries

### Solar, Wind, Hydropower

- **Solar panels (photovoltaic):** Convert sunlight to electricity
  - West Africa: High solar irradiation → huge potential
  - Used for rural electrification (off-grid solar)
- **Wind turbines:** Convert wind kinetic energy to electricity
- **Hydropower:** Major source in West Africa (Akosombo Dam, Ghana; Kainji Dam, Nigeria)
- **Advantages:** Renewable; zero direct emissions; increasingly cheap
- **Disadvantages:** Intermittent (sun/wind not always available); land use; initial cost

---

## Comparing Fuel Types

| Fuel | Energy density | CO2 produced | Renewable? | Availability in W.Africa |
|------|--------------|-------------|-----------|------------------------|
| Coal | Medium | High (most C) | No | Limited |
| Petrol | High | High | No | Imported/local |
| Natural gas | High | Medium | No | Nigeria has large reserves |
| Bioethanol | Medium | Neutral* | Yes | High potential (sugar cane, cassava) |
| Biodiesel | High | Low-neutral* | Yes | High potential (palm oil) |
| Hydrogen | Very high | Zero | Yes (if renewable) | Developing |
| Solar | N/A | Zero | Yes | Very high potential |

*Carbon neutral (CO2 released = CO2 absorbed during plant growth)
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Carbon Chemistry and Fuels', E'
## Worked Examples — Carbon Chemistry and Fuels

### Example 1: Combustion Equations
**Q:** Write balanced equations for the complete and incomplete combustion of propane (C3H8).

**Solution:**
**Complete combustion (excess O2):**
C3H8 + 5O2 → 3CO2 + 4H2O
Balance: C: 3=3✓; H: 8=8✓; O: 10=10✓

**Incomplete combustion (limited O2 — CO formed):**
2C3H8 + 7O2 → 6CO + 8H2O

**Very limited O2 (soot/carbon):**
C3H8 + 2O2 → 3C + 4H2O

---

### Example 2: Cracking Equation
**Q:** Decane (C10H22) is cracked to produce octane (C8H18) and one other product. Identify the product and write the equation.

**Solution:**
C10H22 → C8H18 + ?
C: 10 = 8 + ? → ? has 2 C
H: 22 = 18 + ? → ? has 4 H
Formula: C2H4 = **ethene** (alkene)

Equation: C10H22 → C8H18 + C2H4 ✓
This is a thermal or catalytic cracking reaction.

---

### Example 3: Fractional Distillation
**Q:** Explain why petrol (gasoline, C5-C10) is collected at a different height in the fractionating column than diesel (C14-C20).

**Solution:**
The fractionating column maintains a temperature gradient — hottest at the bottom, coolest at the top. Petrol (smaller molecules, C5-C10) has a LOWER boiling point range (40-175°C) because it has weaker van der Waals forces between molecules. It evaporates easily and rises higher in the column before condensing.

Diesel (larger molecules, C14-C20) has a HIGHER boiling point range (220-350°C) due to stronger van der Waals forces. It condenses lower in the column at higher temperatures.

Each fraction is drawn off as a liquid where it condenses in the column.

---

### Example 4: Environmental Impact Calculation
**Q:** A car engine burns 10 dm³ of petrol per 100 km. Petrol density = 0.72 g/cm³; assume petrol is octane (C8H18). Calculate mass of CO2 produced per 100 km. [C=12, H=1, O=16; M(C8H18)=114]

**Solution:**
Volume of petrol per 100 km = 10 dm³ = 10,000 cm³
Mass = 10,000 × 0.72 = 7,200 g

Equation: 2C8H18 + 25O2 → 16CO2 + 18H2O
Mole ratio: 2 mol C8H18 : 16 mol CO2

n(C8H18) = 7200/114 = 63.16 mol
n(CO2) = (16/2) × 63.16 = 8 × 63.16 = 505.3 mol
m(CO2) = 505.3 × 44 = **22,232 g ≈ 22.2 kg CO2 per 100 km**

This clearly shows why cars are major contributors to greenhouse gas emissions!

---

### Example 5: Advantages of Biofuels
**Q:** Compare bioethanol as a fuel with petrol in terms of: (a) renewability; (b) carbon dioxide emissions; (c) energy content.

**Answers:**
(a) **Renewability:** Bioethanol is RENEWABLE — made from crops (sugar cane, cassava, maize) which can be regrown every year. Petrol is NON-RENEWABLE — from crude oil which takes millions of years to form.

(b) **CO2 emissions:** Bioethanol is theoretically CARBON NEUTRAL. The CO2 released when it burns was originally absorbed from the atmosphere by the crop during photosynthesis — no net addition to atmosphere. Petrol releases CO2 that was locked in underground for millions of years — NET ADDITION to atmosphere → more greenhouse effect.
However, in practice, bioethanol production uses energy (farming, transport, distillation) so is not perfectly carbon neutral.

(c) **Energy content:** Petrol has a HIGHER energy density than ethanol per gram or per liter. Ethanol contains an oxygen atom which "dilutes" the energy content. A bioethanol blend (E10 = 10% ethanol) slightly reduces the range per tank compared to pure petrol.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Carbon Chemistry and Fuels', E'
## WASSCE Practice Questions — Carbon Chemistry and Fuels

### Multiple Choice

**Q1.** The main component of natural gas is:
A) Ethane  B) Propane  C) Methane  D) Butane
**Answer: C**

**Q2.** In the fractional distillation of crude oil, which fraction has the LOWEST boiling point?
A) Bitumen  B) Diesel  C) Refinery gas  D) Kerosene
**Answer: C** — C1-C4, smallest molecules, lowest boiling points.

**Q3.** Cracking of hydrocarbons always produces:
A) Alkanes only  B) Alkenes and shorter alkanes  C) Only carbon and hydrogen  D) Carbon dioxide and water
**Answer: B**

**Q4.** Which gas from car exhaust is toxic because it binds to haemoglobin?
A) CO2  B) CO  C) NO2  D) SO2
**Answer: B** — Carbon monoxide

**Q5.** Bioethanol is described as "carbon neutral" because:
A) It contains no carbon  B) It releases no CO2  C) The CO2 released was absorbed during plant growth  D) It burns more efficiently than petrol
**Answer: C**

---

### Structured Questions

**Q6.** (a) Crude oil is separated by fractional distillation.
(i) Explain the principle of fractional distillation. [2]
(ii) Name the fraction collected at the TOP and BOTTOM of the column and state the use of each. [2]
(b) Why is cracking important in the oil industry? [2]
(c) Write the equation for catalytic cracking of hexadecane (C16H34) to produce octane (C8H18) and one other product. [2]

**Answers:**
(a)(i) Crude oil is heated to vaporize components. The vapor rises up a fractionating column where temperature decreases from bottom to top. Each fraction condenses at its own boiling point at different heights and is drawn off. Fractions with lower boiling points (smaller molecules) travel higher before condensing.

(a)(ii) Top: Refinery gas (C1-C4) — used as LPG fuel for cooking and heating.
Bottom: Bitumen (C50+) — used for road surfacing and waterproofing.

(b) Cracking converts heavy, less useful long-chain fractions into shorter-chain fractions (petrol, diesel) for which there is much greater demand. It also produces alkenes (ethene, propene) which are important raw materials for making plastics and other chemicals.

(c) C16H34 → C8H18 + C8H16
Check: C: 16=8+8✓; H: 34=18+16✓; C8H16 is an alkene (oct-1-ene or similar)

---

**Q7.** (a) State TWO environmental problems caused by burning fossil fuels. [2]
(b) Explain how the catalytic converter in a car reduces air pollution. Write one equation. [3]
(c) Explain why biofuels from West African crops (e.g., cassava) could help reduce CO2 emissions. [2]

**Answers:**
(a) Two problems:
1. **Global warming/climate change** — CO2 (greenhouse gas) released from combustion
2. **Acid rain** — SO2 and NOx released react with water → H2SO4 and HNO3 in rain
[Also: Air pollution/smog; oil spills; land degradation from mining]

(b) The catalytic converter contains a honeycomb structure coated with platinum and rhodium. Exhaust gases pass over this surface. The metal catalysts convert toxic/polluting gases to less harmful ones:
2CO + 2NO → 2CO2 + N2 (platinum-rhodium catalyst)
CO is converted to CO2 (less harmful); NO reduced to harmless N2.
Also: unburned hydrocarbons oxidized to CO2 and H2O.

(c) Biofuels (e.g., bioethanol from cassava fermentation) are considered carbon neutral. When cassava plants grow, they absorb CO2 from the atmosphere during photosynthesis. When the ethanol made from cassava is burned, the same amount of CO2 is released. Therefore the NET CO2 added to the atmosphere is approximately ZERO — unlike burning petrol which releases carbon that was trapped underground for millions of years and is a net addition to atmospheric CO2.
', 'practice', 5);

END $$;
