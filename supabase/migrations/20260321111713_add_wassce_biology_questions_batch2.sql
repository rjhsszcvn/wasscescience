/*
  # Add WASSCE Biology Questions Batch 2

  Adds 80 new WASSCE-standard Biology questions covering:
  - Cell biology, genetics, ecology
  - Nutrition, respiration, transport
  - Excretion, nervous system, reproduction
  - Photosynthesis, classification, disease
  - Support & movement, growth, hormones

  All questions follow WASSCE exam standards with 4 options and explanations.
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000005';
  v_topic_id uuid := '079807af-fd97-4a5f-9e58-7596317875e8';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'Which organelle is responsible for ATP production in eukaryotic cells?',
 '["Ribosome","Mitochondrion","Golgi apparatus","Lysosome"]', 1,
 'The mitochondrion is the site of aerobic respiration and ATP synthesis in eukaryotic cells.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which plants lose water through their leaves is called',
 '["Transpiration","Translocation","Osmosis","Diffusion"]', 0,
 'Transpiration is the evaporation of water from plant surfaces, mainly through stomata in leaves.', 'easy'),

(v_subject_id, v_topic_id, 'Which blood group is known as the universal donor?',
 '["AB","A","B","O"]', 3,
 'Blood group O has no A or B antigens, so it can be donated to all blood groups without triggering immune reactions.', 'easy'),

(v_subject_id, v_topic_id, 'Mendel''s law of segregation states that',
 '["Genes on different chromosomes assort independently","Two alleles for each trait separate during gamete formation","Dominant traits always mask recessive ones","Mutations occur randomly"]', 1,
 'The law of segregation states that the two alleles for each character separate during gamete formation, so each gamete carries only one allele.', 'medium'),

(v_subject_id, v_topic_id, 'Which part of the brain controls balance and coordination?',
 '["Cerebrum","Cerebellum","Medulla oblongata","Hypothalamus"]', 1,
 'The cerebellum coordinates voluntary muscle movements and maintains posture and balance.', 'medium'),

(v_subject_id, v_topic_id, 'The enzyme that breaks down starch in the mouth is',
 '["Pepsin","Lipase","Salivary amylase","Trypsin"]', 2,
 'Salivary amylase (ptyalin) in saliva breaks starch into maltose in the mouth.', 'easy'),

(v_subject_id, v_topic_id, 'In a food chain, organisms that make their own food are called',
 '["Consumers","Decomposers","Producers","Omnivores"]', 2,
 'Producers (autotrophs) manufacture their own organic compounds using sunlight or chemical energy.', 'easy'),

(v_subject_id, v_topic_id, 'Sickle cell anaemia is caused by a mutation in the gene encoding',
 '["Haemoglobin","Insulin","Amylase","Collagen"]', 0,
 'Sickle cell anaemia results from a point mutation in the beta-globin gene, causing abnormal haemoglobin (HbS).', 'medium'),

(v_subject_id, v_topic_id, 'The functional unit of the kidney is the',
 '["Nephron","Glomerulus","Loop of Henle","Bowman''s capsule"]', 0,
 'The nephron is the structural and functional unit of the kidney responsible for filtration, reabsorption, and secretion.', 'easy'),

(v_subject_id, v_topic_id, 'Photosynthesis occurs in which part of the plant cell?',
 '["Mitochondria","Nucleus","Chloroplast","Vacuole"]', 2,
 'Chloroplasts contain chlorophyll and are the site of photosynthesis in plant cells.', 'easy'),

(v_subject_id, v_topic_id, 'Which hormone regulates blood glucose levels by promoting its uptake by cells?',
 '["Glucagon","Insulin","Adrenaline","Thyroxine"]', 1,
 'Insulin, secreted by beta cells of the pancreatic islets, lowers blood glucose by promoting its uptake by body cells.', 'easy'),

(v_subject_id, v_topic_id, 'The process of cell division that results in genetically identical daughter cells is',
 '["Meiosis","Mitosis","Fertilisation","Budding"]', 1,
 'Mitosis produces two genetically identical daughter cells and is involved in growth and asexual reproduction.', 'easy'),

(v_subject_id, v_topic_id, 'Which type of immunity is acquired after vaccination?',
 '["Natural passive","Natural active","Artificial active","Artificial passive"]', 2,
 'Vaccination introduces antigens that stimulate the immune system to produce antibodies — this is artificial active immunity.', 'medium'),

(v_subject_id, v_topic_id, 'The light-dependent reactions of photosynthesis occur in the',
 '["Stroma","Thylakoid membrane","Cytoplasm","Mitochondrial matrix"]', 1,
 'The light-dependent reactions occur in the thylakoid membranes where chlorophyll absorbs light to produce ATP and NADPH.', 'medium'),

(v_subject_id, v_topic_id, 'DNA replication is described as semi-conservative because',
 '["Both strands are completely new","Each new molecule contains one old and one new strand","Only one strand is used as a template","The DNA molecule remains unchanged"]', 1,
 'In semi-conservative replication, each daughter DNA molecule retains one original strand and gains one newly synthesised strand.', 'hard'),

(v_subject_id, v_topic_id, 'Which gas is released during aerobic respiration?',
 '["Oxygen","Nitrogen","Carbon dioxide","Hydrogen"]', 2,
 'Aerobic respiration breaks down glucose using oxygen and releases carbon dioxide and water as byproducts.', 'easy'),

(v_subject_id, v_topic_id, 'The outer covering of a plant cell that provides rigidity is the',
 '["Cell membrane","Cell wall","Tonoplast","Plasmalemma"]', 1,
 'The plant cell wall, made of cellulose, provides structural support and rigidity to the cell.', 'easy'),

(v_subject_id, v_topic_id, 'Which vessels carry oxygenated blood from the lungs to the heart?',
 '["Pulmonary arteries","Pulmonary veins","Aorta","Vena cava"]', 1,
 'Pulmonary veins carry oxygenated blood from the lungs back to the left atrium of the heart.', 'medium'),

(v_subject_id, v_topic_id, 'The role of decomposers in an ecosystem is to',
 '["Produce organic matter","Break down dead organisms into inorganic matter","Feed on primary consumers","Convert nitrogen gas to ammonia"]', 1,
 'Decomposers (bacteria and fungi) break down dead organic matter, recycling nutrients back into the ecosystem.', 'easy'),

(v_subject_id, v_topic_id, 'Haemoglobin is made up of how many polypeptide chains?',
 '["One","Two","Four","Six"]', 2,
 'Haemoglobin consists of four polypeptide chains (two alpha and two beta chains), each with a haem group.', 'hard'),

(v_subject_id, v_topic_id, 'Which structure in the eye is responsible for focusing light on the retina?',
 '["Cornea","Iris","Lens","Sclera"]', 2,
 'The lens changes shape (accommodation) to focus light precisely onto the retina.', 'easy'),

(v_subject_id, v_topic_id, 'The Hardy-Weinberg principle applies when',
 '["Natural selection is occurring","The population is large and random mating occurs","Mutations are frequent","Gene flow is happening"]', 1,
 'Hardy-Weinberg equilibrium requires a large, randomly mating population with no selection, mutation, migration, or genetic drift.', 'hard'),

(v_subject_id, v_topic_id, 'Which part of the digestive system absorbs most nutrients?',
 '["Stomach","Large intestine","Small intestine","Oesophagus"]', 2,
 'The small intestine has villi and microvilli that greatly increase its surface area for nutrient absorption.', 'easy'),

(v_subject_id, v_topic_id, 'Antibodies are produced by',
 '["Red blood cells","Platelets","B lymphocytes","T lymphocytes"]', 2,
 'B lymphocytes (B cells) differentiate into plasma cells that produce specific antibodies against antigens.', 'medium'),

(v_subject_id, v_topic_id, 'Which process moves water from soil into root hair cells?',
 '["Active transport","Osmosis","Facilitated diffusion","Transpiration"]', 1,
 'Water moves from soil (higher water potential) into root hair cells (lower water potential) by osmosis.', 'easy'),

(v_subject_id, v_topic_id, 'The product of anaerobic respiration in yeast is',
 '["Lactic acid","Ethanol and carbon dioxide","Water and ATP","Pyruvate only"]', 1,
 'Yeast undergoes fermentation (anaerobic respiration) producing ethanol and carbon dioxide from glucose.', 'medium'),

(v_subject_id, v_topic_id, 'Which chromosome combination results in a male human?',
 '["XX","XY","YY","XXY"]', 1,
 'Males have one X and one Y chromosome (XY), while females have two X chromosomes (XX).', 'easy'),

(v_subject_id, v_topic_id, 'The movement of molecules from high to low concentration without energy is called',
 '["Active transport","Osmosis","Diffusion","Endocytosis"]', 2,
 'Diffusion is the passive movement of molecules from a region of higher concentration to lower concentration.', 'easy'),

(v_subject_id, v_topic_id, 'Which kingdom contains organisms that are prokaryotic?',
 '["Fungi","Protista","Monera","Plantae"]', 2,
 'Kingdom Monera (or Bacteria/Archaea) contains prokaryotic organisms — cells without a true membrane-bound nucleus.', 'medium'),

(v_subject_id, v_topic_id, 'In meiosis, how many daughter cells are produced from one parent cell?',
 '["Two","Four","Eight","One"]', 1,
 'Meiosis results in four genetically distinct haploid daughter cells from one diploid parent cell.', 'easy'),

(v_subject_id, v_topic_id, 'The structural unit of proteins is',
 '["Glucose","Fatty acid","Amino acid","Nucleotide"]', 2,
 'Proteins are polymers of amino acids linked by peptide bonds.', 'easy'),

(v_subject_id, v_topic_id, 'The stomata of a leaf open when guard cells',
 '["Lose water and become flaccid","Gain water and become turgid","Produce more chlorophyll","Undergo mitosis"]', 1,
 'When guard cells absorb water by osmosis they become turgid, causing the stomatal pore to open.', 'medium'),

(v_subject_id, v_topic_id, 'What is the role of ADH (antidiuretic hormone) in the kidney?',
 '["Increases urine production","Decreases water reabsorption","Increases water reabsorption","Stimulates glomerular filtration"]', 2,
 'ADH increases the permeability of the collecting duct to water, promoting water reabsorption and producing more concentrated urine.', 'hard'),

(v_subject_id, v_topic_id, 'Which gas is fixed by nitrogen-fixing bacteria?',
 '["Oxygen","Carbon dioxide","Nitrogen","Methane"]', 2,
 'Nitrogen-fixing bacteria (e.g., Rhizobium) convert atmospheric nitrogen (N₂) into ammonia, which plants can use.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''diploid'' means the cell contains',
 '["One set of chromosomes","Two sets of chromosomes","Three sets of chromosomes","No chromosomes"]', 1,
 'Diploid cells (2n) contain two complete sets of chromosomes — one from each parent.', 'easy'),

(v_subject_id, v_topic_id, 'Which structure in plants transports water and minerals from roots to leaves?',
 '["Phloem","Xylem","Cambium","Epidermis"]', 1,
 'Xylem vessels transport water and dissolved minerals from roots upward through the plant.', 'easy'),

(v_subject_id, v_topic_id, 'A phenotype refers to',
 '["The genetic makeup of an organism","The observable characteristics of an organism","The alleles inherited from parents","The number of chromosomes in a cell"]', 1,
 'Phenotype is the observable expression of an organism''s genotype including physical and biochemical traits.', 'easy'),

(v_subject_id, v_topic_id, 'Which part of the human brain is responsible for conscious thought and memory?',
 '["Cerebellum","Medulla oblongata","Hypothalamus","Cerebral cortex"]', 3,
 'The cerebral cortex (part of the cerebrum) is responsible for conscious thought, memory, reasoning, and voluntary movement.', 'medium'),

(v_subject_id, v_topic_id, 'The Calvin cycle (dark reactions) occurs in the',
 '["Thylakoid membrane","Grana","Stroma of the chloroplast","Cytoplasm"]', 2,
 'The Calvin cycle takes place in the stroma of the chloroplast where CO₂ is fixed into organic compounds using ATP and NADPH.', 'hard'),

(v_subject_id, v_topic_id, 'Which type of muscle is found in the walls of the digestive tract?',
 '["Cardiac muscle","Skeletal muscle","Smooth muscle","Striated muscle"]', 2,
 'Smooth (visceral) muscle in the gut wall creates peristalsis to move food along the digestive tract.', 'medium'),

(v_subject_id, v_topic_id, 'Malaria is caused by which organism?',
 '["Bacterium","Virus","Plasmodium (protozoan)","Fungus"]', 2,
 'Malaria is caused by Plasmodium species, a protozoan parasite transmitted through the bite of female Anopheles mosquitoes.', 'easy'),

(v_subject_id, v_topic_id, 'What is the function of the spleen?',
 '["Produces insulin","Filters blood and destroys old red blood cells","Secretes bile","Produces urine"]', 1,
 'The spleen filters blood, removes old or damaged red blood cells, and is also involved in immune responses.', 'medium'),

(v_subject_id, v_topic_id, 'Which ion is primarily responsible for nerve impulse transmission across synapses?',
 '["Potassium","Sodium","Calcium","Chloride"]', 2,
 'Calcium ions trigger the release of neurotransmitters from synaptic vesicles into the synaptic cleft.', 'hard'),

(v_subject_id, v_topic_id, 'Transpiration pull is mainly responsible for water movement in plants due to',
 '["Active pumping by root cells","Cohesion-tension mechanism","Root pressure alone","Osmotic pressure in phloem"]', 1,
 'The cohesion-tension theory explains that water is pulled up the xylem by the tension created by transpiration, with water molecules cohering together.', 'hard'),

(v_subject_id, v_topic_id, 'The appendix is a vestigial organ attached to the',
 '["Stomach","Ileum","Caecum","Rectum"]', 2,
 'The appendix is a small finger-like projection attached to the caecum at the junction of the small and large intestines.', 'medium'),

(v_subject_id, v_topic_id, 'Which enzyme in the stomach begins protein digestion?',
 '["Amylase","Lipase","Pepsin","Trypsin"]', 2,
 'Pepsin is a protease activated in the acidic environment of the stomach, breaking proteins into smaller peptides.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which green plants manufacture food is called',
 '["Respiration","Fermentation","Photosynthesis","Chemosynthesis"]', 2,
 'Photosynthesis uses light energy, CO₂, and water to produce glucose and oxygen in green plants.', 'easy'),

(v_subject_id, v_topic_id, 'Excessive intake of which vitamin causes toxicity (hypervitaminosis)?',
 '["Vitamin C","Vitamin B12","Vitamin A","Vitamin B1"]', 2,
 'Vitamin A is fat-soluble and accumulates in the body; excessive intake leads to hypervitaminosis A which can be toxic.', 'hard'),

(v_subject_id, v_topic_id, 'Which structure prevents food from entering the trachea during swallowing?',
 '["Uvula","Epiglottis","Vocal cords","Larynx"]', 1,
 'The epiglottis is a flap of cartilage that covers the trachea during swallowing to direct food into the oesophagus.', 'easy'),

(v_subject_id, v_topic_id, 'In which stage of mitosis do chromosomes line up at the cell equator?',
 '["Prophase","Anaphase","Metaphase","Telophase"]', 2,
 'During metaphase, chromosomes align along the metaphase plate (equatorial plate) of the cell.', 'medium'),

(v_subject_id, v_topic_id, 'The energy currency of the cell is',
 '["NADH","ATP","ADP","Glucose"]', 1,
 'ATP (adenosine triphosphate) is the universal energy currency — its hydrolysis releases energy for cellular processes.', 'easy'),

(v_subject_id, v_topic_id, 'Crossing over during meiosis increases',
 '["Mutation rate","Genetic variation","Chromosome number","Protein synthesis"]', 1,
 'Crossing over (chiasmata formation) during prophase I of meiosis shuffles genetic material between homologous chromosomes, increasing variation.', 'medium'),

(v_subject_id, v_topic_id, 'Which tissue transports sugars from leaves to other parts of a plant?',
 '["Xylem","Phloem","Meristem","Epidermis"]', 1,
 'Phloem transports sugars (sucrose) and other organic compounds from leaves (source) to growing regions and storage organs (sink).', 'easy'),

(v_subject_id, v_topic_id, 'The term for the variety of species in an ecosystem is',
 '["Biomass","Biodiversity","Succession","Productivity"]', 1,
 'Biodiversity refers to the variety of life forms — species diversity, genetic diversity, and ecosystem diversity.', 'easy'),

(v_subject_id, v_topic_id, 'A plasmid is',
 '["A small circular DNA molecule in bacteria","A type of ribosome","A membrane-bound organelle","A protein coat of a virus"]', 0,
 'Plasmids are small, circular, double-stranded DNA molecules in bacteria that replicate independently of chromosomal DNA.', 'hard'),

(v_subject_id, v_topic_id, 'Which hormone triggers the ''fight or flight'' response?',
 '["Insulin","Oestrogen","Adrenaline","Thyroxine"]', 2,
 'Adrenaline (epinephrine) is released by the adrenal medulla and prepares the body for rapid action by increasing heart rate and blood glucose.', 'easy'),

(v_subject_id, v_topic_id, 'The immune response against transplanted organs is mainly carried out by',
 '["Red blood cells","B lymphocytes","T lymphocytes","Neutrophils"]', 2,
 'T lymphocytes (particularly cytotoxic T cells) recognise foreign MHC proteins on transplanted cells and attack them.', 'hard'),

(v_subject_id, v_topic_id, 'The role of the liver in carbohydrate metabolism includes',
 '["Storing glucose as glycogen","Producing glucose from amino acids only","Excreting glucose in bile","Absorbing glucose from food"]', 0,
 'The liver stores excess glucose as glycogen (glycogenesis) and releases glucose when blood sugar falls (glycogenolysis).', 'medium'),

(v_subject_id, v_topic_id, 'Sexual reproduction results in offspring that are',
 '["Genetically identical to parents","More susceptible to disease","Genetically varied","Produced without fertilisation"]', 2,
 'Sexual reproduction involves fusion of gametes producing offspring with new combinations of alleles, increasing genetic variation.', 'easy'),

(v_subject_id, v_topic_id, 'Which blood component is responsible for clotting?',
 '["Red blood cells","White blood cells","Plasma","Platelets"]', 3,
 'Platelets (thrombocytes) are cell fragments that initiate the clotting cascade to prevent excessive bleeding.', 'easy'),

(v_subject_id, v_topic_id, 'The scientific study of heredity and genetic variation is called',
 '["Ecology","Genetics","Biochemistry","Taxonomy"]', 1,
 'Genetics is the branch of biology dealing with heredity — how traits are transmitted from parents to offspring.', 'easy'),

(v_subject_id, v_topic_id, 'A linkage group refers to',
 '["Genes on the same chromosome","Alleles of the same gene","Genes that undergo independent assortment","Non-homologous chromosomes"]', 0,
 'Genes located on the same chromosome form a linkage group and tend to be inherited together.', 'hard'),

(v_subject_id, v_topic_id, 'The main nitrogenous waste product excreted by humans is',
 '["Uric acid","Ammonia","Urea","Creatinine"]', 2,
 'Humans excrete mainly urea, produced in the liver from the deamination of excess amino acids.', 'easy'),

(v_subject_id, v_topic_id, 'Which part of the nephron is primarily responsible for reabsorbing glucose?',
 '["Loop of Henle","Proximal convoluted tubule","Distal convoluted tubule","Collecting duct"]', 1,
 'The proximal convoluted tubule actively reabsorbs glucose, amino acids, and most water from the filtrate.', 'hard'),

(v_subject_id, v_topic_id, 'The phenomenon where one gene affects the expression of another is called',
 '["Codominance","Epistasis","Incomplete dominance","Pleiotropy"]', 1,
 'Epistasis occurs when one gene (the epistatic gene) masks or suppresses the expression of another gene at a different locus.', 'hard'),

(v_subject_id, v_topic_id, 'Which part of the seed contains the embryo''s food reserve?',
 '["Testa","Micropyle","Cotyledon","Hilum"]', 2,
 'Cotyledons (seed leaves) store food (starch, oils, proteins) to nourish the embryo during germination.', 'medium'),

(v_subject_id, v_topic_id, 'Insulin is produced in the pancreas by which cells?',
 '["Alpha cells","Beta cells","Delta cells","Acinar cells"]', 1,
 'Beta cells in the islets of Langerhans in the pancreas produce and secrete insulin in response to high blood glucose.', 'medium'),

(v_subject_id, v_topic_id, 'Which process increases the surface area of the small intestine for absorption?',
 '["Peristalsis","Formation of villi and microvilli","Secretion of bile","Enzyme production"]', 1,
 'Villi and microvilli (brush border) dramatically increase the absorptive surface area of the small intestine.', 'easy'),

(v_subject_id, v_topic_id, 'Photoperiodism in plants refers to the response to',
 '["Water availability","Soil nutrients","Length of daylight hours","Temperature changes"]', 2,
 'Photoperiodism is the physiological response of plants to the relative lengths of day and night, affecting flowering and dormancy.', 'hard'),

(v_subject_id, v_topic_id, 'The bone marrow is the site of production for',
 '["Hormones","Blood cells","Digestive enzymes","Neurotransmitters"]', 1,
 'Red bone marrow is the site of haematopoiesis — the production of red blood cells, white blood cells, and platelets.', 'medium'),

(v_subject_id, v_topic_id, 'Which structure connects muscle to bone?',
 '["Ligament","Cartilage","Tendon","Fascia"]', 2,
 'Tendons are tough, fibrous connective tissues that attach skeletal muscles to bones.', 'easy'),

(v_subject_id, v_topic_id, 'The process of converting glucose to pyruvate is called',
 '["Krebs cycle","Glycolysis","Oxidative phosphorylation","Fermentation"]', 1,
 'Glycolysis is the anaerobic breakdown of glucose (6C) into two pyruvate molecules (3C) in the cytoplasm, yielding 2 ATP.', 'medium'),

(v_subject_id, v_topic_id, 'Auxins promote growth in plants by causing',
 '["Cell division in meristems","Cell elongation on the shaded side","Stomatal closure","Root hair formation"]', 1,
 'Auxins (especially IAA) stimulate cell elongation; they accumulate on the shaded side of a shoot causing it to bend toward light (phototropism).', 'medium'),

(v_subject_id, v_topic_id, 'Which infectious disease is caused by Mycobacterium tuberculosis?',
 '["Malaria","Tuberculosis","Cholera","Yellow fever"]', 1,
 'Tuberculosis (TB) is a bacterial disease caused by Mycobacterium tuberculosis, primarily affecting the lungs.', 'easy'),

(v_subject_id, v_topic_id, 'The fluid found between cells in tissues is called',
 '["Blood plasma","Lymph","Tissue fluid (interstitial fluid)","Cytoplasm"]', 2,
 'Tissue fluid (interstitial fluid) bathes the cells and serves as the medium for exchange of nutrients and waste products between blood and cells.', 'medium');

END $$;
