/*
  # Core Science Comprehensive WASSCE Notes - Topics 1 to 5

  Adds deep, exam-focused notes for:
  1. Scientific Method and Laboratory Safety
  2. Matter and Its Properties
  3. Atomic Structure and Periodic Table
  4. Chemical Bonding
  5. Chemical Reactions and Equations

  All sections are updated/inserted using upsert logic on (topic_id, order_index).
*/

DO $$
DECLARE
  t1 uuid := 'cfa31f16-f5a9-430d-9a22-af32e7ba2b93';
  t2 uuid := '44e5c9d3-d3c9-406f-a17f-2b61fd554a9a';
  t3 uuid := 'bf9b67e0-9bd2-4928-8581-ad122613359c';
  t4 uuid := 'b4577ba5-3aaf-4789-a5c7-f91c2f27c133';
  t5 uuid := 'c0eeb0ec-78b3-4836-9982-b52019d74dbd';
BEGIN

-- ============================================================
-- TOPIC 1: Scientific Method and Laboratory Safety
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t1;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t1, 'The Scientific Method', '<h2>The Scientific Method</h2>
<p>The scientific method is a systematic approach used by scientists to investigate natural phenomena, acquire new knowledge, and correct or integrate previous knowledge. It forms the foundation of all scientific inquiry and is essential for WASSCE Core Science.</p>

<h3>Steps of the Scientific Method</h3>
<ol>
<li><strong>Observation:</strong> Using the senses or instruments to notice and record phenomena. This is the starting point of all scientific investigation.</li>
<li><strong>Problem Identification:</strong> Formulating a clear, specific question based on observations.</li>
<li><strong>Hypothesis Formation:</strong> A testable, educated guess or prediction about the answer. Must be stated in a way that can be proved or disproved.</li>
<li><strong>Experimentation:</strong> Designing and conducting controlled experiments to test the hypothesis. Includes identifying variables (independent, dependent, controlled).</li>
<li><strong>Data Collection:</strong> Recording measurements and observations systematically in tables, charts, or logs.</li>
<li><strong>Data Analysis:</strong> Using graphs, calculations, and statistical tools to find patterns and relationships.</li>
<li><strong>Conclusion:</strong> Stating whether the hypothesis was supported or rejected based on evidence.</li>
<li><strong>Communication:</strong> Publishing or reporting results so they can be reviewed and repeated by others (peer review).</li>
</ol>

<h3>Types of Variables</h3>
<ul>
<li><strong>Independent Variable:</strong> The factor deliberately changed by the experimenter (e.g., temperature, concentration).</li>
<li><strong>Dependent Variable:</strong> The factor that is measured or observed as a result of changes in the independent variable.</li>
<li><strong>Controlled Variables:</strong> All other factors kept constant to ensure a fair test.</li>
</ul>

<h3>Hypothesis vs. Theory vs. Law</h3>
<table border="1">
<tr><th>Term</th><th>Definition</th><th>Example</th></tr>
<tr><td>Hypothesis</td><td>Testable prediction for a specific situation</td><td>"Plants grow taller with more light"</td></tr>
<tr><td>Theory</td><td>Well-substantiated explanation supported by repeated experiments</td><td>Cell Theory, Atomic Theory</td></tr>
<tr><td>Scientific Law</td><td>Describes what always happens under certain conditions</td><td>Law of Conservation of Mass</td></tr>
</table>

<h3>WASSCE Exam Tips</h3>
<div class="bg-blue-50 p-4 rounded">
<ul>
<li>Know the correct order of the scientific method steps</li>
<li>Be able to identify variables in a given experiment</li>
<li>Distinguish between qualitative (descriptive) and quantitative (numerical) observations</li>
<li>Understand the concept of a controlled experiment and why it matters</li>
</ul>
</div>', 1),

(t1, 'Laboratory Safety Rules and Equipment', '<h2>Laboratory Safety Rules and Equipment</h2>
<p>Laboratory safety is critical to prevent accidents and injuries during scientific experiments. WASSCE regularly tests knowledge of safety rules, hazard symbols, and proper use of equipment.</p>

<h3>General Safety Rules</h3>
<ul>
<li>Always wear personal protective equipment (PPE): lab coat, safety goggles, gloves</li>
<li>Never eat, drink, or smell chemicals directly in the laboratory</li>
<li>Report all accidents, spills, or injuries immediately to the teacher</li>
<li>Know the location of fire extinguishers, eyewash stations, and first aid kits</li>
<li>Tie back long hair and avoid loose clothing near open flames</li>
<li>Never point a test tube being heated toward yourself or others</li>
<li>Handle all chemicals as if they are dangerous until you know otherwise</li>
<li>Wash hands thoroughly before leaving the laboratory</li>
<li>Never perform unauthorized experiments</li>
<li>Keep workstations clean and tidy at all times</li>
</ul>

<h3>Hazard Symbols (GHS - Globally Harmonized System)</h3>
<table border="1">
<tr><th>Symbol</th><th>Meaning</th><th>Examples</th></tr>
<tr><td>Flame</td><td>Flammable</td><td>Ethanol, acetone</td></tr>
<tr><td>Skull and crossbones</td><td>Toxic/Poisonous</td><td>Mercury compounds, cyanide</td></tr>
<tr><td>Corrosion</td><td>Corrosive</td><td>Concentrated acids and bases</td></tr>
<tr><td>Exclamation mark</td><td>Irritant/Harmful</td><td>Dilute acids, some cleaning agents</td></tr>
<tr><td>Biohazard</td><td>Biological hazard</td><td>Bacteria cultures, blood samples</td></tr>
<tr><td>Radiation</td><td>Radioactive</td><td>Uranium, radium</td></tr>
<tr><td>Exploding bomb</td><td>Explosive</td><td>Some peroxides, nitroglycerin</td></tr>
<tr><td>Environment</td><td>Environmental hazard</td><td>Heavy metals, some pesticides</td></tr>
</table>

<h3>Common Laboratory Equipment</h3>
<table border="1">
<tr><th>Equipment</th><th>Use</th></tr>
<tr><td>Beaker</td><td>Holding and mixing liquids (not for accurate measurement)</td></tr>
<tr><td>Measuring cylinder/Graduated cylinder</td><td>Accurate measurement of liquid volumes</td></tr>
<tr><td>Conical flask (Erlenmeyer)</td><td>Mixing and swirling solutions</td></tr>
<tr><td>Burette</td><td>Precise delivery of variable volumes of liquid (titration)</td></tr>
<tr><td>Pipette</td><td>Delivering exact fixed volumes of liquid</td></tr>
<tr><td>Thermometer</td><td>Measuring temperature</td></tr>
<tr><td>Bunsen burner</td><td>Heating substances</td></tr>
<tr><td>Tripod stand + wire gauze</td><td>Supporting containers over a Bunsen burner</td></tr>
<tr><td>Crucible</td><td>Heating substances at very high temperatures</td></tr>
<tr><td>Evaporating dish</td><td>Evaporating liquids from solutions</td></tr>
<tr><td>Watch glass</td><td>Covering beakers, weighing solids</td></tr>
<tr><td>Spatula</td><td>Transferring solid chemicals</td></tr>
<tr><td>Test tube + holder</td><td>Small-scale reactions; holding during heating</td></tr>
<tr><td>Funnel</td><td>Filtering or transferring liquids</td></tr>
<tr><td>Retort stand and clamps</td><td>Supporting equipment during experiments</td></tr>
<tr><td>Electronic balance</td><td>Precise measurement of mass</td></tr>
<tr><td>Microscope</td><td>Viewing small objects and cells</td></tr>
</table>

<h3>Bunsen Burner Flames</h3>
<ul>
<li><strong>Safety (luminous/yellow) flame:</strong> Air hole closed; cooler, sooty; used when not heating</li>
<li><strong>Roaring (non-luminous/blue) flame:</strong> Air hole open; hotter, cleaner; used for heating</li>
</ul>

<h3>Reading a Meniscus</h3>
<p>When reading the volume of a liquid in a graduated cylinder or burette:</p>
<ul>
<li>Read the <strong>bottom of the meniscus</strong> for water and most liquids (which curve downward)</li>
<li>Read the <strong>top of the meniscus</strong> for mercury (which curves upward)</li>
<li>Keep your eye level with the meniscus to avoid parallax error</li>
</ul>', 2),

(t1, 'Scientific Measurement and Data Presentation', '<h2>Scientific Measurement and Data Presentation</h2>

<h3>SI Units (International System of Units)</h3>
<table border="1">
<tr><th>Quantity</th><th>SI Unit</th><th>Symbol</th></tr>
<tr><td>Length</td><td>Metre</td><td>m</td></tr>
<tr><td>Mass</td><td>Kilogram</td><td>kg</td></tr>
<tr><td>Time</td><td>Second</td><td>s</td></tr>
<tr><td>Temperature</td><td>Kelvin</td><td>K</td></tr>
<tr><td>Electric current</td><td>Ampere</td><td>A</td></tr>
<tr><td>Amount of substance</td><td>Mole</td><td>mol</td></tr>
<tr><td>Luminous intensity</td><td>Candela</td><td>cd</td></tr>
</table>

<h3>Common Prefixes</h3>
<table border="1">
<tr><th>Prefix</th><th>Symbol</th><th>Multiplier</th></tr>
<tr><td>Kilo</td><td>k</td><td>× 1000 (10³)</td></tr>
<tr><td>Centi</td><td>c</td><td>× 0.01 (10⁻²)</td></tr>
<tr><td>Milli</td><td>m</td><td>× 0.001 (10⁻³)</td></tr>
<tr><td>Micro</td><td>μ</td><td>× 10⁻⁶</td></tr>
<tr><td>Nano</td><td>n</td><td>× 10⁻⁹</td></tr>
</table>

<h3>Accuracy vs. Precision</h3>
<ul>
<li><strong>Accuracy:</strong> How close a measurement is to the true/accepted value</li>
<li><strong>Precision:</strong> How consistent repeated measurements are with each other</li>
<li>A measurement can be precise but not accurate (systematic error), or neither precise nor accurate (random error)</li>
</ul>

<h3>Types of Experimental Errors</h3>
<ul>
<li><strong>Systematic errors:</strong> Consistently in the same direction; caused by faulty equipment or incorrect technique. Example: uncalibrated balance, parallax error.</li>
<li><strong>Random errors:</strong> Unpredictable variations in measurements. Reduced by taking multiple readings and averaging.</li>
<li><strong>Human errors:</strong> Mistakes made by the experimenter (e.g., misreading a scale).</li>
</ul>

<h3>Data Presentation</h3>
<p><strong>Tables:</strong> Organize data with clear headings, units, and appropriate significant figures.</p>
<p><strong>Graphs:</strong> Visualize relationships between variables.</p>
<ul>
<li><strong>Bar graph:</strong> Comparing categories or discrete data</li>
<li><strong>Line graph:</strong> Showing trends and continuous data over time or with changing variables</li>
<li><strong>Pie chart:</strong> Showing proportions of a whole</li>
<li><strong>Scatter plot:</strong> Showing correlation between two variables</li>
</ul>

<h3>Drawing Graphs (WASSCE requirements)</h3>
<ol>
<li>Use a sharp pencil and ruler</li>
<li>Label both axes with the quantity AND unit</li>
<li>Choose appropriate scales that use most of the graph paper</li>
<li>Plot points accurately with a dot or small cross</li>
<li>Draw the best-fit line (not necessarily through every point)</li>
<li>Give the graph a clear title</li>
</ol>', 3);

-- ============================================================
-- TOPIC 2: Matter and Its Properties
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t2;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t2, 'States of Matter and Kinetic Theory', '<h2>States of Matter and Kinetic Theory</h2>

<h3>The Three States of Matter</h3>
<table border="1">
<tr><th>Property</th><th>Solid</th><th>Liquid</th><th>Gas</th></tr>
<tr><td>Shape</td><td>Fixed</td><td>Takes shape of container</td><td>Takes shape of container</td></tr>
<tr><td>Volume</td><td>Fixed</td><td>Fixed</td><td>Fills container</td></tr>
<tr><td>Particle arrangement</td><td>Regular, closely packed</td><td>Random, close together</td><td>Random, far apart</td></tr>
<tr><td>Particle movement</td><td>Vibrate in fixed positions</td><td>Move around each other</td><td>Move rapidly and freely</td></tr>
<tr><td>Forces between particles</td><td>Very strong</td><td>Moderate</td><td>Very weak</td></tr>
<tr><td>Compressibility</td><td>Very low</td><td>Very low</td><td>High</td></tr>
<tr><td>Density</td><td>Usually highest</td><td>Medium</td><td>Lowest</td></tr>
</table>

<h3>The Kinetic Theory of Matter</h3>
<p>The kinetic theory states that all matter is made up of tiny particles (atoms, molecules, or ions) that are in constant motion. Key postulates:</p>
<ol>
<li>Matter is composed of tiny particles</li>
<li>Particles are in constant, random motion</li>
<li>The temperature of a substance is a measure of the average kinetic energy of its particles</li>
<li>Higher temperature = faster particle movement</li>
<li>Particles collide with each other and with container walls</li>
<li>There are forces of attraction between particles</li>
</ol>

<h3>Changes of State</h3>
<table border="1">
<tr><th>Change</th><th>Process</th><th>Energy Change</th></tr>
<tr><td>Solid → Liquid</td><td>Melting (fusion)</td><td>Energy absorbed (endothermic)</td></tr>
<tr><td>Liquid → Gas</td><td>Evaporation/Boiling (vaporization)</td><td>Energy absorbed (endothermic)</td></tr>
<tr><td>Gas → Liquid</td><td>Condensation</td><td>Energy released (exothermic)</td></tr>
<tr><td>Liquid → Solid</td><td>Freezing (solidification)</td><td>Energy released (exothermic)</td></tr>
<tr><td>Solid → Gas</td><td>Sublimation</td><td>Energy absorbed (endothermic)</td></tr>
<tr><td>Gas → Solid</td><td>Deposition</td><td>Energy released (exothermic)</td></tr>
</table>

<p><strong>Examples of sublimation:</strong> Iodine, dry ice (solid CO₂), naphthalene (mothballs), ammonium chloride</p>

<h3>Heating and Cooling Curves</h3>
<p>During a change of state, temperature remains <strong>constant</strong> even though heat is being added or removed. This energy is used to break or form intermolecular bonds (latent heat).</p>
<ul>
<li><strong>Latent heat of fusion:</strong> Energy needed to melt 1 kg of a solid at its melting point</li>
<li><strong>Latent heat of vaporization:</strong> Energy needed to vaporize 1 kg of a liquid at its boiling point</li>
</ul>

<h3>Diffusion</h3>
<p>Diffusion is the spontaneous movement of particles from a region of higher concentration to lower concentration. It occurs due to random particle movement (kinetic energy).</p>
<ul>
<li>Gases diffuse faster than liquids</li>
<li>Lighter molecules diffuse faster (Graham''s Law: rate ∝ 1/√molar mass)</li>
<li>Higher temperature increases the rate of diffusion</li>
</ul>
<p><strong>Examples:</strong> Smell of perfume spreading across a room; bromine gas diffusing in air; potassium manganate(VII) dissolving in water</p>', 1),

(t2, 'Classification of Matter: Elements, Compounds and Mixtures', '<h2>Classification of Matter</h2>

<h3>Pure Substances vs. Mixtures</h3>
<ul>
<li><strong>Pure substance:</strong> Has a definite composition and specific physical properties (melting point, boiling point). Cannot be separated by physical means.</li>
<li><strong>Mixture:</strong> Two or more substances combined but not chemically joined. Each substance retains its own properties. Can be separated by physical means.</li>
</ul>

<h3>Types of Pure Substances</h3>
<p><strong>Elements:</strong> Simplest form of matter; cannot be broken down by chemical methods. Made of only one type of atom.</p>
<ul>
<li>Examples: Gold (Au), Iron (Fe), Oxygen (O₂), Carbon (C), Nitrogen (N₂)</li>
<li>About 118 elements are known</li>
</ul>

<p><strong>Compounds:</strong> Made of two or more different elements chemically combined in a fixed ratio.</p>
<ul>
<li>Properties differ from constituent elements</li>
<li>Can only be separated by chemical methods</li>
<li>Examples: Water (H₂O), Salt (NaCl), Carbon dioxide (CO₂), Glucose (C₆H₁₂O₆)</li>
</ul>

<h3>Types of Mixtures</h3>
<table border="1">
<tr><th>Type</th><th>Description</th><th>Examples</th></tr>
<tr><td>Homogeneous mixture (solution)</td><td>Uniform composition throughout; particles not visible</td><td>Salt water, sugar water, air, brass</td></tr>
<tr><td>Heterogeneous mixture</td><td>Non-uniform composition; different parts visible</td><td>Sand and water, oil and water, granite</td></tr>
<tr><td>Suspension</td><td>Large particles that settle on standing</td><td>Muddy water, chalk in water</td></tr>
<tr><td>Colloid</td><td>Medium-sized particles; don''t settle; show Tyndall effect</td><td>Milk, fog, blood, gelatin</td></tr>
</table>

<h3>Tyndall Effect</h3>
<p>The scattering of light by colloidal particles. When a beam of light passes through a colloid, the path of light is visible (e.g., headlights in fog). This distinguishes colloids from true solutions.</p>

<h3>Solutions: Key Terms</h3>
<ul>
<li><strong>Solute:</strong> The substance being dissolved (usually smaller amount)</li>
<li><strong>Solvent:</strong> The substance doing the dissolving (usually larger amount)</li>
<li><strong>Solution:</strong> The mixture formed when a solute dissolves in a solvent</li>
<li><strong>Saturated solution:</strong> Contains the maximum amount of dissolved solute at a given temperature</li>
<li><strong>Unsaturated solution:</strong> Can still dissolve more solute</li>
<li><strong>Supersaturated solution:</strong> Contains more solute than the saturated solution would normally hold</li>
<li><strong>Solubility:</strong> Maximum mass of solute that dissolves in 100 g of solvent at a specific temperature</li>
</ul>

<h3>Factors Affecting Solubility</h3>
<ul>
<li><strong>Temperature:</strong> Solubility of most solids increases with temperature; solubility of gases decreases with temperature</li>
<li><strong>Nature of solute and solvent:</strong> "Like dissolves like" – polar solvents dissolve polar/ionic solutes</li>
<li><strong>Pressure:</strong> Affects solubility of gases (Henry''s Law: gas solubility ∝ pressure)</li>
</ul>', 2),

(t2, 'Physical and Chemical Properties and Changes', '<h2>Physical and Chemical Properties and Changes</h2>

<h3>Physical Properties</h3>
<p>Properties that can be observed or measured WITHOUT changing the chemical composition of a substance.</p>
<ul>
<li>Colour, odour, taste</li>
<li>Melting point, boiling point, freezing point</li>
<li>Density, mass, volume</li>
<li>Hardness, malleability, ductility</li>
<li>Solubility</li>
<li>Electrical and thermal conductivity</li>
<li>Magnetic properties</li>
<li>State at room temperature</li>
</ul>

<h3>Chemical Properties</h3>
<p>Properties that describe how a substance reacts with other substances and changes its chemical composition.</p>
<ul>
<li>Flammability (ability to burn)</li>
<li>Reactivity with acids</li>
<li>Reactivity with water</li>
<li>Oxidation (ability to rust/corrode)</li>
<li>Toxicity</li>
<li>Radioactivity</li>
</ul>

<h3>Physical Changes</h3>
<p>Changes that alter the form or appearance of matter but do NOT produce new substances. The change is usually reversible.</p>
<ul>
<li>Melting, boiling, freezing, condensation</li>
<li>Cutting, grinding, dissolving</li>
<li>Magnetization</li>
<li>Stretching or bending</li>
</ul>

<h3>Chemical Changes</h3>
<p>Changes that produce new substances with different properties. Usually irreversible. Also called chemical reactions.</p>
<p><strong>Signs of a chemical change:</strong></p>
<ul>
<li>Production of gas (bubbles/effervescence)</li>
<li>Formation of a precipitate (insoluble solid)</li>
<li>Change in color</li>
<li>Production of heat or light (exothermic) or absorption of heat (endothermic)</li>
<li>Change in smell</li>
<li>Permanent change that cannot easily be reversed</li>
</ul>

<h3>Density</h3>
<p>Density = Mass ÷ Volume (D = m/V)</p>
<ul>
<li>SI unit: kg/m³ or g/cm³ (g/mL)</li>
<li>Water density: 1 g/cm³ at 4°C</li>
<li>Objects less dense than water float; objects more dense sink</li>
<li>Ice is less dense than liquid water (floats) – anomalous expansion of water</li>
</ul>

<h3>Separation of Mixtures</h3>
<table border="1">
<tr><th>Technique</th><th>Principle</th><th>Used To Separate</th></tr>
<tr><td>Filtration</td><td>Particle size difference</td><td>Insoluble solid from liquid</td></tr>
<tr><td>Evaporation</td><td>Difference in volatility</td><td>Soluble solid from solution</td></tr>
<tr><td>Crystallization</td><td>Difference in solubility with temperature</td><td>Soluble solids with different solubilities</td></tr>
<tr><td>Distillation</td><td>Difference in boiling points</td><td>Liquids with different boiling points; solvent from solution</td></tr>
<tr><td>Fractional distillation</td><td>Difference in boiling points</td><td>Mixtures of liquids with close boiling points (e.g., crude oil)</td></tr>
<tr><td>Chromatography</td><td>Difference in solubility and adsorption</td><td>Dyes, inks, pigments</td></tr>
<tr><td>Magnetic separation</td><td>Magnetic properties</td><td>Magnetic material from non-magnetic (e.g., iron filings from sand)</td></tr>
<tr><td>Decanting</td><td>Density difference</td><td>Immiscible liquids or large settled particles</td></tr>
<tr><td>Centrifugation</td><td>Density difference (spinning)</td><td>Suspended particles, blood cells</td></tr>
<tr><td>Sublimation</td><td>Substance sublimes, others don''t</td><td>Iodine from sand, ammonium chloride from salt</td></tr>
</table>

<h3>Paper Chromatography</h3>
<p>Used to separate mixtures of coloured substances (e.g., inks, plant pigments).</p>
<ol>
<li>Spot the mixture on the baseline of chromatography paper</li>
<li>Place in solvent (mobile phase); the solvent moves up the paper</li>
<li>Different components travel different distances based on solubility</li>
<li>The Rf value (retardation factor) identifies each component</li>
</ol>
<p><strong>Rf = Distance travelled by spot ÷ Distance travelled by solvent front</strong></p>
<p>Rf values are always between 0 and 1.</p>', 3);

-- ============================================================
-- TOPIC 3: Atomic Structure and Periodic Table
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t3;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t3, 'Atomic Structure', '<h2>Atomic Structure</h2>

<h3>History of Atomic Models</h3>
<table border="1">
<tr><th>Scientist</th><th>Year</th><th>Model/Contribution</th></tr>
<tr><td>John Dalton</td><td>1803</td><td>Solid sphere model; atoms are indivisible</td></tr>
<tr><td>J.J. Thomson</td><td>1897</td><td>Plum pudding model; discovered electrons</td></tr>
<tr><td>Ernest Rutherford</td><td>1911</td><td>Nuclear model; nucleus contains protons; electrons orbit nucleus</td></tr>
<tr><td>Niels Bohr</td><td>1913</td><td>Planetary model; electrons in fixed orbits/shells with specific energy levels</td></tr>
<tr><td>Modern (Quantum)</td><td>1920s+</td><td>Electrons in orbitals/probability clouds; wave-particle duality</td></tr>
</table>

<h3>Subatomic Particles</h3>
<table border="1">
<tr><th>Particle</th><th>Location</th><th>Relative Charge</th><th>Relative Mass</th><th>Symbol</th></tr>
<tr><td>Proton</td><td>Nucleus</td><td>+1</td><td>1</td><td>p⁺</td></tr>
<tr><td>Neutron</td><td>Nucleus</td><td>0 (neutral)</td><td>1</td><td>n⁰</td></tr>
<tr><td>Electron</td><td>Electron shells/orbitals</td><td>-1</td><td>1/1840 ≈ 0</td><td>e⁻</td></tr>
</table>

<h3>Key Definitions</h3>
<ul>
<li><strong>Atomic number (Z):</strong> Number of protons in the nucleus. Identifies the element. Equal to number of electrons in a neutral atom.</li>
<li><strong>Mass number (A):</strong> Total number of protons + neutrons in the nucleus. A = Z + N</li>
<li><strong>Number of neutrons (N):</strong> N = A - Z</li>
<li><strong>Nuclide notation:</strong> ᴬ_Z X (where X is the element symbol, A is mass number, Z is atomic number)</li>
</ul>

<h3>Electron Configuration</h3>
<p>Electrons are arranged in energy levels (shells) around the nucleus. The shells are filled in order:</p>
<ul>
<li>Shell 1 (K): Maximum 2 electrons</li>
<li>Shell 2 (L): Maximum 8 electrons</li>
<li>Shell 3 (M): Maximum 18 electrons (usually 8 for first 20 elements)</li>
<li>Shell 4 (N): Maximum 32 electrons</li>
</ul>

<h3>Electron Configurations for First 20 Elements</h3>
<table border="1">
<tr><th>Element</th><th>Symbol</th><th>At. No.</th><th>Configuration</th></tr>
<tr><td>Hydrogen</td><td>H</td><td>1</td><td>1</td></tr>
<tr><td>Helium</td><td>He</td><td>2</td><td>2</td></tr>
<tr><td>Lithium</td><td>Li</td><td>3</td><td>2, 1</td></tr>
<tr><td>Beryllium</td><td>Be</td><td>4</td><td>2, 2</td></tr>
<tr><td>Boron</td><td>B</td><td>5</td><td>2, 3</td></tr>
<tr><td>Carbon</td><td>C</td><td>6</td><td>2, 4</td></tr>
<tr><td>Nitrogen</td><td>N</td><td>7</td><td>2, 5</td></tr>
<tr><td>Oxygen</td><td>O</td><td>8</td><td>2, 6</td></tr>
<tr><td>Fluorine</td><td>F</td><td>9</td><td>2, 7</td></tr>
<tr><td>Neon</td><td>Ne</td><td>10</td><td>2, 8</td></tr>
<tr><td>Sodium</td><td>Na</td><td>11</td><td>2, 8, 1</td></tr>
<tr><td>Magnesium</td><td>Mg</td><td>12</td><td>2, 8, 2</td></tr>
<tr><td>Aluminium</td><td>Al</td><td>13</td><td>2, 8, 3</td></tr>
<tr><td>Silicon</td><td>Si</td><td>14</td><td>2, 8, 4</td></tr>
<tr><td>Phosphorus</td><td>P</td><td>15</td><td>2, 8, 5</td></tr>
<tr><td>Sulfur</td><td>S</td><td>16</td><td>2, 8, 6</td></tr>
<tr><td>Chlorine</td><td>Cl</td><td>17</td><td>2, 8, 7</td></tr>
<tr><td>Argon</td><td>Ar</td><td>18</td><td>2, 8, 8</td></tr>
<tr><td>Potassium</td><td>K</td><td>19</td><td>2, 8, 8, 1</td></tr>
<tr><td>Calcium</td><td>Ca</td><td>20</td><td>2, 8, 8, 2</td></tr>
</table>

<h3>Isotopes</h3>
<p>Atoms of the same element with the same atomic number but different mass numbers (different numbers of neutrons).</p>
<ul>
<li>Same chemical properties (same number of electrons/valence electrons)</li>
<li>Different physical properties (different masses)</li>
<li>Examples:
  <ul>
    <li>Carbon: ¹²C (6p, 6n), ¹³C (6p, 7n), ¹⁴C (6p, 8n – radioactive)</li>
    <li>Hydrogen: ¹H (protium), ²H (deuterium), ³H (tritium)</li>
    <li>Chlorine: ³⁵Cl and ³⁷Cl (in ratio 3:1, giving average mass ≈ 35.5)</li>
  </ul>
</li>
</ul>

<h3>Relative Atomic Mass (Ar)</h3>
<p>The weighted average mass of all isotopes of an element relative to 1/12 the mass of carbon-12.</p>
<p><strong>Formula:</strong> Ar = (mass of isotope₁ × % abundance₁ + mass of isotope₂ × % abundance₂) ÷ 100</p>
<p>Example: Chlorine has ³⁵Cl (75%) and ³⁷Cl (25%)<br>
Ar = (35 × 75 + 37 × 25) ÷ 100 = (2625 + 925) ÷ 100 = 35.5</p>', 1),

(t3, 'The Periodic Table', '<h2>The Periodic Table</h2>

<h3>Organization of the Periodic Table</h3>
<ul>
<li>Elements arranged in order of increasing atomic number</li>
<li><strong>Periods (rows):</strong> Horizontal rows. There are 7 periods. Period number = number of electron shells.</li>
<li><strong>Groups (columns):</strong> Vertical columns. There are 18 groups. Group number (for main groups) indicates the number of valence electrons.</li>
<li>Elements in the same group have similar chemical properties</li>
</ul>

<h3>Key Groups</h3>
<table border="1">
<tr><th>Group</th><th>Name</th><th>Valence e⁻</th><th>Examples</th></tr>
<tr><td>Group 1</td><td>Alkali metals</td><td>1</td><td>Li, Na, K, Rb, Cs, Fr</td></tr>
<tr><td>Group 2</td><td>Alkaline earth metals</td><td>2</td><td>Be, Mg, Ca, Sr, Ba, Ra</td></tr>
<tr><td>Group 7 (17)</td><td>Halogens</td><td>7</td><td>F, Cl, Br, I, At</td></tr>
<tr><td>Group 0 (18)</td><td>Noble gases</td><td>8 (or 2 for He)</td><td>He, Ne, Ar, Kr, Xe, Rn</td></tr>
</table>

<h3>Periodic Trends</h3>

<h4>Atomic Radius</h4>
<ul>
<li><strong>Across a period (left to right):</strong> Decreases – more protons attract electrons more strongly, pulling shells closer</li>
<li><strong>Down a group:</strong> Increases – more electron shells, so atoms get larger</li>
</ul>

<h4>Ionization Energy</h4>
<p>Energy needed to remove one mole of electrons from one mole of gaseous atoms.</p>
<ul>
<li><strong>Across a period:</strong> Increases – stronger nuclear attraction holds electrons more tightly</li>
<li><strong>Down a group:</strong> Decreases – electrons further from nucleus, more shielding, easier to remove</li>
</ul>

<h4>Electronegativity</h4>
<p>Ability of an atom to attract bonding electrons toward itself.</p>
<ul>
<li><strong>Across a period:</strong> Increases (left to right)</li>
<li><strong>Down a group:</strong> Decreases</li>
<li>Most electronegative element: Fluorine</li>
</ul>

<h4>Metallic Character</h4>
<ul>
<li><strong>Across a period:</strong> Decreases (metals on left, non-metals on right)</li>
<li><strong>Down a group:</strong> Increases</li>
</ul>

<h3>Metals vs. Non-metals vs. Metalloids</h3>
<table border="1">
<tr><th>Property</th><th>Metals</th><th>Non-metals</th></tr>
<tr><td>Physical state at room temp</td><td>Solid (except Hg)</td><td>Solid, liquid, or gas</td></tr>
<tr><td>Appearance</td><td>Shiny/lustrous</td><td>Dull (exceptions: iodine, graphite)</td></tr>
<tr><td>Conductivity</td><td>Good conductors</td><td>Poor conductors (except graphite)</td></tr>
<tr><td>Malleability/Ductility</td><td>Malleable and ductile</td><td>Brittle if solid</td></tr>
<tr><td>Density</td><td>Usually high</td><td>Usually low</td></tr>
<tr><td>Oxide type</td><td>Basic oxides</td><td>Acidic oxides</td></tr>
<tr><td>Ion formed</td><td>Positive ions (cations)</td><td>Negative ions (anions)</td></tr>
</table>

<p><strong>Metalloids (Semimetals):</strong> Have properties of both metals and non-metals. Examples: Silicon (Si), Germanium (Ge), Arsenic (As), Antimony (Sb)</p>

<h3>Group 1 – Alkali Metals</h3>
<ul>
<li>React vigorously with water to produce metal hydroxide + hydrogen gas</li>
<li>2Na + 2H₂O → 2NaOH + H₂</li>
<li>Reactivity increases DOWN the group (Li < Na < K < Rb < Cs)</li>
<li>Stored under oil to prevent reaction with air/water</li>
<li>Form +1 ions</li>
</ul>

<h3>Group 7 – Halogens</h3>
<ul>
<li>Exist as diatomic molecules (F₂, Cl₂, Br₂, I₂)</li>
<li>Reactivity decreases DOWN the group (F > Cl > Br > I)</li>
<li>More reactive halogen displaces less reactive halogen from its salt solution (displacement reactions)</li>
<li>Form -1 ions (halides)</li>
<li>Physical state at room temp: F₂ (pale yellow gas), Cl₂ (yellow-green gas), Br₂ (orange-brown liquid), I₂ (grey-black solid)</li>
</ul>

<h3>Group 0 – Noble Gases</h3>
<ul>
<li>Full outer electron shells (2 for He, 8 for others) – very stable</li>
<li>Very unreactive (inert)</li>
<li>Monatomic gases at room temperature</li>
<li>Uses: Helium in balloons, Neon in signs, Argon in light bulbs</li>
</ul>', 2);

-- ============================================================
-- TOPIC 4: Chemical Bonding
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t4;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t4, 'Ionic and Covalent Bonding', '<h2>Chemical Bonding</h2>
<p>Chemical bonds are the forces that hold atoms together in compounds. Atoms bond to achieve a stable electron configuration (usually a full outer shell of 8 electrons – the octet rule).</p>

<h3>Types of Chemical Bonds</h3>
<ol>
<li>Ionic Bonds</li>
<li>Covalent Bonds</li>
<li>Metallic Bonds</li>
</ol>

<h3>Ionic Bonding</h3>
<p>Formed by the <strong>transfer of electrons</strong> from a metal atom to a non-metal atom. This creates oppositely charged ions that attract each other.</p>

<h4>Formation of Ions</h4>
<ul>
<li><strong>Cations:</strong> Positive ions formed when metals LOSE electrons. Group 1 → +1, Group 2 → +2, Group 13 → +3</li>
<li><strong>Anions:</strong> Negative ions formed when non-metals GAIN electrons. Group 7 → -1, Group 6 → -2, Group 5 → -3</li>
</ul>

<h4>Examples of Ionic Bond Formation</h4>
<p><strong>Sodium chloride (NaCl):</strong></p>
<ul>
<li>Na (2,8,1) loses 1 electron → Na⁺ (2,8)</li>
<li>Cl (2,8,7) gains 1 electron → Cl⁻ (2,8,8)</li>
<li>Na⁺ and Cl⁻ attract each other to form NaCl</li>
</ul>

<p><strong>Magnesium oxide (MgO):</strong></p>
<ul>
<li>Mg (2,8,2) loses 2 electrons → Mg²⁺ (2,8)</li>
<li>O (2,6) gains 2 electrons → O²⁻ (2,8)</li>
</ul>

<h4>Properties of Ionic Compounds</h4>
<ul>
<li>Form giant ionic lattice structures</li>
<li>High melting and boiling points (strong electrostatic forces)</li>
<li>Conduct electricity when dissolved in water or molten (free ions)</li>
<li>Do NOT conduct electricity when solid (ions fixed in lattice)</li>
<li>Soluble in water (usually) but insoluble in non-polar solvents</li>
<li>Hard and brittle</li>
</ul>

<h3>Covalent Bonding</h3>
<p>Formed by the <strong>sharing of electrons</strong> between non-metal atoms. Each shared pair forms one covalent bond.</p>

<h4>Types of Covalent Bonds</h4>
<ul>
<li><strong>Single bond:</strong> One shared pair of electrons (e.g., H-H in H₂, H-Cl in HCl)</li>
<li><strong>Double bond:</strong> Two shared pairs of electrons (e.g., O=O in O₂, O=C=O in CO₂)</li>
<li><strong>Triple bond:</strong> Three shared pairs of electrons (e.g., N≡N in N₂)</li>
</ul>

<h4>Common Covalent Molecules</h4>
<table border="1">
<tr><th>Molecule</th><th>Formula</th><th>Bonds</th></tr>
<tr><td>Hydrogen</td><td>H₂</td><td>Single</td></tr>
<tr><td>Chlorine</td><td>Cl₂</td><td>Single</td></tr>
<tr><td>Water</td><td>H₂O</td><td>2 Single</td></tr>
<tr><td>Ammonia</td><td>NH₃</td><td>3 Single</td></tr>
<tr><td>Methane</td><td>CH₄</td><td>4 Single</td></tr>
<tr><td>Oxygen</td><td>O₂</td><td>Double</td></tr>
<tr><td>Carbon dioxide</td><td>CO₂</td><td>2 Double</td></tr>
<tr><td>Nitrogen</td><td>N₂</td><td>Triple</td></tr>
<tr><td>Hydrogen chloride</td><td>HCl</td><td>Single</td></tr>
</table>

<h4>Properties of Simple Covalent Substances</h4>
<ul>
<li>Usually have low melting and boiling points (weak intermolecular forces)</li>
<li>Usually gases or liquids at room temperature</li>
<li>Do NOT conduct electricity (no free charged particles)</li>
<li>Can dissolve in non-polar solvents</li>
</ul>

<h3>Metallic Bonding</h3>
<p>In metals, the outermost electrons become delocalized (free to move), forming a "sea of electrons" surrounding positive metal ions (cations).</p>
<p>This explains why metals:</p>
<ul>
<li>Conduct electricity and heat (free electrons carry energy and charge)</li>
<li>Are malleable and ductile (layers of ions can slide over each other)</li>
<li>Have high melting/boiling points (strong electrostatic attraction)</li>
<li>Are shiny (free electrons reflect light)</li>
</ul>', 1),

(t4, 'Comparing Bond Types and Intermolecular Forces', '<h2>Comparing Bond Types and Intermolecular Forces</h2>

<h3>Ionic vs. Covalent vs. Metallic Bonds</h3>
<table border="1">
<tr><th>Feature</th><th>Ionic</th><th>Covalent</th><th>Metallic</th></tr>
<tr><td>Between</td><td>Metal + Non-metal</td><td>Non-metal + Non-metal</td><td>Metal atoms</td></tr>
<tr><td>How formed</td><td>Electron transfer</td><td>Electron sharing</td><td>Electron sea/delocalization</td></tr>
<tr><td>State at room temp</td><td>Solid</td><td>Solid, liquid, or gas</td><td>Solid (except Hg)</td></tr>
<tr><td>Melting point</td><td>High</td><td>Usually low</td><td>High (usually)</td></tr>
<tr><td>Conductivity</td><td>When molten/dissolved</td><td>No</td><td>Yes (always)</td></tr>
<tr><td>Solubility in water</td><td>Usually soluble</td><td>Variable</td><td>Insoluble</td></tr>
</table>

<h3>Electronegativity and Bond Type</h3>
<p>The difference in electronegativity (ΔEN) between bonding atoms determines bond type:</p>
<ul>
<li>ΔEN = 0: Pure covalent (e.g., H₂, O₂)</li>
<li>ΔEN = 0 to 1.7: Polar covalent (e.g., HCl, H₂O)</li>
<li>ΔEN > 1.7: Ionic (e.g., NaCl, MgO)</li>
</ul>

<h3>Polar Covalent Bonds</h3>
<p>When atoms of different electronegativities share electrons, the more electronegative atom attracts the electrons more strongly, creating partial charges (δ+ and δ-).</p>
<ul>
<li>H₂O is polar: O is δ-, H atoms are δ+</li>
<li>CO₂ has polar bonds but is non-polar overall (symmetric molecule)</li>
<li>HCl is a polar molecule</li>
</ul>

<h3>Intermolecular Forces</h3>
<p>Forces between molecules (weaker than covalent bonds):</p>
<ol>
<li><strong>Van der Waals forces (London dispersion forces):</strong> Weakest; present in all molecules; due to temporary dipoles. Stronger in larger molecules.</li>
<li><strong>Dipole-dipole interactions:</strong> Between polar molecules; stronger than van der Waals</li>
<li><strong>Hydrogen bonds:</strong> Strongest intermolecular force; occurs when H is bonded to F, O, or N (highly electronegative atoms). Explains:
  <ul>
    <li>High boiling point of water</li>
    <li>Ice being less dense than liquid water</li>
    <li>High surface tension of water</li>
  </ul>
</li>
</ol>

<h3>Giant Covalent Structures</h3>
<p>Some covalent substances form giant 3D networks of atoms instead of simple molecules.</p>
<table border="1">
<tr><th>Substance</th><th>Properties</th></tr>
<tr><td>Diamond (carbon)</td><td>Very hard; very high melting point; does not conduct electricity; each C bonded to 4 others tetrahedrally</td></tr>
<tr><td>Graphite (carbon)</td><td>Soft and slippery (layers slide over each other); conducts electricity (delocalized electrons); high melting point; used as lubricant and electrode</td></tr>
<tr><td>Silicon dioxide (SiO₂)</td><td>Very hard; high melting point; does not conduct electricity</td></tr>
</table>

<h3>Common Ions to Know for WASSCE</h3>
<table border="1">
<tr><th>Ion</th><th>Formula</th><th>Ion</th><th>Formula</th></tr>
<tr><td>Ammonium</td><td>NH₄⁺</td><td>Hydroxide</td><td>OH⁻</td></tr>
<tr><td>Nitrate</td><td>NO₃⁻</td><td>Sulfate</td><td>SO₄²⁻</td></tr>
<tr><td>Carbonate</td><td>CO₃²⁻</td><td>Phosphate</td><td>PO₄³⁻</td></tr>
<tr><td>Hydrogencarbonate</td><td>HCO₃⁻</td><td>Chloride</td><td>Cl⁻</td></tr>
<tr><td>Oxide</td><td>O²⁻</td><td>Sulfide</td><td>S²⁻</td></tr>
</table>', 2);

-- ============================================================
-- TOPIC 5: Chemical Reactions and Equations
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t5;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t5, 'Types of Chemical Reactions', '<h2>Chemical Reactions and Equations</h2>

<h3>What is a Chemical Reaction?</h3>
<p>A chemical reaction occurs when substances (reactants) are converted into new substances (products) through the breaking and forming of chemical bonds. Matter is conserved – the total mass of reactants equals the total mass of products (Law of Conservation of Mass).</p>

<h3>Types of Chemical Reactions</h3>

<h4>1. Combination (Synthesis) Reactions</h4>
<p>Two or more substances combine to form ONE new substance.</p>
<p>A + B → AB</p>
<ul>
<li>2H₂ + O₂ → 2H₂O</li>
<li>2Na + Cl₂ → 2NaCl</li>
<li>CaO + CO₂ → CaCO₃</li>
<li>SO₃ + H₂O → H₂SO₄</li>
</ul>

<h4>2. Decomposition Reactions</h4>
<p>One compound breaks down into two or more simpler substances.</p>
<p>AB → A + B</p>
<ul>
<li>2H₂O → 2H₂ + O₂ (electrolysis)</li>
<li>2H₂O₂ → 2H₂O + O₂ (catalytic decomposition)</li>
<li>CaCO₃ → CaO + CO₂ (thermal decomposition)</li>
<li>2HgO → 2Hg + O₂ (thermal decomposition)</li>
</ul>

<h4>3. Displacement (Single Replacement) Reactions</h4>
<p>A more reactive element replaces a less reactive element from its compound.</p>
<p>A + BC → AC + B</p>
<ul>
<li>Fe + CuSO₄ → FeSO₄ + Cu (iron displaces copper)</li>
<li>Zn + 2HCl → ZnCl₂ + H₂ (zinc displaces hydrogen)</li>
<li>Cl₂ + 2NaBr → 2NaCl + Br₂ (chlorine displaces bromine)</li>
</ul>

<h4>4. Double Displacement (Metathesis) Reactions</h4>
<p>Ions from two compounds exchange partners, often forming a precipitate or water.</p>
<p>AB + CD → AD + CB</p>
<ul>
<li>AgNO₃ + NaCl → AgCl↓ + NaNO₃</li>
<li>BaCl₂ + Na₂SO₄ → BaSO₄↓ + 2NaCl</li>
<li>HCl + NaOH → NaCl + H₂O (neutralization)</li>
</ul>

<h4>5. Neutralization Reactions</h4>
<p>An acid reacts with a base to form a salt and water.</p>
<ul>
<li>H₂SO₄ + 2NaOH → Na₂SO₄ + 2H₂O</li>
<li>HNO₃ + KOH → KNO₃ + H₂O</li>
</ul>

<h4>6. Combustion Reactions</h4>
<p>A fuel reacts with oxygen to produce energy + carbon dioxide + water (complete combustion of hydrocarbons).</p>
<ul>
<li>CH₄ + 2O₂ → CO₂ + 2H₂O (complete combustion)</li>
<li>2CH₄ + 3O₂ → 2CO + 4H₂O (incomplete – forms CO, harmful)</li>
<li>C + O₂ → CO₂</li>
</ul>

<h4>7. Oxidation-Reduction (Redox) Reactions</h4>
<p>Involve transfer of electrons. Oxidation and reduction always occur simultaneously.</p>
<ul>
<li><strong>Oxidation:</strong> Loss of electrons (OIL – Oxidation Is Loss); increase in oxidation number</li>
<li><strong>Reduction:</strong> Gain of electrons (RIG – Reduction Is Gain); decrease in oxidation number</li>
<li>Oxidizing agent: gains electrons (is reduced)</li>
<li>Reducing agent: loses electrons (is oxidized)</li>
</ul>

<h3>Precipitation Reactions</h3>
<p>A precipitate is an insoluble solid formed when two solutions are mixed.</p>
<p><strong>Common precipitates and their colors:</strong></p>
<table border="1">
<tr><th>Compound</th><th>Formula</th><th>Color</th></tr>
<tr><td>Silver chloride</td><td>AgCl</td><td>White</td></tr>
<tr><td>Barium sulfate</td><td>BaSO₄</td><td>White</td></tr>
<tr><td>Lead iodide</td><td>PbI₂</td><td>Bright yellow</td></tr>
<tr><td>Copper(II) hydroxide</td><td>Cu(OH)₂</td><td>Blue</td></tr>
<tr><td>Iron(III) hydroxide</td><td>Fe(OH)₃</td><td>Rust brown</td></tr>
<tr><td>Iron(II) hydroxide</td><td>Fe(OH)₂</td><td>Pale green</td></tr>
<tr><td>Zinc hydroxide</td><td>Zn(OH)₂</td><td>White</td></tr>
<tr><td>Calcium carbonate</td><td>CaCO₃</td><td>White</td></tr>
</table>', 1),

(t5, 'Writing and Balancing Chemical Equations', '<h2>Writing and Balancing Chemical Equations</h2>

<h3>Word Equations</h3>
<p>Describe a reaction using the names of reactants and products.</p>
<p>Example: Magnesium + Oxygen → Magnesium oxide</p>

<h3>Chemical Symbol Equations</h3>
<p>Use chemical symbols and formulae. Must be balanced – same number of each atom on both sides.</p>

<h3>Steps for Balancing Equations</h3>
<ol>
<li>Write the correct chemical formulae for all reactants and products</li>
<li>Count the number of each type of atom on each side</li>
<li>Add coefficients (large numbers in front of formulae) to balance atoms – never change the subscript numbers in formulae</li>
<li>Start with the most complex molecule or the element that appears fewest times</li>
<li>Check all atoms are balanced</li>
<li>Check that the charges balance (for ionic equations)</li>
</ol>

<h3>Practice Examples</h3>

<h4>Example 1: Iron + Oxygen</h4>
<p>Unbalanced: Fe + O₂ → Fe₂O₃</p>
<p>Balanced: <strong>4Fe + 3O₂ → 2Fe₂O₃</strong></p>

<h4>Example 2: Hydrogen + Nitrogen → Ammonia</h4>
<p>Unbalanced: H₂ + N₂ → NH₃</p>
<p>Balanced: <strong>3H₂ + N₂ → 2NH₃</strong></p>

<h4>Example 3: Glucose combustion</h4>
<p>Unbalanced: C₆H₁₂O₆ + O₂ → CO₂ + H₂O</p>
<p>Balanced: <strong>C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O</strong></p>

<h3>State Symbols</h3>
<ul>
<li>(s) – solid</li>
<li>(l) – liquid</li>
<li>(g) – gas</li>
<li>(aq) – aqueous (dissolved in water)</li>
<li>↑ – gas produced</li>
<li>↓ – precipitate formed</li>
</ul>

<h3>Law of Conservation of Mass</h3>
<p>In any chemical reaction, the total mass of the reactants equals the total mass of the products. Atoms are neither created nor destroyed – they are rearranged.</p>
<p>This law is the basis for balancing chemical equations.</p>

<h3>Energy Changes in Chemical Reactions</h3>
<h4>Exothermic Reactions</h4>
<p>Release energy (usually as heat) to surroundings. Temperature of surroundings increases.</p>
<ul>
<li>Products have less energy than reactants</li>
<li>ΔH is negative (ΔH < 0)</li>
<li>Examples: Combustion, neutralization, respiration, dissolving NaOH, rusting of iron</li>
</ul>

<h4>Endothermic Reactions</h4>
<p>Absorb energy from surroundings. Temperature of surroundings decreases.</p>
<ul>
<li>Products have more energy than reactants</li>
<li>ΔH is positive (ΔH > 0)</li>
<li>Examples: Photosynthesis, thermal decomposition, dissolving ammonium nitrate, cooking food</li>
</ul>

<h3>Factors Affecting Rate of Reaction</h3>
<p>The rate of a reaction is the speed at which reactants are converted to products.</p>
<table border="1">
<tr><th>Factor</th><th>Effect on Rate</th><th>Reason</th></tr>
<tr><td>Concentration</td><td>Increases with higher concentration</td><td>More particles in same volume → more frequent collisions</td></tr>
<tr><td>Temperature</td><td>Increases with higher temperature</td><td>Particles move faster → more energetic and frequent collisions</td></tr>
<tr><td>Surface area</td><td>Increases with greater surface area</td><td>More particles exposed → more collisions possible</td></tr>
<tr><td>Catalyst</td><td>Increases rate</td><td>Provides alternative pathway with lower activation energy</td></tr>
<tr><td>Pressure (gases)</td><td>Increases with higher pressure</td><td>Particles closer together → more frequent collisions</td></tr>
<tr><td>Nature of reactants</td><td>Depends on substance</td><td>Some bonds are easier to break than others</td></tr>
</table>

<h3>Collision Theory</h3>
<p>For a chemical reaction to occur, particles must:</p>
<ol>
<li>Collide with each other</li>
<li>Have sufficient energy (activation energy) to break existing bonds</li>
<li>Collide in the correct orientation</li>
</ol>
<p><strong>Activation energy (Ea):</strong> The minimum energy required for a reaction to occur. Catalysts lower the activation energy needed.</p>', 2),

(t5, 'The Mole Concept and Calculations', '<h2>The Mole Concept and Chemical Calculations</h2>

<h3>The Mole</h3>
<p>The mole is the SI unit for amount of substance. One mole contains exactly 6.022 × 10²³ particles (Avogadro''s number/constant, Nₐ).</p>
<p>This applies to atoms, molecules, ions, electrons, or any other particles.</p>

<h3>Molar Mass</h3>
<p>The mass of one mole of a substance, in grams per mole (g/mol).</p>
<p>Numerically equal to the relative atomic mass (for elements) or relative formula mass (for compounds).</p>
<p><strong>Examples:</strong></p>
<ul>
<li>Molar mass of C = 12 g/mol</li>
<li>Molar mass of H₂O = 2(1) + 16 = 18 g/mol</li>
<li>Molar mass of NaCl = 23 + 35.5 = 58.5 g/mol</li>
<li>Molar mass of H₂SO₄ = 2(1) + 32 + 4(16) = 98 g/mol</li>
<li>Molar mass of CaCO₃ = 40 + 12 + 3(16) = 100 g/mol</li>
</ul>

<h3>Key Formulae</h3>
<p><strong>Number of moles = Mass ÷ Molar Mass</strong><br>
n = m/M</p>

<p><strong>Mass = Moles × Molar Mass</strong><br>
m = n × M</p>

<p><strong>Number of particles = Moles × Avogadro''s number</strong><br>
N = n × 6.022 × 10²³</p>

<p><strong>Concentration (mol/dm³) = Moles ÷ Volume (in dm³)</strong><br>
c = n/V</p>

<p><strong>Volume of gas at STP</strong> (Standard Temperature and Pressure: 0°C, 1 atm)<br>
1 mole of any gas = 22.4 dm³ (litres) at STP<br>
1 mole of any gas = 24 dm³ at room temperature (25°C)</p>

<h3>Worked Example 1</h3>
<p>How many moles are in 44 g of CO₂?</p>
<p>Molar mass of CO₂ = 12 + 2(16) = 44 g/mol</p>
<p>n = 44 ÷ 44 = <strong>1 mole</strong></p>

<h3>Worked Example 2</h3>
<p>What mass of hydrogen gas is produced when 2 mol of zinc reacts with excess hydrochloric acid?</p>
<p>Zn + 2HCl → ZnCl₂ + H₂</p>
<p>From equation: 1 mol Zn produces 1 mol H₂</p>
<p>So 2 mol Zn produces 2 mol H₂</p>
<p>Mass of H₂ = 2 × 2 = <strong>4 g</strong></p>

<h3>Percentage Composition</h3>
<p>% by mass of element = (Mass of element in formula ÷ Molar mass of compound) × 100</p>
<p>Example: % of Fe in Fe₂O₃</p>
<p>Molar mass of Fe₂O₃ = 2(56) + 3(16) = 160 g/mol</p>
<p>% Fe = (112 ÷ 160) × 100 = 70%</p>

<h3>Empirical and Molecular Formulae</h3>
<ul>
<li><strong>Empirical formula:</strong> Simplest whole-number ratio of atoms in a compound (e.g., CH₂ for butene)</li>
<li><strong>Molecular formula:</strong> Actual number of atoms in one molecule (e.g., C₄H₈ for butene)</li>
</ul>
<p><strong>To find empirical formula from percentages:</strong></p>
<ol>
<li>Divide each percentage by the element''s atomic mass → gives mole ratio</li>
<li>Divide each result by the smallest value → gives simplest ratio</li>
<li>Round to nearest whole number</li>
</ol>', 3);

END $$;
