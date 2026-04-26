/*
  # Core Science WASSCE Topics Batch 1 (Topics 1-5)

  Inserts the first 5 WASSCE Core Science topics with comprehensive HTML notes.
  Subject id: 4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe

  Topics:
  1. Scientific Method and Laboratory Safety
  2. Matter and Its Properties
  3. Atomic Structure and Periodic Table
  4. Chemical Bonding
  5. Chemical Reactions and Equations
*/

INSERT INTO topics (subject_id, name, description, content, order_index) VALUES

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Scientific Method and Laboratory Safety',
 'Steps of the scientific method, variables, hypothesis, laboratory safety rules and equipment',
 '<h2>Scientific Method and Laboratory Safety</h2>

<h3>1.1 The Scientific Method</h3>
<p>The scientific method is a systematic approach to investigating natural phenomena through observation and experimentation.</p>

<h4>Steps of the Scientific Method</h4>
<ol>
  <li><strong>Observation</strong> - Notice and describe a phenomenon</li>
  <li><strong>Problem Identification</strong> - State the question to be answered</li>
  <li><strong>Hypothesis</strong> - Propose a testable explanation</li>
  <li><strong>Experimentation</strong> - Design and conduct controlled experiments</li>
  <li><strong>Data Collection</strong> - Record results accurately</li>
  <li><strong>Analysis</strong> - Interpret data using graphs, tables, statistics</li>
  <li><strong>Conclusion</strong> - Accept or reject the hypothesis based on evidence</li>
  <li><strong>Communication</strong> - Share findings with the scientific community</li>
</ol>

<h4>Key Terms</h4>
<ul>
  <li><strong>Hypothesis:</strong> A testable prediction (if...then...)</li>
  <li><strong>Independent variable:</strong> What you deliberately change</li>
  <li><strong>Dependent variable:</strong> What you measure as a result</li>
  <li><strong>Controlled variable:</strong> What you keep constant</li>
  <li><strong>Control experiment:</strong> Run without the independent variable to provide a baseline</li>
  <li><strong>Scientific theory:</strong> A well-tested explanation supported by extensive evidence</li>
  <li><strong>Scientific law:</strong> A description of a pattern in nature (e.g., law of conservation of mass)</li>
</ul>

<h3>1.2 Laboratory Safety</h3>

<h4>Personal Protective Equipment (PPE)</h4>
<ul>
  <li><strong>Lab coat:</strong> Protects clothing from spills</li>
  <li><strong>Safety goggles:</strong> Protects eyes from chemicals and splashes</li>
  <li><strong>Gloves:</strong> Protects skin from corrosive chemicals</li>
  <li><strong>Closed shoes:</strong> Protects feet from spills and broken glass</li>
</ul>

<h4>General Safety Rules</h4>
<ul>
  <li>Never eat or drink in the laboratory</li>
  <li>Always read labels before using chemicals</li>
  <li>Point test tubes away from people when heating</li>
  <li>Tie back long hair near flames</li>
  <li>Know the location of fire extinguisher, eye wash station, and first aid kit</li>
  <li>Report all accidents immediately to the teacher</li>
  <li>Smell chemicals by wafting (fan vapour gently towards the nose)</li>
  <li>Never mix chemicals unless instructed to do so</li>
</ul>

<h4>Common Laboratory Equipment</h4>
<ul>
  <li><strong>Bunsen burner:</strong> Heating substances</li>
  <li><strong>Beaker:</strong> Holding and mixing liquids</li>
  <li><strong>Conical flask:</strong> Mixing and titrations</li>
  <li><strong>Measuring cylinder:</strong> Measuring liquid volumes</li>
  <li><strong>Thermometer:</strong> Measuring temperature</li>
  <li><strong>Pipette:</strong> Accurate liquid transfer</li>
  <li><strong>Spatula:</strong> Handling solid chemicals</li>
  <li><strong>Test tube:</strong> Small-scale reactions</li>
  <li><strong>Round-bottom flask:</strong> Heating liquids and distillation</li>
  <li><strong>Tripod and gauze:</strong> Supporting equipment during heating</li>
</ul>

<h4>Fire Safety</h4>
<ul>
  <li>Class A fire (paper, wood): Water extinguisher</li>
  <li>Class B fire (flammable liquids): CO2 or dry powder extinguisher</li>
  <li>Class C fire (electrical equipment): CO2 extinguisher only</li>
  <li><strong>Never</strong> use water on electrical or chemical fires</li>
</ul>

<h3>1.3 Recording Scientific Data</h3>
<p>Good scientific data recording requires:</p>
<ul>
  <li>Appropriate units for all measurements</li>
  <li>Correct number of significant figures</li>
  <li>Tables with clear headings and units</li>
  <li>Graphs with labelled axes, units, and a title</li>
  <li>Line graphs for continuous data; bar charts for discrete/categoric data</li>
</ul>',
 1),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Matter and Its Properties',
 'States of matter, physical and chemical properties, changes of state, density and kinetic theory',
 '<h2>Matter and Its Properties</h2>

<h3>2.1 Definition of Matter</h3>
<p>Matter is anything that has <strong>mass</strong> and <strong>occupies space (volume)</strong>. Everything around us is made of matter.</p>

<h3>2.2 States of Matter</h3>
<ul>
  <li><strong>Solid:</strong> Fixed shape and volume. Particles closely packed in a regular arrangement. Strong forces between particles.</li>
  <li><strong>Liquid:</strong> Fixed volume but takes the shape of its container. Particles close together but able to move. Moderate forces between particles.</li>
  <li><strong>Gas:</strong> No fixed shape or volume. Particles far apart and moving freely. Weak forces between particles.</li>
</ul>

<h4>Changes of State</h4>
<ul>
  <li><strong>Melting:</strong> Solid → Liquid (absorbs heat energy)</li>
  <li><strong>Freezing:</strong> Liquid → Solid (releases heat energy)</li>
  <li><strong>Boiling/Vaporisation:</strong> Liquid → Gas (absorbs heat energy)</li>
  <li><strong>Condensation:</strong> Gas → Liquid (releases heat energy)</li>
  <li><strong>Sublimation:</strong> Solid → Gas directly (e.g., iodine, dry ice/solid CO2)</li>
  <li><strong>Deposition:</strong> Gas → Solid directly</li>
</ul>

<h3>2.3 Physical and Chemical Properties</h3>

<h4>Physical Properties</h4>
<p>Properties that can be observed or measured without changing the chemical composition of a substance:</p>
<ul>
  <li>Colour, odour, taste, density, melting point, boiling point</li>
  <li>Hardness, solubility, electrical conductivity, thermal conductivity</li>
  <li>Malleability (can be beaten into sheets) and ductility (can be drawn into wires)</li>
</ul>

<h4>Chemical Properties</h4>
<p>Properties that describe how a substance reacts to form new substances:</p>
<ul>
  <li>Flammability (ability to burn)</li>
  <li>Reactivity with acids, oxygen, water</li>
  <li>Tendency to oxidise (rust/corrode)</li>
  <li>Corrosiveness</li>
</ul>

<h3>2.4 Physical and Chemical Changes</h3>
<ul>
  <li><strong>Physical change:</strong> No new substance is formed. Usually reversible. Examples: melting ice, cutting paper, dissolving sugar.</li>
  <li><strong>Chemical change:</strong> New substance(s) formed. Usually irreversible. Examples: burning wood, rusting iron, digestion of food, baking a cake.</li>
</ul>

<h4>Signs of a Chemical Change</h4>
<ul>
  <li>Colour change, gas evolution, precipitate formation</li>
  <li>Energy change (heat or light produced/absorbed)</li>
  <li>Odour change, irreversibility</li>
</ul>

<h3>2.5 Density</h3>
<p><strong>Formula:</strong> Density (ρ) = Mass (m) ÷ Volume (V)</p>
<p><strong>SI unit:</strong> kg/m³ or g/cm³</p>
<p><strong>Water density:</strong> 1 g/cm³ (1000 kg/m³) at 4°C</p>

<p>Objects less dense than water float; objects denser than water sink.</p>

<h4>Finding Volume of Irregular Solid (Eureka Can Method)</h4>
<ol>
  <li>Fill eureka can to the level of the spout</li>
  <li>Gently lower the object into the water</li>
  <li>Collect the displaced water in a measuring cylinder</li>
  <li>Volume of displaced water = volume of object</li>
  <li>Calculate: density = mass of object ÷ volume of object</li>
</ol>

<h3>2.6 Kinetic Theory of Matter</h3>
<ul>
  <li>All matter is made of tiny particles (atoms or molecules)</li>
  <li>Particles are in continuous random motion</li>
  <li>Temperature is a measure of the average kinetic energy of particles</li>
  <li>Higher temperature = faster particle movement</li>
  <li>Particles in gases move fastest; in solids, they vibrate in fixed positions</li>
</ul>

<h4>Diffusion</h4>
<p>Diffusion is the net movement of particles from a region of high concentration to a region of low concentration. It is faster in gases than in liquids because gas particles move faster.</p>',
 2),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Atomic Structure and Periodic Table',
 'Atomic structure, subatomic particles, electron configuration, periodic table trends and groups',
 '<h2>Atomic Structure and Periodic Table</h2>

<h3>3.1 Structure of the Atom</h3>
<p>An atom is the smallest particle of an element that retains the chemical properties of that element.</p>

<h4>Subatomic Particles</h4>
<ul>
  <li><strong>Proton (p+):</strong> Charge +1, mass 1 amu, found in the nucleus</li>
  <li><strong>Neutron (n0):</strong> Charge 0 (neutral), mass 1 amu, found in the nucleus</li>
  <li><strong>Electron (e-):</strong> Charge -1, negligible mass (~1/1840 amu), found in electron shells</li>
</ul>

<h4>Key Definitions</h4>
<ul>
  <li><strong>Atomic number (Z):</strong> Number of protons in the nucleus. Identifies the element. In a neutral atom, Z = number of electrons.</li>
  <li><strong>Mass number (A):</strong> Total number of protons + neutrons (nucleons)</li>
  <li><strong>Number of neutrons:</strong> A - Z</li>
  <li><strong>Isotopes:</strong> Atoms of the same element with the same atomic number but different mass numbers (different numbers of neutrons). Example: Carbon-12 and Carbon-14 are both carbon but have 6 and 8 neutrons respectively.</li>
</ul>

<h3>3.2 Electron Configuration</h3>
<p>Electrons are arranged in shells (energy levels) around the nucleus:</p>
<ul>
  <li>Shell 1: maximum 2 electrons</li>
  <li>Shell 2: maximum 8 electrons</li>
  <li>Shell 3: maximum 8 electrons (for elements 1-20)</li>
</ul>

<h4>Electron Configurations of Common Elements</h4>
<ul>
  <li>Hydrogen (H, Z=1): 1</li>
  <li>Helium (He, Z=2): 2</li>
  <li>Carbon (C, Z=6): 2, 4</li>
  <li>Nitrogen (N, Z=7): 2, 5</li>
  <li>Oxygen (O, Z=8): 2, 6</li>
  <li>Neon (Ne, Z=10): 2, 8</li>
  <li>Sodium (Na, Z=11): 2, 8, 1</li>
  <li>Magnesium (Mg, Z=12): 2, 8, 2</li>
  <li>Aluminium (Al, Z=13): 2, 8, 3</li>
  <li>Silicon (Si, Z=14): 2, 8, 4</li>
  <li>Phosphorus (P, Z=15): 2, 8, 5</li>
  <li>Sulphur (S, Z=16): 2, 8, 6</li>
  <li>Chlorine (Cl, Z=17): 2, 8, 7</li>
  <li>Argon (Ar, Z=18): 2, 8, 8</li>
  <li>Potassium (K, Z=19): 2, 8, 8, 1</li>
  <li>Calcium (Ca, Z=20): 2, 8, 8, 2</li>
</ul>

<h3>3.3 The Periodic Table</h3>
<p>Elements are arranged in order of increasing atomic number in a table where elements with similar properties are in the same column (group).</p>

<h4>Periods and Groups</h4>
<ul>
  <li><strong>Periods (horizontal rows):</strong> Elements arranged by increasing atomic number. Same number of electron shells.</li>
  <li><strong>Groups (vertical columns):</strong> Elements with the same number of valence electrons and similar chemical properties.</li>
</ul>

<h4>Important Groups</h4>
<ul>
  <li><strong>Group I - Alkali metals</strong> (Li, Na, K, Rb, Cs): 1 valence electron, very reactive metals, soft, low density, react vigorously with water to form hydroxides and hydrogen gas.</li>
  <li><strong>Group II - Alkaline earth metals</strong> (Be, Mg, Ca, Sr, Ba): 2 valence electrons, reactive metals.</li>
  <li><strong>Group VII - Halogens</strong> (F, Cl, Br, I): 7 valence electrons, reactive non-metals, exist as diatomic molecules.</li>
  <li><strong>Group 0/VIII - Noble gases</strong> (He, Ne, Ar, Kr, Xe): 8 valence electrons (2 for He), inert/unreactive, exist as monoatomic gases.</li>
</ul>

<h4>Trends in the Periodic Table</h4>
<p><strong>Across a period (left to right):</strong></p>
<ul>
  <li>Atomic number increases</li>
  <li>Atomic radius decreases (more protons pull electrons closer)</li>
  <li>Ionisation energy increases</li>
  <li>Metallic character decreases; non-metallic character increases</li>
</ul>

<p><strong>Down a group:</strong></p>
<ul>
  <li>Atomic radius increases (more electron shells)</li>
  <li>Reactivity of metals increases (easier to lose outer electrons)</li>
  <li>Reactivity of non-metals decreases (harder to gain electrons)</li>
  <li>Melting and boiling points decrease for Group I metals</li>
</ul>

<h3>3.4 Valence Electrons and Reactivity</h3>
<p>Valence electrons are electrons in the outermost shell. They determine:</p>
<ul>
  <li>The chemical reactivity of an element</li>
  <li>The type of bonding (ionic or covalent)</li>
  <li>The number of bonds an atom can form (valency)</li>
</ul>
<p>Atoms react to achieve a full outer shell (usually 8 electrons - the octet rule). Noble gases already have full shells and are therefore unreactive.</p>',
 3),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Chemical Bonding',
 'Ionic bonding, covalent bonding, metallic bonding, Lewis structures and properties of compounds',
 '<h2>Chemical Bonding</h2>

<h3>4.1 Why Atoms Bond</h3>
<p>Atoms bond together to achieve a more stable electron configuration, usually a full outer shell with 8 electrons (the <strong>octet rule</strong>). Noble gases already have full outer shells and are therefore unreactive.</p>

<h3>4.2 Ionic Bonding</h3>
<p>Ionic bonding occurs between a <strong>metal</strong> and a <strong>non-metal</strong>. Electrons are <strong>transferred</strong> from the metal to the non-metal.</p>

<h4>Formation of Ions</h4>
<ul>
  <li>Metal atoms <strong>lose</strong> electrons to form positive ions (cations): e.g., Na → Na⁺, Mg → Mg²⁺, Al → Al³⁺</li>
  <li>Non-metal atoms <strong>gain</strong> electrons to form negative ions (anions): e.g., Cl → Cl⁻, O → O²⁻, N → N³⁻</li>
</ul>

<h4>Example: Formation of Sodium Chloride (NaCl)</h4>
<ul>
  <li>Na (2,8,1) loses 1 electron → Na⁺ (2,8) - stable configuration of neon</li>
  <li>Cl (2,8,7) gains 1 electron → Cl⁻ (2,8,8) - stable configuration of argon</li>
  <li>The electrostatic attraction between Na⁺ and Cl⁻ is the ionic bond</li>
</ul>

<h4>Properties of Ionic Compounds</h4>
<ul>
  <li>High melting and boiling points (strong electrostatic forces)</li>
  <li>Conduct electricity when dissolved in water or when molten (ions are free to move)</li>
  <li>Do not conduct electricity when solid (ions are fixed in lattice)</li>
  <li>Form crystalline solids with regular lattice structures</li>
  <li>Usually soluble in water (polar solvent)</li>
</ul>

<h3>4.3 Covalent Bonding</h3>
<p>Covalent bonding occurs between <strong>non-metal</strong> atoms. Electrons are <strong>shared</strong> between atoms to achieve full outer shells.</p>

<h4>Types of Covalent Bonds</h4>
<ul>
  <li><strong>Single bond:</strong> 1 shared pair of electrons (e.g., H-H in H₂, H-Cl in HCl)</li>
  <li><strong>Double bond:</strong> 2 shared pairs of electrons (e.g., O=O in O₂, O=C=O in CO₂)</li>
  <li><strong>Triple bond:</strong> 3 shared pairs of electrons (e.g., N≡N in N₂)</li>
</ul>

<h4>Examples of Covalent Molecules</h4>
<ul>
  <li><strong>Water (H₂O):</strong> Oxygen forms 2 single bonds with hydrogen; has 2 lone pairs</li>
  <li><strong>Methane (CH₄):</strong> Carbon forms 4 single bonds with hydrogen</li>
  <li><strong>Ammonia (NH₃):</strong> Nitrogen forms 3 single bonds with hydrogen; has 1 lone pair</li>
  <li><strong>Carbon dioxide (CO₂):</strong> Carbon forms 2 double bonds with oxygen</li>
  <li><strong>Chlorine (Cl₂):</strong> Two chlorine atoms share one pair of electrons</li>
</ul>

<h4>Properties of Covalent Compounds</h4>
<ul>
  <li>Generally lower melting and boiling points than ionic compounds</li>
  <li>Usually poor conductors of electricity (no free ions or electrons)</li>
  <li>May be soluble or insoluble in water depending on polarity</li>
  <li>Often exist as gases, liquids, or soft solids at room temperature</li>
</ul>

<h3>4.4 Metallic Bonding</h3>
<p>In metals, the outer electrons are released from their atoms and move freely through the entire metal structure. This creates a lattice of positive metal ions surrounded by a "sea" of delocalised electrons.</p>

<h4>Properties Explained by Metallic Bonding</h4>
<ul>
  <li><strong>Electrical conductivity:</strong> Delocalised electrons carry charge</li>
  <li><strong>Thermal conductivity:</strong> Electrons transfer kinetic energy</li>
  <li><strong>Malleability/ductility:</strong> Ions can slide over each other while electrons maintain bonding</li>
  <li><strong>Lustre (shininess):</strong> Electrons reflect light</li>
</ul>

<h3>4.5 Comparing Bond Types</h3>
<ul>
  <li><strong>Ionic:</strong> Metal + Non-metal, electrons transferred, high MP/BP, conducts when dissolved/molten</li>
  <li><strong>Covalent:</strong> Non-metal + Non-metal, electrons shared, lower MP/BP, usually does not conduct</li>
  <li><strong>Metallic:</strong> Metal + Metal, delocalised electrons, conducts electricity, malleable</li>
</ul>

<h3>4.6 Valency of Common Elements</h3>
<ul>
  <li>Hydrogen: 1 | Oxygen: 2 | Nitrogen: 3 | Carbon: 4</li>
  <li>Sodium (Na⁺): 1 | Magnesium (Mg²⁺): 2 | Aluminium (Al³⁺): 3</li>
  <li>Chlorine (Cl⁻): 1 | Sulphate (SO₄²⁻): 2 | Nitrate (NO₃⁻): 1</li>
</ul>',
 4),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Chemical Reactions and Equations',
 'Types of reactions, balancing equations, law of conservation of mass, rates of reaction and collision theory',
 '<h2>Chemical Reactions and Equations</h2>

<h3>5.1 Signs of a Chemical Reaction</h3>
<ul>
  <li>Colour change</li>
  <li>Gas production (effervescence/bubbles)</li>
  <li>Precipitate formation (cloudy solid appears in solution)</li>
  <li>Temperature change (exothermic or endothermic)</li>
  <li>Light emission</li>
  <li>Odour change</li>
  <li>Irreversibility</li>
</ul>

<h3>5.2 Types of Chemical Reactions</h3>

<h4>1. Combination (Synthesis): A + B → AB</h4>
<ul>
  <li>Two or more substances combine to form one product</li>
  <li>Example: 2H₂ + O₂ → 2H₂O (hydrogen burns in oxygen)</li>
  <li>Example: C + O₂ → CO₂ (carbon burns in oxygen)</li>
  <li>Example: 2Mg + O₂ → 2MgO (magnesium burns in air)</li>
</ul>

<h4>2. Decomposition: AB → A + B</h4>
<ul>
  <li>One substance breaks down into two or more simpler substances</li>
  <li>Example: 2H₂O₂ → 2H₂O + O₂ (hydrogen peroxide decomposes with MnO₂ catalyst)</li>
  <li>Example: CaCO₃ → CaO + CO₂ (thermal decomposition of limestone)</li>
  <li>Example: 2HgO → 2Hg + O₂ (on heating)</li>
</ul>

<h4>3. Displacement (Single Replacement): A + BC → AC + B</h4>
<ul>
  <li>A more reactive element displaces a less reactive element from its compound</li>
  <li>Example: Zn + CuSO₄ → ZnSO₄ + Cu (zinc displaces copper)</li>
  <li>Example: Fe + 2HCl → FeCl₂ + H₂ (iron displaces hydrogen from acid)</li>
  <li>Example: Mg + H₂SO₄ → MgSO₄ + H₂</li>
</ul>

<h4>4. Double Displacement (Precipitation): AB + CD → AD + CB</h4>
<ul>
  <li>Ions in two solutions exchange partners; often forms a precipitate</li>
  <li>Example: AgNO₃ + NaCl → AgCl↓ + NaNO₃ (white precipitate of silver chloride)</li>
  <li>Example: BaCl₂ + Na₂SO₄ → BaSO₄↓ + 2NaCl (white precipitate of barium sulphate)</li>
</ul>

<h4>5. Combustion: Fuel + O₂ → CO₂ + H₂O + energy</h4>
<ul>
  <li><strong>Complete combustion:</strong> Enough oxygen; produces CO₂ and H₂O only</li>
  <li><strong>Incomplete combustion:</strong> Insufficient oxygen; produces CO (toxic) and carbon soot</li>
  <li>Example: CH₄ + 2O₂ → CO₂ + 2H₂O (complete combustion of methane)</li>
</ul>

<h4>6. Neutralisation: Acid + Base → Salt + Water</h4>
<ul>
  <li>HCl + NaOH → NaCl + H₂O</li>
  <li>H₂SO₄ + 2KOH → K₂SO₄ + 2H₂O</li>
</ul>

<h3>5.3 Writing and Balancing Chemical Equations</h3>

<h4>Steps to Balance an Equation</h4>
<ol>
  <li>Write the word equation</li>
  <li>Write chemical formulae for all reactants and products</li>
  <li>Count atoms on each side</li>
  <li>Add coefficients (numbers in front of formulae) to balance - never change subscripts</li>
  <li>Add state symbols: (s) solid, (l) liquid, (g) gas, (aq) aqueous solution</li>
</ol>

<h4>Example: Burning Magnesium in Air</h4>
<ol>
  <li>Word equation: magnesium + oxygen → magnesium oxide</li>
  <li>Formulae: Mg + O₂ → MgO</li>
  <li>Count: Left: 1 Mg, 2 O | Right: 1 Mg, 1 O — not balanced!</li>
  <li>Balance: 2Mg + O₂ → 2MgO</li>
  <li>Check: Left: 2 Mg, 2 O | Right: 2 Mg, 2 O ✓</li>
</ol>

<h3>5.4 Law of Conservation of Mass</h3>
<p>In any chemical reaction, the total mass of the reactants equals the total mass of the products. Atoms are neither created nor destroyed — they are simply rearranged.</p>

<h3>5.5 Energy in Reactions</h3>
<ul>
  <li><strong>Exothermic reactions:</strong> Release energy to surroundings. Temperature of surroundings increases. Examples: combustion, neutralisation, respiration, rusting.</li>
  <li><strong>Endothermic reactions:</strong> Absorb energy from surroundings. Temperature of surroundings decreases. Examples: photosynthesis, thermal decomposition, dissolving ammonium nitrate.</li>
</ul>

<h3>5.6 Rates of Reaction and Collision Theory</h3>
<p>The rate of reaction depends on how often and how effectively reactant particles collide.</p>

<h4>Factors that Increase the Rate of Reaction</h4>
<ul>
  <li><strong>Increase temperature:</strong> Particles move faster, collide more often and with more energy</li>
  <li><strong>Increase concentration:</strong> More particles per unit volume, more frequent collisions</li>
  <li><strong>Increase surface area:</strong> More particles exposed at the surface (smaller pieces react faster)</li>
  <li><strong>Use a catalyst:</strong> Lowers the activation energy, provides an alternative reaction pathway</li>
  <li><strong>Increase pressure (gases):</strong> Brings gas particles closer together, more frequent collisions</li>
</ul>

<h4>Collision Theory</h4>
<p>Reactions occur only when reactant particles collide with:</p>
<ol>
  <li>Sufficient energy (at least equal to the activation energy)</li>
  <li>Correct orientation relative to each other</li>
</ol>',
 5);
