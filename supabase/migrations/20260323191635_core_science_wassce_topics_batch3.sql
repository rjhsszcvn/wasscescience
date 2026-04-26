/*
  # Core Science WASSCE Topics Batch 3 (Topics 11-15)

  Topics:
  11. Photosynthesis and Respiration
  12. Genetics and Heredity
  13. Ecology and Environment
  14. Force, Motion and Energy
  15. Electricity and Magnetism
*/

INSERT INTO topics (subject_id, name, description, content, order_index) VALUES

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Photosynthesis and Respiration',
 'Photosynthesis process, factors affecting it, aerobic and anaerobic respiration, and the carbon cycle',
 '<h2>Photosynthesis and Respiration</h2>

<h3>11.1 Photosynthesis</h3>
<p>Photosynthesis is the process by which green plants use light energy, carbon dioxide and water to manufacture glucose and release oxygen.</p>

<h4>Word Equation</h4>
<p>Carbon dioxide + Water + Light energy gives Glucose + Oxygen</p>

<h4>Chemical Equation</h4>
<p>6CO2 + 6H2O + light energy gives C6H12O6 + 6O2</p>

<h4>Where it Occurs</h4>
<ul>
  <li>In the <strong>chloroplasts</strong> of green plant cells</li>
  <li>Chlorophyll (green pigment) absorbs light energy (mainly red and blue wavelengths)</li>
  <li>Most active in palisade mesophyll cells of leaves</li>
</ul>

<h4>Leaf Adaptations for Photosynthesis</h4>
<ul>
  <li>Broad and flat - large surface area for light absorption</li>
  <li>Thin - short diffusion distance for gases</li>
  <li>Transparent upper epidermis - allows light through</li>
  <li>Palisade cells packed with chloroplasts near upper surface</li>
  <li>Stomata (pores) in lower epidermis for gas exchange</li>
  <li>Spongy mesophyll with air spaces for gas movement</li>
  <li>Network of veins - supply water and minerals, remove sugars</li>
</ul>

<h4>Factors Affecting Rate of Photosynthesis</h4>
<ul>
  <li><strong>Light intensity:</strong> More light = faster rate (up to a maximum)</li>
  <li><strong>Carbon dioxide concentration:</strong> More CO2 = faster rate (up to a maximum)</li>
  <li><strong>Temperature:</strong> Higher temperature = faster rate (up to about 40 degrees C; above this enzymes denature)</li>
  <li><strong>Water availability:</strong> Water is a raw material; shortage limits photosynthesis</li>
  <li><strong>Chlorophyll concentration:</strong> More chlorophyll = more light absorbed</li>
</ul>

<h3>11.2 Respiration</h3>
<p>Respiration is the process by which living cells release energy from food (glucose) for use in metabolic processes.</p>

<h4>Aerobic Respiration (with oxygen)</h4>
<p>Word equation: Glucose + Oxygen gives Carbon dioxide + Water + Energy (ATP)</p>
<p>Chemical equation: C6H12O6 + 6O2 gives 6CO2 + 6H2O + 38 ATP</p>
<ul>
  <li>Occurs in mitochondria</li>
  <li>Releases a large amount of energy (38 ATP per glucose molecule)</li>
  <li>Complete breakdown of glucose</li>
</ul>

<h4>Anaerobic Respiration (without oxygen)</h4>
<p>Occurs when oxygen is unavailable or in short supply.</p>

<p><strong>In animals and humans (muscle cells):</strong></p>
<p>Glucose gives Lactic acid + small amount of energy</p>
<ul>
  <li>Causes muscle fatigue and cramps</li>
  <li>Lactic acid is an oxygen debt that must be repaid later</li>
</ul>

<p><strong>In yeast and plants (fermentation):</strong></p>
<p>Glucose gives Ethanol + Carbon dioxide + small amount of energy</p>
<ul>
  <li>Used in brewing alcohol and bread making</li>
  <li>CO2 causes bread to rise</li>
</ul>

<h4>Comparison: Aerobic vs Anaerobic</h4>
<ul>
  <li>Aerobic: Requires oxygen | Anaerobic: No oxygen required</li>
  <li>Aerobic: Produces CO2 and H2O | Anaerobic in animals: Produces lactic acid; in yeast: ethanol + CO2</li>
  <li>Aerobic: Produces 38 ATP | Anaerobic: Produces 2 ATP (much less energy)</li>
  <li>Aerobic: Complete glucose breakdown | Anaerobic: Partial glucose breakdown</li>
</ul>

<h3>11.3 The Carbon Cycle</h3>
<ul>
  <li><strong>Photosynthesis:</strong> Removes CO2 from atmosphere; fixes carbon in organic molecules</li>
  <li><strong>Respiration:</strong> Returns CO2 to atmosphere by breaking down organic molecules</li>
  <li><strong>Combustion:</strong> Burns fossil fuels and wood; releases CO2</li>
  <li><strong>Decomposition:</strong> Bacteria and fungi break down dead organic matter; release CO2</li>
  <li><strong>Fossilisation:</strong> Carbon stored long-term in coal, oil, gas</li>
</ul>

<p>Human activities (burning fossil fuels, deforestation) are increasing atmospheric CO2, causing global warming (greenhouse effect).</p>',
 11),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Genetics and Heredity',
 'DNA, genes, chromosomes, Mendel laws, monohybrid crosses, sex determination and mutations',
 '<h2>Genetics and Heredity</h2>

<h3>12.1 Key Terms</h3>
<ul>
  <li><strong>Genetics:</strong> The study of heredity and variation</li>
  <li><strong>Heredity:</strong> Passing of characteristics from parents to offspring</li>
  <li><strong>DNA (Deoxyribonucleic acid):</strong> The molecule that carries genetic information</li>
  <li><strong>Gene:</strong> A segment of DNA that codes for a specific protein/characteristic</li>
  <li><strong>Chromosome:</strong> Thread-like structure made of DNA and protein; found in nucleus; humans have 46 (23 pairs)</li>
  <li><strong>Allele:</strong> An alternative form of a gene (e.g., tall or short)</li>
  <li><strong>Dominant allele:</strong> Allele that is expressed when present (represented by capital letter)</li>
  <li><strong>Recessive allele:</strong> Allele only expressed when two copies are present (represented by lowercase letter)</li>
  <li><strong>Genotype:</strong> Genetic makeup of an organism (e.g., Tt, TT, tt)</li>
  <li><strong>Phenotype:</strong> Observable characteristic/trait resulting from genotype (e.g., tall, short)</li>
  <li><strong>Homozygous:</strong> Both alleles the same (TT or tt)</li>
  <li><strong>Heterozygous:</strong> Two different alleles (Tt)</li>
</ul>

<h3>12.2 Mendel Laws of Inheritance</h3>

<h4>Law of Segregation</h4>
<p>Each organism has two alleles for each trait; these alleles separate during gamete formation so each gamete contains only ONE allele for each trait.</p>

<h4>Law of Independent Assortment</h4>
<p>Alleles for different traits are distributed to gametes independently of one another (genes on different chromosomes).</p>

<h3>12.3 Monohybrid Cross</h3>
<p>A monohybrid cross involves ONE pair of contrasting characteristics.</p>

<h4>Example: Tall (T) vs Short (t) Pea Plants</h4>
<p>Cross between two heterozygous tall plants (Tt x Tt):</p>
<ul>
  <li>Parents: Tt x Tt</li>
  <li>Gametes: T or t | T or t</li>
  <li>Offspring: TT, Tt, Tt, tt</li>
  <li>Genotype ratio: 1 TT : 2 Tt : 1 tt</li>
  <li>Phenotype ratio: 3 Tall : 1 Short</li>
</ul>

<p>Cross between heterozygous tall (Tt) and homozygous short (tt):</p>
<ul>
  <li>Offspring: Tt, Tt, tt, tt</li>
  <li>Phenotype ratio: 1 Tall : 1 Short</li>
</ul>

<h3>12.4 Codominance</h3>
<p>When both alleles are expressed equally in the heterozygote (neither dominant nor recessive).</p>
<p>Example: ABO blood groups - both A and B are codominant; O is recessive</p>

<h3>12.5 Sex Determination</h3>
<ul>
  <li>Sex chromosomes: XX in females, XY in males</li>
  <li>22 pairs of autosomes + 1 pair of sex chromosomes in humans</li>
  <li>Sperm can carry X or Y chromosome; egg always carries X</li>
  <li>Probability of male or female baby = 50% each</li>
</ul>

<h3>12.6 Sex-Linked Traits</h3>
<p>Traits controlled by genes on the X chromosome (Y chromosome is smaller, carries fewer genes).</p>
<ul>
  <li>Examples: colour blindness, haemophilia</li>
  <li>Males (XY) are more likely to show sex-linked recessive conditions because they have only one X chromosome</li>
  <li>Females (XX) can be carriers (have one recessive allele but show dominant phenotype)</li>
</ul>

<h3>12.7 Mutation</h3>
<ul>
  <li>A mutation is a change in the DNA sequence (gene mutation) or chromosome structure/number</li>
  <li><strong>Mutagens:</strong> Agents that increase the rate of mutation</li>
  <li>Physical mutagens: X-rays, UV radiation</li>
  <li>Chemical mutagens: Certain dyes, benzene, tobacco smoke</li>
  <li>Biological mutagens: Some viruses</li>
</ul>

<h4>Examples of Genetic Disorders</h4>
<ul>
  <li><strong>Sickle cell anaemia:</strong> Gene mutation; abnormal haemoglobin; recessive condition</li>
  <li><strong>Down syndrome:</strong> Chromosome mutation; extra chromosome 21 (trisomy 21)</li>
  <li><strong>Haemophilia:</strong> Sex-linked recessive; blood does not clot properly</li>
  <li><strong>Albinism:</strong> Recessive; lack of melanin pigment</li>
</ul>',
 12),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Ecology and Environment',
 'Ecosystems, food chains, food webs, nutrient cycles, human impact on the environment and conservation',
 '<h2>Ecology and Environment</h2>

<h3>13.1 Ecological Terms</h3>
<ul>
  <li><strong>Ecology:</strong> The study of the relationships between organisms and their environment</li>
  <li><strong>Ecosystem:</strong> A community of organisms interacting with their non-living environment in a specific area</li>
  <li><strong>Habitat:</strong> The place where an organism lives (provides food, shelter, and suitable conditions)</li>
  <li><strong>Population:</strong> All organisms of the same species living in the same area</li>
  <li><strong>Community:</strong> All populations of different species living in the same area</li>
  <li><strong>Biome:</strong> Large-scale ecosystem characterised by climate and dominant vegetation (forest, savannah, desert)</li>
  <li><strong>Niche:</strong> The role and position of an organism within its ecosystem</li>
</ul>

<h3>13.2 Feeding Relationships</h3>

<h4>Types of Organisms</h4>
<ul>
  <li><strong>Producers (autotrophs):</strong> Make their own food through photosynthesis (green plants, algae)</li>
  <li><strong>Primary consumers (herbivores):</strong> Eat producers (grasshopper, rabbit, cow)</li>
  <li><strong>Secondary consumers (carnivores/omnivores):</strong> Eat primary consumers</li>
  <li><strong>Tertiary consumers:</strong> Eat secondary consumers</li>
  <li><strong>Decomposers:</strong> Break down dead organic matter (bacteria, fungi); return nutrients to soil</li>
</ul>

<h4>Food Chain</h4>
<p>A linear sequence showing feeding relationships and energy flow.</p>
<p>Example: Grass → Grasshopper → Frog → Snake → Eagle</p>
<ul>
  <li>Arrows show the direction of energy flow (from eaten to eater)</li>
  <li>Energy is lost at each trophic level (as heat, movement, excretion)</li>
  <li>Usually no more than 4-5 levels</li>
</ul>

<h4>Food Web</h4>
<p>A network of interconnected food chains showing all feeding relationships in an ecosystem. More realistic than a food chain.</p>

<h4>Ecological Pyramids</h4>
<ul>
  <li><strong>Pyramid of numbers:</strong> Number of organisms at each trophic level</li>
  <li><strong>Pyramid of biomass:</strong> Total mass of organisms at each trophic level</li>
  <li><strong>Pyramid of energy:</strong> Energy available at each trophic level; always a true pyramid shape</li>
</ul>

<h3>13.3 Nutrient Cycles</h3>

<h4>Water Cycle</h4>
<ul>
  <li>Evaporation and transpiration: water vapour enters atmosphere</li>
  <li>Condensation: water vapour forms clouds</li>
  <li>Precipitation: rain, snow, hail return water to land</li>
  <li>Runoff and infiltration: water returns to rivers, lakes, groundwater</li>
</ul>

<h4>Nitrogen Cycle</h4>
<ul>
  <li>Nitrogen fixation: N2 converted to ammonia by nitrogen-fixing bacteria (in soil and root nodules of legumes) or lightning</li>
  <li>Nitrification: ammonia converted to nitrites then nitrates by nitrifying bacteria</li>
  <li>Assimilation: plants absorb nitrates from soil; build amino acids and proteins</li>
  <li>Ammonification: decomposers break down dead organisms; release ammonia</li>
  <li>Denitrification: denitrifying bacteria convert nitrates back to N2 gas</li>
</ul>

<h3>13.4 Human Impact on Environment</h3>

<h4>Environmental Problems</h4>
<ul>
  <li><strong>Deforestation:</strong> Loss of habitat, soil erosion, reduced rainfall, increased CO2</li>
  <li><strong>Pollution:</strong> Air (CO, SO2, NO2, particulates), Water (sewage, fertilisers, oil spills), Soil (pesticides, heavy metals)</li>
  <li><strong>Global warming:</strong> Increase in greenhouse gases (CO2, CH4) traps heat; causes climate change, rising sea levels</li>
  <li><strong>Eutrophication:</strong> Excess fertiliser in water bodies; algal bloom; oxygen depletion; death of aquatic organisms</li>
  <li><strong>Ozone depletion:</strong> CFCs destroy ozone layer; more UV radiation reaches Earth; increases skin cancer risk</li>
  <li><strong>Acid rain:</strong> SO2 and NO2 from burning fossil fuels dissolve in rain; damages forests, lakes, buildings</li>
</ul>

<h4>Conservation</h4>
<ul>
  <li>Establishing nature reserves and national parks</li>
  <li>Reforestation (planting trees)</li>
  <li>Reducing pollution (catalytic converters, renewable energy)</li>
  <li>Sustainable fishing and farming practices</li>
  <li>Captive breeding programmes for endangered species</li>
  <li>Seed banks to preserve plant genetic diversity</li>
</ul>',
 13),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Force, Motion and Energy',
 'Newton laws of motion, types of forces, energy forms, work, power and simple machines',
 '<h2>Force, Motion and Energy</h2>

<h3>14.1 Forces</h3>
<p>A force is a push or pull that changes or tends to change the state of rest or motion of an object.</p>
<p>SI unit of force: Newton (N)</p>

<h4>Types of Forces</h4>
<ul>
  <li><strong>Gravity:</strong> Attractive force between masses; gives objects weight</li>
  <li><strong>Normal force:</strong> Perpendicular reaction force from a surface</li>
  <li><strong>Friction:</strong> Force opposing relative motion between surfaces</li>
  <li><strong>Tension:</strong> Force transmitted through a string, rope, or wire</li>
  <li><strong>Applied force:</strong> Force applied by a person or object</li>
  <li><strong>Upthrust (buoyancy):</strong> Upward force from a fluid on a submerged object</li>
  <li><strong>Elastic/spring force:</strong> Force from a compressed or stretched elastic material</li>
</ul>

<h4>Mass vs Weight</h4>
<ul>
  <li><strong>Mass:</strong> Amount of matter in an object; measured in kg; constant everywhere</li>
  <li><strong>Weight:</strong> Gravitational force on an object; measured in N; varies with gravity</li>
  <li>Weight = mass x gravitational field strength (W = mg)</li>
  <li>On Earth: g = 10 N/kg (approximately)</li>
</ul>

<h3>14.2 Newton Laws of Motion</h3>

<h4>First Law (Law of Inertia)</h4>
<p>An object remains at rest or continues moving in a straight line at constant speed unless acted upon by an unbalanced (net) force.</p>

<h4>Second Law</h4>
<p>Force = mass x acceleration (F = ma)</p>
<p>A greater force produces greater acceleration; a greater mass requires greater force for the same acceleration.</p>

<h4>Third Law (Action-Reaction)</h4>
<p>For every action there is an equal and opposite reaction.</p>
<p>Example: When you push on a wall, the wall pushes back on you with equal force.</p>

<h3>14.3 Motion</h3>
<ul>
  <li><strong>Speed:</strong> Distance per unit time; scalar quantity; SI unit: m/s</li>
  <li><strong>Velocity:</strong> Speed in a specified direction; vector quantity; SI unit: m/s</li>
  <li><strong>Acceleration:</strong> Rate of change of velocity; SI unit: m/s2; a = (v - u) / t</li>
</ul>

<h4>Equations of Motion</h4>
<ul>
  <li>v = u + at</li>
  <li>s = ut + (1/2)at2</li>
  <li>v2 = u2 + 2as</li>
</ul>
<p>where u = initial velocity, v = final velocity, a = acceleration, t = time, s = displacement</p>

<h3>14.4 Energy</h3>
<p>Energy is the ability to do work. It cannot be created or destroyed, only converted from one form to another (Law of Conservation of Energy).</p>

<h4>Forms of Energy</h4>
<ul>
  <li>Kinetic energy (KE): Energy of motion; KE = (1/2)mv2</li>
  <li>Potential energy (PE): Stored energy; Gravitational PE = mgh</li>
  <li>Chemical energy: Stored in chemical bonds (food, fuel, batteries)</li>
  <li>Thermal (heat) energy: Kinetic energy of particles</li>
  <li>Electrical energy: Energy of moving charges</li>
  <li>Light (radiant) energy: Electromagnetic radiation</li>
  <li>Sound energy: Mechanical wave energy</li>
  <li>Nuclear energy: Energy stored in atomic nuclei</li>
</ul>

<h3>14.5 Work and Power</h3>
<ul>
  <li><strong>Work:</strong> W = F x d (force times distance in direction of force); SI unit: Joule (J)</li>
  <li><strong>Power:</strong> Rate of doing work; P = W/t = Energy/time; SI unit: Watt (W)</li>
  <li><strong>Efficiency:</strong> Efficiency (%) = (useful energy output / total energy input) x 100</li>
</ul>

<h3>14.6 Simple Machines</h3>
<p>A simple machine multiplies or changes the direction of a force.</p>
<ul>
  <li><strong>Mechanical advantage (MA):</strong> Load divided by effort</li>
  <li><strong>Lever:</strong> Rigid bar pivoted at a fulcrum (crowbar, seesaw, scissors)</li>
  <li><strong>Pulley:</strong> Changes direction of force; multiple pulleys reduce effort needed</li>
  <li><strong>Inclined plane:</strong> Ramp; reduces effort needed to raise a load</li>
  <li><strong>Wheel and axle:</strong> Doorknob, steering wheel</li>
  <li><strong>Screw:</strong> Inclined plane wrapped around a cylinder (bolts, jar lids)</li>
  <li><strong>Wedge:</strong> Two inclined planes back-to-back (axe, knife)</li>
</ul>',
 14),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Electricity and Magnetism',
 'Electric circuits, current, voltage, resistance, Ohm law, magnetic fields and electromagnetic induction',
 '<h2>Electricity and Magnetism</h2>

<h3>15.1 Electric Charge and Current</h3>
<ul>
  <li><strong>Electric charge:</strong> Property of matter; positive (+) and negative (-); measured in Coulombs (C)</li>
  <li><strong>Electric current (I):</strong> Rate of flow of charge; I = Q/t; SI unit: Ampere (A)</li>
  <li><strong>Measured with:</strong> Ammeter (connected in series)</li>
</ul>

<h3>15.2 Voltage and Resistance</h3>
<ul>
  <li><strong>Voltage/Potential difference (V):</strong> Energy transferred per unit charge; SI unit: Volt (V)</li>
  <li><strong>Measured with:</strong> Voltmeter (connected in parallel)</li>
  <li><strong>Resistance (R):</strong> Opposition to current flow; SI unit: Ohm (O)</li>
</ul>

<h4>Ohm Law</h4>
<p>V = IR (Voltage = Current x Resistance)</p>
<p>Applies when temperature is constant (ohmic conductors)</p>

<h3>15.3 Series and Parallel Circuits</h3>

<h4>Series Circuit</h4>
<ul>
  <li>Components connected one after another in a single loop</li>
  <li>Same current flows through all components: I total = I1 = I2</li>
  <li>Voltage splits: V total = V1 + V2 + V3</li>
  <li>Resistance adds: R total = R1 + R2 + R3</li>
  <li>If one component fails, the whole circuit breaks</li>
</ul>

<h4>Parallel Circuit</h4>
<ul>
  <li>Components connected across the same two points</li>
  <li>Voltage is the same across all branches: V total = V1 = V2</li>
  <li>Current splits: I total = I1 + I2 + I3</li>
  <li>Total resistance is less than the smallest individual resistance</li>
  <li>If one component fails, others continue working</li>
  <li>Used in home wiring</li>
</ul>

<h3>15.4 Electrical Power and Energy</h3>
<ul>
  <li>Power: P = IV = I2R = V2/R; SI unit: Watt (W)</li>
  <li>Electrical energy: E = Pt = IVt; SI unit: Joule (J)</li>
  <li>Practical unit: kilowatt-hour (kWh); 1 kWh = 3,600,000 J</li>
</ul>

<h3>15.5 Magnetism</h3>
<ul>
  <li>Magnets have north and south poles</li>
  <li>Like poles repel; unlike poles attract</li>
  <li>Magnetic field: Region around a magnet where magnetic force acts; shown by field lines going from N to S outside the magnet</li>
  <li>Magnetic materials: iron, nickel, cobalt, and their alloys</li>
</ul>

<h4>Electromagnets</h4>
<ul>
  <li>A coil of wire carrying electric current creates a magnetic field (solenoid)</li>
  <li>Adding an iron core strengthens the magnetic field</li>
  <li>Applications: electric bells, relays, motors, MRI scanners, loudspeakers</li>
</ul>

<h4>Electromagnetic Induction</h4>
<ul>
  <li>A changing magnetic field induces (creates) an electric current in a conductor</li>
  <li>Discovered by Michael Faraday</li>
  <li>Induced EMF increases when: coil has more turns, stronger magnet, faster relative motion</li>
  <li><strong>Generator:</strong> Converts mechanical energy to electrical energy (electromagnetic induction)</li>
  <li><strong>Transformer:</strong> Changes AC voltage; step-up (increase voltage) and step-down (decrease voltage)</li>
</ul>

<h3>15.6 Domestic Electricity</h3>
<ul>
  <li>Mains electricity is alternating current (AC); frequency 50 Hz in most countries</li>
  <li>Three-pin plug: Live wire (brown/red), Neutral wire (blue/black), Earth wire (green-yellow/green)</li>
  <li>Fuse: Safety device; melts and breaks circuit if current is too high</li>
  <li>Circuit breaker: Automatically switches off circuit when current exceeds safe level</li>
  <li>Earth wire: Provides safe path for fault current; protects against electric shock</li>
</ul>',
 15);
