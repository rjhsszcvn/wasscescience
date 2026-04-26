
/*
  # Chemistry Missing Topics - Batch 1
  
  Adds comprehensive notes for Chemistry topics that have 0 sections:
  - Separation Techniques and Water (topic 10)
  - Energetics and Thermochemistry (topic 12)
  - Sulphur and Its Compounds (topic 14)
  - Also fixes Oxidation and Reduction (Redox) - adds missing 5th section
  
  Each topic gets 5 sections with deep, WASSCE-aligned content.
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Chemistry';

  -- =============================================
  -- FIX: OXIDATION AND REDUCTION (REDOX) - add missing section 5
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Oxidation and Reduction (Redox)';
  
  IF NOT EXISTS (SELECT 1 FROM topic_sections WHERE topic_id = v_topic_id AND order_index = 5) THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'WASSCE Past Questions and Practice', $CONTENT$
WASSCE PAST QUESTIONS — OXIDATION AND REDUCTION (REDOX)

QUESTION 1 (WASSCE 2019, Q4b):
(i) Define oxidation in terms of electron transfer.
(ii) Write the half-equation for the oxidation of Fe²⁺ to Fe³⁺.

ANSWERS:
(i) Oxidation is the LOSS of electrons by an atom, ion, or molecule.
(ii) Fe²⁺ → Fe³⁺ + e⁻

QUESTION 2 (WASSCE 2020, Q3a):
In the reaction: MnO₄⁻ + 8H⁺ + 5Fe²⁺ → Mn²⁺ + 4H₂O + 5Fe³⁺
(a) What is oxidised? What is reduced?
(b) What is the oxidising agent? What is the reducing agent?

ANSWERS:
(a) Fe²⁺ is oxidised (loses electrons, goes from +2 to +3).
    MnO₄⁻ is reduced (gains electrons, Mn goes from +7 to +2).
(b) Oxidising agent: MnO₄⁻ (it causes oxidation of Fe²⁺ by accepting electrons)
    Reducing agent: Fe²⁺ (it causes reduction of MnO₄⁻ by donating electrons)

QUESTION 3 (WASSCE 2018, Q5c):
Determine the oxidation number of:
(a) S in H₂SO₄    (b) Cr in Cr₂O₇²⁻    (c) N in NO₃⁻

ANSWERS:
(a) H₂SO₄: 2(+1) + x + 4(-2) = 0 → 2 + x - 8 = 0 → x = +6
    Oxidation number of S = +6

(b) Cr₂O₇²⁻: 2x + 7(-2) = -2 → 2x - 14 = -2 → 2x = 12 → x = +6
    Oxidation number of Cr = +6

(c) NO₃⁻: x + 3(-2) = -1 → x - 6 = -1 → x = +5
    Oxidation number of N = +5

QUESTION 4 (WASSCE 2021, Q2b):
Write balanced half-equations for the following and combine them into an overall equation:
Reduction: MnO₄⁻ → Mn²⁺ (in acid solution)
Oxidation: Fe²⁺ → Fe³⁺

ANSWERS:
Reduction half-equation: MnO₄⁻ + 8H⁺ + 5e⁻ → Mn²⁺ + 4H₂O
Oxidation half-equation: Fe²⁺ → Fe³⁺ + e⁻ (× 5)
                         5Fe²⁺ → 5Fe³⁺ + 5e⁻

Overall equation: MnO₄⁻ + 8H⁺ + 5Fe²⁺ → Mn²⁺ + 4H₂O + 5Fe³⁺

Verification: Charge on left: -1 + 8 + 10 = +17; Charge on right: +2 + 0 + 15 = +17 ✓

QUESTION 5 (WASSCE 2022, Q1b):
Explain why rusting is an oxidation process. Write a simplified equation for rusting.

ANSWER:
Rusting is an oxidation process because iron loses electrons to form Fe²⁺ and then Fe³⁺ ions.
Iron goes from oxidation state 0 to +2 to +3 — this is an increase in oxidation number, which is oxidation.

Simplified equation for rusting:
4Fe + 3O₂ + 2H₂O → 2Fe₂O₃·H₂O (hydrated iron(III) oxide / rust)

Prevention of rusting: Painting, galvanising (zinc coating), electroplating, oiling/greasing, using stainless steel alloys.

PRACTICE QUESTIONS:
1. Identify the oxidising and reducing agents in: Cl₂ + 2KI → 2KCl + I₂
2. What is the oxidation number of Mn in MnO₂?
3. Write the half-equation for: Cl₂ → Cl⁻ (reduction)

ANSWERS:
1. Cl₂ is the oxidising agent (it gains electrons, Cl goes from 0 to -1).
   KI/I⁻ is the reducing agent (I goes from -1 to 0, loses electrons).
2. x + 2(-2) = 0 → x = +4. Oxidation number of Mn = +4
3. Cl₂ + 2e⁻ → 2Cl⁻
$CONTENT$, 5);
  END IF;

  -- =============================================
  -- SEPARATION TECHNIQUES AND WATER
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Separation Techniques and Water';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Separation Techniques and Properties of Water', $CONTENT$
SEPARATION TECHNIQUES AND WATER — WASSCE CHEMISTRY

This topic covers the methods used to separate mixtures and the properties and chemistry of water. Understanding why certain techniques work requires knowing the physical and chemical properties of the components in the mixture.

WHAT IS A MIXTURE?
A mixture contains two or more substances that are NOT chemically combined. The components can be separated by physical methods because they have different physical properties (boiling points, solubilities, densities, magnetic properties, particle sizes).

KEY DISTINCTION:
- Mixture: components retain their own properties; can be separated physically
- Compound: elements chemically bonded; fixed composition; separated only by chemical reactions

PROPERTIES OF WATER:
Water (H₂O) is one of the most important substances in chemistry.

Physical Properties:
- Colourless, odourless, tasteless liquid (pure)
- Boiling point: 100°C at standard pressure (1 atm)
- Freezing/melting point: 0°C
- Density: approximately 1.0 g/cm³ at 4°C (maximum density)
- Specific heat capacity: very high (4200 J/kg/°C) — resists temperature change

Chemical Properties:
- Universal solvent — dissolves more substances than any other liquid
- Amphoteric — acts as both acid and base
- Undergoes hydrolysis, hydration, electrolysis
- Reacts with metals: 2Na + 2H₂O → 2NaOH + H₂
- Reacts with non-metal oxides (acidic oxides): SO₃ + H₂O → H₂SO₄
- Reacts with metal oxides (basic oxides): CaO + H₂O → Ca(OH)₂

WATER TESTS:
Anhydrous cobalt(II) chloride: turns blue → pink in presence of water
Anhydrous copper(II) sulphate: turns white → blue in presence of water

HARD WATER vs SOFT WATER:
Soft water: lathers easily with soap; no dissolved Ca²⁺/Mg²⁺ salts
Hard water: does not lather easily; forms scum with soap; contains dissolved Ca²⁺ and/or Mg²⁺ ions

Types of hardness:
1. Temporary hardness: caused by Ca(HCO₃)₂ and Mg(HCO₃)₂; removed by boiling
   Ca(HCO₃)₂ → CaCO₃ + H₂O + CO₂ (the carbonate precipitates out)
2. Permanent hardness: caused by CaSO₄ and MgSO₄; NOT removed by boiling

Removal of permanent hardness:
- Ion exchange: pass through resin that replaces Ca²⁺/Mg²⁺ with Na⁺ or H⁺
- Adding washing soda (Na₂CO₃): precipitates Ca²⁺ as CaCO₃
  CaSO₄ + Na₂CO₃ → CaCO₃ + Na₂SO₄

WATER TREATMENT (making drinking water safe):
1. Sedimentation: large particles settle under gravity
2. Filtration: fine particles removed through sand/gravel filter
3. Chlorination: Cl₂ added to kill bacteria and microorganisms
4. Fluoridation: NaF added to prevent tooth decay (optional)
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Key Separation Techniques: Definitions and Principles', $CONTENT$
KEY SEPARATION TECHNIQUES

1. FILTRATION
Principle: Separates an insoluble solid from a liquid (or solution).
Equipment: Filter funnel, filter paper, conical flask, glass rod
How it works: The mixture is poured through filter paper; the solid (residue) is trapped; the liquid (filtrate) passes through.
Example: Separating sand from water; separating an insoluble salt from its mother liquor.

2. EVAPORATION / CRYSTALLISATION
Principle: Separates a dissolved solid from its solvent by evaporating the liquid.
How it works:
- Simple evaporation: heat until all liquid boils away. Used when the solid is stable at high temperatures (e.g., NaCl from brine).
- Crystallisation: heat to reduce volume, then allow to cool slowly. Large crystals form as the solution becomes saturated. Used when the solid decomposes on strong heating (e.g., CuSO₄·5H₂O).

3. DISTILLATION
Principle: Separates a dissolved solid from its solvent, OR separates two miscible liquids with different boiling points.
How it works: The liquid is heated; vapour rises and is condensed back to liquid in a condenser; the distillate is collected.
Types:
- Simple distillation: one liquid boils away completely (e.g., pure water from salt water)
- Fractional distillation: separates two miscible liquids with close boiling points (e.g., ethanol/water; crude oil fractions)
  Equipment: fractionating column packed with glass beads/rings
  The more volatile component (lower boiling point) distils over first.

FRACTIONAL DISTILLATION OF CRUDE OIL (PETROLEUM):
Crude oil is a mixture of hydrocarbons with different boiling points.
The fractionating column is hotter at the bottom, cooler at the top.

Fractions (bottom to top):
- Residue/Bitumen: >350°C (roads, waterproofing)
- Fuel oil: 250–350°C (ships, power stations)
- Diesel/Gas oil: 200–250°C (lorries, trains)
- Kerosene/Paraffin: 150–200°C (aircraft, heating)
- Naphtha/Gasoline: 60–150°C (petrol, dry cleaning)
- Refinery gases (LPG): <60°C (camping gas, cooking)

4. SIMPLE DISTILLATION
Used to obtain pure water from seawater or to separate water from a solution of a solid.
Apparatus: round-bottom flask, Liebig condenser, collection vessel.

5. CHROMATOGRAPHY
Principle: Separates substances based on their different solubilities in a solvent (mobile phase) and different affinities for a stationary phase.
Types: Paper chromatography, thin-layer chromatography (TLC), column chromatography, gas chromatography.
Paper chromatography method:
1. Draw a pencil baseline on chromatography paper
2. Spot the mixture on the baseline
3. Dip in solvent (mobile phase) — do not let solvent touch spot
4. Solvent moves up, carrying components at different rates
5. Remove and mark solvent front; dry and analyse

Rf value (Retardation factor):
Rf = Distance moved by spot / Distance moved by solvent front
Rf values are between 0 and 1; each substance has a characteristic Rf in a given solvent.
Rf is used to identify unknown substances by comparison with known standards.

6. MAGNETIC SEPARATION
Principle: Separates magnetic materials (iron, nickel, cobalt) from non-magnetic ones.
Example: Separating iron filings from sulphur powder.

7. SEPARATING FUNNEL
Principle: Separates two immiscible liquids (liquids that don't mix) based on different densities.
Example: Separating oil from water; separating kerosene from water.
Method: Pour mixture into separating funnel; allow layers to form; open tap to drain lower layer; pour upper layer from top.

8. SUBLIMATION
Principle: Separates a solid that sublimes (turns directly from solid to gas without melting) from one that does not.
Example: Separating ammonium chloride (NH₄Cl) from sodium chloride (NaCl). NH₄Cl sublimes; NaCl does not.
Also: iodine can be separated from sand this way.
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Deep Explanation: Choosing the Right Technique', $CONTENT$
DEEP EXPLANATION: HOW TO CHOOSE THE RIGHT SEPARATION TECHNIQUE

DECISION FRAMEWORK:
Ask these questions about the mixture:

Q1: Are the components solid and liquid, OR two liquids?
  → Solid + liquid: go to Q2
  → Two liquids: go to Q3

Q2: Is the solid dissolved in the liquid (soluble) or not (insoluble)?
  → Insoluble solid: use FILTRATION
  → Dissolved solid: use EVAPORATION (if thermally stable) or CRYSTALLISATION (if not)

Q3: Do the two liquids mix (miscible) or not (immiscible)?
  → Miscible liquids (mix): use DISTILLATION (simple or fractional)
  → Immiscible liquids (don't mix): use SEPARATING FUNNEL

Q4: Do any components sublime?
  → Yes: use SUBLIMATION

Q5: Is the mixture a complex mixture of many substances in solution?
  → Yes: use CHROMATOGRAPHY

Q6: Is one component magnetic?
  → Yes: use MAGNETIC SEPARATION

WORKED EXAMPLE — Choosing technique:
A sample of sea water contains dissolved salts and sand particles.
Step 1: Filter the seawater to remove insoluble sand (filtration)
Step 2: Evaporate the filtrate or distil to get pure water (simple distillation) or salt crystals (evaporation)

WORKED EXAMPLE — Rock salt separation:
Rock salt = mixture of NaCl (soluble) + sand, grit (insoluble)
1. Add water and stir — NaCl dissolves, sand does not
2. Filter — sand is the residue; salt solution (brine) is the filtrate
3. Evaporate the filtrate — NaCl crystals form

WORKED EXAMPLE — Ink separation by chromatography:
A black ink is spotted on paper and water used as solvent.
After development, 4 spots appear at different heights.
This shows black ink is a mixture of 4 pigments (e.g., blue, red, yellow, orange).
The fastest-moving pigment has the highest Rf (most soluble in water, least attracted to paper).

PURITY TESTS:
A pure substance has:
- A sharp, fixed melting point (not a range)
- A sharp, fixed boiling point at known temperature
- Single spot on chromatogram (single Rf value)

Impurities cause:
- Melting point depression (lower than expected, and over a range)
- Boiling point elevation (higher than expected)
- Multiple spots on chromatogram

WATER PURITY:
Pure water boils at exactly 100°C and freezes at exactly 0°C.
Salt water boils above 100°C and freezes below 0°C.
These are colligative properties — they depend on the number of dissolved particles, not their identity.

COMMON WASSCE APPLICATIONS:
- Petrol from crude oil: fractional distillation
- Drinking water from seawater: distillation (or reverse osmosis)
- Iodine from iodine-sand mixture: sublimation
- Iron filings from sand: magnetic separation
- Butter from water: separating funnel (density difference)
- Components of a dye: paper chromatography
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Separation Calculations and Water Chemistry', $CONTENT$
WORKED EXAMPLES

EXAMPLE 1 — Rf Value Calculation:
In a paper chromatography experiment, the solvent front travels 12.0 cm from the baseline.
Spot A travels 9.0 cm. Spot B travels 4.8 cm.
Calculate the Rf values of A and B.

SOLUTION:
Rf(A) = 9.0/12.0 = 0.75
Rf(B) = 4.8/12.0 = 0.40

Interpretation: A is more soluble in the solvent (or less attracted to the paper) than B.

EXAMPLE 2 — Hard Water Chemistry:
(a) What causes temporary hardness of water?
(b) Write an equation to show how boiling removes temporary hardness.
(c) Explain why permanent hardness cannot be removed by boiling.

SOLUTION:
(a) Temporary hardness is caused by dissolved calcium hydrogencarbonate Ca(HCO₃)₂ and/or magnesium hydrogencarbonate Mg(HCO₃)₂.

(b) Ca(HCO₃)₂(aq) → CaCO₃(s) + H₂O(l) + CO₂(g)
    On boiling, CaCO₃ precipitates out (insoluble), removing Ca²⁺ from solution.
    This is why kettle scale/limescale forms when hard water is boiled.

(c) Permanent hardness is caused by dissolved CaSO₄ and MgSO₄. These salts do NOT decompose on boiling — they remain dissolved as ions. Therefore boiling does not precipitate them out.

EXAMPLE 3 — Water Test:
A student found a clear liquid and wanted to confirm it was water.
(a) Describe TWO chemical tests to confirm the presence of water.
(b) How would you confirm the liquid is PURE water?

SOLUTION:
(a) Test 1: Add anhydrous cobalt(II) chloride paper — turns from blue to pink if water is present.
    Test 2: Add anhydrous copper(II) sulphate powder — turns from white to blue if water is present.

(b) Measure the boiling point. Pure water boils at exactly 100°C (at standard pressure). 
    If the boiling point is exactly 100°C (not a range), the water is pure.
    Also measure melting/freezing point: pure water freezes at exactly 0°C.

EXAMPLE 4 — Water Treatment:
Describe the stages involved in treating river water to make it suitable for drinking.

SOLUTION:
1. Screening: Large objects (leaves, debris) removed by wire mesh screens.
2. Sedimentation: Water held in large tanks; heavy particles settle to bottom under gravity.
3. Coagulation/Flocculation: Alum (Al₂(SO₄)₃) or aluminium sulphate added; causes fine particles to clump together (floc) and settle more quickly.
4. Filtration: Water passed through sand and gravel beds; fine particles removed.
5. Chlorination: Chlorine gas (Cl₂) or sodium hypochlorite added; kills harmful bacteria and microorganisms.
6. pH adjustment: Lime or soda ash added if water is too acidic.
7. Storage and distribution: Clean water stored in reservoirs and pumped to homes.

EXAMPLE 5 — Choosing Technique:
Suggest an appropriate technique to separate each mixture:
(a) Salt solution from sand
(b) Ethanol (b.p. 78°C) from water (b.p. 100°C)
(c) Ammonium chloride from calcium carbonate
(d) Components of a coloured leaf extract

SOLUTIONS:
(a) Filtration (to remove sand), then evaporation (to get salt crystals)
(b) Fractional distillation (miscible liquids with different boiling points)
(c) Sublimation (NH₄Cl sublimes; CaCO₃ does not)
(d) Paper chromatography (separates coloured pigments like chlorophyll a, b, carotenoids)
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions and Practice', $CONTENT$
WASSCE PAST QUESTIONS — SEPARATION TECHNIQUES AND WATER

QUESTION 1 (WASSCE 2020, Q2a):
(a) State two differences between hard water and soft water.
(b) How can permanent hardness of water be removed?

ANSWERS:
(a) Hard water vs Soft water:
    - Hard water does NOT lather easily with soap; soft water lathers easily.
    - Hard water contains dissolved Ca²⁺ and/or Mg²⁺ salts; soft water does not.
    - Hard water forms scum with soap; soft water does not.

(b) Permanent hardness can be removed by:
    i. Ion exchange: pass water through an ion exchange resin containing Na⁺ or H⁺; Ca²⁺ and Mg²⁺ are exchanged for Na⁺/H⁺ ions.
    ii. Adding washing soda (Na₂CO₃): precipitates Ca²⁺ as CaCO₃ and Mg²⁺ as MgCO₃.
       CaSO₄ + Na₂CO₃ → CaCO₃↓ + Na₂SO₄
    (Boiling does NOT remove permanent hardness.)

QUESTION 2 (WASSCE 2019, Q3c):
A mixture contains iron filings, sulphur powder, and sodium chloride crystals.
Describe, with the aid of labelled diagrams where necessary, how you would obtain pure samples of each component.

ANSWER:
Step 1 — Remove iron filings: Use a magnet. Iron filings are attracted to the magnet; sulphur and salt are not. Scrape iron filings off magnet.
Step 2 — Separate sulphur from sodium chloride: Add water and stir. NaCl dissolves; sulphur does not. Filter the mixture. Sulphur is the residue (dry it). NaCl solution is the filtrate.
Step 3 — Obtain NaCl: Evaporate the filtrate to dryness. NaCl crystals remain.

QUESTION 3 (WASSCE 2021, Q4b):
In a chromatography experiment, the solvent front moved 16 cm from the baseline. Three spots were obtained at distances of 4 cm, 8 cm, and 12 cm from the baseline.
(a) Calculate the Rf value of each spot.
(b) What conclusion can be drawn if a known substance has an Rf of 0.50?

ANSWERS:
(a) Spot 1: Rf = 4/16 = 0.25
    Spot 2: Rf = 8/16 = 0.50
    Spot 3: Rf = 12/16 = 0.75

(b) The substance with Rf = 0.50 is the SAME as Spot 2, because they have the same Rf value in the same solvent system. (Same Rf = same substance, assuming same conditions.)

QUESTION 4 (WASSCE 2018, Q1b):
Name the process used to:
(a) Separate alcohol from water
(b) Separate pure water from seawater
(c) Separate a mixture of iodine and common salt

ANSWERS:
(a) Fractional distillation (alcohol b.p. 78°C boils off first, water b.p. 100°C remains)
(b) Simple distillation (water evaporates and is condensed; salt stays behind)
(c) Sublimation (iodine sublimes when heated; common salt does not)

QUESTION 5 (WASSCE 2022, Q5a):
Explain what is meant by (i) the distillate (ii) the residue in distillation. What type of distillation is used to purify crude oil?

ANSWERS:
(i) Distillate: the liquid collected after condensation in distillation — the vapour that was produced by heating, then cooled and collected.
(ii) Residue: the material that remains behind in the distillation flask after the volatile component(s) have been distilled off.

Type of distillation for crude oil: Fractional distillation. 
Crude oil contains many hydrocarbons with different boiling points. In the fractionating column, components separate at different heights based on their boiling points. Lower boiling point fractions (more volatile) rise higher and condense near the top; higher boiling point fractions condense lower down.

PRACTICE QUESTIONS:
1. Describe how you would test a liquid to show it contains water.
2. Name the type of chromatography used to analyse the components of crude oil.
3. What is the Rf value, and what are its possible values?

ANSWERS:
1. Add anhydrous cobalt(II) chloride paper — turns blue to pink. OR add anhydrous CuSO₄ — turns white to blue.
2. Gas chromatography (GC) — used for analysing volatile mixtures.
3. Rf = distance moved by component / distance moved by solvent front. Values range from 0 to 1 (always between 0 and 1, never greater than 1).
$CONTENT$, 'practice', 5);
  END IF;

  -- =============================================
  -- ENERGETICS AND THERMOCHEMISTRY
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Energetics and Thermochemistry';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Energy Changes in Chemical Reactions', $CONTENT$
ENERGETICS AND THERMOCHEMISTRY — WASSCE CHEMISTRY

This topic studies the energy changes (heat) that occur during chemical reactions. Understanding energetics helps explain why reactions occur and how much energy is released or absorbed.

FUNDAMENTAL CONCEPT: ENTHALPY (H)
Every substance has a stored energy called enthalpy (H). When a chemical reaction occurs, the enthalpy of the products may be different from the enthalpy of the reactants.

Enthalpy change (ΔH) = H(products) − H(reactants)

EXOTHERMIC REACTIONS:
- Energy is RELEASED to the surroundings
- Products have LOWER energy than reactants
- ΔH is NEGATIVE (ΔH < 0)
- The surroundings (e.g., the test tube) become WARM/HOT
- Examples: combustion, neutralisation, oxidation, respiration, many displacement reactions

ENDOTHERMIC REACTIONS:
- Energy is ABSORBED from the surroundings
- Products have HIGHER energy than reactants
- ΔH is POSITIVE (ΔH > 0)
- The surroundings become COLD
- Examples: thermal decomposition (CaCO₃ → CaO + CO₂), dissolving ammonium nitrate in water, photosynthesis, evaporation

SIGN CONVENTION (IUPAC):
ΔH = negative → exothermic
ΔH = positive → endothermic

STANDARD CONDITIONS:
Standard enthalpy values are measured at:
- Temperature: 298 K (25°C)
- Pressure: 100 kPa (1 atm)
- Concentration: 1 mol/dm³ (for solutions)

Standard enthalpy change is written as ΔH° (with a superscript circle/naught symbol).

TYPES OF ENTHALPY CHANGES:
1. Standard enthalpy of formation (ΔHf°): enthalpy change when 1 mole of a compound is formed from its elements in their standard states.
   Example: C(s) + O₂(g) → CO₂(g)   ΔHf° = −393 kJ/mol

2. Standard enthalpy of combustion (ΔHc°): enthalpy change when 1 mole of a substance completely burns in excess oxygen.
   Example: CH₄(g) + 2O₂(g) → CO₂(g) + 2H₂O(l)   ΔHc° = −890 kJ/mol

3. Standard enthalpy of neutralisation (ΔHn°): enthalpy change when 1 mole of water is formed from the neutralisation of a strong acid with a strong base.
   H⁺(aq) + OH⁻(aq) → H₂O(l)   ΔHn° ≈ −57 kJ/mol (approximately constant for all strong acid + strong base reactions)

4. Standard enthalpy of solution: enthalpy change when 1 mole of a substance dissolves in excess water.

5. Bond energy: the energy required to break 1 mole of a particular covalent bond (always positive — breaking bonds requires energy).
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Key Definitions: Enthalpy, Bond Energies, and Hess''s Law', $CONTENT$
KEY DEFINITIONS AND LAWS

BOND ENERGY (Bond Dissociation Energy):
The energy required to break 1 mole of a specific covalent bond in the gas phase.
Breaking bonds: requires energy (endothermic, positive values)
Forming bonds: releases energy (exothermic, negative values)

KEY BOND ENERGIES (approximate, kJ/mol):
H−H: 436    O=O: 498    C−H: 413    C=O: 743
O−H: 464    N≡N: 945    C−C: 347    C=C: 614
H−Cl: 431   N−H: 391    Cl−Cl: 243

CALCULATING ΔH USING BOND ENERGIES:
ΔH = Energy to break bonds (reactants) − Energy released forming bonds (products)
ΔH = Σ(Bond energies broken) − Σ(Bond energies formed)

If ΔH is negative → more energy released forming bonds than used breaking them → exothermic
If ΔH is positive → more energy used breaking bonds than released → endothermic

HESS'S LAW:
"The total enthalpy change for a reaction is the same regardless of the route taken, provided the initial and final conditions are the same."

This is based on the Law of Conservation of Energy.

Hess's Law allows calculation of ΔH for reactions that cannot be measured directly.

BORN-HABER CYCLES (advanced):
A special application of Hess's Law for ionic compounds, showing step-by-step conversion of elements to ionic crystals.

HEAT OF REACTION CALCULATION:
When a temperature change is measured experimentally:
q = mcΔT
where:
- q = heat energy change (J or kJ)
- m = mass of solution (g)
- c = specific heat capacity (usually 4.2 J/g/°C for dilute aqueous solutions)
- ΔT = temperature change (T_final − T_initial, in °C)

If temperature RISES → reaction is exothermic → ΔH is negative
If temperature FALLS → reaction is endothermic → ΔH is positive

To find molar enthalpy:
ΔH = −q / n (where n = moles of limiting reagent; negative sign because convention: temp rise means ΔH negative)

ENERGY LEVEL DIAGRAMS:
Exothermic: Reactants at higher energy level; Products at lower level; ΔH arrow points downward
Endothermic: Reactants at lower energy level; Products at higher level; ΔH arrow points upward

ACTIVATION ENERGY (Ea):
The minimum energy that colliding particles must have for a reaction to occur.
Even exothermic reactions need an initial energy input (activation energy) to start.
Catalysts work by providing an ALTERNATIVE REACTION PATHWAY with a LOWER activation energy.
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Deep Explanation: Calculations and Energy Level Diagrams', $CONTENT$
DEEP EXPLANATION: ENERGETICS CALCULATIONS

CALCULATING ΔH FROM EXPERIMENTAL DATA (Calorimetry):

When a reaction occurs in a beaker or insulated cup:
Step 1: Find mass of solution (m). Assume density of dilute solution ≈ 1 g/cm³, so volume = mass.
Step 2: Find temperature change (ΔT = T_final − T_initial).
Step 3: q = mcΔT (use c = 4.2 J/g/°C for aqueous solutions)
Step 4: Find moles of limiting reagent (n).
Step 5: ΔH = −q/n (convert to kJ/mol)

EXAMPLE: 50 cm³ of 1.0 mol/dm³ HCl is mixed with 50 cm³ of 1.0 mol/dm³ NaOH.
Temperature rises from 22°C to 28.6°C.
Calculate ΔH for the neutralisation.

Solution:
Total volume = 100 cm³ → mass = 100 g (assuming density = 1 g/cm³)
ΔT = 28.6 − 22.0 = 6.6°C
q = 100 × 4.2 × 6.6 = 2,772 J = 2.772 kJ

Moles of HCl = 0.050 L × 1.0 mol/L = 0.05 mol
(HCl and NaOH react 1:1, so 0.05 mol water formed)

ΔH = −q/n = −2.772/0.05 = −55.44 kJ/mol
(Negative because temperature rose → exothermic)
This represents ΔH for: H⁺(aq) + OH⁻(aq) → H₂O(l)

CALCULATING ΔH FROM BOND ENERGIES:
Find ΔH for: H₂ + Cl₂ → 2HCl

Bonds broken (reactants):
1 × H−H = 436 kJ/mol
1 × Cl−Cl = 243 kJ/mol
Total energy in = 436 + 243 = 679 kJ/mol

Bonds formed (products):
2 × H−Cl = 2 × 431 = 862 kJ/mol
Total energy out = 862 kJ/mol

ΔH = Energy in − Energy out = 679 − 862 = −183 kJ/mol

Negative → exothermic. 183 kJ/mol of energy is released.

USING HESS'S LAW:
Given:
C(s) + O₂(g) → CO₂(g)      ΔH₁ = −393 kJ/mol
CO(g) + ½O₂(g) → CO₂(g)    ΔH₂ = −283 kJ/mol

Find ΔH for: C(s) + ½O₂(g) → CO(g)   [ΔH₃ = ?]

Using Hess's Law: Route 1 = Route 2
ΔH₁ = ΔH₃ + ΔH₂
−393 = ΔH₃ + (−283)
ΔH₃ = −393 + 283 = −110 kJ/mol

ENERGY LEVEL DIAGRAM INTERPRETATION:
Activation energy (Ea): the energy hump that must be overcome for reaction to proceed.
Catalysts lower Ea, allowing more particles to have sufficient energy at the same temperature → faster reaction.
Catalysts do NOT change ΔH (the overall energy difference between reactants and products remains the same).
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Energetics Problems', $CONTENT$
WORKED EXAMPLES — ENERGETICS AND THERMOCHEMISTRY

EXAMPLE 1 — Enthalpy of Combustion:
0.46 g of ethanol (C₂H₅OH, M = 46 g/mol) is burned and the heat produced raises the temperature of 200 g of water from 20°C to 46°C.
Calculate the molar enthalpy of combustion of ethanol.

SOLUTION:
q = mcΔT = 200 × 4.2 × (46 − 20) = 200 × 4.2 × 26 = 21,840 J = 21.84 kJ

Moles of ethanol = 0.46/46 = 0.01 mol

ΔHc = −q/n = −21.84/0.01 = −2184 kJ/mol

(Standard value is −1367 kJ/mol — experimental value is lower because of heat loss to surroundings)

EXAMPLE 2 — Bond Energy Calculation:
Calculate ΔH for the reaction: CH₄ + 2O₂ → CO₂ + 2H₂O
Bond energies: C−H = 413, O=O = 498, C=O = 743, O−H = 464 kJ/mol

SOLUTION:
Bonds broken:
4 × C−H = 4 × 413 = 1652
2 × O=O = 2 × 498 = 996
Total = 2648 kJ

Bonds formed:
2 × C=O = 2 × 743 = 1486
4 × O−H = 4 × 464 = 1856
Total = 3342 kJ

ΔH = 2648 − 3342 = −694 kJ/mol

The reaction is exothermic by 694 kJ/mol.

EXAMPLE 3 — Temperature Change Calculation:
Calculate the temperature rise when 200 cm³ of 0.5 mol/dm³ HCl is neutralised by 200 cm³ of 0.5 mol/dm³ NaOH.
Assume ΔH(neutralisation) = −57.1 kJ/mol and specific heat capacity = 4.2 J/g/°C.

SOLUTION:
Moles of H⁺ = 0.200 × 0.5 = 0.1 mol
Moles of OH⁻ = 0.200 × 0.5 = 0.1 mol
They react 1:1, so 0.1 mol water formed.

Heat released = 0.1 mol × 57.1 kJ/mol = 5.71 kJ = 5710 J

Total mass = 400 g (200 + 200 cm³, density ≈ 1 g/cm³)

ΔT = q/(mc) = 5710/(400 × 4.2) = 5710/1680 = 3.4°C

EXAMPLE 4 — Hess's Law Diagram:
Given:
S(s) + O₂(g) → SO₂(g)              ΔH = −297 kJ/mol  ...(1)
2SO₃(g) → 2SO₂(g) + O₂(g)         ΔH = +198 kJ/mol  ...(2)

Find ΔH for: 2S(s) + 3O₂(g) → 2SO₃(g)   ...(3)

SOLUTION:
Multiply equation (1) by 2: 2S + 2O₂ → 2SO₂      ΔH = −594 kJ
Reverse equation (2): 2SO₂ + O₂ → 2SO₃           ΔH = −198 kJ

Add: 2S + 2O₂ + 2SO₂ + O₂ → 2SO₂ + 2SO₃
Simplify (cancel 2SO₂ from both sides):
2S + 3O₂ → 2SO₃    ΔH = −594 + (−198) = −792 kJ/mol
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions and Practice', $CONTENT$
WASSCE PAST QUESTIONS — ENERGETICS AND THERMOCHEMISTRY

QUESTION 1 (WASSCE 2019, Q5a):
Distinguish between exothermic and endothermic reactions. Give ONE example of each.

ANSWER:
Exothermic reaction: A reaction in which energy/heat is RELEASED to the surroundings. ΔH is negative. The surroundings become warmer.
Example: Combustion of methane: CH₄ + 2O₂ → CO₂ + 2H₂O, ΔH = −890 kJ/mol

Endothermic reaction: A reaction in which energy/heat is ABSORBED from the surroundings. ΔH is positive. The surroundings become cooler.
Example: Decomposition of limestone: CaCO₃ → CaO + CO₂, ΔH = +178 kJ/mol

QUESTION 2 (WASSCE 2020, Q4a):
When 50 cm³ of 2.0 mol/dm³ HCl is mixed with 50 cm³ of 2.0 mol/dm³ NaOH, the temperature rises by 13.6°C.
Calculate:
(a) The heat produced in the reaction.
(b) The molar enthalpy of neutralisation.
(c = 4.2 J g⁻¹ °C⁻¹; density of solution = 1.0 g cm⁻³)

ANSWER:
(a) Total mass = 100 g (50+50 cm³ × 1.0 g/cm³)
    q = mcΔT = 100 × 4.2 × 13.6 = 5712 J = 5.712 kJ

(b) Moles of HCl = 0.050 × 2.0 = 0.10 mol
    Moles of NaOH = 0.050 × 2.0 = 0.10 mol
    → 0.10 mol of water formed (1:1 ratio)
    
    ΔH = −q/n = −5.712/0.10 = −57.12 kJ/mol

    The molar enthalpy of neutralisation = −57.12 kJ/mol
    (Negative sign because temperature rose; exothermic reaction)

QUESTION 3 (WASSCE 2021, Q3b):
Using the bond energies below, calculate ΔH for: N₂ + 3H₂ → 2NH₃
Bond energies (kJ/mol): N≡N = 945, H−H = 436, N−H = 391

ANSWER:
Bonds broken:
1 × N≡N = 945
3 × H−H = 3 × 436 = 1308
Total broken = 945 + 1308 = 2253 kJ

Bonds formed:
2 × NH₃ = 2 × 3 × N−H = 6 × 391 = 2346 kJ

ΔH = Energy broken − Energy formed = 2253 − 2346 = −93 kJ/mol

The reaction is exothermic by 93 kJ/mol.
(This is the Haber process for ammonia synthesis.)

QUESTION 4 (WASSCE 2018, Q2c):
Draw and label an energy level diagram for an exothermic reaction showing:
(a) reactants and products energy levels
(b) activation energy (Ea)
(c) enthalpy change (ΔH)
Describe the effect of a catalyst on such a diagram.

ANSWER:
[Energy/kJ axis — vertical; Reaction progress axis — horizontal]

An exothermic energy profile:
- Reactants line at higher energy
- Energy hump (transition state) above reactants — the peak represents Ea
- Products line at LOWER energy than reactants
- Arrow from reactants level to products level going DOWN shows ΔH (negative)
- Ea: distance from reactants energy level UP to the peak of the hump

Effect of catalyst:
- A catalyst provides an ALTERNATIVE PATHWAY with a LOWER ACTIVATION ENERGY
- On the diagram, a second (lower) hump is drawn; the peak of the catalysed reaction is lower than the uncatalysed peak
- ΔH remains the SAME (reactants and products energy levels are unchanged)
- A catalyst makes the reaction faster but does NOT change the overall energy released/absorbed

PRACTICE QUESTIONS:
1. Calculate ΔH for H₂ + F₂ → 2HF, using bond energies: H−H = 436, F−F = 158, H−F = 568 kJ/mol
2. Is dissolving NH₄NO₃ in water exothermic or endothermic? How would you know?

ANSWERS:
1. Bonds broken: 436 + 158 = 594 kJ; Bonds formed: 2 × 568 = 1136 kJ
   ΔH = 594 − 1136 = −542 kJ/mol (strongly exothermic)

2. Dissolving NH₄NO₃ is endothermic. The test tube/beaker feels cold when NH₄NO₃ dissolves. ΔH is positive. This is used in instant cold packs.
$CONTENT$, 'practice', 5);
  END IF;

  -- =============================================
  -- SULPHUR AND ITS COMPOUNDS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Sulphur and Its Compounds';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Sulphur Chemistry', $CONTENT$
SULPHUR AND ITS COMPOUNDS — WASSCE CHEMISTRY

Sulphur (S) is a non-metallic element in Group VI of the Periodic Table, Period 3. It is a yellow solid at room temperature and is of immense industrial and biological importance.

PHYSICAL PROPERTIES OF SULPHUR:
- Yellow crystalline solid at room temperature
- Insoluble in water; soluble in carbon disulphide (CS₂) and other organic solvents
- Poor conductor of heat and electricity (non-metal)
- Melting point: 119°C; Boiling point: 445°C
- Density: approximately 2.0 g/cm³

ALLOTROPES OF SULPHUR:
Allotropes are different physical forms of the same element, with different arrangements of atoms.

1. RHOMBIC SULPHUR (α-sulphur):
- Stable form below 96°C (the transition temperature)
- Octahedral/rhombic crystals (rectangular prisms)
- Yellow colour
- Density: 2.07 g/cm³
- Melting point: 113°C
- Most common form found in nature

2. MONOCLINIC SULPHUR (β-sulphur):
- Stable form above 96°C (up to melting point)
- Needle-shaped crystals
- Pale yellow / slightly yellow-white
- Density: 1.96 g/cm³
- Melting point: 119°C
- Prepared by melting sulphur and cooling slowly above 96°C

3. PLASTIC SULPHUR (amorphous sulphur):
- Not a true crystal; amorphous (no regular shape)
- Prepared by pouring molten sulphur into cold water
- Rubbery, elastic texture
- Unstable; slowly reverts to rhombic sulphur

TRANSITION TEMPERATURE:
At 96°C, rhombic and monoclinic forms are in equilibrium and can interconvert.
Below 96°C → rhombic is stable
Above 96°C → monoclinic is stable

CHEMICAL PROPERTIES OF SULPHUR:
Sulphur is moderately reactive, acting as:
- An OXIDISING agent with some metals: Fe + S → FeS (iron(II) sulphide)
- A REDUCING agent with strong oxidising agents like oxygen

Reactions with other elements:
- S + O₂ → SO₂ (burns in oxygen — blue flame)
- H₂ + S → H₂S (hydrogen sulphide — on heating)
- 2Cu + S → Cu₂S (copper(I) sulphide)
- S + 2F₂ → SF₄ (with halogens)

OCCURRENCE:
Sulphur occurs naturally as:
- Free sulphur (native sulphur) — found near volcanoes, hot springs
- Sulphate minerals: gypsum (CaSO₄·2H₂O), barite (BaSO₄)
- Sulphide minerals: pyrite (FeS₂), galena (PbS), sphalerite (ZnS)
- In crude oil and natural gas (as H₂S)
- In proteins (amino acids cysteine and methionine contain sulphur)
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Key Compounds: H₂S, SO₂, SO₃, H₂SO₄', $CONTENT$
KEY SULPHUR COMPOUNDS

1. HYDROGEN SULPHIDE (H₂S):
Preparation: FeS + H₂SO₄(dilute) → FeSO₄ + H₂S↑
           OR FeS + 2HCl → FeCl₂ + H₂S↑

Properties:
- Colourless gas with a strong, rotten egg smell
- Poisonous/toxic
- Soluble in water (forms a weak acid: H₂S ⇌ H⁺ + HS⁻)
- Burns in air: 2H₂S + 3O₂ → 2H₂O + 2SO₂

Uses: Test for metal ions (precipitates metal sulphides); used in qualitative analysis.

2. SULPHUR DIOXIDE (SO₂):
Preparation:
- S + O₂ → SO₂ (burning sulphur in air)
- Cu + 2H₂SO₄(conc) → CuSO₄ + 2H₂O + SO₂ (hot concentrated H₂SO₄ reacts with copper)
- Na₂SO₃ + H₂SO₄(dilute) → Na₂SO₄ + H₂O + SO₂

Properties:
- Colourless gas with a choking, pungent smell
- Denser than air
- Acidic gas: dissolves in water → sulphurous acid (H₂SO₃): SO₂ + H₂O ⇌ H₂SO₃
- Bleaches moist litmus paper (turns red, then white)
- REDUCING agent: SO₂ + Cl₂ + 2H₂O → H₂SO₄ + 2HCl (SO₂ reduces Cl₂)

Uses:
- Bleaching of wood pulp, paper, wool, silk
- Food preservative (E220) — prevents oxidation and bacterial growth
- Manufacture of sulphuric acid (Contact Process)
- Fumigation and disinfection
- As a refrigerant (historically)

Test for SO₂: Turns acidified K₂Cr₂O₇ from orange to green (reduces Cr⁶⁺ to Cr³⁺).
Also decolourises purple KMnO₄ solution.

3. SULPHUR TRIOXIDE (SO₃):
Preparation: In industry, through the Contact Process (see next section).
Properties:
- Colourless, volatile solid/liquid (melts at 16.8°C)
- Reacts violently with water: SO₃ + H₂O → H₂SO₄ (very exothermic)
- Strong oxidising agent

4. SULPHURIC ACID (H₂SO₄):
Physical Properties:
- Colourless, oily, very dense liquid (density = 1.84 g/cm³)
- High boiling point (337°C)
- Very hygroscopic (absorbs water from surroundings) — used as a drying agent
- Exothermic reaction with water (ALWAYS add acid to water, never water to acid)

Chemical Properties:
Dilute H₂SO₄:
- Acts as a typical acid: reacts with metals, metal oxides, carbonates
- Zn + H₂SO₄(dil) → ZnSO₄ + H₂↑
- CuO + H₂SO₄ → CuSO₄ + H₂O
- Na₂CO₃ + H₂SO₄ → Na₂SO₄ + H₂O + CO₂

Concentrated H₂SO₄:
- Strong oxidising agent: reacts with Cu (copper), S, C — which dilute acid cannot
  Cu + 2H₂SO₄(conc, hot) → CuSO₄ + SO₂ + 2H₂O
- Dehydrating agent: removes water from compounds
  C₁₂H₂₂O₁₁ + H₂SO₄(conc) → 12C + 11H₂O (charring of sucrose)
  HCOOH → CO + H₂O (formic acid dehydration)
- Drying agent: used to dry gases (except NH₃ and H₂S, which react with it)
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'The Contact Process: Industrial Manufacture of H₂SO₄', $CONTENT$
THE CONTACT PROCESS — INDUSTRIAL MANUFACTURE OF SULPHURIC ACID

Sulphuric acid is one of the most important industrial chemicals (world production > 200 million tonnes/year). It is made by the Contact Process.

STAGE 1: PRODUCTION OF SULPHUR DIOXIDE
- Burning sulphur: S + O₂ → SO₂
- OR roasting metal sulphide ores: 4FeS₂ + 11O₂ → 2Fe₂O₃ + 8SO₂

STAGE 2: CONVERSION OF SO₂ TO SO₃ (The critical/rate-limiting step)
2SO₂(g) + O₂(g) ⇌ 2SO₃(g)       ΔH = −196 kJ/mol (exothermic)

Conditions:
- Temperature: 450°C (a compromise temperature)
- Pressure: 1–2 atm (atmospheric pressure, slight positive pressure)
- Catalyst: Vanadium(V) oxide (V₂O₅)
  The catalyst increases rate without affecting yield.

WHY THESE CONDITIONS? (Application of Le Chatelier's Principle)
Temperature:
- The reaction is exothermic (ΔH negative)
- Decreasing temperature shifts equilibrium to the RIGHT (more SO₃) → better yield
- BUT low temperature = very slow rate → not economical
- 450°C is a COMPROMISE: good enough yield (~97%) with acceptable rate

Pressure:
- Left side: 2 + 1 = 3 moles of gas; Right side: 2 moles of gas
- Increasing pressure shifts equilibrium RIGHT (fewer moles of gas) → better yield
- BUT high pressure is expensive (more costly equipment, more energy) and risk of explosion
- 1–2 atm gives ~97% conversion (already very high), so very high pressure is unnecessary

Catalyst (V₂O₅):
- Does NOT change equilibrium position (same yield)
- DOES increase the RATE at which equilibrium is reached
- SO₂ and O₂ are adsorbed onto V₂O₅ surface; V₅⁺ is reduced to V⁴⁺; O₂ re-oxidises it back

STAGE 3: ABSORPTION OF SO₃
SO₃ cannot be dissolved directly in water efficiently (produces a mist/fog).
Instead: SO₃ + H₂SO₄(conc) → H₂S₂O₇ (oleum / fuming sulphuric acid)

Then: H₂S₂O₇ + H₂O → 2H₂SO₄

STAGE 4: DILUTION
The concentrated H₂SO₄ produced is diluted with water as required.
IMPORTANT: Always add acid to water (not water to acid) — the mixing is exothermic and could cause violent boiling if water is added to concentrated acid.

USES OF SULPHURIC ACID:
- Fertiliser manufacture: converting phosphate rock to soluble superphosphate
  Ca₃(PO₄)₂ + 2H₂SO₄ → Ca(H₂PO₄)₂ + 2CaSO₄
- Making other acids (HCl, HNO₃, H₃PO₄)
- Lead-acid batteries (car batteries) — 30–40% H₂SO₄ electrolyte
- Chemical manufacturing: dyes, detergents, drugs, plastics, explosives
- Dehydrating agent in laboratories
- Metal cleaning/pickling before galvanising

ACID RAIN:
- SO₂ and SO₃ released from burning fossil fuels react with water vapour in the atmosphere
- SO₂ + H₂O → H₂SO₃ (sulphurous acid)
- 2SO₂ + O₂ + 2H₂O → 2H₂SO₄ (sulphuric acid)
- Falls as acid rain (pH < 5.6)

Effects of acid rain:
- Kills aquatic life in lakes and rivers (lowers pH)
- Damages forests, erodes limestone buildings and statues
- Corrodes metal structures
- Damages crops/vegetation

Control measures:
- Use low-sulphur fuels
- Flue gas desulphurisation (removing SO₂ from power station exhaust using limestone/lime)
  CaCO₃ + SO₂ → CaSO₃ + CO₂   OR   Ca(OH)₂ + SO₂ → CaSO₃ + H₂O
- Switch to renewable energy sources
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Sulphur Chemistry Problems', $CONTENT$
WORKED EXAMPLES — SULPHUR AND ITS COMPOUNDS

EXAMPLE 1 — Allotropes of Sulphur:
(a) Name two allotropes of sulphur.
(b) What is the transition temperature for sulphur allotropes?
(c) How is plastic sulphur prepared?

SOLUTION:
(a) Rhombic sulphur (α-sulphur) and monoclinic sulphur (β-sulphur) are the two main crystalline allotropes. (Plastic/amorphous sulphur is also sometimes listed.)

(b) The transition temperature is 96°C. Below 96°C, rhombic sulphur is stable. Above 96°C (up to the melting point of 119°C), monoclinic sulphur is stable.

(c) Plastic sulphur: Heat sulphur until it melts, then heat further until the molten sulphur becomes dark and viscous (polymeric S∞ chains form). Pour this dark, viscous sulphur into a beaker of cold water. It solidifies into a brown, rubbery, elastic material — plastic sulphur.
On standing, it slowly reverts to the thermodynamically stable rhombic form.

EXAMPLE 2 — Contact Process Conditions:
(a) Write the equation for the key equilibrium in the Contact Process.
(b) State the conditions and explain why each is chosen.

SOLUTION:
(a) 2SO₂(g) + O₂(g) ⇌ 2SO₃(g)     ΔH = −196 kJ/mol

(b) Conditions:
Temperature = 450°C: Compromise temperature.
- Lower temperature would give better yield (reaction is exothermic; Le Chatelier says cool to form more product) but the rate would be too slow.
- 450°C gives ~97% conversion at an acceptable rate.

Catalyst = Vanadium(V) oxide (V₂O₅): Increases rate of reaction without affecting equilibrium position. Allows lower temperature to be used commercially.

Pressure = 1-2 atm (near atmospheric): 
- Reaction proceeds from 3 moles gas (left) to 2 moles gas (right) → high pressure favours product (SO₃).
- BUT at 1-2 atm, conversion is already ~97% — very high! High pressure would increase cost with little extra yield benefit.

EXAMPLE 3 — Concentration Calculation:
What volume of SO₂ at STP is produced when 16 g of sulphur is burned in excess oxygen?

SOLUTION:
S + O₂ → SO₂
Moles of S = 16/32 = 0.5 mol
From equation: 1 mol S → 1 mol SO₂
∴ Moles of SO₂ = 0.5 mol
Volume at STP (22.4 L/mol): 0.5 × 22.4 = 11.2 L = 11,200 cm³

EXAMPLE 4 — Properties of Concentrated H₂SO₄:
(a) Why is concentrated H₂SO₄ used as a drying agent for gases?
(b) Which gases CANNOT be dried with concentrated H₂SO₄? Why?

SOLUTION:
(a) Concentrated H₂SO₄ is highly hygroscopic — it absorbs water very readily. Passing a gas through concentrated H₂SO₄ removes water vapour from the gas stream without reacting with non-basic, non-reducing gases. It has a very low vapour pressure, so it does not contaminate the gas.

(b) The following gases CANNOT be dried with concentrated H₂SO₄:
- Ammonia (NH₃): NH₃ is basic and reacts with the acid: 2NH₃ + H₂SO₄ → (NH₄)₂SO₄
- Hydrogen sulphide (H₂S): acts as a reducing agent and is oxidised by conc. H₂SO₄
- Hydrogen bromide (HBr) and hydrogen iodide (HI): oxidised by conc. H₂SO₄

Alternative drying agents for basic gases: solid NaOH or CaO (quicklime)
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Sulphur', $CONTENT$
WASSCE PAST QUESTIONS — SULPHUR AND ITS COMPOUNDS

QUESTION 1 (WASSCE 2020, Q3b):
(a) Name two allotropes of sulphur. State ONE difference between them.
(b) Write equations for the reaction of sulphur with: (i) iron, (ii) oxygen.

ANSWERS:
(a) Rhombic sulphur and monoclinic sulphur.
    Difference: Rhombic sulphur is stable below 96°C and has rhombic crystals; monoclinic sulphur is stable above 96°C and has needle-shaped crystals.

(b) (i) Iron + sulphur: Fe + S → FeS (iron(II) sulphide)
    (ii) Sulphur + oxygen: S + O₂ → SO₂

QUESTION 2 (WASSCE 2019, Q4c):
Explain the industrial production of sulphuric acid by the Contact Process.
State the conditions used for converting SO₂ to SO₃ and explain why these conditions are chosen.

ANSWER:
The Contact Process:
Stage 1: Produce SO₂ by burning sulphur in air (S + O₂ → SO₂) or roasting sulphide ores.
Stage 2: Convert SO₂ to SO₃: 2SO₂ + O₂ ⇌ 2SO₃ (ΔH = −196 kJ/mol)
   Conditions: Temperature 450°C, catalyst V₂O₅, pressure 1–2 atm.
   - 450°C: compromise between rate (high enough) and yield (acceptable ~97%)
   - V₂O₅ catalyst: increases rate; does not affect equilibrium position
   - Low pressure: yield is already high (~97%); high pressure not economical
Stage 3: Dissolve SO₃ in concentrated H₂SO₄ to form oleum (H₂S₂O₇).
Stage 4: Dilute oleum with water to give concentrated H₂SO₄.

QUESTION 3 (WASSCE 2021, Q2a):
(a) What happens when SO₂ gas is passed into a solution of potassium manganate(VII)?
(b) State whether SO₂ acts as an oxidising or reducing agent in this reaction.

ANSWER:
(a) The purple/violet colour of potassium manganate(VII) (KMnO₄) is decolourised. The solution turns colourless (Mn⁷⁺ is reduced to Mn²⁺ which is colourless/pale pink).
Equation: 2KMnO₄ + 5SO₂ + 2H₂O → K₂SO₄ + 2MnSO₄ + 2H₂SO₄

(b) SO₂ acts as a REDUCING agent. It causes the reduction of MnO₄⁻ (Mn⁷⁺ → Mn²⁺) by donating electrons (SO₂ is oxidised: S goes from +4 to +6).

QUESTION 4 (WASSCE 2022, Q1c):
Give THREE uses of sulphuric acid.

ANSWER:
1. Manufacture of fertilisers (e.g., superphosphate from phosphate rock)
2. In car/lead-acid batteries as the electrolyte
3. As a dehydrating agent (e.g., charring sugar, drying gases in laboratories)
4. Manufacture of other acids (HCl, HNO₃, H₃PO₄) [any 3 from these]

PRACTICE QUESTIONS:
1. What is the difference between dilute H₂SO₄ and concentrated H₂SO₄ in their reaction with copper?
2. State TWO effects of acid rain caused by SO₂.

ANSWERS:
1. Dilute H₂SO₄ does NOT react with copper (Cu is below H in activity series; dilute acid does not oxidise it).
   Concentrated H₂SO₄ (hot) DOES react with copper: Cu + 2H₂SO₄(conc,hot) → CuSO₄ + SO₂ + 2H₂O
   because concentrated H₂SO₄ acts as an oxidising agent, not just an acid.

2. Effects of acid rain: (i) Kills fish and aquatic organisms by lowering pH of lakes and rivers; (ii) Corrodes/erodes limestone, marble and metal structures/statues.
$CONTENT$, 'practice', 5);
  END IF;

END $$;
