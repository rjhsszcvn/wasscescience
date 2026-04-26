
/*
  # Chemistry notes for topics 6-15
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Organic Chemistry
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Organic Chemistry' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Organic Chemistry', $CONTENT$
## Organic Chemistry: The Chemistry of Carbon

**Organic chemistry** is the study of carbon-containing compounds (except CO, CO₂, carbonates, and cyanides which are considered inorganic).

### Why Carbon is Special
1. **Forms 4 bonds** (tetravalent) — can bond with 4 other atoms
2. **Catenation:** Can bond with other carbon atoms to form long chains, branches, rings
3. **Enormous diversity:** Over 10 million known organic compounds
4. **Basis of life:** Carbohydrates, proteins, fats, DNA, vitamins — all organic

### Homologous Series
A homologous series is a group of organic compounds with:
- Same general formula
- Same functional group
- Same general chemical properties
- Properties change gradually with increasing chain length (e.g., boiling point increases)
- Each member differs by CH₂ (14 mass units)

### Key Functional Groups
| Functional group | Series | General formula | Example |
|-----------------|--------|----------------|---------|
| C-C and C-H only | Alkanes | CₙH₂ₙ₊₂ | CH₄ (methane) |
| C=C | Alkenes | CₙH₂ₙ | C₂H₄ (ethene) |
| -OH | Alcohols | CₙH₂ₙ₊₁OH | C₂H₅OH (ethanol) |
| -COOH | Carboxylic acids | CₙH₂ₙ₊₁COOH | CH₃COOH (ethanoic acid) |
| -COO- | Esters | CₙH₂ₙO₂ | RCOOR' |
| -NH₂ | Amines | | |

### IUPAC Naming
**Prefix** indicates number of carbons:
- meth- = 1 carbon
- eth- = 2 carbons
- prop- = 3 carbons
- but- = 4 carbons
- pent- = 5 carbons
- hex- = 6 carbons

**Suffix** indicates the functional group:
- -ane = alkane (single bonds)
- -ene = alkene (double bond)
- -ol = alcohol (-OH)
- -oic acid = carboxylic acid (-COOH)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Alkanes, Alkenes, and Alcohols', $CONTENT$
## The Key Organic Homologous Series

### Alkanes (Saturated Hydrocarbons)
**General formula:** CₙH₂ₙ₊₂
**Bonds:** Single C-C bonds and C-H bonds ONLY (no double bonds)
**"Saturated":** Cannot accept more H atoms

Members:
- CH₄ (methane) — natural gas; fuel; making hydrogen
- C₂H₆ (ethane)
- C₃H₈ (propane) — LPG (cooking gas)
- C₄H₁₀ (butane) — LPG, lighters
- C₅H₁₂ (pentane) — petrol component
- C₈H₁₈ (octane) — petrol

**Physical properties:** Boiling point increases with chain length (longer chain → stronger van der Waals forces)
CH₄: bp -161°C (gas); C₄H₁₀: bp -0.5°C (gas/liquid); C₁₂H₂₆: bp 216°C (liquid)

**Reactions:**
1. **Combustion (main use — fuels):**
   - Complete: CH₄ + 2O₂ → CO₂ + 2H₂O (blue flame, no smoke)
   - Incomplete (limited O₂): 2CH₄ + 3O₂ → 2CO + 4H₂O (produces toxic CO and/or soot)
2. **Substitution with halogens (in UV light):**
   CH₄ + Cl₂ → CH₃Cl + HCl (chloromethane)
   [UV light needed to break Cl₂ bond to start reaction]
   Reaction is called halogenation/substitution
   Can continue: CH₃Cl + Cl₂ → CH₂Cl₂ + HCl etc.

### Alkenes (Unsaturated Hydrocarbons)
**General formula:** CₙH₂ₙ
**Bonds:** At least one C=C double bond
**"Unsaturated":** Can accept more H atoms

Members:
- C₂H₄ (ethene) — most important; manufacture of plastics (polyethylene)
- C₃H₆ (propene) — polypropylene
- C₄H₈ (butene)

**Reactions:**
1. **Addition reactions** (the double bond opens up to accept new atoms):
   - Addition of H₂ (hydrogenation): C₂H₄ + H₂ → C₂H₆ (catalyst: Ni, 150°C)
   - Addition of Cl₂/Br₂ (halogenation): C₂H₄ + Br₂ → CH₂BrCH₂Br (dibromoethane) — bromine water decolourises!
   - Addition of H₂O (hydration): C₂H₄ + H₂O → C₂H₅OH (catalyst: H₃PO₄, 300°C, 60 atm)
   - Addition of HCl/HBr (hydrohalogenation)
2. **Polymerisation:** Many alkene monomers join → long chain polymer (addition polymerisation)
   n(CH₂=CH₂) → (-CH₂-CH₂-)ₙ (polyethylene/polythene)

**Test for alkenes:** Add bromine water (orange/brown) → if alkene present, bromine water **DECOLOURISES** (becomes colourless). Alkanes do NOT decolourise bromine water.

### Alcohols
**General formula:** CₙH₂ₙ₊₁OH
**Functional group:** -OH (hydroxyl group)

Members:
- CH₃OH (methanol) — toxic; industrial solvent; fuel
- C₂H₅OH (ethanol) — drinking alcohol; biofuel; antiseptic; solvent
- C₃H₇OH (propanol) — solvent, antiseptic

**Production of ethanol:**
1. Fermentation: C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ (yeast, 25-37°C, anaerobic, pH 4-7)
2. Hydration of ethene: C₂H₄ + H₂O → C₂H₅OH (H₃PO₄ catalyst, 300°C, 60 atm)

**Reactions:**
1. Combustion: C₂H₅OH + 3O₂ → 2CO₂ + 3H₂O (clean burning — biofuel)
2. Oxidation: Ethanol → Ethanal → Ethanoic acid (with K₂Cr₂O₇/H₂SO₄ → orange → green)
3. Esterification: alcohol + carboxylic acid → ester + water (conc. H₂SO₄ catalyst)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Carboxylic Acids, Esters, and Polymers', $CONTENT$
## Further Organic Chemistry

### Carboxylic Acids
**Functional group:** -COOH (carboxyl group)
**General formula:** CₙH₂ₙ₊₁COOH

Members:
- HCOOH (methanoic/formic acid) — ant venom, bee stings
- CH₃COOH (ethanoic/acetic acid) — vinegar (~5% solution)
- C₂H₅COOH (propanoic acid)
- C₁₅H₃₁COOH (palmitic acid) — in palm oil

**Properties:**
- Weak acids (partially ionise: CH₃COOH ⇌ CH₃COO⁻ + H⁺)
- pH 3-5 for typical concentrations
- React with carbonates (CO₂ given off), metal hydroxides, metals (slowly)

### Esters
**Formation (esterification):** Alcohol + Carboxylic acid → Ester + Water
CH₃OH + CH₃COOH → CH₃COOCH₃ + H₂O
(Methanol + Ethanoic acid → Methyl ethanoate + Water)
Catalyst: Concentrated H₂SO₄; reversible reaction

**Properties of esters:**
- Pleasant, fruity smells → used as food flavourings, perfumes
- Ethyl ethanoate: pear drops; Isoamyl acetate: banana; Octyl acetate: orange
- Solvents (nail varnish remover, paint thinner)

**Hydrolysis of esters:** Reverse of esterification
Ester + Water → Acid + Alcohol (with acid or base catalyst)

### Saponification (Soap Making)
**Fats and oils** are esters of glycerol and fatty acids (triglycerides)
**Saponification:** Triglyceride + NaOH → Glycerol + Soap (sodium salt of fatty acid)
Soap molecule has: hydrophilic (water-loving) head (-COONa) + hydrophobic (water-hating) tail (long carbon chain)
Action of soap: micelle forms around grease → grease lifted off and washed away

### Polymers
**Addition polymers:** Monomers with double bonds join by adding to each other
- Polyethylene (polythene): from ethene; plastic bags, bottles
- Polypropylene: from propene; ropes, carpets, car parts
- PVC: from vinyl chloride (CH₂=CHCl); pipes, window frames, insulation
- PTFE (Teflon): from tetrafluoroethylene; non-stick coating

**Condensation polymers:** Monomers join by eliminating a small molecule (usually H₂O)
- **Nylon (polyamide):** diamine + dicarboxylic acid → -NH-CO- link (peptide-like bond); strong fibres; clothing, ropes
- **Polyester (Terylene/Dacron):** diol + dicarboxylic acid → -O-CO- link; clothing, food packaging, bottles (PET)

**Environmental concerns:**
- Most addition polymers are non-biodegradable → persist for hundreds of years
- Ocean pollution by plastic; microplastics entering food chains
- Solutions: Recycling, biodegradable polymers, bioplastics, reduce/reuse
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Organic Chemistry Worked Examples', $CONTENT$
## Worked Examples: Organic Chemistry

### Example 1: Naming Organic Compounds
Name the following compounds:
(a) CH₃CH₂CH₂OH  (b) CH₃CH=CH₂  (c) CH₃COOC₂H₅

(a) Chain length = 3 C; functional group -OH → **propan-1-ol** (or propanol)
(b) Chain length = 3 C; double bond at C1-C2 → **propene**  
(c) Ester: CH₃COO- (from ethanoic acid); -C₂H₅ (from ethanol) → **ethyl ethanoate**

### Example 2: Isomers
Draw and name TWO structural isomers of C₄H₁₀.

Isomers have same molecular formula but different structural arrangements:
1. **Butane:** CH₃-CH₂-CH₂-CH₃ (straight chain)
2. **2-methylpropane (isobutane):** CH₃-CH(CH₃)-CH₃ (branched)

Both have formula C₄H₁₀ but different structures → different properties.

### Example 3: Reactions of Alkenes — Addition
Write equations for the reaction of propene with:
(a) H₂ (b) Br₂ (c) HBr

(a) CH₃CH=CH₂ + H₂ → CH₃CH₂CH₃ (propane) [Ni catalyst, 150°C]
(b) CH₃CH=CH₂ + Br₂ → CH₃CHBrCH₂Br (1,2-dibromopropane) [bromine water decolourises]
(c) CH₃CH=CH₂ + HBr → CH₃CHBrCH₃ (2-bromopropane) [Markovnikov's rule — H adds to C with more H]

### Example 4: Esterification
Write the equation for the reaction between ethanol (C₂H₅OH) and propanoic acid (C₂H₅COOH). Name the ester formed.

C₂H₅OH + C₂H₅COOH ⇌ C₂H₅COOC₂H₅ + H₂O
(Ethanol + Propanoic acid → **Ethyl propanoate** + Water)

Conditions: Concentrated H₂SO₄ catalyst; warm gently; reversible reaction

### Example 5: Combustion Equations
Write balanced equations for:
(a) Complete combustion of butane (C₄H₁₀)
(b) Incomplete combustion of butane (limited O₂)

(a) C₄H₁₀ + 13/2 O₂ → 4CO₂ + 5H₂O
    or: 2C₄H₁₀ + 13O₂ → 8CO₂ + 10H₂O

(b) 2C₄H₁₀ + 9O₂ → 8CO + 10H₂O (carbon monoxide formed)
    or even less O₂: C₄H₁₀ + 5O₂ → 4C + 5H₂O (carbon soot)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Organic Chemistry', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Give the general formula for alkenes and write the molecular formula of the first four members.
(b) Describe a chemical test to distinguish between ethane and ethene.

**Answer:**
(a) General formula: **CₙH₂ₙ**
- Ethene: C₂H₄
- Propene: C₃H₆
- Butene: C₄H₈
- Pentene: C₅H₁₀

(b) Test: Add **bromine water** (orange/brown) to each compound.
- Ethene: bromine water is **decolourised** (becomes colourless) — alkene reacts by addition
   C₂H₄ + Br₂ → CH₂BrCH₂Br
- Ethane: bromine water **remains orange** — alkanes do not react with bromine water in absence of UV light

---

### Question 2 (WASSCE 2021)
(a) Write the equation for fermentation of glucose to produce ethanol.
(b) State THREE uses of ethanol.

**Answer:**
(a) C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂
Conditions: Yeast, 25-37°C, anaerobic conditions, pH ~4-7

(b) Uses of ethanol:
1. Alcoholic beverages (beer, wine, spirits)
2. Fuel/biofuel (E10, E85 blends with petrol)
3. Solvent (in perfumes, antiseptics, paints, varnishes)
4. Antiseptic/disinfectant (hand sanitiser)
5. Production of other chemicals (vinegar via oxidation)

---

### Question 3 (WASSCE 2020)
State ONE similarity and TWO differences between addition and condensation polymerisation.

**Answer:**
**Similarity:** Both involve monomers joining together to form a large polymer chain.

**Differences:**
| Addition | Condensation |
|----------|--------------|
| Monomers contain C=C double bond | Monomers have two functional groups (e.g., -OH and -COOH) |
| No small molecule is eliminated | Small molecule (usually H₂O) is eliminated at each bond |
| Product is only the polymer | Products are polymer AND a small molecule |
| Examples: polyethylene, PVC | Examples: nylon, polyester |

---

### Practice Questions
1. Draw the structural formula for: (a) methane (b) ethene (c) propanoic acid
2. What is the test for unsaturation in an organic compound?
3. Write the equation for the complete combustion of methane.
4. Explain what is meant by "cracking." Why is it done?
5. State TWO problems with widespread use of synthetic polymers.

**Answers:**
1. (a) CH₄ — 4 H around central C; (b) CH₂=CH₂ — double bond between two carbons; (c) CH₃CH₂COOH — three C chain with -COOH at end
2. Add bromine water (orange) → if decolourised, compound is unsaturated (contains C=C or C≡C bond)
3. CH₄ + 2O₂ → CO₂ + 2H₂O
4. Cracking: breaking long-chain alkanes (from crude oil distillation — less useful) into shorter, more useful alkenes and alkanes using heat and catalyst. Done because: (1) There is more demand for short-chain products (petrol, plastics) than long-chain ones; (2) Alkenes are more reactive and useful as chemical feedstocks
5. Non-biodegradable → accumulate in landfill and environment; plastic pollution in oceans and waterways; microplastics enter food chains
$CONTENT$, 'practice', 5);

  -- Electrochemistry
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Electrochemistry' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Electrochemistry', $CONTENT$
## Electrochemistry: Electricity and Chemical Reactions

**Electrochemistry** involves reactions that either produce electricity (electrochemical cells/batteries) or require electricity (electrolysis).

### Electrolysis
**Electrolysis** is the decomposition of an ionic compound (in molten or solution form) by passing an electric current through it.

**Key components:**
- **Electrolyte:** Ionic compound that is molten or in solution (conducts electricity by ion movement)
- **Electrodes:** Conductors that make contact with the electrolyte
  - **Cathode:** Negative electrode (connected to negative terminal of battery)
  - **Anode:** Positive electrode (connected to positive terminal of battery)
- **Power source:** Battery or DC power supply

**Direction of ion movement:**
- **Cations** (positive ions) move to the **CATHODE** (negative) — opposite charges attract
- **Anions** (negative ions) move to the **ANODE** (positive) — opposite charges attract

**What happens at each electrode:**
- **Cathode:** Cations gain electrons (REDUCTION) → form atoms or gas
- **Anode:** Anions lose electrons (OXIDATION) → form atoms or gas (or electrode dissolves if reactive)

**Mnemonic:** "RED CAT, OX AN" — Reduction at Cathode; Oxidation at Anode

### Types of Electrolytes
- **Molten ionic compounds:** All ions free to move (e.g., molten NaCl, molten Al₂O₃)
- **Aqueous solutions:** Ions of solute AND water ions (H⁺ and OH⁻) compete for discharge
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Electrolysis Examples and Applications', $CONTENT$
## Key Electrolysis Examples

### Electrolysis of Molten NaCl
Ions present: Na⁺ and Cl⁻ (only these two — no water)

At cathode (reduction): Na⁺ + e⁻ → Na (sodium metal deposited)
At anode (oxidation): 2Cl⁻ → Cl₂ + 2e⁻ (chlorine gas produced)

**Products:** Sodium metal (cathode) and Chlorine gas (anode)
Industrial importance: Chlor-alkali industry (making chlorine and sodium)

### Electrolysis of Aqueous NaCl (Brine)
Ions present: Na⁺, Cl⁻, H⁺ (from water), OH⁻ (from water)

At cathode: H⁺ or Na⁺ can be discharged. H⁺ is discharged preferentially (lower in activity series is easier to discharge)
2H⁺ + 2e⁻ → H₂↑ (hydrogen gas)

At anode: Cl⁻ or OH⁻ can be discharged. Cl⁻ discharged preferentially (when concentrated)
2Cl⁻ → Cl₂ + 2e⁻ (chlorine gas)

**Products:** H₂ (cathode), Cl₂ (anode), NaOH remains in solution
Industrial uses: H₂ (fertilisers, margarine), Cl₂ (PVC, bleach, disinfectants), NaOH (soap, paper, textiles)

### Electrolysis of Dilute H₂SO₄
Ions: H⁺, SO₄²⁻, OH⁻ (from water)

At cathode: 2H⁺ + 2e⁻ → H₂↑
At anode: 4OH⁻ → 2H₂O + O₂ + 4e⁻ (oxygen from hydroxide — as SO₄²⁻ is not discharged in dilute solution)

**Products:** H₂ (cathode) and O₂ (anode)
Volume of H₂ produced is TWICE the volume of O₂ (2:1 ratio — from water formula H₂O)

### Electrolysis of CuSO₄ with Copper Electrodes (Copper Plating/Purification)
At cathode: Cu²⁺ + 2e⁻ → Cu (copper deposited on cathode)
At anode: Cu → Cu²⁺ + 2e⁻ (copper anode dissolves — REACTIVE electrode)

**Net effect:** Copper transfers from anode to cathode
**Applications:**
- **Electroplating:** Coat objects with thin layer of metal (chrome plating, silver plating, gold plating of jewellery)
- **Copper refining:** Impure copper anode dissolves; pure copper deposits on cathode

### Electrolysis of Al₂O₃ (Extraction of Aluminium — Hall-Héroult Process)
- Al₂O₃ has very high melting point (2072°C) — too expensive to melt pure
- Dissolved in molten CRYOLITE (Na₃AlF₆) at 970°C — reduces energy cost
- Carbon electrodes (graphite) — replaced periodically as anode oxidises in air

At cathode: Al³⁺ + 3e⁻ → Al (liquid aluminium sinks to bottom)
At anode: 2O²⁻ → O₂ + 4e⁻ (oxygen produced; attacks carbon anode — produces CO₂)

**Products:** Molten aluminium
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Faraday''s Laws and Electroplating', $CONTENT$
## Faraday''s Laws of Electrolysis

### Faraday's First Law
The mass of substance deposited or released at an electrode is DIRECTLY PROPORTIONAL to the quantity of electricity (charge) passed.

mass ∝ Q  where Q = charge (in coulombs)

### Faraday's Second Law
For the same quantity of electricity, the mass of different substances deposited is proportional to their relative atomic mass divided by the number of electrons transferred:

mass ∝ M/n  where M = molar mass, n = number of electrons

### Calculations Using Faraday's Laws

**Key quantities:**
- Q = I × t (Charge = Current × Time in seconds)
- 1 Faraday (F) = 96,500 C/mol (charge of 1 mol of electrons)
- Moles of electrons = Q/F

**Formula:**
Mass deposited (g) = (I × t × M) / (n × F)

Where: I = current (A), t = time (s), M = molar mass (g/mol), n = electrons per ion, F = 96,500 C/mol

### Example Calculation
What mass of copper is deposited if 2A passes through CuSO₄ solution for 30 minutes?

Cu²⁺ + 2e⁻ → Cu (n = 2, M of Cu = 63.5 g/mol)
I = 2A; t = 30 × 60 = 1800 s

Mass = (2 × 1800 × 63.5) / (2 × 96500)
= 228600 / 193000
= **1.18 g of copper**

### Electrochemical Cells (Batteries)
In an electrochemical cell, a spontaneous chemical reaction generates electricity:
- **Zinc-copper cell (Daniell cell):** Zinc anode in ZnSO₄; copper cathode in CuSO₄; salt bridge
- Zinc is more reactive → oxidised: Zn → Zn²⁺ + 2e⁻ (anode)
- Cu²⁺ ions reduced: Cu²⁺ + 2e⁻ → Cu (cathode)
- Electrons flow from Zn to Cu through external circuit (conventional current from Cu to Zn)

**Standard electrode potential:** Relative tendency of a metal to oxidise
- More negative E° → more reactive (stronger reducing agent)
- More positive E° → less reactive (stronger oxidising agent)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Electrochemistry', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Define electrolysis.
(b) State the products at each electrode when dilute sulphuric acid is electrolysed using platinum electrodes.

**Answer:**
(a) Electrolysis is the decomposition of an ionic compound (in molten form or in aqueous solution) by passing an electric current through it.

(b) Dilute H₂SO₄:
- **Cathode (negative electrode):** Hydrogen gas (H₂)
  2H⁺ + 2e⁻ → H₂↑
- **Anode (positive electrode):** Oxygen gas (O₂)
  4OH⁻ → 2H₂O + O₂ + 4e⁻
Ratio of H₂ to O₂ by volume = **2:1**

---

### Question 2 (WASSCE 2021)
Explain why aluminium cannot be extracted from its ore by electrolysis of aqueous Al₂O₃ solution.

**Answer:**
If Al₂O₃ were dissolved in water:
- At the cathode: Al³⁺ competes with H⁺ (from water) for discharge
- **H⁺ is preferentially discharged** because hydrogen is BELOW aluminium in the electrochemical series / activity series
- Aluminium is too reactive — H⁺ ions are discharged instead of Al³⁺ → you get hydrogen gas, not aluminium metal

Therefore, molten Al₂O₃ (dissolved in cryolite) must be used — there are NO water molecules → no competition → Al³⁺ is the only cation → pure aluminium is deposited.

---

### Question 3 (WASSCE 2020)
Describe how electroplating can be used to coat a spoon with silver.

**Answer:**
Setup:
1. **Cathode:** The spoon (object to be plated) — connected to negative terminal
2. **Anode:** A piece of pure silver — connected to positive terminal
3. **Electrolyte:** Silver nitrate solution (AgNO₃) — contains Ag⁺ ions

Process:
- At cathode (spoon): Ag⁺ + e⁻ → Ag (silver deposits on spoon surface)
- At anode (silver): Ag → Ag⁺ + e⁻ (silver anode dissolves — maintains Ag⁺ concentration)

The spoon is uniformly coated with a thin layer of silver. Clean the spoon thoroughly before plating to ensure adhesion.

---

### Practice Questions
1. State what happens at the cathode and anode during electrolysis.
2. Calculate the mass of zinc deposited if 3A flows for 1 hour through ZnSO₄ solution. (Zn = 65, F = 96,500 C/mol)
3. State THREE industrial applications of electrolysis.
4. Why is cryolite used in aluminium extraction?
5. In a simple electrochemical cell using zinc and copper, which metal is the anode? Explain.

**Answers:**
1. Cathode: cations gain electrons (reduction) → atoms deposited or gas released. Anode: anions lose electrons (oxidation) → atoms/gas released OR reactive electrode dissolves
2. Zn²⁺ + 2e⁻ → Zn; n=2, M=65; I=3A, t=3600s; Mass = (3×3600×65)/(2×96500) = 702000/193000 = **3.64 g**
3. Extraction of reactive metals (Al, Na, Mg); electroplating (silverware, car parts, jewellery); electrolytic refining of metals (copper); producing chemicals (NaOH, Cl₂, H₂ from brine)
4. Al₂O₃ has a very high melting point (2072°C). Dissolving it in molten cryolite reduces the operating temperature to ~970°C → much less energy required → more economical. Cryolite itself does not interfere with the electrolysis.
5. **Zinc** is the anode. Zinc is more reactive than copper → more readily oxidised → loses electrons → Zn → Zn²⁺ + 2e⁻. The more reactive metal (higher in the activity series) is oxidised at the anode.
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Electrochemistry Extended Notes', $CONTENT$
## Discharge Order of Ions

When multiple ions compete for discharge, the order depends on:
1. **Position in activity/electrochemical series:** Less reactive metals are discharged preferentially at cathode
2. **Concentration:** High concentration of an ion favours its discharge

### Cation Discharge Order at Cathode
(Most easily discharged → least easily discharged):
**Cu²⁺ > Pb²⁺ > H⁺ > Zn²⁺ > Fe²⁺ > Al³⁺ > Na⁺ > Ca²⁺ > K⁺**

H⁺ from water acts as a "fence" — metals below H in activity series (Cu, Ag, Au) are deposited in preference to H₂; metals above H (Zn, Al, Na, K) are NOT deposited from aqueous solution — H₂ is discharged instead.

### Anion Discharge Order at Anode
(Most easily discharged → least):
**I⁻ > Br⁻ > Cl⁻ > OH⁻ > SO₄²⁻ > NO₃²⁻**

From concentrated solutions: Cl⁻ may be discharged over OH⁻
From dilute solutions: OH⁻ discharged over Cl⁻

### Test for Products of Electrolysis
- **H₂ (gas):** Burning splint — burns with a "pop" (squeaky pop); or ignites directly
- **Cl₂ (gas):** Yellow-green; bleaches damp litmus paper (turns red then bleaches white)
- **O₂ (gas):** Glowing splint — relights (oxygen supports combustion)
- **Cu (solid):** Pink/copper-coloured deposit on cathode
- **Ag (solid):** Shiny silver deposit
$CONTENT$, 'examples', 5);

  -- Rates of Reaction
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Rates of Reaction and Equilibrium' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Rates of Reaction', $CONTENT$
## How Fast Do Reactions Occur?

**Rate of reaction** is the change in concentration of reactants or products per unit time.

Rate = Change in concentration / Time  (mol/L/s)
OR: Rate = Amount of reactant used OR product formed / Time

### The Collision Theory
For a chemical reaction to occur:
1. Reactant particles must **collide** with each other
2. Collisions must have sufficient **energy** (at least the activation energy, Eₐ)
3. Collisions must have the correct **orientation** (molecules must hit correctly)

**Activation energy (Eₐ):** Minimum energy required for a collision to lead to a reaction.

**Effective collision:** A collision with sufficient energy and correct orientation to result in reaction.

**Rate of reaction ∝ Frequency of effective collisions**

### Factors Affecting Rate of Reaction

**1. Temperature**
Effect: Increasing temperature increases rate
Why: More kinetic energy → particles move faster → more frequent collisions → more collisions exceed activation energy → more effective collisions per second
Rule: For every 10°C rise in temperature, rate approximately **doubles**

**2. Concentration (of solutions)**
Effect: Increasing concentration increases rate
Why: More particles per unit volume → greater frequency of collisions → more effective collisions per second

**3. Pressure (of gases)**
Effect: Increasing pressure increases rate for gas reactions
Why: Same effect as increasing concentration — particles compressed into smaller volume → more frequent collisions

**4. Surface Area (of solids)**
Effect: Increasing surface area (smaller pieces) increases rate
Why: More reactant particles exposed at surface → more collisions possible with other reactant
Example: Marble chips vs marble powder reacting with HCl — powder reacts much faster

**5. Catalyst**
Effect: Catalyst increases rate; is not used up
Why: Provides an alternative reaction pathway with LOWER activation energy → more collisions have sufficient energy → faster reaction
Example: MnO₂ catalyses decomposition of H₂O₂; Fe catalyst in Haber process; Pt/Pd in catalytic converters

**6. Light (for photochemical reactions)**
Example: Halogenation of alkanes needs UV light; photosynthesis requires visible light
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Measuring and Interpreting Reaction Rates', $CONTENT$
## Measuring Rate of Reaction

### Methods of Measuring Rate

**1. Volume of gas produced (most common):**
- Collect gas in gas syringe or by water displacement
- Plot volume vs time → gradient = rate

**2. Mass loss:**
- Place flask on balance; if gas escapes, mass decreases
- Plot mass vs time

**3. Colour change:**
- Use colorimeter to measure absorbance at specific wavelength
- Useful for reactions where colour of reactant or product changes

**4. Precipitation/turbidity:**
- Sodium thiosulphate + HCl → S precipitate forms
- Measure time for cross drawn under flask to disappear
- Rate ∝ 1/time

**5. pH change:**
- If H⁺ produced or consumed, measure pH over time

### Interpreting Rate Graphs

**Volume of gas vs time:**
- Steep curve at start → fast rate (high concentration of reactants)
- Curve levels off → reaction slowing (reactants being used up)
- Horizontal = reaction complete (no more gas produced)

**Effects of changing conditions on graphs:**
- Higher temperature: steeper initial gradient; same final volume; completes sooner
- Higher concentration: steeper initial gradient; same final volume if limiting reactant unchanged
- Catalyst: steeper gradient; same final volume
- Larger surface area: steeper gradient; same final volume

### Catalysts in Detail

**Homogeneous catalyst:** Same phase as reactants (e.g., H₂SO₄ catalyst in esterification — all liquid)
**Heterogeneous catalyst:** Different phase (e.g., Fe solid in Haber process for gas-phase reaction)

**Enzymes:** Biological catalysts — proteins; highly specific; work at body temperature; denatured by high temperature/extreme pH

**Industrial catalysts:**
- Fe catalyst: Haber process (N₂ + 3H₂ ⇌ 2NH₃)
- V₂O₅ catalyst: Contact process (SO₂ → SO₃ for H₂SO₄ manufacture)
- Pt/Pd/Rh: Catalytic converters in car exhausts
- Zeolites: Cracking of hydrocarbons in petroleum refining
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Chemical Equilibrium and Le Chatelier''s Principle', $CONTENT$
## Reversible Reactions and Equilibrium

### Reversible Reactions
Some reactions can go in BOTH directions:
A + B ⇌ C + D
→ Forward reaction: A + B → C + D
← Backward reaction: C + D → A + B

### Dynamic Equilibrium
At equilibrium:
- **Rate of forward reaction = Rate of backward reaction**
- Concentrations of all species REMAIN CONSTANT (but are not necessarily equal)
- The system appears to have stopped changing (but isn't — both reactions still occur)
- Closed system required

### Le Chatelier's Principle
**If a change is made to a system at equilibrium, the equilibrium shifts to OPPOSE (counteract) that change.**

**Effect of increasing concentration of reactant:**
→ Equilibrium shifts to the RIGHT (toward products) to use up the added reactant
→ More products formed; some reactant concentration lost

**Effect of increasing temperature:**
→ Equilibrium shifts in the ENDOTHERMIC direction (absorbs heat — opposes the temperature increase)
→ For exothermic reactions: equilibrium shifts LEFT (less product at higher temperature)
→ For endothermic reactions: equilibrium shifts RIGHT (more product at higher temperature)

**Effect of increasing pressure (gases):**
→ Equilibrium shifts toward side with FEWER MOLES OF GAS (to reduce pressure — Le Chatelier)

**Effect of catalyst:**
→ Catalyst does NOT shift equilibrium; it speeds up BOTH forward and backward reactions equally; equilibrium is reached FASTER but position is UNCHANGED

### The Haber Process — Application of Le Chatelier's Principle
N₂(g) + 3H₂(g) ⇌ 2NH₃(g)  ΔH = -92 kJ/mol (exothermic)

**Moles of gas:** 4 on left, 2 on right → fewer on right

Le Chatelier predictions:
- **High pressure:** Favours RIGHT (fewer gas moles) → more NH₃ → Use ~200 atm
- **Low temperature:** Favours RIGHT (exothermic, so cooling favours product) → but too slow at low temperature!
- **Compromise:** 450°C used — faster rate but lower yield; Fe catalyst used to speed up reaction
- **Continuous removal of NH₃:** Shifts equilibrium right (product removal) → more reactants converted

**Actual industrial conditions:**
- Temperature: 450°C (compromise — fast enough rate with acceptable yield)
- Pressure: 200 atm (high but not extreme — engineering/cost considerations)
- Catalyst: Iron (with promoters K₂O and Al₂O₃)
- Ammonia yield: ~15% per pass; unreacted N₂/H₂ recycled
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Rates and Equilibrium', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) State THREE factors that affect the rate of a chemical reaction.
(b) Explain why increasing temperature increases the rate of reaction.

**Answer:**
(a) Any three: temperature, concentration, pressure (for gases), surface area (for solids), catalyst, light (for photochemical reactions)

(b) Increasing temperature increases rate because:
1. Particles gain more kinetic energy → move FASTER
2. More frequent collisions (more collisions per second)
3. More importantly: a GREATER PROPORTION of collisions have energy ≥ activation energy
4. Therefore more EFFECTIVE collisions per second → faster rate
5. For every 10°C rise: rate approximately doubles

---

### Question 2 (WASSCE 2021)
For the equilibrium: N₂(g) + 3H₂(g) ⇌ 2NH₃(g)  ΔH = -92 kJ/mol

Using Le Chatelier's principle, predict the effect on the equilibrium position of:
(a) Increasing pressure  (b) Increasing temperature  (c) Adding a catalyst

**Answer:**
(a) **Increasing pressure:** Equilibrium shifts to the RIGHT (toward products). The right side has fewer moles of gas (2) than the left (4). Shifting right reduces the total number of gas molecules, which reduces pressure — opposing the change. → More NH₃ produced.

(b) **Increasing temperature:** Equilibrium shifts to the LEFT (toward reactants). The forward reaction is exothermic (-92 kJ/mol), so the backward reaction is endothermic. Increasing temperature shifts equilibrium in the endothermic direction (LEFT) to absorb the extra heat. → Less NH₃ at higher temperature.

(c) **Adding a catalyst:** Equilibrium position is NOT changed. The catalyst speeds up both forward and backward reactions equally, so equilibrium is reached faster but the composition at equilibrium remains the same.

---

### Practice Questions
1. A student investigates the reaction of marble chips (CaCO₃) with HCl. State TWO ways to increase the rate without changing temperature or concentration.
2. Explain what is meant by "dynamic equilibrium."
3. The decomposition of H₂O₂ is slow without a catalyst. What does MnO₂ do?
4. For the equilibrium: 2SO₂ + O₂ ⇌ 2SO₃ (exothermic), predict the effect of: (a) increasing pressure (b) increasing temperature.
5. Why is a high pressure not used in the Contact process despite it favouring SO₃ production?

**Answers:**
1. Use smaller marble chips (increase surface area); or use powdered marble (maximum surface area)
2. A state of apparent equilibrium in which the rates of the forward and backward reactions are EQUAL; concentrations remain constant, but both reactions continue occurring simultaneously
3. MnO₂ is a catalyst: provides alternative reaction pathway with lower activation energy → more collisions are effective at given temperature → rate increases. MnO₂ is not consumed.
4. (a) More gas on left (3 moles) than right (2 moles) → increasing pressure shifts RIGHT → more SO₃ (b) Forward reaction is exothermic → increasing temperature shifts LEFT (to absorb heat) → less SO₃ at higher temperature
5. High pressure is expensive (strong equipment, energy) and engineering challenges; the reaction already reaches high yields (~99%) under existing conditions (450°C, moderate pressure, V₂O₅ catalyst); extra cost not justified
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Rates and Equilibrium Extended', $CONTENT$
## Energy Profiles and Activation Energy

### Energy Profile Diagrams
An energy profile shows the energy changes during a reaction:

**Exothermic reaction:** Products at LOWER energy than reactants
- Activation energy (Eₐ): height of "energy hill" from reactants to peak
- ΔH (enthalpy change) = energy of products - energy of reactants = NEGATIVE value
- Example: Combustion of methane

**Endothermic reaction:** Products at HIGHER energy than reactants
- Activation energy still shown as hill from reactants
- ΔH = POSITIVE value
- Example: Thermal decomposition of CaCO₃

**Effect of catalyst on energy profile:**
- Catalyst LOWERS the activation energy (lower hill)
- Reactants and products at same energy levels (ΔH unchanged)
- More particles can get over the lower hill → faster reaction

### Worked Example: Rate Experiment
A student reacts 50 cm³ of 1.0 mol/L HCl with 2g of marble chips (CaCO₃). A gas syringe collects CO₂.

CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂

(a) Which reactant is in excess? Calculate moles of each.

Moles CaCO₃ = 2/100 = 0.02 mol [Molar mass CaCO₃ = 40+12+48 = 100]
Moles HCl = 1.0 × 50/1000 = 0.05 mol
Moles HCl needed for 0.02 mol CaCO₃ = 0.02 × 2 = 0.04 mol
HCl available = 0.05 mol > 0.04 mol needed
Therefore **CaCO₃ is the limiting reactant**; HCl is in excess.

(b) Maximum CO₂ produced:
Moles CO₂ = moles CaCO₃ = 0.02 mol
Volume at RTP (24 L/mol) = 0.02 × 24 = 0.48 L = **480 cm³**
$CONTENT$, 'examples', 5);

  -- Oxidation and Reduction
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Oxidation and Reduction (Redox)' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Oxidation and Reduction (Redox)', $CONTENT$
## Redox: Electron Transfer Reactions

### Definitions of Oxidation and Reduction

**OLD definition (oxygen transfer):**
- Oxidation: gain of oxygen (or loss of hydrogen)
- Reduction: loss of oxygen (or gain of hydrogen)

**MODERN definition (electron transfer — more general):**
- **Oxidation:** Loss of electrons (OIL)
- **Reduction:** Gain of electrons (RIG)
- **Mnemonic:** OIL RIG — Oxidation Is Loss; Reduction Is Gain (of electrons)

Alternatively using oxidation numbers:
- Oxidation: increase in oxidation number
- Reduction: decrease in oxidation number

### Oxidising and Reducing Agents
- **Oxidising agent:** The substance that OXIDISES another — it GAINS electrons (is itself REDUCED)
- **Reducing agent:** The substance that REDUCES another — it LOSES electrons (is itself OXIDISED)

**Key:** Redox reactions always occur together — if something is oxidised, something else must be reduced.

### Oxidation Numbers (Oxidation States)
Rules for assigning oxidation numbers:
1. Pure elements: oxidation number = 0 (e.g., Na, Fe, O₂, H₂ — all zero)
2. Monatomic ions: equals charge (Na⁺ = +1, Cl⁻ = -1, Fe³⁺ = +3)
3. O in compounds: usually -2 (except in peroxides: -1; F₂O: +2)
4. H in compounds: usually +1 (except metal hydrides: -1)
5. Sum of all oxidation numbers in compound = 0
6. Sum of all oxidation numbers in ion = charge of ion

**Examples:**
- H₂SO₄: H(+1)×2 + S + O(-2)×4 = 0 → S = +6
- KMnO₄: K(+1) + Mn + O(-2)×4 = 0 → Mn = +7
- Cr₂O₇²⁻: 2Cr + 7×(-2) = -2 → 2Cr = +12 → Cr = +6
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Half-Equations and Redox Reactions', $CONTENT$
## Writing Half-Equations and Full Redox Equations

### Half-Equations
Each half-equation shows either oxidation OR reduction:

**At cathode (reduction — gains electrons):**
Cu²⁺ + 2e⁻ → Cu
2H⁺ + 2e⁻ → H₂
Ag⁺ + e⁻ → Ag
Fe³⁺ + e⁻ → Fe²⁺ (iron reduced from +3 to +2)

**At anode (oxidation — loses electrons):**
Zn → Zn²⁺ + 2e⁻
2Cl⁻ → Cl₂ + 2e⁻
4OH⁻ → 2H₂O + O₂ + 4e⁻
Fe²⁺ → Fe³⁺ + e⁻ (iron oxidised from +2 to +3)

### Combining Half-Equations to Get Full Ionic Equation
1. Write both half-equations
2. Balance electrons (multiply if needed so electrons cancel)
3. Add half-equations together

**Example:** Zinc reacts with copper sulphate solution
Oxidation: Zn → Zn²⁺ + 2e⁻
Reduction: Cu²⁺ + 2e⁻ → Cu
Add: Zn + Cu²⁺ + 2e⁻ → Zn²⁺ + 2e⁻ + Cu
Cancel electrons: **Zn + Cu²⁺ → Zn²⁺ + Cu**

Identify:
- Zn is OXIDISED (loses electrons) → Zn is reducing agent
- Cu²⁺ is REDUCED (gains electrons) → Cu²⁺ / CuSO₄ is oxidising agent

### Common Oxidising and Reducing Agents

**Common oxidising agents (accept electrons — are reduced):**
- KMnO₄ (potassium permanganate/manganate(VII)) — powerful; purple → colourless
- K₂Cr₂O₇ (potassium dichromate) — orange → green
- O₂ (oxygen) — in combustion
- Cl₂ (chlorine)
- H₂O₂ (hydrogen peroxide)
- Concentrated HNO₃

**Common reducing agents (donate electrons — are oxidised):**
- Metals (Zn, Fe, Mg, Al)
- H₂ (hydrogen gas)
- C (carbon) — in reduction of metal oxides
- CO (carbon monoxide) — in blast furnace
- SO₂ (sulphur dioxide)
- Fe²⁺ ions
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'WASSCE Questions: Redox', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Define oxidation and reduction in terms of electron transfer.
(b) Identify the oxidising and reducing agents in: Zn + CuSO₄ → ZnSO₄ + Cu

**Answer:**
(a) **Oxidation:** Loss of electrons (an atom/ion loses one or more electrons → becomes more positive)
**Reduction:** Gain of electrons (an atom/ion gains one or more electrons → becomes less positive/more negative)
[OIL RIG — Oxidation Is Loss; Reduction Is Gain]

(b) Ionic equation: Zn + Cu²⁺ → Zn²⁺ + Cu

Zn → Zn²⁺ + 2e⁻ (Zn is OXIDISED — loses electrons) → **Zn is the reducing agent**
Cu²⁺ + 2e⁻ → Cu (Cu²⁺ is REDUCED — gains electrons) → **CuSO₄ (Cu²⁺) is the oxidising agent**

---

### Question 2 (WASSCE 2021)
Write the half-equation for the reaction at:
(a) The cathode when copper(II) sulphate solution is electrolysed
(b) The anode when chloride ions are discharged

**Answer:**
(a) Cathode (reduction): **Cu²⁺ + 2e⁻ → Cu** (copper deposited)

(b) Anode (oxidation): **2Cl⁻ → Cl₂ + 2e⁻** (chlorine gas released)

---

### Question 3 (WASSCE 2020)
Assign oxidation numbers to each atom in: (a) H₂SO₄  (b) KMnO₄  (c) Fe₂O₃

**Answer:**
(a) H₂SO₄: H = **+1**; O = **-2**; S = ?
2(+1) + S + 4(-2) = 0 → 2 + S - 8 = 0 → S = **+6**

(b) KMnO₄: K = **+1**; O = **-2**; Mn = ?
+1 + Mn + 4(-2) = 0 → 1 + Mn - 8 = 0 → Mn = **+7**

(c) Fe₂O₃: O = **-2**; Fe = ?
2Fe + 3(-2) = 0 → 2Fe = +6 → Fe = **+3**

---

### Practice Questions
1. Identify which species is oxidised and which is reduced: 2Fe + 3Cl₂ → 2FeCl₃
2. Write the half-equations and full ionic equation for Mg + 2HCl → MgCl₂ + H₂
3. State the oxidation number of Cr in: K₂Cr₂O₇
4. Is CO a reducing agent or oxidising agent in: Fe₂O₃ + 3CO → 2Fe + 3CO₂? Explain.
5. Why does iron(III) oxide not occur at room temperature in reducing atmospheres?

**Answers:**
1. Fe: 0 → +3 (oxidation number increases) → Fe is OXIDISED; Cl₂: 0 → -1 → Cl is REDUCED; Fe is reducing agent; Cl₂ is oxidising agent
2. Oxidation: Mg → Mg²⁺ + 2e⁻; Reduction: 2H⁺ + 2e⁻ → H₂; Full: Mg + 2H⁺ → Mg²⁺ + H₂
3. 2K(+1) + 2Cr + 7O(-2) = 0 → 2 + 2Cr - 14 = 0 → 2Cr = 12 → **Cr = +6**
4. CO is the **reducing agent** — it provides electrons (is oxidised: C goes from +2 in CO to +4 in CO₂ — oxidation number increases → oxidised). Fe₂O₃ is the oxidising agent (Fe goes from +3 to 0 — reduced).
5. In reducing atmospheres, Fe₂O₃ would be reduced → Fe²⁺ or Fe⁰ (iron metal or FeO/Fe₃O₄ at room temperature over long time — this is rusting prevention principle)
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Redox Extended: Corrosion and Protection', $CONTENT$
## Corrosion of Metals

**Corrosion** is the gradual chemical deterioration of a metal due to reaction with its environment (oxygen, water, acids).

### Rusting of Iron
Rusting is electrochemical oxidation of iron.

**Conditions needed:** Both oxygen AND water (moisture) must be present.
If only water — no rust; if only oxygen (dry air) — no rust; need BOTH.

**Reaction:**
4Fe + 3O₂ + 2H₂O → 2Fe₂O₃·H₂O (hydrated iron(III) oxide = rust)

**Factors accelerating rusting:**
- Salt solution/electrolyte (speeds up electrochemical reaction)
- Acid (lower pH)
- Galvanic coupling with a more reactive metal (acts as cathode — iron corrodes faster as anode)

### Prevention of Rusting
1. **Painting/coating:** Physical barrier between iron and environment
2. **Galvanising:** Coating with zinc (more reactive than Fe)
   - Zinc acts as **sacrificial anode** — even if coating scratched, zinc corrodes instead of iron
3. **Electroplating:** Coat with chromium (stainless steel), nickel, tin
4. **Alloying:** Stainless steel (Fe + Cr + Ni) — Cr₂O₃ layer prevents further corrosion
5. **Cathodic protection:** Connect iron to more reactive metal (Mg, Zn) — the more reactive metal corrodes (sacrificial anode); iron protected (cathode — gains electrons rather than losing them)
6. **Oiling/greasing:** Physical barrier
7. **Using desiccants:** Remove moisture

### Test for Rust
- Pink phenolphthalein indicator detects OH⁻ (where O₂ is reduced = cathode areas)
- Blue potassium ferricyanide detects Fe²⁺ ions (where Fe corrodes = anode areas)
$CONTENT$, 'examples', 5);

  -- Metals and Activity Series
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Metals and the Activity Series' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Metals and the Activity Series', $CONTENT$
## Metals: Properties and Reactivity

### General Properties of Metals
- Shiny (lustrous) appearance
- Good conductors of heat and electricity (delocalised electrons)
- Malleable (can be hammered into shape) and ductile (can be drawn into wire)
- High melting and boiling points (most)
- Form positive ions (cations) by losing electrons
- Form basic oxides

**Exceptions:** Mercury (Hg) — liquid at room temp; Sodium (Na) — low density, low mp; Gallium — mp just above room temperature

### The Activity (Reactivity) Series
Metals arranged in ORDER of decreasing reactivity:
```
Potassium (K)    ]
Sodium (Na)      ] Reactive — react violently with cold water
Calcium (Ca)     ]
Magnesium (Mg)   ] React slowly with cold water; quickly with hot water/steam/dilute acid
Aluminium (Al)   ]
Zinc (Zn)        ]
Iron (Fe)        ] React with steam/dilute acids (not cold water)
Lead (Pb)        ]
Hydrogen (H)     ] — reference line — above: reactive; below: unreactive
Copper (Cu)      ]
Silver (Ag)      ] Do not react with dilute acids; unreactive
Gold (Au)        ]
Platinum (Pt)    ]
```

**Memory aid:** "Potatoes Seek Carrots, Many Are Zealous, In Life Helping Create Solutions, Great Pleasure."

### Reactions of Metals with Water
- K, Na, Li: React vigorously with cold water → metal hydroxide + H₂
  2Na + 2H₂O → 2NaOH + H₂↑ (floats, moves rapidly, fizzes)
  K: Lilac flame; may ignite the H₂ produced
- Ca: Reacts slowly with cold water: Ca + 2H₂O → Ca(OH)₂ + H₂↑
- Mg: Very slow with cold water; fast with steam: Mg + H₂O → MgO + H₂
- Al, Zn, Fe: React with steam only (not cold water)
  Zn + H₂O(g) → ZnO + H₂; Fe + H₂O(g) → Fe₃O₄ + H₂
- Cu, Ag, Au, Pt: No reaction with water
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Metal Extraction Methods', $CONTENT$
## Extracting Metals from their Ores

The method used to extract a metal depends on its position in the activity series:

### Highly Reactive Metals (K, Na, Ca, Mg, Al)
**Method: Electrolysis of molten compound**
- Too reactive to be extracted by reduction
- Example: Al from Al₂O₃ (Hall-Héroult process — discussed in electrochemistry)
- Example: Na from molten NaCl (Downs process)
- Example: Mg from molten MgCl₂

### Moderately Reactive Metals (Zn, Fe, Pb, Sn)
**Method: Reduction by carbon (coke) or carbon monoxide**

**Iron extraction — Blast furnace:**
Raw materials: Iron ore (haematite — Fe₂O₃), coke (C), limestone (CaCO₃), hot air

Reactions in order of temperature:
1. C + O₂ → CO₂ (coke burns — supplies heat)
2. CO₂ + C → 2CO (coke reduces CO₂ → CO — the main reducing agent)
3. Fe₂O₃ + 3CO → 2Fe + 3CO₂ (iron ore reduced by CO — main reaction)
   OR: Fe₂O₃ + 3C → 2Fe + 3CO₂ (at very high temperatures)
4. CaCO₃ → CaO + CO₂ (limestone decomposes — removes acidic silica impurities)
5. CaO + SiO₂ → CaSiO₃ (slag formation — removes sand/silica impurities)

**Products:**
- Liquid iron (pig iron) sinks to bottom → tapped off
- Liquid slag (CaSiO₃) floats on iron → tapped off separately; used for road-making
- Waste gases (CO₂, N₂) exit from top

**Pig iron vs Steel:**
- Pig iron: contains ~4% carbon and other impurities → brittle, hard
- Steel: pig iron with controlled carbon content (~0.1-1.5%) + other alloying elements
  - High carbon steel: hard but brittle (cutting tools)
  - Low carbon steel: soft and malleable (car bodies)
  - Stainless steel: Fe + ~18% Cr + 8% Ni → corrosion resistant (cutlery, surgical instruments)

### Low Reactivity Metals (Cu, Ag, Au)
**Method:** Heating ore in air (roasting) OR found as native metal
- Cu₂S + O₂ → 2Cu + SO₂ (roasting copper sulphide ore)
- Further refining by electrolysis (electrolytic refining of copper)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Displacement Reactions and Worked Examples', $CONTENT$
## Displacement Reactions

A more reactive metal displaces a less reactive metal from its salt solution:

**Rule:** If Metal A is ABOVE Metal B in activity series, A will displace B from a solution of B's salt.

### Examples of Displacement
**Zinc + copper sulphate solution:**
Zn + CuSO₄ → ZnSO₄ + Cu
Observations: Blue solution decolourises; pink/copper-coloured metal deposits on zinc

**Iron + copper sulphate:**
Fe + CuSO₄ → FeSO₄ + Cu
Observations: Same — copper deposits on iron; blue fades

**Copper + zinc sulphate:** NO REACTION (Cu is below Zn in activity series)

**Thermite reaction:** More dramatic displacement
2Al + Fe₂O₃ → Al₂O₃ + 2Fe (Al above Fe — extremely exothermic!)
Used for welding railway tracks

### Worked Example: Predicting Reactions
Will a reaction occur? If yes, write the equation.
(a) Mg + ZnSO₄ solution  (b) Ag + FeSO₄ solution  (c) Fe + Pb(NO₃)₂ solution

(a) Mg is ABOVE Zn → YES
Mg + ZnSO₄ → MgSO₄ + Zn
[Mg dissolves; zinc metal deposits; solution gets paler]

(b) Ag is BELOW Fe → NO REACTION
Silver is less reactive than iron → cannot displace iron

(c) Fe is ABOVE Pb → YES
Fe + Pb(NO₃)₂ → Fe(NO₃)₂ + Pb
[Lead deposits on iron surface]

### Alloys
**Alloy:** A mixture of a metal with other elements (usually other metals or carbon)
- Alloys have improved properties compared to pure metals

Common alloys:
- **Brass:** Cu + Zn (harder than copper; used in musical instruments, taps)
- **Bronze:** Cu + Sn (harder; used in statues, coins)
- **Solder:** Pb + Sn (low melting point; used to join electronic components)
- **Steel:** Fe + C (harder than iron; structural applications)
- **Stainless steel:** Fe + Cr + Ni (corrosion resistant)
- **Duralumin:** Al + Cu + Mg (strong, light; used in aircraft)
- **Amalgam:** Hg + another metal (dental fillings; decreasing use)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Metals and Activity Series', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Write the activity series of metals from most to least reactive (include: K, Na, Ca, Mg, Al, Zn, Fe, Pb, H, Cu, Ag, Au).
(b) Predict what happens when iron is placed in copper sulphate solution.

**Answer:**
(a) K > Na > Ca > Mg > Al > Zn > Fe > Pb > H > Cu > Ag > Au
(most reactive at top; least reactive at bottom)

(b) Iron is ABOVE copper in the activity series → iron displaces copper.
Reaction: Fe + CuSO₄ → FeSO₄ + Cu

Observations:
- Iron surface becomes coated with pink/reddish copper metal
- Blue colour of CuSO₄ solution gradually fades as Fe²⁺ (pale green) forms
- Iron gradually dissolves

---

### Question 2 (WASSCE 2021)
Describe the extraction of iron from its ore in a blast furnace.

**Answer:**
(Full description of blast furnace — see extraction methods section above)

Key points to include:
1. Raw materials: haematite (Fe₂O₃), coke (C), limestone (CaCO₃), hot air blast
2. Coke burns → CO₂; CO₂ + C → CO (reducing agent)
3. Fe₂O₃ + 3CO → 2Fe + 3CO₂ (iron reduced)
4. Limestone decomposes → CaO; CaO + SiO₂ → CaSiO₃ (slag — removes impurities)
5. Molten iron sinks to bottom; slag floats; both tapped off

---

### Practice Questions
1. State TWO properties that are common to all metals.
2. Explain why aluminium must be extracted by electrolysis and not by reduction with carbon.
3. State the alloy formed from: (a) copper and zinc (b) iron and carbon (c) copper and tin
4. Suggest a reason why gold is found as native metal (uncombined) in nature.
5. What is the function of limestone in the blast furnace?

**Answers:**
1. Any two: conduct electricity; malleable/ductile; high melting point; shiny; form positive ions; conduct heat
2. Aluminium is very reactive (high in activity series) — it is above carbon in reactivity. Carbon cannot reduce Al₂O₃ at practical temperatures (would need >2000°C). Also, Al formed would react with carbon → aluminium carbide, not pure Al. Electrolysis of molten Al₂O₃ (in cryolite) is the only practical method.
3. (a) Brass (b) Steel (c) Bronze
4. Gold is at the BOTTOM of the activity series — it is extremely unreactive (does not react with oxygen, water, or most acids). Therefore it exists in its elemental form in nature. Highly reactive metals are found as compounds (ores); unreactive ones as native metals.
5. Limestone (CaCO₃) decomposes to form CaO. CaO then reacts with silica (SiO₂) impurities in the iron ore to form calcium silicate (CaSiO₃) = slag. The slag is liquid at blast furnace temperatures and floats on top of the molten iron, allowing it to be removed. Without limestone, silica would remain in the iron making it impure.
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Metals Extended: Reactions and Tests', $CONTENT$
## Reactions of Metals with Dilute Acids

**Metals above hydrogen in activity series** react with dilute acids to give hydrogen gas:
Metal + dilute acid → Salt + Hydrogen gas

Mg + 2HCl → MgCl₂ + H₂↑ (rapid — vigorous bubbling)
Zn + H₂SO₄ → ZnSO₄ + H₂↑ (moderate rate)
Fe + 2HCl → FeCl₂ + H₂↑ (slow)
Cu + HCl → NO REACTION (Cu below H in activity series)

### Tests for Metals and their Ions

**Flame tests (metal cations identified by colour of flame):**
| Metal ion | Flame colour |
|-----------|-------------|
| Li⁺ | Crimson/red |
| Na⁺ | Yellow/orange |
| K⁺ | Lilac/violet |
| Ca²⁺ | Brick red |
| Ba²⁺ | Apple/lime green |
| Cu²⁺ | Blue-green |
| Sr²⁺ | Scarlet red |

**Test for iron ions:**
- Fe²⁺: Add NaOH solution → green precipitate; add potassium hexacyanoferrate(III) → blue precipitate (Turnbull's blue)
- Fe³⁺: Add NaOH solution → brown/rust-coloured precipitate; add potassium thiocyanate (KSCN) → blood red colour

**Test for Cu²⁺:** Add NaOH → pale blue precipitate

**Test for Al³⁺:** Add NaOH → white precipitate; add excess NaOH → precipitate dissolves (amphoteric)

**Test for Zn²⁺:** Add NaOH → white precipitate; add excess NaOH → precipitate dissolves

**Test for Ca²⁺:** Add Na₂SO₄ → white precipitate (CaSO₄ slightly insoluble); add Na₂CO₃ → white precipitate
$CONTENT$, 'examples', 5);

END $$;
