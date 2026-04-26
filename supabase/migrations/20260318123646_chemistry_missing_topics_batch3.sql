
/*
  # Chemistry Missing Topics - Batch 3
  
  Adds comprehensive notes for:
  - Industrial and Agricultural Chemistry (topic 17)
  - Environmental Chemistry (topic 18)
  - Nuclear Chemistry and Radioactivity (topic 20)
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Chemistry';

  -- =============================================
  -- INDUSTRIAL AND AGRICULTURAL CHEMISTRY
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Industrial and Agricultural Chemistry';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Industrial Chemistry Processes', $CONTENT$
INDUSTRIAL AND AGRICULTURAL CHEMISTRY — WASSCE CHEMISTRY

This topic covers how chemistry is applied on an industrial scale to produce materials, fertilisers, and other important substances. Industrial processes must balance yield, cost, safety, and environmental impact.

KEY INDUSTRIAL PROCESSES:

1. THE HABER PROCESS — Manufacture of Ammonia (NH₃):
N₂(g) + 3H₂(g) ⇌ 2NH₃(g)     ΔH = −92 kJ/mol (exothermic)

Raw materials: Nitrogen (from fractional distillation of liquid air) + Hydrogen (from natural gas/steam reforming)

Conditions:
- Temperature: 450°C (compromise — cool enough for reasonable yield, hot enough for acceptable rate)
- Pressure: 200 atm (high pressure favours product — fewer moles of gas on right; 4 moles left → 2 moles right)
- Catalyst: Iron (Fe) with promoters (Al₂O₃, K₂O)

Yield at these conditions: approximately 15-20% per pass
Unreacted gases are recycled (returned to reactor), making overall yield efficient (>95% total conversion).

Application of Le Chatelier's Principle:
- Temperature: Exothermic reaction → lowering temperature increases yield BUT slows rate. 450°C is the compromise.
- Pressure: Forward reaction decreases moles of gas (4 → 2) → increasing pressure favours forward reaction (more NH₃). 200 atm is economically feasible.
- Catalyst: Speeds up reaction, allows equilibrium to be reached faster at lower temperature, does NOT change equilibrium position or yield.

2. THE CONTACT PROCESS — Manufacture of Sulphuric Acid (H₂SO₄):
See Sulphur topic for full detail.
Key equation: 2SO₂ + O₂ ⇌ 2SO₃ (V₂O₅ catalyst, 450°C, 1-2 atm)
SO₃ + H₂SO₄ → H₂S₂O₇ (oleum) → dilute with water → H₂SO₄

3. THE SOLVAY PROCESS — Manufacture of Sodium Carbonate (Na₂CO₃):
Used to produce washing soda and baking soda (NaHCO₃).

Overall reactions:
2NaCl + CaCO₃ → Na₂CO₃ + CaCl₂ (net reaction)

Steps:
1. Saturate NaCl solution (brine) with CO₂ and NH₃: NaCl + NH₃ + CO₂ + H₂O → NaHCO₃↓ + NH₄Cl
   NaHCO₃ precipitates (less soluble than NH₄Cl).
2. Filter off NaHCO₃ and heat it: 2NaHCO₃ → Na₂CO₃ + H₂O + CO₂
3. CO₂ is recycled to step 1.
4. Recover ammonia: NH₄Cl + Ca(OH)₂ → CaCl₂ + 2NH₃ + 2H₂O; NH₃ recycled.

4. MANUFACTURE OF HYDROCHLORIC ACID (HCl):
H₂(g) + Cl₂(g) → 2HCl(g) (direct synthesis; vigorous reaction in presence of flame)
Alternatively: By-product from chlorination of organic compounds.
HCl dissolved in water gives hydrochloric acid (concentrated = ~37%).

5. MANUFACTURE OF NITRIC ACID (HNO₃) — Ostwald Process:
Step 1: 4NH₃ + 5O₂ → 4NO + 6H₂O (Pt/Rh catalyst, 900°C) [oxidation of ammonia]
Step 2: 4NO + 3O₂ + 2H₂O → 4HNO₃ [further oxidation and dissolution]

Uses: Fertilisers (ammonium nitrate), explosives (TNT, dynamite), dyes, drugs.
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Agricultural Chemistry: Fertilisers and Soil', $CONTENT$
AGRICULTURAL CHEMISTRY — FERTILISERS

PLANT NUTRIENTS:
Plants need mineral salts from the soil for healthy growth.

Macronutrients (needed in large amounts):
- Nitrogen (N): for protein synthesis, leaf growth, chlorophyll. Deficiency → yellow leaves (chlorosis), stunted growth.
- Phosphorus (P): for DNA, ATP, root development, fruiting. Deficiency → purple/red leaves, poor root system.
- Potassium (K): for enzyme activation, disease resistance, water regulation, flowering. Deficiency → brown leaf edges, weak stems.
These three (N, P, K) are the most important elements in commercial fertilisers.

Secondary nutrients: Calcium (Ca), Magnesium (Mg), Sulphur (S)
Micronutrients (trace elements): Iron (Fe), Manganese (Mn), Boron (B), Copper (Cu), Zinc (Zn), Molybdenum (Mo)

FERTILISERS:
A fertiliser is any substance that, when added to soil, provides plant nutrients to improve crop growth and yield.

TYPES OF FERTILISERS:
1. ORGANIC (NATURAL) FERTILISERS:
- Animal manure (farmyard manure/FYM)
- Compost (decomposed plant material)
- Bone meal, blood meal, fish meal
- Green manures (legumes ploughed under)
Advantages: improve soil structure, slow-release nutrients, sustainable.
Disadvantages: bulky, slow-acting, variable nutrient content, pathogen risk.

2. INORGANIC (ARTIFICIAL/CHEMICAL) FERTILISERS:
Manufactured chemical compounds with defined nutrient content.

NITROGEN FERTILISERS:
- Ammonium nitrate (NH₄NO₃): 35% N — most widely used; provides both NH₄⁺ and NO₃⁻
  Made by: NH₃ + HNO₃ → NH₄NO₃
- Ammonium sulphate ((NH₄)₂SO₄): 21% N — acidifies soil
  Made by: 2NH₃ + H₂SO₄ → (NH₄)₂SO₄
- Urea (CO(NH₂)₂): 46% N — highest nitrogen content; converted to NH₃ in soil
  Made by: CO₂ + 2NH₃ → CO(NH₂)₂ + H₂O
- Ammonium phosphate: provides both N and P

PHOSPHORUS FERTILISERS:
- Superphosphate: Ca(H₂PO₄)₂ + CaSO₄
  Made by: Ca₃(PO₄)₂ + 2H₂SO₄ → Ca(H₂PO₄)₂ + 2CaSO₄
- Triple superphosphate: Ca(H₂PO₄)₂ only (more concentrated)
  Made by: Ca₃(PO₄)₂ + 3H₃PO₄ → 3Ca(H₂PO₄)₂

POTASSIUM FERTILISERS:
- Potassium chloride (KCl, "muriate of potash")
- Potassium sulphate (K₂SO₄)

NPK FERTILISERS:
Compound fertilisers containing all three major nutrients (N, P, K) in specified ratios.
e.g., NPK 15:15:15 means 15% N, 15% P₂O₅, 15% K₂O.

LIMING (soil pH correction):
Acidic soils reduce crop yield. Lime (CaCO₃, Ca(OH)₂, CaO) is added to neutralise acidity.
CaCO₃ + H₂SO₄ → CaSO₄ + H₂O + CO₂
Ca(OH)₂ + 2HCl → CaCl₂ + 2H₂O
Optimal soil pH for most crops: 6.0–7.0

NITROGEN CYCLE IN SOIL:
1. Nitrogen fixation: N₂ → NH₃ (by Rhizobium bacteria in legume root nodules; also by lightning and industry — Haber process)
2. Nitrification: NH₃ → NO₂⁻ → NO₃⁻ (by nitrifying bacteria — Nitrosomonas and Nitrobacter)
3. Assimilation: plants absorb NO₃⁻ → amino acids → proteins
4. Ammonification: dead organisms → NH₃ (by decomposer bacteria)
5. Denitrification: NO₃⁻ → N₂ (by denitrifying bacteria in waterlogged/anaerobic soils) — returns N₂ to atmosphere
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Eutrophication, Pesticides, and Food Preservation', $CONTENT$
EUTROPHICATION — A MAJOR ENVIRONMENTAL PROBLEM

DEFINITION: The excessive enrichment of water bodies (rivers, lakes) with nutrients (especially nitrogen and phosphorus), leading to rapid algal growth and eventual oxygen depletion.

CAUSES:
- Fertiliser runoff: excess fertilisers (especially NO₃⁻ and PO₄³⁻) wash into water bodies when it rains
- Sewage discharge: untreated sewage is rich in N and P compounds
- Industrial effluents

SEQUENCE OF EVENTS (EUTROPHICATION):
1. Excess nutrients (NO₃⁻, PO₄³⁻) enter water body via runoff
2. Algae and aquatic plants grow rapidly → dense algal bloom on water surface
3. Algal bloom blocks sunlight from reaching deeper plants → submerged plants die
4. Algal bloom eventually dies
5. Aerobic bacteria decompose the dead algae, using up dissolved oxygen
6. Dissolved oxygen levels drop drastically → fish and other aquatic organisms suffocate and die
7. Anaerobic bacteria take over → produce toxic gases (H₂S, methane) → foul smell

Result: "Dead zone" — water body with no fish, foul smell, murky green/brown colour.

PREVENTION:
- Use fertilisers sparingly and at correct times (not before heavy rain)
- Buffer strips/vegetated margins along waterways to trap runoff
- Treat sewage properly before discharge
- Use slow-release fertilisers
- Ban phosphates from detergents

PESTICIDES IN AGRICULTURE:
Pesticides are chemicals used to kill pest organisms (insects, fungi, weeds, rodents).

Types:
- Insecticides: kill insects (e.g., DDT, organophosphates, pyrethroids)
- Herbicides (weedkillers): kill unwanted plants (e.g., glyphosate, 2,4-D)
- Fungicides: kill fungi (e.g., copper sulphate in Bordeaux mixture)
- Rodenticides: kill rodents

PROBLEMS WITH PESTICIDES:
1. Bioaccumulation/Biomagnification: Persistent pesticides accumulate in fatty tissues and become more concentrated at higher trophic levels. (DDT: harmless in soil → concentrated in fish → highly toxic in fish-eating birds → thinned eggshells → near extinction of raptor birds)
2. Non-target effects: Kill beneficial insects (bees, pollinators), birds, and other organisms.
3. Soil and water contamination: Runoff carries pesticides into water bodies.
4. Pesticide resistance: Pests evolve resistance over time (natural selection).
5. Human health: Prolonged exposure may cause cancer, hormone disruption, neurological damage.

ALTERNATIVES — INTEGRATED PEST MANAGEMENT (IPM):
- Biological control: use natural predators (ladybirds eat aphids; Bacillus thuringiensis toxin against caterpillars)
- Crop rotation: disrupts pest life cycles
- Selective/targeted pesticide use: apply only when necessary
- GM crops: engineered to resist pests or tolerate herbicides

FOOD PRESERVATION:
Preserving food prevents spoilage caused by microorganisms (bacteria, moulds, yeasts) and chemical reactions (oxidation, enzymatic browning).

Methods:
- Refrigeration/Freezing: slows or stops microbial growth and enzymatic reactions
- Canning: heat sterilisation + sealed container (no air → no growth)
- Salting/pickling: high salt/acid concentration prevents microbial growth (osmosis kills bacteria)
- Drying/dehydration: removes water that microorganisms need to grow
- Pasteurisation: heating to 72°C for 15 seconds kills pathogens (milk, juices)
- Chemical preservatives: SO₂/sulphite (wine, dried fruit), sodium benzoate, nitrates (cured meat)
- Modified atmosphere packaging (MAP): replaces air with CO₂/N₂ to slow oxidation and microbial growth
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Industrial and Agricultural Calculations', $CONTENT$
WORKED EXAMPLES — INDUSTRIAL AND AGRICULTURAL CHEMISTRY

EXAMPLE 1 — Haber Process Calculation:
(a) In the Haber process, what mass of ammonia is produced from 56 g of nitrogen?
    Assume 100% conversion (theoretical yield).

SOLUTION:
N₂ + 3H₂ → 2NH₃
Molar masses: N₂ = 28 g/mol; NH₃ = 17 g/mol
Moles of N₂ = 56/28 = 2 mol
From equation: 1 mol N₂ → 2 mol NH₃
∴ 2 mol N₂ → 4 mol NH₃
Mass of NH₃ = 4 × 17 = 68 g

(b) If actual yield is only 15%, what mass of NH₃ is actually produced?
Mass = 68 × 0.15 = 10.2 g
(The remaining 85% unreacted gases are recycled in the industrial process.)

EXAMPLE 2 — Fertiliser Nitrogen Content:
(a) Calculate the percentage by mass of nitrogen in ammonium nitrate (NH₄NO₃). M(NH₄NO₃) = 80 g/mol.
(b) Why is urea preferred over ammonium nitrate in some applications?

SOLUTION:
(a) NH₄NO₃ has 2 nitrogen atoms.
    N content = 2 × 14 = 28 g/mol
    % N = (28/80) × 100 = 35%

(b) Urea (CO(NH₂)₂, M = 60 g/mol):
    N content = 2 × 14 = 28 g/mol
    % N = (28/60) × 100 = 46.7%
    
    Urea is preferred because:
    - It has the highest nitrogen content (46%) of any solid nitrogen fertiliser → lower transport/handling costs per kg of N
    - It is easier and safer to handle (ammonium nitrate is an explosive hazard in quantity)
    - It is suitable for foliar application (spraying on leaves)

EXAMPLE 3 — Superphosphate Manufacture:
Write the equation for the manufacture of superphosphate from rock phosphate and calculate what mass of H₂SO₄ is needed to react with 155 g of Ca₃(PO₄)₂.
(M values: Ca₃(PO₄)₂ = 310, H₂SO₄ = 98)

SOLUTION:
Ca₃(PO₄)₂ + 2H₂SO₄ → Ca(H₂PO₄)₂ + 2CaSO₄
(Rock phosphate + sulphuric acid → superphosphate + calcium sulphate)

Moles of Ca₃(PO₄)₂ = 155/310 = 0.5 mol
From equation: 1 mol Ca₃(PO₄)₂ requires 2 mol H₂SO₄
∴ 0.5 mol Ca₃(PO₄)₂ requires 1.0 mol H₂SO₄
Mass of H₂SO₄ = 1.0 × 98 = 98 g

EXAMPLE 4 — Eutrophication Explanation:
A lake near a farm turns green and later shows signs of dying fish. Explain what has happened.

SOLUTION:
This is eutrophication, caused by fertiliser runoff from the farm:
1. Excess nitrates and phosphates from fertiliser runoff enter the lake.
2. These nutrients promote rapid algal growth (algal bloom) on the water surface — green colour.
3. The algal bloom blocks sunlight → aquatic plants below cannot photosynthesise → die.
4. The algae eventually die too.
5. Aerobic bacteria decompose both dead algae and plants, consuming dissolved oxygen rapidly.
6. Dissolved oxygen in the lake falls to very low levels.
7. Fish and other aquatic organisms cannot get enough oxygen → they suffocate and die.
8. Anaerobic decomposition follows → H₂S and other toxic/foul-smelling gases released.
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Industrial Chemistry', $CONTENT$
WASSCE PAST QUESTIONS — INDUSTRIAL AND AGRICULTURAL CHEMISTRY

QUESTION 1 (WASSCE 2020, Q5a):
(a) State the conditions for the Haber process.
(b) Explain, using Le Chatelier's Principle, why a high pressure is used.

ANSWERS:
(a) Conditions for the Haber Process (N₂ + 3H₂ ⇌ 2NH₃):
    - Temperature: 450°C (compromise temperature)
    - Pressure: 200 atm (high pressure)
    - Catalyst: Iron (Fe) with alumina (Al₂O₃) promoter

(b) In the equation N₂ + 3H₂ ⇌ 2NH₃:
    Left side: 1 + 3 = 4 moles of gas
    Right side: 2 moles of gas
    
    By Le Chatelier's Principle: increasing pressure shifts equilibrium towards the side with fewer moles of gas — that is, the RIGHT side (products).
    ∴ Higher pressure → more NH₃ produced → greater yield.
    200 atm is chosen as a compromise: high enough pressure to give a reasonable yield, but not so high that the equipment costs and energy costs become prohibitive.

QUESTION 2 (WASSCE 2019, Q3a):
(a) Name ONE nitrogen-containing fertiliser and write its formula.
(b) Explain how the use of nitrogen fertilisers can lead to eutrophication.

ANSWERS:
(a) Ammonium nitrate: NH₄NO₃ (OR urea: CO(NH₂)₂, or ammonium sulphate: (NH₄)₂SO₄ — any one)

(b) Eutrophication from nitrogen fertilisers:
    - When it rains, excess nitrates (NO₃⁻) from nitrogen fertilisers are washed by runoff into nearby rivers, streams, and lakes.
    - The increased concentration of nitrates causes rapid, excessive growth of algae (algal bloom) on the water surface.
    - The dense algal bloom blocks sunlight to lower layers → aquatic plants die.
    - When algae eventually die, aerobic bacteria decompose them, rapidly consuming dissolved oxygen in the water.
    - As oxygen levels drop sharply, fish and other aquatic organisms suffocate and die.
    - The ecosystem is severely damaged or destroyed.

QUESTION 3 (WASSCE 2021, Q4a):
Calculate the percentage of nitrogen in urea, CO(NH₂)₂. [M: C=12, O=16, N=14, H=1]

ANSWER:
Molar mass of urea: 12 + 16 + 2(14 + 2×1) = 12 + 16 + 2(16) = 12 + 16 + 32 = 60 g/mol
Number of N atoms = 2
Mass of N in one mole = 2 × 14 = 28 g
% N = (28/60) × 100 = 46.7%
Urea contains 46.7% nitrogen by mass — making it the nitrogen fertiliser with the highest nitrogen content.

QUESTION 4 (WASSCE 2022, Q2c):
Name the raw materials for the Haber process and state where each comes from.

ANSWER:
1. Nitrogen (N₂): obtained from the fractional distillation of liquid air. Air is cooled until it liquefies, then distilled — nitrogen (b.p. −196°C) boils off before oxygen (b.p. −183°C).
2. Hydrogen (H₂): mainly obtained from the steam reforming of natural gas (methane):
   CH₄ + H₂O → CO + 3H₂ (at high temperature, with Ni catalyst)
   CO is then removed by the water-gas shift reaction: CO + H₂O → CO₂ + H₂
   (The CO₂ is removed by scrubbing with potassium carbonate solution.)

PRACTICE QUESTIONS:
1. What is the role of the iron catalyst in the Haber process?
2. Name TWO problems associated with overuse of pesticides.

ANSWERS:
1. The iron catalyst increases the RATE of the reaction — it allows equilibrium to be reached more quickly at 450°C. It does NOT change the equilibrium position (the final yield at a given T and P). It works by providing a surface on which N₂ and H₂ molecules can adsorb, weakening their bonds and lowering the activation energy for the reaction.

2. Problems with overuse of pesticides:
   i. Bioaccumulation/biomagnification: Pesticides accumulate in fatty tissues and become increasingly concentrated at higher levels of the food chain, harming top predators (e.g., birds of prey with thin eggshells from DDT).
   ii. Pesticide resistance: Repeated use selects for resistant pest variants → pesticide becomes ineffective over time.
   iii. Non-target harm: Kills beneficial organisms (bees, beneficial insects, birds) alongside pest species.
   (Any two are acceptable)
$CONTENT$, 'practice', 5);
  END IF;

  -- =============================================
  -- ENVIRONMENTAL CHEMISTRY
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Environmental Chemistry';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Environmental Chemistry and Pollution', $CONTENT$
ENVIRONMENTAL CHEMISTRY — WASSCE CHEMISTRY

Environmental chemistry studies the chemical processes occurring in the environment and the impact of human activities on air, water, and soil quality.

THE ATMOSPHERE:
Composition of clean, dry air:
- Nitrogen (N₂): ~78%
- Oxygen (O₂): ~21%
- Argon (Ar): ~0.9%
- Carbon dioxide (CO₂): ~0.04% (and rising due to fossil fuel burning)
- Water vapour: variable (0–4%)
- Trace gases: methane (CH₄), nitrous oxide (N₂O), ozone (O₃), etc.

THE GREENHOUSE EFFECT:
Natural greenhouse gases (CO₂, CH₄, H₂O, N₂O, O₃) absorb infrared radiation from Earth, keeping surface temperature ~33°C warmer than it would otherwise be — essential for life.

Enhanced greenhouse effect (human-caused):
- Burning fossil fuels releases vast amounts of CO₂
- Deforestation reduces CO₂ absorption by trees
- Agriculture releases CH₄ (cattle, rice paddies) and N₂O (fertiliser)
- Industrial processes release fluorinated gases (CFCs, HFCs, SF₆)

Consequences:
- Global average temperature rising (~1.1°C above pre-industrial levels currently)
- Melting ice caps and glaciers → sea level rise → flooding of coastal areas
- More frequent and intense extreme weather events (hurricanes, droughts, floods)
- Disruption of ecosystems; species extinction; coral bleaching

OZONE LAYER:
Ozone (O₃) in the stratosphere (15–35 km altitude) absorbs harmful ultraviolet (UV) radiation from the sun.

Formation: O₂ + UV → 2O; O + O₂ → O₃
Destruction by CFCs (chlorofluorocarbons):
- CFC molecules rise to stratosphere and are photodissociated: CF₂Cl₂ + UV → CF₂Cl• + Cl•
- Chain reaction: Cl• + O₃ → ClO• + O₂; ClO• + O → Cl• + O₂ (net: O₃ destroyed; Cl• regenerated)
- Each Cl• can destroy ~100,000 O₃ molecules (catalytic cycle)

Consequences of ozone depletion:
- More UV-B reaches Earth's surface
- Increased skin cancer, cataracts
- Damage to marine phytoplankton (base of marine food chains)
- Reduced crop yields

Solutions: Montreal Protocol (1987) — international ban on CFCs; replaced with HCFCs then HFCs (which do not attack ozone). Ozone hole slowly recovering.
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Air Pollution: Sources, Effects, and Control', $CONTENT$
AIR POLLUTION

Major air pollutants and their sources, effects, and control:

1. CARBON DIOXIDE (CO₂):
Source: Burning fossil fuels; deforestation; industrial processes.
Effect: Enhanced greenhouse effect → global warming → climate change.
Control: Switch to renewable energy; improve energy efficiency; reforestation; carbon capture and storage (CCS).

2. CARBON MONOXIDE (CO):
Source: Incomplete combustion of carbon fuels (car exhausts, poorly ventilated stoves, fires).
Effect: Poisonous — binds to haemoglobin (250× affinity vs O₂) → prevents O₂ transport → suffocation.
Control: Catalytic converters in car exhaust systems convert CO to CO₂:
2CO + O₂ → 2CO₂ (over platinum/palladium catalyst in the converter)

3. SULPHUR DIOXIDE (SO₂):
Source: Burning sulphur-containing fossil fuels (especially coal); metal smelting (roasting sulphide ores).
Effect: Respiratory irritant; reacts with water/O₂ in atmosphere → sulphurous/sulphuric acid → acid rain.
  Acid rain effects: kills fish, erodes limestone buildings/statues, damages forests.
Control: Burn low-sulphur fuels; flue gas desulphurisation (FGD — limestone scrubbing);
  CaCO₃ + SO₂ → CaSO₃ + CO₂   OR   CaO + SO₂ → CaSO₃

4. NITROGEN OXIDES (NOₓ — NO and NO₂):
Source: High-temperature combustion in car engines and power stations (N₂ + O₂ → 2NO at high T);
        NO further oxidised to NO₂ in air.
Effect: Respiratory irritant; brown colour (NO₂); acid rain (HNO₃); photochemical smog formation.
  HNO₃ formation: 4NO₂ + O₂ + 2H₂O → 4HNO₃
  Photochemical smog: VOCs + NOₓ + sunlight → ozone (O₃) at ground level + other harmful chemicals.
Control: Catalytic converters: 2NO + 2CO → N₂ + 2CO₂ (over Pt/Rh catalyst)
  Also: recirculation of exhaust gases (EGR); lean-burn engines.

5. VOLATILE ORGANIC COMPOUNDS (VOCs):
Source: Petrol vapour; paints, solvents, adhesives; natural vegetation.
Effect: Some are toxic/carcinogenic; contribute to photochemical smog formation.
Control: Vapour recovery systems at petrol stations; low-VOC paints.

6. PARTICULATE MATTER (PM₂.₅ and PM₁₀):
Source: Combustion (soot, smoke), industrial dust, road dust.
Effect: Lung and cardiovascular disease; carry carcinogens.
Control: Filters, electrostatic precipitators in chimneys.

7. METHANE (CH₄):
Source: Cattle digestion, rice paddies, landfill sites, natural gas leaks.
Effect: Potent greenhouse gas (25× more effective than CO₂ over 100 years).
Control: Capture and burn landfill gas; improve cattle feed; reduce landfill.

CATALYTIC CONVERTERS:
Three-way catalytic converters in cars use Pt, Rh, Pd catalysts to convert:
- CO → CO₂: 2CO + O₂ → 2CO₂
- NOₓ → N₂: 2NO + 2CO → N₂ + 2CO₂
- Unburned hydrocarbons → CO₂ + H₂O
They require unleaded petrol (lead poisons the catalyst).

ACID RAIN:
Normal rain pH ≈ 5.6 (slightly acid from CO₂ dissolving to form H₂CO₃).
Acid rain pH < 5.6 (often 4.0–4.5) — due to H₂SO₄ and HNO₃.
Effects: aquatic ecosystem damage (kills fish below pH 5), soil acidification (mobilises toxic Al³⁺), erosion of limestone/marble, forest damage, corrosion of metals/structures.
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Water Pollution and Soil Pollution', $CONTENT$
WATER POLLUTION

Sources of water pollution:
1. Industrial effluents: heavy metals (Pb²⁺, Hg²⁺, Cd²⁺), acids, cyanides, solvents
2. Agricultural runoff: fertilisers (NO₃⁻, PO₄³⁻), pesticides, herbicides
3. Sewage: bacteria, organic matter, nutrients
4. Oil spills: crude oil from tanker accidents, offshore drilling
5. Thermal pollution: hot water from power station cooling → reduces dissolved O₂

HEAVY METAL POLLUTION:
Lead (Pb²⁺): From old lead pipes, leaded paint, industrial waste. Causes neurological damage, especially in children. Accumulates in bones.
Mercury (Hg²⁺): From industrial waste, coal combustion. Bioaccumulates as methylmercury in fish. Causes Minamata disease (severe neurological damage). Hg vapour is toxic.
Cadmium (Cd²⁺): From battery disposal, smelting. Accumulates in kidneys; causes Itai-Itai disease (bone pain, fractures).

WATER TREATMENT (see Separation Techniques topic for detail):
- Screening, sedimentation, flocculation (with alum Al₂(SO₄)₃), filtration, chlorination.

OIL SPILLS:
Methods of cleanup:
1. Containment booms: floating barriers to stop oil spreading
2. Skimming: removing oil from surface mechanically
3. Dispersants: chemicals that break oil into fine droplets (controversial — toxic to marine life)
4. Bioremediation: microorganisms that digest oil (slow but environmentally friendly)
5. Burning: controlled burning of oil on water surface (produces air pollution)

EUTROPHICATION: (see Industrial Chemistry section for full detail)
Nutrients (NO₃⁻, PO₄³⁻) → algal bloom → oxygen depletion → aquatic death.

SOIL POLLUTION:
Sources: Pesticides, herbicides, industrial waste, heavy metals, acid rain, oil leaks.
Effects: Kills soil organisms (earthworms, bacteria); prevents plant growth; leaches into groundwater.
Remediation: Bioremediation (microorganisms); phytoremediation (plants extract heavy metals); soil washing; immobilisation with lime.

PLASTIC POLLUTION IN WATER:
Microplastics (fragments <5 mm) in oceans from degraded plastic waste.
Ingested by fish and shellfish → enter human food chain.
Also: plastic entangles and kills marine mammals, seabirds, turtles.

GREEN CHEMISTRY (Sustainable Chemistry):
Principles:
1. Prevent waste rather than treat it.
2. Use atom economy — design reactions where maximum atoms in reactants end up in product.
3. Use less hazardous reagents and solvents.
4. Design for energy efficiency (reactions at room temperature/pressure where possible).
5. Use renewable feedstocks (plant-based rather than petroleum-based).
6. Design chemicals to degrade after use.
7. Avoid unnecessary derivatives (protecting groups, etc.).
8. Use catalysts rather than stoichiometric reagents.

Atom economy = (molecular mass of desired product / sum of molecular masses of all products) × 100%
Higher atom economy = less waste = more sustainable.
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Environmental Calculations', $CONTENT$
WORKED EXAMPLES — ENVIRONMENTAL CHEMISTRY

EXAMPLE 1 — Atom Economy:
Calculate the atom economy for the production of ethanol by fermentation:
C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂

SOLUTION:
Atom economy = (molecular mass of desired product(s) / molecular masses of all products) × 100%

Desired product: ethanol (2C₂H₅OH)
M of 2 mol ethanol = 2 × 46 = 92 g/mol
By-product: CO₂ (2CO₂)
M of 2 mol CO₂ = 2 × 44 = 88 g/mol

Total molecular mass of all products = 92 + 88 = 180 g/mol
(This equals the molecular mass of glucose: 6×12 + 12×1 + 6×16 = 180 g/mol ✓ — atoms conserved)

Atom economy = (92/180) × 100 = 51.1%

This means 51.1% of atoms in the reactant end up in the desired product; 48.9% end up as waste CO₂.

EXAMPLE 2 — Acid Rain Chemistry:
(a) Write equations to show how SO₂ causes acid rain.
(b) A limestone building is being eroded by acid rain. Write the equation.

SOLUTION:
(a) Step 1: SO₂ dissolves in rainwater to form sulphurous acid:
    SO₂(g) + H₂O(l) → H₂SO₃(aq)
    Step 2: SO₂ can be further oxidised to SO₃ in the atmosphere:
    2SO₂ + O₂ → 2SO₃ (catalysed by dust particles and ozone)
    Step 3: SO₃ dissolves to form sulphuric acid:
    SO₃ + H₂O → H₂SO₄
    Both H₂SO₃ and H₂SO₄ are acids → lower the pH of rain below 5.6 → acid rain.

(b) Limestone is CaCO₃:
    CaCO₃(s) + H₂SO₄(aq) → CaSO₄(aq) + H₂O(l) + CO₂(g)
    OR with sulphurous acid: CaCO₃ + H₂SO₃ → CaSO₃ + H₂O + CO₂
    The calcium sulphate formed is slightly soluble and washes away, causing erosion.

EXAMPLE 3 — Greenhouse Gas Calculation:
(a) Why is methane a more potent greenhouse gas than carbon dioxide, even though CO₂ is present in higher concentrations?
(b) Suggest ONE way to reduce atmospheric methane from livestock.

SOLUTION:
(a) Each molecule of methane is approximately 25 times more effective at trapping infrared radiation than one molecule of CO₂ (over a 100-year period). This is because of the molecular structure of CH₄ — it has different vibration modes that absorb different wavelengths of IR radiation. Although CH₄ is present in much lower concentrations, its higher "warming potential" per molecule makes it a significant greenhouse gas.

(b) Ways to reduce methane from livestock:
    - Modify cattle diet: adding seaweed supplements or other feed additives reduces CH₄ production during digestion (enteric fermentation)
    - Selective breeding of cattle with naturally lower methane emissions
    - Improve manure management (capture and burn methane from manure for energy — biogas)
    - Reduce herd sizes through dietary changes in human populations

EXAMPLE 4 — Catalytic Converter:
Explain how a catalytic converter reduces air pollution from car exhausts. Write TWO equations.

SOLUTION:
A catalytic converter contains a honeycomb structure coated with platinum (Pt) and rhodium (Rh) metals.

The catalyst provides a surface where three harmful exhaust gases are converted to harmless ones:

1. CO (poisonous) + O₂ → CO₂ (harmless):
   2CO + O₂ → 2CO₂

2. NO (harmful, causes acid rain) + CO → N₂ (harmless) + CO₂:
   2NO + 2CO → N₂ + 2CO₂

3. Unburned hydrocarbons are also oxidised to CO₂ and H₂O.

Note: Catalytic converters require UNLEADED petrol because lead compounds poison the platinum catalyst, permanently reducing its effectiveness.
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Environmental Chemistry', $CONTENT$
WASSCE PAST QUESTIONS — ENVIRONMENTAL CHEMISTRY

QUESTION 1 (WASSCE 2019, Q2b):
(a) Name THREE greenhouse gases.
(b) State ONE consequence of the enhanced greenhouse effect.

ANSWERS:
(a) Carbon dioxide (CO₂), Methane (CH₄), Nitrous oxide (N₂O), Water vapour (H₂O), Ozone (O₃), CFCs — any THREE.

(b) Consequences of enhanced greenhouse effect (choose any one):
    - Global temperature rise → melting ice caps and glaciers
    - Rising sea levels → flooding of low-lying coastal areas and islands
    - More frequent extreme weather events (flooding, drought, storms)
    - Loss of biodiversity as habitats change
    - Disruption to agricultural patterns and food security

QUESTION 2 (WASSCE 2020, Q3c):
(a) What is ozone depletion? Name the main cause.
(b) State TWO harmful effects of ozone depletion.

ANSWERS:
(a) Ozone depletion refers to the thinning/destruction of the ozone layer (O₃) in the stratosphere, particularly over polar regions. The main cause is the release of chlorofluorocarbons (CFCs) from aerosol sprays, refrigerants, and air conditioners. CFCs rise to the stratosphere and release chlorine radicals (Cl•) which catalytically destroy ozone.

(b) Harmful effects of ozone depletion:
    1. Increased UV-B radiation reaches Earth's surface → higher rates of skin cancer and cataracts in humans.
    2. Damage to marine phytoplankton → disruption of marine food chains.
    3. Increased UV radiation damages plant growth/crop yields.
    4. Weakens immune systems in humans and animals.
    (Any TWO)

QUESTION 3 (WASSCE 2021, Q5b):
State FOUR ways in which the environment is being harmed by human industrial activities.

ANSWER:
1. Burning fossil fuels releases CO₂ → greenhouse effect → global warming and climate change.
2. SO₂ and NOₓ emissions from industry/transport cause acid rain → damages aquatic ecosystems, forests, buildings.
3. Release of CFCs depletes the ozone layer → increased UV radiation.
4. Industrial effluents containing heavy metals (Pb, Hg, Cd) contaminate water bodies → toxic to aquatic life and humans.
5. Fertiliser runoff causes eutrophication → oxygen depletion in water bodies → death of aquatic organisms.
6. Plastic waste pollutes oceans → harm to marine wildlife; microplastic contamination of food chain.
7. Oil spills from tankers and pipelines contaminate marine and coastal environments.
(Any FOUR)

QUESTION 4 (WASSCE 2022, Q3a):
(a) Define acid rain and give its pH range.
(b) State THREE effects of acid rain on the environment.

ANSWERS:
(a) Acid rain is precipitation (rain, snow, fog) with a pH below 5.6 (the natural pH of rain from dissolved CO₂). It is caused by the dissolution of SO₂ and NOₓ in atmospheric water to form H₂SO₃, H₂SO₄, and HNO₃. Typical pH of acid rain is 4.0–4.5.

(b) Effects of acid rain:
    1. Kills fish and aquatic organisms in lakes and rivers by lowering the pH below survival limits (fish die below pH 5.0).
    2. Erodes and dissolves limestone/marble buildings and monuments: CaCO₃ + H₂SO₄ → CaSO₄ + H₂O + CO₂.
    3. Damages and kills trees by leaching essential minerals (Ca²⁺, Mg²⁺) from soil and releasing toxic Al³⁺.
    4. Corrodes metal structures (bridges, railings, cars).
    5. Contaminates drinking water supplies (acidic water leaches heavy metals from pipes).
    (Any THREE)

PRACTICE QUESTIONS:
1. What is the atom economy for: CH₂=CH₂ + Br₂ → CH₂BrCH₂Br ?
2. Name the process by which ozone is formed in the stratosphere.

ANSWERS:
1. Atom economy for addition reaction of Br₂ to ethene:
   M of product (CH₂BrCH₂Br) = 188 g/mol
   M of all products = 188 g/mol (only one product formed)
   Atom economy = (188/188) × 100 = 100%
   Addition reactions always have 100% atom economy because all atoms in reactants end up in the single product.

2. Ozone is formed by: O₂ + UV radiation → 2O (oxygen atoms)
   O + O₂ → O₃ (ozone)
   This is a photochemical process (requires UV light from the sun). The ozone layer is maintained by this continuous formation balancing the natural decomposition of ozone.
$CONTENT$, 'practice', 5);
  END IF;

  -- =============================================
  -- NUCLEAR CHEMISTRY AND RADIOACTIVITY
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Nuclear Chemistry and Radioactivity';
  
  IF (SELECT COUNT(*) FROM topic_sections WHERE topic_id = v_topic_id) = 0 THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Overview: Radioactivity and the Nucleus', $CONTENT$
NUCLEAR CHEMISTRY AND RADIOACTIVITY — WASSCE CHEMISTRY

RADIOACTIVITY: The spontaneous emission of radiation from the nucleus of an unstable atom. This process is NOT affected by temperature, pressure, or chemical state of the element.

Discovered by Henri Becquerel (1896); further studied by Marie and Pierre Curie.

THE THREE TYPES OF RADIATION:

1. ALPHA (α) RADIATION:
Composition: 2 protons + 2 neutrons = helium nucleus (₂⁴He)
Symbol: α or ₂⁴He
Charge: +2
Mass (relative to proton): 4
Speed: ~5% of speed of light (slowest)
Penetrating power: LEAST penetrating — stopped by a sheet of paper, a few cm of air, or skin
Ionising ability: HIGHEST (most ionising — can damage cells if ingested/inhaled)
Effect on parent nucleus: atomic number decreases by 2; mass number decreases by 4.

2. BETA (β⁻) RADIATION:
Composition: High-energy electron emitted from nucleus (a neutron converts to a proton + electron)
Symbol: β or ₋₁⁰e
Charge: −1
Mass: negligible (~1/1836 of proton)
Speed: up to 90% of speed of light
Penetrating power: MEDIUM — stopped by aluminium foil (~3 mm thick) or a few metres of air
Ionising ability: Medium
Effect on parent nucleus: atomic number increases by 1; mass number unchanged (neutron → proton).

3. GAMMA (γ) RADIATION:
Composition: Electromagnetic radiation (photons) — very high frequency/energy
Symbol: γ
Charge: 0 (no charge)
Mass: 0
Speed: speed of light (3 × 10⁸ m/s)
Penetrating power: HIGHEST — requires several cm of lead or metres of concrete to significantly attenuate
Ionising ability: Least ionising per unit path length
Effect on parent nucleus: no change in atomic number or mass number (γ is just energy release accompanying α or β)

COMPARISON TABLE:
Property        Alpha (α)    Beta (β)      Gamma (γ)
Nature          Helium nuclei Electrons    EM radiation
Charge          +2           −1           0
Mass            4            ~0           0
Penetration     Least        Medium       Most
Ionisation      Most         Medium       Least
Stopped by      Paper/skin   Al foil      Lead/concrete

RADIOACTIVE DECAY — NUCLEAR EQUATIONS:
In nuclear equations, both mass number (top) and atomic number (bottom) must balance.

Alpha decay:
₉₂²³⁸U → ₉₀²³⁴Th + ₂⁴He
Check: mass: 238 = 234 + 4 ✓; atomic number: 92 = 90 + 2 ✓

Beta decay:
₆²³C → ₇²³N + ₋₁⁰e
Check: mass: 23 = 23 + 0 ✓; atomic number: 6 = 7 + (−1) ✓

ISOTOPES AND RADIOISOTOPES:
Isotopes: atoms of the same element with different numbers of neutrons.
Example: Carbon-12 (₆¹²C), Carbon-13 (₆¹³C), Carbon-14 (₆¹⁴C)
Radioisotopes: unstable isotopes that undergo radioactive decay.
$CONTENT$, 'overview', 1),

    (v_topic_id, 'Half-Life: Definition and Calculations', $CONTENT$
HALF-LIFE OF RADIOACTIVE ISOTOPES

DEFINITION:
The half-life (t₁/₂) of a radioactive isotope is the time taken for HALF of the radioactive atoms in a sample to decay (i.e., for the activity to drop to half its initial value).

KEY FEATURES OF HALF-LIFE:
1. Half-life is CONSTANT for a given isotope — it does not change with temperature, pressure, or chemical state.
2. Each successive half-life reduces the remaining activity by half.
3. Half-lives can range from fractions of a second to billions of years.

SOME IMPORTANT HALF-LIVES:
Carbon-14 (¹⁴C): 5,730 years — used in radiocarbon dating of organic materials
Iodine-131 (¹³¹I): 8 days — used in cancer treatment (thyroid); short half-life = short-lived exposure
Uranium-238 (²³⁸U): 4.5 billion years — used in geological dating
Radon-222: 3.8 days — naturally occurring; lung cancer risk in buildings
Francium-221: 4.9 minutes — very unstable

HALF-LIFE CALCULATIONS:

The amount of radioactive material remaining after n half-lives:
Remaining amount = Initial amount × (1/2)ⁿ

OR equivalently:
Remaining fraction = (1/2)ⁿ

Where n = number of half-lives elapsed = total time / half-life

ACTIVITY:
Activity is the number of disintegrations (decays) per second.
Unit: Becquerel (Bq) = 1 decay per second.
Also measured in: Curie (Ci) = 3.7 × 10¹⁰ Bq.
Activity is PROPORTIONAL to the number of remaining radioactive atoms.
∴ Activity also halves each half-life.

RADIOACTIVE DECAY CURVE:
A smooth exponential (curved) graph of Activity vs Time.
At t = 0: A = A₀ (initial activity)
At t = t₁/₂: A = A₀/2
At t = 2t₁/₂: A = A₀/4
At t = 3t₁/₂: A = A₀/8
At t = 4t₁/₂: A = A₀/16
... and so on.

The curve NEVER reaches zero (theoretically) — it asymptotically approaches zero.

BACKGROUND RADIATION:
A small amount of radiation is always present in the environment from natural sources:
- Cosmic rays from space
- Naturally occurring radioisotopes in soil/rocks (radon gas, uranium)
- Potassium-40 in food
- Carbon-14 in organic matter
Background radiation must be subtracted from measured activity to get the true activity of a sample.
Average background radiation: ~2.4 mSv per year (varies by location).
$CONTENT$, 'definitions', 2),

    (v_topic_id, 'Nuclear Fission, Fusion, and Applications', $CONTENT$
NUCLEAR FISSION AND FUSION

NUCLEAR FISSION:
The splitting of a heavy nucleus into two smaller (daughter) nuclei with the release of a large amount of energy and neutrons.

Example: ₉₂²³⁵U + ₀¹n → ₃₆⁹²Kr + ₅₆¹⁴¹Ba + 3₀¹n + energy (massive)

Chain reaction: The 3 neutrons produced can each trigger further fission events, producing 9 neutrons, then 27, etc. — exponential increase → nuclear explosion (atomic bomb) if uncontrolled.

Controlled chain reaction (nuclear reactor):
- Control rods (boron or cadmium) absorb excess neutrons to control reaction rate
- Moderator (water, graphite) slows fast neutrons to thermal speeds better at causing fission
- Coolant (water, CO₂) carries heat away to generate steam → drive turbines → electricity

NUCLEAR POWER STATIONS:
Advantages: Low CO₂ emissions (during operation); reliable baseload power; high energy density (1 kg uranium-235 = ~20 million kg coal equivalent).
Disadvantages: Radioactive waste remains hazardous for thousands of years; risk of meltdown accident (Chernobyl 1986, Fukushima 2011); high construction costs; uranium mining and enrichment has environmental impact; nuclear proliferation concerns.

NUCLEAR FUSION:
The combining of two small nuclei into a larger nucleus with release of enormous energy.
This is the process that powers the sun and stars.
Example: ₁²H + ₁³H → ₂⁴He + ₀¹n + energy

Fusion produces MORE energy per unit mass than fission, and uses abundant hydrogen isotopes as fuel (deuterium from seawater). No long-lived radioactive waste.
However: Fusion requires extremely high temperatures (~100 million °C) to overcome electrostatic repulsion between nuclei. Sustained controlled fusion is not yet achieved commercially — still in experimental phase (ITER project).

USES OF RADIOACTIVITY:

MEDICAL USES:
1. Diagnosis (gamma cameras/PET scans): Technetium-99m (γ emitter, t₁/₂ = 6 hours) — injected, travels to target organ; γ detected externally; short half-life minimises exposure.
2. Cancer treatment (radiotherapy): 
   - External beam: cobalt-60 (γ) aimed at tumour
   - Internal: iodine-131 (β emitter) — absorbed by thyroid → treats thyroid cancer
   Radiation destroys cancer cells (though it may also damage healthy cells).
3. Sterilisation of surgical instruments: γ rays kill bacteria without heating.

INDUSTRIAL USES:
1. Thickness gauges: β source above conveyor belt; detector below. If material too thick → less β detected → machine adjusts. (e.g., paper, metal sheets, food packaging)
2. Detecting cracks in pipes/welds: γ rays penetrate metal; detector on far side; cracks show as bright spots (more γ passes through crack)
3. Flow detection: radioactive tracer injected into liquid; detector finds leaks.

SCIENTIFIC USES:
1. Carbon-14 dating (radiocarbon dating): All living organisms contain ¹⁴C in equilibrium with the atmosphere. On death, no new ¹⁴C is absorbed; ¹⁴C decays (t₁/₂ = 5,730 years). Measuring ¹⁴C activity of an organic sample gives its age (effective range: ~50,000 years).
2. Uranium-lead dating: ²³⁸U → ²⁰⁶Pb (t₁/₂ = 4.5 billion years) used to date very old rocks.

AGRICULTURAL USES:
1. Radiation-induced mutations: γ irradiation of seeds produces mutants; useful variants selected for crop improvement.
2. Sterile insect technique (SIT): male pests are irradiated (sterilised) and released to mate with wild females → no offspring → pest population reduces.
3. Food irradiation: γ rays kill bacteria, insects, and mould in food → extends shelf life (e.g., spices, strawberries).

RADIATION HAZARDS AND SAFETY:
Biological effects: Ionising radiation damages DNA → mutations, cancer, radiation sickness.
Dose unit: Sievert (Sv) or millisievert (mSv).
Safety measures:
- Time: minimise exposure time
- Distance: radiation follows inverse square law — double the distance → 1/4 the intensity
- Shielding: lead (γ), aluminium (β), paper (α)
- Lead aprons, dosimeters, remote handling tools
- Proper waste disposal (sealed containers, deep geological storage)
$CONTENT$, 'explanation', 3),

    (v_topic_id, 'Worked Examples: Nuclear Chemistry Calculations', $CONTENT$
WORKED EXAMPLES — NUCLEAR CHEMISTRY AND RADIOACTIVITY

EXAMPLE 1 — Nuclear Equations:
Complete the following nuclear equations and identify X:
(a) ₉₂²³⁸U → ₉₀²³⁴Th + X
(b) ₁₁²⁴Na → ₁₂²⁴Mg + X

SOLUTION:
(a) In alpha decay: mass number decreases by 4, atomic number decreases by 2.
    Mass number of X: 238 − 234 = 4
    Atomic number of X: 92 − 90 = 2
    X = ₂⁴He (alpha particle)
    So: ₉₂²³⁸U → ₉₀²³⁴Th + ₂⁴He ✓

(b) In beta decay: mass number unchanged, atomic number increases by 1.
    Mass number of X: 24 − 24 = 0
    Atomic number of X: 11 − 12 = −1
    X = ₋₁⁰e (beta particle / electron)
    So: ₁₁²⁴Na → ₁₂²⁴Mg + ₋₁⁰e ✓ (Na-24 undergoes beta decay to become Mg-24)

EXAMPLE 2 — Half-Life Calculation (type 1 — whole number of half-lives):
The half-life of iodine-131 is 8 days.
(a) What fraction remains after 40 days?
(b) If initial activity is 6400 Bq, what is the activity after 40 days?

SOLUTION:
(a) Number of half-lives = 40/8 = 5 half-lives
    Fraction remaining = (1/2)⁵ = 1/32

(b) Activity after 40 days = 6400 × (1/32) = 200 Bq

EXAMPLE 3 — Half-Life Calculation (type 2 — finding half-life):
The activity of a radioisotope drops from 800 Bq to 100 Bq in 36 hours.
What is the half-life?

SOLUTION:
Activity ratio: 100/800 = 1/8 = (1/2)³
∴ 3 half-lives elapsed in 36 hours
Half-life = 36/3 = 12 hours

EXAMPLE 4 — Half-Life Calculation (type 3 — finding time elapsed):
Strontium-90 has a half-life of 28.8 years.
How long will it take for a 100 g sample to decay to 6.25 g?

SOLUTION:
100 → 50 → 25 → 12.5 → 6.25 g
That is 4 half-lives.
Time = 4 × 28.8 = 115.2 years

EXAMPLE 5 — Carbon Dating:
A sample of ancient wood has an activity that is 25% of that of freshly cut wood.
t₁/₂ of ¹⁴C = 5,730 years.
How old is the sample?

SOLUTION:
Fraction of activity remaining = 25% = 1/4 = (1/2)²
∴ 2 half-lives have elapsed.
Age = 2 × 5,730 = 11,460 years

EXAMPLE 6 — Radiation Safety:
A hospital uses iodine-131 (t₁/₂ = 8 days) to treat thyroid cancer.
Why is iodine-131 (rather than iodine-129 with t₁/₂ = 16 million years) chosen for this purpose?

SOLUTION:
Iodine-131 is chosen because:
1. SHORT HALF-LIFE (8 days): The radioactivity rapidly decreases → patient is exposed to radiation for only a limited time → reduces long-term radiation dose and damage to healthy tissue.
2. Within a few months (5-6 half-lives), the activity drops to negligible levels (<1/30th of initial) → safe.
3. Iodine is naturally concentrated in the thyroid gland → targeted delivery of radiation to the tumour.

Iodine-129 (t₁/₂ = 16 million years) would be DANGEROUS: it would remain highly active for millions of years → continuous radiation → severe long-term tissue damage and massively increased cancer risk.
$CONTENT$, 'examples', 4),

    (v_topic_id, 'WASSCE Past Questions: Nuclear Chemistry', $CONTENT$
WASSCE PAST QUESTIONS — NUCLEAR CHEMISTRY AND RADIOACTIVITY

QUESTION 1 (WASSCE 2020, Q5c):
(a) Distinguish between alpha, beta, and gamma radiations in terms of penetrating power and charge.
(b) Which radiation would you use for: (i) medical tracers (ii) cancer treatment by external beam?

ANSWERS:
(a) 
Alpha radiation: LEAST penetrating (stopped by paper or skin). Charge: +2 (helium nucleus).
Beta radiation: MEDIUM penetrating (stopped by a few mm of aluminium). Charge: −1 (electron).
Gamma radiation: MOST penetrating (requires lead/concrete to significantly reduce). Charge: 0 (electromagnetic radiation, no charge).

(b) (i) Medical tracers: Gamma (γ) emitters (e.g., Tc-99m). Gamma can penetrate through the body and be detected externally by a gamma camera. Alpha and beta radiation cannot penetrate tissues to be detected outside.
    (ii) Cancer treatment by external beam: Gamma (γ) radiation — it penetrates deep into the body to reach internal tumours.

QUESTION 2 (WASSCE 2019, Q4b):
The half-life of phosphorus-32 is 14 days.
(a) Define half-life.
(b) What fraction of a sample remains after 42 days?
(c) If the initial mass is 80 g, what mass remains after 56 days?

ANSWERS:
(a) Half-life: The time taken for half the radioactive atoms in a sample to decay, or equivalently, the time for the activity of a sample to fall to half its initial value.

(b) 42 days / 14 days = 3 half-lives
    Fraction remaining = (1/2)³ = 1/8

(c) 56 days / 14 days = 4 half-lives
    Mass remaining = 80 × (1/2)⁴ = 80 × 1/16 = 5 g

QUESTION 3 (WASSCE 2021, Q3c):
Complete the nuclear equation and state the type of decay:
₈₃²¹⁰Bi → ₈₄²¹⁰Po + X

ANSWER:
Atomic number: 83 = 84 + Z(X) → Z(X) = 83 − 84 = −1
Mass number: 210 = 210 + A(X) → A(X) = 0

X = ₋₁⁰e (beta particle / electron)
Type of decay: Beta (β⁻) decay.

QUESTION 4 (WASSCE 2022, Q2b):
State THREE uses of radioactive isotopes, giving a specific example for each.

ANSWER:
1. Medical diagnosis: Technetium-99m (γ emitter, t₁/₂ = 6 h) is injected into patients; gamma camera images the distribution of the tracer in organs (e.g., detecting bone cancer, heart disease).

2. Cancer treatment (radiotherapy): Iodine-131 (β and γ emitter) is used to treat thyroid cancer — it concentrates in the thyroid gland and destroys cancerous cells with its radiation.

3. Radiocarbon dating: Carbon-14 (t₁/₂ = 5,730 years) is used to determine the age of organic materials (e.g., bones, wood, cloth) up to ~50,000 years old by measuring the remaining ¹⁴C activity.

4. Industrial thickness gauges: Strontium-90 (β emitter) is used to measure the thickness of materials on production lines — the amount of β radiation passing through indicates the thickness.

(Any THREE with specific examples)

PRACTICE QUESTIONS:
1. What is the difference between nuclear fission and nuclear fusion?
2. State the atomic number and mass number of the nuclide produced when ₉₀²²⁸Th emits an alpha particle.

ANSWERS:
1. Nuclear fission: A heavy nucleus (e.g., ²³⁵U) splits into two smaller nuclei when struck by a neutron, releasing energy and more neutrons. Used in nuclear reactors and atomic bombs.
   Nuclear fusion: Two light nuclei (e.g., ²H + ³H) combine to form a heavier nucleus, releasing enormous energy. This is the energy source of the sun and stars. Not yet controlled commercially.
   Key difference: Fission = splitting heavy nuclei; Fusion = combining light nuclei. Both release nuclear energy, but fusion releases more energy per unit mass.

2. Alpha decay of ₉₀²²⁸Th:
   ₉₀²²⁸Th → ₈₈²²⁴Ra + ₂⁴He
   New nuclide: Atomic number = 90 − 2 = 88; Mass number = 228 − 4 = 224
   This is Radium-224 (²²⁴Ra).
$CONTENT$, 'practice', 5);
  END IF;

END $$;
