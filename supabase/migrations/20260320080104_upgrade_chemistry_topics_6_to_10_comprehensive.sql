
/*
  # Upgrade Chemistry Notes: Topics 6-10 (Comprehensive High-Quality Notes)

  ## Topics Upgraded
  6. Rates of Reaction and Equilibrium
  7. Oxidation and Reduction (Redox)
  8. Metals and the Activity Series
  9. Gas Laws and Mole Concept
  10. Stoichiometry and Quantitative Chemistry
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- ============================================================
  -- TOPIC 6: RATES OF REACTION AND EQUILIBRIUM
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Rates of Reaction and Equilibrium' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Collision Theory and Rate of Reaction', E'
## Rate of Reaction

**Rate of reaction** is the change in concentration of a reactant or product per unit time.

Rate = change in amount (or concentration) / time taken

**Units:** mol/dm3/s or mol dm-3 s-1

---

## Collision Theory

For a chemical reaction to occur:
1. Reactant particles must **COLLIDE** with each other
2. The collision must have sufficient **ENERGY** (equal to or greater than the activation energy)
3. The collision must have the correct **ORIENTATION** (molecules must hit the right part)

**Activation Energy (Ea):** The minimum energy required for a collision to result in a reaction.

**Effective collision:** A collision with enough energy AND correct orientation → forms products.

**Increasing rate means:** More frequent effective collisions per second.

---

## Factors Affecting Rate of Reaction

### 1. Concentration (for dissolved reactants)

**Effect:** Increasing concentration → INCREASES rate
**Reason:** More particles in the same volume → particles are closer together → more frequent collisions → more effective collisions per second → faster reaction

Example: Marble chips + HCl — higher [HCl] reacts faster

### 2. Pressure (for gases)

**Effect:** Increasing pressure → INCREASES rate
**Reason:** Gas molecules compressed into smaller volume → higher effective concentration → more frequent collisions

Example: Haber process run at 200 atm to speed up N2 + H2 reaction

### 3. Temperature

**Effect:** Increasing temperature → INCREASES rate significantly
**Two reasons:**
a) Particles move FASTER → more frequent collisions
b) More particles have energy GREATER than the activation energy → higher proportion of effective collisions

**Maxwell-Boltzmann distribution:** Distribution of molecular speeds/energies in a gas. At higher temperature, the curve shifts right — more molecules have E > Ea.

**Rule of thumb:** Rate approximately DOUBLES for every 10°C rise in temperature.

### 4. Surface Area (for solid reactants)

**Effect:** Increasing surface area → INCREASES rate
**Reason:** More surface exposed → more collision sites available → more reactant particles can collide simultaneously

**Examples:**
- Marble chips vs marble powder + acid: powder reacts much faster
- Flour dust/coal dust in air → explosive (huge surface area)
- Catalytic converter uses fine platinum mesh (high surface area catalyst)

### 5. Catalysts

**Catalyst:** A substance that increases the rate of reaction without being chemically changed or consumed in the overall reaction.

**How catalysts work:**
- Provide an alternative reaction pathway with a LOWER activation energy
- More particles have energy > new (lower) Ea → more effective collisions → faster reaction
- Not consumed (so small amounts suffice)

**Types:**
- **Homogeneous catalyst:** Same phase as reactants (e.g., H+ in esterification)
- **Heterogeneous catalyst:** Different phase from reactants (e.g., solid Fe in Haber process, Ni in hydrogenation)

**Industrial catalysts:**

| Process | Catalyst | Temperature |
|---------|---------|-------------|
| Haber process (N2 + H2 → NH3) | Iron (Fe) | 450°C |
| Contact process (SO2 → SO3) | Vanadium(V) oxide V2O5 | 450°C |
| Hydrogenation of oils | Nickel (Ni) | ~200°C |
| Catalytic cracking | Al2O3/SiO2 (zeolite) | ~500°C |
| Catalytic converter | Platinum + Rhodium | >300°C |
| Ostwald process (NH3 → HNO3) | Platinum-Rhodium gauze | 850°C |
| Decomposition of H2O2 | MnO2 (manganese dioxide) | Room temp |

---

## Measuring Rate of Reaction

### Methods

**1. Collection of gas produced:**
- Measure volume of gas (H2, CO2, O2) collected over time using gas syringe or inverted tube
- Example: Marble + HCl → CO2 collected; rate = volume of CO2 / time

**2. Mass loss:**
- Weigh reaction flask on balance as gas escapes
- Mass decreases over time; rate = decrease in mass / time
- Example: CaCO3 + HCl → CO2 escapes → mass decreases

**3. Color change / colorimetry:**
- Follow reaction by measuring absorbance of colored species
- Example: Bleaching of dye; permanganate decolorization

**4. Titrimetry (quench-and-titrate):**
- Remove aliquots at intervals; stop reaction; titrate for one reactant
- Plot concentration vs time

**5. Turbidity (precipitation reactions):**
- Measure time for precipitate to obscure a cross beneath the flask
- Example: Na2S2O3 + HCl → S (sulfur) precipitate → "clock reaction"

**Sodium Thiosulfate Clock Reaction:**
Na2S2O3(aq) + 2HCl(aq) → 2NaCl(aq) + SO2(g) + S(s) + H2O(l)
Rate ∝ 1/time (time for cross to become invisible)

**Hydrogen Peroxide Decomposition:**
2H2O2 → 2H2O + O2 (catalyst: MnO2, KI, or Fe3+)
Measure volume of O2 collected over time.
', 'overview', 1),

  (v_topic_id, 'Energy Profiles, Equilibrium and Le Chatelier''s Principle', E'
## Energy Profiles and Activation Energy

### Exothermic Reactions
- Products have LESS energy than reactants
- Energy released to surroundings (ΔH < 0, negative)
- Examples: combustion, neutralization, respiration, rusting

**Energy profile:** Reactants → high energy transition state (peak = Ea) → Products (lower than reactants)
Energy difference between reactants and products = ΔH (negative for exothermic)

### Endothermic Reactions
- Products have MORE energy than reactants
- Energy absorbed from surroundings (ΔH > 0, positive)
- Examples: photosynthesis, thermal decomposition, dissolving NH4NO3

**Energy profile:** Reactants → transition state peak → Products (higher than reactants)

### Effect of a Catalyst on Energy Profile
- Provides alternative lower-energy pathway
- Activation energy (Ea) is REDUCED
- The ΔH of the overall reaction is UNCHANGED (same start and end energies)
- More molecules now have sufficient energy → faster reaction

---

## Reversible Reactions and Dynamic Equilibrium

### Reversible Reactions
A **reversible reaction** is one that can proceed in both the forward and reverse direction.

Notation: A + B ⇌ C + D (double-headed arrow)

**Examples:**
- N2(g) + 3H2(g) ⇌ 2NH3(g)     (Haber process)
- SO2(g) + ½O2(g) ⇌ SO3(g)     (Contact process)
- Fe3+(aq) + SCN-(aq) ⇌ FeSCN2+(aq)   (red complex)
- CoCl4 2-(aq) + 6H2O(l) ⇌ Co(H2O)62+(aq) + 4Cl-(aq) (blue ⇌ pink)
- 2NO2(g) ⇌ N2O4(g)              (brown ⇌ colorless)

### Dynamic Equilibrium

**Dynamic equilibrium** is the state where:
1. Forward and reverse reactions occur simultaneously
2. The RATE of the forward reaction = RATE of the reverse reaction
3. Concentrations of reactants and products remain CONSTANT (not equal!)
4. Only in a CLOSED system (no substances added or removed)

> "Dynamic" because reactions are still occurring; "equilibrium" because net change = 0

---

## Le Chatelier''s Principle

**Le Chatelier''s Principle:** "If a change is made to a system at equilibrium, the system will respond in a way that tends to OPPOSE or counteract that change, until a new equilibrium is established."

### 1. Effect of Concentration Change

| Change | System response | Effect |
|--------|----------------|--------|
| Increase [reactant] | Equilibrium shifts to RIGHT (forward) | More products formed |
| Decrease [reactant] | Equilibrium shifts to LEFT (reverse) | More reactants formed |
| Increase [product] | Equilibrium shifts to LEFT | More reactants formed |
| Decrease [product] | Equilibrium shifts to RIGHT | More products formed |

### 2. Effect of Temperature Change

| Change | System response | Effect on Kc |
|--------|----------------|-------------|
| Increase temperature | Equilibrium shifts to ENDOTHERMIC side | Changes (Kc decreases for exothermic) |
| Decrease temperature | Equilibrium shifts to EXOTHERMIC side | Changes (Kc increases for exothermic) |

**Rule:** Temperature increase always favors the endothermic direction (system "absorbs" the extra heat).

### 3. Effect of Pressure Change (gases only)

| Change | System response |
|--------|----------------|
| Increase pressure | Equilibrium shifts to side with FEWER MOLES OF GAS |
| Decrease pressure | Equilibrium shifts to side with MORE MOLES OF GAS |

**Counting moles of gas:**
N2(g) + 3H2(g) ⇌ 2NH3(g)
Left side: 1 + 3 = 4 moles gas; Right side: 2 moles gas
Increase pressure → shift to RIGHT (2 moles gas < 4 moles gas) → more NH3

**If equal moles of gas on both sides:** Pressure has NO effect on equilibrium position.

### 4. Effect of a Catalyst

- A catalyst does NOT shift equilibrium position
- It only speeds up BOTH forward and reverse reactions equally
- Equilibrium is reached FASTER, not at a different position
- Does NOT change Kc

---

## The Haber Process (Industrial Application of Equilibrium)

**Reaction:** N2(g) + 3H2(g) ⇌ 2NH3(g)   ΔH = -92 kJ/mol (exothermic)

**Raw materials:**
- N2: from fractional distillation of liquid air
- H2: from steam reforming of natural gas (CH4 + H2O → CO + 3H2) or cracking

**Industrial conditions chosen:**

| Condition | Value | Reason |
|-----------|-------|--------|
| Temperature | 450°C | Compromise: lower T gives more yield (exothermic favored) but reaction too SLOW; 450°C gives acceptable rate |
| Pressure | 200 atm | Higher pressure shifts to right (fewer gas moles) → more NH3; very high pressure = expensive/dangerous equipment |
| Catalyst | Iron (Fe) with K2O/Al2O3 promoters | Increases rate; does not change equilibrium |
| Recycling | Unreacted N2 and H2 recycled | Improves overall yield (raises effective [N2] and [H2]) |

**Yield at 450°C, 200 atm ≈ 15%**
NH3 liquefied and removed (shifts equilibrium right by removing product)

**Uses of ammonia:**
- Fertilizers: (NH4)2SO4, NH4NO3, urea CO(NH2)2
- Nitric acid (HNO3) via Ostwald process
- Explosives (ammonium nitrate)
- Nylon and other polymers
- Cleaning products
', 'explanation', 2),

  (v_topic_id, 'Rate Graphs, Worked Examples and Experiments', E'
## Rate-Time and Concentration-Time Graphs

### Rate vs Time Graph
- Rate starts high (high concentration of reactants) → decreases as reactants are consumed
- Rate approaches zero when reaction is complete (or at equilibrium)

### Amount/Volume vs Time Graph
- Product formed: starts at 0, increases steeply at first, levels off (reaction complete)
- Reactant consumed: starts high, decreases, levels off at zero (if complete) or at equilibrium value

**Effect of changing conditions on graphs:**

**Higher concentration/temperature/surface area:**
- Steeper initial slope (faster rate)
- Same final volume of gas (if same moles) — BUT reached sooner
- The horizontal "finished" line is at the same height (same moles of product)

**Using catalyst:**
- Steeper curve
- Same final amount (same thermodynamics)
- Reached sooner

---

## Complete Worked Examples

### Example 1: Explaining Increased Rate with Temperature
**Q:** Explain, using collision theory, why increasing temperature from 25°C to 35°C approximately doubles the reaction rate.

**Answer:**
1. At higher temperature, gas/solution particles move with GREATER kinetic energy and therefore FASTER average speeds.
2. This means particles collide MORE FREQUENTLY per second.
3. More importantly, a much HIGHER PROPORTION of particles now have kinetic energy exceeding the activation energy (Ea).
4. Therefore more collisions are "effective" (produce reaction).
5. Combined effect: rate approximately doubles.

---

### Example 2: Le Chatelier — Concentration
**Q:** Consider: H2(g) + I2(g) ⇌ 2HI(g)

What happens to the equilibrium when: (a) More H2 is added? (b) Some HI is removed?

**Answer:**
(a) Adding H2 increases [H2]. System opposes by shifting equilibrium to the RIGHT (forward direction). More HI is formed; [H2] and [I2] decrease until new equilibrium reached. Net result: more HI produced.

(b) Removing HI decreases [HI]. System opposes by shifting equilibrium to the RIGHT (to produce more HI). More H2 and I2 react. Net result: equilibrium shifts right.

---

### Example 3: Haber Process Optimization
**Q:** In the Haber process (N2 + 3H2 ⇌ 2NH3, ΔH = -92 kJ/mol):
(a) What temperature condition is used, and why is it a compromise?
(b) What effect does increasing pressure have?
(c) Why is the catalyst used?

**Answer:**
(a) 450°C is used. This is a compromise:
- Lower temperature: Favors forward (exothermic) reaction → higher % yield; BUT rate is too slow (economically not viable)
- Higher temperature: Faster rate; BUT equilibrium shifts left (endothermic direction) → lower % yield; AND higher energy cost
- 450°C gives acceptable rate AND acceptable yield (~15%)

(b) Increasing pressure shifts equilibrium to the side with fewer gas moles. Left side: 1+3=4 moles gas; Right side: 2 moles gas. Shift to RIGHT → more NH3 formed. 200 atm is used (very high pressure equipment is expensive and dangerous, so this is also a compromise).

(c) The iron catalyst lowers the activation energy → more molecules have sufficient energy → faster rate → equilibrium reached sooner. The catalyst does NOT change the equilibrium position or yield, only the speed of attaining equilibrium.

---

### Example 4: Identifying Rate from a Graph
**Q:** Marble chips (CaCO3) react with excess HCl. Sketch and describe the graph of CO2 volume vs time for: (a) large chips, (b) small chips (powder), (c) same amount of large chips but at higher temperature.

**Answer:**
(a) **Large chips:** Gentle curve, moderate slope; levels off at V cm3 after time T.

(b) **Small chips (powder):** Steeper initial slope (higher surface area → faster rate); same final volume V (same moles CaCO3 react with excess acid); levels off earlier (finished sooner).

(c) **Higher temperature:** Steeper initial slope (higher rate); same final volume V; levels off earlier. The horizontal line is at the SAME height.

All three level off at the same volume V because: Same mass of CaCO3 + excess HCl → same total moles of CO2 produced.

---

### Example 5: Reversible Reaction and Color
**Q:** CoCl42-(aq) + 6H2O(l) ⇌ Co(H2O)62+(aq) + 4Cl-(aq)
                (blue)                              (pink)

Explain what happens when: (a) water is added, (b) the solution is heated.

**Answer:**
(a) Adding water increases [H2O]. By Le Chatelier''s principle, equilibrium shifts to the RIGHT to use up the added water. More Co(H2O)62+ forms. **Solution turns from blue to pink.**

(b) Heating: The forward reaction direction needs to be identified as endothermic or exothermic. Adding HCl (increasing [Cl-]) shifts LEFT → blue. The reaction Co2+(aq) → CoCl42- going left = endothermic. So forward is exothermic. Increasing temperature shifts equilibrium to the endothermic (LEFT) direction. **Solution turns bluer.** (The dehydrated complex CoCl42- forms more readily at higher temperature.)
', 'definitions', 3),

  (v_topic_id, 'Worked Examples with Full Solutions', E'
## More Worked Examples — Rates and Equilibrium

### Example 6: Contact Process (Le Chatelier Application)
**Q:** The Contact process uses: 2SO2(g) + O2(g) ⇌ 2SO3(g)   ΔH = -196 kJ/mol

Explain the conditions used: (a) 450°C, (b) 1-2 atm (relatively low pressure), (c) V2O5 catalyst.

**Answer:**
(a) **450°C (temperature compromise):**
- Reaction is exothermic → higher temperature shifts equilibrium LEFT (less SO3)
- Lower temperature → higher yield but unacceptably slow rate
- 450°C gives ~98% conversion of SO2 to SO3 with good rate

(b) **1-2 atm (relatively low pressure):**
- Left side: 2 + 1 = 3 moles gas; Right side: 2 moles gas
- Higher pressure would shift RIGHT (more SO3) but:
  - Yield already very high (98%) at atmospheric pressure
  - High pressure equipment is expensive
  - Not worth extra cost for small additional gain in yield

(c) **V2O5 catalyst:**
- Vanadium(V) oxide provides an alternative lower-Ea pathway
- Speeds up both forward and reverse reactions equally
- Allows equilibrium to be reached faster at 450°C
- Does not change yield; reduces cost (lower temperature possible without very slow rate)

---

### Example 7: Effect of Conditions on Rate vs Equilibrium
**Q:** Explain the difference between "increasing the rate of a reaction" and "shifting the equilibrium position."

**Answer:**
- **Increasing rate:** Means the reaction reaches equilibrium FASTER (catalyst, higher temperature, higher pressure all increase rate for gases). Does not necessarily mean more product overall.

- **Shifting equilibrium:** Means the final ratio of products to reactants changes. The position where the system comes to rest is different. Temperature and concentration changes can shift equilibrium.

**Key:** A catalyst only speeds up the RATE (both directions equally) — it does NOT shift equilibrium. Temperature changes both rate AND equilibrium position (the effect on rate and on equilibrium are separate).

---

### Example 8: Sodium Thiosulfate Experiment
**Q:** In an experiment, Na2S2O3 reacts with HCl and the time for a cross to disappear is measured:

| Temperature (°C) | Time (s) |
|-----------------|---------|
| 20 | 80 |
| 30 | 40 |
| 40 | 20 |

(a) Calculate the rate (1/t) at each temperature.
(b) What can you conclude?

**Answer:**
(a) Rate = 1/time:
- 20°C: 1/80 = 0.0125
- 30°C: 1/40 = 0.025
- 40°C: 1/20 = 0.050

(b) As temperature increases by 10°C, the time halves and the rate doubles. This demonstrates that for this reaction, **rate approximately doubles for every 10°C rise in temperature**, consistent with collision theory (more particles exceed activation energy at higher temperatures).
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Rates of Reaction and Equilibrium', E'
## WASSCE Practice Questions

### Multiple Choice

**Q1.** Which factor does NOT affect the rate of a chemical reaction?
A) Temperature  B) Concentration of reactants  C) Volume of solution  D) Presence of catalyst
**Answer: C** — Volume alone doesn''t change concentration; it is concentration that matters.

**Q2.** A catalyst increases the rate of reaction by:
A) Increasing activation energy  B) Increasing temperature  C) Providing lower activation energy pathway  D) Decreasing reactant concentration
**Answer: C**

**Q3.** For N2(g) + 3H2(g) ⇌ 2NH3(g), increasing pressure will:
A) Shift equilibrium to the left  B) Shift equilibrium to the right
C) Not affect equilibrium  D) Decrease the temperature
**Answer: B** — 4 moles gas on left → 2 on right; more pressure → shift to fewer moles (right).

**Q4.** For an exothermic reaction at equilibrium, raising the temperature will:
A) Increase yield of products  B) Decrease yield of products
C) Have no effect  D) Only increase rate, not yield
**Answer: B** — Temperature increase shifts equilibrium to endothermic side (reverse) → less product.

**Q5.** Which statement about a catalyst is TRUE?
A) A catalyst is consumed in the reaction  B) A catalyst changes the enthalpy of reaction
C) A catalyst shifts the equilibrium position  D) A catalyst lowers the activation energy
**Answer: D**

---

### Structured Questions

**Q6.** (a) State what is meant by ''rate of reaction''. [1]
(b) Describe how you would measure the rate of the reaction: CaCO3(s) + 2HCl(aq) → CaCl2 + H2O + CO2(g). Include what you measure and how rate is calculated. [4]
(c) Sketch a graph of CO2 volume vs time and explain the shape. [3]

**Answers:**
(a) Rate of reaction is the change in amount (or concentration) of reactant or product per unit time.

(b) Measure the VOLUME of CO2 gas collected (using a gas syringe or inverted measuring cylinder over water) at regular time intervals (e.g., every 30 seconds). Plot volume vs time. Rate = change in volume / change in time (from the gradient of the curve at any point, especially at the start for initial rate).

(c) Graph shape: starts steep (high rate — high [HCl], large surface area); curve gradually flattens; becomes horizontal when reaction is complete. **Explanation:** As HCl is used up (or CaCO3 dissolves), concentration decreases → fewer collisions → rate decreases → less CO2 per second → curve flattens → horizontal when one reactant is fully used.

---

**Q7.** (a) State Le Chatelier''s principle. [2]
(b) For: N2(g) + 3H2(g) ⇌ 2NH3(g)  ΔH = -92 kJ/mol
Predict the effect on equilibrium of:
(i) Increasing pressure [2] (ii) Increasing temperature [2] (iii) Adding more N2 [2] (iv) Using an iron catalyst [1]

**Answers:**
(a) When a change is made to a system at dynamic equilibrium, the system responds by shifting in the direction that tends to oppose or counteract that change, reaching a new equilibrium position.

(b)
(i) Increasing pressure: shifts to the RIGHT (side with fewer gas moles: 4 moles → 2 moles). More NH3 produced. Yield increases.

(ii) Increasing temperature: shifts to the LEFT (endothermic direction, since forward is exothermic at -92 kJ/mol). Less NH3 produced. Yield decreases.

(iii) Adding more N2: increases [N2]. Shifts to the RIGHT to use up the added N2. More NH3 produced.

(iv) Iron catalyst: does NOT shift equilibrium at all. It only increases the rate at which equilibrium is reached (both forward and reverse rates increase equally).
', 'practice', 5);


  -- ============================================================
  -- TOPIC 7: OXIDATION AND REDUCTION (REDOX)
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Oxidation and Reduction (Redox)' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Oxidation, Reduction and Oxidation States', E'
## Oxidation and Reduction — Key Definitions

### Three Ways to Define Redox

**1. In terms of OXYGEN:**
- **Oxidation:** Gain of oxygen
- **Reduction:** Loss of oxygen
Example: CuO + H2 → Cu + H2O
  - CuO loses oxygen → Cu is reduced (CuO is the oxidizing agent)
  - H2 gains oxygen → H2O is oxidized (H2 is the reducing agent)

**2. In terms of HYDROGEN:**
- **Oxidation:** Loss of hydrogen
- **Reduction:** Gain of hydrogen
Example: CH4 + Cl2 → CH3Cl + HCl
  - Cl2 gains H → HCl is reduced (Cl2 is the oxidizing agent)

**3. In terms of ELECTRONS (most general and precise):**
- **Oxidation:** Loss of electrons (OIL — Oxidation Is Loss)
- **Reduction:** Gain of electrons (RIG — Reduction Is Gain)
- Mnemonic: **OIL RIG**

**Oxidizing agent:** Causes OXIDATION of another species; itself gets REDUCED (gains electrons)
**Reducing agent:** Causes REDUCTION of another species; itself gets OXIDIZED (loses electrons)

**Key rule:** Oxidation and reduction ALWAYS occur together (you cannot have one without the other) → hence "REDOX" reaction.

---

## Oxidation States (Oxidation Numbers)

The **oxidation state** of an atom in a compound is the charge the atom would have if electrons were assigned to the more electronegative atom in each bond.

### Rules for Assigning Oxidation States

1. Free elements (uncombined): oxidation state = **0** (e.g., Fe, O2, Cl2, Na)
2. Simple monatomic ions: oxidation state = charge of ion (e.g., Na+ = +1, Ca2+ = +2, Cl- = -1, O2- = -2)
3. Oxygen: **-2** in most compounds; EXCEPTIONS: H2O2 (peroxides) = -1; OF2 = +2
4. Hydrogen: **+1** in most compounds; EXCEPTION: metal hydrides (NaH, CaH2) = -1
5. Fluorine: always **-1**
6. Group I metals in compounds: **+1**
7. Group II metals in compounds: **+2**
8. Aluminium in compounds: **+3**
9. Sum of oxidation states in a neutral compound = **0**
10. Sum of oxidation states in a polyatomic ion = charge of that ion

### Working Out Oxidation States — Worked Method

**Example 1: Find oxidation state of Mn in MnO4-**
Let Mn = x; O = -2; ion charge = -1
x + 4(-2) = -1
x - 8 = -1
x = +7
**Mn is +7 in permanganate ion (MnO4-)**

**Example 2: Find oxidation state of Cr in Cr2O72-**
Let Cr = x; O = -2; ion charge = -2
2x + 7(-2) = -2
2x - 14 = -2
2x = 12
x = +6
**Cr is +6 in dichromate ion (Cr2O72-)**

**Example 3: Find oxidation state of S in H2SO4**
Let S = x; H = +1; O = -2
2(+1) + x + 4(-2) = 0
2 + x - 8 = 0
x = +6
**S is +6 in H2SO4**

---

### Common Oxidation States

| Element | Common Oxidation States | Examples |
|---------|------------------------|---------|
| Iron (Fe) | +2, +3 | Fe2+ (FeSO4), Fe3+ (Fe2O3) |
| Copper (Cu) | +1, +2 | Cu2O (Cu+), CuO (Cu2+) |
| Manganese (Mn) | +2, +4, +7 | MnO (Mn2+), MnO2 (Mn4+), KMnO4 (Mn7+) |
| Chromium (Cr) | +2, +3, +6 | Cr2O3 (Cr3+), K2Cr2O7 (Cr6+) |
| Sulfur (S) | -2, 0, +4, +6 | H2S (-2), S (0), SO2 (+4), H2SO4 (+6) |
| Nitrogen (N) | -3, 0, +1 to +5 | NH3 (-3), N2 (0), NO (+2), NO2 (+4), HNO3 (+5) |
| Carbon (C) | -4 to +4 | CH4 (-4), CO (+2), CO2 (+4) |
| Chlorine (Cl) | -1, +1, +3, +5, +7 | HCl (-1), HOCl (+1), HClO3 (+5) |

---

## Identifying Redox Reactions

A reaction is a REDOX reaction if oxidation states CHANGE.

**Check:** Compare oxidation states of atoms before and after reaction.
- If any atom''s oxidation state changes → REDOX reaction
- Atom that increases in oxidation state → OXIDIZED
- Atom that decreases in oxidation state → REDUCED

**Example:** Fe2O3 + 3CO → 2Fe + 3CO2
- Fe: from +3 (in Fe2O3) to 0 (in Fe) → DECREASES → Fe is REDUCED
- C: from +2 (in CO) to +4 (in CO2) → INCREASES → C is OXIDIZED
- This IS a redox reaction; CO is the reducing agent; Fe2O3 is the oxidizing agent
', 'overview', 1),

  (v_topic_id, 'Half-Equations, Oxidizing/Reducing Agents and Tests', E'
## Half-Equations

**Half-equations** show either the oxidation (losing electrons) or reduction (gaining electrons) half of a redox reaction separately.

**Rules for writing half-equations:**
1. Write the species being oxidized or reduced on the left and products on the right
2. Balance all atoms EXCEPT O and H first
3. Balance O by adding H2O
4. Balance H by adding H+
5. Balance charge by adding electrons (e-)
6. Check: atoms balanced AND charges balanced

### Examples of Half-Equations

**Fe2+ → Fe3+ (oxidation):**
Fe2+ → Fe3+ + e-

**MnO4- → Mn2+ (reduction, in acid):**
MnO4- → Mn2+
Balance Mn: already balanced (1:1)
Balance O: add 4H2O on right: MnO4- → Mn2+ + 4H2O
Balance H: add 8H+ on left: 8H+ + MnO4- → Mn2+ + 4H2O
Balance charge: Left = 8(+1) + (-1) = +7; Right = +2; Need 5e- on left:
8H+ + MnO4- + 5e- → Mn2+ + 4H2O

**Cr2O72- → Cr3+ (reduction, in acid):**
Cr2O72- → 2Cr3+
Balance O: Cr2O72- → 2Cr3+ + 7H2O
Balance H: 14H+ + Cr2O72- → 2Cr3+ + 7H2O
Balance charge: Left = +14 - 2 = +12; Right = +6; Add 6e- to left:
14H+ + Cr2O72- + 6e- → 2Cr3+ + 7H2O

**Cl2 → Cl- (reduction):**
Cl2 + 2e- → 2Cl-

**H2O2 → O2 (oxidation):**
H2O2 → O2 + 2H+ + 2e-

---

### Combining Half-Equations for Full Ionic Equation

To combine: multiply each half-equation so electrons cancel, then add.

**Example: KMnO4 oxidizing Fe2+ in acidic solution:**

Oxidation: Fe2+ → Fe3+ + e-                      (multiply by 5)
Reduction: 8H+ + MnO4- + 5e- → Mn2+ + 4H2O      (multiply by 1)

Combined:
5Fe2+ → 5Fe3+ + 5e-
8H+ + MnO4- + 5e- → Mn2+ + 4H2O
---
5Fe2+ + 8H+ + MnO4- → 5Fe3+ + Mn2+ + 4H2O

**Full ionic equation: 5Fe2+(aq) + 8H+(aq) + MnO4-(aq) → 5Fe3+(aq) + Mn2+(aq) + 4H2O(l)**

---

## Common Oxidizing and Reducing Agents

### Important Oxidizing Agents

| Reagent | Oxidation state of key atom | Reduced to | Color change |
|---------|---------------------------|-----------|-------------|
| KMnO4 (acidic) | Mn: +7 | Mn2+ | Purple → colorless |
| KMnO4 (neutral/alkaline) | Mn: +7 | MnO2 | Purple → brown precipitate |
| K2Cr2O7 (acidic) | Cr: +6 | Cr3+ | Orange → green |
| Cl2 | Cl: 0 | Cl-: -1 | Yellow-green → colorless |
| Br2 | Br: 0 | Br-: -1 | Red-brown → colorless |
| H2O2 | O: -1 | H2O: -2 | — |
| O2 | O: 0 | O2-: -2 | — |
| HNO3 (concentrated) | N: +5 | NO2: +4 | — |
| Fe3+ ions | Fe: +3 | Fe2+: +2 | — |

### Important Reducing Agents

| Reagent | Oxidation state | Oxidized to | Notes |
|---------|----------------|------------|-------|
| Fe2+ ions | Fe: +2 | Fe3+: +3 | Pale green → yellow-brown |
| H2S | S: -2 | S: 0 (sulfur) or SO42-: +6 | |
| SO2 | S: +4 | SO42-: +6 | |
| CO | C: +2 | CO2: +4 | Blast furnace |
| H2 | H: 0 | H+: +1 | |
| Na, K, Mg (metals) | 0 | positive ions | Active metals |
| I- ions | I: -1 | I2: 0 | |

---

## Tests for Oxidizing and Reducing Agents

| Test | Reagent | Positive Result |
|------|---------|----------------|
| Test for oxidizing agent | Acidified KI solution | I- → I2 → turns solution brown; starch paper turns blue-black |
| Test for reducing agent | Acidified KMnO4 | Purple → colorless |
| Test for reducing agent | Acidified K2Cr2O7 | Orange → green |
| Test for Cl2 | Damp starch-iodide paper | Paper turns blue-black (Cl2 oxidizes I- → I2; I2 + starch → blue) |
| Test for SO2 | Acidified K2Cr2O7 | Orange → green (SO2 is reducing agent) |
| Test for H2S | Lead(II) acetate paper | Paper turns black (PbS forms) |

---

## Corrosion and Rusting

**Rusting** is the corrosion of iron/steel by a redox reaction:

**Overall:** 4Fe + 3O2 + 2nH2O → 2Fe2O3·nH2O (hydrated iron(III) oxide = rust)

**Electrochemical mechanism:**
- Oxidation at anode: Fe → Fe2+ + 2e- (iron oxidizes)
- Reduction at cathode: O2 + 2H2O + 4e- → 4OH- (oxygen reduced)
- Fe2+ and OH- combine → Fe(OH)2 → oxidized further to Fe2O3 (rust)

**Conditions required for rusting:** BOTH oxygen AND water must be present.
Test: Iron in dry O2 = no rust; iron in pure water (no O2) = no rust; iron in water + O2 = rusts.

**Electrolytes (salt water, acid rain) accelerate rusting** by increasing conductivity of the electrolyte.

**Methods of preventing rust:**

| Method | Description |
|--------|-------------|
| Painting | Barrier coating — prevents O2 and H2O contact |
| Greasing/oiling | Barrier for moving parts (engines, chains) |
| Tin plating | Protective barrier; but if scratched, iron rusts faster (Sn less reactive than Fe) |
| Zinc plating (galvanizing) | Sacrificial protection: Zn more reactive, oxidizes first; PROTECTS iron even if scratched |
| Alloying (stainless steel) | Iron + Cr + Ni → self-passivating oxide layer; very corrosion-resistant |
| Electroplating with Cr/Ni | Protective + decorative barrier |
| Cathodic protection | Connect Fe to more reactive metal (Mg or Zn) via wire; reactive metal acts as anode and oxidizes sacrificially |
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Redox Chemistry', E'
## Worked Examples — Oxidation and Reduction

### Example 1: Assigning Oxidation States
**Q:** Find the oxidation state of each underlined element:
(a) N in HNO3  (b) S in Na2S2O3  (c) Cl in ClO3-  (d) Fe in Fe3O4

**Solutions:**

(a) HNO3: H=+1, O=-2
+1 + N + 3(-2) = 0
1 + N - 6 = 0
N = +5

(b) Na2S2O3: Na=+1, O=-2
2(+1) + 2S + 3(-2) = 0
2 + 2S - 6 = 0
2S = 4
S = +2

(c) ClO3-: O=-2; charge = -1
Cl + 3(-2) = -1
Cl - 6 = -1
Cl = +5

(d) Fe3O4 (contains Fe2+ and Fe3+; formula = FeO·Fe2O3):
2Fe3+ + 1Fe2+: Average = (2×3 + 1×2)/3 = 8/3 = +8/3 ≈ +2.67
(Or: 3Fe + 4(-2) = 0; 3Fe = 8; Fe = +8/3)

---

### Example 2: Identifying Redox Changes
**Q:** For the reaction: Zn + CuSO4 → ZnSO4 + Cu
(a) Which substance is oxidized? Which is reduced?
(b) Identify the oxidizing agent and reducing agent.

**Solution:**
Assign oxidation states:
- Zn: 0 (free element) → +2 (in ZnSO4) — increases → OXIDIZED
- Cu: +2 (in CuSO4) → 0 (free element) — decreases → REDUCED
- S: +6 in both; O: -2 in both; (not changed)

(a) Zn is oxidized; Cu2+ (in CuSO4) is reduced

(b) Oxidizing agent: CuSO4 (causes Zn to be oxidized; itself reduced)
    Reducing agent: Zn (causes Cu2+ to be reduced; itself oxidized)

**Ionic equation:** Zn(s) + Cu2+(aq) → Zn2+(aq) + Cu(s)
**Oxidation half:** Zn → Zn2+ + 2e-
**Reduction half:** Cu2+ + 2e- → Cu

---

### Example 3: Writing and Combining Half-Equations
**Q:** Write the full ionic equation for the reaction of Fe2+ with K2Cr2O7 in acidic solution.

**Solution:**
Oxidation half: Fe2+ → Fe3+ + e-    (multiply × 6)
Reduction half: 14H+ + Cr2O72- + 6e- → 2Cr3+ + 7H2O    (× 1)

Combining:
6Fe2+ → 6Fe3+ + 6e-
14H+ + Cr2O72- + 6e- → 2Cr3+ + 7H2O

**Full ionic equation: 6Fe2+(aq) + 14H+(aq) + Cr2O72-(aq) → 6Fe3+(aq) + 2Cr3+(aq) + 7H2O(l)**

Observations: orange K2Cr2O7 solution turns green (Cr3+ forms)

---

### Example 4: Oxidation State in Organic Chemistry
**Q:** What is the oxidation state of carbon in: CH4, CH3OH, CH2O, HCOOH, CO2?

**Solution:**
- CH4: C + 4(+1) = 0 → C = -4
- CH3OH: C + 3(+1) + (-2) + (+1) = 0 → C = -2
  [Actually: C + 4H(-OH) framework. C = x; 4H=+4; O=-2, H of OH = +1; x + 4(+1) - 2 + 1 = 0 is wrong; use: x + 3(+1) + OH: x + 3(+1) + (-1) = 0 → x = -2]
- CH2O (methanal/formaldehyde): x + 2(+1) + (-2) = 0 → x = 0
- HCOOH (methanoic acid): x + (+1) + 2(-2) + (+1) = 0 → x + 1 - 4 + 1 = 0 → x = +2
- CO2: x + 2(-2) = 0 → x = +4

**Trend:** C is more oxidized as you go from CH4 → CH3OH → HCHO → HCOOH → CO2 (this is oxidation of methanol to methanoic acid to CO2!)

---

### Example 5: Rusting Prevention
**Q:** Explain why a zinc coating protects iron from rusting even when the zinc is scratched.

**Solution:**
Zinc is MORE reactive than iron (higher in the activity/electrochemical series). When the zinc coating is scratched, both zinc and iron are exposed.

In a galvanic couple:
- Zinc acts as the ANODE (oxidizes first): Zn → Zn2+ + 2e-
- Iron acts as the CATHODE and is PROTECTED

The zinc "sacrifices" itself — it corrodes preferentially, while the iron underneath is protected from oxidation. This is called **sacrificial protection** or **cathodic protection**.

Contrast with TIN plating: Tin is LESS reactive than iron. When scratched, iron acts as the anode (more reactive) → iron rusts FASTER than if uncoated.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Redox Chemistry', E'
## WASSCE Practice Questions — Oxidation and Reduction

### Multiple Choice

**Q1.** Which of the following describes oxidation?
A) Gain of electrons  B) Loss of electrons  C) Gain of oxygen  D) Both B and C
**Answer: D** — Oxidation = loss of electrons = gain of oxygen (both valid)

**Q2.** The oxidation state of manganese in KMnO4 is:
A) +2  B) +4  C) +6  D) +7
**Answer: D** — K=+1, O=-2; +1 + Mn + 4(-2) = 0; Mn = +7

**Q3.** In the reaction: 2Na + Cl2 → 2NaCl
A) Na is reduced and Cl2 is oxidized
B) Na is oxidized and Cl2 is reduced
C) Both Na and Cl2 are oxidized
D) No redox change occurs
**Answer: B** — Na: 0 → +1 (oxidized); Cl: 0 → -1 (reduced)

**Q4.** K2Cr2O7(aq) is used as a test for reducing agents. A positive result shows:
A) Purple to colorless  B) Orange to green  C) Blue to colorless  D) Green to orange
**Answer: B** — Cr6+ (orange) reduced to Cr3+ (green)

**Q5.** Which method protects iron by sacrificial protection?
A) Tin plating  B) Painting  C) Zinc plating (galvanizing)  D) Chromium plating
**Answer: C** — Zinc is more reactive → sacrificial anode.

---

### Structured Questions

**Q6.** (a) Define oxidation and reduction in terms of electrons. [2]
(b) Give the oxidation states of: (i) S in SO42-; (ii) N in NO2-; (iii) Cr in CrO42- [3]
(c) Write and balance the half-equations for: (i) Fe2+ → Fe3+ (ii) Cr2O72- → Cr3+ (acidic solution) [4]

**Answers:**
(a) Oxidation = loss of electrons. Reduction = gain of electrons.

(b)
(i) SO42-: x + 4(-2) = -2 → x = +6
(ii) NO2-: x + 2(-2) = -1 → x = +3
(iii) CrO42-: x + 4(-2) = -2 → x = +6

(c)
(i) Fe2+ → Fe3+ + e-

(ii) Cr2O72- → 2Cr3+
Balance O: Cr2O72- → 2Cr3+ + 7H2O
Balance H: 14H+ + Cr2O72- → 2Cr3+ + 7H2O
Balance charge: left = +12; right = +6; add 6e- to left:
**14H+(aq) + Cr2O72-(aq) + 6e- → 2Cr3+(aq) + 7H2O(l)**

---

**Q7.** Iron rusts in moist air. (a) Write the equation for rusting. (b) State two conditions needed. (c) Explain why galvanizing with zinc protects iron even after being scratched. [6]

**Answers:**
(a) 4Fe(s) + 3O2(g) + 2xH2O(l) → 2Fe2O3·xH2O (rust, hydrated iron(III) oxide)

(b) Two conditions needed: (i) Presence of oxygen (O2/air); (ii) Presence of water (moisture/humidity)

(c) Zinc is more reactive than iron (higher in the electrochemical series). When zinc is scratched and both metals are exposed to moisture and oxygen, an electrochemical (galvanic) cell forms. Zinc acts as the ANODE and is oxidized preferentially (Zn → Zn2+ + 2e-). Iron acts as the CATHODE and is protected. The zinc sacrifices itself, corroding instead of the iron. This is called **sacrificial protection** — the iron is protected as long as zinc remains.
', 'practice', 5);


  -- ============================================================
  -- TOPIC 8: METALS AND THE ACTIVITY SERIES
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Metals and the Activity Series' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Metal Properties and the Activity Series', E'
## General Properties of Metals

**Physical properties:**
- Solid at room temperature (except Hg — liquid)
- High melting and boiling points (metallic bonding)
- High density (except Na, K which float on water)
- Good conductors of electricity and heat (delocalised electrons)
- Malleable (can be beaten into sheets)
- Ductile (can be drawn into wire)
- Lustrous (shiny surface — electrons reflect light)
- Sonorous (ring when struck)

**Chemical properties:**
- Tend to LOSE electrons (oxidized) to form positive ions (cations)
- React with oxygen to form oxides
- React with water (reactive metals) to form hydroxides + H2
- React with dilute acids (except noble metals) to form salts + H2
- Form ionic compounds

---

## The Activity Series (Reactivity Series)

The activity series ranks metals (and hydrogen) in order of their reactivity — how readily they lose electrons to form positive ions.

**COMPLETE Activity Series (Most to Least Reactive):**

```
MOST REACTIVE
|  Potassium (K)         — reacts violently with cold water
|  Sodium (Na)           — reacts vigorously with cold water
|  Lithium (Li)          — reacts with cold water
|  Barium (Ba)           — reacts with cold water
|  Calcium (Ca)          — reacts with cold water
|  Magnesium (Mg)        — reacts slowly with cold water; fast with steam
|  Aluminium (Al)        — reacts with steam (not cold water)
|  Zinc (Zn)             — reacts with steam
|  Iron (Fe)             — reacts with steam
|  Lead (Pb)             — reacts very slowly with dilute acids
|  HYDROGEN (H2)         — (reference point — not a metal)
|  Copper (Cu)           — does not react with water or dilute acids
|  Mercury (Hg)          — does not react with water
|  Silver (Ag)           — very unreactive
|  Gold (Au)             — very unreactive
   Platinum (Pt)         — most unreactive (noble metal)
LEAST REACTIVE
```

**Mnemonic (WASSCE favourite):** "**P**lease **S**top **L**ying; **B**asil **C**an **M**ake **A**ll **Z**inc **I**ron **L**ead, **H**owever **C**opper **M**ust **S**it **A**lone **G**olden **P**latinum"
→ K, Na, Li, Ba, Ca, Mg, Al, Zn, Fe, Pb, H, Cu, Hg, Ag, Au, Pt

---

## Reactions of Metals with Water

| Metal | Reaction | Products | Conditions |
|-------|---------|---------|-----------|
| Potassium (K) | Very violent, burns | KOH + H2 | Cold water; burns with lilac flame |
| Sodium (Na) | Vigorous, fizzes, moves | NaOH + H2 | Cold water; floats, darts around |
| Lithium (Li) | Gently fizzes | LiOH + H2 | Cold water; floats, moves slowly |
| Calcium (Ca) | Moderate fizzing | Ca(OH)2 + H2 | Cold water; sinks |
| Magnesium (Mg) | Very slow with cold water | Mg(OH)2 + H2 | Fast with steam → MgO + H2 |
| Aluminium (Al) | Reacts with steam | Al2O3 + H2 | Oxide layer prevents room-temp reaction |
| Zinc (Zn) | Reacts with steam | ZnO + H2 | Steam only |
| Iron (Fe) | Reacts with steam | Fe3O4 + H2 | Steam only (forms mixed oxide) |
| Copper, Silver, Gold | No reaction | — | — |

**General equations:**
- With cold water: 2M + 2H2O → 2MOH + H2      (Group I metals)
- With cold water: M + 2H2O → M(OH)2 + H2       (Ca, Ba)
- With steam: M + H2O(steam) → MO + H2           (Mg, Zn, Fe)

**Fe with steam (special):** 3Fe + 4H2O → Fe3O4 + 4H2 (magnetite forms)

---

## Reactions of Metals with Dilute Acids

| Metal | Reaction with dilute HCl or H2SO4 | Speed |
|-------|----------------------------------|-------|
| K, Na, Li | Explosive/very dangerous | Do not use |
| Ca | Very vigorous | Fast |
| Mg | Very fast | Fast |
| Al | Reacts (oxide layer slows initial reaction) | Moderate |
| Zn | Reacts | Moderate |
| Fe | Reacts | Slow-moderate |
| Pb | Very slow (insoluble PbCl2/PbSO4 forms) | Very slow |
| Cu and below | NO reaction | None |

**General equation:** Metal + Acid → Salt + Hydrogen gas
Fe + 2HCl → FeCl2 + H2
Zn + H2SO4 → ZnSO4 + H2
Mg + 2HCl → MgCl2 + H2
2Al + 3H2SO4 → Al2(SO4)3 + 3H2

---

## Reactions of Metals with Oxygen

| Metal | Product | Conditions |
|-------|---------|-----------|
| K, Na | Metal oxide/peroxide | React even in cool air |
| Mg | MgO (white) | Burns brilliantly with white light |
| Al | Al2O3 | Protective oxide layer forms instantly |
| Fe | Fe2O3 (rusting) or Fe3O4 | Slow at room temp; Fe3O4 at high temp |
| Cu | CuO (black) | Black coating on heating |
| Ag, Au, Pt | No reaction | Noble metals |

**Mg burning:** 2Mg + O2 → 2MgO (intense white flame, very bright)
**Fe burning in O2:** 3Fe + 2O2 → Fe3O4 (sparks — used in fireworks)
', 'overview', 1),

  (v_topic_id, 'Displacement Reactions, Metal Extraction and Alloys', E'
## Displacement Reactions

**Displacement reaction:** A more reactive metal displaces a less reactive metal from its compound.

**Rule:** If Metal A is more reactive than Metal B, then:
A + BX → AX + B (A displaces B from its salt solution)

| Reaction | Observation | Activity Series position |
|---------|-------------|--------------------------|
| Zn + CuSO4 → ZnSO4 + Cu | Blue solution decolorizes; pink/brown copper deposits | Zn above Cu |
| Fe + CuSO4 → FeSO4 + Cu | Blue solution fades; copper plates on iron | Fe above Cu |
| Cu + ZnSO4 → NO REACTION | No change | Cu below Zn |
| Mg + FeSO4 → MgSO4 + Fe | Pale green solution; iron deposits on Mg | Mg above Fe |
| Zn + 2AgNO3 → Zn(NO3)2 + 2Ag | Colorless solution + shiny silver deposits | Zn above Ag |

**Ionic equations for displacement:**
- Zn + Cu2+ → Zn2+ + Cu   (Zn2+ = 0 → +2; Cu2+ = +2 → 0)
- Fe + Cu2+ → Fe2+ + Cu
- These are REDOX reactions: more reactive metal loses electrons; less reactive metal ion gains electrons.

---

## Metal Extraction from Ores

The method used to extract a metal depends on its position in the activity series.

| Activity Series Position | Extraction Method | Reason |
|--------------------------|------------------|--------|
| K, Na, Li, Ca, Mg, Al (very reactive) | Electrolysis of molten ore | Too reactive — cannot reduce with carbon |
| Zn, Fe, Pb, Sn, Cu (medium reactivity) | Reduction by carbon/coke (smelting) | Carbon can reduce these metal oxides |
| Cu, Ag, Au, Pt (low reactivity) | Found native (uncombined) or simple heating | React so little they occur free in nature |

### Extraction of Iron — The Blast Furnace

**Raw materials:**
- Iron ore (haematite, Fe2O3 — main ore; also magnetite Fe3O4, siderite FeCO3)
- Coke (carbon)
- Limestone (CaCO3) — to remove acidic impurities (SiO2, Al2O3)
- Air (hot blast)

**Key Reactions in Blast Furnace:**

1. Coke burns in hot air blast:
   C + O2 → CO2

2. CO2 reduced by excess coke to CO:
   CO2 + C → 2CO   (carbon monoxide — reducing agent)

3. Iron oxide reduced by CO (main reaction):
   Fe2O3 + 3CO → 2Fe + 3CO2
   Also: Fe3O4 + 4CO → 3Fe + 4CO2

4. Limestone decomposes (thermal decomposition):
   CaCO3 → CaO + CO2

5. CaO reacts with acidic impurities (slag formation):
   CaO + SiO2 → CaSiO3   (calcium silicate = slag — liquid, floats on iron)
   CaO + Al2O3 → Ca(AlO2)2

6. Iron (molten) sinks to bottom, tapped off periodically.

**Temperature zones in blast furnace:**
- Bottom: ~2000°C (hottest — combustion of coke)
- Middle: ~700-1000°C (reduction of Fe2O3 by CO)
- Top: ~200°C (drying and preheating materials)

**Product: Pig iron (cast iron)** — ~4% C (impure, brittle)

---

### Extraction of Aluminium — Hall-Héroult Process

**Ore:** Bauxite (Al2O3·2H2O impure, with Fe2O3, SiO2)
**Purification:** Bayer process — dissolve in NaOH; filter; precipitate Al(OH)3; heat → pure Al2O3
**Electrolyte:** Al2O3 dissolved in molten cryolite (Na3AlF6) — reduces melting point from 2072°C to ~950°C

**At cathode:** Al3+ + 3e- → Al    (liquid aluminium tapped off)
**At anode:** 2O2- → O2 + 4e-     (O2 oxidizes graphite anodes → CO2; anodes replaced)

**Why electrolysis (not carbon reduction)?**
Al is too reactive — Al2O3 cannot be reduced by carbon at practical temperatures (Al would re-oxidize).

---

### Alloys — Mixtures of Metals

**Alloy:** A mixture of a metal with one or more other elements (metals or non-metals) to improve properties.

**Why make alloys?**
- Stronger (harder) than pure metals
- More resistant to corrosion
- Better specific properties (e.g., lower melting point for solder)

| Alloy | Composition | Properties/Uses |
|-------|-------------|----------------|
| Steel (mild) | Fe + ~0.2% C | Strong, tough — construction, cars |
| Steel (high-carbon) | Fe + 0.5-2% C | Very hard but brittle — cutting tools |
| Stainless steel | Fe + Cr (18%) + Ni (8%) | Corrosion resistant — cutlery, surgical tools |
| Brass | Cu + Zn | Strong, resistant — door fittings, musical instruments |
| Bronze | Cu + Sn | Hard, resistant to seawater — bearings, sculptures |
| Solder | Pb + Sn | Low melting point (~183°C) — electrical joints |
| Duralumin | Al + Cu + Mg + Mn | Light and strong — aircraft bodies |
| Nichrome | Ni + Cr | High resistance wire — electric heaters |

**Why are alloys harder than pure metals?**
In a pure metal, layers of identical-sized ions can slide past each other easily (metallic bonding). In an alloy, atoms of different sizes disrupt the regular lattice and prevent layers from sliding → HARDER, STRONGER.

---

## Flame Tests and Tests for Metal Ions

### Flame Tests
Used to identify Group I and Group II metal ions:

| Ion | Flame Color |
|-----|------------|
| Li+ | Crimson red |
| Na+ | Bright/persistent yellow |
| K+ | Lilac/violet |
| Ca2+ | Brick red / orange-red |
| Ba2+ | Apple/pale green |
| Cu2+ | Blue-green |

**Procedure:**
1. Clean platinum/nichrome wire by dipping in HCl and heating in flame until no color
2. Dip wire into test solution
3. Hold in blue Bunsen flame and observe color
4. Na (yellow) can mask other colors — use blue cobalt glass to filter yellow

### Chemical Tests for Metal Ions (with NaOH)

| Ion | With NaOH (few drops) | With NaOH (excess) |
|----|----------------------|-------------------|
| Cu2+ | Blue precipitate Cu(OH)2 | Does NOT dissolve in excess |
| Fe2+ | Pale green precipitate Fe(OH)2 | Does NOT dissolve; turns brown in air |
| Fe3+ | Red-brown/rusty precipitate Fe(OH)3 | Does NOT dissolve |
| Zn2+ | White precipitate Zn(OH)2 | Dissolves in excess → [Zn(OH)4]2- |
| Al3+ | White precipitate Al(OH)3 | Dissolves in excess → [Al(OH)4]- (aluminate) |
| Pb2+ | White precipitate Pb(OH)2 | Dissolves in excess → [Pb(OH)4]2- |
| Ca2+ | White precipitate Ca(OH)2 | Does NOT dissolve |
| Mg2+ | White precipitate Mg(OH)2 | Does NOT dissolve |
| NH4+ | No precipitate; gas on heating | NH3 gas (pungent; turns moist litmus blue) |

> **Amphoteric hydroxides** dissolve in excess NaOH: Al(OH)3, Zn(OH)2, Pb(OH)2
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Metals and Activity Series', E'
## Worked Examples — Metals

### Example 1: Predicting Displacement Reactions
**Q:** Predict whether a reaction will occur when:
(a) Copper is placed in silver nitrate solution
(b) Silver is placed in copper sulfate solution
(c) Zinc is placed in magnesium sulfate solution

**Solutions:**
(a) **Copper + AgNO3:** Cu is above Ag in activity series → Cu will displace Ag.
Cu + 2AgNO3 → Cu(NO3)2 + 2Ag
**Observation:** Copper darkens/silver deposits on copper; solution turns blue (Cu2+ forms)
**REACTION OCCURS**

(b) **Silver + CuSO4:** Ag is below Cu in activity series → Ag CANNOT displace Cu.
**NO REACTION**

(c) **Zinc + MgSO4:** Zn is below Mg in activity series → Zn cannot displace Mg.
**NO REACTION**

---

### Example 2: Blast Furnace Chemistry
**Q:** Write equations for the two main stages of iron extraction in the blast furnace and name the role of CO.

**Solution:**
Stage 1 (formation of reducing agent):
C + O2 → CO2    (coke burns)
CO2 + C → 2CO  (CO2 reduced to CO by excess coke)

Stage 2 (reduction of iron oxide):
Fe2O3 + 3CO → 2Fe + 3CO2

**Role of CO:** CO is the **reducing agent** — it reduces Fe2O3 to Fe by providing electrons (CO is oxidized from +2 to +4 in CO2).

---

### Example 3: Slag Formation
**Q:** Why is limestone added to the blast furnace? Write relevant equations.

**Solution:**
Limestone is added to remove acidic impurities (mainly SiO2, silica) from the iron ore.

Step 1: Limestone decomposes:
CaCO3 → CaO + CO2

Step 2: CaO is a basic oxide that reacts with acidic oxide SiO2:
CaO + SiO2 → CaSiO3 (calcium silicate = slag)

The slag is molten and less dense than iron → floats on top → tapped off separately.
This purifies the iron and prevents impurities from weakening the product.

---

### Example 4: Explaining Alloy Hardness
**Q:** Explain why stainless steel is harder and more corrosion-resistant than pure iron.

**Solution:**
**Hardness:**
In pure iron, all atoms are the same size and arranged in regular layers. These layers can slide over each other easily when stress is applied → iron is relatively soft and ductile.

In stainless steel, atoms of chromium (Cr) and nickel (Ni) — which have different sizes from iron — are mixed into the lattice. These different-sized atoms disrupt the regular layering, preventing the layers from sliding → the alloy is HARDER than pure iron.

**Corrosion resistance:**
Chromium in stainless steel reacts with oxygen in air to form a thin, hard, self-repairing layer of Cr2O3 on the surface (passivation). This oxide layer is transparent and prevents oxygen and water from reaching the iron underneath → does not rust.

---

### Example 5: Identifying Metal Ions
**Q:** Three solutions contain Fe2+, Fe3+, and Cu2+ respectively. Describe tests to identify each.

**Solution:**
Add NaOH solution to each:

| Solution | Observation with NaOH |
|---------|----------------------|
| Fe2+ | **Pale green precipitate** forms: Fe2+(aq) + 2OH-(aq) → Fe(OH)2(s) |
| Fe3+ | **Red-brown/rusty precipitate** forms: Fe3+(aq) + 3OH-(aq) → Fe(OH)3(s) |
| Cu2+ | **Blue precipitate** forms: Cu2+(aq) + 2OH-(aq) → Cu(OH)2(s) |

None of the precipitates dissolves in excess NaOH (Cu(OH)2, Fe(OH)2, Fe(OH)3 are not amphoteric).

Additionally:
- Heat the pale green Fe(OH)2 precipitate in air → turns red-brown (Fe(OH)2 oxidizes to Fe(OH)3) — confirms Fe2+.
- Fe3+ solution itself is yellow-brown/amber.
- Cu2+ solution is blue.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Metals and Activity Series', E'
## WASSCE Practice Questions — Metals

### Multiple Choice

**Q1.** Which metal reacts most vigorously with cold water?
A) Magnesium  B) Calcium  C) Sodium  D) Zinc
**Answer: C** — Na reacts very vigorously (melts, darts around, produces H2). (K would be more vigorous but is typically above Na on lists)

**Q2.** The reducing agent in the blast furnace is:
A) Carbon dioxide  B) Carbon monoxide  C) Limestone  D) Coke
**Answer: B** — CO reduces Fe2O3 to Fe.

**Q3.** Metal X displaces metal Y from a solution of Y''s salt. This means:
A) Y is more reactive than X  B) X is more reactive than Y
C) X and Y have equal reactivity  D) Y is a stronger oxidizing agent
**Answer: B**

**Q4.** Which alloy is most resistant to corrosion?
A) Brass  B) Bronze  C) Stainless steel  D) Mild steel
**Answer: C** — Stainless steel contains Cr which forms a protective oxide layer.

**Q5.** When aluminium is extracted by electrolysis, the carbon anodes:
A) Remain unchanged  B) Dissolve into the aluminium
C) Need to be replaced regularly  D) Are replaced by platinum
**Answer: C** — O2 at anode reacts with graphite (C + O2 → CO2), burning the anodes away.

---

### Structured Questions

**Q6.** (a) State the reactivity series from potassium to copper (8 metals). [2]
(b) Predict the observations when zinc powder is added to: (i) CuSO4(aq) (ii) MgSO4(aq). Write equations where reaction occurs. [4]
(c) Name the method used to extract metals that are: (i) very reactive (K, Na, Al) (ii) moderately reactive (Fe, Zn) [2]

**Answers:**
(a) K > Na > Ca > Mg > Al > Zn > Fe > Pb > (H) > Cu (order with Pb included)

(b)
(i) Zinc + CuSO4: Reaction occurs (Zn more reactive than Cu)
Observations: Blue solution fades/decolorizes; pink/brown copper metal deposits on zinc
Zn(s) + CuSO4(aq) → ZnSO4(aq) + Cu(s)
Ionic: Zn(s) + Cu2+(aq) → Zn2+(aq) + Cu(s)

(ii) Zinc + MgSO4: NO reaction (Zn is less reactive than Mg; cannot displace Mg)
No observable change.

(c)
(i) Very reactive: Electrolysis (of molten ore)
(ii) Moderately reactive: Reduction by carbon/coke (smelting)

---

**Q7.** The blast furnace is used to extract iron from haematite (Fe2O3).
(a) Name THREE raw materials fed into the blast furnace. [3]
(b) Write equations for: (i) formation of CO (ii) reduction of Fe2O3 (iii) slag formation [3]
(c) Explain the purpose of limestone. [2]

**Answers:**
(a) Iron ore (haematite, Fe2O3); Coke (carbon); Limestone (CaCO3) [Hot blast of air is also acceptable]

(b)
(i) CO2 + C → 2CO (or C + O2 → CO2 first; then CO2 + C → 2CO)
(ii) Fe2O3 + 3CO → 2Fe + 3CO2
(iii) CaO + SiO2 → CaSiO3 (slag)

(c) Limestone (CaCO3) is added to remove acidic impurities (SiO2 and Al2O3) from the iron ore. It decomposes to form calcium oxide (CaO), which is basic. CaO reacts with the acidic impurities to form slag (calcium silicate, CaSiO3), which is molten, less dense than iron, floats on top, and is tapped off separately. This purifies the iron product.
', 'practice', 5);


  -- ============================================================
  -- TOPIC 9: GAS LAWS AND MOLE CONCEPT
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Gas Laws and Mole Concept' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: The Mole, Molar Mass and Avogadro''s Number', E'
## The Mole Concept

**The mole (mol)** is the SI unit for amount of substance. It is defined as the amount of substance containing the same number of particles as there are atoms in exactly 12 g of carbon-12.

**Avogadro''s Number (NA):** 1 mole = 6.022 × 10²³ particles
(particles can be atoms, molecules, ions, electrons, or any specified entity)

---

### Molar Mass (M)

**Molar mass** is the mass of 1 mole of a substance (in grams/mol or g/mol).

**For elements:** Molar mass = Relative atomic mass (Ar) in g/mol
- M(H) = 1 g/mol; M(C) = 12 g/mol; M(Na) = 23 g/mol; M(Fe) = 56 g/mol; M(Cu) = 64 g/mol; M(Cl) = 35.5 g/mol

**For compounds:** Add up Ar of all atoms in formula
- M(H2O) = 2(1) + 16 = 18 g/mol
- M(CO2) = 12 + 2(16) = 44 g/mol
- M(NaCl) = 23 + 35.5 = 58.5 g/mol
- M(H2SO4) = 2(1) + 32 + 4(16) = 2 + 32 + 64 = 98 g/mol
- M(Ca(OH)2) = 40 + 2(16+1) = 40 + 34 = 74 g/mol
- M(CaCO3) = 40 + 12 + 3(16) = 40 + 12 + 48 = 100 g/mol
- M(Al2O3) = 2(27) + 3(16) = 54 + 48 = 102 g/mol
- M(CuSO4·5H2O) = 64 + 32 + 4(16) + 5(18) = 64 + 32 + 64 + 90 = 250 g/mol

---

### Key Mole Formulas

**Formula 1: Moles from mass**
n = m / M
(n = moles; m = mass in grams; M = molar mass in g/mol)

**Formula 2: Mass from moles**
m = n × M

**Formula 3: Moles from volume of solution**
n = c × V
(c = concentration in mol/dm³; V = volume in dm³)
[If V in cm³: n = c × V/1000]

**Formula 4: Moles of gas at RTP**
At RTP (Room Temperature and Pressure, 25°C, 1 atm):
Molar volume = 24 dm³/mol (24,000 cm³/mol)
n = V(gas) / 24   [V in dm³]
OR: n = V(gas, cm³) / 24000

At STP (Standard Temperature and Pressure, 0°C, 1 atm):
Molar volume = 22.4 dm³/mol
n = V / 22.4

**Formula 5: Number of particles**
N = n × NA = n × 6.022 × 10²³

---

### Atomic Mass Reference Table (Common Elements)

| Element | Symbol | Ar |
|---------|--------|-----|
| Hydrogen | H | 1 |
| Carbon | C | 12 |
| Nitrogen | N | 14 |
| Oxygen | O | 16 |
| Sodium | Na | 23 |
| Magnesium | Mg | 24 |
| Aluminium | Al | 27 |
| Phosphorus | P | 31 |
| Sulfur | S | 32 |
| Chlorine | Cl | 35.5 |
| Potassium | K | 39 |
| Calcium | Ca | 40 |
| Chromium | Cr | 52 |
| Manganese | Mn | 55 |
| Iron | Fe | 56 |
| Copper | Cu | 64 |
| Zinc | Zn | 65 |
| Bromine | Br | 80 |
| Silver | Ag | 108 |
| Barium | Ba | 137 |
| Lead | Pb | 207 |

---

## Concentration and Solutions

**Concentration (c):** Amount of solute dissolved per unit volume of solution.
c = n / V   (mol/dm³ or mol/L)

**Also expressed as:** g/dm³ = grams of solute per dm³ of solution

**Conversion:** c(g/dm³) = c(mol/dm³) × M

**Worked example:**
5.85 g of NaCl dissolved in 250 cm³ of solution. Find concentration in mol/dm³.
n(NaCl) = 5.85 / 58.5 = 0.1 mol
V = 250/1000 = 0.25 dm³
c = 0.1 / 0.25 = **0.4 mol/dm³**

---

## Empirical and Molecular Formulas

**Empirical formula:** Simplest whole-number ratio of atoms of each element.
**Molecular formula:** Actual number of atoms of each element in one molecule.

### Finding Empirical Formula from Percentage Composition

**Steps:**
1. Divide percentage by Ar of each element
2. Divide all by the smallest number
3. Round to nearest whole number (if close to 0.5 × n, multiply by 2; if close to 0.33 × n, multiply by 3)

**Example:** Compound contains 40.0% C, 6.7% H, 53.3% O.

| Element | % | Ar | Moles (÷Ar) | Ratio (÷smallest) |
|---------|---|------|------------|------------------|
| C | 40.0 | 12 | 3.33 | 3.33/3.33 = 1 |
| H | 6.7 | 1 | 6.7 | 6.7/3.33 = 2.01 ≈ 2 |
| O | 53.3 | 16 | 3.33 | 3.33/3.33 = 1 |

Empirical formula: **CH2O** (formaldehyde, glucose, lactic acid...)

### Finding Molecular Formula from Empirical Formula

**Need:** Relative molecular mass (Mr) of compound

Mr(empirical) = 12 + 2(1) + 16 = 30
If actual Mr = 90: 90 / 30 = 3
Molecular formula = 3 × CH2O = **C3H6O3** (e.g., lactic acid)
', 'overview', 1),

  (v_topic_id, 'Gas Laws — Boyle''s, Charles'' Law and the Ideal Gas Equation', E'
## Gas Laws

### Kinetic Theory of Gases (Ideal Gas Model)

An ideal gas consists of:
- Many tiny particles in random motion
- Particles with negligible volume compared to container
- Elastic collisions (no energy lost)
- No intermolecular forces between particles
- Kinetic energy proportional to absolute temperature (K)

**Real gases deviate from ideal at:** High pressure (particles not negligible volume) and low temperature (intermolecular forces matter).

---

### 1. Boyle''s Law

**"At constant temperature, the volume of a fixed mass of gas is inversely proportional to the pressure."**

V ∝ 1/P   (at constant T)
P × V = constant
P1V1 = P2V2

**Graph:** V vs P gives a hyperbola (curve); V vs 1/P gives a straight line through origin.

**Explanation:** Increasing pressure reduces volume; gas particles are compressed into smaller space (same number of collisions per unit area in smaller volume = higher pressure).

---

### 2. Charles'' Law

**"At constant pressure, the volume of a fixed mass of gas is directly proportional to its absolute temperature."**

V ∝ T   (at constant P; T in Kelvin)
V/T = constant
V1/T1 = V2/T2

**Temperature conversion:** T(K) = T(°C) + 273
- 0°C = 273 K; 25°C = 298 K; 100°C = 373 K; -273°C = 0 K (absolute zero)

**Graph:** V vs T(K) gives a straight line through origin (when extrapolated).

---

### 3. Pressure Law (Gay-Lussac''s Law)

**"At constant volume, the pressure of a fixed mass of gas is directly proportional to its absolute temperature."**

P ∝ T   (at constant V; T in Kelvin)
P/T = constant
P1/T1 = P2/T2

---

### 4. Combined Gas Law

P1V1/T1 = P2V2/T2

**Use when two of three variables (P, V, T) change simultaneously.**

---

### 5. Ideal Gas Equation

PV = nRT

Where:
- P = pressure (in Pascals, Pa, or kPa or atm)
- V = volume (in m³ or dm³ or L, matching units with R)
- n = moles (mol)
- T = temperature in KELVIN (K)
- R = gas constant = 8.314 J/(mol·K) [when P in Pa, V in m³] OR R = 0.0821 L·atm/(mol·K) [when P in atm, V in L]

**Standard conditions:**
- **RTP:** 25°C (298K), 1 atm (101325 Pa) → V(1 mol gas) = 24 dm³
- **STP:** 0°C (273K), 1 atm → V(1 mol gas) = 22.4 dm³

---

### Gay-Lussac''s Law of Combining Volumes

**"At the same temperature and pressure, gases react in simple whole-number ratios of volumes."**

Example: N2 + 3H2 → 2NH3
If 1 dm³ N2 reacts: 3 dm³ H2 consumed; 2 dm³ NH3 produced (at same T and P)

This is because equal volumes of gases contain equal numbers of moles (at same T and P — Avogadro''s law).

---

### Molar Volume at RTP

At RTP (25°C, 1 atm), 1 mole of ANY gas = 24 dm³ = 24,000 cm³

**Examples:**
- 1 mol H2 = 24 dm³ at RTP
- 1 mol CO2 = 24 dm³ at RTP
- 2 mol O2 = 48 dm³ at RTP
- 0.5 mol N2 = 12 dm³ at RTP
- 6 g of C = 0.5 mol × 44 (wait — C is solid; only GASES use molar volume!)

**Watch out:** Only use molar volume for gases; solids and liquids have their own volumes.
', 'explanation', 2),

  (v_topic_id, 'Stoichiometry from Equations — Mole Ratios', E'
## Using Chemical Equations for Calculations

### The Mole Ratio Method

**Chemical equations** give us the mole ratio of reactants and products.

**Steps for stoichiometry calculations:**
1. Write and balance the chemical equation
2. Identify moles of known substance (convert mass → moles if needed)
3. Use mole ratio from equation to find moles of unknown
4. Convert moles of unknown to mass (or volume) if required

---

### Mass-Mass Calculations

**Example 1:**
Q: What mass of MgO is formed when 12.0 g of Mg burns in oxygen?
[Mg = 24, O = 16]

**Solution:**
Equation: 2Mg + O2 → 2MgO
(Mole ratio: 2 mol Mg : 2 mol MgO = 1:1)

n(Mg) = 12.0 / 24 = 0.5 mol
n(MgO) = 0.5 mol (1:1 ratio)
m(MgO) = 0.5 × 40 = **20.0 g**

---

**Example 2:**
Q: What mass of CaCO3 is needed to produce 44 g of CO2? [Ca=40, C=12, O=16]

Equation: CaCO3 → CaO + CO2
(1 mol CaCO3 : 1 mol CO2)

n(CO2) = 44 / 44 = 1 mol
n(CaCO3) = 1 mol
m(CaCO3) = 1 × 100 = **100 g**

---

### Mass-Volume Calculations (involving gases)

**Example 3:**
Q: What volume of H2 (at RTP) is produced when 6.5 g of Zn reacts with excess HCl? [Zn=65]

Equation: Zn + 2HCl → ZnCl2 + H2
(1 mol Zn : 1 mol H2)

n(Zn) = 6.5 / 65 = 0.1 mol
n(H2) = 0.1 mol
V(H2) = 0.1 × 24 = **2.4 dm³** (at RTP)

---

**Example 4:**
Q: What mass of CaCO3 is needed to produce 4.8 dm³ of CO2 at RTP?
[Ca=40, C=12, O=16]

Equation: CaCO3 + 2HCl → CaCl2 + H2O + CO2

n(CO2) = 4.8 / 24 = 0.2 mol
n(CaCO3) = 0.2 mol (1:1)
m(CaCO3) = 0.2 × 100 = **20.0 g**

---

### Limiting Reagent Calculations

The **limiting reagent** is the reactant that is completely used up first, limiting the amount of product formed.

**Steps:**
1. Find moles of each reactant
2. Divide by stoichiometric coefficient
3. Smallest result = limiting reagent
4. Calculate product based on limiting reagent

**Example 5:**
Q: 4.0 g of H2 and 32.0 g of O2 react: 2H2 + O2 → 2H2O. Which is the limiting reagent? How much H2O forms?
[H=1, O=16]

n(H2) = 4.0 / 2 = 2.0 mol
n(O2) = 32.0 / 32 = 1.0 mol

Ratio needed: 2H2 : 1O2
If all O2 used: need 2 × 1.0 = 2.0 mol H2 → we have exactly 2.0 mol H2
Both react completely! (neither is limiting in excess)

n(H2O) = 2.0 mol (from 2H2 : 2H2O = 1:1)
m(H2O) = 2.0 × 18 = **36.0 g**

**Another Example 6:**
Q: 3.0 g Mg + 4.9 g H2SO4 → MgSO4 + H2. Which is limiting? [Mg=24, H2SO4=98]

Equation: Mg + H2SO4 → MgSO4 + H2

n(Mg) = 3.0/24 = 0.125 mol
n(H2SO4) = 4.9/98 = 0.050 mol

Mole ratio 1:1; compare: 0.125 mol Mg needs 0.125 mol H2SO4, but only 0.05 mol H2SO4 available.
**H2SO4 is the limiting reagent** (runs out first)

n(H2) = n(H2SO4) = 0.050 mol
m(H2) = 0.050 × 2 = **0.10 g**
', 'definitions', 3),

  (v_topic_id, 'Worked Examples: Gas Laws and Mole Concept', E'
## Worked Examples — Gas Laws and Mole Calculations

### Example 1: Boyle''s Law
**Q:** A gas has a volume of 200 cm³ at 100 kPa. Calculate its volume at 250 kPa (temperature constant).

**Solution:**
P1V1 = P2V2
100 × 200 = 250 × V2
V2 = 20000 / 250 = **80 cm³**

---

### Example 2: Charles'' Law
**Q:** A gas occupies 500 cm³ at 27°C. What volume does it occupy at 127°C (pressure constant)?

**Solution:**
Convert: T1 = 27 + 273 = 300 K; T2 = 127 + 273 = 400 K

V1/T1 = V2/T2
500/300 = V2/400
V2 = 500 × 400 / 300 = **666.7 cm³ ≈ 667 cm³**

---

### Example 3: Combined Gas Law
**Q:** A gas occupies 1000 cm³ at 20°C and 100 kPa. Calculate its volume at 60°C and 200 kPa.

**Solution:**
T1 = 20 + 273 = 293 K; T2 = 60 + 273 = 333 K

P1V1/T1 = P2V2/T2
(100 × 1000)/293 = (200 × V2)/333
341.3 = 200V2/333
V2 = 341.3 × 333/200 = **568.4 cm³ ≈ 568 cm³**

---

### Example 4: Mole Calculations
**Q:** Calculate: (a) moles in 11 g CO2; (b) mass of 0.25 mol H2SO4; (c) volume of 0.5 mol O2 at RTP.

**Solutions:**
(a) M(CO2) = 44 g/mol; n = 11/44 = **0.25 mol**
(b) M(H2SO4) = 98 g/mol; m = 0.25 × 98 = **24.5 g**
(c) V = 0.5 × 24 = **12 dm³** at RTP

---

### Example 5: Empirical Formula
**Q:** Analysis of a compound gives 27.3% C, 72.7% O. Find the empirical formula.
[C=12, O=16]

**Solution:**

| Element | % | Ar | Moles | Ratio |
|---------|---|------|-------|-------|
| C | 27.3 | 12 | 27.3/12 = 2.275 | 2.275/2.275 = 1 |
| O | 72.7 | 16 | 72.7/16 = 4.544 | 4.544/2.275 = 2 |

Empirical formula: **CO2**

---

### Example 6: Molecular Formula
**Q:** A compound has empirical formula CH2O and Mr = 60. Find the molecular formula.

**Solution:**
Mr(CH2O) = 12 + 2 + 16 = 30
Ratio = 60/30 = 2
Molecular formula = 2 × CH2O = **C2H4O2** (could be ethanoic acid or glycolaldehyde)

---

### Example 7: Percentage Yield
**Q:** 10.0 g of CaCO3 is heated. Theoretically how much CO2 should form? If 3.5 dm³ at RTP actually collected, what is the percentage yield?

**Solution:**
Equation: CaCO3 → CaO + CO2

n(CaCO3) = 10.0/100 = 0.1 mol
Theoretical n(CO2) = 0.1 mol
Theoretical V(CO2) = 0.1 × 24 = 2.4 dm³

Wait — 3.5 dm³ > 2.4 dm³? That''s impossible (>100% yield). Let me re-examine: if the answer states 3.5, check again. Perhaps 1.68 dm³ is collected: % yield = (1.68/2.4) × 100 = 70%.

**Percentage yield formula:**
% yield = (actual yield / theoretical yield) × 100

With 1.68 dm³: % yield = (1.68/2.4) × 100 = **70%**
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Gas Laws and Mole Concept', E'
## WASSCE Practice Questions — Gas Laws and Mole Concept

### Multiple Choice

**Q1.** 1 mole of gas at RTP (25°C, 1 atm) occupies:
A) 22.4 dm³  B) 24.0 dm³  C) 24.5 dm³  D) 1000 cm³
**Answer: B** — 24 dm³/mol at RTP

**Q2.** What is the number of moles in 7.1 g of Cl2? [Cl = 35.5]
A) 0.05  B) 0.10  C) 0.20  D) 0.50
**Answer: B** — M(Cl2) = 71 g/mol; n = 7.1/71 = 0.10 mol

**Q3.** Which gas law states P1V1 = P2V2 at constant temperature?
A) Charles'' law  B) Gay-Lussac''s law  C) Boyle''s law  D) Ideal gas law
**Answer: C**

**Q4.** The empirical formula of a compound with 40% S and 60% O is: [S=32, O=16]
A) SO  B) SO2  C) SO3  D) S2O3
**Answer: C** — S: 40/32=1.25; O: 60/16=3.75; ratio = 1:3 → SO3

**Q5.** 2 dm³ N2 reacts with 6 dm³ H2 to form NH3 (N2 + 3H2 → 2NH3). What volume of NH3 forms?
A) 2 dm³  B) 4 dm³  C) 6 dm³  D) 8 dm³
**Answer: B** — N2:NH3 = 1:2; 2 dm³ N2 → 4 dm³ NH3

---

### Structured Questions

**Q6.** (a) State Boyle''s law. [1]
(b) A gas at 120 kPa occupies 4.0 dm³. Calculate its volume at 80 kPa (temperature constant). [2]
(c) A gas at 25°C occupies 600 cm³. What volume does it occupy at 75°C (pressure constant)? [2]
(d) Calculate the volume of 3 g of O2 at RTP. [O=16] [2]

**Answers:**
(a) At constant temperature, the volume of a fixed mass of gas is inversely proportional to its pressure. (P1V1 = P2V2)

(b) P1V1 = P2V2: 120 × 4.0 = 80 × V2; V2 = 480/80 = **6.0 dm³**

(c) T1 = 298K, T2 = 348K; V1/T1 = V2/T2; 600/298 = V2/348; V2 = 600 × 348/298 = **700.7 cm³ ≈ 701 cm³**

(d) M(O2) = 32 g/mol; n = 3/32 = 0.09375 mol; V = 0.09375 × 24 = **2.25 dm³**

---

**Q7.** (a) Define relative atomic mass. [1]
(b) Calculate the empirical formula of a compound containing 32.4% Na, 22.5% S, and 45.1% O. [Na=23, S=32, O=16] [4]
(c) If the Mr of this compound is 142, find its molecular formula. [2]

**Answers:**
(a) Relative atomic mass is the weighted average mass of all naturally occurring isotopes of an element, on a scale where one atom of carbon-12 has a mass of exactly 12.

(b)

| Element | % | Ar | Moles | Ratio | Round |
|---------|---|------|-------|-------|-------|
| Na | 32.4 | 23 | 1.409 | 1.409/1.409 = 1 | 1 |
| S | 22.5 | 32 | 0.703 | 0.703/0.703 = 1 | 1 |
| O | 45.1 | 16 | 2.819 | 2.819/0.703 = 4 | 4 |

Empirical formula: **NaSO4** ... wait, ratio Na:S:O = 1:1:4 → NaSO4? Let me recheck:
Na:S = 1.409:0.703 = 2:1; O:S = 2.819:0.703 = 4:1 → Na2SO4

Actually: Na = 1.409; S = 0.703; O = 2.819
Smallest is S = 0.703. Divide all by 0.703:
Na: 1.409/0.703 = 2; S: 1; O: 4 → **Na2SO4**

Empirical formula: **Na2SO4** (sodium sulfate)

(c) Mr(Na2SO4) = 2(23) + 32 + 4(16) = 46 + 32 + 64 = 142
142/142 = 1 → Molecular formula = Na2SO4 (same as empirical)
', 'practice', 5);


  -- ============================================================
  -- TOPIC 10: STOICHIOMETRY AND QUANTITATIVE CHEMISTRY
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Stoichiometry and Quantitative Chemistry' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Balancing Equations and Mole Ratios', E'
## Stoichiometry — The Language of Quantitative Chemistry

**Stoichiometry** deals with the quantitative relationships between reactants and products in chemical reactions.

**Foundation:** The balanced chemical equation tells us the mole ratios in which substances react and are produced.

---

## Writing and Balancing Chemical Equations

### Rules for Balancing

1. Write correct formulas for all reactants and products (never change formulas!)
2. Count atoms of each element on both sides
3. Add coefficients (whole numbers) in front of formulas to balance
4. Check H2O, gases, and charges last
5. Simplify coefficients to lowest whole numbers

### Types of Equations

**Word equation:** Reactant names → product names
**Symbol (formula) equation:** Chemical formulas with state symbols
**Ionic equation:** Shows only ions actually involved; spectator ions removed
**Half-equation:** Shows only one half of a redox reaction

**State symbols:**
- (s) = solid
- (l) = liquid
- (g) = gas
- (aq) = aqueous solution (dissolved in water)

---

### Important Equations to Know (WASSCE)

**Acid-Base Reactions:**
H2SO4 + 2NaOH → Na2SO4 + 2H2O
HCl + NaOH → NaCl + H2O
H3PO4 + 3KOH → K3PO4 + 3H2O

**Metal + Acid:**
Mg + H2SO4 → MgSO4 + H2
Zn + 2HCl → ZnCl2 + H2
2Al + 3H2SO4 → Al2(SO4)3 + 3H2
Fe + 2HCl → FeCl2 + H2

**Carbonates + Acid:**
CaCO3 + 2HCl → CaCl2 + H2O + CO2
Na2CO3 + H2SO4 → Na2SO4 + H2O + CO2
2NaHCO3 + H2SO4 → Na2SO4 + 2H2O + 2CO2

**Thermal Decomposition:**
CaCO3 → CaO + CO2
2Cu(NO3)2 → 2CuO + 4NO2 + O2
2KNO3 → 2KNO2 + O2
Cu(OH)2 → CuO + H2O
Mg(OH)2 → MgO + H2O
2NaHCO3 → Na2CO3 + H2O + CO2
NaHCO3 → NaOH + CO2  [at very high temp]

**Combustion:**
CH4 + 2O2 → CO2 + 2H2O
C3H8 + 5O2 → 3CO2 + 4H2O
C2H5OH + 3O2 → 2CO2 + 3H2O
2C8H18 + 25O2 → 16CO2 + 18H2O

**Haber Process:** N2 + 3H2 ⇌ 2NH3
**Contact Process:** 2SO2 + O2 ⇌ 2SO3; SO3 + H2O → H2SO4
**Ostwald Process:** 4NH3 + 5O2 → 4NO + 6H2O; 2NO + O2 → 2NO2; 3NO2 + H2O → 2HNO3 + NO

---

## Ionic Equations

**Spectator ions:** Ions present in solution that do NOT change — they appear unchanged on both sides → cancel them out.

**Steps to write ionic equation:**
1. Write full balanced equation with state symbols
2. Identify which species are in ionic form (soluble ionic compounds in aqueous solution split into ions)
3. Cancel spectator ions (same on both sides)
4. Write net ionic equation

**Example: NaOH(aq) + HCl(aq) → NaCl(aq) + H2O(l)**
Full ionic: Na+(aq) + OH-(aq) + H+(aq) + Cl-(aq) → Na+(aq) + Cl-(aq) + H2O(l)
Cancel Na+ and Cl- (spectators):
**Net ionic: H+(aq) + OH-(aq) → H2O(l)**

**Example: BaCl2(aq) + Na2SO4(aq) → BaSO4(s) + 2NaCl(aq)**
Full ionic: Ba2+(aq) + 2Cl-(aq) + 2Na+(aq) + SO42-(aq) → BaSO4(s) + 2Na+(aq) + 2Cl-(aq)
Cancel Na+ and Cl- (spectators):
**Net ionic: Ba2+(aq) + SO42-(aq) → BaSO4(s)**

**Solubility rules (what is soluble/insoluble):**
- All nitrates: SOLUBLE
- All Group I (Na, K, Li) salts: SOLUBLE
- All ammonium salts: SOLUBLE
- Chlorides: soluble EXCEPT AgCl, PbCl2 (insoluble)
- Sulfates: soluble EXCEPT BaSO4, CaSO4, PbSO4 (insoluble)
- Carbonates: insoluble EXCEPT Group I and (NH4)2CO3
- Hydroxides: insoluble EXCEPT Group I, Ba(OH)2, Ca(OH)2 (slightly soluble)
', 'overview', 1),

  (v_topic_id, 'Titrations, Concentrations and Percentage Calculations', E'
## Acid-Base Titrations

**Titration** is a technique to determine the unknown concentration of one solution using a known concentration of another.

### Equipment
- Burette: measures exact volume of solution added (to 0.05 cm³)
- Pipette: delivers exact volume (e.g., 25.00 cm³)
- Conical flask
- Indicator (or pH meter)
- White tile (to see color change clearly)

### Steps in a Titration
1. Rinse burette with acid; fill with acid; record initial reading
2. Pipette exactly 25.00 cm³ of alkali into flask; add indicator
3. Add acid from burette slowly; swirl constantly
4. At end point (indicator changes color): record final burette reading
5. Calculate titre = final reading - initial reading
6. Repeat until concordant results (within 0.10 cm³ of each other)
7. Average concordant titres

### Titration Calculation Method

**General steps:**
1. Write balanced equation to get mole ratio
2. Calculate moles of known substance (n = c × V)
3. Use mole ratio to find moles of unknown
4. Calculate concentration (c = n/V) or mass (m = n × M) of unknown

---

### Key Titration Formulas

n = c × V/1000    (when V is in cm³)
n = c × V          (when V is in dm³)

**After finding mole ratio:**
n(A)/n(B) = coefficient of A / coefficient of B

---

## Percentage Purity and Yield

### Percentage Purity
If a sample contains an impurity (impure substance), not all of it is the desired chemical.

% purity = (mass of pure substance / mass of impure sample) × 100

**Example:**
A 20.0 g sample of CaCO3 contains impurities. When heated, 8.5 dm³ of CO2 is collected at RTP.
n(CO2) = 8.5/24 = 0.354 mol
n(CaCO3) = 0.354 mol (1:1)
m(CaCO3) = 0.354 × 100 = 35.4 g  [wait, this exceeds the sample mass; let''s use 0.85 dm³]
n(CO2) = 0.85/24 = 0.0354 mol; m(CaCO3) = 3.54 g
% purity = (3.54/20.0) × 100 = **17.7%**

### Percentage Yield
When a reaction is incomplete or product is lost, the actual yield is less than theoretical.

% yield = (actual yield / theoretical yield) × 100

**Example:**
What is the % yield if 56 g of Fe is reacted with excess HCl and only 1.5 g of H2 is collected?
[Fe=56, H=1]

Equation: Fe + 2HCl → FeCl2 + H2
Theoretical:
n(Fe) = 56/56 = 1 mol; n(H2) = 1 mol (1:1); theoretical m(H2) = 1 × 2 = 2.0 g
% yield = (1.5/2.0) × 100 = **75%**

---

## Water of Crystallization

**Hydrated salt:** A salt that has water molecules incorporated into its crystal structure.
- Written as: salt·nH2O (e.g., CuSO4·5H2O, Na2CO3·10H2O, MgSO4·7H2O)
- **n** = the number of moles of H2O per mole of salt

**Example: CuSO4·5H2O** (copper(II) sulfate pentahydrate, blue)
- Heating → CuSO4 (anhydrous, white) + 5H2O
- M(CuSO4·5H2O) = 64 + 32 + 4(16) + 5(18) = 160 + 90 = 250 g/mol

### Finding n (Water of Crystallization)

**Example:**
5.0 g of hydrated MgSO4·nH2O is heated. Anhydrous MgSO4 mass = 2.4 g. Find n.
[Mg=24, S=32, O=16, H=1]

Mass of H2O = 5.0 - 2.4 = 2.6 g
n(H2O) = 2.6/18 = 0.1444 mol
n(MgSO4) = 2.4/120 = 0.02 mol
Ratio = n(H2O)/n(MgSO4) = 0.1444/0.02 = 7.22 ≈ **7**
Formula: **MgSO4·7H2O** (Epsom salt)
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Stoichiometry Calculations', E'
## Worked Examples — Stoichiometry

### Example 1: Titration (NaOH vs HCl)
**Q:** 25.0 cm³ of NaOH of unknown concentration was placed in a flask. From a burette, 18.5 cm³ of 0.200 mol/dm³ HCl was required to neutralize it. Find [NaOH].

**Solution:**
Equation: HCl + NaOH → NaCl + H2O (1:1 mole ratio)

n(HCl) = c × V/1000 = 0.200 × 18.5/1000 = 0.00370 mol
n(NaOH) = 0.00370 mol (1:1 ratio)
c(NaOH) = n/V = 0.00370 / (25.0/1000) = 0.00370/0.025 = **0.148 mol/dm³**

---

### Example 2: Titration (H2SO4 vs KOH)
**Q:** 20.0 cm³ of H2SO4 reacts with 30.0 cm³ of 0.150 mol/dm³ KOH. Find [H2SO4].

**Solution:**
Equation: H2SO4 + 2KOH → K2SO4 + 2H2O (1:2 mole ratio)

n(KOH) = 0.150 × 30.0/1000 = 0.00450 mol
n(H2SO4) = n(KOH)/2 = 0.00450/2 = 0.00225 mol
c(H2SO4) = 0.00225 / (20.0/1000) = 0.00225/0.020 = **0.1125 mol/dm³**

---

### Example 3: Back Titration
**Q:** 2.50 g of an impure sample of Na2CO3 is dissolved in water and treated with 50.0 cm³ of 1.00 mol/dm³ HCl. The excess HCl is then titrated with NaOH (0.500 mol/dm³), requiring 10.0 cm³. Calculate the percentage purity of Na2CO3. [Na=23, C=12, O=16]

**Solution:**
Equation 1: Na2CO3 + 2HCl → 2NaCl + H2O + CO2
Equation 2: HCl + NaOH → NaCl + H2O

Step 1: n(HCl) total = 1.00 × 50.0/1000 = 0.0500 mol
Step 2: n(NaOH) = 0.500 × 10.0/1000 = 0.00500 mol
Step 3: n(excess HCl) = n(NaOH) = 0.00500 mol (1:1)
Step 4: n(HCl) that reacted with Na2CO3 = 0.0500 - 0.0050 = 0.0450 mol
Step 5: n(Na2CO3) = n(HCl)/2 = 0.0450/2 = 0.0225 mol
Step 6: m(Na2CO3) = 0.0225 × 106 = 2.385 g
Step 7: % purity = (2.385/2.50) × 100 = **95.4%**

---

### Example 4: Water of Crystallization
**Q:** 6.24 g of hydrated copper(II) sulfate (CuSO4·nH2O) is heated. The residue has mass 4.00 g. Find n. [Cu=64, S=32, O=16, H=1]

**Solution:**
M(CuSO4) = 64 + 32 + 64 = 160 g/mol

Mass of H2O lost = 6.24 - 4.00 = 2.24 g
n(H2O) = 2.24/18 = 0.1244 mol
n(CuSO4) = 4.00/160 = 0.02500 mol
n(H2O)/n(CuSO4) = 0.1244/0.025 = 4.98 ≈ **5**

Formula: **CuSO4·5H2O** (blue vitriol)

---

### Example 5: Percentage Purity from Titration
**Q:** 2.00 g of impure Na2CO3 is dissolved and titrated with 0.100 mol/dm³ HCl. 34.5 cm³ HCl is needed. Find % purity. [Na=23, C=12, O=16; M(Na2CO3)=106]

**Solution:**
Equation: Na2CO3 + 2HCl → 2NaCl + H2O + CO2

n(HCl) = 0.100 × 34.5/1000 = 0.00345 mol
n(Na2CO3) = 0.00345/2 = 0.001725 mol
m(Na2CO3, pure) = 0.001725 × 106 = 0.1829 g

Hmm — this seems low for 2.00 g sample. Let me recalculate with 34.5 cm³ correctly:
n(HCl) = 0.100 × 34.5/1000 = 3.45 × 10-3 mol
n(Na2CO3) = 1.725 × 10-3 mol
m(pure Na2CO3) = 1.725 × 10-3 × 106 = 0.1829 g

% purity = (0.1829/2.00) × 100 = 9.1% — this seems low unless concentration is 1.00:
With c=1.00 mol/dm³: n(HCl) = 0.0345 mol; n(Na2CO3) = 0.01725 mol; m = 0.01725 × 106 = 1.829 g
% purity = (1.829/2.00) × 100 = **91.5%**

> **Note for students:** Always check your units carefully in titration calculations and verify results are physically reasonable (0-100%).
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Stoichiometry', E'
## WASSCE Practice Questions — Stoichiometry

### Multiple Choice

**Q1.** Which mole ratio is correct for: N2 + 3H2 → 2NH3?
A) 1:2:3  B) 1:3:2  C) 2:1:3  D) 3:1:2
**Answer: B** — 1 mol N2 : 3 mol H2 : 2 mol NH3

**Q2.** 20 cm³ of 0.5 mol/dm³ NaOH neutralizes H2SO4 (H2SO4 + 2NaOH → Na2SO4 + 2H2O). What volume of 0.25 mol/dm³ H2SO4 is needed?
A) 10 cm³  B) 20 cm³  C) 40 cm³  D) 5 cm³
**Answer: B**
n(NaOH) = 0.5 × 20/1000 = 0.010 mol; n(H2SO4) = 0.010/2 = 0.005 mol; V = 0.005/0.25 × 1000 = 20 cm³

**Q3.** 5 g of CaCO3 is completely decomposed by heating (CaCO3 → CaO + CO2). What mass of CaO is produced? [Ca=40, C=12, O=16]
A) 2.4 g  B) 2.8 g  C) 5.0 g  D) 7.0 g
**Answer: B** — n(CaCO3) = 5/100 = 0.05 mol; n(CaO) = 0.05 mol; m = 0.05 × 56 = 2.8 g

**Q4.** What is the percentage of water in CuSO4·5H2O? [Cu=64, S=32, O=16, H=1]
A) 26%  B) 36%  C) 46%  D) 56%
**Answer: B** — M = 250; 5H2O = 90; % = 90/250 × 100 = 36%

---

### Structured Questions

**Q5.** (a) 25.0 cm³ of H2SO4 (0.100 mol/dm³) is titrated against NaOH.
(i) Write the equation for this reaction. [1]
(ii) Calculate moles of H2SO4 used. [1]
(iii) Calculate moles of NaOH that reacted. [1]
(iv) If 40.0 cm³ of NaOH was needed, calculate [NaOH]. [2]

**Answers:**
(i) H2SO4 + 2NaOH → Na2SO4 + 2H2O

(ii) n(H2SO4) = 0.100 × 25.0/1000 = 0.00250 mol

(iii) n(NaOH) = 2 × n(H2SO4) = 2 × 0.00250 = 0.00500 mol (2:1 ratio)

(iv) c(NaOH) = 0.00500 / (40.0/1000) = 0.00500/0.040 = **0.125 mol/dm³**

---

**Q6.** Calculate the % purity of calcium carbonate in limestone given:
- 10.0 g of limestone dissolved in excess HCl
- The CO2 collected at RTP = 2.40 dm³
- Equation: CaCO3 + 2HCl → CaCl2 + H2O + CO2
[Ca=40, C=12, O=16] [4]

**Solution:**
n(CO2) = 2.40/24 = 0.100 mol
n(CaCO3) = 0.100 mol (1:1)
m(CaCO3) = 0.100 × 100 = 10.0 g

% purity = (10.0/10.0) × 100 = **100%** — This means the limestone is pure CaCO3.

[For a more typical exam: if 2.16 dm³ collected: n = 2.16/24 = 0.09 mol; m = 9.0 g; % = 90%]

---

**Q7.** A hydrated salt has formula ZnSO4·nH2O. 6.45 g of the salt is heated to dryness and 3.61 g of anhydrous ZnSO4 remains.
(a) Calculate n (the number of water molecules). [Zn=65, S=32, O=16, H=1] [4]
(b) What is the percentage of water in this hydrated salt? [1]

**Answers:**
(a) M(ZnSO4) = 65 + 32 + 4(16) = 161 g/mol
Mass of H2O = 6.45 - 3.61 = 2.84 g
n(H2O) = 2.84/18 = 0.1578 mol
n(ZnSO4) = 3.61/161 = 0.02242 mol
Ratio = 0.1578/0.02242 = 7.03 ≈ **7**
Formula: ZnSO4·7H2O (zinc sulfate heptahydrate)

(b) % H2O = (2.84/6.45) × 100 = **44.0%**
', 'practice', 5);

END $$;
