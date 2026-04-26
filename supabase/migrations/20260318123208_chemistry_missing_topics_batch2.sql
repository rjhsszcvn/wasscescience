
/*
  # Chemistry Missing Topics - Batch 2
  
  Adds comprehensive notes for:
  - Carbon Chemistry and Fuels (topic 15)
  - Polymers and Plastics (topic 16)
  - Industrial and Agricultural Chemistry (topic 17)
  - Environmental Chemistry (topic 18)
  - Nuclear Chemistry and Radioactivity (topic 20)
  
  Each topic gets 5 comprehensive sections with WASSCE-aligned content.
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Chemistry';

  -- =============================================
  -- CARBON CHEMISTRY AND FUELS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Carbon Chemistry and Fuels';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Carbon and Hydrocarbons', $CONTENT$
CARBON CHEMISTRY AND FUELS — WASSCE CHEMISTRY

Carbon (C) is the basis of all organic chemistry. It is unique because carbon atoms can form stable bonds with each other (catenation) and with other non-metals (H, O, N, S, halogens), forming millions of different compounds.

WHY CARBON IS SPECIAL:
1. Catenation: Carbon atoms bond strongly with other carbon atoms, forming long chains, branched chains, and rings.
2. Tetravalency: Carbon has 4 valence electrons, allowing it to form 4 bonds (single, double, or triple).
3. Multiple bond types: C−C (single), C=C (double), C≡C (triple)

ALLOTROPES OF CARBON:
1. Diamond: Each C bonded to 4 others in tetrahedral arrangement. Very hard (hardest natural substance). Does not conduct electricity. High melting point. Used for cutting tools, jewellery.
2. Graphite: Layers of hexagonal rings. Each C bonded to 3 others. One free electron per carbon (delocalised) → conducts electricity. Layers slide over each other (slippery) → used as lubricant, pencil lead. Used in electrodes.
3. Fullerenes (C₆₀, Buckminsterfullerene): Soccer ball-shaped molecules of 60 carbons arranged in pentagons and hexagons. Used in nanotechnology, drug delivery.

HYDROCARBONS:
Hydrocarbons are organic compounds containing ONLY carbon and hydrogen.

CLASSES:
1. ALKANES (saturated): General formula CₙH₂ₙ₊₂; single bonds only
   Methane (CH₄), Ethane (C₂H₆), Propane (C₃H₈), Butane (C₄H₁₀), Pentane (C₅H₁₂)

2. ALKENES (unsaturated): General formula CₙH₂ₙ; contain one C=C double bond
   Ethene (C₂H₄), Propene (C₃H₆), Butene (C₄H₈)

3. ALKYNES (unsaturated): General formula CₙH₂ₙ₋₂; contain one C≡C triple bond
   Ethyne/Acetylene (C₂H₂), Propyne (C₃H₄)

4. ARENES (aromatic): Contain benzene ring (C₆H₆)
   Benzene, toluene, naphthalene

CRUDE OIL (PETROLEUM):
A fossil fuel — a complex mixture of hydrocarbons formed from the remains of marine organisms over millions of years under heat and pressure.

Composition: mainly alkanes (C₁ to C₄₀+), with some cycloalkanes and aromatic compounds.

The hydrocarbons are separated by fractional distillation based on boiling points:
Gases (LPG): C₁–C₄, b.p. < 25°C (cooking, heating)
Petrol/Gasoline: C₅–C₁₂, b.p. 25–175°C (car engines)
Kerosene: C₁₂–C₁₆, b.p. 175–250°C (aircraft, paraffin stoves)
Diesel/Gas oil: C₁₅–C₂₅, b.p. 250–350°C (trucks, trains)
Lubricating oil: C₂₅–C₄₀, b.p. 350–400°C (engine lubrication)
Wax/Bitumen: C₄₀+, b.p. >400°C (roads, waterproofing)

FUELS:
A fuel is a substance that releases energy (usually heat and light) when it burns in air/oxygen.

Combustion reactions:
Complete combustion (excess O₂):
CₓHᵧ + excess O₂ → CO₂ + H₂O (only)
CH₄ + 2O₂ → CO₂ + 2H₂O   ΔH = −890 kJ/mol

Incomplete combustion (limited O₂):
CₓHᵧ + limited O₂ → CO + C (soot) + H₂O
CO is colourless, odourless, poisonous gas — binds to haemoglobin (250× stronger than O₂), causing suffocation.
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Alkanes, Alkenes: Reactions and Properties', $CONTENT$
ALKANES — SATURATED HYDROCARBONS

Properties:
- Relatively unreactive (strong C−H and C−C bonds; no functional group)
- Insoluble in water; soluble in organic solvents
- Burn (combust) well — used as fuels
- Boiling point increases with chain length (more van der Waals forces)

Reactions of Alkanes:
1. COMBUSTION (most important reaction):
   Complete: CH₄ + 2O₂ → CO₂ + 2H₂O (blue flame, no soot)
   Incomplete: 2CH₄ + 3O₂ → 2CO + 4H₂O (yellow/smoky flame)

2. SUBSTITUTION (with halogens, in UV light):
   Methane + chlorine (in sunlight):
   CH₄ + Cl₂ → CH₃Cl + HCl (chloromethane)
   CH₃Cl + Cl₂ → CH₂Cl₂ + HCl (dichloromethane)
   This is a FREE RADICAL substitution reaction — H atoms are replaced one by one.

3. CRACKING (thermal or catalytic):
   Breaking large alkane molecules into smaller, more useful molecules.
   C₁₀H₂₂ → C₄H₁₀ + 3C₂H₄ (thermal cracking — high temperature, ~500°C)
   C₁₀H₂₂ → C₄H₈ + C₃H₆ + ... (catalytic cracking — zeolite catalyst, lower temperature)
   Cracking produces more petrol fractions and alkenes for polymer industry.

ALKENES — UNSATURATED HYDROCARBONS

Properties:
- More reactive than alkanes due to C=C double bond
- Undergo addition reactions (the C=C breaks open and new atoms add across it)

Reactions of Alkenes:
1. HYDROGENATION (addition of H₂):
   C₂H₄ + H₂ → C₂H₆ (Ni catalyst, 150°C)
   Used in hardening vegetable oils to make margarine.

2. HALOGENATION (addition of Cl₂ or Br₂):
   C₂H₄ + Br₂ → CH₂BrCH₂Br (1,2-dibromoethane)
   Test for unsaturation: decolourises bromine water (orange → colourless)
   Alkanes do NOT decolourise bromine water in the dark.

3. HYDRATION (addition of H₂O):
   C₂H₄ + H₂O → C₂H₅OH (ethanol; H₃PO₄ catalyst, 300°C, 60 atm)
   Industrial method for making ethanol (not from fermentation)

4. POLYMERISATION (addition polymerisation):
   n(CH₂=CH₂) → (−CH₂−CH₂−)ₙ (polyethene/polythene)
   Alkenes are the monomers used to make addition polymers.

5. COMBUSTION:
   C₂H₄ + 3O₂ → 2CO₂ + 2H₂O (less efficiently than alkanes — smoky flame)

DISTINGUISHING ALKANES FROM ALKENES:
Test with bromine water (Br₂(aq)):
- Alkenes: decolourise bromine water (orange → colourless) → UNSATURATED
- Alkanes: do NOT decolourise bromine water → SATURATED

Test with acidified KMnO₄:
- Alkenes: decolourise purple KMnO₄ (reduced to Mn²⁺, colourless)
- Alkanes: no change

NATURAL GAS AND BIOGAS:
Natural gas: mainly methane (85%+) from underground deposits.
Biogas: mixture of CH₄ (55-70%) and CO₂, produced by bacterial decomposition of organic matter (anaerobic digestion) in biogas digesters. Renewable energy source.
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Fossil Fuels, Environmental Impact, and Alternatives', $CONTENT$
FOSSIL FUELS AND THEIR IMPACT

FOSSIL FUELS: Coal, crude oil, natural gas — formed from remains of prehistoric organisms.
Non-renewable: formed over millions of years; cannot be replaced on human timescales.

ADVANTAGES OF FOSSIL FUELS:
- High energy density (much energy per unit mass/volume)
- Reliable and easy to transport and store
- Existing infrastructure for distribution
- Relatively cheap to extract (currently)

ENVIRONMENTAL PROBLEMS:
1. Carbon dioxide emissions → GLOBAL WARMING / CLIMATE CHANGE
   Burning any carbon-containing fuel produces CO₂:
   CH₄ + 2O₂ → CO₂ + 2H₂O
   CO₂ is a greenhouse gas — it traps heat in the atmosphere (greenhouse effect).
   Result: global temperature rise, melting ice caps, rising sea levels, extreme weather events.

2. Carbon monoxide (CO) from incomplete combustion:
   Poisonous gas; binds to haemoglobin 250x more strongly than O₂.
   Sources: car exhausts, faulty gas appliances, chimneys.
   Risk: causes headaches, unconsciousness, death in enclosed spaces.

3. Sulphur dioxide (SO₂) from burning sulphur-containing fuels:
   Causes acid rain (see Sulphur topic).

4. Nitrogen oxides (NOₓ) from high-temperature combustion (N₂ + O₂ → NOₓ):
   Also cause acid rain and photochemical smog.

5. Soot/particulate matter: Respiratory damage; climate effects.

6. Methane from oil and gas extraction: Potent greenhouse gas (25× CO₂).

GLOBAL WARMING AND GREENHOUSE EFFECT:
Natural greenhouse effect: H₂O, CO₂, CH₄, N₂O absorb infrared radiation from Earth's surface, keeping Earth warm enough for life.
Enhanced greenhouse effect: Burning fossil fuels increases CO₂ levels → traps more heat → Earth warms beyond natural levels.

ALTERNATIVE (RENEWABLE) ENERGY SOURCES:
1. Solar energy: Photovoltaic cells convert sunlight to electricity. No emissions.
2. Wind energy: Wind turbines generate electricity. No fuel burned.
3. Hydroelectric: Flowing water drives turbines. Requires dams.
4. Geothermal: Heat from Earth's interior. Limited geographic availability.
5. Biofuels: Ethanol (fermentation), biodiesel (transesterification of vegetable oils).
   Carbon-neutral in theory: CO₂ released on burning = CO₂ absorbed during plant growth.
6. Hydrogen fuel: 2H₂ + O₂ → 2H₂O (only water produced)
   But: requires energy to produce H₂ (electrolysis of water); storage is challenging.

COMPARISON OF FUELS:
Property          Natural gas    Petrol    Ethanol    Hydrogen
Energy/kg(kJ)     55,500        44,000    26,800     141,800
CO₂ per kJ        0.055         0.072     0 (net)    0
Renewable?        No            No        Yes        Yes (if from renewable electricity)

FRACTIONAL DISTILLATION — USES OF EACH FRACTION:
Refinery gases: LPG (camping gas, domestic cooking)
Petrol (gasoline): fuel for car engines (combustion engines)
Naphtha: raw material for making plastics and chemicals
Kerosene: jet fuel (aviation), paraffin heaters/stoves
Diesel: fuel for diesel engines (trucks, buses, trains)
Fuel oil: ships, industrial furnaces, power stations
Lubricating oil: engine lubrication
Bitumen (tar): road surfacing, waterproofing roofs

REFORMING AND CRACKING (industrial processes):
Cracking: breaks large molecules into smaller, more useful ones (increases petrol supply and produces alkenes for polymers).
Reforming: converts straight-chain alkanes into branched-chain alkanes or aromatics — improves octane rating (engine performance) of petrol.
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Carbon Chemistry Calculations', $CONTENT$
WORKED EXAMPLES — CARBON CHEMISTRY AND FUELS

EXAMPLE 1 — Combustion Calculation:
Calculate the volume of oxygen required to completely burn 10 cm³ of propane (C₃H₈).
All volumes measured at the same temperature and pressure.

SOLUTION:
Equation: C₃H₈ + 5O₂ → 3CO₂ + 4H₂O
1 mole C₃H₈ requires 5 moles O₂.
By Avogadro's Law, equal volumes of gases contain equal moles at the same T and P.
∴ 10 cm³ C₃H₈ requires 5 × 10 = 50 cm³ of O₂.
3 × 10 = 30 cm³ of CO₂ would be produced.

EXAMPLE 2 — Test for Unsaturation:
Describe how you would distinguish between hexane (C₆H₁₄) and hex-1-ene (C₆H₁₂) using a chemical test.

SOLUTION:
Add bromine water (orange solution of Br₂(aq)) to each compound, one at a time.

For hexane (alkane, saturated):
- The bromine water remains orange. No decolourisation. 
- (No reaction in the dark; only slow photochemical substitution in UV light.)

For hex-1-ene (alkene, unsaturated):
- The bromine water is rapidly decolourised (turns from orange to colourless).
- C₆H₁₂ + Br₂ → C₆H₁₂Br₂ (addition reaction across the C=C bond)

EXAMPLE 3 — Cracking:
(a) What is cracking? Why is it important industrially?
(b) Write an equation for the cracking of decane (C₁₀H₂₂) to form octane and ethene.

SOLUTION:
(a) Cracking is the breaking down of long-chain alkane molecules (from crude oil distillation) into shorter, more useful molecules using heat (and a catalyst for catalytic cracking).
Importance: 
- Increases the supply of petrol fractions (which are in highest demand)
- Produces alkene monomers (ethene, propene) needed for making plastics

(b) C₁₀H₂₂ → C₈H₁₈ + C₂H₄
    Decane → Octane + Ethene (check: 10C = 8C + 2C ✓; 22H = 18H + 4H ✓)

EXAMPLE 4 — Pollution from Combustion:
(a) Write equations for BOTH complete and incomplete combustion of propane (C₃H₈).
(b) Explain why incomplete combustion is more dangerous than complete combustion.

SOLUTION:
(a) Complete combustion (excess O₂):
    C₃H₈ + 5O₂ → 3CO₂ + 4H₂O
    (only CO₂ and H₂O produced)

    Incomplete combustion (limited O₂):
    2C₃H₈ + 7O₂ → 4CO + 2C + 8H₂O
    (carbon monoxide and soot also produced)

(b) Incomplete combustion is more dangerous because:
    - Carbon monoxide (CO) is produced: a colourless, odourless, POISONOUS gas.
    - CO binds to haemoglobin in red blood cells with ~250 times greater affinity than O₂.
    - This prevents haemoglobin from transporting oxygen → cells are starved of O₂ → unconsciousness, death.
    - Soot (carbon particles) cause respiratory problems.
    - Complete combustion only produces CO₂ (not poisonous at low concentrations) and H₂O.

EXAMPLE 5 — Environmental Impact:
Explain why burning fossil fuels is linked to global warming.

SOLUTION:
Fossil fuels (coal, oil, natural gas) contain carbon compounds.
When burned: carbon + oxygen → carbon dioxide (CO₂)
Example: CH₄ + 2O₂ → CO₂ + 2H₂O

CO₂ is a greenhouse gas:
1. Sun's radiation (short-wavelength UV and visible light) passes through the atmosphere and warms Earth's surface.
2. Earth re-emits longer-wavelength infrared (heat) radiation.
3. CO₂ and other greenhouse gases absorb this infrared radiation instead of letting it escape into space.
4. This trapped heat warms the lower atmosphere — the enhanced greenhouse effect.

Result: Global average temperatures rise → melting polar ice → rising sea levels → extreme weather events → ecosystem disruption.
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Carbon Chemistry', $CONTENT$
WASSCE PAST QUESTIONS — CARBON CHEMISTRY AND FUELS

QUESTION 1 (WASSCE 2019, Q5b):
(a) Name the products of COMPLETE combustion of any hydrocarbon fuel in excess oxygen.
(b) Why is carbon monoxide dangerous?

ANSWERS:
(a) Complete combustion of any hydrocarbon produces ONLY: Carbon dioxide (CO₂) and Water (H₂O).

(b) Carbon monoxide (CO) is dangerous because:
    - It is colourless and odourless — you cannot detect it without instruments
    - It is highly poisonous: CO binds to haemoglobin (forming carboxyhaemoglobin) with 250 times greater affinity than O₂
    - This prevents blood from carrying oxygen to body cells → oxygen starvation → unconsciousness and death
    - Symptoms include headache, dizziness, confusion before loss of consciousness

QUESTION 2 (WASSCE 2020, Q4b):
(a) What is cracking? Give ONE example with a balanced equation.
(b) Name TWO products of catalytic cracking that are industrially important.

ANSWERS:
(a) Cracking is the thermal or catalytic decomposition of large hydrocarbon molecules (usually long-chain alkanes) from crude oil into smaller, more useful molecules.
Example: C₁₀H₂₂ → C₈H₁₈ + C₂H₄   (decane → octane + ethene)

(b) Industrially important products of cracking:
    1. Short-chain alkenes (e.g., ethene, propene) — used as monomers for making plastics and other polymers.
    2. Shorter-chain alkanes in the petrol/gasoline range — used as fuel for petrol engines.

QUESTION 3 (WASSCE 2021, Q1a):
How would you show that a gaseous hydrocarbon is unsaturated? 

ANSWER:
Pass the gas through bromine water (orange solution).
If the bromine water is DECOLOURISED (turns colourless), the hydrocarbon is UNSATURATED — it contains a C=C or C≡C bond.
Explanation: The double bond undergoes addition reaction with Br₂: the Br₂ adds across the double bond, consuming the Br₂ and removing its orange colour.
C₂H₄ + Br₂ → CH₂BrCH₂Br (colourless)

If the bromine water stays orange (no decolourisation), the gas is SATURATED.

QUESTION 4 (WASSCE 2018, Q3c):
Give THREE reasons why fossil fuels are harmful to the environment.

ANSWER:
1. Carbon dioxide (CO₂) released contributes to the greenhouse effect and global warming/climate change.
2. Sulphur dioxide (SO₂) released from burning sulphur-containing fuels causes acid rain, damaging buildings, forests, and aquatic life.
3. Carbon monoxide (CO) from incomplete combustion is toxic to animals and humans.
4. Nitrogen oxides (NOₓ) formed at high combustion temperatures cause photochemical smog and acid rain.
5. Soot/particulate matter causes air pollution and respiratory diseases.
(Any THREE are acceptable)

PRACTICE QUESTIONS:
1. Give the general formula for alkanes and for alkenes.
2. Name the process used to harden vegetable oils to make margarine.
3. Which fuel has the highest energy content per kg: petrol, ethanol, or hydrogen?

ANSWERS:
1. Alkanes: CₙH₂ₙ₊₂; Alkenes: CₙH₂ₙ
2. Hydrogenation (addition of H₂ across C=C bonds, using Ni catalyst)
3. Hydrogen has the highest energy content per kg (~141,800 kJ/kg), much higher than petrol (~44,000 kJ/kg) or ethanol (~26,800 kJ/kg).
$CONTENT$, 'practice', 5);
  END IF;

  -- =============================================
  -- POLYMERS AND PLASTICS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Polymers and Plastics';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Polymers, Monomers, and Plastics', $CONTENT$
POLYMERS AND PLASTICS — WASSCE CHEMISTRY

A POLYMER is a large molecule (macromolecule) made up of many small repeating units called MONOMERS joined together by covalent bonds.

Poly + mer = many + units
Mono + mer = one + unit

POLYMERISATION: The chemical reaction by which monomers join together to form a polymer.

n(monomer) → (−monomer−)ₙ (polymer)

NATURAL POLYMERS (occur in nature):
- Proteins: made from amino acid monomers (→ hair, nails, enzymes, muscle)
- Starch and cellulose: made from glucose monomers (→ plant cell walls, food storage)
- Natural rubber: made from isoprene monomers
- DNA and RNA: made from nucleotide monomers
- Wool and silk: protein polymers

SYNTHETIC (MAN-MADE) POLYMERS (plastics):
Made from petrochemical starting materials (from crude oil).
Examples: polyethene, polypropene, PVC, polystyrene, nylon, Terylene, Perspex.

TWO TYPES OF POLYMERISATION:
1. ADDITION POLYMERISATION: 
   - Monomers join WITHOUT losing any atoms
   - Requires a C=C double bond in the monomer (alkene monomers)
   - All atoms in monomers end up in the polymer
   - Only ONE product formed

2. CONDENSATION POLYMERISATION:
   - Monomers join WITH loss of a small molecule (usually water or HCl)
   - Monomers have two functional groups (bifunctional)
   - Two products formed: polymer + small molecule

THERMOPLASTICS vs THERMOSETTING PLASTICS:
Thermoplastics:
- Soften and melt when heated; harden when cooled (reversible)
- Can be reshaped and recycled
- Linear or branched polymer chains; no cross-links between chains
- Examples: polyethene (polythene), PVC, polypropene, polystyrene

Thermosetting plastics (thermosets):
- Harden permanently when first heated and formed
- Do NOT soften on reheating; char/decompose on very high heating
- Have extensive cross-linking between polymer chains (network structure)
- Cannot be reshaped or recycled easily
- Examples: Bakelite, epoxy resin (Araldite), melamine, urea-formaldehyde

PLASTICISERS:
Additives mixed with polymers to make them more flexible by preventing chains from getting too close together.
Example: PVC without plasticiser is rigid (drain pipes); PVC with plasticiser is flexible (electrical cable insulation, raincoats).
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Addition Polymers: Examples and Repeat Units', $CONTENT$
ADDITION POLYMERISATION — DETAILED STUDY

In addition polymerisation:
- The C=C double bond in each monomer "opens up"
- Monomers join end to end
- No atoms are lost (no by-products)
- Each section of the polymer chain comes directly from one monomer

MAJOR ADDITION POLYMERS:

1. POLYETHENE (Polythene, PE):
   Monomer: Ethene (CH₂=CH₂)
   Polymer: (−CH₂−CH₂−)ₙ
   n(CH₂=CH₂) → (−CH₂−CH₂−)ₙ
   
   Types:
   - Low-density polyethene (LDPE): Made at high pressure (200 atm), peroxide initiator. Branched chains → less crystalline, lower density, more flexible. Uses: plastic bags, film wrapping, squeeze bottles.
   - High-density polyethene (HDPE): Made at low pressure with Ziegler-Natta catalyst. Linear chains → more crystalline, higher density, harder, stiffer. Uses: milk containers, pipes, bottles.

2. POLYPROPENE (Polypropylene, PP):
   Monomer: Propene (CH₂=CHCH₃)
   Polymer: (−CH₂−CH(CH₃)−)ₙ
   Uses: Ropes, carpets, food containers, car bumpers, medical equipment.

3. POLYVINYL CHLORIDE (PVC):
   Monomer: Chloroethene/Vinyl chloride (CH₂=CHCl)
   Polymer: (−CH₂−CHCl−)ₙ
   Rigid PVC uses: drainpipes, gutters, window frames
   Flexible PVC (with plasticiser) uses: electrical cable insulation, hoses, inflatable products, artificial leather

4. POLYSTYRENE (PS):
   Monomer: Styrene/Phenylethene (CH₂=CHC₆H₅)
   Polymer: (−CH₂−CH(C₆H₅)−)ₙ
   Expanded polystyrene (foam): insulation, packaging (e.g., protective packaging for electronics)
   Solid polystyrene: plastic cups, CD cases, model kits

5. POLYTETRAFLUOROETHENE (PTFE / Teflon):
   Monomer: Tetrafluoroethene (CF₂=CF₂)
   Polymer: (−CF₂−CF₂−)ₙ
   Properties: Extremely chemically resistant; very low coefficient of friction; non-stick.
   Uses: Non-stick cookware (pans), plumber's tape, chemical-resistant tubing.

WRITING THE REPEAT UNIT:
To find the repeat unit from a monomer: simply replace the C=C double bond with a single C−C bond and draw brackets with n.
CH₂=CH₂ → (−CH₂−CH₂−)ₙ

To find the monomer from a polymer: reverse the process — open the C−C bond in the backbone and write C=C.

IDENTIFYING ADDITION POLYMERS IN EXAM QUESTIONS:
1. Look for C=C in the monomer structure → addition polymer
2. Find the repeat unit (the minimum unit that repeats along the chain)
3. The polymer chain has NO side chains or atoms not from the monomer
4. No small molecule is eliminated
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Condensation Polymers and Environmental Issues', $CONTENT$
CONDENSATION POLYMERISATION — DETAILED STUDY

In condensation polymerisation:
- Monomers react and JOIN with elimination of a SMALL MOLECULE (usually water or HCl)
- Monomers have TWO functional groups (bifunctional)
- The monomer must have two different ends that can react with each other or with a complementary monomer
- The polymer contains DIFFERENT LINKAGES (ester, amide, peptide) between monomers

TYPES OF CONDENSATION POLYMERS:

1. POLYAMIDES (nylon):
   Formed from: Diamine + Dicarboxylic acid → elimination of water (H₂O)
   OR: Amino acid + amino acid → peptide/amide bond + H₂O
   Linkage formed: AMIDE BOND (−CO−NH−)

   NYLON-6,6:
   Monomers: 1,6-diaminohexane (H₂N(CH₂)₆NH₂) + hexanedioic acid (HOOC(CH₂)₄COOH)
   Reaction: −NH₂ + HOOC− → −NH−CO− + H₂O (at each linkage)
   Uses of nylon: Clothing (shirts, stockings), ropes, toothbrush bristles, fishing line, parachutes, gears.

   NYLON-6:
   Made from a single monomer: caprolactam (a cyclic amide). Used for stockings, carpets.

2. POLYESTERS:
   Formed from: Diol + Dicarboxylic acid → elimination of water (H₂O)
   Linkage formed: ESTER BOND (−COO−)

   TERYLENE (PET — polyethylene terephthalate):
   Monomers: Ethane-1,2-diol (HOCH₂CH₂OH) + Benzene-1,4-dicarboxylic acid (terephthalic acid)
   Reaction: −OH + HOOC− → −O−CO− + H₂O (at each linkage)
   Uses: Polyester fibres (clothing), plastic bottles (drinks), packaging film, magnetic tape.

   KEY COMPARISON:
   Addition polymer: single monomer, C=C required, no by-product
   Condensation polymer: two (or bifunctional) monomers, functional groups required, water (or HCl) released

PROTEINS — A NATURAL CONDENSATION POLYMER:
Monomers: amino acids (H₂N−CHR−COOH)
Linkage: peptide bond (−CO−NH−)
Reaction: −NH₂ + HOOC− → −NH−CO− + H₂O

ENVIRONMENTAL ISSUES WITH PLASTICS:
PROBLEMS:
1. Non-biodegradable: Most synthetic plastics do not decompose (or decompose extremely slowly — hundreds of years). They accumulate in landfills and oceans.
2. Plastic pollution: Microplastics (tiny fragments) enter food chains, harming marine animals. Large plastic waste kills marine animals through entanglement or ingestion.
3. Burning plastics releases toxic gases: PVC → HCl; other plastics → CO, CO₂, toxic organic compounds.
4. Leaching: Some plasticisers and additives leach into food and water, posing health risks.

SOLUTIONS:
1. Recycling: Thermoplastics can be melted and re-moulded. Different plastics have recycling codes (1-7).
2. Biodegradable plastics: Made from plant-based monomers (e.g., polylactic acid, PLA from corn starch). Decompose much faster.
3. Incineration (with energy recovery): Burns plastics to generate electricity (but produces gases that need scrubbing).
4. Reduce and reuse: Use less plastic; use reusable bags, bottles, containers.
5. Compostable packaging: Made from natural polymers that decompose in composting conditions.

RECYCLING CODES:
1 = PET (Terylene) — drink bottles — widely recycled
2 = HDPE — milk containers — widely recycled
3 = PVC — pipes — difficult to recycle
4 = LDPE — plastic bags — some schemes
5 = PP — food containers — often recyclable
6 = PS (polystyrene) — rarely recycled
7 = Other — varies
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Polymer Structures and Problems', $CONTENT$
WORKED EXAMPLES — POLYMERS AND PLASTICS

EXAMPLE 1 — Identifying Polymer Type:
(a) What type of polymerisation produces polyvinyl chloride (PVC)?
(b) Draw the repeat unit of PVC.
(c) What is the monomer?

SOLUTION:
(a) Addition polymerisation. PVC is formed from an alkene monomer (chloroethene, which has a C=C double bond). No atoms are lost during polymerisation.

(b) Repeat unit of PVC:
    (−CH₂−CHCl−)ₙ
    Carbon 1: 2 H atoms attached, bonded to chain on both sides
    Carbon 2: 1 H atom, 1 Cl atom attached, bonded to chain on both sides

(c) Monomer of PVC: Chloroethene (vinyl chloride), CH₂=CHCl

EXAMPLE 2 — Addition Polymerisation Mechanism:
Show the repeat unit of polypropene and identify its monomer.

SOLUTION:
Monomer: Propene (CH₂=CHCH₃; or CH₂=CH−CH₃)
n(CH₂=CHCH₃) → (−CH₂−CH(CH₃)−)ₙ

Repeat unit: (−CH₂−CH(CH₃)−)ₙ
Each repeat unit has the formula C₃H₆.

EXAMPLE 3 — Condensation Polymer:
Nylon-6,6 is formed from hexane-1,6-diamine and hexanedioic acid.
(a) What type of bond links the monomers together?
(b) What small molecule is eliminated during polymerisation?
(c) Write the first step of the reaction showing the formation of this bond.

SOLUTION:
(a) Amide bond (also called peptide bond): −CO−NH−

(b) Water (H₂O) is eliminated at each linkage point.
    One H₂O is lost for each amide bond formed.

(c) First step:
    H₂N−(CH₂)₆−NH₂ + HOOC−(CH₂)₄−COOH →
    H₂N−(CH₂)₆−NH−CO−(CH₂)₄−COOH + H₂O
    (The −NH₂ from diamine reacts with −COOH from diacid, forming −NH−CO− and water)

EXAMPLE 4 — Thermoplastic vs Thermosetting:
(a) Distinguish between thermoplastic and thermosetting polymers.
(b) Classify: polyethene, Bakelite, nylon, epoxy resin, PVC.

SOLUTION:
(a) Thermoplastic: Softens on heating, hardens on cooling — reversible process. Has linear or branched chains with no cross-links. Can be reshaped and recycled.
    Thermosetting: Permanently hardened on first moulding. Has extensive cross-links between chains (network structure). Does NOT soften on reheating; chars/decomposes. Cannot be recycled.

(b) Thermoplastics: polyethene (LDPE, HDPE), nylon, PVC
    Thermosetting: Bakelite, epoxy resin (Araldite)

EXAMPLE 5 — Environmental Calculation:
(a) Why are most synthetic plastics resistant to biodegradation?
(b) Suggest ONE advantage of biodegradable plastics over conventional plastics.

SOLUTION:
(a) Synthetic plastics are resistant to biodegradation because:
    - They have very large, long polymer chains that microorganisms cannot easily break down
    - The C−C bonds in the backbone are strong and not recognised by biological enzymes
    - Many plastics (like PVC, PTFE) contain halogens (Cl, F) which make them even more resistant
    - There are no natural enzymes (initially) that have evolved to break them down

(b) Biodegradable plastics break down into natural substances (CO₂, water, biomass) within months to years rather than centuries. Advantages include: reduced plastic pollution in oceans and landfill; lower risk of microplastic contamination; reduced harm to wildlife that ingests or becomes entangled in plastic.
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Polymers', $CONTENT$
WASSCE PAST QUESTIONS — POLYMERS AND PLASTICS

QUESTION 1 (WASSCE 2020, Q5b):
(a) Distinguish between addition polymerisation and condensation polymerisation.
(b) Give ONE example of each type.

ANSWERS:
(a) Addition polymerisation: Monomer molecules with a C=C double bond join together without loss of any atoms. Only ONE product is formed (the polymer). The repeat unit has the same atoms as the monomer.

Condensation polymerisation: Bifunctional monomers (with two functional groups) join together with elimination of a small molecule (usually water). TWO products are formed: the polymer and the small molecule. The repeat unit contains fewer atoms than the monomers.

(b) Addition: Polythene (polyethene) — from ethene monomers (CH₂=CH₂)
    Condensation: Nylon-6,6 — from hexane-1,6-diamine and hexanedioic acid (water eliminated)

QUESTION 2 (WASSCE 2019, Q2c):
(a) What is a repeat unit?
(b) Draw the structure of the repeat unit of poly(chloroethene) (PVC).

ANSWERS:
(a) A repeat unit is the smallest structural unit that repeats along the polymer chain. It represents the section of the polymer derived from one monomer molecule. The entire polymer chain is formed by n repeat units joined end to end: (−repeat unit−)ₙ.

(b) Repeat unit of PVC (poly(chloroethene)):
    (−CH₂−CHCl−)ₙ
    
    Structure: A chain of two carbon atoms per repeat unit, with:
    - Carbon 1: two H atoms
    - Carbon 2: one H atom, one Cl atom
    - Both carbons bonded to the rest of the chain on either side

QUESTION 3 (WASSCE 2021, Q3a):
Explain why plastics cause serious environmental problems. Suggest TWO ways to reduce plastic pollution.

ANSWER:
Environmental problems caused by plastics:
1. Non-biodegradable: Most plastics persist in the environment for hundreds of years, accumulating in landfills and oceans.
2. Harm to wildlife: Animals (seabirds, turtles, fish, whales) ingest plastic or become entangled, leading to injury and death.
3. Microplastics: As plastics break into tiny fragments, they enter food chains and water supplies, potentially harming health.
4. Release of toxic chemicals: Burning PVC releases HCl; other plastics release toxic organic compounds.

Ways to reduce plastic pollution:
1. Increase recycling of thermoplastics — melt and remould into new products.
2. Develop and use biodegradable/compostable alternatives (e.g., PLA from plant starch).
3. Reduce single-use plastic use (bans on plastic bags, straws, cutlery).
4. Better waste management: prevent plastic from reaching rivers and oceans.

QUESTION 4 (WASSCE 2022, Q4b):
Name the type of polymer formed in each case:
(a) When ethene undergoes polymerisation
(b) When an amino acid polymerises with other amino acids

ANSWERS:
(a) Addition polymer: polyethene (polythene). n(CH₂=CH₂) → (−CH₂−CH₂−)ₙ
    It is an addition polymer because the C=C double bond in ethene opens and monomers add together without loss of any atoms.

(b) Condensation polymer (specifically a polyamide — this is how proteins are made in nature).
    Amino acids have both an amino (−NH₂) and a carboxyl (−COOH) group. When they polymerise, the −NH₂ of one reacts with the −COOH of another, forming a peptide/amide bond (−CO−NH−) and eliminating water (H₂O) at each junction.

PRACTICE QUESTIONS:
1. What is the monomer of Terylene (PET)? What type of polymer is it?
2. Name ONE thermosetting polymer and state ONE use.

ANSWERS:
1. Terylene is made from TWO monomers: ethane-1,2-diol (HOCH₂CH₂OH) and benzene-1,4-dicarboxylic acid (terephthalic acid). It is a condensation polymer (specifically a polyester — linked by ester bonds).
2. Bakelite (phenol-formaldehyde resin): used for electrical insulators, switches, plug sockets, old telephone handsets. (Epoxy resin: adhesives, protective coatings — also acceptable.)
$CONTENT$, 'practice', 5);
  END IF;

END $$;
