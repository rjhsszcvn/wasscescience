/*
  # Core Science Comprehensive WASSCE Notes - Topics 6 to 10

  Adds deep, exam-focused notes for:
  6. Acids, Bases and Salts
  7. Solutions, Mixtures and Separation Techniques
  8. Cells - Structure and Function
  9. Nutrition and Food
  10. Reproduction in Living Organisms
*/

DO $$
DECLARE
  t6 uuid := '7f4fae64-313d-4433-99ba-23b96997d23f';
  t7 uuid := '4e48da8d-2f3d-4e35-8583-076afda1df65';
  t8 uuid := 'decd54ed-3c50-4507-868d-db07c01e6f6b';
  t9 uuid := 'ed9680dc-c7a8-4f21-8004-916293b2d096';
  t10 uuid := '5163059b-49f7-40a8-a190-76cc148ab2e4';
BEGIN

-- ============================================================
-- TOPIC 6: Acids, Bases and Salts
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t6;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t6, 'Properties of Acids and Bases', '<h2>Acids, Bases and Salts</h2>

<h3>Definitions of Acids</h3>
<ul>
<li><strong>Arrhenius definition:</strong> An acid produces H+ (hydrogen ions) in water; a base produces OH- (hydroxide ions) in water.</li>
<li><strong>Bronsted-Lowry definition:</strong> An acid is a proton (H+) donor; a base is a proton acceptor.</li>
</ul>

<h3>Properties of Acids</h3>
<ul>
<li>Taste sour (citric acid in lemons, acetic acid in vinegar)</li>
<li>Turn blue litmus <strong>red</strong></li>
<li>Have pH less than 7</li>
<li>React with metals to produce hydrogen gas: Metal + Acid -> Salt + H2</li>
<li>React with metal carbonates to produce CO2: Metal carbonate + Acid -> Salt + H2O + CO2</li>
<li>React with metal oxides to produce salt and water</li>
<li>React with bases in neutralization reactions</li>
<li>Conduct electricity (electrolytes - dissociate in water)</li>
</ul>

<h3>Common Acids</h3>
<table border="1">
<tr><th>Acid</th><th>Formula</th><th>Type</th><th>Uses</th></tr>
<tr><td>Hydrochloric acid</td><td>HCl</td><td>Strong, mineral</td><td>Cleaning metals, digestion (stomach acid)</td></tr>
<tr><td>Sulfuric acid</td><td>H2SO4</td><td>Strong, mineral</td><td>Car batteries, fertilizers, industrial processes</td></tr>
<tr><td>Nitric acid</td><td>HNO3</td><td>Strong, mineral</td><td>Fertilizers, explosives</td></tr>
<tr><td>Phosphoric acid</td><td>H3PO4</td><td>Weak, mineral</td><td>Fertilizers, food additive</td></tr>
<tr><td>Ethanoic (acetic) acid</td><td>CH3COOH</td><td>Weak, organic</td><td>Vinegar, preservatives</td></tr>
<tr><td>Citric acid</td><td>C6H8O7</td><td>Weak, organic</td><td>Citrus fruits, food preservative</td></tr>
<tr><td>Carbonic acid</td><td>H2CO3</td><td>Weak</td><td>Carbonated drinks</td></tr>
</table>

<h3>Strong vs. Weak Acids</h3>
<ul>
<li><strong>Strong acids:</strong> Completely dissociate in water (HCl, H2SO4, HNO3). Lower pH.</li>
<li><strong>Weak acids:</strong> Partially dissociate in water (CH3COOH, H2CO3, citric acid). Higher pH for same concentration.</li>
</ul>

<h3>Properties of Bases</h3>
<ul>
<li>Taste bitter</li>
<li>Feel soapy/slippery</li>
<li>Turn red litmus <strong>blue</strong></li>
<li>Have pH greater than 7</li>
<li>React with acids in neutralization reactions</li>
<li>React with ammonium salts to produce ammonia gas</li>
<li>Metal oxides and hydroxides are bases</li>
</ul>

<h3>Alkalis</h3>
<p>Bases that are soluble in water. All alkalis are bases, but not all bases are alkalis.</p>
<table border="1">
<tr><th>Alkali</th><th>Formula</th></tr>
<tr><td>Sodium hydroxide (caustic soda)</td><td>NaOH</td></tr>
<tr><td>Potassium hydroxide</td><td>KOH</td></tr>
<tr><td>Calcium hydroxide (slaked lime)</td><td>Ca(OH)2</td></tr>
<tr><td>Aqueous ammonia</td><td>NH3(aq)</td></tr>
<tr><td>Barium hydroxide</td><td>Ba(OH)2</td></tr>
</table>

<h3>Indicators</h3>
<table border="1">
<tr><th>Indicator</th><th>In Acid</th><th>Neutral</th><th>In Base</th></tr>
<tr><td>Litmus</td><td>Red</td><td>Purple</td><td>Blue</td></tr>
<tr><td>Phenolphthalein</td><td>Colourless</td><td>Colourless</td><td>Pink/Red</td></tr>
<tr><td>Methyl orange</td><td>Red/Orange</td><td>Orange</td><td>Yellow</td></tr>
<tr><td>Universal indicator</td><td>Red-Orange</td><td>Green</td><td>Blue-Violet</td></tr>
</table>

<h3>The pH Scale</h3>
<ul>
<li>pH = 0: Strongest acid</li>
<li>pH = 7: Neutral</li>
<li>pH = 14: Strongest alkali</li>
<li>Each unit represents a 10-fold change in H+ concentration</li>
<li>pH less than 7: Acidic</li>
<li>pH greater than 7: Alkaline/Basic</li>
</ul>', 1),

(t6, 'Reactions of Acids and Preparation of Salts', '<h2>Reactions of Acids and Preparation of Salts</h2>

<h3>Neutralization</h3>
<p>Acid + Base -> Salt + Water</p>
<p>The H+ from the acid reacts with the OH- from the base: H+ + OH- -> H2O</p>
<p>Examples:</p>
<ul>
<li>HCl + NaOH -> NaCl + H2O</li>
<li>H2SO4 + 2KOH -> K2SO4 + 2H2O</li>
<li>2HNO3 + Ca(OH)2 -> Ca(NO3)2 + 2H2O</li>
</ul>

<h3>Acid Reactions Summary</h3>
<table border="1">
<tr><th>Acid reacts with</th><th>Products</th><th>Example</th></tr>
<tr><td>Metal (active)</td><td>Salt + Hydrogen gas</td><td>Zn + H2SO4 -> ZnSO4 + H2</td></tr>
<tr><td>Metal oxide</td><td>Salt + Water</td><td>CuO + H2SO4 -> CuSO4 + H2O</td></tr>
<tr><td>Metal hydroxide</td><td>Salt + Water</td><td>NaOH + HCl -> NaCl + H2O</td></tr>
<tr><td>Metal carbonate</td><td>Salt + Water + CO2</td><td>CaCO3 + 2HCl -> CaCl2 + H2O + CO2</td></tr>
<tr><td>Metal hydrogencarbonate</td><td>Salt + Water + CO2</td><td>NaHCO3 + HCl -> NaCl + H2O + CO2</td></tr>
</table>

<h3>Naming Salts</h3>
<p>Salt name = Metal ion name + Acid anion name</p>
<table border="1">
<tr><th>Acid</th><th>Salt suffix</th><th>Example</th></tr>
<tr><td>Hydrochloric acid (HCl)</td><td>-chloride</td><td>NaCl - sodium chloride</td></tr>
<tr><td>Sulfuric acid (H2SO4)</td><td>-sulfate</td><td>CuSO4 - copper(II) sulfate</td></tr>
<tr><td>Nitric acid (HNO3)</td><td>-nitrate</td><td>KNO3 - potassium nitrate</td></tr>
<tr><td>Phosphoric acid (H3PO4)</td><td>-phosphate</td><td>Ca3(PO4)2 - calcium phosphate</td></tr>
<tr><td>Carbonic acid (H2CO3)</td><td>-carbonate</td><td>Na2CO3 - sodium carbonate</td></tr>
</table>

<h3>Methods of Preparing Salts</h3>

<h4>1. Precipitation</h4>
<p>Used for insoluble salts. Mix two soluble salt solutions.</p>
<p>AgNO3(aq) + NaCl(aq) -> AgCl(s) + NaNO3(aq)</p>

<h4>2. Neutralization Titration</h4>
<p>Used for soluble salts from soluble bases (alkalis).</p>
<p>Acid + Alkali -> Salt + Water</p>

<h4>3. Acid with Excess Insoluble Metal Oxide/Carbonate</h4>
<p>Used for soluble salts of insoluble bases.</p>
<p>Add excess solid to acid; filter to remove excess solid; evaporate to crystallize.</p>

<h4>4. Direct Combination</h4>
<p>Metal + non-metal directly: 2Na + Cl2 -> 2NaCl</p>

<h3>Solubility Rules</h3>
<table border="1">
<tr><th>Ion</th><th>Solubility</th><th>Exceptions</th></tr>
<tr><td>Nitrates (NO3-)</td><td>All soluble</td><td>None</td></tr>
<tr><td>Chlorides (Cl-)</td><td>Most soluble</td><td>AgCl, PbCl2, Hg2Cl2 insoluble</td></tr>
<tr><td>Sulfates (SO4 2-)</td><td>Most soluble</td><td>BaSO4, PbSO4, CaSO4 insoluble</td></tr>
<tr><td>Carbonates (CO3 2-)</td><td>Most insoluble</td><td>Na2CO3, K2CO3, (NH4)2CO3 soluble</td></tr>
<tr><td>Hydroxides (OH-)</td><td>Most insoluble</td><td>NaOH, KOH, Ba(OH)2 soluble</td></tr>
<tr><td>Group 1 ions, NH4+</td><td>All soluble</td><td>None</td></tr>
</table>

<h3>Tests for Common Anions</h3>
<table border="1">
<tr><th>Anion</th><th>Test</th><th>Positive Result</th></tr>
<tr><td>Chloride (Cl-)</td><td>Add AgNO3 in HNO3</td><td>White precipitate (AgCl)</td></tr>
<tr><td>Bromide (Br-)</td><td>Add AgNO3 in HNO3</td><td>Cream precipitate (AgBr)</td></tr>
<tr><td>Iodide (I-)</td><td>Add AgNO3 in HNO3</td><td>Yellow precipitate (AgI)</td></tr>
<tr><td>Sulfate (SO4 2-)</td><td>Add BaCl2 in HCl</td><td>White precipitate (BaSO4)</td></tr>
<tr><td>Carbonate (CO3 2-)</td><td>Add dilute HCl</td><td>Effervescence, CO2 turns limewater milky</td></tr>
<tr><td>Nitrate (NO3-)</td><td>Brown ring test with FeSO4 and conc H2SO4</td><td>Brown ring at interface</td></tr>
</table>', 2);

-- ============================================================
-- TOPIC 7: Solutions, Mixtures and Separation Techniques
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t7;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t7, 'Solutions and Concentrations', '<h2>Solutions and Concentrations</h2>

<h3>Types of Mixtures</h3>
<table border="1">
<tr><th>Type</th><th>Particle Size</th><th>Example</th><th>Characteristics</th></tr>
<tr><td>Solution</td><td>Less than 1 nm</td><td>Salt water, air</td><td>Clear, does not settle, no Tyndall effect</td></tr>
<tr><td>Colloid</td><td>1 to 100 nm</td><td>Milk, fog, blood</td><td>Cloudy/translucent, does not settle, shows Tyndall effect</td></tr>
<tr><td>Suspension</td><td>More than 100 nm</td><td>Muddy water, chalk in water</td><td>Cloudy, settles on standing</td></tr>
</table>

<h3>Concentration</h3>
<p>How much solute is dissolved in a given volume of solution.</p>

<h4>Mass per Volume Concentration</h4>
<p>Concentration (g/dm3) = Mass of solute (g) divided by Volume of solution (dm3)</p>

<h4>Molar Concentration</h4>
<p>Concentration (mol/dm3) = Moles of solute (mol) divided by Volume of solution (dm3)</p>
<p>1 dm3 = 1 litre = 1000 cm3</p>

<h4>Parts per million (ppm)</h4>
<p>1 ppm = 1 mg of solute per kg of solution (for dilute aqueous solutions approx. 1 mg/L)</p>
<p>Used for very dilute solutions such as pollutants in water</p>

<h3>Worked Example</h3>
<p>What is the concentration of a solution made by dissolving 5.85 g of NaCl in 250 cm3 of water?</p>
<p>Molar mass NaCl = 23 + 35.5 = 58.5 g/mol</p>
<p>Moles of NaCl = 5.85 divided by 58.5 = 0.1 mol</p>
<p>Volume = 250 cm3 = 0.25 dm3</p>
<p>Concentration = 0.1 divided by 0.25 = <strong>0.4 mol/dm3</strong></p>

<h3>Solubility Curves</h3>
<p>A solubility curve shows how the solubility of a substance changes with temperature.</p>
<ul>
<li>Most solids: solubility increases with temperature</li>
<li>Gases: solubility decreases with temperature (CO2 escapes from warm drinks)</li>
<li>A few salts (e.g., NaCl) show little change with temperature</li>
</ul>

<h3>Calculating Crystallization from Cooling</h3>
<p>If a saturated solution is cooled, excess solute crystallizes out.</p>
<p>Mass of crystals = (Solubility at higher temp minus Solubility at lower temp) multiplied by mass of water used divided by 100</p>', 1),

(t7, 'Separation Techniques in Detail', '<h2>Separation Techniques in Detail</h2>

<h3>1. Filtration</h3>
<p><strong>Principle:</strong> Separates insoluble solid from liquid based on particle size.</p>
<p><strong>Setup:</strong> Filter paper in funnel, placed over conical flask. Pour mixture through filter paper.</p>
<p><strong>Result:</strong> Filtrate (liquid) passes through; residue (solid) stays on filter paper.</p>
<p><strong>Examples:</strong> Sand from water; chalk from water</p>

<h3>2. Evaporation</h3>
<p><strong>Principle:</strong> Heat solution so liquid evaporates, leaving solid behind.</p>
<p><strong>Best for:</strong> Recovering a dissolved solid that is heat-stable.</p>
<p><strong>Limitation:</strong> Cannot separate a mixture of soluble salts; decomposes thermally unstable salts.</p>

<h3>3. Crystallization</h3>
<p><strong>Principle:</strong> Dissolve solid in hot solvent; cool slowly; crystals form.</p>
<p><strong>Used for:</strong> Purifying soluble solids; separating salts with different solubilities at different temperatures.</p>
<p><strong>Steps:</strong></p>
<ol>
<li>Dissolve substance in minimum hot solvent</li>
<li>Filter off insoluble impurities</li>
<li>Cool filtrate slowly</li>
<li>Filter off crystals</li>
<li>Wash crystals with cold solvent; dry</li>
</ol>

<h3>4. Simple Distillation</h3>
<p><strong>Principle:</strong> Separates substances based on different boiling points. The lower boiling point substance evaporates, passes through condenser (cooled), and is collected as distillate.</p>
<p><strong>Used for:</strong> Obtaining pure solvent from a solution (e.g., pure water from salt water); separating liquids with boiling points differing by more than 25 degrees Celsius.</p>
<p><strong>Key equipment:</strong> Round-bottom flask, Liebig condenser, thermometer, collection flask.</p>

<h3>5. Fractional Distillation</h3>
<p><strong>Principle:</strong> For separating mixtures of miscible liquids with similar (but different) boiling points. Uses a fractionating column to achieve better separation.</p>
<p><strong>Examples:</strong></p>
<ul>
<li>Separation of liquid air (O2 bp -183 degrees C, N2 bp -196 degrees C)</li>
<li>Refining of crude oil (petroleum) into fractions: LPG, petrol, kerosene, diesel, fuel oil, lubricants, bitumen</li>
<li>Ethanol-water separation (ethanol bp 78 degrees C, water bp 100 degrees C)</li>
</ul>

<h3>Crude Oil Fractions</h3>
<table border="1">
<tr><th>Fraction</th><th>Boiling Range (C)</th><th>Uses</th></tr>
<tr><td>Refinery gas (LPG)</td><td>Less than 25</td><td>Fuel for cooking and heating</td></tr>
<tr><td>Petrol (gasoline)</td><td>25 to 75</td><td>Fuel for cars</td></tr>
<tr><td>Naphtha</td><td>75 to 150</td><td>Making chemicals, solvents</td></tr>
<tr><td>Kerosene (paraffin)</td><td>150 to 240</td><td>Jet fuel, cooking fuel</td></tr>
<tr><td>Diesel (gas oil)</td><td>220 to 300</td><td>Diesel engines, heating</td></tr>
<tr><td>Fuel oil</td><td>300 to 370</td><td>Ships, power stations</td></tr>
<tr><td>Lubricating oil</td><td>350 to 500</td><td>Lubricants, waxes</td></tr>
<tr><td>Bitumen (residue)</td><td>More than 500</td><td>Road surfacing, roofing</td></tr>
</table>

<h3>6. Chromatography</h3>
<p><strong>Principle:</strong> Different substances travel different distances through a stationary phase when carried by a mobile phase, depending on their solubility and affinity for each phase.</p>

<h4>Paper Chromatography</h4>
<ul>
<li>Stationary phase: wet chromatography paper</li>
<li>Mobile phase: solvent</li>
<li>Rf = Distance moved by spot divided by Distance moved by solvent</li>
<li>Rf value is always between 0 and 1</li>
</ul>

<h4>Thin Layer Chromatography (TLC)</h4>
<ul>
<li>Stationary phase: silica or alumina on glass/plastic plate</li>
<li>More reproducible than paper chromatography</li>
</ul>

<h4>Column Chromatography</h4>
<ul>
<li>Stationary phase: packed column of absorbent material</li>
<li>Mobile phase: solvent flows through column</li>
<li>Used for preparative separation (obtaining larger quantities)</li>
</ul>

<h3>7. Centrifugation</h3>
<p>Spinning a suspension at high speed forces heavier particles to the bottom.</p>
<p><strong>Used for:</strong> Separating blood cells from plasma; separating cream from milk; separating fine clay from water.</p>

<h3>8. Magnetic Separation</h3>
<p>A magnet is passed through the mixture to attract magnetic materials.</p>
<p><strong>Used for:</strong> Separating iron filings from sand; industrial separation of magnetic ores.</p>', 2);

-- ============================================================
-- TOPIC 8: Cells - Structure and Function
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t8;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t8, 'Cell Theory and Cell Structure', '<h2>Cell Theory and Cell Structure</h2>

<h3>Cell Theory</h3>
<p>The cell theory is the fundamental theory in biology. It states:</p>
<ol>
<li>All living organisms are made of one or more cells</li>
<li>The cell is the basic unit of structure and function in all living organisms</li>
<li>All cells arise from pre-existing cells (biogenesis)</li>
</ol>

<h3>Types of Cells</h3>
<table border="1">
<tr><th>Feature</th><th>Prokaryotic Cell</th><th>Eukaryotic Cell</th></tr>
<tr><td>Nucleus</td><td>Absent (no nuclear membrane)</td><td>Present (membrane-bound)</td></tr>
<tr><td>DNA</td><td>Circular, in cytoplasm</td><td>Linear, in nucleus</td></tr>
<tr><td>Size</td><td>Smaller (1 to 10 micrometres)</td><td>Larger (10 to 100 micrometres)</td></tr>
<tr><td>Membrane-bound organelles</td><td>Absent</td><td>Present</td></tr>
<tr><td>Ribosomes</td><td>Present (70S)</td><td>Present (80S)</td></tr>
<tr><td>Examples</td><td>Bacteria, Archaea</td><td>Plants, animals, fungi, protists</td></tr>
</table>

<h3>Animal Cell Organelles and Functions</h3>
<table border="1">
<tr><th>Organelle</th><th>Structure</th><th>Function</th></tr>
<tr><td>Cell (plasma) membrane</td><td>Phospholipid bilayer with proteins</td><td>Controls entry/exit of substances; cell boundary</td></tr>
<tr><td>Nucleus</td><td>Surrounded by nuclear envelope; contains chromosomes</td><td>Controls cell activities; contains genetic information (DNA)</td></tr>
<tr><td>Cytoplasm</td><td>Gel-like fluid filling the cell</td><td>Medium for chemical reactions; contains organelles</td></tr>
<tr><td>Mitochondria</td><td>Double membrane; inner folded (cristae)</td><td>Site of aerobic respiration; produces ATP (energy)</td></tr>
<tr><td>Ribosomes</td><td>Small granules; attached to ER or free in cytoplasm</td><td>Site of protein synthesis</td></tr>
<tr><td>Endoplasmic reticulum (ER)</td><td>Network of membranes</td><td>Rough ER: protein processing/transport; Smooth ER: lipid synthesis</td></tr>
<tr><td>Golgi apparatus</td><td>Stack of flattened membrane sacs</td><td>Modifies, packages and secretes proteins and lipids</td></tr>
<tr><td>Lysosomes</td><td>Membrane-bound sacs with enzymes</td><td>Digestion of foreign material and old organelles</td></tr>
<tr><td>Vacuoles</td><td>Membrane-bound fluid-filled sacs</td><td>Storage; small in animal cells</td></tr>
<tr><td>Centrioles</td><td>Pair of cylindrical structures</td><td>Cell division - form spindle fibres</td></tr>
</table>

<h3>Additional Structures in Plant Cells</h3>
<table border="1">
<tr><th>Structure</th><th>Function</th></tr>
<tr><td>Cell wall (cellulose)</td><td>Gives shape; provides support and protection; fully permeable</td></tr>
<tr><td>Large central vacuole</td><td>Stores water, sugars, salts; maintains cell turgor</td></tr>
<tr><td>Chloroplasts</td><td>Site of photosynthesis; contains chlorophyll</td></tr>
<tr><td>Plasmodesmata</td><td>Channels through cell walls connecting adjacent cells</td></tr>
</table>

<h3>Plant Cell vs. Animal Cell Comparison</h3>
<table border="1">
<tr><th>Feature</th><th>Plant Cell</th><th>Animal Cell</th></tr>
<tr><td>Cell wall</td><td>Present (cellulose)</td><td>Absent</td></tr>
<tr><td>Chloroplasts</td><td>Present (in green parts)</td><td>Absent</td></tr>
<tr><td>Vacuole</td><td>Large, central, permanent</td><td>Small, temporary</td></tr>
<tr><td>Shape</td><td>Regular, fixed</td><td>Irregular, flexible</td></tr>
<tr><td>Centrioles</td><td>Absent in higher plants</td><td>Present</td></tr>
<tr><td>Starch grains</td><td>Present</td><td>Absent (glycogen stored)</td></tr>
</table>', 1),

(t8, 'Cell Processes: Transport and Division', '<h2>Cell Processes: Transport and Division</h2>

<h3>Movement of Substances Across Cell Membranes</h3>

<h4>Diffusion</h4>
<p>Movement of molecules from high to low concentration (down the concentration gradient). No energy required (passive process).</p>
<ul>
<li>Examples: O2 moves into cells; CO2 moves out of cells; digested food absorbed in small intestine</li>
<li>Rate increased by: larger concentration gradient, higher temperature, larger surface area, thinner membrane, smaller molecules</li>
</ul>

<h4>Osmosis</h4>
<p>The movement of <strong>water molecules</strong> from a region of higher water potential (dilute solution) to lower water potential (concentrated solution) through a selectively permeable membrane.</p>
<ul>
<li>Water potential: pure water has highest water potential; solutions have lower water potential</li>
<li>Water moves from less concentrated solution to more concentrated solution</li>
</ul>

<h4>Effects of Osmosis on Cells</h4>
<table border="1">
<tr><th>Solution Type</th><th>Animal Cell</th><th>Plant Cell</th></tr>
<tr><td>Hypotonic (dilute - lower solute conc than cell)</td><td>Water enters; cell swells and may burst (lysis)</td><td>Water enters; cell becomes turgid (rigid); cannot burst due to cell wall</td></tr>
<tr><td>Isotonic (same solute conc as cell)</td><td>No net movement; cell normal</td><td>No net movement; cell normal (flaccid)</td></tr>
<tr><td>Hypertonic (concentrated - higher solute conc than cell)</td><td>Water leaves; cell shrinks (crenation)</td><td>Water leaves; cell becomes plasmolyzed (cell membrane pulls away from cell wall)</td></tr>
</table>

<h4>Active Transport</h4>
<p>Movement of substances from low to high concentration (against the concentration gradient). <strong>Requires energy (ATP)</strong> and specific carrier proteins.</p>
<ul>
<li>Examples: Absorption of glucose in the intestine; uptake of mineral ions by plant roots; nerve impulse transmission</li>
<li>Affected by temperature and oxygen availability (energy-dependent)</li>
</ul>

<h3>Cell Division</h3>

<h4>Mitosis</h4>
<p>Division resulting in two genetically identical daughter cells. Used for growth, repair, and asexual reproduction.</p>
<p>Each daughter cell has the same number of chromosomes as the parent cell (diploid: 2n).</p>
<p><strong>Stages: PMAT</strong></p>
<ul>
<li><strong>Prophase:</strong> Chromosomes condense; spindle forms; nuclear envelope breaks down</li>
<li><strong>Metaphase:</strong> Chromosomes align at cell equator (metaphase plate)</li>
<li><strong>Anaphase:</strong> Sister chromatids separated; pulled to opposite poles</li>
<li><strong>Telophase:</strong> Nuclear envelopes reform; cytoplasm divides (cytokinesis)</li>
</ul>

<h4>Meiosis</h4>
<p>Division resulting in four genetically different daughter cells with half the chromosome number (haploid: n). Used in sexual reproduction (produces gametes such as sperm, eggs, pollen).</p>
<p><strong>Key differences from mitosis:</strong></p>
<ul>
<li>Two rounds of division (Meiosis I and Meiosis II)</li>
<li>Crossing over (genetic recombination) occurs in Prophase I</li>
<li>Results in 4 haploid cells (not 2 diploid)</li>
<li>Genetically unique cells</li>
</ul>

<h3>Levels of Organization in Organisms</h3>
<p>Cell - Tissue - Organ - Organ System - Organism</p>
<ul>
<li><strong>Tissue:</strong> Group of similar cells performing the same function (e.g., muscle tissue, xylem)</li>
<li><strong>Organ:</strong> Group of tissues working together (e.g., heart, leaf)</li>
<li><strong>Organ system:</strong> Group of organs working together (e.g., circulatory system, digestive system)</li>
</ul>', 2);

-- ============================================================
-- TOPIC 9: Nutrition and Food
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t9;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t9, 'Food Nutrients and Their Functions', '<h2>Nutrition and Food</h2>

<h3>Classes of Nutrients</h3>
<p>A balanced diet contains all six classes of nutrients in appropriate proportions: carbohydrates, proteins, fats, vitamins, minerals, and water.</p>

<h4>1. Carbohydrates</h4>
<ul>
<li><strong>Elements:</strong> Carbon, Hydrogen, Oxygen (CHO)</li>
<li><strong>Function:</strong> Primary energy source; structural (cellulose in plants)</li>
<li><strong>Types:</strong>
  <ul>
    <li>Monosaccharides (simple sugars): Glucose, Fructose, Galactose</li>
    <li>Disaccharides: Sucrose (glucose + fructose), Lactose (glucose + galactose), Maltose (glucose + glucose)</li>
    <li>Polysaccharides: Starch (energy storage in plants), Glycogen (energy storage in animals), Cellulose (plant cell walls)</li>
  </ul>
</li>
<li><strong>Sources:</strong> Rice, bread, yam, plantain, cassava, sugar</li>
<li><strong>Test:</strong> Iodine solution - blue-black with starch; Benedict solution - brick-red with reducing sugars</li>
</ul>

<h4>2. Proteins</h4>
<ul>
<li><strong>Elements:</strong> Carbon, Hydrogen, Oxygen, Nitrogen (and sometimes Sulfur, Phosphorus)</li>
<li><strong>Building blocks:</strong> Amino acids (about 20 different types)</li>
<li><strong>Function:</strong> Growth and repair of tissues; enzymes; antibodies; hormones; transport (haemoglobin)</li>
<li><strong>Sources:</strong> Meat, fish, eggs, beans, milk, nuts, soya</li>
<li><strong>Test:</strong> Biuret test - purple/violet color</li>
<li><strong>Deficiency:</strong> Kwashiorkor (protein deficiency with adequate calories); Marasmus (severe protein-calorie deficiency)</li>
</ul>

<h4>3. Fats and Oils (Lipids)</h4>
<ul>
<li><strong>Elements:</strong> Carbon, Hydrogen, Oxygen (less oxygen than carbohydrates)</li>
<li><strong>Structure:</strong> Glycerol + 3 fatty acids (triglyceride)</li>
<li><strong>Function:</strong> Energy storage (more than double the energy per gram compared to carbohydrates); insulation; protection of organs; carries fat-soluble vitamins A, D, E, K</li>
<li><strong>Saturated fats:</strong> No C=C double bonds; solid at room temp; animal fats (butter, lard)</li>
<li><strong>Unsaturated fats:</strong> One or more C=C double bonds; liquid at room temp (oils); plant/fish sources</li>
<li><strong>Test:</strong> Sudan III/IV - red color; ethanol emulsion test - white emulsion</li>
</ul>

<h4>4. Vitamins</h4>
<table border="1">
<tr><th>Vitamin</th><th>Chemical Name</th><th>Function</th><th>Sources</th><th>Deficiency</th></tr>
<tr><td>A</td><td>Retinol</td><td>Vision (especially night vision); skin health; immune function</td><td>Liver, carrots, palm oil, eggs</td><td>Night blindness, xerophthalmia</td></tr>
<tr><td>B1</td><td>Thiamine</td><td>Carbohydrate metabolism; nerve function</td><td>Whole grains, nuts</td><td>Beriberi</td></tr>
<tr><td>B3</td><td>Niacin</td><td>Energy metabolism</td><td>Meat, fish, peanuts</td><td>Pellagra (Dermatitis, Diarrhea, Dementia)</td></tr>
<tr><td>C</td><td>Ascorbic acid</td><td>Collagen synthesis; antioxidant; immune function; iron absorption</td><td>Citrus fruits, tomatoes, green peppers</td><td>Scurvy (bleeding gums, slow wound healing)</td></tr>
<tr><td>D</td><td>Calciferol</td><td>Calcium absorption; bone formation</td><td>Sunlight, fish liver oil, egg yolk</td><td>Rickets (children), Osteomalacia (adults)</td></tr>
<tr><td>K</td><td>Phylloquinone</td><td>Blood clotting</td><td>Green vegetables, liver</td><td>Poor blood clotting</td></tr>
</table>

<h4>5. Minerals</h4>
<table border="1">
<tr><th>Mineral</th><th>Function</th><th>Sources</th><th>Deficiency</th></tr>
<tr><td>Calcium (Ca)</td><td>Bone and teeth formation; blood clotting; muscle contraction</td><td>Milk, bones, green vegetables</td><td>Rickets, osteoporosis, poor blood clotting</td></tr>
<tr><td>Iron (Fe)</td><td>Formation of haemoglobin (carries O2)</td><td>Meat, liver, green vegetables, beans</td><td>Anaemia (low haemoglobin)</td></tr>
<tr><td>Iodine (I)</td><td>Synthesis of thyroid hormones</td><td>Seafood, iodized salt</td><td>Goitre, cretinism</td></tr>
<tr><td>Fluorine (F)</td><td>Strengthens tooth enamel</td><td>Fluoridated water, toothpaste</td><td>Dental decay (cavities)</td></tr>
<tr><td>Phosphorus (P)</td><td>Bone/teeth formation; ATP; DNA</td><td>Meat, dairy, nuts</td><td>Weak bones</td></tr>
<tr><td>Sodium (Na)</td><td>Nerve impulses; fluid balance</td><td>Table salt, processed foods</td><td>Muscle cramps, low blood pressure</td></tr>
</table>

<h4>6. Water</h4>
<ul>
<li>Makes up 60 to 70 percent of body mass</li>
<li>Functions: Solvent for chemical reactions; transport medium (blood, lymph); temperature regulation through sweating; lubricant (joints); digestion</li>
<li>Sources: Drinking water, food, metabolic water (produced in respiration)</li>
</ul>', 1),

(t9, 'Digestion and Absorption of Food', '<h2>Digestion and Absorption of Food</h2>

<h3>Types of Nutrition</h3>
<ul>
<li><strong>Autotrophic nutrition:</strong> Organisms make their own food from inorganic sources. Includes photosynthesis (plants) and chemosynthesis (some bacteria).</li>
<li><strong>Heterotrophic nutrition:</strong> Organisms obtain food from other organisms.
  <ul>
    <li>Holozoic: Ingest solid food (most animals)</li>
    <li>Saprotrophic/Saprophytic: Feed on dead organic matter (fungi, some bacteria)</li>
    <li>Parasitic: Feed on living host</li>
    <li>Symbiotic: Mutualistic feeding relationship</li>
  </ul>
</li>
</ul>

<h3>The Human Digestive System</h3>
<p>Digestion breaks large insoluble food molecules into small soluble molecules that can be absorbed into the blood.</p>

<h4>Organs and Functions</h4>
<table border="1">
<tr><th>Organ</th><th>Function</th><th>Enzymes/Secretions</th></tr>
<tr><td>Mouth</td><td>Mechanical digestion by teeth; chemical digestion begins</td><td>Salivary amylase - starch to maltose</td></tr>
<tr><td>Oesophagus (gullet)</td><td>Transports food to stomach via peristalsis</td><td>Mucus (lubrication)</td></tr>
<tr><td>Stomach</td><td>Churns food; protein digestion begins</td><td>Pepsin (protease) - proteins to polypeptides; HCl (kills bacteria, activates pepsin)</td></tr>
<tr><td>Small intestine: Duodenum</td><td>Most chemical digestion</td><td>Pancreatic juice (amylase, lipase, protease); bile (emulsifies fats)</td></tr>
<tr><td>Small intestine: Ileum</td><td>Absorption of digested nutrients</td><td>Intestinal enzymes (maltase, sucrase, lactase)</td></tr>
<tr><td>Large intestine</td><td>Absorption of water; formation of faeces</td><td>None (bacterial action)</td></tr>
<tr><td>Rectum</td><td>Temporary storage of faeces</td><td>None</td></tr>
<tr><td>Anus</td><td>Egestion (removal of faeces)</td><td>None</td></tr>
<tr><td>Liver</td><td>Produces bile; detoxification; metabolism</td><td>Bile (stored in gall bladder)</td></tr>
<tr><td>Pancreas</td><td>Produces digestive enzymes and hormones</td><td>Amylase, lipase, trypsin (protease); insulin, glucagon</td></tr>
</table>

<h3>Digestive Enzymes Summary</h3>
<table border="1">
<tr><th>Substrate</th><th>Enzyme</th><th>Product</th><th>Produced by</th></tr>
<tr><td>Starch</td><td>Amylase (salivary and pancreatic)</td><td>Maltose</td><td>Salivary glands, Pancreas</td></tr>
<tr><td>Maltose</td><td>Maltase</td><td>Glucose</td><td>Small intestine</td></tr>
<tr><td>Sucrose</td><td>Sucrase</td><td>Glucose + Fructose</td><td>Small intestine</td></tr>
<tr><td>Lactose</td><td>Lactase</td><td>Glucose + Galactose</td><td>Small intestine</td></tr>
<tr><td>Proteins</td><td>Pepsin, Trypsin</td><td>Peptides</td><td>Stomach, Pancreas</td></tr>
<tr><td>Peptides</td><td>Peptidases</td><td>Amino acids</td><td>Small intestine</td></tr>
<tr><td>Fats/lipids</td><td>Lipase</td><td>Fatty acids + Glycerol</td><td>Pancreas</td></tr>
</table>

<h3>Role of Bile</h3>
<ul>
<li>Produced in the liver; stored in the gall bladder; secreted into duodenum</li>
<li>Emulsifies fats: breaks large fat droplets into small droplets - increases surface area for lipase</li>
<li>Bile is alkaline - neutralizes stomach acid in duodenum</li>
<li>Contains bile salts (not enzymes)</li>
</ul>

<h3>Absorption in the Ileum</h3>
<p>The ileum is adapted for efficient absorption:</p>
<ul>
<li><strong>Villi and microvilli:</strong> Greatly increase surface area (about 300 square metres total)</li>
<li><strong>Good blood supply:</strong> Maintains concentration gradient</li>
<li><strong>Thin wall (one cell thick):</strong> Short diffusion distance</li>
<li><strong>Lacteals:</strong> Lymph vessels in villi that absorb fatty acids and glycerol</li>
</ul>
<p>Glucose and amino acids diffuse into blood capillaries then travel via the portal vein to the liver.</p>
<p>Fatty acids and glycerol are absorbed into lacteals then travel via lymph to bloodstream.</p>

<h3>Food Tests Summary</h3>
<table border="1">
<tr><th>Food</th><th>Test</th><th>Positive Result</th></tr>
<tr><td>Starch</td><td>Iodine solution</td><td>Blue-black</td></tr>
<tr><td>Reducing sugars (glucose, maltose)</td><td>Benedict solution + heat</td><td>Brick-red precipitate</td></tr>
<tr><td>Non-reducing sugars (sucrose)</td><td>Boil with HCl; neutralize; Benedict test</td><td>Brick-red precipitate</td></tr>
<tr><td>Protein</td><td>Biuret solution (NaOH + CuSO4)</td><td>Purple/violet</td></tr>
<tr><td>Fat</td><td>Sudan III OR ethanol emulsion test</td><td>Red / white emulsion</td></tr>
<tr><td>Vitamin C</td><td>DCPIP solution</td><td>Blue DCPIP decolorized</td></tr>
</table>', 2);

-- ============================================================
-- TOPIC 10: Reproduction in Living Organisms
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t10;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t10, 'Types of Reproduction', '<h2>Reproduction in Living Organisms</h2>

<h3>Why is Reproduction Important?</h3>
<p>Reproduction ensures the continuation (survival) of species. Without reproduction, species would become extinct.</p>

<h3>Asexual Reproduction</h3>
<p>Involves ONE parent only. No gametes (sex cells) involved. Offspring are genetically identical to parent (clones). Uses mitosis.</p>

<h4>Types of Asexual Reproduction</h4>
<table border="1">
<tr><th>Type</th><th>Description</th><th>Example</th></tr>
<tr><td>Binary fission</td><td>Parent cell splits into two identical cells</td><td>Bacteria, Amoeba, Paramecium</td></tr>
<tr><td>Budding</td><td>Offspring grows as a bud from parent</td><td>Yeast, Hydra, coral</td></tr>
<tr><td>Fragmentation</td><td>Body breaks into pieces; each piece regenerates</td><td>Planaria (flatworms), starfish, algae</td></tr>
<tr><td>Spore formation (sporulation)</td><td>Spores released to grow into new organisms</td><td>Fungi, ferns, mosses, bacteria</td></tr>
<tr><td>Vegetative propagation</td><td>New plant grows from part of parent plant</td><td>Runners (strawberry), rhizomes (ginger), tubers (potato), bulbs (onion), cuttings</td></tr>
<tr><td>Parthenogenesis</td><td>Unfertilized egg develops into new organism</td><td>Bees (drones), aphids, some lizards</td></tr>
</table>

<h4>Advantages of Asexual Reproduction</h4>
<ul>
<li>Only one parent needed</li>
<li>Rapid production of large numbers of offspring</li>
<li>Offspring are identical to parent (preserves good traits)</li>
<li>No time/energy wasted finding a mate</li>
</ul>

<h4>Disadvantages of Asexual Reproduction</h4>
<ul>
<li>No genetic variation (if environment changes, all may die)</li>
<li>Diseases affecting one organism will affect all</li>
<li>Cannot adapt to changing environments</li>
</ul>

<h3>Sexual Reproduction</h3>
<p>Involves TWO parents. Requires gametes (sex cells) produced by meiosis. Fertilization (fusion of gametes) produces a zygote. Results in genetic variation in offspring.</p>

<h4>Advantages of Sexual Reproduction</h4>
<ul>
<li>Genetic variation (offspring differ from parents)</li>
<li>Better adaptation to environmental changes</li>
<li>Variation allows evolution to occur</li>
</ul>

<h4>Disadvantages</h4>
<ul>
<li>Requires two parents and a mate</li>
<li>Slower than asexual reproduction</li>
<li>More complex (energy intensive)</li>
</ul>

<h3>Gametes</h3>
<table border="1">
<tr><th>Feature</th><th>Male Gamete (Sperm/Pollen)</th><th>Female Gamete (Egg/Ovum)</th></tr>
<tr><td>Size</td><td>Small</td><td>Large</td></tr>
<tr><td>Number produced</td><td>Millions</td><td>Few (one per cycle in humans)</td></tr>
<tr><td>Mobility</td><td>Usually motile</td><td>Usually non-motile</td></tr>
<tr><td>Food reserves</td><td>Little</td><td>Large (yolk)</td></tr>
<tr><td>Chromosome number</td><td>Haploid (n)</td><td>Haploid (n)</td></tr>
</table>

<h3>Fertilization</h3>
<p>The fusion of male and female gametes to form a diploid zygote (2n).</p>
<ul>
<li><strong>External fertilization:</strong> Fusion occurs outside the body (e.g., fish, frogs, most aquatic animals). Large numbers of eggs and sperm released to increase chance of fertilization.</li>
<li><strong>Internal fertilization:</strong> Fusion occurs inside female body (e.g., reptiles, birds, mammals). Fewer offspring produced but better protected and nurtured.</li>
</ul>', 1),

(t10, 'Human Reproduction', '<h2>Human Reproduction</h2>

<h3>Male Reproductive System</h3>
<table border="1">
<tr><th>Structure</th><th>Function</th></tr>
<tr><td>Testes</td><td>Produce sperm (spermatogenesis) and testosterone</td></tr>
<tr><td>Scrotum</td><td>Holds testes outside body; cooler temperature needed for sperm production</td></tr>
<tr><td>Epididymis</td><td>Sperm mature and are stored here</td></tr>
<tr><td>Vas deferens (sperm duct)</td><td>Carries sperm from epididymis to urethra</td></tr>
<tr><td>Seminal vesicles</td><td>Produce fluid providing energy (fructose) for sperm</td></tr>
<tr><td>Prostate gland</td><td>Produces alkaline fluid to neutralize vaginal acidity</td></tr>
<tr><td>Urethra</td><td>Carries sperm and urine out of body (not simultaneously)</td></tr>
<tr><td>Penis</td><td>Deposits sperm into female during intercourse</td></tr>
</table>

<h3>Female Reproductive System</h3>
<table border="1">
<tr><th>Structure</th><th>Function</th></tr>
<tr><td>Ovaries</td><td>Produce ova (eggs) and hormones (oestrogen, progesterone)</td></tr>
<tr><td>Fallopian tubes (oviducts)</td><td>Carry egg from ovary to uterus; fertilization usually occurs here</td></tr>
<tr><td>Uterus (womb)</td><td>Embryo/fetus develops here; muscular wall for birth</td></tr>
<tr><td>Endometrium</td><td>Inner lining of uterus; sheds during menstruation; implantation site</td></tr>
<tr><td>Cervix</td><td>Lower part of uterus; ring of muscle</td></tr>
<tr><td>Vagina</td><td>Receives penis during intercourse; birth canal</td></tr>
</table>

<h3>The Menstrual Cycle</h3>
<p>A recurring cycle of approximately 28 days in females from puberty to menopause.</p>
<table border="1">
<tr><th>Day</th><th>Event</th></tr>
<tr><td>1 to 5</td><td>Menstruation: endometrium breaks down and is shed</td></tr>
<tr><td>6 to 13</td><td>Follicular phase: ovum matures in follicle; oestrogen rises and endometrium rebuilds</td></tr>
<tr><td>14</td><td>Ovulation: egg released from ovary (LH surge triggers this)</td></tr>
<tr><td>15 to 28</td><td>Luteal phase: corpus luteum forms; progesterone rises and maintains endometrium</td></tr>
<tr><td>Day 28+</td><td>If no fertilization: corpus luteum degenerates; progesterone drops; menstruation begins again</td></tr>
</table>

<h3>Hormones Controlling the Menstrual Cycle</h3>
<ul>
<li><strong>FSH (Follicle-stimulating hormone):</strong> From pituitary; stimulates follicle growth; stimulates oestrogen production</li>
<li><strong>Oestrogen:</strong> From ovary; rebuilds endometrium; causes LH surge; suppresses FSH</li>
<li><strong>LH (Luteinising hormone):</strong> From pituitary; triggers ovulation; stimulates corpus luteum</li>
<li><strong>Progesterone:</strong> From corpus luteum; maintains endometrium; suppresses FSH and LH</li>
</ul>

<h3>Fertilization and Development</h3>
<ol>
<li>Sperm travels through vagina - cervix - uterus - fallopian tube</li>
<li>Fertilization occurs in fallopian tube: sperm nucleus fuses with egg nucleus forming a zygote (2n)</li>
<li>Zygote undergoes repeated mitotic divisions: zygote - morula - blastocyst</li>
<li>Implantation: blastocyst embeds in endometrium (approximately 6 to 10 days after fertilization)</li>
<li>Placenta forms: provides nutrients and O2 to fetus; removes CO2 and waste; produces hormones</li>
<li>Amnion surrounds fetus with amniotic fluid (protection)</li>
</ol>

<h3>The Placenta</h3>
<p>Functions:</p>
<ul>
<li>Exchanges nutrients, O2 and waste between mother and fetus (does not allow blood to mix directly)</li>
<li>Produces progesterone and HCG (human chorionic gonadotropin) to maintain pregnancy</li>
<li>Acts as a barrier against some pathogens (but not all viruses)</li>
</ul>
<p>Materials that cross placenta: glucose, amino acids, O2, water, antibodies, hormones, alcohol, nicotine, some drugs, some viruses (HIV, rubella)</p>

<h3>Birth (Parturition)</h3>
<p>Triggered by oxytocin from pituitary gland which causes uterine contractions (labour)</p>
<ol>
<li>Cervix dilates</li>
<li>Amnion ruptures (water breaks)</li>
<li>Baby delivered head first</li>
<li>Placenta expelled (afterbirth)</li>
</ol>

<h3>Sexually Transmitted Infections (STIs)</h3>
<table border="1">
<tr><th>STI</th><th>Pathogen</th><th>Symptoms</th><th>Treatment</th></tr>
<tr><td>HIV/AIDS</td><td>HIV (virus)</td><td>Flu-like initially; later immune failure</td><td>Antiretroviral drugs (no cure)</td></tr>
<tr><td>Gonorrhea</td><td>Neisseria gonorrhoeae (bacterium)</td><td>Discharge, painful urination</td><td>Antibiotics</td></tr>
<tr><td>Syphilis</td><td>Treponema pallidum (bacterium)</td><td>Sores, rash, later neurological damage</td><td>Antibiotics (penicillin)</td></tr>
<tr><td>Chlamydia</td><td>Chlamydia trachomatis (bacterium)</td><td>Often asymptomatic; infertility</td><td>Antibiotics</td></tr>
<tr><td>Genital herpes</td><td>HSV-2 (virus)</td><td>Painful blisters/sores</td><td>Antiviral drugs (no cure)</td></tr>
</table>
<p><strong>Prevention:</strong> Abstinence, condoms, mutual fidelity, screening, vaccination (HPV, Hepatitis B)</p>', 2);

END $$;
