
/*
  # Chemistry notes for remaining topics: Gas Laws, Separation, Stoichiometry,
    Energetics, Nitrogen, Sulphur, Carbon/Fuels, Polymers, Industrial Chemistry,
    Environmental Chemistry, Qualitative Analysis, Nuclear Chemistry
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Gas Laws
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Gas Laws and Mole Concept' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Gas Laws and Mole Concept', $CONTENT$
## The Mole: Chemistry''s Counting Unit

**The Mole (mol)** is the SI unit for amount of substance.
1 mole = 6.022 × 10²³ particles (Avogadro's number, Nₐ)

This number was chosen so that 1 mole of any element = its relative atomic mass in grams.
- 1 mol H₂ = 2 g (Ar of H = 1; molecular mass = 2)
- 1 mol C = 12 g
- 1 mol Fe = 56 g
- 1 mol NaCl = 58.5 g (Ar Na=23, Cl=35.5; 23+35.5=58.5)

### Key Mole Calculations
**Moles = mass (g) / molar mass (g/mol)**
**Mass = moles × molar mass**
**Molar mass = mass / moles**

**For solutions:**
**Moles = Concentration (mol/L) × Volume (L)**
**Concentration = Moles / Volume**

**For gases (at STP: 0°C, 1 atm):**
1 mole of ANY gas occupies 22.4 L
**Moles = Volume (L) / 22.4**

**For gases (at RTP: 25°C, 1 atm):**
1 mole of ANY gas occupies 24 L
**Moles = Volume (L) / 24**

### Gas Laws

**Boyle's Law (constant temperature):**
P × V = constant, or P₁V₁ = P₂V₂
Pressure and volume are INVERSELY proportional at constant T.
"Squeeze gas → pressure increases; volume decreases"

**Charles' Law (constant pressure):**
V/T = constant, or V₁/T₁ = V₂/T₂  [T must be in KELVIN: K = °C + 273]
Volume and temperature are DIRECTLY proportional at constant P.
"Heat gas → it expands"

**Pressure Law (constant volume):**
P/T = constant, or P₁/T₁ = P₂/T₂ [T in Kelvin]
Pressure and temperature directly proportional at constant V.
"Heat sealed container → pressure increases"

**Combined Gas Law:**
P₁V₁/T₁ = P₂V₂/T₂

**Ideal Gas Equation:**
PV = nRT
Where: P = pressure (Pa), V = volume (m³), n = moles, R = 8.314 J/mol/K, T = temperature (K)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Gas Law Calculations and Worked Examples', $CONTENT$
## Worked Examples: Gas Laws

### Example 1: Boyle's Law
A gas occupies 500 cm³ at 2 atm. What volume does it occupy at 5 atm (temperature constant)?

P₁V₁ = P₂V₂
2 × 500 = 5 × V₂
V₂ = 1000/5 = **200 cm³**

### Example 2: Charles' Law
A gas occupies 300 cm³ at 27°C. What volume does it occupy at 127°C (pressure constant)?

Convert to Kelvin: T₁ = 27 + 273 = 300 K; T₂ = 127 + 273 = 400 K
V₁/T₁ = V₂/T₂
300/300 = V₂/400
V₂ = 1 × 400 = **400 cm³**

### Example 3: Combined Gas Law
A gas has volume 200 cm³ at 100 kPa and 17°C. What is its volume at 50 kPa and 57°C?

T₁ = 17+273 = 290 K; T₂ = 57+273 = 330 K
P₁V₁/T₁ = P₂V₂/T₂
(100 × 200)/290 = (50 × V₂)/330
V₂ = (100 × 200 × 330)/(290 × 50)
= 6,600,000/14,500
= **455 cm³**

### Example 4: Mole Calculations
(a) How many moles in 8g of NaOH? (Mr NaOH = 23+16+1 = 40)
moles = 8/40 = **0.2 mol**

(b) What is the mass of 0.5 mol of CaCO₃? (Mr = 40+12+48 = 100)
mass = 0.5 × 100 = **50 g**

(c) What volume of CO₂ (at RTP) is produced when 10g of CaCO₃ reacts with excess HCl?
CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂
moles CaCO₃ = 10/100 = 0.1 mol
moles CO₂ = 0.1 mol (1:1 ratio)
Volume CO₂ = 0.1 × 24 = **2.4 L**
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Stoichiometry and Chemical Calculations', $CONTENT$
## Stoichiometry: Calculating Amounts in Reactions

### Mole Ratios from Equations
A balanced equation gives the MOLE RATIO of reactants and products.

Example: N₂ + 3H₂ → 2NH₃
1 mole N₂ reacts with 3 moles H₂ to produce 2 moles NH₃
If 2 moles N₂ reacts with 6 moles H₂ → 4 moles NH₃

### Step-by-Step Method for Stoichiometry Problems
1. Write balanced equation
2. Find moles of known substance
3. Use mole ratio from equation to find moles of unknown
4. Convert moles to required quantity (mass, volume, concentration)

### Types of Calculations

**Mass-Mass:**
What mass of Fe₂O₃ is needed to produce 56g of iron?
Fe₂O₃ + 3CO → 2Fe + 3CO₂
Moles Fe = 56/56 = 1 mol
Moles Fe₂O₃ = 1/2 = 0.5 mol (from 1:2 ratio in equation)
Mass Fe₂O₃ = 0.5 × 160 = **80 g**

**Limiting Reagent:**
The reactant that runs out first — determines how much product is made.

Example: 4g of H₂ reacts with 32g of O₂. Which is limiting?
2H₂ + O₂ → 2H₂O
Moles H₂ = 4/2 = 2 mol
Moles O₂ = 32/32 = 1 mol
From equation: 2 mol H₂ needs 1 mol O₂ → exactly 1:1 ratio = both used up exactly
(Neither is limiting; they react completely)

**Percentage yield:**
% yield = (actual yield / theoretical yield) × 100%

**Percentage purity:**
% purity = (mass of pure substance / total mass of sample) × 100%

**Empirical formula:** Simplest whole-number ratio of atoms
**Molecular formula:** Actual number of each type of atom
Molecular formula = n × (empirical formula), where n = Mr(molecular) / Mr(empirical)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Gas Laws and Mole Concept', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) State Boyle's Law.
(b) A gas occupies 400 cm³ at a pressure of 75 kPa. Calculate the volume at 100 kPa (temperature constant).

**Answer:**
(a) Boyle's Law: At constant temperature, the volume of a fixed mass of gas is inversely proportional to its pressure.
(P₁V₁ = P₂V₂ at constant T)

(b) P₁ = 75 kPa; V₁ = 400 cm³; P₂ = 100 kPa; V₂ = ?
75 × 400 = 100 × V₂
V₂ = 30000/100 = **300 cm³**

---

### Question 2 (WASSCE 2021)
Calculate the number of moles of sulphuric acid (H₂SO₄) in 49 g. (Molar mass of H₂SO₄ = 98 g/mol)

**Answer:**
Moles = mass / molar mass = 49 / 98 = **0.5 mol**

---

### Question 3 (WASSCE 2020)
In the reaction: CuO + H₂ → Cu + H₂O
What mass of copper is produced from 8 g of CuO? (Molar mass: Cu=64, O=16, so CuO=80)

**Answer:**
Moles of CuO = 8/80 = 0.1 mol
Moles of Cu = 0.1 mol (1:1 ratio from equation)
Mass of Cu = 0.1 × 64 = **6.4 g**

---

### Practice Questions
1. State Charles' Law and write its mathematical expression.
2. 0.5 mol of NaOH is dissolved to make 250 cm³ of solution. Find the concentration.
3. What volume of H₂ (at RTP) is produced when 24g of Mg reacts with excess HCl? (Mg=24)
4. Calculate the empirical formula of a compound containing 40% C, 6.7% H, 53.3% O by mass.
5. A reaction has a theoretical yield of 50g but only 40g was actually obtained. Calculate the percentage yield.

**Answers:**
1. At constant pressure, the volume of a fixed mass of gas is directly proportional to its absolute temperature (in Kelvin). V₁/T₁ = V₂/T₂
2. Concentration = moles/volume = 0.5/(250/1000) = 0.5/0.25 = **2 mol/L**
3. Mg + 2HCl → MgCl₂ + H₂; Moles Mg = 24/24 = 1 mol; Moles H₂ = 1 mol; Volume = 1 × 24 = **24 L**
4. C: 40/12=3.33; H: 6.7/1=6.7; O: 53.3/16=3.33; Ratio: C:H:O = 3.33:6.7:3.33 = **1:2:1**; Empirical formula: **CH₂O** (glucose, fructose... = this is the empirical formula; molecular depends on Mr)
5. % yield = (40/50) × 100 = **80%**
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Gas Laws Extended Notes', $CONTENT$
## Ideal vs Real Gases

**Ideal gas assumptions:**
1. Particles have negligible volume compared to container
2. No intermolecular forces between particles
3. All collisions are perfectly elastic
4. Particles in constant, random motion

**Real gases deviate from ideal behaviour at:**
- High pressures (molecules too close → intermolecular forces matter; volume of molecules matters)
- Low temperatures (molecules slow down → intermolecular forces become significant)
- Most gases behave "ideally" at normal temperatures and low-moderate pressures

### Relative Atomic Mass Calculations
**Method using mass spectrometry:**
Ar = Σ(isotope mass × % abundance) / 100

**Example:** Carbon has ¹²C (98.9%) and ¹³C (1.1%)
Ar = (12 × 98.9 + 13 × 1.1) / 100 = (1186.8 + 14.3)/100 = 1201.1/100 = **12.01**

### Molar Volume Applications
At standard temperature and pressure (STP: 0°C, 1 atm):
1 mole gas = 22.4 L

At room temperature and pressure (RTP: 25°C, 1 atm):
1 mole gas = 24 L

For WASSCE: usually use 24 L/mol (RTP conditions) unless specified otherwise.

**Avogadro's Law:** Equal volumes of gases at the same temperature and pressure contain equal numbers of molecules.
Therefore: volume ratio in reaction = mole ratio
Example: N₂ + 3H₂ → 2NH₃
1 vol N₂ : 3 vol H₂ : 2 vol NH₃ (at same T and P)
$CONTENT$, 'examples', 5);

  -- Stoichiometry and Quantitative Chemistry  
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Stoichiometry and Quantitative Chemistry' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Quantitative Chemistry', $CONTENT$
## Quantitative Chemistry: Measuring and Calculating

Quantitative chemistry is concerned with the amounts of substances involved in chemical reactions.

### Key Formulas

**Moles:**
n = m/M  (n = moles, m = mass in grams, M = molar mass in g/mol)

**Concentration:**
c = n/V  (c = concentration in mol/L, n = moles, V = volume in litres)

**Gas volume (at RTP):**
V = n × 24  (V in litres, at 25°C and 1 atm)
or n = V/24

**Avogadro's number:**
Number of particles = n × 6.022 × 10²³

### Balancing Chemical Equations
Method:
1. Write unbalanced equation with correct formulas
2. Count atoms of each element on each side
3. Add coefficients to balance (NEVER change subscripts in formulas)
4. Verify balance

Example: Fe + O₂ → Fe₂O₃ (unbalanced)
Fe: 1 on left, 2 on right → put 2 Fe on left: 2Fe + O₂ → Fe₂O₃
O: 2 on left, 3 on right → put 3/2 O₂: 2Fe + 3/2 O₂ → Fe₂O₃
Multiply by 2: **4Fe + 3O₂ → 2Fe₂O₃** (balanced)

### Types of Chemical Reactions
**Synthesis (combination):** A + B → AB
**Decomposition:** AB → A + B
**Displacement:** A + BC → AC + B
**Double decomposition (precipitation):** AB + CD → AD↓ + CB
**Neutralisation:** Acid + Base → Salt + Water
**Combustion:** Fuel + O₂ → CO₂ + H₂O (complete)
**Redox:** Involves electron transfer
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Titration Calculations', $CONTENT$
## Acid-Base Titrations

**Titration:** A procedure to find the concentration of a solution by reacting it with another solution of known concentration.

### Procedure for Titration
1. Rinse burette with the acid; fill burette with acid; record initial volume
2. Pipette exact volume (25 cm³) of alkali into conical flask
3. Add 2-3 drops of indicator (phenolphthalein for strong acid/strong alkali)
4. Add acid from burette slowly, swirling after each addition
5. Near endpoint: add acid dropwise
6. Stop when indicator changes colour permanently (endpoint)
7. Record final burette reading; calculate titre (volume of acid used)
8. Repeat for concordant results (within 0.1 cm³ of each other)
9. Take mean of concordant results

### Titration Calculation Method
1. Calculate moles of known solution (usually acid)
   n = c × V (V in litres)
2. Use mole ratio from balanced equation to find moles of unknown
3. Calculate concentration or mass of unknown

**Example:** 25.0 cm³ of NaOH solution requires 20.0 cm³ of 0.1 mol/L HCl for complete neutralisation.

NaOH + HCl → NaCl + H₂O (1:1 mole ratio)

Moles HCl = 0.1 × (20.0/1000) = 0.002 mol
Moles NaOH = 0.002 mol (1:1 ratio)
Concentration NaOH = 0.002 / (25.0/1000) = 0.002/0.025 = **0.08 mol/L**

### More Complex Example
25.0 cm³ of H₂SO₄ neutralises 30.0 cm³ of 0.2 mol/L NaOH. Find concentration of H₂SO₄.

H₂SO₄ + 2NaOH → Na₂SO₄ + 2H₂O (1:2 mole ratio)

Moles NaOH = 0.2 × (30.0/1000) = 0.006 mol
Moles H₂SO₄ = 0.006/2 = 0.003 mol (1:2 ratio)
Concentration H₂SO₄ = 0.003/(25.0/1000) = 0.003/0.025 = **0.12 mol/L**
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'WASSCE Questions: Stoichiometry', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
In a titration, 25 cm³ of 0.1 mol/L sodium hydroxide exactly neutralises 20 cm³ of hydrochloric acid. Calculate the concentration of the hydrochloric acid.

**Answer:**
NaOH + HCl → NaCl + H₂O (1:1 ratio)

Moles NaOH = 0.1 × (25/1000) = 0.0025 mol
Moles HCl = 0.0025 mol (1:1 ratio)
Concentration HCl = 0.0025/(20/1000) = 0.0025/0.02 = **0.125 mol/L**

---

### Question 2 (WASSCE 2021)
What mass of calcium carbonate (CaCO₃) would completely react with 100 cm³ of 2 mol/L hydrochloric acid?

CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂

Moles HCl = 2 × (100/1000) = 0.2 mol
Moles CaCO₃ = 0.2/2 = 0.1 mol (from 1:2 ratio)
Mass CaCO₃ = 0.1 × 100 = **10 g**

---

### Practice Questions
1. What is the concentration of a solution containing 5.85 g of NaCl in 500 cm³ of solution? (Mr NaCl = 58.5)
2. Balance: Al + HCl → AlCl₃ + H₂
3. In the reaction: 2H₂ + O₂ → 2H₂O — what volume of H₂ (at RTP) reacts with 16g of O₂?
4. A student titrates 25 cm³ of Ca(OH)₂ solution with 0.1 mol/L HCl. 40 cm³ of HCl is needed. Find [Ca(OH)₂].
5. A compound is 27.3% C and 72.7% O. Find the empirical formula.

**Answers:**
1. n(NaCl) = 5.85/58.5 = 0.1 mol; c = 0.1/(500/1000) = 0.1/0.5 = **0.2 mol/L**
2. **2Al + 6HCl → 2AlCl₃ + 3H₂**
3. n(O₂) = 16/32 = 0.5 mol; from ratio: n(H₂) = 2×0.5 = 1 mol; Volume = 1×24 = **24 L**
4. Ca(OH)₂ + 2HCl → CaCl₂ + 2H₂O; n(HCl)=0.1×40/1000=0.004mol; n(Ca(OH)₂)=0.004/2=0.002mol; [Ca(OH)₂]=0.002/(25/1000)=0.002/0.025= **0.08 mol/L**
5. C: 27.3/12=2.275; O: 72.7/16=4.544; Ratio: C:O = 2.275:4.544 = 1:2; Empirical formula: **CO₂** (same as carbon dioxide molecular formula here)
$CONTENT$, 'explanation', 3),
  (v_topic_id, 'Energetics and Worked Examples', $CONTENT$
## Energetics: Heat Changes in Reactions

**Enthalpy change (ΔH):** Heat change at constant pressure during a chemical reaction.

**Exothermic reaction (ΔH < 0, negative):**
- Releases heat to surroundings
- Temperature of reaction mixture INCREASES
- Products have LOWER energy than reactants
- Examples: Combustion, neutralisation, oxidation of metals

**Endothermic reaction (ΔH > 0, positive):**
- Absorbs heat from surroundings
- Temperature of reaction mixture DECREASES
- Products have HIGHER energy than reactants
- Examples: Thermal decomposition, dissolving ammonium nitrate, photosynthesis

### Standard Enthalpy Changes
- **ΔHc° (enthalpy of combustion):** Heat released when 1 mole of substance burns completely in excess oxygen
- **ΔHf° (enthalpy of formation):** Heat change when 1 mole of compound is formed from its elements in standard states
- **ΔHn° (enthalpy of neutralisation):** Heat released when 1 mole of water is formed in acid-base neutralisation (~57 kJ/mol for strong acid + strong alkali)

### Calorimetry: Measuring Heat Changes
q = m × c × ΔT
Where: q = heat energy (J), m = mass (g), c = specific heat capacity (4.18 J/g/°C for water), ΔT = temperature change (°C)

Example: 50 cm³ of HCl + 50 cm³ of NaOH; temperature rises from 20°C to 26.5°C
q = (50+50) × 4.18 × (26.5-20) = 100 × 4.18 × 6.5 = **2717 J = 2.717 kJ**

Moles water formed = moles NaOH ≈ moles HCl (assuming equal concentrations)
If concentration = 1 mol/L: moles = 1 × 50/1000 = 0.05 mol
ΔH per mole = -2.717/0.05 = **-54.3 kJ/mol** (negative — exothermic)
$CONTENT$, 'examples', 4),
  (v_topic_id, 'WASSCE Questions: Stoichiometry Extended', $CONTENT$
## Additional Stoichiometry and Energetics Questions

### Question 1 (WASSCE 2022 — Energetics)
When 50 cm³ of 1.0 mol/L HCl is added to 50 cm³ of 1.0 mol/L NaOH, the temperature rises by 6.8°C.
Calculate the enthalpy change of neutralisation per mole of water formed.

**Answer:**
q = m × c × ΔT = (100) × 4.18 × 6.8 = **2842.4 J = 2.842 kJ**

Moles of HCl = moles NaOH = 1.0 × (50/1000) = 0.05 mol
Moles of water formed = 0.05 mol

ΔH per mole = -(2.842/0.05) = **-56.8 kJ/mol** (negative — exothermic)

---

### Practice: Hess's Law
**Hess's Law:** The total enthalpy change of a reaction is independent of the route taken.
ΔH = sum of ΔHf° (products) - sum of ΔHf° (reactants)

Example: Calculate ΔH for C + O₂ → CO₂ given:
C + ½O₂ → CO; ΔH₁ = -110 kJ/mol
CO + ½O₂ → CO₂; ΔH₂ = -283 kJ/mol

Add equations: C + ½O₂ + CO + ½O₂ → CO + CO₂
Simplify: C + O₂ → CO₂
ΔH = ΔH₁ + ΔH₂ = -110 + (-283) = **-393 kJ/mol**

This is Hess's Law — can find ΔH for reactions that are difficult to measure directly.

---

### Bond Energy Calculations
ΔH_reaction = Sum of bonds BROKEN (energy IN, positive) - Sum of bonds MADE (energy OUT, negative)

Example: H₂ + Cl₂ → 2HCl
Bonds broken: 1 H-H (436 kJ) + 1 Cl-Cl (243 kJ) = +679 kJ
Bonds made: 2 H-Cl (2 × 431 kJ) = -862 kJ
ΔH = 679 - 862 = **-183 kJ** (exothermic)
$CONTENT$, 'practice', 5);

  -- Nitrogen and its Compounds
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Nitrogen and Its Compounds' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Nitrogen and Its Compounds', $CONTENT$
## Nitrogen: The Most Abundant Atmospheric Gas

Nitrogen (N₂) makes up 78% of air. It is relatively unreactive (triple bond N≡N is very strong, requires 946 kJ/mol to break).

### Properties of Nitrogen
- Colourless, odourless, tasteless gas
- Diatomic molecule (N≡N triple bond)
- Relatively inert at room temperature
- Boiling point: -196°C (used as liquid nitrogen for cryogenics)
- Slightly less dense than air

### The Haber Process: Making Ammonia (NH₃)
**Equation:** N₂ + 3H₂ ⇌ 2NH₃   ΔH = -92 kJ/mol

**Raw materials:**
- N₂: from fractional distillation of liquid air
- H₂: from steam reforming of natural gas (CH₄ + H₂O → CO + 3H₂)

**Conditions:** 450°C, 200 atm pressure, iron (Fe) catalyst

**Why these conditions?** (Le Chatelier)
- Lower temperature favours NH₃ (exothermic) but too slow → 450°C compromise
- Higher pressure favours NH₃ (fewer gas moles) → 200 atm used
- Catalyst: Fe speeds up to reach equilibrium faster without changing equilibrium position
- Yield ~15% per pass; unreacted N₂/H₂ recycled → overall 98% conversion

### Properties and Uses of Ammonia
**Physical:** Colourless gas; pungent smell; less dense than air; very soluble in water
NH₃(g) + H₂O(l) → NH₄OH(aq) → NH₄⁺(aq) + OH⁻(aq) (alkaline solution)

**Uses:**
1. Making fertilisers (NH₄NO₃, (NH₄)₂SO₄, urea (NH₂)₂CO) — most important!
2. Making nitric acid (Ostwald process)
3. Refrigerant (high latent heat of vaporisation)
4. Cleaning agent (ammonia solution)
5. Making nylon (raw material)

### Oxides of Nitrogen
- **NO (nitrogen monoxide):** Colourless gas; formed in lightning, car engines; converted to NO₂ in air
- **NO₂ (nitrogen dioxide):** Brown gas; pungent smell; major air pollutant; contributes to acid rain
- **N₂O (dinitrogen oxide):** Laughing gas; anaesthetic

### Nitric Acid (HNO₃) — Ostwald Process
**Step 1:** 4NH₃ + 5O₂ → 4NO + 6H₂O (platinum/rhodium catalyst, 900°C)
**Step 2:** 2NO + O₂ → 2NO₂ (cooling, no catalyst)
**Step 3:** 4NO₂ + O₂ + 2H₂O → 4HNO₃ (absorption in water)

Uses of nitric acid: Making explosives (TNT, dynamite), fertilisers, dyes, drugs

### Fertilisers
**Nitrogen-containing fertilisers:**
- Ammonium nitrate (NH₄NO₃) — 34% N; most widely used
- Ammonium sulphate ((NH₄)₂SO₄) — 21% N; also adds sulphur
- Urea ((NH₂)₂CO) — 46% N; highest N content; slowly releases

**Disadvantages of excess fertiliser use:**
- **Eutrophication:** Fertiliser runoff → algal bloom in water → algae die, decompose → O₂ depleted → fish die
- Nitrate contamination of drinking water (causes health issues — methaemoglobinaemia in babies)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Nitrogen Compounds: WASSCE Questions', $CONTENT$
## WASSCE Questions: Nitrogen and Its Compounds

### Question 1 (WASSCE 2022)
(a) State the conditions for the Haber process.
(b) Explain why a temperature of 450°C is used rather than a lower temperature.

**Answer:**
(a) Conditions for Haber process:
- Temperature: **450°C**
- Pressure: **200 atm** (approximately 200 atmospheres)
- Catalyst: **Iron (Fe)** [with promoters K₂O and Al₂O₃]
- N₂/H₂ ratio: 1:3

(b) Lower temperatures would give a higher yield of NH₃ (reaction is exothermic; lower T favours product by Le Chatelier). However, at lower temperatures, the rate of reaction is too slow to be economically viable. 450°C is a **compromise** between a satisfactory rate and an acceptable yield. The iron catalyst helps increase the rate so that equilibrium is reached faster.

---

### Question 2 (WASSCE 2021)
What is meant by "eutrophication"? State TWO harmful effects on aquatic ecosystems.

**Answer:**
**Eutrophication:** Excessive enrichment of a body of water with nutrients (especially nitrates and phosphates, usually from agricultural fertiliser runoff), leading to excessive plant and algal growth.

Harmful effects:
1. Algae covering water surface → blocks sunlight → aquatic plants below cannot photosynthesize → die
2. When algae die, decomposing bacteria multiply rapidly → use up dissolved O₂ → oxygen depletion
3. Fish and other aquatic organisms suffocate and die due to lack of oxygen
4. Biodiversity of aquatic ecosystem greatly reduced

---

### Practice Questions
1. Write the equation for the industrial synthesis of ammonia (Haber process).
2. State THREE uses of ammonia.
3. Why is nitrogen relatively unreactive?
4. How is nitric acid manufactured from ammonia? (State equations for each step)
5. A student burns ammonia in oxygen. What are the products? Write the equation.

**Answers:**
1. N₂ + 3H₂ ⇌ 2NH₃ (conditions: 450°C, 200 atm, Fe catalyst)
2. Making fertilisers; making nitric acid; refrigerant; cleaning agent; making explosives/dyes/nylon
3. The N≡N triple bond is extremely strong (946 kJ/mol) → requires a great deal of energy to break → N₂ does not react readily under normal conditions
4. Step 1: 4NH₃ + 5O₂ → 4NO + 6H₂O (Pt/Rh catalyst, 900°C). Step 2: 2NO + O₂ → 2NO₂. Step 3: 4NO₂ + O₂ + 2H₂O → 4HNO₃
5. 4NH₃ + 3O₂ → 2N₂ + 6H₂O (excess O₂: 4NH₃ + 5O₂ → 4NO + 6H₂O — forms NO in industrial conditions)
$CONTENT$, 'definitions', 2),
  (v_topic_id, 'Sulphur and Environmental Chemistry', $CONTENT$
## Sulphur and Its Compounds

**Sulphur (S):** Yellow solid; occurs free (volcanic regions) and as sulphide/sulphate ores (FeS₂, galena PbS, gypsum CaSO₄)

### Allotropes of Sulphur
- **Rhombic sulphur:** Stable below 96°C; yellow octahedral crystals; S₈ molecules
- **Monoclinic sulphur:** Stable 96-119°C; needle-shaped crystals; also S₈
- Both convert to each other depending on temperature (96°C = transition temperature)
- Above 119°C: sulphur melts; above ~200°C: plastic sulphur forms (S₈ rings open into chains)

### Sulphur Dioxide (SO₂)
**Production:**
1. Burning sulphur: S + O₂ → SO₂
2. Burning metal sulphide ores: 4FeS₂ + 11O₂ → 2Fe₂O₃ + 8SO₂ (roasting pyrite)
3. Reactions of acids with sulphites: Na₂SO₃ + H₂SO₄ → Na₂SO₄ + H₂O + SO₂

**Properties:** Colourless; pungent smell; acidic (SO₂ + H₂O → H₂SO₃ — sulphurous acid); bleaching agent (by reduction); used as preservative (E220)

**Uses:** Making H₂SO₄; food preservative; bleaching; refrigerant (historical)

### Sulphur Trioxide (SO₃) and Sulphuric Acid
**Contact Process — Making H₂SO₄:**
1. S + O₂ → SO₂ (burning sulphur)
2. 2SO₂ + O₂ ⇌ 2SO₃ (V₂O₅ catalyst, 450°C, 1-2 atm)
3. SO₃ + H₂SO₄ → H₂S₂O₇ (oleum — dissolving in conc. H₂SO₄, NOT water directly)
4. H₂S₂O₇ + H₂O → 2H₂SO₄ (diluting oleum with water)
[SO₃ is not dissolved directly in water as it forms an aerosol, not a solution]

**Uses of H₂SO₄:** Making fertilisers (superphosphate), batteries (lead-acid), detergents, dyes, explosives, petrochemical refining

### Acid Rain
**Cause:** SO₂ and NO₂ from burning fossil fuels dissolve in rainwater
SO₂ + H₂O → H₂SO₃ (sulphurous acid)
2SO₂ + O₂ → 2SO₃; SO₃ + H₂O → H₂SO₄ (sulphuric acid)
NO₂ + H₂O → HNO₃ (nitric acid)

Normal rain pH ~5.6 (dissolved CO₂); Acid rain: pH 4-5 or lower

**Effects of acid rain:**
- Damages/kills vegetation (leaches nutrients from soil, direct leaf damage)
- Kills fish in lakes (pH drops; disrupts gill function, reproductive failure)
- Corrodes limestone buildings and metal structures (e.g., Parthenon, Taj Mahal)
- Releases toxic metals (Al, Pb) from soil → water supply

**Solutions:**
- Reduce SO₂ emissions (catalytic converters, flue gas desulphurisation: CaO + SO₂ → CaSO₃)
- Use low-sulphur fuels
- Renewable energy (no combustion)
$CONTENT$, 'explanation', 3),
  (v_topic_id, 'WASSCE Questions: Sulphur and Environmental Chemistry', $CONTENT$
## WASSCE Questions

### Question 1 (WASSCE 2022)
Describe the Contact process for manufacturing sulphuric acid.

**Answer:**
(Full Contact process — 4 steps as described above — key points:)
1. SO₂ production (burning S or roasting sulphide ores)
2. SO₂ oxidised to SO₃ using V₂O₅ catalyst at ~450°C, 1-2 atm
   2SO₂ + O₂ ⇌ 2SO₃ (reversible — equilibrium; ~97% conversion per pass)
3. SO₃ dissolved in concentrated H₂SO₄ → oleum (H₂S₂O₇)
   (NOT dissolved directly in water — causes acid mist)
4. Oleum + water → concentrated H₂SO₄

---

### Question 2 (WASSCE 2021)
State FOUR harmful effects of acid rain.

**Answer:**
1. Damages and kills trees and vegetation (leaches essential mineral ions from soil; directly damages leaves)
2. Kills fish and aquatic organisms (lakes become too acidic for fish to survive)
3. Corrodes limestone buildings, marble, and metal structures
4. Releases toxic aluminium ions from soil into water supplies

---

### Practice Questions
1. Write the equation for the reaction between SO₂ and water.
2. Why is SO₃ dissolved in concentrated H₂SO₄ rather than water in the Contact process?
3. State the sources of SO₂ and NO₂ that cause acid rain.
4. Name two allotropes of sulphur and state one difference between them.
5. State one use each of: (a) SO₂ (b) H₂SO₄

**Answers:**
1. SO₂ + H₂O → H₂SO₃ (sulphurous acid)
2. Dissolving SO₃ directly in water produces a fine acid mist/aerosol that is difficult to handle and causes respiratory problems. Dissolving in concentrated H₂SO₄ first produces oleum, which is then safely diluted with water to give concentrated H₂SO₄ solution.
3. SO₂: burning sulphur-containing fossil fuels (coal, oil), metal smelting (roasting sulphide ores); NO₂: burning of fuels at high temperatures (car engines, power stations) — N₂ + O₂ → 2NO → 2NO₂
4. Rhombic and monoclinic sulphur; rhombic is stable at room temperature (orthorhombic crystals), monoclinic above 96°C (needle crystals); both are S₈ molecules
5. (a) SO₂: food preservative (prevents oxidation and microbial growth); making H₂SO₄; bleaching paper/fibres; (b) H₂SO₄: making fertilisers; car batteries; making detergents/dyes
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Nuclear Chemistry and Radioactivity', $CONTENT$
## Nuclear Chemistry and Radioactivity

**Radioactivity:** Spontaneous emission of radiation from the nucleus of unstable atoms.

### Types of Radiation
| Property | Alpha (α) | Beta (β) | Gamma (γ) |
|---------|-----------|----------|-----------|
| Nature | Helium nucleus (²He⁴ or α) | Fast electron (⁰₋₁e) | Electromagnetic radiation |
| Charge | +2 | -1 | 0 |
| Mass | 4 u | ~0 | 0 |
| Range in air | ~5 cm | ~1 m | Very far |
| Ionising power | High | Medium | Low |
| Penetrating power | Low (stopped by paper) | Medium (stopped by Al foil) | High (reduced by thick lead or concrete) |

### Nuclear Decay Equations
**Alpha decay:** Nucleus emits α particle → loses 2 protons, 2 neutrons
²³⁸₉₂U → ²³⁴₉₀Th + ⁴₂α

**Beta decay:** Neutron → proton + beta particle
¹⁴₆C → ¹⁴₇N + ⁰₋₁β

**Gamma decay:** Often accompanies alpha or beta decay; no change in mass/atomic number

### Half-Life
**Half-life (t½):** Time taken for HALF the radioactive atoms in a sample to decay (remain constant for a given isotope).

Example: If t½ = 20 years and initial mass = 100g:
After 20 years: 50g; After 40 years: 25g; After 60 years: 12.5g; After 80 years: 6.25g

Formula: Amount remaining = Initial amount × (1/2)ⁿ where n = number of half-lives elapsed

### Uses of Radioactivity
- **Carbon-14 dating:** t½ = 5,730 years; used to date archaeological artifacts containing organic material
- **Medical imaging:** Technetium-99m as tracer in body scans
- **Cancer treatment (radiotherapy):** Cobalt-60 gamma rays kill tumour cells
- **Sterilisation:** Gamma rays sterilise medical equipment, food (irradiation)
- **Nuclear power:** Uranium-235 fission releases enormous energy
- **Smoke detectors:** Americium-241 (α emitter) ionises air between plates → detects smoke

### Nuclear Fission vs Fusion
**Fission:** Heavy nucleus splits into smaller nuclei + energy (+ neutrons)
²³⁵U + n → ¹⁴¹Ba + ⁹²Kr + 3n + ENERGY (chain reaction)
Used in: Nuclear power stations, atomic bombs

**Fusion:** Light nuclei combine → heavier nucleus + energy
²H + ³H → ⁴He + n + ENERGY (enormous energy)
Occurs in: Sun; hydrogen bombs; not yet practical for power generation (requires extreme temperature ~10⁷ K)

**WASSCE Past Questions:**
1. (WASSCE 2022) ²²⁶₈₈Ra decays to ²²²₈₆Rn. What type of radiation is emitted? Calculate the particles emitted.
   Change in A: 226-222=4; Change in Z: 88-86=2 → emitted ⁴₂He = **alpha particle**

2. (WASSCE 2021) A radioactive isotope has a half-life of 10 years. What fraction remains after 30 years?
   30 years = 3 half-lives; fraction = (1/2)³ = **1/8** of original amount remains

3. State THREE uses of radioactive isotopes in medicine and industry.
   Answer: Medical: diagnosis (tracers like Tc-99m), cancer treatment (radiotherapy with Co-60), sterilising medical equipment. Industrial: gauging thickness (β particles through metal sheet), flow detection in pipes, power generation (nuclear reactors)
$CONTENT$, 'examples', 5);

  -- Qualitative Analysis
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Qualitative Analysis' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Qualitative Analysis', $CONTENT$
## Qualitative Analysis: Identifying Unknown Substances

**Qualitative analysis** is used to identify which ions or compounds are present in an unknown sample (not how much — that is quantitative analysis).

### Tests for Anions (Negative Ions)

**Carbonate (CO₃²⁻):**
Add dilute HCl → effervescence (fizzing); gas produced turns limewater milky
CO₃²⁻ + 2H⁺ → H₂O + CO₂↑

**Sulphate (SO₄²⁻):**
Add dilute HCl (to remove CO₃²⁻) then add barium chloride (BaCl₂) solution
→ WHITE precipitate insoluble in dilute HCl
SO₄²⁻ + Ba²⁺ → BaSO₄↓ (white, insoluble)

**Chloride (Cl⁻):**
Add dilute HNO₃ (to remove CO₃²⁻) then add silver nitrate (AgNO₃) solution
→ WHITE precipitate soluble in ammonia solution
Cl⁻ + Ag⁺ → AgCl↓ (white)
If bromide: cream precipitate (AgBr) — slightly soluble in ammonia
If iodide: YELLOW precipitate (AgI) — insoluble in ammonia

**Nitrate (NO₃⁻) — Brown ring test:**
Add FeSO₄ solution; then carefully pour concentrated H₂SO₄ down the side of the test tube
→ Brown ring forms at junction of two liquids
(Fe²⁺ reduces NO₃⁻ to NO; NO complexes with Fe²⁺ → brown [Fe(H₂O)₅NO]²⁺)

**Phosphate (PO₄³⁻):**
Add ammonium molybdate solution + dilute HNO₃; warm
→ Yellow precipitate forms

### Tests for Cations (Positive Ions) — Using NaOH

Add dilute NaOH to solution:
| Ion | Observation with NaOH | Additional test |
|-----|----------------------|-----------------|
| NH₄⁺ | No precipitate; on warming, gas produced (NH₃) turns damp red litmus BLUE | Smell/litmus test |
| Fe²⁺ | Green precipitate (Fe(OH)₂) | — |
| Fe³⁺ | Rust/brown precipitate (Fe(OH)₃) | Add KSCN → blood red colour |
| Cu²⁺ | Pale blue precipitate (Cu(OH)₂) | — |
| Al³⁺ | White precipitate; dissolves in EXCESS NaOH (amphoteric) | — |
| Zn²⁺ | White precipitate; dissolves in excess NaOH (amphoteric) | — |
| Ca²⁺ | White precipitate (sparingly soluble) | Flame test: brick red |
| Mg²⁺ | White precipitate (doesn't dissolve in excess NaOH) | — |
| Pb²⁺ | White precipitate; dissolves in excess NaOH | Add KI → yellow precipitate |
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Flame Tests and Gas Tests', $CONTENT$
## Flame Tests and Tests for Gases

### Flame Tests for Metal Cations
**Method:** Dip clean Nichrome wire loop in sample; hold in Bunsen flame; observe colour.

| Metal ion | Flame colour |
|-----------|-------------|
| Lithium (Li⁺) | Crimson red |
| Sodium (Na⁺) | Persistent yellow |
| Potassium (K⁺) | Lilac/violet |
| Calcium (Ca²⁺) | Brick red |
| Barium (Ba²⁺) | Apple/pale green |
| Copper (Cu²⁺) | Blue-green |
| Strontium (Sr²⁺) | Scarlet red |

Note: Sodium contamination can mask other colours — use blue cobalt glass to see K⁺ lilac through Na⁺ yellow.

### Tests for Common Gases
| Gas | Test | Positive result |
|-----|------|-----------------|
| Hydrogen (H₂) | Apply burning splint | Burns with squeaky "pop" |
| Oxygen (O₂) | Apply glowing splint | Splint relights |
| Carbon dioxide (CO₂) | Bubble through limewater | Limewater turns milky (white ppt of CaCO₃) |
| Ammonia (NH₃) | Damp red litmus paper | Turns blue; pungent smell |
| Chlorine (Cl₂) | Damp litmus paper | Turns red then bleaches white; green gas |
| Sulphur dioxide (SO₂) | Acidified potassium dichromate | Orange → green; pungent smell |
| Hydrogen chloride (HCl) | Ammonia gas near top of test tube | White fumes of NH₄Cl |
| Water vapour (H₂O) | Anhydrous cobalt(II) chloride paper | Blue → pink |
| Water (liquid) | Anhydrous copper(II) sulphate | White → blue |

### Tests for Organic Functional Groups
- **Alkene (C=C):** Bromine water (orange) → decolourised
- **Reducing sugar:** Benedict's test (blue → red/orange on heating)
- **Starch:** Iodine solution (orange/brown) → blue-black
- **Alcohol (-OH):** React with Na metal → H₂ produced; or esterification with carboxylic acid; orange acidified K₂Cr₂O₇ → green on oxidation
- **Carboxylic acid:** React with carbonates → CO₂; pH < 7; turn indicators red
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Separation Techniques and Water Treatment', $CONTENT$
## Separation Techniques

### Key Separation Methods

**1. Filtration:** Separate insoluble solid from liquid/solution
- Use filter paper in funnel; solid remains as residue; liquid passes as filtrate
- Example: CaCO₃ from water; sand from water

**2. Crystallisation/Evaporation:** Recover dissolved solid from solution
- Evaporate solution (hot) → saturated solution forms → cool → crystals form → filter, dry
- Example: Salt (NaCl) from seawater; CuSO₄·5H₂O crystals

**3. Simple Distillation:** Separate solvent from non-volatile solute
- Heat → solvent evaporates → vapour condensed → collected as distillate
- Example: Pure water from salt water; alcohol from fermentation broth

**4. Fractional Distillation:** Separate liquids with different boiling points
- Column maintained at temperature gradient
- Liquid with LOWER boiling point distils first
- Example: Crude oil refining; separation of air (liquid N₂ bp-196°C, O₂ bp-183°C)

**5. Chromatography:** Separate mixtures based on different solubilities/affinities
- Stationary phase (paper/silica) and mobile phase (solvent)
- Rf = distance moved by substance / distance moved by solvent
- Paper chromatography: ink, food dyes, leaf pigments

**6. Solvent Extraction:** Separate using two immiscible solvents
- Shake mixture with different solvent in separating funnel
- Layers separate; drain off different layers

### Water Purification for Drinking
1. **Screening/Sedimentation:** Remove large debris; allow heavy particles to settle
2. **Coagulation/Flocculation:** Add aluminium sulphate (Al₂(SO₄)₃) — Al³⁺ ions coagulate fine particles into larger clumps (flocs) that settle
3. **Sedimentation:** Allow flocs to settle
4. **Filtration:** Through sand/gravel filters → removes remaining particles and microorganisms
5. **Chlorination:** Add Cl₂ or sodium hypochlorite (NaOCl) → kills bacteria and viruses (disinfection)
6. **pH adjustment:** Add lime (Ca(OH)₂) if acidic; adjust to pH 7-8
7. **Fluoridation (in some countries):** Add small amounts of fluoride → prevents tooth decay

### Testing Water Quality
- **Hardness:** Add soap solution; hard water doesn't lather easily (scum forms)
- **pH:** Universal indicator or pH meter
- **Dissolved oxygen:** Important for aquatic life
- **Nitrate levels:** Test kits; high levels indicate agricultural pollution
- **Coliform bacteria:** Presence indicates faecal contamination (cholera/typhoid risk)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Qualitative Analysis', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
Describe the tests you would carry out to identify the following ions in solution:
(a) Fe³⁺  (b) SO₄²⁻  (c) CO₃²⁻

**Answer:**
(a) **Fe³⁺ (iron(III) ions):**
- Test 1: Add dilute NaOH → rust-brown/orange-brown precipitate (Fe(OH)₃) forms
- Test 2: Add potassium thiocyanate (KSCN) solution → **blood red colour** forms [Fe³⁺ + SCN⁻ → [Fe(SCN)]²⁺]

(b) **SO₄²⁻ (sulphate ions):**
- Add dilute hydrochloric acid first (to eliminate carbonate interference)
- Then add barium chloride (BaCl₂) solution
- Positive test: **white precipitate insoluble in dilute HCl** (BaSO₄)
[SO₄²⁻ + Ba²⁺ → BaSO₄↓]

(c) **CO₃²⁻ (carbonate ions):**
- Add dilute hydrochloric acid (or any dilute acid)
- Positive test: **vigorous effervescence** (gas evolved)
- Test gas: pass through limewater → **turns milky** (CO₂ confirmed)
[CO₃²⁻ + 2H⁺ → H₂O + CO₂↑; Ca(OH)₂ + CO₂ → CaCO₃↓ + H₂O]

---

### Question 2 (WASSCE 2021)
A gas is produced from a reaction. Describe how you would test for:
(a) Hydrogen  (b) Oxygen  (c) Carbon dioxide

**Answer:**
(a) **Hydrogen (H₂):** Apply a **burning/lighted splint** to the gas → if hydrogen is present, it burns with a characteristic **squeaky pop** sound.

(b) **Oxygen (O₂):** Insert a **glowing (not burning) splint** into the gas → oxygen **relights the splint** (oxygen supports combustion).

(c) **Carbon dioxide (CO₂):** Bubble the gas through **limewater (Ca(OH)₂ solution)** → if CO₂ is present, the limewater **turns milky** (white precipitate of CaCO₃ forms).

---

### Question 3 (WASSCE 2020)
Describe how to separate a mixture of sand and salt.

**Answer:**
1. **Add water** to the mixture — salt dissolves, sand does not
2. **Filter** the mixture — sand remains on filter paper (residue); salt solution (NaCl(aq)) passes through (filtrate)
3. **Evaporate** the filtrate slowly → water evaporates → salt crystallises out
4. Collect, filter, and dry the **salt crystals**
5. **Dry** the sand residue

**Sand:** recovered from step 2
**Salt:** recovered from step 3-4

---

### Practice Questions
1. State the observation when concentrated HCl is held near to ammonia gas.
2. Distinguish between the precipitate colours for: Fe²⁺, Fe³⁺, Cu²⁺, Zn²⁺ when NaOH is added.
3. Describe the test for chloride ions. What colour is the precipitate?
4. How would you distinguish between: ethanol and ethanoic acid using ONE test?
5. State the Rf value interpretation: Rf = 1 means what? Rf = 0 means what?

**Answers:**
1. Dense white fumes of ammonium chloride (NH₄Cl) form: NH₃(g) + HCl(g) → NH₄Cl(s)
2. Fe²⁺: green precipitate (Fe(OH)₂); Fe³⁺: rust-brown/orange precipitate (Fe(OH)₃); Cu²⁺: pale blue precipitate (Cu(OH)₂); Zn²⁺: white precipitate (Zn(OH)₂) that dissolves in excess NaOH
3. Add dilute HNO₃ first (to remove carbonate), then AgNO₃ solution → white precipitate (AgCl) that is soluble in dilute ammonia solution
4. Add Na₂CO₃ (sodium carbonate): ethanoic acid reacts → fizzing (CO₂ produced); ethanol does NOT react with Na₂CO₃ → no effervescence. OR: measure pH — ethanoic acid pH 3-4; ethanol ~pH 7
5. Rf = 1: substance moved as far as solvent → not retained by stationary phase (very soluble in mobile phase). Rf = 0: substance didn't move from origin → completely retained by stationary phase (not soluble in mobile phase). Rf values between 0 and 1 indicate partial retention.
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Qualitative Analysis Extended', $CONTENT$
## Systematic Identification: A Complete Approach

### Steps in Qualitative Analysis
1. **Physical examination:** Colour, state, smell of original sample
2. **Preliminary tests:** Heat sample; test with acids
3. **Tests for anions:** Systematic addition of test reagents
4. **Tests for cations:** Flame test + NaOH test
5. **Confirm conclusions:** All observations consistent with identification

### Environmental Chemistry Summary

**Air Pollutants:**
| Pollutant | Source | Effect | Solution |
|-----------|--------|--------|---------|
| CO₂ | Fossil fuel combustion | Greenhouse effect, climate change | Renewable energy |
| SO₂ | Coal/oil burning, metal smelting | Acid rain | Desulphurisation, low-S fuels |
| NO₂ | Car engines, power stations | Acid rain, smog | Catalytic converters |
| CO | Incomplete combustion | Toxic (binds haemoglobin) | Better combustion |
| CFC | Aerosols, refrigerants | Ozone depletion | Montreal Protocol (1989) |
| CH₄ | Agriculture (cattle, rice), landfill | Greenhouse effect | Reduce emissions |
| Particulates | Combustion, construction | Respiratory disease | Filters, controls |

**Water Pollutants:**
| Pollutant | Source | Effect |
|-----------|--------|--------|
| Nitrates/Phosphates | Agricultural runoff | Eutrophication |
| Heavy metals (Pb, Hg, Cd) | Industrial effluent, mining | Toxic; accumulate in food chain |
| Oil | Tanker spills | Kills wildlife, coats birds |
| Sewage | Human waste | Eutrophication, disease |
| Pesticides | Agriculture | Bioaccumulation; kill non-target organisms |

**The Ozone Layer:**
O₃ (ozone) in stratosphere absorbs harmful UV radiation from reaching Earth's surface.
CFC (chlorofluorocarbon) breaks down ozone:
CFC releases Cl• radicals; Cl• + O₃ → ClO• + O₂; ClO• + O• → Cl• + O₂
Net: O₃ destroyed; one Cl• can destroy 100,000+ ozone molecules (catalytic)
Solution: Montreal Protocol (1987) → phase-out of CFCs → ozone layer slowly recovering
$CONTENT$, 'examples', 5);

END $$;
