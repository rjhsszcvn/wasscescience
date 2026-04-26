/*
  # Core Science Comprehensive WASSCE Notes - Topics 11 to 15

  Adds deep, exam-focused notes for:
  11. Photosynthesis and Respiration
  12. Genetics and Heredity
  13. Ecology and Environment
  14. Force, Motion and Energy
  15. Electricity and Magnetism
*/

DO $$
DECLARE
  t11 uuid := '16a7741f-0a12-4a8b-ac80-e6f36c9a78a4';
  t12 uuid := '33f7f81d-91d7-436e-90e7-c81d441d38e0';
  t13 uuid := '97ffc9ed-edc9-4984-8318-6390a9488bbb';
  t14 uuid := '4414de54-2caa-4fcd-a732-de5afc0a1069';
  t15 uuid := '004be016-c73f-4561-9316-b7a634f7d8b7';
BEGIN

-- ============================================================
-- TOPIC 11: Photosynthesis and Respiration
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t11;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t11, 'Photosynthesis', '<h2>Photosynthesis</h2>

<h3>Definition</h3>
<p>Photosynthesis is the process by which green plants, algae, and some bacteria use light energy (from the sun) to convert carbon dioxide and water into glucose (organic food) and oxygen.</p>

<h3>Overall Equation</h3>
<p><strong>6CO2 + 6H2O + light energy -> C6H12O6 + 6O2</strong></p>
<p>(Carbon dioxide + Water + Light energy -> Glucose + Oxygen)</p>

<h3>Where Does Photosynthesis Occur?</h3>
<p>In the <strong>chloroplasts</strong> of plant cells, specifically in the thylakoid membranes (light reactions) and stroma (dark reactions/Calvin cycle).</p>
<p>Chlorophyll (the green pigment) absorbs light energy - mainly red and blue wavelengths (reflects green, which is why plants appear green).</p>

<h3>The Two Stages of Photosynthesis</h3>
<h4>Stage 1: Light-Dependent Reactions (Thylakoid membranes)</h4>
<ul>
<li>Light energy absorbed by chlorophyll</li>
<li>Water is split (photolysis): H2O -> H+ + OH- -> O2 released</li>
<li>ATP and NADPH produced (energy carriers)</li>
<li>Oxygen released as a by-product</li>
</ul>

<h4>Stage 2: Light-Independent Reactions / Calvin Cycle (Stroma)</h4>
<ul>
<li>CO2 is fixed (attached to a 5-carbon compound, RuBP)</li>
<li>ATP and NADPH from light reactions used to produce glucose</li>
<li>Glucose (C6H12O6) produced</li>
</ul>

<h3>Factors Affecting the Rate of Photosynthesis</h3>
<table border="1">
<tr><th>Factor</th><th>Effect on Rate</th><th>Explanation</th></tr>
<tr><td>Light intensity</td><td>Increases rate (up to a point)</td><td>More light energy available for light reactions</td></tr>
<tr><td>CO2 concentration</td><td>Increases rate (up to a point)</td><td>More raw material for Calvin cycle</td></tr>
<tr><td>Temperature</td><td>Increases rate up to optimum (~25-30 C), then decreases</td><td>Enzymes denature above optimum temperature</td></tr>
<tr><td>Water availability</td><td>Lack of water reduces rate</td><td>Water is a raw material; stomata close to conserve water</td></tr>
<tr><td>Chlorophyll content</td><td>More chlorophyll increases rate</td><td>More light energy absorbed</td></tr>
</table>

<h3>Limiting Factors</h3>
<p>When one factor is in short supply, it limits the rate even if other factors are plentiful. The limiting factor is the one in shortest supply.</p>
<p>Example: On a bright sunny day, CO2 concentration is often the limiting factor for photosynthesis.</p>

<h3>Leaf Adaptations for Photosynthesis</h3>
<ul>
<li><strong>Large, flat surface area:</strong> Maximum light absorption</li>
<li><strong>Thin:</strong> Short diffusion distance for CO2 and O2</li>
<li><strong>Transparent upper epidermis:</strong> Allows light to reach mesophyll cells</li>
<li><strong>Palisade mesophyll cells:</strong> Rich in chloroplasts; packed in columns for maximum light absorption</li>
<li><strong>Spongy mesophyll:</strong> Air spaces for gas exchange</li>
<li><strong>Stomata:</strong> Pores for gas exchange (CO2 in, O2 out) and water vapour out</li>
<li><strong>Vascular bundles (veins):</strong> Deliver water and minerals (xylem); export sugars (phloem)</li>
</ul>

<h3>Uses of Glucose by Plants</h3>
<ul>
<li>Respiration (energy release)</li>
<li>Converted to starch for storage</li>
<li>Converted to cellulose for cell walls</li>
<li>Converted to sucrose for transport</li>
<li>Making amino acids (with nitrogen) for proteins</li>
<li>Making lipids for membranes and storage</li>
</ul>

<h3>Testing for Starch in Leaves (Iodine Test)</h3>
<ol>
<li>Boil leaf in water to kill cells</li>
<li>Place leaf in hot ethanol to remove chlorophyll (decolourise)</li>
<li>Rinse with water to soften leaf</li>
<li>Add iodine solution</li>
<li>Blue-black = starch present (photosynthesis occurred)</li>
</ol>

<h3>Variegated Leaf Experiment</h3>
<p>Shows that chlorophyll is needed for photosynthesis. Only the green (chlorophyll-containing) parts of the leaf test positive for starch with iodine.</p>

<h3>Investigating the Need for Light</h3>
<p>A leaf is partially covered with black paper (to block light) while still attached to a plant. After several hours in light, test with iodine. Only uncovered parts test positive for starch.</p>', 1),

(t11, 'Respiration', '<h2>Respiration</h2>

<h3>Definition</h3>
<p>Respiration is the process by which living organisms break down glucose (and other organic molecules) to release energy (ATP) for cellular activities. It occurs in ALL living cells.</p>
<p><strong>Note:</strong> Respiration is NOT breathing! Respiration is a chemical process inside cells; breathing (ventilation) is the physical process of moving air in and out of lungs.</p>

<h3>Types of Respiration</h3>

<h4>1. Aerobic Respiration (with oxygen)</h4>
<p><strong>Equation: C6H12O6 + 6O2 -> 6CO2 + 6H2O + ATP (energy)</strong></p>
<p>Occurs in cytoplasm and mitochondria. Produces large amounts of ATP (approximately 36-38 ATP per glucose molecule).</p>

<h4>2. Anaerobic Respiration (without oxygen)</h4>
<p>Occurs in cytoplasm only. Produces much less ATP (2 ATP per glucose molecule). Used when oxygen supply is limited.</p>

<p><strong>In animals and humans:</strong></p>
<p>C6H12O6 -> 2C3H6O3 + ATP (energy)</p>
<p>Glucose -> Lactic acid + ATP</p>
<p>Causes muscle fatigue and the burning sensation during intense exercise</p>

<p><strong>In yeast and plants:</strong></p>
<p>C6H12O6 -> 2C2H5OH + 2CO2 + ATP</p>
<p>Glucose -> Ethanol + Carbon dioxide + ATP</p>
<p>This is called fermentation - used in making bread, beer, and wine</p>

<h3>Comparison of Aerobic and Anaerobic Respiration</h3>
<table border="1">
<tr><th>Feature</th><th>Aerobic Respiration</th><th>Anaerobic Respiration</th></tr>
<tr><td>Oxygen needed?</td><td>Yes</td><td>No</td></tr>
<tr><td>Glucose completely broken down?</td><td>Yes</td><td>No (partial breakdown)</td></tr>
<tr><td>Products</td><td>CO2 + H2O</td><td>Lactic acid (animals) OR Ethanol + CO2 (yeast/plants)</td></tr>
<tr><td>ATP produced</td><td>About 36-38 per glucose</td><td>2 per glucose</td></tr>
<tr><td>Location</td><td>Cytoplasm + Mitochondria</td><td>Cytoplasm only</td></tr>
<tr><td>Speed</td><td>Slower</td><td>Faster</td></tr>
</table>

<h3>Oxygen Debt</h3>
<p>During intense exercise, muscles respire anaerobically, producing lactic acid. After exercise, extra oxygen is needed to break down the lactic acid. This is the oxygen debt (or excess post-exercise oxygen consumption, EPOC).</p>

<h3>Uses of Energy Released by Respiration</h3>
<ul>
<li>Muscle contraction</li>
<li>Active transport across membranes</li>
<li>Protein synthesis (building body tissues)</li>
<li>Cell division</li>
<li>Nerve impulse transmission</li>
<li>Maintenance of body temperature (in warm-blooded animals)</li>
</ul>

<h3>Fermentation and Biotechnology</h3>
<p>Fermentation by yeast (anaerobic respiration) is exploited in:</p>
<ul>
<li><strong>Bread making:</strong> CO2 produced makes dough rise; ethanol evaporates during baking</li>
<li><strong>Alcohol production:</strong> Ethanol produced in brewing beer, wine, and spirits</li>
<li><strong>Biogas production:</strong> Methane gas produced by bacteria in anaerobic conditions</li>
<li><strong>Yoghurt and cheese:</strong> Lactic acid bacteria ferment lactose</li>
</ul>

<h3>Photosynthesis vs. Respiration</h3>
<table border="1">
<tr><th>Feature</th><th>Photosynthesis</th><th>Respiration</th></tr>
<tr><td>Where it occurs</td><td>Green plants, algae, some bacteria</td><td>All living organisms</td></tr>
<tr><td>Organelle</td><td>Chloroplast</td><td>Mitochondrion (aerobic)</td></tr>
<tr><td>Energy</td><td>Uses light energy (stores in glucose)</td><td>Releases energy from glucose (ATP)</td></tr>
<tr><td>Raw materials</td><td>CO2 and H2O</td><td>Glucose and O2 (aerobic)</td></tr>
<tr><td>Products</td><td>Glucose and O2</td><td>CO2 and H2O (aerobic)</td></tr>
<tr><td>Net gas exchange</td><td>Takes in CO2; releases O2</td><td>Takes in O2; releases CO2</td></tr>
<tr><td>When it occurs</td><td>In light only</td><td>All the time (day and night)</td></tr>
</table>

<h3>Compensation Point</h3>
<p>The light intensity at which the rate of photosynthesis equals the rate of respiration. At this point, there is no net gas exchange with the environment.</p>', 2);

-- ============================================================
-- TOPIC 12: Genetics and Heredity
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t12;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t12, 'Genetics: Key Terms and Mendelian Inheritance', '<h2>Genetics and Heredity</h2>

<h3>Key Genetic Terms</h3>
<table border="1">
<tr><th>Term</th><th>Definition</th></tr>
<tr><td>Gene</td><td>A segment of DNA that codes for a specific protein/trait. Located on chromosomes.</td></tr>
<tr><td>Allele</td><td>Different forms/versions of a gene (e.g., tall and short are alleles of the height gene)</td></tr>
<tr><td>Chromosome</td><td>Thread-like structure of DNA and protein found in the nucleus; carries genes</td></tr>
<tr><td>Genotype</td><td>The genetic makeup of an organism (e.g., Tt, TT, tt)</td></tr>
<tr><td>Phenotype</td><td>The observable physical characteristics resulting from genotype + environment (e.g., tall, short)</td></tr>
<tr><td>Dominant allele</td><td>Allele that is expressed even when only one copy is present (written as capital letter, e.g., T)</td></tr>
<tr><td>Recessive allele</td><td>Allele expressed only when two copies are present (written as lower case, e.g., t)</td></tr>
<tr><td>Homozygous</td><td>Having two identical alleles for a trait (TT or tt) - pure breeding</td></tr>
<tr><td>Heterozygous</td><td>Having two different alleles for a trait (Tt) - hybrid</td></tr>
<tr><td>Locus</td><td>Specific position on a chromosome where a gene is found</td></tr>
<tr><td>Diploid (2n)</td><td>Organism with two sets of chromosomes (most body cells)</td></tr>
<tr><td>Haploid (n)</td><td>Organism/cell with one set of chromosomes (gametes)</td></tr>
</table>

<h3>Gregor Mendel: Father of Genetics</h3>
<p>Mendel (1822-1884) conducted experiments on pea plants to discover the laws of inheritance. He studied 7 characteristics, each with two contrasting forms (e.g., tall vs. short, round vs. wrinkled seeds).</p>

<h3>Mendel''s Laws</h3>
<h4>Law of Segregation (First Law)</h4>
<p>Each organism carries two alleles for each trait. These two alleles separate (segregate) during gamete formation, so each gamete contains only ONE allele for each trait.</p>

<h4>Law of Independent Assortment (Second Law)</h4>
<p>Alleles for different traits are inherited independently of each other (applies when genes are on different chromosomes).</p>

<h3>Monohybrid Inheritance</h3>
<p>Inheritance of a single trait (controlled by one gene with two alleles).</p>
<p>Example: Tall (T) is dominant over short (t) in pea plants.</p>

<h4>Cross 1: TT x tt (Homozygous tall x Homozygous short)</h4>
<pre>
Parents:    TT  x  tt
Gametes:    T      t
F1 offspring: Tt (all tall)
Genotype ratio: 100% Tt
Phenotype ratio: 100% tall
</pre>

<h4>Cross 2: F1 x F1 (Tt x Tt)</h4>
<pre>
Parents:    Tt  x  Tt
Gametes:    T, t    T, t
F2 offspring:
         T    t
    T   TT   Tt
    t   Tt   tt

Genotype ratio: 1 TT : 2 Tt : 1 tt
Phenotype ratio: 3 Tall : 1 Short (3:1)
</pre>

<h3>Test Cross (Back Cross)</h3>
<p>A cross between an organism with a dominant phenotype (unknown genotype) with a homozygous recessive organism (tt).</p>
<ul>
<li>If offspring are all tall: unknown parent is TT (homozygous)</li>
<li>If offspring are 50% tall, 50% short: unknown parent is Tt (heterozygous)</li>
</ul>

<h3>Incomplete Dominance</h3>
<p>When neither allele is completely dominant, the heterozygote shows a blended phenotype.</p>
<p>Example: Red flower (RR) x White flower (WW) - F1 offspring are all Pink (RW)</p>
<p>F1 (RW x RW) gives 1 Red : 2 Pink : 1 White</p>

<h3>Codominance</h3>
<p>Both alleles are expressed equally in the heterozygote.</p>
<p>Example: ABO blood group - IA and IB are codominant; i is recessive</p>
<table border="1">
<tr><th>Blood Group (Phenotype)</th><th>Possible Genotypes</th></tr>
<tr><td>A</td><td>IAIA or IAi</td></tr>
<tr><td>B</td><td>IBIB or IBi</td></tr>
<tr><td>AB</td><td>IAIB</td></tr>
<tr><td>O</td><td>ii</td></tr>
</table>', 1),

(t12, 'Genetics: Sex Determination, DNA and Mutations', '<h2>Sex Determination, DNA and Mutations</h2>

<h3>Sex Determination in Humans</h3>
<p>Humans have 23 pairs of chromosomes:</p>
<ul>
<li>22 pairs of autosomes (non-sex chromosomes)</li>
<li>1 pair of sex chromosomes: XX (female) or XY (male)</li>
</ul>
<p>Sex is determined by the father (who can pass either X or Y chromosome to offspring).</p>
<p>Ratio of male to female offspring: 1:1 (50% chance of each)</p>

<h3>Sex-Linked Inheritance</h3>
<p>Traits controlled by genes located on sex chromosomes (usually X chromosome).</p>
<p>Males (XY) have only one X chromosome, so a single recessive allele on the X chromosome will be expressed.</p>
<p>Females (XX) need two copies of the recessive allele to show the trait.</p>

<h4>Examples of X-linked (sex-linked) traits</h4>
<ul>
<li>Haemophilia (inability to clot blood normally) - X-linked recessive</li>
<li>Colour blindness (red-green) - X-linked recessive</li>
<li>Duchenne muscular dystrophy</li>
</ul>

<h4>Colour blindness example</h4>
<p>Let X^N = normal vision, X^n = colour blind</p>
<table border="1">
<tr><th>Genotype</th><th>Phenotype</th></tr>
<tr><td>X^N X^N</td><td>Normal female</td></tr>
<tr><td>X^N X^n</td><td>Carrier female (normal vision but carries the gene)</td></tr>
<tr><td>X^n X^n</td><td>Colour blind female</td></tr>
<tr><td>X^N Y</td><td>Normal male</td></tr>
<tr><td>X^n Y</td><td>Colour blind male</td></tr>
</table>
<p>Colour blindness is more common in males because they need only ONE recessive allele (on the single X chromosome) to be affected. Females need TWO recessive alleles.</p>

<h3>DNA Structure</h3>
<p>DNA (Deoxyribonucleic acid) is the molecule that carries genetic information.</p>
<ul>
<li>Double helix structure (Watson and Crick, 1953)</li>
<li>Made of two strands held together by hydrogen bonds</li>
<li>Each strand is a polymer of nucleotides</li>
<li>Each nucleotide contains: deoxyribose sugar + phosphate group + nitrogenous base</li>
</ul>

<h4>The Four Bases and Base Pairing</h4>
<ul>
<li>Adenine (A) always pairs with Thymine (T): A-T</li>
<li>Guanine (G) always pairs with Cytosine (C): G-C</li>
<li>This is called complementary base pairing (Chargaff rules)</li>
</ul>

<h4>Genetic Code</h4>
<p>The sequence of bases on DNA codes for proteins. Three consecutive bases = a codon = codes for one amino acid. The sequence of codons determines the sequence of amino acids in a protein.</p>

<h3>DNA Replication</h3>
<p>DNA copies itself before cell division:</p>
<ol>
<li>Hydrogen bonds between base pairs broken by helicase enzyme</li>
<li>Double helix unwinds (unzips)</li>
<li>Free nucleotides pair with exposed bases on each strand</li>
<li>Two new identical DNA molecules formed (semiconservative replication)</li>
</ol>

<h3>Mutations</h3>
<p>A mutation is a random change in the DNA sequence. Mutations are the source of new alleles and thus genetic variation.</p>

<h4>Types of Gene Mutations</h4>
<ul>
<li><strong>Substitution:</strong> One base replaced by another</li>
<li><strong>Insertion:</strong> Extra base(s) added - causes frameshift (all subsequent codons change)</li>
<li><strong>Deletion:</strong> Base(s) removed - causes frameshift</li>
</ul>

<h4>Types of Chromosome Mutations</h4>
<ul>
<li><strong>Non-disjunction:</strong> Chromosomes fail to separate in meiosis; results in gametes with extra or missing chromosomes</li>
<li><strong>Down Syndrome (Trisomy 21):</strong> Extra chromosome 21 (47 chromosomes total)</li>
<li><strong>Turner Syndrome (45, X0):</strong> Missing sex chromosome in females</li>
<li><strong>Klinefelter Syndrome (47, XXY):</strong> Extra X in males</li>
</ul>

<h4>Mutagenic Agents (Mutagens)</h4>
<ul>
<li>UV radiation</li>
<li>X-rays and gamma rays (ionizing radiation)</li>
<li>Certain chemicals (mustard gas, benzene, aflatoxin)</li>
<li>Some viruses</li>
<li>Heat</li>
</ul>

<h3>Genetic Disorders</h3>
<table border="1">
<tr><th>Disorder</th><th>Type</th><th>Description</th></tr>
<tr><td>Sickle cell disease</td><td>Autosomal recessive</td><td>Abnormal haemoglobin; red blood cells sickle-shaped; common in malaria-endemic areas</td></tr>
<tr><td>Cystic fibrosis</td><td>Autosomal recessive</td><td>Thick mucus in lungs and digestive tract</td></tr>
<tr><td>Phenylketonuria (PKU)</td><td>Autosomal recessive</td><td>Cannot metabolize phenylalanine; intellectual disability if untreated</td></tr>
<tr><td>Huntington disease</td><td>Autosomal dominant</td><td>Progressive nervous system degeneration; late onset</td></tr>
<tr><td>Haemophilia A</td><td>X-linked recessive</td><td>Missing clotting factor VIII; uncontrolled bleeding</td></tr>
<tr><td>Down Syndrome</td><td>Chromosomal (Trisomy 21)</td><td>Intellectual disability, characteristic facial features</td></tr>
</table>', 2);

-- ============================================================
-- TOPIC 13: Ecology and Environment
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t13;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t13, 'Ecological Concepts and Relationships', '<h2>Ecology and Environment</h2>

<h3>Key Ecological Terms</h3>
<table border="1">
<tr><th>Term</th><th>Definition</th><th>Example</th></tr>
<tr><td>Ecology</td><td>Study of relationships between organisms and their environment</td><td>-</td></tr>
<tr><td>Habitat</td><td>The physical place where an organism lives</td><td>Forest, pond, coral reef</td></tr>
<tr><td>Niche</td><td>The role/function of an organism in its community (its ecological job)</td><td>Hawks are top predators in the forest food web</td></tr>
<tr><td>Population</td><td>All individuals of the same species in a given area at a given time</td><td>All lions in Mole National Park</td></tr>
<tr><td>Community</td><td>All populations of different species living in the same area</td><td>All plants, animals, fungi in a forest</td></tr>
<tr><td>Ecosystem</td><td>A community plus its abiotic (non-living) environment</td><td>Tropical rainforest ecosystem</td></tr>
<tr><td>Biosphere</td><td>All ecosystems on Earth; the global sum of all living things</td><td>Earth''s biosphere</td></tr>
<tr><td>Biotic factors</td><td>Living components of an ecosystem</td><td>Predators, prey, diseases, competitors</td></tr>
<tr><td>Abiotic factors</td><td>Non-living components of an ecosystem</td><td>Temperature, light, water, soil pH, humidity</td></tr>
</table>

<h3>Food Chains and Food Webs</h3>
<p>A food chain shows the linear flow of energy from one organism to another.</p>
<p>Arrow direction: shows direction of energy flow (NOT what eats what)</p>
<p>Example: Grass -> Grasshopper -> Frog -> Snake -> Hawk</p>

<h4>Trophic Levels</h4>
<ul>
<li><strong>Producers (Autotrophs):</strong> Trophic Level 1 - make their own food via photosynthesis (green plants, algae)</li>
<li><strong>Primary Consumers (Herbivores):</strong> Trophic Level 2 - eat producers (e.g., grasshoppers, rabbits, caterpillars)</li>
<li><strong>Secondary Consumers:</strong> Trophic Level 3 - eat primary consumers (e.g., frogs, small birds)</li>
<li><strong>Tertiary Consumers:</strong> Trophic Level 4 - eat secondary consumers (e.g., hawks, eagles)</li>
<li><strong>Decomposers:</strong> Break down dead organic matter (fungi, bacteria); recycle nutrients</li>
</ul>

<h4>Food Web</h4>
<p>A food web is a complex network of interconnecting food chains. It is more realistic than a single food chain as most organisms eat more than one type of food and are eaten by more than one type of predator.</p>

<h3>Energy Flow in Ecosystems</h3>
<ul>
<li>Energy enters ecosystems as sunlight</li>
<li>Only about 10% of energy is transferred from one trophic level to the next (90% is lost as heat, used in respiration, excretion, decay, etc.)</li>
<li>This is why food chains rarely have more than 5 levels</li>
<li>Energy flow is one-directional (unlike nutrients, which cycle)</li>
</ul>

<h3>Ecological Pyramids</h3>
<table border="1">
<tr><th>Type</th><th>What it shows</th><th>Shape</th><th>Notes</th></tr>
<tr><td>Pyramid of numbers</td><td>Number of organisms at each level</td><td>Usually pyramid shape; can be inverted</td><td>Can be inverted (e.g., many insects on one tree)</td></tr>
<tr><td>Pyramid of biomass</td><td>Total dry mass of organisms at each level</td><td>Usually pyramid</td><td>More accurate than numbers; can be inverted in marine systems</td></tr>
<tr><td>Pyramid of energy</td><td>Energy content at each trophic level</td><td>Always pyramid</td><td>Most informative; never inverted</td></tr>
</table>

<h3>Types of Ecological Relationships</h3>
<table border="1">
<tr><th>Relationship</th><th>Effect on A</th><th>Effect on B</th><th>Example</th></tr>
<tr><td>Predation</td><td>+ (benefits predator)</td><td>- (harms prey)</td><td>Lion and zebra</td></tr>
<tr><td>Mutualism</td><td>+</td><td>+</td><td>Bees and flowers; nitrogen-fixing bacteria and legumes; cleaner fish and sharks</td></tr>
<tr><td>Commensalism</td><td>+</td><td>0 (not affected)</td><td>Orchids on trees; remora fish on sharks</td></tr>
<tr><td>Parasitism</td><td>+ (parasite benefits)</td><td>- (host harmed)</td><td>Tapeworm and human; mistletoe on tree</td></tr>
<tr><td>Competition</td><td>-</td><td>-</td><td>Two plant species competing for light and water</td></tr>
</table>

<h3>Nutrient Cycles</h3>

<h4>Carbon Cycle</h4>
<p>Carbon circulates between the atmosphere, living organisms, and the Earth.</p>
<ul>
<li><strong>Photosynthesis:</strong> Plants absorb CO2 from atmosphere</li>
<li><strong>Respiration:</strong> All organisms release CO2</li>
<li><strong>Combustion:</strong> Burning fossil fuels and biomass releases CO2</li>
<li><strong>Decomposition:</strong> Microorganisms break down dead matter, releasing CO2</li>
<li><strong>Fossilization:</strong> Carbon locked in fossil fuels (coal, oil, gas)</li>
</ul>

<h4>Nitrogen Cycle</h4>
<p>Nitrogen is essential for amino acids and proteins. Atmospheric nitrogen (N2) must be converted to usable forms.</p>
<ul>
<li><strong>Nitrogen fixation:</strong> N2 -> NH3 (ammonia) by nitrogen-fixing bacteria (Rhizobium in root nodules of legumes; Azotobacter free-living; lightning)</li>
<li><strong>Nitrification:</strong> NH3 -> NO2- -> NO3- (nitrates) by nitrifying bacteria (Nitrosomonas, Nitrobacter)</li>
<li><strong>Assimilation:</strong> Plants absorb NO3- and use it to make amino acids and proteins</li>
<li><strong>Ammonification:</strong> Decomposers break down proteins in dead matter -> ammonia (NH3)</li>
<li><strong>Denitrification:</strong> NO3- -> N2 (back to atmosphere) by denitrifying bacteria in waterlogged/anaerobic soils</li>
</ul>', 1),

(t13, 'Environmental Issues and Conservation', '<h2>Environmental Issues and Conservation</h2>

<h3>Population Ecology</h3>

<h4>Population Growth Curves</h4>
<ul>
<li><strong>J-shaped curve (Exponential growth):</strong> Population grows rapidly without limits; occurs when resources are unlimited</li>
<li><strong>S-shaped curve (Logistic growth):</strong> Growth slows as population approaches the carrying capacity (K) of the environment</li>
<li><strong>Carrying capacity:</strong> Maximum population size that an environment can sustainably support</li>
</ul>

<h4>Factors Affecting Population Size</h4>
<p><strong>Density-dependent factors (affected by population density):</strong></p>
<ul>
<li>Food/resource availability</li>
<li>Disease and parasites</li>
<li>Predation</li>
<li>Competition (intraspecific and interspecific)</li>
</ul>
<p><strong>Density-independent factors (not affected by population density):</strong></p>
<ul>
<li>Natural disasters (floods, fires, earthquakes)</li>
<li>Weather and climate</li>
<li>Pollution</li>
</ul>

<h3>Pollution</h3>
<p>Pollution is the introduction of harmful substances into the environment.</p>

<h4>Types of Pollution</h4>
<table border="1">
<tr><th>Type</th><th>Causes</th><th>Effects</th></tr>
<tr><td>Air pollution</td><td>Vehicle emissions, burning fossil fuels, factories</td><td>Acid rain, smog, respiratory diseases, ozone depletion</td></tr>
<tr><td>Water pollution</td><td>Industrial waste, sewage, agricultural runoff (fertilizers, pesticides)</td><td>Eutrophication, death of aquatic life, waterborne diseases</td></tr>
<tr><td>Soil pollution</td><td>Pesticides, herbicides, heavy metals, industrial waste</td><td>Reduced soil fertility, accumulation in food chains (bioaccumulation)</td></tr>
<tr><td>Noise pollution</td><td>Traffic, industry, construction</td><td>Hearing loss, stress, disrupted wildlife behavior</td></tr>
</table>

<h4>Acid Rain</h4>
<p>Caused by sulfur dioxide (SO2) and nitrogen oxides (NOx) reacting with water vapor to form sulfuric acid and nitric acid in the atmosphere.</p>
<p>Sources: Burning coal and oil in power stations; vehicle exhausts</p>
<p>Effects: Damages forests; acidifies lakes (kills aquatic life); corrodes buildings and statues; damages crops</p>

<h4>Greenhouse Effect and Climate Change</h4>
<p>Greenhouse gases (CO2, CH4, N2O, H2O vapour) trap heat radiated from Earth, warming the planet.</p>
<p>Enhanced greenhouse effect: Human activities increase greenhouse gas concentrations, causing global warming.</p>
<p>Effects of climate change: Rising sea levels; more extreme weather events; melting ice caps; changes in species distributions; coral bleaching</p>

<h4>Eutrophication</h4>
<ol>
<li>Excess fertilizers (nitrates, phosphates) wash into water bodies</li>
<li>Algae bloom (algal bloom) - water surface covered with algae</li>
<li>Algae block sunlight; aquatic plants die</li>
<li>Decomposers multiply; use up oxygen (BOD increases)</li>
<li>Fish and other aquatic organisms die from lack of oxygen</li>
</ol>

<h4>Ozone Depletion</h4>
<p>Ozone (O3) in the stratosphere absorbs harmful UV radiation from the sun.</p>
<p>CFCs (chlorofluorocarbons) from aerosols and refrigerants destroy ozone molecules.</p>
<p>Effects: Increased UV radiation reaching Earth causes skin cancer, cataracts, harm to ecosystems</p>

<h3>Conservation</h3>
<p>Conservation is the sustainable use and management of natural resources to prevent their depletion and protect biodiversity.</p>

<h4>Reasons for Conservation</h4>
<ul>
<li>Maintain biodiversity (variety of life)</li>
<li>Preserve potential medicines and food sources</li>
<li>Maintain ecosystem stability</li>
<li>Economic value (ecotourism)</li>
<li>Ethical responsibility to future generations</li>
</ul>

<h4>Methods of Conservation</h4>
<ul>
<li><strong>In-situ conservation:</strong> Protecting organisms in their natural habitat. National parks, nature reserves, game reserves, biosphere reserves.</li>
<li><strong>Ex-situ conservation:</strong> Protecting organisms outside their natural habitat. Zoos, botanical gardens, seed banks, captive breeding programs.</li>
<li>Legislation and international agreements (CITES - Convention on International Trade in Endangered Species)</li>
<li>Sustainable farming and forestry</li>
<li>Reforestation and habitat restoration</li>
<li>Reduction of pollution</li>
<li>Education and awareness</li>
</ul>

<h4>Endangered vs. Extinct</h4>
<ul>
<li><strong>Endangered:</strong> At risk of extinction; small population remaining</li>
<li><strong>Vulnerable:</strong> At risk of becoming endangered</li>
<li><strong>Extinct:</strong> No living individuals remaining</li>
</ul>

<h3>Biodiversity</h3>
<p>The variety of life on Earth at all levels: genetic diversity, species diversity, and ecosystem diversity.</p>
<p><strong>Threats to biodiversity:</strong></p>
<ul>
<li>Habitat destruction (deforestation, urbanization)</li>
<li>Pollution</li>
<li>Overexploitation (overhunting, overfishing)</li>
<li>Invasive species</li>
<li>Climate change</li>
</ul>', 2);

-- ============================================================
-- TOPIC 14: Force, Motion and Energy
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t14;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t14, 'Force and Motion', '<h2>Force, Motion and Energy</h2>

<h3>Scalar and Vector Quantities</h3>
<table border="1">
<tr><th>Scalar (magnitude only)</th><th>Vector (magnitude + direction)</th></tr>
<tr><td>Distance</td><td>Displacement</td></tr>
<tr><td>Speed</td><td>Velocity</td></tr>
<tr><td>Mass</td><td>Weight</td></tr>
<tr><td>Time</td><td>Force</td></tr>
<tr><td>Energy</td><td>Acceleration</td></tr>
<tr><td>Temperature</td><td>Momentum</td></tr>
</table>

<h3>Distance vs. Displacement</h3>
<ul>
<li><strong>Distance:</strong> Total path length traveled (scalar)</li>
<li><strong>Displacement:</strong> Straight-line distance from start to finish point, with direction (vector)</li>
</ul>

<h3>Speed, Velocity and Acceleration</h3>
<p><strong>Speed (v) = Distance (d) / Time (t)</strong> units: m/s</p>
<p><strong>Velocity = Displacement / Time</strong> units: m/s (with direction)</p>
<p><strong>Acceleration (a) = Change in velocity / Time = (v - u) / t</strong> units: m/s2</p>
<ul>
<li>Positive acceleration: speeding up</li>
<li>Negative acceleration (deceleration): slowing down</li>
</ul>

<h3>Equations of Motion (SUVAT)</h3>
<p>For uniform acceleration (constant acceleration):</p>
<ul>
<li>v = u + at</li>
<li>s = ut + (1/2)at2</li>
<li>v2 = u2 + 2as</li>
<li>s = (u + v)t / 2</li>
</ul>
<p>Where: s = displacement, u = initial velocity, v = final velocity, a = acceleration, t = time</p>

<h3>Distance-Time and Velocity-Time Graphs</h3>
<table border="1">
<tr><th>Graph</th><th>What it shows</th></tr>
<tr><td>Horizontal line on d-t graph</td><td>Object is stationary</td></tr>
<tr><td>Straight line on d-t graph</td><td>Constant speed</td></tr>
<tr><td>Curve on d-t graph</td><td>Changing speed (acceleration or deceleration)</td></tr>
<tr><td>Slope of d-t graph</td><td>Speed</td></tr>
<tr><td>Horizontal line on v-t graph</td><td>Constant velocity</td></tr>
<tr><td>Slope of v-t graph</td><td>Acceleration</td></tr>
<tr><td>Area under v-t graph</td><td>Displacement</td></tr>
</table>

<h3>Newton''s Laws of Motion</h3>

<h4>First Law (Law of Inertia)</h4>
<p>An object at rest stays at rest, and an object in motion stays in motion at constant velocity, unless acted upon by an unbalanced (net) force.</p>
<p>Inertia: The tendency of an object to resist changes in its state of motion. Inertia depends on mass (greater mass = greater inertia).</p>

<h4>Second Law</h4>
<p><strong>F = ma</strong> (Force = mass x acceleration)</p>
<ul>
<li>F = force in Newtons (N)</li>
<li>m = mass in kilograms (kg)</li>
<li>a = acceleration in m/s2</li>
<li>The net force is proportional to acceleration</li>
</ul>

<h4>Third Law</h4>
<p>For every action, there is an equal and opposite reaction. Forces always occur in pairs (action-reaction pairs).</p>
<p>Examples: Rocket propulsion; swimming; walking; recoil of a gun</p>

<h3>Weight and Mass</h3>
<ul>
<li><strong>Mass:</strong> Amount of matter in an object. Measured in kg. Constant everywhere.</li>
<li><strong>Weight:</strong> Gravitational force on an object. Measured in Newtons (N). W = mg</li>
<li>g on Earth = 10 m/s2 (or 9.8 m/s2 more precisely)</li>
<li>Weight changes with gravitational field strength; mass does not</li>
</ul>

<h3>Forces</h3>
<table border="1">
<tr><th>Force</th><th>Description</th></tr>
<tr><td>Gravity</td><td>Attractive force between masses; causes weight</td></tr>
<tr><td>Normal (reaction) force</td><td>Perpendicular contact force from a surface</td></tr>
<tr><td>Friction</td><td>Opposing force when surfaces in contact move/tend to move relative to each other</td></tr>
<tr><td>Tension</td><td>Pulling force through a string or rope</td></tr>
<tr><td>Buoyancy (upthrust)</td><td>Upward force on submerged/floating object equal to weight of fluid displaced (Archimedes'' principle)</td></tr>
<tr><td>Elastic (spring) force</td><td>Restoring force in springs and elastic materials (Hooke''s law)</td></tr>
<tr><td>Air resistance/Drag</td><td>Friction force of air on moving objects</td></tr>
</table>

<h3>Momentum</h3>
<p>Momentum (p) = mass (m) x velocity (v)</p>
<p>Units: kg m/s</p>
<p><strong>Law of Conservation of Momentum:</strong> The total momentum of a closed system remains constant if no external forces act on it.</p>
<p>This applies to collisions and explosions.</p>', 1),

(t14, 'Energy: Forms, Transformations and Power', '<h2>Energy: Forms, Transformations and Power</h2>

<h3>Forms of Energy</h3>
<ul>
<li><strong>Kinetic energy (KE):</strong> Energy of motion. KE = (1/2)mv2</li>
<li><strong>Potential energy (PE):</strong> Stored energy. Gravitational PE = mgh</li>
<li><strong>Chemical energy:</strong> Energy stored in chemical bonds (food, fuels, batteries)</li>
<li><strong>Electrical energy:</strong> Energy of moving charges</li>
<li><strong>Thermal (heat) energy:</strong> Internal energy of particles</li>
<li><strong>Light (radiant) energy:</strong> Electromagnetic radiation</li>
<li><strong>Sound energy:</strong> Mechanical waves</li>
<li><strong>Nuclear energy:</strong> Energy in atomic nuclei</li>
<li><strong>Elastic/strain energy:</strong> Energy stored in stretched or compressed objects</li>
</ul>

<h3>Law of Conservation of Energy</h3>
<p>Energy cannot be created or destroyed; it can only be converted from one form to another. The total energy in a closed system remains constant.</p>

<h3>Energy Transformations</h3>
<table border="1">
<tr><th>Device/Process</th><th>Energy Input</th><th>Energy Output</th></tr>
<tr><td>Solar cell</td><td>Light</td><td>Electrical</td></tr>
<tr><td>Electric motor</td><td>Electrical</td><td>Kinetic + Heat</td></tr>
<tr><td>Loudspeaker</td><td>Electrical</td><td>Sound</td></tr>
<tr><td>Microphone</td><td>Sound</td><td>Electrical</td></tr>
<tr><td>Battery</td><td>Chemical</td><td>Electrical</td></tr>
<tr><td>Light bulb</td><td>Electrical</td><td>Light + Heat</td></tr>
<tr><td>Photosynthesis</td><td>Light</td><td>Chemical</td></tr>
<tr><td>Respiration</td><td>Chemical</td><td>Kinetic + Heat</td></tr>
<tr><td>Generator</td><td>Kinetic</td><td>Electrical</td></tr>
</table>

<h3>Work</h3>
<p>Work is done when a force moves an object in the direction of the force.</p>
<p><strong>Work (W) = Force (F) x Distance (d)</strong></p>
<p>Units: Joules (J)</p>
<p>Work = Energy transferred</p>

<h3>Power</h3>
<p>Power is the rate of doing work (or rate of energy transfer).</p>
<p><strong>Power (P) = Work done (W) / Time (t) = Energy transferred / Time</strong></p>
<p>Units: Watts (W) or Joules per second (J/s)</p>
<p>1 kW = 1000 W; 1 MW = 1,000,000 W</p>

<h3>Efficiency</h3>
<p>Efficiency = (Useful energy output / Total energy input) x 100%</p>
<p>No machine is 100% efficient because some energy is always lost as heat due to friction.</p>

<h3>Simple Machines</h3>
<p>Machines make work easier by changing the magnitude or direction of a force.</p>
<table border="1">
<tr><th>Machine</th><th>Examples</th><th>Use</th></tr>
<tr><td>Lever</td><td>Seesaw, scissors, crowbar, wheelbarrow</td><td>Multiply force or extend range of motion</td></tr>
<tr><td>Inclined plane</td><td>Ramp, wedge, screw</td><td>Reduce effort needed to raise objects</td></tr>
<tr><td>Pulley</td><td>Fixed, movable, and block-and-tackle systems</td><td>Change direction of force; multiply force</td></tr>
<tr><td>Wheel and axle</td><td>Steering wheel, screwdriver, doorknob</td><td>Multiply force or speed</td></tr>
<tr><td>Gear</td><td>Bicycle gears, clockwork mechanisms</td><td>Change speed or torque</td></tr>
</table>

<h3>Mechanical Advantage (MA)</h3>
<p>MA = Load / Effort = output force / input force</p>
<p>MA greater than 1: machine multiplies force (but at expense of distance)</p>

<h3>Pressure</h3>
<p><strong>Pressure (P) = Force (F) / Area (A)</strong></p>
<p>Units: Pascals (Pa) or N/m2</p>
<ul>
<li>Pressure in liquids increases with depth</li>
<li>Atmospheric pressure: about 101,325 Pa = 1 atm</li>
<li>Pressure acts equally in all directions in fluids (Pascal''s Principle)</li>
</ul>

<h3>Hooke''s Law</h3>
<p>The extension of a spring is directly proportional to the applied force, provided the elastic limit is not exceeded.</p>
<p>F = ke (where k = spring constant, e = extension)</p>
<p>Beyond the elastic limit, the spring is permanently deformed.</p>', 2);

-- ============================================================
-- TOPIC 15: Electricity and Magnetism
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t15;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t15, 'Electric Circuits', '<h2>Electricity and Magnetism</h2>

<h3>Electric Charge</h3>
<ul>
<li>Two types: positive (+) and negative (-)</li>
<li>Like charges repel; unlike charges attract</li>
<li>SI unit of charge: Coulomb (C)</li>
<li>Charge on one electron = -1.6 x 10-19 C</li>
</ul>

<h3>Electric Current</h3>
<p>The flow of electric charge (usually electrons in a conductor).</p>
<p><strong>I = Q / t</strong> (Current = Charge / Time)</p>
<p>SI unit: Ampere (A)</p>
<p>Measured with an <strong>ammeter</strong> (connected in series)</p>
<p>Conventional current flows from positive to negative terminal; electron flow is from negative to positive.</p>

<h3>Potential Difference (Voltage)</h3>
<p>Work done per unit charge to move charge between two points.</p>
<p><strong>V = W / Q</strong></p>
<p>SI unit: Volt (V)</p>
<p>Measured with a <strong>voltmeter</strong> (connected in parallel)</p>

<h3>Resistance</h3>
<p>Opposition to the flow of electric current.</p>
<p>SI unit: Ohm (O)</p>

<h4>Ohm''s Law</h4>
<p>The current through a conductor is directly proportional to the voltage across it, provided temperature is constant.</p>
<p><strong>V = IR</strong> (Voltage = Current x Resistance)</p>

<h4>Factors Affecting Resistance</h4>
<ul>
<li><strong>Length:</strong> Longer wire = greater resistance</li>
<li><strong>Cross-sectional area:</strong> Thicker wire = less resistance</li>
<li><strong>Material:</strong> Resistivity (conductors like copper have low resistance; insulators have high resistance)</li>
<li><strong>Temperature:</strong> For metals, resistance increases with temperature; for semiconductors, resistance decreases</li>
</ul>

<h3>Series and Parallel Circuits</h3>

<h4>Series Circuits</h4>
<ul>
<li>Components connected in a single loop</li>
<li>Same current flows through all components: I (total) = I1 = I2 = I3</li>
<li>Voltages add up: V (total) = V1 + V2 + V3</li>
<li>Total resistance: R (total) = R1 + R2 + R3</li>
<li>If one component fails, the whole circuit breaks</li>
</ul>

<h4>Parallel Circuits</h4>
<ul>
<li>Components connected in separate branches</li>
<li>Same voltage across all branches: V (total) = V1 = V2 = V3</li>
<li>Currents add up: I (total) = I1 + I2 + I3</li>
<li>Total resistance: 1/R(total) = 1/R1 + 1/R2 + 1/R3</li>
<li>Total resistance is less than the smallest individual resistance</li>
<li>If one component fails, others continue working</li>
</ul>

<h3>Electric Power</h3>
<p><strong>P = IV = I2R = V2/R</strong></p>
<p>SI unit: Watt (W)</p>
<p>Energy consumed: E = Pt = IVt</p>
<p>Electricity bill uses kilowatt-hours (kWh): 1 kWh = 3,600,000 J</p>

<h3>Safety Devices</h3>
<ul>
<li><strong>Fuse:</strong> Contains a thin wire that melts if current exceeds a safe limit, breaking the circuit</li>
<li><strong>Circuit breaker:</strong> Automatically switches off if current is too high; can be reset</li>
<li><strong>Earth wire:</strong> Provides safe path for current if appliance develops fault; prevents electric shock</li>
<li><strong>Residual Current Device (RCD):</strong> Detects small differences in current; cuts off power very quickly</li>
</ul>

<h3>Conductors, Insulators and Semiconductors</h3>
<table border="1">
<tr><th>Type</th><th>Properties</th><th>Examples</th></tr>
<tr><td>Conductors</td><td>Low resistance; allow electricity to flow easily</td><td>Copper, aluminium, iron, silver, gold, graphite</td></tr>
<tr><td>Insulators</td><td>High resistance; do not allow current to flow</td><td>Rubber, plastic, wood, glass, air</td></tr>
<tr><td>Semiconductors</td><td>Intermediate resistance; conductivity can be controlled</td><td>Silicon, Germanium; used in transistors, diodes, microchips</td></tr>
</table>', 1),

(t15, 'Magnetism and Electromagnetic Effects', '<h2>Magnetism and Electromagnetic Effects</h2>

<h3>Magnets and Magnetic Fields</h3>
<ul>
<li>Magnets have two poles: North (N) and South (S)</li>
<li>Like poles repel; unlike poles attract</li>
<li>Magnetic field: Region around a magnet where magnetic force is experienced</li>
<li>Magnetic field lines: Show direction of force on a North pole; flow from N to S outside the magnet</li>
<li>Stronger field where field lines are closer together</li>
</ul>

<h3>Magnetic Materials</h3>
<ul>
<li><strong>Ferromagnetic materials:</strong> Strongly attracted to magnets; can be magnetized. Examples: iron, nickel, cobalt, steel</li>
<li><strong>Paramagnetic:</strong> Weakly attracted to magnets (aluminium, platinum)</li>
<li><strong>Diamagnetic:</strong> Weakly repelled by magnets (copper, water, gold)</li>
</ul>

<h3>Making and Destroying Magnets</h3>
<p><strong>Making magnets:</strong></p>
<ul>
<li>Stroking with a magnet (magnetization by stroking)</li>
<li>Placing in a coil carrying direct current (electromagnet)</li>
<li>Hammering in the direction of Earth''s magnetic field</li>
</ul>
<p><strong>Destroying magnets:</strong></p>
<ul>
<li>Heating above Curie temperature</li>
<li>Hammering or dropping repeatedly</li>
<li>Placing in an alternating current (AC) field</li>
</ul>

<h3>Electromagnetism: Magnetic Effect of Current</h3>
<p>A current-carrying conductor produces a magnetic field around it.</p>
<p><strong>Right-hand grip rule:</strong> Grip the wire with the right hand; thumb points in direction of conventional current; fingers curl in direction of magnetic field.</p>

<h4>Solenoid (Electromagnet)</h4>
<p>A coil of wire carrying current acts like a bar magnet. The magnetic field inside a solenoid is strong and uniform.</p>
<p>Strength of electromagnet increases with:</p>
<ul>
<li>More turns of wire in the coil</li>
<li>Greater current</li>
<li>Iron core (instead of air core)</li>
</ul>
<p><strong>Uses of electromagnets:</strong> Electric bells, motors, relays, MRI machines, cranes in scrapyards, loudspeakers, circuit breakers</p>

<h3>Electromagnetic Induction</h3>
<p>A changing magnetic field induces an EMF (and current) in a conductor.</p>
<p><strong>Faraday''s Law:</strong> The induced EMF is proportional to the rate of change of magnetic flux.</p>
<p><strong>Lenz''s Law:</strong> The induced current opposes the change that caused it (by Newton''s third law).</p>
<p>EMF increases with: faster movement, stronger magnet, more turns in coil</p>

<h3>Generators and Motors</h3>
<table border="1">
<tr><th>Device</th><th>Energy Conversion</th><th>Principle</th></tr>
<tr><td>Generator (dynamo)</td><td>Kinetic to Electrical</td><td>Electromagnetic induction</td></tr>
<tr><td>Electric motor</td><td>Electrical to Kinetic</td><td>Force on current-carrying conductor in magnetic field</td></tr>
<tr><td>Transformer</td><td>Changes AC voltage level</td><td>Electromagnetic induction between coils</td></tr>
</table>

<h3>Transformers</h3>
<p>Used to increase (step-up) or decrease (step-down) AC voltage.</p>
<p><strong>Turns ratio: Vs/Vp = Ns/Np</strong></p>
<p>Where: Vs = secondary voltage, Vp = primary voltage, Ns = secondary turns, Np = primary turns</p>
<p>For an ideal transformer (100% efficient): VpIp = VsIs</p>
<p><strong>Uses:</strong> Electrical power transmission (step-up for long distance to reduce energy loss; step-down for safe home use)</p>

<h3>Force on a Current-Carrying Conductor (Motor Effect)</h3>
<p>A current-carrying conductor in a magnetic field experiences a force.</p>
<p><strong>Fleming''s Left-Hand Rule (Motors):</strong></p>
<ul>
<li>Thumb: direction of force (thrust/motion)</li>
<li>Index finger: direction of magnetic field (N to S)</li>
<li>Middle finger: direction of conventional current</li>
</ul>
<p>F = BIL (Force = Magnetic flux density x Current x Length)</p>

<h3>Fleming''s Right-Hand Rule (Generators)</h3>
<ul>
<li>Thumb: direction of motion of conductor</li>
<li>Index finger: direction of magnetic field</li>
<li>Middle finger: direction of induced current</li>
</ul>', 2);

END $$;
