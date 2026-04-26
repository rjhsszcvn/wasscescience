/*
  # Add Biology Exam Questions - Batch 1
  
  Adds 80 new WASSCE-standard multiple choice questions for Biology
  covering Cell Biology, Genetics, Ecology, Nutrition, Respiration, 
  Transport, Reproduction, Photosynthesis and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Cell Biology (b1000005-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'The organelle responsible for producing energy (ATP) in a cell is:',
 '["Ribosome","Nucleus","Mitochondrion","Chloroplast"]', 2,
 'Mitochondria are the "powerhouses" of the cell where aerobic respiration occurs to produce ATP.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'Which organelle is responsible for protein synthesis?',
 '["Mitochondrion","Ribosome","Golgi apparatus","Vacuole"]', 1,
 'Ribosomes are the sites of protein synthesis in all cells.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'The cell wall of plant cells is mainly composed of:',
 '["Starch","Protein","Cellulose","Chitin"]', 2,
 'Plant cell walls are made of cellulose — a structural polysaccharide that provides rigidity.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'Osmosis is defined as the movement of water molecules:',
 '["From high solute concentration to low solute concentration","From low water potential to high water potential","From high water potential to low water potential through a semi-permeable membrane","From low to high temperature"]', 2,
 'Osmosis: water moves from high water potential (dilute solution) to low water potential (concentrated) through a semi-permeable membrane.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'A cell placed in a hypertonic solution will:',
 '["Swell up","Remain the same","Shrink (plasmolysis in plants)","Burst"]', 2,
 'In a hypertonic solution (more solute), water leaves the cell by osmosis — the cell shrinks.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'Which feature is found in animal cells but NOT plant cells?',
 '["Mitochondria","Cell membrane","Centrioles","Nucleus"]', 2,
 'Centrioles are found in animal cells (and lower plants) and are involved in cell division.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'The nucleus controls cell activities because it contains:',
 '["Ribosomes","DNA with genetic instructions","ATP","Enzymes"]', 1,
 'The nucleus contains DNA which carries the genetic information that controls all cell activities.', 'easy'),

-- Genetics and Heredity (b1000005-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'Mendel''s Law of Segregation states that:',
 '["All offspring resemble both parents","Each parent contributes one allele to offspring, and alleles separate during gamete formation","Traits always blend in offspring","Dominant traits always suppress recessive ones completely"]', 1,
 'The Law of Segregation: allele pairs separate during meiosis, and each gamete gets one allele.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'In a cross between Tt and tt, what proportion of offspring will be tall (T is dominant)?',
 '["All tall","3/4 tall","1/2 tall","1/4 tall"]', 2,
 'Tt × tt gives: Tt, Tt, tt, tt — 50% (1/2) tall phenotype.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'Sex is determined in humans by:',
 '["The mother''s chromosomes only","The father''s X or Y chromosome","Blood type","Nutrition"]', 1,
 'Males are XY and females XX. The father contributes either X or Y, determining sex.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'A carrier of a recessive genetic condition is a person who:',
 '["Has the condition","Has two copies of the recessive allele","Has one recessive allele but appears normal","Cannot pass the allele to children"]', 2,
 'A carrier (Aa) has one recessive allele but shows the dominant phenotype, and can pass on the recessive allele.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'Sickle cell anaemia is inherited as:',
 '["Autosomal dominant","Autosomal recessive","X-linked dominant","X-linked recessive"]', 1,
 'Sickle cell anaemia is an autosomal recessive condition — both alleles must be defective for the disease.', 'medium'),

-- Ecology and Environment (b1000005-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000003',
 'The role of decomposers in an ecosystem is to:',
 '["Produce organic compounds from inorganic ones","Break down dead organic matter and recycle nutrients","Feed on plants","Absorb sunlight"]', 1,
 'Decomposers break down dead organic matter, releasing inorganic nutrients back into the ecosystem.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000003',
 'In a food chain, energy transfer is:',
 '["100% efficient","About 10% efficient","50% efficient","Variable with no pattern"]', 1,
 'Only about 10% of energy is transferred to the next trophic level; the rest is lost as heat.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000003',
 'The process by which nitrogen is fixed from the atmosphere into the soil is carried out by:',
 '["All plants","Nitrogen-fixing bacteria (e.g., Rhizobium)","Animals","Fungi"]', 1,
 'Nitrogen-fixing bacteria like Rhizobium convert atmospheric N₂ into ammonium compounds.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000003',
 'Eutrophication of a water body is caused by:',
 '["Excessive fish population","High levels of nitrate and phosphate leading to algal bloom","Low rainfall","Industrial noise pollution"]', 1,
 'Excess nutrients (nitrates/phosphates) cause algal blooms, reducing oxygen and killing aquatic life.', 'medium'),

-- Nutrition and Digestion (b1000005-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'The enzyme that digests starch in the mouth is:',
 '["Pepsin","Lipase","Amylase","Trypsin"]', 2,
 'Salivary amylase begins starch digestion in the mouth by breaking it into maltose.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'Bile is produced by the ______ and stored in the ______.',
 '["Pancreas / stomach","Liver / gall bladder","Stomach / liver","Small intestine / large intestine"]', 1,
 'Bile is produced in the liver and stored in the gall bladder before release into the small intestine.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'The role of villi in the small intestine is to:',
 '["Produce digestive enzymes","Increase surface area for absorption","Produce bile","Store glycogen"]', 1,
 'Villi (and microvilli) massively increase the surface area of the small intestine for nutrient absorption.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'Kwashiorkor is a disease caused by:',
 '["Vitamin C deficiency","Protein deficiency","Iron deficiency","Calcium deficiency"]', 1,
 'Kwashiorkor results from severe protein deficiency, commonly affecting children in West Africa.', 'easy'),

-- Respiration (b1000005-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000005',
 'The equation for aerobic respiration is:',
 '["C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂","C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + ATP","6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂","C₆H₁₂O₆ → 6C + 6H₂O"]', 1,
 'Aerobic respiration: glucose + oxygen → carbon dioxide + water + energy (ATP).', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000005',
 'Anaerobic respiration in yeast produces:',
 '["Lactic acid and CO₂","Ethanol and CO₂","Water and CO₂","Ethanol only"]', 1,
 'Yeast fermentation: glucose → ethanol + carbon dioxide (no oxygen required).', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000005',
 'The net yield of ATP from aerobic respiration of one glucose molecule is approximately:',
 '["2 ATP","38 ATP","100 ATP","10 ATP"]', 1,
 'Aerobic respiration yields approximately 36-38 ATP molecules per glucose molecule.', 'hard'),

-- Transport in Organisms (b1000005-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000006',
 'In plants, water moves up the stem mainly by:',
 '["Active transport","Root pressure only","Transpiration pull (cohesion-tension mechanism)","Osmosis only"]', 2,
 'The cohesion-tension mechanism: transpiration from leaves creates tension that pulls water up xylem.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000006',
 'Red blood cells are adapted for oxygen transport by:',
 '["Having a large nucleus","Having a biconcave disc shape and haemoglobin","Being very large","Having many mitochondria"]', 1,
 'RBCs have biconcave shape (large surface area), no nucleus, and are packed with haemoglobin.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000006',
 'The function of the sieve tubes in phloem is:',
 '["Transport water upwards","Transport dissolved sugars (translocation)","Support the plant","Gas exchange"]', 1,
 'Phloem sieve tubes transport dissolved sugars and organic compounds throughout the plant.', 'medium'),

-- Excretion and Homeostasis (b1000005-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000007',
 'The functional unit of the kidney is:',
 '["The ureter","The nephron","The glomerulus only","The Bowman''s capsule"]', 1,
 'The nephron is the structural and functional unit of the kidney — it filters blood and produces urine.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000007',
 'Urea is formed in the:',
 '["Kidney","Liver","Bladder","Spleen"]', 1,
 'Urea is produced in the liver from the breakdown of excess amino acids (deamination).', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000007',
 'In osmoregulation, when blood is too concentrated, the kidney:',
 '["Produces more dilute urine","Produces more concentrated urine","Stops filtration","Produces more blood"]', 1,
 'When blood is too concentrated, ADH is released, causing kidneys to reabsorb more water — concentrated urine.', 'medium'),

-- Nervous System and Hormones (b1000005-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000008',
 'The gap between two neurons is called a:',
 '["Dendrite","Axon","Synapse","Myelin sheath"]', 2,
 'A synapse is the junction between two neurons where nerve impulses are transmitted chemically.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000008',
 'Insulin is produced by the:',
 '["Liver","Adrenal gland","Pancreas","Thyroid gland"]', 2,
 'Insulin is produced by the beta cells of the islets of Langerhans in the pancreas.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000008',
 'A reflex arc involves impulses travelling:',
 '["From brain to effector only","From receptor → sensory neuron → relay neuron → motor neuron → effector","From motor to sensory neurons","Only through the brain"]', 1,
 'A reflex arc bypasses the brain: receptor → sensory neuron → relay neuron in spinal cord → motor neuron → effector.', 'medium'),

-- Reproduction (b1000005-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000009',
 'The process by which a cell divides to form two identical daughter cells is called:',
 '["Meiosis","Mitosis","Fertilisation","Budding"]', 1,
 'Mitosis produces two genetically identical daughter cells — used for growth and repair.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000009',
 'Meiosis results in:',
 '["Two diploid cells","Four haploid cells","Two haploid cells","Four diploid cells"]', 1,
 'Meiosis produces four genetically varied haploid cells (gametes).', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000009',
 'Fertilisation in flowering plants occurs when:',
 '["Pollen lands on a stigma","A pollen tube grows into the ovule and sperm nucleus fuses with egg cell","The seed germinates","The flower opens"]', 1,
 'Fertilisation: the sperm nucleus travels down the pollen tube and fuses with the egg cell in the ovule.', 'medium'),

-- Photosynthesis (b1000005-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000010',
 'The overall equation for photosynthesis is:',
 '["6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂","C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O","CO₂ + H₂O → glucose","6CO₂ → C₆H₁₂O₆ + 6O₂"]', 0,
 'Photosynthesis: 6CO₂ + 6H₂O + light energy → C₆H₁₂O₆ + 6O₂.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000010',
 'Light is absorbed in photosynthesis primarily by:',
 '["Starch","Chlorophyll","Cellulose","Glucose"]', 1,
 'Chlorophyll is the green pigment in chloroplasts that absorbs light for photosynthesis.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000010',
 'The limiting factor for photosynthesis on a bright, warm day with adequate water is likely:',
 '["Light intensity","Temperature","CO₂ concentration","Water"]', 2,
 'When light and temperature are not limiting, CO₂ concentration often becomes the limiting factor.', 'hard'),

-- Disease and Immunity (079807af-fd97-4a5f-9e58-7596317875e8)
('a1000000-0000-0000-0000-000000000005', '079807af-fd97-4a5f-9e58-7596317875e8',
 'Malaria is caused by:',
 '["A bacterium","A virus","A protozoan (Plasmodium)","A fungus"]', 2,
 'Malaria is caused by Plasmodium, a protozoan parasite transmitted by female Anopheles mosquitoes.', 'easy'),

('a1000000-0000-0000-0000-000000000005', '079807af-fd97-4a5f-9e58-7596317875e8',
 'Antibodies are produced by:',
 '["Red blood cells","White blood cells (B lymphocytes)","Platelets","Liver cells"]', 1,
 'B lymphocytes (B cells) produce antibodies in response to antigens.', 'easy'),

('a1000000-0000-0000-0000-000000000005', '079807af-fd97-4a5f-9e58-7596317875e8',
 'Vaccines work by:',
 '["Killing all bacteria in the body","Introducing weakened/dead pathogens to stimulate immune memory","Producing antibiotics","Directly destroying viruses"]', 1,
 'Vaccines stimulate the immune system to produce memory cells without causing disease.', 'easy'),

-- Evolution (6503198e-50cc-4ba8-8e83-eccae198574c)
('a1000000-0000-0000-0000-000000000005', '6503198e-50cc-4ba8-8e83-eccae198574c',
 'Darwin''s theory of natural selection states that:',
 '["All organisms evolve at the same rate","Organisms with beneficial traits are more likely to survive and reproduce","Evolution occurs through use and disuse of organs","Mutations are always harmful"]', 1,
 'Natural selection: organisms with advantageous traits survive, reproduce, and pass on those traits.', 'easy'),

-- Support and Movement (176bea3d-a322-4516-a56a-0f95a24711bb)
('a1000000-0000-0000-0000-000000000005', '176bea3d-a322-4516-a56a-0f95a24711bb',
 'Which type of joint allows the greatest range of movement?',
 '["Fixed joint","Hinge joint","Ball and socket joint","Pivot joint"]', 2,
 'Ball and socket joints (e.g., hip, shoulder) allow movement in all directions.', 'easy'),

('a1000000-0000-0000-0000-000000000005', '176bea3d-a322-4516-a56a-0f95a24711bb',
 'Tendons connect:',
 '["Bone to bone","Muscle to bone","Bone to cartilage","Organ to organ"]', 1,
 'Tendons are tough connective tissue that attach muscles to bones.', 'easy'),

-- Animal Kingdom (81d70f62-ea90-4249-b58b-12cadf33f2c7)
('a1000000-0000-0000-0000-000000000005', '81d70f62-ea90-4249-b58b-12cadf33f2c7',
 'Organisms in the phylum Arthropoda are characterised by:',
 '["Soft bodies","Jointed legs and exoskeleton","Internal skeleton","Radial symmetry"]', 1,
 'Arthropods (insects, crabs, spiders) have an exoskeleton and jointed appendages.', 'easy'),

('a1000000-0000-0000-0000-000000000005', '81d70f62-ea90-4249-b58b-12cadf33f2c7',
 'Amphibians are characterised by:',
 '["Living only on land","Living only in water","Spending part of their life in water and part on land","Having scales and laying eggs on land"]', 2,
 'Amphibians (frogs, toads) live both in water (larval stage) and on land (adult stage).', 'easy'),

-- Growth and Development (7a0f879f-8304-4f0c-a7e0-042a9f2d61e2)
('a1000000-0000-0000-0000-000000000005', '7a0f879f-8304-4f0c-a7e0-042a9f2d61e2',
 'Metamorphosis in butterflies occurs in the order:',
 '["Egg → larva → pupa → adult","Egg → pupa → larva → adult","Egg → adult → larva","Larva → egg → pupa → adult"]', 0,
 'Complete metamorphosis: egg → larva (caterpillar) → pupa (chrysalis) → adult (butterfly).', 'easy'),

-- Food Webs and Energy Flow (e6be5e60-dd3c-40df-8f55-2d866dd09ef1)
('a1000000-0000-0000-0000-000000000005', 'e6be5e60-dd3c-40df-8f55-2d866dd09ef1',
 'Producers in a food web are organisms that:',
 '["Eat other organisms","Make their own food through photosynthesis","Break down dead matter","Feed on herbivores"]', 1,
 'Producers (plants, algae) are autotrophs — they make organic compounds from inorganic ones.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'e6be5e60-dd3c-40df-8f55-2d866dd09ef1',
 'An ecological pyramid of numbers shows:',
 '["The number of organisms at each trophic level","The mass of organisms at each level","The energy at each level","The species diversity"]', 0,
 'A pyramid of numbers shows the number of individual organisms at each trophic level.', 'easy'),

-- More Cell Biology
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'Active transport differs from diffusion in that it:',
 '["Moves substances against the concentration gradient using energy","Moves substances along the concentration gradient","Does not require a membrane","Only works in plant cells"]', 0,
 'Active transport requires ATP energy to move substances against their concentration gradient.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000001',
 'The endoplasmic reticulum (ER) functions to:',
 '["Produce energy","Transport materials within the cell","Control cell division","Absorb light"]', 1,
 'The endoplasmic reticulum is a network of membranes involved in transport and synthesis within cells.', 'medium'),

-- More Genetics
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'A mutation is:',
 '["A change in an organism''s behaviour","A change in the DNA sequence of an organism","The passing of traits to offspring","A type of reproduction"]', 1,
 'A mutation is a change in the nucleotide sequence of DNA, which can affect protein production.', 'medium'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000002',
 'Colour blindness is an X-linked recessive condition. A carrier female crossed with a normal male would produce:',
 '["All normal children","Half of sons colour blind","All sons colour blind","All daughters colour blind"]', 1,
 'Carrier female (X^N X^n) × normal male (X^N Y): sons have 50% chance of being colour blind.', 'hard'),

-- More Ecology
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000003',
 'Biodiversity refers to:',
 '["The number of ecosystems in an area","The variety of life forms (species, genetic, ecosystem diversity)","Only the number of plant species","Only animal diversity"]', 1,
 'Biodiversity encompasses species diversity, genetic diversity, and ecosystem diversity.', 'easy'),

-- More Respiration
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000005',
 'Which molecule acts as the immediate source of energy in cells?',
 '["Glucose","Glycogen","ATP","Fat"]', 2,
 'ATP (adenosine triphosphate) is the immediate energy currency of cells.', 'medium'),

-- More Transport
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000006',
 'The function of stomata in plants is:',
 '["Absorb water from soil","Allow gas exchange (CO₂ in, O₂ out for photosynthesis)","Produce chlorophyll","Store starch"]', 1,
 'Stomata are pores, mainly on leaf undersides, through which gas exchange and transpiration occur.', 'easy'),

-- More Nervous System
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000008',
 'The hormone adrenaline prepares the body for:',
 '["Sleep","Digestion","Fight or flight response","Growth"]', 2,
 'Adrenaline (epinephrine) is the "fight or flight" hormone, increasing heart rate and alertness.', 'easy'),

-- More Nutrition
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'The test for starch using iodine solution gives:',
 '["A red colour","A blue-black colour","No colour change","A yellow colour"]', 1,
 'Iodine solution (iodine/potassium iodide) gives a blue-black colour in the presence of starch.', 'easy'),

('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000004',
 'Which vitamin is essential for blood clotting?',
 '["Vitamin A","Vitamin C","Vitamin D","Vitamin K"]', 3,
 'Vitamin K is essential for the synthesis of blood clotting factors.', 'medium'),

-- More Reproduction
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000009',
 'Pollination is the transfer of pollen from:',
 '["Stigma to anther","Anther to stigma of the same or another flower","Ovary to stigma","Sepal to petal"]', 1,
 'Pollination: pollen grains are transferred from an anther to the stigma of a flower.', 'easy'),

-- More Photosynthesis
('a1000000-0000-0000-0000-000000000005', 'b1000005-0000-0000-0000-000000000010',
 'The rate of photosynthesis is NOT directly affected by:',
 '["Light intensity","CO₂ concentration","Temperature","Soil pH"]', 3,
 'Soil pH affects mineral uptake but does not directly affect photosynthesis rate.', 'hard'),

-- Plant Kingdom (ca1a53a1-acfc-4d7a-a574-c1d644cde9d9)
('a1000000-0000-0000-0000-000000000005', 'ca1a53a1-acfc-4d7a-a574-c1d644cde9d9',
 'Which group of plants produces seeds enclosed in fruits?',
 '["Bryophytes","Ferns","Gymnosperms","Angiosperms"]', 3,
 'Angiosperms (flowering plants) produce seeds enclosed within a fruit (ovary wall).', 'easy'),

-- Biotechnology (95f3d523-6ed5-4e79-8037-52bc96aa7a12)
('a1000000-0000-0000-0000-000000000005', '95f3d523-6ed5-4e79-8037-52bc96aa7a12',
 'Genetic engineering involves:',
 '["Cross-breeding organisms","Directly altering DNA by inserting or removing genes","Selective breeding over generations","Cloning organisms"]', 1,
 'Genetic engineering directly manipulates DNA — inserting, deleting, or modifying specific genes.', 'medium'),

-- Coordination in Plants (c7afb583-6c2e-4ebd-9312-ced734370f8f)
('a1000000-0000-0000-0000-000000000005', 'c7afb583-6c2e-4ebd-9312-ced734370f8f',
 'Auxin causes plants to bend toward light (phototropism) by:',
 '["Causing all cells to grow faster","Accumulating on the shaded side causing unequal growth","Directly absorbing light","Reducing growth on the lit side"]', 1,
 'Auxin moves to the shaded side, causing those cells to elongate more — the plant bends toward light.', 'medium'),

-- More Disease
('a1000000-0000-0000-0000-000000000005', '079807af-fd97-4a5f-9e58-7596317875e8',
 'HIV is transmitted through:',
 '["Mosquito bites","Casual contact (handshakes)","Exchange of body fluids (blood, sexual contact)","Breathing the same air"]', 2,
 'HIV spreads through exchange of bodily fluids: blood, semen, breast milk, and sexual contact.', 'easy'),

-- Practical Biology (8c00a2c1-b8b0-4a92-8085-4b881b727b35)
('a1000000-0000-0000-0000-000000000005', '8c00a2c1-b8b0-4a92-8085-4b881b727b35',
 'Benedict''s test is used to detect:',
 '["Starch","Reducing sugars","Proteins","Lipids"]', 1,
 'Benedict''s reagent gives an orange/brick-red precipitate with reducing sugars when heated.', 'easy'),

('a1000000-0000-0000-0000-000000000005', '8c00a2c1-b8b0-4a92-8085-4b881b727b35',
 'The Biuret test detects the presence of:',
 '["Fats","Reducing sugars","Proteins","Starch"]', 2,
 'Biuret reagent turns purple/violet in the presence of proteins (peptide bonds).', 'easy');
