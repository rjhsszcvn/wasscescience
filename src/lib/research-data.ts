import { ResearchAnswer, BreakdownSection } from './types';

export interface KnowledgeEntry {
  id: string;
  subject: string;
  topic: string;
  keywords: string[];
  aliases: string[];
  answer: ResearchAnswer;
}

function b(heading: string, content: string, type: BreakdownSection['type'] = 'concept'): BreakdownSection {
  return { heading, content, type };
}

export const KNOWLEDGE_BASE: KnowledgeEntry[] = [
  // ─── BIOLOGY ───────────────────────────────────────────────────────────────
  {
    id: 'bio-cell',
    subject: 'Biology',
    topic: 'Cell Biology',
    keywords: ['cell', 'cells', 'cell structure', 'organelle', 'organelles', 'nucleus', 'membrane', 'cytoplasm', 'mitochondria', 'ribosome', 'cell wall', 'chloroplast', 'vacuole', 'lysosome', 'endoplasmic reticulum', 'golgi', 'prokaryote', 'eukaryote'],
    aliases: ['cell biology', 'cell structure', 'cell organelles'],
    answer: {
      title: 'Cell Structure and Organelles',
      subject: 'Biology',
      directExplanation: 'The cell is the basic structural and functional unit of all living organisms. Every living thing is made of one or more cells. Cells are divided into two main types: prokaryotic cells (simpler, no nucleus) and eukaryotic cells (complex, with a membrane-bound nucleus).',
      keyPoints: [
        'Prokaryotic cells lack a membrane-bound nucleus (e.g. bacteria)',
        'Eukaryotic cells have a true nucleus and membrane-bound organelles',
        'All cells share: cell membrane, cytoplasm, DNA, and ribosomes',
        'Plant cells have a cell wall, chloroplasts, and a large central vacuole',
        'Animal cells have centrioles and small vacuoles',
      ],
      breakdown: [
        b('Nucleus', 'The control centre of the cell. Contains DNA arranged into chromosomes. The nucleolus inside the nucleus produces ribosomes. Surrounded by a double nuclear envelope with pores.', 'concept'),
        b('Mitochondria', 'The powerhouse of the cell. Site of aerobic respiration where ATP is produced. Has a double membrane; the inner membrane is folded into cristae, increasing surface area for ATP production.', 'concept'),
        b('Ribosomes', 'Tiny organelles found on rough ER or free in cytoplasm. Site of protein synthesis. Translate mRNA into polypeptide chains. Found in all cells — prokaryotic and eukaryotic.', 'fact'),
        b('Cell Membrane', 'Also called the plasma membrane. Made of a phospholipid bilayer with embedded proteins (fluid mosaic model). Controls what enters and leaves the cell. Selectively permeable.', 'concept'),
        b('Chloroplast (Plants)', 'Site of photosynthesis. Contains chlorophyll which absorbs light. Has inner membranes called thylakoids stacked in grana. Surrounded by a double membrane.', 'process'),
        b('Endoplasmic Reticulum', 'Rough ER (with ribosomes) synthesises proteins. Smooth ER produces lipids and detoxifies substances. A network of membrane-bound channels and sacs.', 'concept'),
        b('Golgi Apparatus', 'Processes and packages proteins made by the rough ER. Produces vesicles that carry proteins to the cell membrane for secretion or to lysosomes.', 'process'),
      ],
      example: 'A red blood cell (animal) has no nucleus or mitochondria in its mature form, allowing it to carry more haemoglobin. A leaf mesophyll cell (plant) is packed with chloroplasts for photosynthesis.',
      summary: 'Cells are the units of life. Eukaryotic cells contain specialised organelles each with a distinct function. The nucleus stores genetic information, mitochondria produce energy, and chloroplasts (in plants) carry out photosynthesis. Understanding organelles is central to all of biology.',
      relatedTopics: ['Photosynthesis', 'Cell Division', 'Respiration', 'Genetics', 'Osmosis'],
      confidence: 'high',
    },
  },
  {
    id: 'bio-photosynthesis',
    subject: 'Biology',
    topic: 'Photosynthesis',
    keywords: ['photosynthesis', 'light reaction', 'dark reaction', 'calvin cycle', 'chlorophyll', 'glucose', 'carbon dioxide', 'co2', 'light energy', 'atp', 'nadph', 'thylakoid', 'stroma', 'limiting factor'],
    aliases: ['photosynthesis', 'how plants make food', 'light dependent reaction'],
    answer: {
      title: 'Photosynthesis',
      subject: 'Biology',
      directExplanation: 'Photosynthesis is the process by which green plants, algae, and some bacteria convert light energy into chemical energy (glucose) using carbon dioxide and water. It occurs in the chloroplasts and is the foundation of all food chains.',
      keyPoints: [
        'Equation: 6CO₂ + 6H₂O + light energy → C₆H₁₂O₆ + 6O₂',
        'Occurs in two stages: Light-dependent and Light-independent reactions',
        'Chlorophyll absorbs mainly red and blue light; reflects green',
        'Limiting factors: light intensity, CO₂ concentration, temperature',
        'Oxygen is produced as a by-product of splitting water (photolysis)',
      ],
      breakdown: [
        b('Light-Dependent Reactions', 'Occur in the thylakoid membranes. Chlorophyll absorbs light and excites electrons. Water molecules are split (photolysis), releasing O₂. ATP and NADPH are produced — these carry energy to the next stage.', 'process'),
        b('Light-Independent Reactions (Calvin Cycle)', 'Occur in the stroma of the chloroplast. CO₂ is fixed by the enzyme RuBisCO. ATP and NADPH from the light reactions are used to produce G3P, which is converted to glucose.', 'process'),
        b('Factors Affecting Rate', 'Light intensity: more light → faster rate (to a point). CO₂ concentration: more CO₂ → faster rate. Temperature: optimum around 25–35°C. Beyond this, enzymes denature.', 'fact'),
        b('Chlorophyll Types', 'Chlorophyll a (main), Chlorophyll b (accessory), Carotenoids. They form antenna complexes to capture light and funnel it to the reaction centre.', 'concept'),
      ],
      example: 'A plant in a well-lit, CO₂-rich greenhouse grows much faster than one in low light. Growers pump extra CO₂ into greenhouses to boost photosynthesis and yield.',
      summary: 'Photosynthesis powers nearly all life on Earth by converting solar energy into glucose. The two-stage process uses light energy (stage 1) to produce ATP and NADPH, which then power CO₂ fixation into sugar (stage 2). It also produces the oxygen we breathe.',
      relatedTopics: ['Respiration', 'Cell Structure', 'Nutrition', 'Ecology', 'Enzymes'],
      confidence: 'high',
    },
  },
  {
    id: 'bio-genetics',
    subject: 'Biology',
    topic: 'Genetics',
    keywords: ['genetics', 'dna', 'gene', 'allele', 'dominant', 'recessive', 'genotype', 'phenotype', 'mendelian', 'mendelian genetics', 'heredity', 'inheritance', 'chromosome', 'mutation', 'meiosis', 'punnett square', 'monohybrid', 'dihybrid', 'sex linkage', 'codominance'],
    aliases: ['genetics', 'heredity', 'dna and genes', 'mendelian inheritance'],
    answer: {
      title: 'Genetics and Heredity',
      subject: 'Biology',
      directExplanation: 'Genetics is the study of genes, heredity, and genetic variation in living organisms. Genes are segments of DNA that encode traits. The laws of genetics, established by Gregor Mendel, explain how traits are passed from parents to offspring.',
      keyPoints: [
        'Dominant alleles (A) mask recessive alleles (a) in heterozygotes (Aa)',
        'Genotype is the genetic makeup; phenotype is the expressed trait',
        'Mendel\'s Law of Segregation: alleles separate during gamete formation',
        'Mendel\'s Law of Independent Assortment: genes on different chromosomes assort independently',
        'Humans have 46 chromosomes (23 pairs); sex chromosomes are XX (female) or XY (male)',
      ],
      breakdown: [
        b('Monohybrid Cross', 'Tracks one gene/trait. Cross Aa × Aa gives genotype ratio 1 AA : 2 Aa : 1 aa and phenotype ratio 3 dominant : 1 recessive. This is the standard 3:1 phenotypic ratio.', 'concept'),
        b('Dihybrid Cross', 'Tracks two genes simultaneously. AaBb × AaBb gives a 9:3:3:1 phenotypic ratio. Use a Punnett square with 16 boxes.', 'process'),
        b('Sex-Linked Traits', 'Genes on the X chromosome. Females (XX) can be carriers; males (XY) express X-linked recessive traits more often. Examples: haemophilia, colour blindness.', 'concept'),
        b('Codominance', 'Both alleles are expressed equally in the heterozygote. Example: ABO blood group — type AB expresses both A and B antigens.', 'concept'),
        b('Mutations', 'Changes in DNA sequence. Can be point mutations (single nucleotide), frameshift (insertion/deletion), or chromosomal. Most are neutral; some cause disease (e.g. sickle cell anaemia).', 'fact'),
      ],
      example: 'In sickle cell disease: Hb^A (normal) and Hb^S (sickle) show codominance. Hb^S Hb^S = sickle cell disease; Hb^A Hb^S = carrier (sickle cell trait); Hb^A Hb^A = normal.',
      summary: 'Genetics explains how traits are inherited through genes and alleles. Mendel\'s laws describe the patterns of inheritance. Understanding dominant/recessive relationships and Punnett squares allows prediction of offspring traits. Advanced concepts include sex linkage, codominance, and mutations.',
      relatedTopics: ['DNA and RNA', 'Cell Division', 'Evolution', 'Protein Synthesis'],
      confidence: 'high',
    },
  },
  {
    id: 'bio-respiration',
    subject: 'Biology',
    topic: 'Respiration',
    keywords: ['respiration', 'aerobic', 'anaerobic', 'atp', 'glycolysis', 'krebs cycle', 'electron transport chain', 'fermentation', 'lactate', 'ethanol', 'cellular respiration', 'glucose oxidation', 'mitochondria'],
    aliases: ['respiration', 'cellular respiration', 'aerobic respiration', 'anaerobic respiration'],
    answer: {
      title: 'Cellular Respiration',
      subject: 'Biology',
      directExplanation: 'Cellular respiration is the process by which cells break down glucose to release energy in the form of ATP. It can be aerobic (using oxygen, producing more ATP) or anaerobic (without oxygen, producing less ATP).',
      keyPoints: [
        'Aerobic respiration: C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + ~38 ATP',
        'Anaerobic respiration produces only 2 ATP per glucose',
        'Glycolysis occurs in the cytoplasm and is common to both types',
        'The Krebs cycle and ETC occur in the mitochondria (aerobic only)',
        'Fermentation produces lactic acid (animals/bacteria) or ethanol + CO₂ (yeast)',
      ],
      breakdown: [
        b('Glycolysis', 'First stage. Occurs in cytoplasm. Glucose (6C) is split into 2 pyruvate (3C). Produces 2 ATP and 2 NADH. Does not require oxygen.', 'process'),
        b('Krebs Cycle', 'Occurs in mitochondrial matrix. Pyruvate is converted to Acetyl-CoA (2C), which enters the cycle. Produces CO₂, ATP, NADH, and FADH₂ per turn. Runs twice per glucose molecule.', 'process'),
        b('Electron Transport Chain', 'Located on inner mitochondrial membrane. NADH and FADH₂ donate electrons, creating a proton gradient that drives ATP synthase. Most ATP (34) is produced here.', 'process'),
        b('Anaerobic Respiration', 'Occurs when O₂ is unavailable. In animals/bacteria: pyruvate → lactic acid. In yeast: pyruvate → ethanol + CO₂. Only 2 ATP produced. Lactic acid causes muscle fatigue.', 'concept'),
      ],
      example: 'During intense exercise, muscles run out of oxygen and switch to anaerobic respiration, producing lactic acid — causing the burning sensation. After exercise, oxygen debt is repaid as lactic acid is converted back.',
      summary: 'Respiration releases energy from glucose as ATP. Aerobic respiration is far more efficient (~38 ATP) and involves glycolysis, Krebs cycle, and the electron transport chain. Anaerobic respiration only yields 2 ATP but works without oxygen, important in exercise and fermentation.',
      relatedTopics: ['Photosynthesis', 'Cell Structure', 'Enzymes', 'Nutrition'],
      confidence: 'high',
    },
  },
  {
    id: 'bio-osmosis',
    subject: 'Biology',
    topic: 'Osmosis and Diffusion',
    keywords: ['osmosis', 'diffusion', 'active transport', 'concentration gradient', 'semipermeable', 'selectively permeable', 'hypotonic', 'hypertonic', 'isotonic', 'plasmolysis', 'turgid', 'flaccid', 'water potential'],
    aliases: ['osmosis', 'diffusion', 'osmosis and diffusion', 'transport across membranes'],
    answer: {
      title: 'Osmosis and Diffusion',
      subject: 'Biology',
      directExplanation: 'Diffusion is the net movement of molecules from a region of high concentration to low concentration. Osmosis is a special case of diffusion — the movement of water molecules through a selectively permeable membrane from a region of high water potential to low water potential.',
      keyPoints: [
        'Diffusion: high → low concentration; no energy required (passive)',
        'Osmosis: movement of water only, through a selectively permeable membrane',
        'Active transport: low → high concentration; requires ATP and carrier proteins',
        'Hypotonic solution: less solute than cell → cell swells (turgor in plants)',
        'Hypertonic solution: more solute than cell → cell shrinks (plasmolysis in plants)',
      ],
      breakdown: [
        b('Factors Affecting Diffusion Rate', 'Concentration gradient (steeper = faster), surface area (larger = faster), distance (shorter = faster), temperature (higher = faster), molecular size (smaller = faster).', 'fact'),
        b('Water Potential', 'Pure water has the highest water potential (0). Adding solutes lowers water potential (negative values). Water moves from less negative (higher) to more negative (lower) water potential.', 'concept'),
        b('Osmosis in Plant Cells', 'In hypotonic solution: water enters, vacuole expands, cell becomes turgid (firm). In hypertonic solution: water leaves, vacuole shrinks, membrane pulls away from wall = plasmolysis.', 'process'),
        b('Osmosis in Animal Cells', 'No cell wall to resist swelling. In hypotonic: cell swells and may burst (lysis). In hypertonic: cell shrinks (crenation). In isotonic: no net movement — ideal for blood cells.', 'process'),
      ],
      example: 'When vegetables wilt, placing them in fresh water causes osmosis: water enters cells, increasing turgor pressure and making them firm again. Salting food draws out water by creating a hypertonic environment.',
      summary: 'Diffusion and osmosis are passive transport processes requiring no energy. Osmosis specifically moves water through semi-permeable membranes. Active transport moves substances against the gradient using ATP. These processes are vital for nutrient uptake, water balance, and kidney function.',
      relatedTopics: ['Cell Structure', 'Transport in Plants', 'Kidney and Excretion', 'Nutrition'],
      confidence: 'high',
    },
  },
  {
    id: 'bio-evolution',
    subject: 'Biology',
    topic: 'Evolution',
    keywords: ['evolution', 'natural selection', 'darwin', 'adaptation', 'species', 'variation', 'survival of fittest', 'mutation', 'speciation', 'fossil', 'evidence of evolution', 'selective pressure'],
    aliases: ['evolution', 'natural selection', 'darwinian evolution'],
    answer: {
      title: 'Evolution by Natural Selection',
      subject: 'Biology',
      directExplanation: 'Evolution is the gradual change in the inherited characteristics of populations over successive generations. Charles Darwin proposed that natural selection is the main mechanism: individuals with beneficial traits survive and reproduce more, passing those traits on.',
      keyPoints: [
        'Variation: individuals within a species show differences in traits',
        'Overproduction: more offspring are produced than can survive',
        'Competition and selection: those with advantageous traits survive ("survival of the fittest")',
        'Inheritance: favourable traits are passed to offspring',
        'Over many generations, populations change — evolution occurs',
      ],
      breakdown: [
        b('Evidence for Evolution', 'Fossil record shows gradual changes over time. Comparative anatomy — homologous structures (e.g. human arm, whale flipper) share common ancestry. Molecular biology — DNA similarity. Embryology — similar embryos in vertebrates.', 'fact'),
        b('Adaptation', 'A feature that improves an organism\'s chances of survival in its environment. Examples: thick fur in polar bears (insulation), long beaks in hummingbirds (nectar feeding), camouflage in stick insects.', 'concept'),
        b('Speciation', 'Formation of new species. Occurs when populations become isolated (geographically or reproductively) and evolve separately until they can no longer interbreed. Example: Darwin\'s finches in the Galápagos.', 'process'),
        b('Antibiotic Resistance', 'Modern example of natural selection. Bacteria with random mutations conferring resistance survive antibiotic treatment and reproduce. This is why overusing antibiotics leads to "superbugs".', 'concept'),
      ],
      example: 'Peppered moths in industrial Britain: before industrialisation, light-coloured moths were camouflaged on light tree bark. After soot darkened bark, dark moths survived better. The dark form increased — direct evidence of natural selection.',
      summary: 'Evolution by natural selection explains the diversity of life. Variation + selection pressure + inheritance leads to gradual change in populations. Evidence comes from fossils, comparative anatomy, molecular biology, and direct observation (e.g. antibiotic resistance). Speciation occurs when populations diverge enough to become new species.',
      relatedTopics: ['Genetics', 'Mutation', 'Ecology', 'Classification', 'Biodiversity'],
      confidence: 'high',
    },
  },

  // ─── CHEMISTRY ─────────────────────────────────────────────────────────────
  {
    id: 'chem-bonding',
    subject: 'Chemistry',
    topic: 'Chemical Bonding',
    keywords: ['chemical bond', 'bonding', 'ionic', 'covalent', 'metallic', 'electrovalent', 'polar', 'nonpolar', 'bond', 'electron sharing', 'electron transfer', 'lattice', 'dot cross', 'lewis structure', 'intermolecular', 'van der waals', 'hydrogen bond'],
    aliases: ['chemical bonding', 'ionic bonding', 'covalent bonding', 'types of bonds'],
    answer: {
      title: 'Chemical Bonding',
      subject: 'Chemistry',
      directExplanation: 'Chemical bonding is the force that holds atoms together in compounds. Bonds form when atoms interact to achieve a more stable electron configuration (usually a full outer shell). The three main types are ionic, covalent, and metallic bonding.',
      keyPoints: [
        'Ionic bonds: formed by transfer of electrons from metal to non-metal',
        'Covalent bonds: formed by sharing of electron pairs between non-metals',
        'Metallic bonds: sea of delocalised electrons surrounding positive metal ions',
        'Bond polarity depends on electronegativity differences between atoms',
        'Intermolecular forces (van der Waals, hydrogen bonds) affect physical properties',
      ],
      breakdown: [
        b('Ionic Bonding', 'Occurs between metals and non-metals. Metal loses electrons → forms positive cation. Non-metal gains electrons → forms negative anion. Electrostatic attraction holds ions in a giant lattice. High melting points, conduct electricity when molten/dissolved.', 'concept'),
        b('Covalent Bonding', 'Occurs between non-metal atoms. Electrons are shared in pairs to fill outer shells. Single, double, or triple bonds. Examples: H₂, O₂, H₂O, CO₂. Low melting points (simple molecular); very high m.p. for giant covalent (diamond, SiO₂).', 'concept'),
        b('Metallic Bonding', 'Metal atoms release outer electrons into a "sea" of delocalised electrons. Positive metal ions (cations) are surrounded by freely moving electrons. Explains: electrical conductivity, thermal conductivity, malleability, ductility.', 'concept'),
        b('Polar vs Non-polar Covalent', 'If atoms have different electronegativities, the bond is polar (electrons are pulled toward the more electronegative atom). Example: H-Cl is polar. H-H is non-polar. Polar bonds → polar molecules (if asymmetric) → higher boiling points.', 'concept'),
        b('Hydrogen Bonding', 'Strong intermolecular force between H (bonded to N, O, or F) and a lone pair on N, O, or F of another molecule. Explains water\'s unusually high boiling point (100°C) and surface tension.', 'fact'),
      ],
      example: 'NaCl (table salt): Na donates 1 electron to Cl → Na⁺ and Cl⁻ → ionic bond. Water (H₂O): O shares electrons with 2 H → two covalent bonds. The O-H bonds are polar, making water a polar molecule essential for life.',
      summary: 'Chemical bonds form when atoms achieve stable electron configurations. Ionic bonds (metal + non-metal) form via electron transfer. Covalent bonds (non-metals) form via electron sharing. Metallic bonds involve delocalised electrons. Bond type determines the physical properties of a substance.',
      relatedTopics: ['Periodic Table', 'Electrochemistry', 'Acids and Bases', 'Organic Chemistry', 'States of Matter'],
      confidence: 'high',
    },
  },
  {
    id: 'chem-acids-bases',
    subject: 'Chemistry',
    topic: 'Acids, Bases and Salts',
    keywords: ['acid', 'base', 'alkali', 'salt', 'pH', 'neutralisation', 'titration', 'indicator', 'strong acid', 'weak acid', 'buffer', 'hydrochloric', 'sulphuric', 'nitric', 'sodium hydroxide', 'dissociation', 'proton', 'arrhenius', 'bronsted lowry'],
    aliases: ['acids and bases', 'acid base', 'pH scale', 'neutralisation'],
    answer: {
      title: 'Acids, Bases and Salts',
      subject: 'Chemistry',
      directExplanation: 'An acid is a proton donor (releases H⁺ ions in water). A base is a proton acceptor (neutralises an acid). A base that dissolves in water is called an alkali, producing OH⁻ ions. Acids and bases react in neutralisation reactions to form salt and water.',
      keyPoints: [
        'Acids: pH < 7, turn litmus red, taste sour (e.g. HCl, H₂SO₄, CH₃COOH)',
        'Bases/Alkalis: pH > 7, turn litmus blue, feel soapy (e.g. NaOH, NH₃)',
        'Neutral: pH = 7 (pure water)',
        'Strong acids/bases fully dissociate; weak ones partially dissociate',
        'Neutralisation: acid + base → salt + water',
      ],
      breakdown: [
        b('pH Scale', 'Logarithmic scale from 0–14. Each unit = 10× change in H⁺ concentration. pH = −log[H⁺]. pH 0–6 = acidic; pH 7 = neutral; pH 8–14 = basic. Measured using indicators (litmus, universal indicator) or pH meter.', 'concept'),
        b('Titration', 'Used to find the concentration of an acid or base. Known volume of solution in conical flask + indicator. Burette delivers measured volume of titrant until endpoint (colour change). Use: concentration = moles / volume.', 'process'),
        b('Salt Formation', 'Acid + metal → salt + hydrogen gas. Acid + metal oxide/hydroxide → salt + water. Acid + carbonate → salt + water + CO₂. The name of a salt comes from the acid (HCl → chloride; H₂SO₄ → sulphate; HNO₃ → nitrate) and the base metal.', 'fact'),
        b('Common Strong Acids', 'HCl (hydrochloric), H₂SO₄ (sulphuric), HNO₃ (nitric) — fully dissociate in water. Weak acids: CH₃COOH (ethanoic/acetic), H₂CO₃ (carbonic) — partially dissociate. Same distinction applies to bases.', 'fact'),
      ],
      example: 'When baking soda (NaHCO₃, alkaline) reacts with vinegar (CH₃COOH, acidic): NaHCO₃ + CH₃COOH → CH₃COONa + H₂O + CO₂. This is a neutralisation reaction producing sodium ethanoate (salt), water, and carbon dioxide gas.',
      summary: 'Acids donate H⁺ ions; bases accept them. The pH scale measures acidity/alkalinity on a log scale. Strong acids/bases fully dissociate; weak ones partially dissociate. Neutralisation produces salt and water. Titration is used to determine unknown concentrations precisely.',
      relatedTopics: ['Chemical Bonding', 'Redox Reactions', 'Electrochemistry', 'Buffer Solutions', 'Salts'],
      confidence: 'high',
    },
  },
  {
    id: 'chem-periodic-table',
    subject: 'Chemistry',
    topic: 'Periodic Table',
    keywords: ['periodic table', 'period', 'group', 'periodic trend', 'atomic number', 'atomic radius', 'electronegativity', 'ionisation energy', 'electron affinity', 'alkali metal', 'halogen', 'noble gas', 'transition metal', 'mendeleev', 'periodic law'],
    aliases: ['periodic table', 'periods and groups', 'periodic trends', 'elements'],
    answer: {
      title: 'The Periodic Table and Periodic Trends',
      subject: 'Chemistry',
      directExplanation: 'The Periodic Table arranges elements in order of increasing atomic number. Elements in the same vertical group share similar chemical properties (same number of outer electrons). Horizontal rows are periods. Physical and chemical properties follow predictable trends across periods and down groups.',
      keyPoints: [
        'Atomic number = number of protons = number of electrons in a neutral atom',
        'Groups (columns): same number of outer electrons → similar properties',
        'Periods (rows): number of electron shells increases down a group',
        'Atomic radius increases down a group; decreases across a period (left to right)',
        'Ionisation energy and electronegativity increase across a period and up a group',
      ],
      breakdown: [
        b('Group 1 – Alkali Metals', 'Li, Na, K, Rb, Cs, Fr. 1 outer electron. React vigorously with water to produce hydrogen and alkali. Reactivity increases down the group (outer electron further from nucleus, more easily lost). Soft metals, low density.', 'concept'),
        b('Group 7 – Halogens', 'F, Cl, Br, I, At. 7 outer electrons. React with metals to form ionic salts. Reactivity decreases down the group (harder to gain electron as atomic radius increases). Form diatomic molecules (F₂, Cl₂, Br₂, I₂).', 'concept'),
        b('Group 0 – Noble Gases', 'He, Ne, Ar, Kr, Xe, Rn. Full outer shells → extremely stable and unreactive. Used in lighting (neon signs), welding atmospheres (argon), and balloons (helium).', 'fact'),
        b('Transition Metals', 'Found in middle block (groups 3–12). Properties: variable oxidation states, form coloured compounds, good catalysts, high melting/boiling points, high density. Examples: Fe, Cu, Cr, Mn.', 'concept'),
        b('Periodic Trends Summary', 'Across a period →: atomic radius decreases, ionisation energy increases, electronegativity increases, metallic character decreases. Down a group ↓: atomic radius increases, ionisation energy decreases, reactivity increases (metals) or decreases (non-metals).', 'comparison'),
      ],
      example: 'Na vs K in water: both fizz and produce NaOH/KOH + H₂. But K reacts more violently (purple flame, sometimes ignites the H₂) because the outer electron in K is further from the nucleus and more easily removed — lower ionisation energy.',
      summary: 'The Periodic Table is organized by increasing atomic number. Group number indicates outer electrons; period indicates electron shells. Trends in atomic radius, ionisation energy, electronegativity, and reactivity follow predictable patterns. Group 1 metals are most reactive at the bottom; halogens are most reactive at the top.',
      relatedTopics: ['Atomic Structure', 'Chemical Bonding', 'Electrochemistry', 'Acids and Bases'],
      confidence: 'high',
    },
  },
  {
    id: 'chem-organic',
    subject: 'Chemistry',
    topic: 'Organic Chemistry',
    keywords: ['organic chemistry', 'hydrocarbon', 'alkane', 'alkene', 'alkyne', 'functional group', 'isomer', 'isomerism', 'alcohol', 'carboxylic acid', 'ester', 'aldehyde', 'ketone', 'polymer', 'addition reaction', 'substitution', 'combustion', 'cracking', 'fermentation'],
    aliases: ['organic chemistry', 'hydrocarbons', 'alkanes alkenes', 'carbon compounds'],
    answer: {
      title: 'Organic Chemistry: Hydrocarbons and Functional Groups',
      subject: 'Chemistry',
      directExplanation: 'Organic chemistry is the study of carbon-containing compounds. Carbon forms four bonds and can link into chains, rings, and networks. Organic compounds are classified by their functional groups, which determine their chemical reactivity.',
      keyPoints: [
        'Alkanes (CₙH₂ₙ₊₂): saturated hydrocarbons; undergo combustion and substitution',
        'Alkenes (CₙH₂ₙ): unsaturated (C=C double bond); undergo addition reactions; decolourise bromine water',
        'Functional groups: −OH (alcohol), −COOH (carboxylic acid), −CHO (aldehyde), C=O (ketone), −COO− (ester)',
        'Isomers: same molecular formula but different structural arrangements',
        'Polymers are long chains of repeating monomer units (e.g. polyethene from ethene)',
      ],
      breakdown: [
        b('Alkanes', 'General formula CₙH₂ₙ₊₂. All single C-C bonds. Relatively unreactive. Undergo combustion (complete: CO₂ + H₂O; incomplete: CO + soot). React with halogens in UV light (free radical substitution). Examples: methane (CH₄), ethane (C₂H₆), propane (C₃H₈).', 'concept'),
        b('Alkenes', 'General formula CₙH₂ₙ. Contain one C=C double bond. More reactive than alkanes. Test: decolourise bromine water (orange → colourless). Addition reactions: + H₂ (hydrogenation), + Br₂, + HBr, + H₂O (hydration → alcohol).', 'concept'),
        b('Alcohols', 'Contain −OH group. Methanol (CH₃OH), ethanol (C₂H₅OH). Produced by fermentation (glucose → ethanol + CO₂, by yeast). React with carboxylic acids to form esters. Undergo combustion. Used as solvents and fuels.', 'fact'),
        b('Carboxylic Acids', 'Contain −COOH group. Weak acids. React with alcohols (+ acid catalyst) to form esters (fruity smell). React with bases to form salts. Ethanoic acid (CH₃COOH) is in vinegar.', 'fact'),
        b('Polymers', 'Addition polymerisation: alkene monomers (e.g. ethene → polyethene). Condensation polymerisation: monomers with two functional groups join, releasing small molecules (e.g. nylon from diamines and dicarboxylic acids).', 'process'),
      ],
      example: 'Ethanol production: C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ (fermentation by yeast, 30–40°C, no oxygen). Ethanoic acid production: oxidation of ethanol by Acetobacter bacteria in air. Ethanoic acid + ethanol → ethyl ethanoate (ester with fruity smell) + water.',
      summary: 'Organic chemistry centres on carbon compounds with characteristic functional groups. Alkanes are saturated and mainly undergo combustion. Alkenes are unsaturated and undergo addition reactions. Functional groups (−OH, −COOH, etc.) define reactivity. Polymerisation creates long-chain molecules used as plastics and fibres.',
      relatedTopics: ['Chemical Bonding', 'Redox Reactions', 'Energy', 'Polymers and Materials'],
      confidence: 'high',
    },
  },
  {
    id: 'chem-redox',
    subject: 'Chemistry',
    topic: 'Redox Reactions',
    keywords: ['redox', 'oxidation', 'reduction', 'oxidising agent', 'reducing agent', 'oxidation number', 'oxidation state', 'electron transfer', 'half equation', 'electrochemistry', 'electrolysis', 'rusting', 'corrosion'],
    aliases: ['redox reactions', 'oxidation reduction', 'redox chemistry'],
    answer: {
      title: 'Redox Reactions',
      subject: 'Chemistry',
      directExplanation: 'Redox reactions involve simultaneous oxidation (loss of electrons) and reduction (gain of electrons). The two processes always occur together. Oxidation states (oxidation numbers) are used to track electron transfer in reactions.',
      keyPoints: [
        'OIL RIG: Oxidation Is Loss (of electrons), Reduction Is Gain (of electrons)',
        'Oxidising agent: accepts electrons → itself is reduced',
        'Reducing agent: donates electrons → itself is oxidised',
        'Oxidation number increases = oxidation; decreases = reduction',
        'Disproportionation: one species is both oxidised and reduced simultaneously',
      ],
      breakdown: [
        b('Oxidation Numbers', 'Rules: pure element = 0; monoatomic ion = its charge; O = −2 (usually); H = +1 (usually). Sum of oxidation numbers in a compound = 0 (or overall charge for ions). Use these to identify what is oxidised/reduced in any reaction.', 'concept'),
        b('Half Equations', 'Split the full equation into oxidation and reduction half-equations. Balance atoms, then balance charges by adding electrons. Example — Zn → Zn²⁺ + 2e⁻ (oxidation); Cu²⁺ + 2e⁻ → Cu (reduction). Add to give: Zn + Cu²⁺ → Zn²⁺ + Cu.', 'process'),
        b('Electrochemistry', 'Electrolysis: electrical energy drives non-spontaneous redox. At cathode (−): reduction (positive ions gain electrons). At anode (+): oxidation (negative ions lose electrons). Used in electroplating, extracting aluminium, chlorine production.', 'process'),
        b('Rusting', 'Iron oxidised to Fe²⁺ by O₂ in the presence of water: 4Fe + 3O₂ + 2H₂O → 2Fe₂O₃·H₂O. Prevented by: painting, galvanising (zinc coating), sacrificial anode (zinc block).', 'process'),
      ],
      example: 'Thermite reaction: 2Al + Fe₂O₃ → Al₂O₃ + 2Fe. Al is oxidised (0 → +3); Fe is reduced (+3 → 0). Al is the reducing agent; Fe₂O₃ is the oxidising agent. This reaction is so exothermic it is used to weld railway tracks.',
      summary: 'Redox reactions involve paired electron transfer. Use OIL RIG to remember: oxidation = electron loss, reduction = electron gain. Oxidising agents accept electrons; reducing agents donate them. Oxidation numbers track the changes. Electrochemistry applies redox to electrical systems.',
      relatedTopics: ['Electrochemistry', 'Periodic Table', 'Acids and Bases', 'Chemical Equations', 'Metal Reactivity'],
      confidence: 'high',
    },
  },

  // ─── PHYSICS ───────────────────────────────────────────────────────────────
  {
    id: 'phys-mechanics',
    subject: 'Physics',
    topic: 'Mechanics',
    keywords: ['mechanics', 'force', 'motion', 'velocity', 'acceleration', 'momentum', 'newton', 'newtons law', 'newtons laws', 'inertia', 'friction', 'gravity', 'weight', 'mass', 'projectile', 'circular motion', 'work', 'power', 'energy', 'kinetic energy', 'potential energy'],
    aliases: ['mechanics', 'newtons laws', 'motion and forces', 'kinematics', 'dynamics'],
    answer: {
      title: 'Mechanics: Forces and Motion',
      subject: 'Physics',
      directExplanation: 'Mechanics is the branch of physics that studies the motion of objects and the forces that cause or change that motion. It includes kinematics (describing motion) and dynamics (explaining motion through forces).',
      keyPoints: [
        'Speed = distance/time; Velocity = displacement/time (vector)',
        'Acceleration = change in velocity / time = (v−u)/t',
        'Force (F) = mass × acceleration (F = ma)',
        'Weight = mass × gravitational field strength (W = mg); g ≈ 10 N/kg on Earth',
        'Momentum = mass × velocity (p = mv); conserved in closed systems',
      ],
      breakdown: [
        b('Newton\'s First Law', 'An object remains at rest or in uniform motion unless acted upon by a net external force. This describes inertia — the resistance of objects to changes in motion.', 'concept'),
        b('Newton\'s Second Law', 'The net force on an object equals its mass multiplied by its acceleration: F = ma. Direction of acceleration is the same as direction of net force. Larger mass requires larger force for same acceleration.', 'formula'),
        b('Newton\'s Third Law', 'For every action, there is an equal and opposite reaction. Forces always come in pairs acting on different objects. Example: you push a wall → wall pushes you back with equal force.', 'concept'),
        b('Work, Energy, Power', 'Work = Force × distance (W = Fd, in joules). Kinetic energy = ½mv². Gravitational PE = mgh. Power = Work/time = P = W/t (watts). Conservation of energy: total energy is constant (can change form).', 'formula'),
        b('Momentum and Impulse', 'Impulse = Force × time = change in momentum (Ft = mv − mu). Law of conservation of momentum: total momentum before = total momentum after collision (no external forces). Useful for collisions and explosions.', 'formula'),
      ],
      example: 'A car of mass 1000 kg accelerates from 0 to 20 m/s in 5 s. Acceleration = 20/5 = 4 m/s². Force = 1000 × 4 = 4000 N. Kinetic energy gained = ½ × 1000 × 20² = 200,000 J = 200 kJ.',
      summary: 'Mechanics explains how and why objects move. Newton\'s three laws govern the relationship between force, mass, and acceleration. Energy is conserved but can be transformed. Work is force times distance. Momentum (mv) is conserved in collisions. Mastering these concepts is essential for all of physics.',
      relatedTopics: ['Energy', 'Waves', 'Gravity', 'Circular Motion', 'Fluid Mechanics'],
      confidence: 'high',
    },
  },
  {
    id: 'phys-electricity',
    subject: 'Physics',
    topic: 'Electricity and Circuits',
    keywords: ['electricity', 'electric', 'current', 'voltage', 'resistance', 'ohm', 'ohms law', 'circuit', 'series', 'parallel', 'capacitor', 'power', 'energy', 'watt', 'ampere', 'volt', 'resistor', 'emf', 'potential difference', 'kirchhoff'],
    aliases: ['electricity', 'electric circuits', 'current electricity', 'ohms law'],
    answer: {
      title: 'Electricity and Electric Circuits',
      subject: 'Physics',
      directExplanation: 'Electricity involves the flow of electric charge (current). In circuits, current flows from the positive terminal through the external circuit to the negative terminal. Ohm\'s Law relates voltage, current, and resistance, and is the foundation of circuit analysis.',
      keyPoints: [
        'Current (I): rate of flow of charge; measured in amperes (A); I = Q/t',
        'Voltage/potential difference (V): energy per unit charge; in volts (V)',
        'Resistance (R): opposition to current; in ohms (Ω)',
        'Ohm\'s Law: V = IR (applies to ohmic conductors at constant temperature)',
        'Power: P = IV = I²R = V²/R; measured in watts (W)',
      ],
      breakdown: [
        b('Series Circuits', 'Components in a single loop. Current is the same throughout. Voltage divides across components. Total resistance: R_total = R₁ + R₂ + R₃. If one component fails, the circuit breaks.', 'concept'),
        b('Parallel Circuits', 'Components in separate branches. Voltage is the same across each branch. Current divides. Total resistance: 1/R_total = 1/R₁ + 1/R₂ + 1/R₃ (total resistance is less than any individual). If one branch fails, others still work.', 'concept'),
        b('Kirchhoff\'s Laws', 'KCL (Current): sum of currents entering a junction = sum leaving. KVL (Voltage): sum of potential differences around any closed loop = 0. These are conservation laws applied to circuits.', 'formula'),
        b('Electrical Energy and Power', 'Energy = Power × time = VIt (joules). Domestic electricity uses kWh: 1 kWh = 3.6 × 10⁶ J. Cost = power (kW) × time (h) × rate (per kWh). Fuses and circuit breakers protect against excess current.', 'formula'),
        b('Resistivity', 'Resistance depends on: material (resistivity ρ), length (R ∝ L) and cross-sectional area (R ∝ 1/A). R = ρL/A. Longer, thinner wires have higher resistance; conductors have low ρ, insulators have high ρ.', 'formula'),
      ],
      example: 'A 60 W light bulb connected to 240 V mains: Current = P/V = 60/240 = 0.25 A. Resistance = V/I = 240/0.25 = 960 Ω. Energy used in 10 hours = 60 × 10 = 600 Wh = 0.6 kWh.',
      summary: 'Electric circuits carry current driven by potential difference (voltage). Ohm\'s Law (V = IR) links voltage, current, and resistance. Series circuits share current; parallel circuits share voltage. Power = IV. Kirchhoff\'s laws are conservation principles for analysing complex circuits.',
      relatedTopics: ['Magnetism', 'Electromagnetic Induction', 'Electronic Components', 'Energy'],
      confidence: 'high',
    },
  },
  {
    id: 'phys-waves',
    subject: 'Physics',
    topic: 'Waves',
    keywords: ['wave', 'waves', 'transverse', 'longitudinal', 'frequency', 'wavelength', 'amplitude', 'speed', 'reflection', 'refraction', 'diffraction', 'interference', 'sound', 'light', 'electromagnetic', 'em spectrum', 'doppler', 'resonance'],
    aliases: ['waves', 'wave properties', 'light and sound', 'electromagnetic waves', 'wave physics'],
    answer: {
      title: 'Waves and Wave Properties',
      subject: 'Physics',
      directExplanation: 'A wave is a disturbance that transfers energy without transferring matter. Waves are either transverse (vibration perpendicular to direction of travel) or longitudinal (vibration parallel to direction of travel). All waves share fundamental properties: frequency, wavelength, amplitude, and speed.',
      keyPoints: [
        'Wave speed = frequency × wavelength: v = fλ',
        'Transverse waves: light, EM waves, water waves (vibration ⊥ direction)',
        'Longitudinal waves: sound waves, seismic P-waves (vibration ∥ direction)',
        'Frequency (f) in Hz; wavelength (λ) in metres; amplitude = maximum displacement',
        'EM spectrum (increasing frequency): radio, microwave, infrared, visible, UV, X-ray, gamma',
      ],
      breakdown: [
        b('Reflection', 'Angle of incidence = angle of reflection (measured from normal). Applies to light (mirrors), sound (echoes), water waves. The wavefronts and their normals are used in ray diagrams.', 'concept'),
        b('Refraction', 'Change in speed (and direction) when a wave moves between media. Snell\'s Law: n₁sinθ₁ = n₂sinθ₂. Light slows in denser media and bends toward the normal. Total internal reflection occurs when θ > critical angle.', 'concept'),
        b('Diffraction', 'Spreading of waves as they pass through a gap or around an obstacle. Significant when gap width ≈ wavelength. Explains why sound goes around corners but light does not (wavelength difference).', 'fact'),
        b('The Electromagnetic Spectrum', 'All EM waves travel at c = 3×10⁸ m/s in vacuum. Uses: radio (communications), microwave (cooking, radar), infrared (thermal imaging), visible (sight), UV (sterilisation), X-rays (medical imaging), gamma (cancer treatment, sterilisation).', 'fact'),
        b('Sound Waves', 'Longitudinal, mechanical waves (need medium). Speed in air ≈ 340 m/s; faster in liquids/solids. Frequency = pitch; amplitude = loudness. Ultrasound (>20,000 Hz) used in medical imaging (sonar, foetal scanning).', 'concept'),
      ],
      example: 'A sound wave of frequency 440 Hz (musical note A) in air: wavelength = v/f = 340/440 ≈ 0.77 m. A radio wave of 100 MHz (FM): wavelength = 3×10⁸/10⁸ = 3 m.',
      summary: 'Waves transfer energy via oscillations. Transverse waves vibrate perpendicular to travel; longitudinal waves vibrate parallel. v = fλ links speed, frequency, and wavelength. EM waves travel at the speed of light. Key wave behaviours are reflection, refraction, diffraction, and interference.',
      relatedTopics: ['Optics', 'Sound', 'Electromagnetic Induction', 'Quantum Physics'],
      confidence: 'high',
    },
  },
  {
    id: 'phys-thermodynamics',
    subject: 'Physics',
    topic: 'Heat and Thermodynamics',
    keywords: ['heat', 'temperature', 'thermodynamics', 'thermal', 'conduction', 'convection', 'radiation', 'specific heat capacity', 'latent heat', 'expansion', 'ideal gas', 'gas laws', 'boyles law', 'charles law', 'pressure law', 'entropy'],
    aliases: ['thermodynamics', 'heat transfer', 'gas laws', 'specific heat capacity', 'heat energy'],
    answer: {
      title: 'Heat and Thermodynamics',
      subject: 'Physics',
      directExplanation: 'Thermodynamics deals with heat, temperature, and energy transfer. Heat is thermal energy transferred due to a temperature difference. Temperature measures the average kinetic energy of particles. Energy flows spontaneously from hot to cold objects.',
      keyPoints: [
        'Heat transfer methods: conduction (solids), convection (fluids), radiation (EM waves, no medium needed)',
        'Specific heat capacity (c): energy needed to raise 1 kg by 1°C; Q = mcΔT',
        'Latent heat: energy absorbed/released during a change of state (no temperature change)',
        'Boyle\'s Law: PV = constant (at constant T); P₁V₁ = P₂V₂',
        'Charles\' Law: V/T = constant (at constant P); V₁/T₁ = V₂/T₂',
      ],
      breakdown: [
        b('Conduction', 'Heat transfer through a material by vibration of particles or free electron movement. Best in metals (free electrons). Insulators (wood, plastic) conduct poorly. Rate depends on thermal conductivity, area, thickness, temperature difference.', 'process'),
        b('Convection', 'Heat transfer by bulk movement of fluids (liquids/gases). Hot fluid expands, becomes less dense, rises. Cool fluid sinks. Creates convection currents. Explains sea breezes, atmospheric circulation, and boiling water.', 'process'),
        b('Radiation', 'Heat transfer by infrared EM waves. Does not require a medium. Rate depends on: surface area, temperature (higher T = much more radiation — Stefan\'s Law: P ∝ T⁴), colour/texture (black bodies are perfect emitters and absorbers).', 'process'),
        b('Gas Laws Combined', 'Combined gas law: PV/T = constant → P₁V₁/T₁ = P₂V₂/T₂ (T must be in Kelvin: K = °C + 273). Ideal Gas Equation: PV = nRT, where n = moles, R = 8.314 J/mol·K.', 'formula'),
        b('Specific Heat Capacity', 'Q = mcΔT. Water has a high specific heat capacity (4200 J/kg·K), making it useful for cooling systems. Metals have lower values, heating and cooling faster. Use this formula for calorimetry problems.', 'formula'),
      ],
      example: 'Heating 2 kg of water from 20°C to 100°C: Q = mcΔT = 2 × 4200 × 80 = 672,000 J = 672 kJ. Compare: heating 2 kg of aluminium (c = 900 J/kg·K) by the same amount only needs 144 kJ — much less energy needed.',
      summary: 'Heat transfers by conduction (solids), convection (fluids), and radiation (EM waves). Q = mcΔT calculates energy for temperature changes. Latent heat applies during phase changes. Gas laws (Boyle\'s, Charles\', combined) relate pressure, volume, and temperature for ideal gases.',
      relatedTopics: ['Energy', 'States of Matter', 'Kinetic Theory', 'Engines'],
      confidence: 'high',
    },
  },

  // ─── MATHEMATICS ───────────────────────────────────────────────────────────
  {
    id: 'math-algebra',
    subject: 'Mathematics',
    topic: 'Algebra',
    keywords: ['algebra', 'equation', 'simultaneous', 'quadratic', 'factorize', 'expand', 'simplify', 'expression', 'inequalities', 'linear equation', 'quadratic formula', 'completing the square', 'polynomial', 'roots', 'discriminant', 'substitution'],
    aliases: ['algebra', 'equations', 'quadratic equations', 'simultaneous equations'],
    answer: {
      title: 'Algebra: Equations and Techniques',
      subject: 'Mathematics',
      directExplanation: 'Algebra uses symbols (variables) to represent unknown quantities and express mathematical relationships. It allows us to solve equations, simplify expressions, and model real-world problems. Core topics include linear equations, quadratic equations, and simultaneous equations.',
      keyPoints: [
        'Linear equation: ax + b = 0 → solve by isolating x',
        'Quadratic equation: ax² + bx + c = 0 → use formula, factorisation, or completing the square',
        'Quadratic formula: x = (−b ± √(b²−4ac)) / 2a',
        'Discriminant: b²−4ac; >0 two real roots, =0 one repeated root, <0 no real roots',
        'Simultaneous equations: solve two equations with two unknowns (substitution or elimination)',
      ],
      breakdown: [
        b('Factorisation', 'Find two numbers that multiply to give ac and add to give b. Then split the middle term and factor by grouping. Example: 2x² + 5x + 3 = (2x+3)(x+1). Always try factorising before using the formula.', 'process'),
        b('Quadratic Formula', 'Applies to any quadratic ax² + bx + c = 0. x = [−b ± √(b²−4ac)] / (2a). The ± gives two possible solutions. The discriminant (b²−4ac) tells you the nature of roots: positive = 2 real roots, zero = 1 repeated root, negative = no real roots.', 'formula'),
        b('Simultaneous Equations', 'Two methods: Substitution — express one variable from one equation, substitute into the other. Elimination — multiply equations so one variable has equal coefficients, then add/subtract to eliminate it. Check your solution in both original equations.', 'process'),
        b('Inequalities', 'Solve like equations but: when multiplying or dividing by a negative number, REVERSE the inequality sign. Graph solutions on a number line. Example: −2x > 6 → x < −3 (note reversed sign).', 'concept'),
        b('Index Laws', 'aᵐ × aⁿ = aᵐ⁺ⁿ; aᵐ ÷ aⁿ = aᵐ⁻ⁿ; (aᵐ)ⁿ = aᵐⁿ; a⁰ = 1; a⁻ⁿ = 1/aⁿ; a^(1/n) = ⁿ√a. Essential for simplifying algebraic expressions involving powers.', 'formula'),
      ],
      example: 'Solve 2x² − 5x − 3 = 0 by factorisation: find two numbers multiplying to 2×(−3) = −6 and adding to −5: those are −6 and +1. → 2x² − 6x + x − 3 = 0 → 2x(x−3) + 1(x−3) = 0 → (2x+1)(x−3) = 0 → x = −½ or x = 3.',
      summary: 'Algebra provides tools to solve equations and model situations. Linear equations yield one solution; quadratics yield up to two. The quadratic formula works universally; factorisation is faster when it works. Simultaneous equations are solved by substitution or elimination. Mastery of algebraic manipulation is essential throughout mathematics.',
      relatedTopics: ['Functions and Graphs', 'Sequences and Series', 'Trigonometry', 'Calculus', 'Number Theory'],
      confidence: 'high',
    },
  },
  {
    id: 'math-trigonometry',
    subject: 'Mathematics',
    topic: 'Trigonometry',
    keywords: ['trigonometry', 'sine', 'cosine', 'tangent', 'sin', 'cos', 'tan', 'sohcahtoa', 'right triangle', 'right angle', 'angle', 'bearing', 'sine rule', 'cosine rule', 'area of triangle', 'trigonometric identity', 'unit circle', 'radian', 'pythagoras'],
    aliases: ['trigonometry', 'trig', 'sine cosine tangent', 'sohcahtoa', 'bearings'],
    answer: {
      title: 'Trigonometry',
      subject: 'Mathematics',
      directExplanation: 'Trigonometry studies the relationships between the angles and sides of triangles. For right-angled triangles, the basic ratios (sin, cos, tan) relate angles to side lengths. For any triangle, the Sine Rule and Cosine Rule allow solutions of non-right-angled triangles.',
      keyPoints: [
        'SOHCAHTOA: Sin = Opp/Hyp, Cos = Adj/Hyp, Tan = Opp/Adj',
        'Pythagoras: a² + b² = c² (right-angled triangle, c = hypotenuse)',
        'Sine Rule: a/sinA = b/sinB = c/sinC (any triangle)',
        'Cosine Rule: c² = a² + b² − 2ab cosC (any triangle)',
        'Area of triangle = ½ab sinC',
      ],
      breakdown: [
        b('SOHCAHTOA', 'For a right-angled triangle with angle θ: Sin θ = Opposite/Hypotenuse, Cos θ = Adjacent/Hypotenuse, Tan θ = Opposite/Adjacent. Use inverse trig (sin⁻¹, cos⁻¹, tan⁻¹) to find angles from ratios.', 'formula'),
        b('Special Angles', 'sin 30° = 0.5, cos 30° = √3/2, tan 30° = 1/√3. sin 45° = cos 45° = 1/√2. sin 60° = √3/2, cos 60° = 0.5, tan 60° = √3. sin 90° = 1, cos 90° = 0. Memorise these for quick calculations.', 'fact'),
        b('Sine Rule', 'Use when: given two angles + one side (AAS/ASA), or two sides + non-included angle (SSA, ambiguous case). Formula: a/sinA = b/sinB = c/sinC. For finding angles: sinA/a = sinB/b = sinC/c.', 'formula'),
        b('Cosine Rule', 'Use when: given three sides (SSS) or two sides + included angle (SAS). Formula: a² = b² + c² − 2bc cosA. Rearranged for angle: cosA = (b² + c² − a²)/(2bc). Generalisation of Pythagoras.', 'formula'),
        b('Bearings', '3-digit angles measured clockwise from North. N = 000°, E = 090°, S = 180°, W = 270°. In bearing problems, draw a diagram, mark North lines, use alternate/co-interior angle rules, then apply trig.', 'concept'),
      ],
      example: 'In triangle ABC: AB = 8 cm, BC = 6 cm, angle B = 50°. Find AC using Cosine Rule: AC² = 8² + 6² − 2(8)(6)cos50° = 64 + 36 − 96(0.6428) = 100 − 61.71 = 38.29. AC = √38.29 ≈ 6.19 cm.',
      summary: 'Trigonometry links angles and sides in triangles. SOHCAHTOA works for right-angled triangles. The Sine Rule solves triangles when two angles + one side or two sides + non-included angle are known. The Cosine Rule handles three sides or two sides + included angle. Bearings apply trigonometry to directional navigation.',
      relatedTopics: ['Pythagoras Theorem', 'Geometry', 'Coordinate Geometry', 'Vectors', 'Functions and Graphs'],
      confidence: 'high',
    },
  },
  {
    id: 'math-statistics',
    subject: 'Mathematics',
    topic: 'Statistics',
    keywords: ['statistics', 'mean', 'median', 'mode', 'range', 'standard deviation', 'variance', 'histogram', 'frequency', 'bar chart', 'pie chart', 'cumulative frequency', 'probability', 'normal distribution', 'correlation', 'regression', 'data', 'average'],
    aliases: ['statistics', 'probability and statistics', 'data analysis', 'measures of central tendency'],
    answer: {
      title: 'Statistics and Data Analysis',
      subject: 'Mathematics',
      directExplanation: 'Statistics is the science of collecting, organising, analysing, interpreting, and presenting data. Descriptive statistics summarise data using measures of central tendency (mean, median, mode) and measures of spread (range, standard deviation). Probability measures the likelihood of events.',
      keyPoints: [
        'Mean = sum of all values ÷ number of values (affected by extreme values)',
        'Median = middle value when data is ordered (not affected by outliers)',
        'Mode = most frequently occurring value (can be used for categorical data)',
        'Range = maximum − minimum; Standard deviation measures spread around the mean',
        'Probability: P(event) = favourable outcomes / total possible outcomes; 0 ≤ P ≤ 1',
      ],
      breakdown: [
        b('Mean from Frequency Table', 'Multiply each value (or midpoint) by its frequency, sum all products, divide by total frequency. x̄ = Σ(fx) / Σf. For grouped data, use the class midpoint as the representative value.', 'formula'),
        b('Cumulative Frequency', 'Running total of frequencies. Used to find median, quartiles, and percentiles from a graph. Plot upper class boundary vs cumulative frequency. Median is at n/2; lower quartile at n/4; upper quartile at 3n/4.', 'process'),
        b('Interquartile Range', 'IQR = Upper Quartile − Lower Quartile. Measures the spread of the middle 50% of data. More reliable than range as not affected by extreme values. Used in box plots.', 'concept'),
        b('Probability Rules', 'P(A or B) = P(A) + P(B) − P(A and B) [addition rule]. P(A and B) = P(A) × P(B|A) [multiplication rule]. If A and B are mutually exclusive: P(A or B) = P(A) + P(B). If independent: P(A and B) = P(A) × P(B).', 'formula'),
        b('Standard Deviation', 'σ = √[Σ(x − x̄)²/n]. Measures how spread out data is from the mean. Low σ: data clustered around mean. High σ: data widely spread. Most WASSCE questions ask you to calculate σ from raw data or frequency tables.', 'formula'),
      ],
      example: 'Data: 3, 5, 7, 7, 9, 11, 13. Mean = (3+5+7+7+9+11+13)/7 = 55/7 ≈ 7.86. Median (middle value, 7 terms) = 7. Mode = 7. Range = 13−3 = 10. IQR = Q3 − Q1 = 11 − 5 = 6.',
      summary: 'Statistics summarises and analyses data. Mean, median, and mode describe the centre; range, IQR, and standard deviation describe the spread. Frequency tables and graphs (histograms, cumulative frequency curves) display data visually. Probability quantifies uncertainty from 0 (impossible) to 1 (certain).',
      relatedTopics: ['Probability', 'Graphs and Charts', 'Algebra', 'Further Maths – Statistics'],
      confidence: 'high',
    },
  },
  {
    id: 'math-geometry',
    subject: 'Mathematics',
    topic: 'Geometry',
    keywords: ['geometry', 'angle', 'triangle', 'circle', 'polygon', 'quadrilateral', 'parallel lines', 'transversal', 'interior angle', 'exterior angle', 'area', 'perimeter', 'volume', 'surface area', 'circle theorem', 'chord', 'tangent', 'arc', 'sector', 'segment'],
    aliases: ['geometry', 'angles', 'circle theorems', 'shapes and area', 'polygon'],
    answer: {
      title: 'Geometry: Shapes, Angles, and Circle Theorems',
      subject: 'Mathematics',
      directExplanation: 'Geometry deals with the properties and relationships of shapes, sizes, and relative positions of figures. It includes angle properties, polygon properties, mensuration (area and volume), and circle theorems.',
      keyPoints: [
        'Angles in a triangle sum to 180°; in a quadrilateral, 360°',
        'Corresponding angles equal (parallel lines); alternate angles equal; co-interior angles sum to 180°',
        'Circle: area = πr², circumference = 2πr; Sector area = (θ/360°)×πr²',
        'Circle theorem: angle in semicircle = 90°; angles in same segment are equal',
        'Tangent–radius: tangent is perpendicular to radius at point of contact',
      ],
      breakdown: [
        b('Angle Rules', 'Vertically opposite angles are equal. Angles on a straight line sum to 180°. Angles at a point sum to 360°. Exterior angle of triangle = sum of two non-adjacent interior angles.', 'concept'),
        b('Circle Theorems', '1) Angle at centre = 2× angle at circumference (same arc). 2) Angles in the same segment are equal. 3) Opposite angles of a cyclic quadrilateral sum to 180°. 4) Angle in a semicircle = 90°. 5) Tangent–chord angle = angle in alternate segment.', 'fact'),
        b('Areas and Volumes', 'Rectangle: lw. Triangle: ½bh. Circle: πr². Cylinder: πr²h (vol), 2πr(r+h) (SA). Cone: ⅓πr²h (vol), πr(r+l) (SA). Sphere: (4/3)πr³ (vol), 4πr² (SA). Pyramid: ⅓×base area×h.', 'formula'),
        b('Similar and Congruent Shapes', 'Congruent: same shape and size (SSS, SAS, ASA, RHS criteria). Similar: same shape, different size. If lengths scale by factor k: areas scale by k², volumes scale by k³.', 'concept'),
        b('Coordinate Geometry', 'Distance = √[(x₂−x₁)² + (y₂−y₁)²]. Midpoint = ((x₁+x₂)/2, (y₁+y₂)/2). Gradient = (y₂−y₁)/(x₂−x₁). Line: y = mx + c. Parallel lines: equal gradients. Perpendicular: m₁×m₂ = −1.', 'formula'),
      ],
      example: 'A circle with radius 7 cm: area = π×7² = 49π ≈ 153.9 cm². A sector with θ = 72°: sector area = (72/360)×49π = (1/5)×49π = 9.8π ≈ 30.8 cm². Arc length = (72/360)×2π×7 = 8.8 cm.',
      summary: 'Geometry covers angle relationships, polygon properties, mensuration, and circle theorems. Key results include: angles in a triangle = 180°, circle area = πr², angle at centre = 2× circumference angle. Similar shapes have lengths, areas, and volumes scaled by k, k², and k³ respectively.',
      relatedTopics: ['Trigonometry', 'Coordinate Geometry', 'Vectors', 'Mensuration', 'Transformations'],
      confidence: 'high',
    },
  },

  // ─── ENGLISH ────────────────────────────────────────────────────────────────
  {
    id: 'eng-comprehension',
    subject: 'English',
    topic: 'Reading Comprehension',
    keywords: ['comprehension', 'reading', 'passage', 'inference', 'main idea', 'context clue', 'tone', 'theme', 'figurative language', 'summary', 'vocabulary', 'understanding text', 'reading skills'],
    aliases: ['reading comprehension', 'comprehension skills', 'passage analysis'],
    answer: {
      title: 'Reading Comprehension Skills',
      subject: 'English',
      directExplanation: 'Comprehension is the ability to read a passage and understand its meaning, purpose, tone, and implications. It requires both literal understanding (what the text says) and inferential understanding (what the text implies or means).',
      keyPoints: [
        'Read the questions first, then the passage — know what to look for',
        'Literal questions: answers are directly stated in the text',
        'Inferential questions: require you to "read between the lines"',
        'Vocabulary in context: work out meaning from surrounding words',
        'Always quote or reference the text when justifying answers',
      ],
      breakdown: [
        b('Finding the Main Idea', 'Usually stated in the topic sentence of the first paragraph or summarised at the end. Ask: "What is the passage mostly about?" The main idea is broader than any specific detail.', 'concept'),
        b('Inference', 'Involves drawing conclusions not explicitly stated. Look for clues in word choice, tone, and what is described. Example: "She dragged herself to the office" implies tiredness without stating it directly.', 'concept'),
        b('Tone and Mood', 'Tone is the author\'s attitude toward the subject (critical, admiring, humorous, solemn). Mood is the feeling the text creates in the reader. Identify tone through word choice (diction) and structure.', 'concept'),
        b('Figurative Language', 'Simile: comparison using "like" or "as". Metaphor: direct comparison (says A IS B). Personification: giving human traits to non-human things. Hyperbole: exaggeration for effect. Alliteration: repetition of initial consonant sounds.', 'fact'),
        b('Context Clues', 'When you see an unfamiliar word, use the surrounding text to infer meaning. Types of clues: definition clue (word is defined), example clue, contrast/antonym clue ("unlike X, it was Y").', 'concept'),
      ],
      example: '"The ancient oak, weary of centuries of storms, finally surrendered to the chainsaw." Inference: the tree is old and has survived many hardships. Personification: "weary" and "surrendered" give the tree human qualities. Tone: elegiac/somber.',
      summary: 'Good comprehension requires active reading: identifying main ideas, making inferences, understanding vocabulary in context, and recognising tone and figurative language. Always base your answers on textual evidence. Read questions before the passage to guide your focus.',
      relatedTopics: ['Essay Writing', 'Vocabulary', 'Summary Writing', 'Literary Analysis'],
      confidence: 'high',
    },
  },
  {
    id: 'eng-essay',
    subject: 'English',
    topic: 'Essay Writing',
    keywords: ['essay', 'writing', 'paragraph', 'introduction', 'conclusion', 'body paragraph', 'thesis', 'argument', 'narrative', 'descriptive', 'argumentative', 'expository', 'essay structure', 'topic sentence', 'cohesion', 'discourse markers'],
    aliases: ['essay writing', 'how to write an essay', 'essay structure', 'paragraphs'],
    answer: {
      title: 'Essay Writing: Structure and Technique',
      subject: 'English',
      directExplanation: 'An essay is a structured piece of writing that develops an idea or argument through organized paragraphs. The three fundamental parts are the introduction, body, and conclusion. Clarity, coherence, and development of ideas are the markers of a high-quality essay.',
      keyPoints: [
        'Introduction: hook + background + clear thesis statement',
        'Body paragraphs: topic sentence + evidence/examples + analysis + link back',
        'Conclusion: restate thesis + summarise main points + final thought (no new arguments)',
        'Use discourse markers for flow: however, furthermore, in contrast, consequently',
        'WASSCE essays: plan before writing; aim for 4–5 well-developed paragraphs',
      ],
      breakdown: [
        b('Introduction', 'Open with a hook (striking statement, question, or relevant anecdote). Provide brief context/background. End with a clear thesis statement that states your main argument or purpose. Avoid starting with "In this essay I will..."', 'process'),
        b('PEEL Paragraph Structure', 'Point: state the topic sentence (main idea of paragraph). Evidence: provide a quotation, fact, or example. Explanation: analyse the evidence — how does it support your point? Link: connect back to the thesis or lead into the next paragraph.', 'process'),
        b('Types of WASSCE Essays', 'Argumentative/Discursive: present balanced arguments, take a clear position. Narrative: tell a story with plot, setting, characters, and conflict. Descriptive: create a vivid picture using sensory details. Expository: explain or inform clearly and objectively.', 'concept'),
        b('Language and Style', 'Vary sentence length (mix short for impact with longer complex sentences). Use precise vocabulary. Avoid repetition of words — use synonyms. Maintain consistent tense and person. Use punctuation correctly (commas, semicolons, colons).', 'concept'),
        b('Conclusion', 'Restate thesis in new words. Synthesise (not just summarise) main arguments. End with a memorable final sentence — implication, call to action, or broader significance. Never introduce new information in the conclusion.', 'process'),
      ],
      example: 'Thesis: "Social media is more harmful than beneficial to young people." Topic sentence for body paragraph 1: "The addictive nature of social media platforms negatively affects students\' academic performance." Then: evidence (studies showing reduced concentration), explanation (algorithm design keeps users scrolling), link back to thesis.',
      summary: 'A well-written essay follows a clear structure: introduction (thesis), body (PEEL paragraphs with evidence and analysis), and conclusion (synthesis). Use discourse markers for cohesion. WASSCE essays reward clear argumentation, varied vocabulary, and accurate grammar. Always plan your essay before writing.',
      relatedTopics: ['Reading Comprehension', 'Summary Writing', 'Grammar', 'Vocabulary', 'Oral English'],
      confidence: 'high',
    },
  },
  {
    id: 'eng-grammar',
    subject: 'English',
    topic: 'Grammar',
    keywords: ['grammar', 'parts of speech', 'noun', 'verb', 'adjective', 'adverb', 'pronoun', 'preposition', 'conjunction', 'sentence', 'clause', 'phrase', 'tense', 'subject verb agreement', 'punctuation', 'active passive', 'direct indirect speech', 'reported speech'],
    aliases: ['english grammar', 'parts of speech', 'tenses', 'sentence structure', 'grammar rules'],
    answer: {
      title: 'English Grammar: Parts of Speech and Sentence Structure',
      subject: 'English',
      directExplanation: 'Grammar is the system of rules that governs how words are combined to form sentences in a language. Mastering grammar ensures clear, accurate communication. Key areas include parts of speech, tenses, sentence structure, and common constructions like active/passive voice and direct/indirect speech.',
      keyPoints: [
        'Parts of speech: noun, pronoun, verb, adjective, adverb, preposition, conjunction, interjection',
        'Subject-verb agreement: singular subject → singular verb; plural subject → plural verb',
        'Tenses: 12 tenses in English (simple, continuous, perfect, perfect continuous × past/present/future)',
        'Active voice: subject does the action. Passive voice: subject receives the action',
        'Direct speech: exact words quoted. Indirect (reported) speech: paraphrase with tense shift',
      ],
      breakdown: [
        b('Tenses at a Glance', 'Simple: habitual/permanent facts (I eat; I ate; I will eat). Continuous: ongoing actions (I am eating; I was eating; I will be eating). Perfect: completed actions with present relevance (I have eaten; I had eaten; I will have eaten). Perfect Continuous: duration up to a point (I have been eating for an hour).', 'fact'),
        b('Active vs Passive Voice', 'Active: "The teacher marked the scripts." Passive: "The scripts were marked by the teacher." Form passive: move object to subject + be + past participle. Use passive when the doer is unknown/unimportant or to shift emphasis to the action or receiver.', 'process'),
        b('Direct and Indirect Speech', 'Direct: She said, "I am tired." Indirect: She said (that) she was tired. Changes in indirect speech: tense shifts back (am→was, is→was, will→would, can→could, have→had). Pronouns and time expressions also change (today→that day, tomorrow→the next day).', 'process'),
        b('Common Error Areas', 'Danglers ("Running to catch the bus, the rain started" — wrong: who was running?). Subject-verb agreement ("Neither the students nor the teacher is..." — verb agrees with nearest subject). Misused tenses ("I have gone there yesterday" — wrong; should be "I went").', 'fact'),
        b('Conditional Sentences', 'Type 0 (always true): If + present, present. Type 1 (possible): If + present, will + infinitive. Type 2 (hypothetical): If + past simple, would + infinitive. Type 3 (past hypothetical): If + past perfect, would have + past participle.', 'concept'),
      ],
      example: 'Incorrect: "Each of the boys have done their work." Correct: "Each of the boys has done his/her work." — "each" is singular, so verb must be singular (has, not have). Pronoun must also agree: his/her (or their in modern usage).',
      summary: 'Grammar provides the rules for correct English usage. Master the 12 tenses, subject-verb agreement, and parts of speech. Know how to form passive voice and convert between direct and indirect speech. Common WASSCE grammar questions cover error identification, sentence transformation, and cloze tests.',
      relatedTopics: ['Essay Writing', 'Comprehension', 'Vocabulary', 'Oral English', 'Lexis and Structure'],
      confidence: 'high',
    },
  },

  // ─── GEOGRAPHY ─────────────────────────────────────────────────────────────
  {
    id: 'geo-weather-climate',
    subject: 'Geography',
    topic: 'Weather and Climate',
    keywords: ['weather', 'climate', 'atmosphere', 'temperature', 'rainfall', 'precipitation', 'humidity', 'pressure', 'wind', 'air mass', 'front', 'tropical', 'equatorial', 'savanna', 'desert climate', 'monsoon', 'climate change', 'greenhouse effect', 'global warming'],
    aliases: ['weather and climate', 'climate types', 'atmospheric conditions', 'tropical climate'],
    answer: {
      title: 'Weather, Climate, and Climate Types',
      subject: 'Geography',
      directExplanation: 'Weather refers to short-term atmospheric conditions at a specific place and time. Climate is the average weather pattern of a region over a long period (at least 30 years). Africa has several distinct climate types determined by latitude, relief, ocean currents, and distance from the sea.',
      keyPoints: [
        'Factors affecting climate: latitude, altitude, distance from sea, ocean currents, winds, relief',
        'Equatorial climate: hot and wet all year; two seasons; high humidity; found near equator',
        'Tropical continental (savanna): distinct wet and dry seasons; further from equator',
        'Hot desert: very low rainfall (<250mm/yr), extreme temperature ranges, sparse vegetation',
        'Mediterranean: hot dry summers, mild wet winters; found on west coasts 30–45°N/S',
      ],
      breakdown: [
        b('Equatorial Climate', 'Found within 5–10° of the equator (e.g. Congo Basin, Amazon). Characteristics: heavy rainfall all year (>2000mm), convectional rainfall daily, mean monthly temperature ~27°C with small annual range, high humidity (~80%). Two rainfall peaks as ITCZ passes twice. Rainforest vegetation.', 'concept'),
        b('Tropical Savanna Climate', 'Found 5–20° from equator (e.g. much of West Africa). Two distinct seasons: wet season (high sun, ITCZ overhead) and dry season (low sun, trade winds, Harmattan in West Africa). Vegetation is tall grasses and scattered trees.', 'concept'),
        b('Hot Desert Climate', 'Found 20–30° from equator on west sides of continents (e.g. Sahara, Namib, Arabian). <250 mm annual rainfall. Large diurnal temperature range (very hot day, cold night). Sparse vegetation. Caused by: permanent high pressure, dry trade winds, cold offshore currents.', 'concept'),
        b('Climate Change', 'Enhanced greenhouse effect: increased CO₂, CH₄, N₂O from burning fossil fuels, deforestation, agriculture → traps more heat → global warming → rising sea levels, more extreme weather, shifting climate zones, melting ice caps.', 'process'),
        b('Weather Instruments', 'Thermometer (temperature), Barometer (air pressure), Hygrometer (humidity), Rain gauge (precipitation), Anemometer (wind speed), Wind vane (wind direction), Sunshine recorder (hours of sunshine). All read daily at a Stevenson Screen.', 'fact'),
      ],
      example: 'Kano, Nigeria (12°N) has a tropical continental climate: rainy season May–September when the ITCZ moves north; dry season October–April under the influence of the dry northeast Trade Winds (Harmattan). Compare with Ibadan (7°N) which has a longer rainy season.',
      summary: 'Climate is the long-term atmospheric pattern of a region. Key climate types in Africa include equatorial (near equator, hot and wet), savanna (seasonal wet/dry), and hot desert (20–30°, very dry). Climate is determined by latitude, altitude, distance from sea, prevailing winds, and ocean currents. Climate change is driven by the enhanced greenhouse effect.',
      relatedTopics: ['Vegetation', 'Soils', 'Population', 'Agriculture', 'Environmental Issues'],
      confidence: 'high',
    },
  },
  {
    id: 'geo-population',
    subject: 'Geography',
    topic: 'Population',
    keywords: ['population', 'birth rate', 'death rate', 'natural increase', 'migration', 'urbanisation', 'population growth', 'demographic transition', 'population distribution', 'population density', 'overpopulation', 'underpopulation', 'census', 'dependency ratio'],
    aliases: ['population geography', 'population growth', 'urbanisation', 'demographic transition'],
    answer: {
      title: 'Population: Growth, Distribution, and Urbanisation',
      subject: 'Geography',
      directExplanation: 'Population geography studies the number, distribution, and characteristics of people, and how they change over time. Population change depends on birth rates, death rates, and migration. The demographic transition model explains how populations change as countries develop.',
      keyPoints: [
        'Natural increase = birth rate − death rate (expressed per 1000 people per year)',
        'High birth rates in LEDCs; low birth rates in MEDCs',
        'Population density = total population / land area (persons/km²)',
        'Pull factors attract migrants; push factors drive people away',
        'Urbanisation: increasing proportion of population living in urban areas',
      ],
      breakdown: [
        b('Demographic Transition Model (DTM)', 'Stage 1: high BR + high DR → slow growth (pre-industrial). Stage 2: high BR + falling DR → rapid growth (improving healthcare). Stage 3: falling BR + low DR → slowing growth (development, education, women\'s rights). Stage 4: low BR + low DR → stable/slow growth (MEDCs). Stage 5: BR < DR → population decline.', 'process'),
        b('Factors Affecting Birth Rate', 'Increases BR: low female education, early marriage, lack of contraception, cultural/religious values, need for farm labour, high infant mortality (have more to ensure some survive). Decreases BR: education, female employment, contraception, urbanisation, later marriage.', 'fact'),
        b('Population Distribution in West Africa', 'Uneven distribution. Dense: fertile river valleys, coastal areas, mining/commercial centres. Sparse: arid zones (Sahel, desert), dense rainforests, areas with disease (e.g. tsetse fly belt). Influenced by: relief, climate, soil, water availability, historical/economic factors.', 'concept'),
        b('Urbanisation Problems', 'Rapid growth of cities in LEDCs → urban problems: housing shortage and slums (shanty towns), unemployment, inadequate infrastructure (water, sanitation, electricity), traffic congestion, crime, air and water pollution.', 'concept'),
        b('Migration', 'Internal: rural-to-urban (most common in LEDCs, seeking jobs/education). International: economic migration, refugees, asylum seekers. Effects on source region: labour loss but remittances. Effects on destination: demographic change, cultural diversity, strain on services.', 'concept'),
      ],
      example: 'Nigeria: population ~220 million. High birth rate (~36/1000), falling death rate (~11/1000) → natural increase ~25/1000 = 2.5%. Dense populations around Lagos (commerce), Kano (trade), and the Middle Belt (farming). Sparse in the northeastern arid regions.',
      summary: 'Population change is driven by birth rates, death rates, and migration. The DTM explains progression from high birth/death rates to low birth/death rates as nations develop. West Africa has uneven population distribution linked to environment, history, and economic activity. Rapid urbanisation is a major challenge for developing nations.',
      relatedTopics: ['Agriculture', 'Resources', 'Economic Development', 'Settlement', 'Climate'],
      confidence: 'high',
    },
  },

  // ─── FURTHER MATHEMATICS ────────────────────────────────────────────────────
  {
    id: 'fmath-calculus',
    subject: 'Further Mathematics',
    topic: 'Calculus',
    keywords: ['calculus', 'differentiation', 'integration', 'derivative', 'integral', 'dy/dx', 'chain rule', 'product rule', 'quotient rule', 'maxima', 'minima', 'turning point', 'stationary point', 'area under curve', 'definite integral', 'rate of change'],
    aliases: ['calculus', 'differentiation', 'integration', 'derivatives'],
    answer: {
      title: 'Calculus: Differentiation and Integration',
      subject: 'Further Mathematics',
      directExplanation: 'Calculus is the study of continuous change. Differentiation finds the rate of change (gradient/slope) of a function. Integration finds the accumulated total (area under a curve). They are inverse operations — the Fundamental Theorem of Calculus links them.',
      keyPoints: [
        'Differentiation: d/dx(xⁿ) = nxⁿ⁻¹; power rule',
        'Integration: ∫xⁿ dx = xⁿ⁺¹/(n+1) + C (n ≠ −1)',
        'Chain rule: d/dx[f(g(x))] = f\'(g(x)) × g\'(x)',
        'At turning points: dy/dx = 0. Maximum: d²y/dx² < 0; Minimum: d²y/dx² > 0',
        'Definite integral ∫ₐᵇ f(x) dx = area between curve and x-axis from a to b',
      ],
      breakdown: [
        b('Power Rule for Differentiation', 'If y = xⁿ, then dy/dx = nxⁿ⁻¹. For a sum: differentiate term by term. Constants differentiate to 0. Example: y = 3x⁴ − 2x² + 7 → dy/dx = 12x³ − 4x.', 'formula'),
        b('Chain Rule', 'For composite functions f(g(x)): dy/dx = (dy/du) × (du/dx) where u = g(x). Example: y = (3x+2)⁵. Let u = 3x+2, so y = u⁵. dy/du = 5u⁴, du/dx = 3. So dy/dx = 15(3x+2)⁴.', 'formula'),
        b('Product and Quotient Rules', 'Product: d/dx[uv] = u(dv/dx) + v(du/dx). Quotient: d/dx[u/v] = [v(du/dx) − u(dv/dx)] / v². Use product rule for two functions multiplied; quotient rule for one divided by another.', 'formula'),
        b('Finding Turning Points', '1) Find dy/dx. 2) Set dy/dx = 0, solve for x. 3) Find corresponding y values. 4) Find d²y/dx². If d²y/dx² > 0: minimum; if < 0: maximum; if = 0: inflection (further test needed).', 'process'),
        b('Integration Techniques', 'Basic: ∫xⁿ dx = xⁿ⁺¹/(n+1) + C. Integration by substitution (reverse chain rule). Integration by parts: ∫u dv = uv − ∫v du. Definite integrals: substitute limits after integrating; gives a number (area).', 'formula'),
      ],
      example: 'Find the minimum of y = x³ − 3x² − 9x + 5. dy/dx = 3x² − 6x − 9 = 0 → x² − 2x − 3 = 0 → (x−3)(x+1) = 0 → x = 3 or x = −1. d²y/dx² = 6x − 6. At x = 3: d²y/dx² = 12 > 0 → minimum. At x = −1: d²y/dx² = −12 < 0 → maximum.',
      summary: 'Calculus is split into differentiation (rates of change, gradients) and integration (accumulation, areas). Power rule differentiates polynomials. Chain, product, and quotient rules handle complex functions. Setting dy/dx = 0 finds turning points; d²y/dx² classifies them. Integration reverses differentiation and calculates areas under curves.',
      relatedTopics: ['Algebra', 'Coordinate Geometry', 'Trigonometry', 'Vectors', 'Sequences and Series'],
      confidence: 'high',
    },
  },
  {
    id: 'fmath-vectors',
    subject: 'Further Mathematics',
    topic: 'Vectors',
    keywords: ['vector', 'vectors', 'scalar', 'magnitude', 'direction', 'position vector', 'unit vector', 'dot product', 'scalar product', 'cross product', 'vector addition', 'resultant', 'components', 'column vector', 'displacement'],
    aliases: ['vectors', 'vector mathematics', 'vector algebra'],
    answer: {
      title: 'Vectors',
      subject: 'Further Mathematics',
      directExplanation: 'A vector is a quantity with both magnitude (size) and direction. Scalars have magnitude only. Vectors are used to represent displacement, velocity, force, and acceleration. They can be added, subtracted, and multiplied by scalars, following specific rules.',
      keyPoints: [
        'Vector represented as column vector (x, y) or as bold letter a or a⃗',
        'Magnitude of vector (a, b) = √(a² + b²)',
        'Unit vector: vector of magnitude 1; â = a / |a|',
        'Dot product: a·b = |a||b|cosθ = a₁b₁ + a₂b₂ (gives a scalar)',
        'Vectors are parallel if one is a scalar multiple of the other',
      ],
      breakdown: [
        b('Vector Addition', 'Triangle law: place vectors head to tail; resultant = vector from start to end. Parallelogram law: for two vectors from the same point, resultant = diagonal of parallelogram. Component method: add x-components, add y-components.', 'process'),
        b('Position Vectors', 'Position vector of A from origin O is OA⃗. Vector from A to B: AB⃗ = OB⃗ − OA⃗ = b − a. Midpoint of AB has position vector ½(a + b). Used extensively in coordinate geometry and mechanics.', 'concept'),
        b('Dot (Scalar) Product', 'a·b = a₁b₁ + a₂b₂ + a₃b₃. Also: a·b = |a||b|cosθ. If a·b = 0 and neither is zero vector, then a ⊥ b (perpendicular). Used to find the angle between two vectors.', 'formula'),
        b('Resolving Vectors', 'A vector at angle θ to horizontal resolves into: horizontal component = v cosθ, vertical component = v sinθ. Essential for mechanics problems involving forces at an angle or projectile motion.', 'process'),
        b('Vector Proof Technique', 'To prove points are collinear (on the same line): show that the vectors between them are scalar multiples of each other. To prove a point divides a line in a given ratio: use the section formula for position vectors.', 'concept'),
      ],
      example: 'a = (3, 4), b = (1, 2). a + b = (4, 6). |a| = √(9+16) = 5. a·b = 3×1 + 4×2 = 11. cosθ = 11 / (5 × √5) = 11/(5√5). θ = cos⁻¹(11/5√5) ≈ 10.3°.',
      summary: 'Vectors have magnitude and direction. Operations include addition, subtraction, and scalar multiplication. The dot product gives a scalar and is used to find angles between vectors; if zero, vectors are perpendicular. Position vectors describe location relative to an origin. Resolving vectors into components is essential for mechanics.',
      relatedTopics: ['Mechanics', 'Coordinate Geometry', 'Matrices', 'Calculus', 'Trigonometry'],
      confidence: 'high',
    },
  },

  // ─── AGRICULTURAL SCIENCE ──────────────────────────────────────────────────
  {
    id: 'agric-soils',
    subject: 'Agricultural Science',
    topic: 'Soils',
    keywords: ['soil', 'soils', 'soil types', 'sandy soil', 'clay soil', 'loamy soil', 'soil profile', 'horizon', 'organic matter', 'humus', 'soil texture', 'soil structure', 'soil fertility', 'soil pH', 'erosion', 'leaching', 'weathering', 'loam'],
    aliases: ['soil science', 'soil types', 'soil profile', 'soil properties'],
    answer: {
      title: 'Soils: Types, Profile, and Fertility',
      subject: 'Agricultural Science',
      directExplanation: 'Soil is the uppermost layer of the Earth\'s surface that supports plant growth. It consists of mineral particles, organic matter (humus), water, air, and living organisms. Soil type, texture, and fertility determine agricultural productivity.',
      keyPoints: [
        'Soil texture: ratio of sand, silt, and clay particles',
        'Sandy soil: large particles, well-drained, low water retention, low fertility',
        'Clay soil: small particles, poor drainage, high water retention, can be very fertile',
        'Loamy soil: mixture of sand, silt, clay — best for farming (balanced properties)',
        'Soil pH affects nutrient availability: most crops prefer pH 6–7',
      ],
      breakdown: [
        b('Soil Profile', 'O horizon: organic matter/litter layer. A horizon (topsoil): humus-rich, most organisms, most fertile. B horizon (subsoil): less organic matter, mineral deposits from leaching. C horizon: weathered parent rock. R horizon: bedrock.', 'concept'),
        b('Soil Formation (Pedogenesis)', 'Soil forms from parent rock through weathering (physical: freeze-thaw, thermal expansion; chemical: oxidation, carbonation, hydrolysis; biological: root action, earthworms) combined with accumulation of organic matter. Takes thousands of years.', 'process'),
        b('Soil Fertility', 'Determined by: organic matter content, mineral nutrients (N, P, K, Ca, Mg — macronutrients; Fe, Mn, B — micronutrients), pH, soil structure, water retention, microbial activity. Improved by: adding manure/compost, crop rotation, liming (to raise pH), mulching.', 'fact'),
        b('Soil Erosion', 'Removal of topsoil by water (splash, sheet, rill, gully erosion) or wind. Causes: deforestation, overgrazing, poor farming practices. Prevention: terracing, contour ploughing, cover crops, windbreaks, afforestation.', 'process'),
        b('Soil Conservation', 'Crop rotation: different crops each season to replenish nutrients. Cover cropping: plants grown to protect and enrich soil. Mulching: organic material spread on soil surface reduces evaporation and erosion. Strip cropping: alternate strips of crops and grass reduce erosion.', 'fact'),
      ],
      example: 'A farmer in the savanna region with sandy-loam soil (pH 5.5) wants to grow maize. Actions: add lime to raise pH to 6–6.5 (optimal for maize); apply NPK fertilizer (maize is a heavy feeder, especially N); use mulching to conserve moisture; practice crop rotation to prevent nutrient depletion.',
      summary: 'Soil is a complex mixture of minerals, organic matter, water, and air. The three main types are sandy (free-draining), clay (waterlogged, nutrient-rich), and loam (best for farming). Soil profiles show distinct horizons from organic litter to bedrock. Fertility is maintained through organic matter, correct pH, and good management practices.',
      relatedTopics: ['Plant Nutrition', 'Crop Production', 'Fertilisers', 'Water Management', 'Environmental Science'],
      confidence: 'high',
    },
  },
  {
    id: 'agric-crops',
    subject: 'Agricultural Science',
    topic: 'Crop Production',
    keywords: ['crops', 'crop production', 'cereal', 'legume', 'root crop', 'vegetable', 'cash crop', 'food crop', 'planting', 'harvesting', 'weeding', 'fertilizer', 'irrigation', 'pest', 'disease', 'yield', 'maize', 'cassava', 'yam', 'rice', 'cocoa', 'groundnut'],
    aliases: ['crop production', 'farming', 'crop cultivation', 'arable farming'],
    answer: {
      title: 'Crop Production: Types, Cultivation, and Management',
      subject: 'Agricultural Science',
      directExplanation: 'Crop production involves the cultivation of plants for food, fibre, fuel, and other economic purposes. Crops are classified by type, use, and growing season. Successful production requires proper land preparation, planting, crop management, and harvesting.',
      keyPoints: [
        'Cereals: maize, rice, millet, sorghum, wheat — staple food crops',
        'Legumes: groundnuts, cowpeas, soybeans — fix atmospheric nitrogen, protein-rich',
        'Root crops: cassava, yam, cocoyam, potato — starchy, energy-rich',
        'Cash crops: cocoa, coffee, cotton, rubber — grown for export/sale',
        'IPM (Integrated Pest Management): combine biological, chemical, and cultural methods',
      ],
      breakdown: [
        b('Land Preparation', 'Clearing → primary tillage (ploughing: breaks and turns soil) → secondary tillage (harrowing: breaks clods, levels surface) → ridging/bedding (for root crops). Remove weeds and crop residues. Improves aeration and drainage.', 'process'),
        b('Planting Methods', 'Broadcasting: seeds scattered over field (rice, grasses). Drilling: seeds placed in rows. Transplanting: seedlings raised in nursery then moved to field (tomatoes, cabbage). Spacing determines competition for light, water, and nutrients. Planting date timing is critical.', 'fact'),
        b('Fertilisation', 'Macronutrients: N (leaf/stem growth), P (root and seed development), K (fruit quality, disease resistance). Organic: farmyard manure, compost (slow release, improves structure). Inorganic: NPK fertilizers (fast release, risk of leaching). Apply at right rate and time.', 'fact'),
        b('Major Pests and Diseases', 'Pests: stemborer (maize), aphids (vegetables), pod borer (cowpea), rodents. Diseases: leaf rust (wheat), blast (rice), mosaic virus (cassava), witchweed (Striga). Control: crop rotation, resistant varieties, pesticides, biological control (natural predators).', 'concept'),
        b('Harvesting and Storage', 'Harvest at right maturity stage. Methods: hand-picking (fruits), cutting (cereals), digging (root crops). Post-harvest: threshing, drying, cleaning. Storage: silos, cribs, yam barns. Problems: moulds, insects, rodents. Use hermetic bags, fumigants, or solar drying.', 'process'),
      ],
      example: 'Maize cultivation steps: clear land → plough and harrow → make ridges or plant at 75cm×30cm spacing → apply basal NPK (15:15:15) → plant 2–3 seeds per hole at 2–3cm depth → thin to 1–2 plants after germination → weed 2–3 times → apply N top-dressing at knee height → harvest at 90–120 days.',
      summary: 'Crop production requires systematic land preparation, appropriate planting methods, nutrient management, pest control, and proper harvesting. West African farming systems include subsistence (food crops) and commercial (cash crops) farming. Sustainable practices like crop rotation, organic fertilisation, and IPM maintain long-term productivity.',
      relatedTopics: ['Soils', 'Animal Husbandry', 'Irrigation', 'Fertilisers', 'Environmental Science'],
      confidence: 'high',
    },
  },

  // ─── CROSS-CUTTING TOPICS ──────────────────────────────────────────────────
  {
    id: 'sci-enzymes',
    subject: 'Biology / Chemistry',
    topic: 'Enzymes',
    keywords: ['enzyme', 'enzymes', 'catalyst', 'biological catalyst', 'active site', 'substrate', 'enzyme substrate complex', 'denaturation', 'inhibitor', 'competitive inhibitor', 'non-competitive', 'pH optimum', 'temperature optimum', 'lock and key', 'induced fit', 'enzyme kinetics'],
    aliases: ['enzymes', 'biological catalysts', 'enzyme action', 'enzyme inhibition'],
    answer: {
      title: 'Enzymes: Biological Catalysts',
      subject: 'Biology',
      directExplanation: 'Enzymes are protein molecules that act as biological catalysts — they speed up chemical reactions in cells without being consumed in the process. Each enzyme is specific to one or a few substrates (the substance it acts upon) because of the precise shape of its active site.',
      keyPoints: [
        'Enzymes are proteins; denaturation destroys their shape and function',
        'Active site: specific 3D region where substrate binds',
        'Lock and key model: exact shape complementarity between enzyme and substrate',
        'Induced fit model: enzyme changes shape slightly when substrate binds',
        'Factors affecting enzyme activity: temperature, pH, substrate concentration, inhibitors',
      ],
      breakdown: [
        b('Effect of Temperature', 'As temperature increases up to the optimum (~37°C in humans), rate increases (more kinetic energy, more collisions). Above optimum: heat breaks hydrogen bonds → enzyme denatures → loses active site shape → rate falls sharply. Below optimum: slower reaction but enzyme intact (reversible).', 'process'),
        b('Effect of pH', 'Each enzyme has an optimal pH (e.g. pepsin in stomach: pH 2; salivary amylase: pH 7; trypsin in duodenum: pH 8). Outside optimal pH, H⁺ or OH⁻ ions break ionic and hydrogen bonds → denaturation. Most body enzymes work best at neutral pH.', 'process'),
        b('Inhibitors', 'Competitive inhibitor: similar shape to substrate, blocks active site. Increasing substrate concentration overcomes it. Non-competitive inhibitor: binds elsewhere on enzyme, changes active site shape so substrate cannot bind. Cannot be overcome by increasing substrate.', 'concept'),
        b('Enzyme Concentration and Substrate Concentration', 'Increasing either speeds up the rate initially. But: if enzyme is in excess, adding more substrate increases rate (more active sites being used). Once all active sites are occupied (saturation), adding more substrate has no effect — rate plateaus at Vmax.', 'concept'),
        b('Industrial Uses of Enzymes', 'Amylase: converts starch to sugars (food industry, brewing). Protease: breaks down proteins (meat tenderiser, biological washing powders). Lipase: digests fats (washing powders). Pectinase: clarifies fruit juices. Lactase: converts lactose to glucose + galactose (lactose-free milk).', 'fact'),
      ],
      example: 'Hydrogen peroxide (H₂O₂) is toxic to cells. The enzyme catalase (in liver) breaks it down: 2H₂O₂ → 2H₂O + O₂. If you chop liver and add H₂O₂, it fizzes vigorously (O₂ produced). Boiled liver does not fizz — the catalase is denatured.',
      summary: 'Enzymes are specific protein catalysts. Their shape determines which substrates they can bind and act upon (lock and key or induced fit). Activity is affected by temperature and pH — each enzyme has an optimum, beyond which it denatures irreversibly. Inhibitors can block the active site (competitive) or distort the enzyme (non-competitive). Enzymes are vital in digestion, metabolism, and industry.',
      relatedTopics: ['Digestion', 'Respiration', 'Photosynthesis', 'Protein Structure', 'Biotechnology'],
      confidence: 'high',
    },
  },
  {
    id: 'sci-ecology',
    subject: 'Biology',
    topic: 'Ecology',
    keywords: ['ecology', 'ecosystem', 'habitat', 'niche', 'food chain', 'food web', 'producer', 'consumer', 'decomposer', 'trophic level', 'energy flow', 'carbon cycle', 'nitrogen cycle', 'water cycle', 'population', 'community', 'biome', 'biodiversity', 'conservation', 'succession'],
    aliases: ['ecology', 'ecosystems', 'food chains', 'nutrient cycles', 'energy flow'],
    answer: {
      title: 'Ecology: Ecosystems, Food Webs, and Nutrient Cycles',
      subject: 'Biology',
      directExplanation: 'Ecology is the study of the relationships between living organisms and their environment. An ecosystem consists of all the living organisms (biotic) and non-living components (abiotic) in an area, interacting together. Energy flows through ecosystems while nutrients are recycled.',
      keyPoints: [
        'Food chain: producer → primary consumer → secondary consumer → tertiary consumer',
        'Only ~10% of energy transfers to the next trophic level (rest lost as heat/metabolism)',
        'Producers (plants, algae): make food via photosynthesis',
        'Decomposers (bacteria, fungi): break down dead organic matter, returning nutrients to soil',
        'Nutrient cycles: carbon, nitrogen, and water cycles recycle elements through the environment',
      ],
      breakdown: [
        b('Energy Flow', 'Sunlight → producers (photosynthesis) → primary consumers → secondary consumers → tertiary consumers. At each level ~90% of energy is lost to respiration, heat, movement, and excretion. This is why food chains rarely have more than 4–5 trophic levels and why herbivores are more numerous than carnivores.', 'process'),
        b('Carbon Cycle', 'Carbon enters living things via photosynthesis (CO₂ → organic carbon). Returns to atmosphere via: respiration (all organisms), decomposition, combustion (fossil fuels). Also stored in: oceans, limestone, fossil fuels. Human activities (burning fossil fuels, deforestation) increase atmospheric CO₂.', 'process'),
        b('Nitrogen Cycle', 'Nitrogen fixation: N₂ → NH₃/NO₃⁻ (by bacteria in soil/root nodules of legumes). Nitrification: NH₄⁺ → NO₂⁻ → NO₃⁻ (by nitrifying bacteria). Assimilation: plants absorb NO₃⁻, animals eat plants. Denitrification: NO₃⁻ → N₂ (by anaerobic bacteria). Ammonification: dead matter → NH₃.', 'process'),
        b('Population Ecology', 'Limiting factors: food, water, space, predators, disease → cause carrying capacity (maximum population sustainable in habitat). Populations show S-shaped (logistic) growth curve. Predator-prey relationships cause oscillating population cycles (e.g. lynx and hare).', 'concept'),
        b('Conservation and Biodiversity', 'Biodiversity = variety of species in an ecosystem. Threats: habitat destruction, overexploitation, pollution, climate change, invasive species. Conservation: in-situ (protected areas, national parks) and ex-situ (zoos, seed banks, botanical gardens).', 'fact'),
      ],
      example: 'Grassland food chain: Grass → Grasshopper → Frog → Snake → Hawk. If the frog population decreases due to disease, grasshoppers may increase (more food, less predation) and snakes may decrease (less food). This illustrates how changes in one trophic level cascade through a food web.',
      summary: 'Ecology studies organisms in their environments. Energy flows through food chains from producers to consumers, with ~90% lost at each step. Nutrients are cycled — the carbon and nitrogen cycles are most important. Population size is controlled by limiting factors. Biodiversity is under threat from human activities; conservation is essential.',
      relatedTopics: ['Cell Biology', 'Evolution', 'Photosynthesis', 'Respiration', 'Environmental Science'],
      confidence: 'high',
    },
  },
];

export interface SearchResult {
  entry: KnowledgeEntry;
  score: number;
}

const STOP_WORDS = new Set([
  'the', 'and', 'for', 'are', 'but', 'not', 'you', 'all', 'can', 'had',
  'her', 'was', 'one', 'our', 'out', 'who', 'its', 'how', 'this', 'that',
  'with', 'from', 'they', 'will', 'have', 'been', 'into', 'also', 'than',
  'then', 'some', 'what', 'when', 'where', 'which', 'these', 'those',
  'does', 'did', 'would', 'could', 'should', 'there', 'their', 'about',
  'more', 'very', 'just', 'like', 'each', 'both', 'many', 'much',
  'explain', 'describe', 'define', 'give', 'state', 'list', 'outline',
  'discuss', 'compare', 'contrast', 'briefly', 'fully', 'clearly',
  'means', 'mean', 'meaning', 'work', 'works', 'working',
  'called', 'known', 'used', 'use', 'using',
]);

const QUESTION_STRIP_PATTERNS = [
  /^(what is|what are|what was|what were)\s+/i,
  /^(how does|how do|how is|how are|how was)\s+/i,
  /^(explain|describe|define|discuss|outline|state|give me|tell me about)\s+(the\s+)?(a\s+)?(an\s+)?/i,
  /^(what do you mean by|what does .+ mean|what is meant by)\s+/i,
  /^\?+/,
  /\?+$/,
];

function extractCoreConcept(query: string): string {
  let q = query.trim();
  for (const pattern of QUESTION_STRIP_PATTERNS) {
    q = q.replace(pattern, '');
  }
  return q.trim();
}

function tokenize(text: string): string[] {
  return text.toLowerCase()
    .replace(/[^a-z0-9\s]/g, ' ')
    .split(/\s+/)
    .filter(w => w.length > 2 && !STOP_WORDS.has(w));
}

function detectSubjectFromQuery(q: string): string | null {
  const lower = q.toLowerCase();
  for (const [subject, kwds] of Object.entries(SUBJECT_KEYWORDS)) {
    for (const kw of kwds) {
      if (lower.includes(kw)) return subject;
    }
  }
  return null;
}

function detectKeyConceptsFromQuery(q: string): string[] {
  const tokens = tokenize(q);
  const core = extractCoreConcept(q);
  const coreTokens = tokenize(core);
  return [...new Set([...tokens, ...coreTokens])];
}

const SUBJECT_KEYWORDS: Record<string, string[]> = {
  'Biology': ['biology', 'biological', 'organism', 'cell', 'living', 'body', 'plant', 'animal', 'human'],
  'Chemistry': ['chemistry', 'chemical', 'reaction', 'compound', 'element', 'molecule', 'bond', 'atom'],
  'Physics': ['physics', 'physical', 'force', 'energy', 'wave', 'electric', 'magnetic', 'light', 'heat'],
  'Mathematics': ['mathematics', 'maths', 'math', 'number', 'calculate', 'equation', 'solve', 'geometry', 'algebra'],
  'Further Mathematics': ['further maths', 'further mathematics', 'calculus', 'differential', 'integral', 'vector', 'matrix'],
  'English': ['english', 'grammar', 'essay', 'writing', 'reading', 'language', 'comprehension', 'vocabulary'],
  'Geography': ['geography', 'geographical', 'climate', 'weather', 'population', 'map', 'physical geography', 'human geography'],
  'Agricultural Science': ['agriculture', 'agricultural', 'farming', 'crop', 'soil', 'livestock', 'pest'],
};

export function searchKnowledge(query: string): SearchResult[] {
  if (!query.trim()) return [];

  const q = query.toLowerCase().trim();
  const core = extractCoreConcept(query).toLowerCase();
  const tokens = detectKeyConceptsFromQuery(query);
  const results: SearchResult[] = [];

  for (const entry of KNOWLEDGE_BASE) {
    let score = 0;

    const titleLower = entry.answer.title.toLowerCase();
    const topicLower = entry.topic.toLowerCase();
    const subjectLower = entry.subject.toLowerCase();
    const allKeywords = [...entry.keywords, ...entry.aliases];

    // Exact matches on full query
    if (titleLower === q || topicLower === q) score += 100;
    if (titleLower === core || topicLower === core) score += 95;
    if (titleLower.includes(q)) score += 80;
    if (topicLower.includes(q)) score += 70;

    // Exact matches on extracted core concept
    if (core && titleLower.includes(core)) score += 75;
    if (core && topicLower.includes(core)) score += 65;

    for (const alias of entry.aliases) {
      const al = alias.toLowerCase();
      if (q.includes(al) || al.includes(q)) score += 60;
      if (core && (core.includes(al) || al.includes(core))) score += 55;
    }

    for (const kw of allKeywords) {
      const kwl = kw.toLowerCase();
      if (q.includes(kwl)) score += 40;
      if (kwl.includes(q)) score += 30;
      if (core && core.includes(kwl)) score += 38;
      if (core && kwl.includes(core)) score += 28;
    }

    // Token-level matching (each meaningful word in the query)
    let tokenHits = 0;
    for (const token of tokens) {
      for (const kw of allKeywords) {
        const kwl = kw.toLowerCase();
        if (kwl === token) { score += 20; tokenHits++; }
        else if (kwl.includes(token) && token.length > 3) { score += 12; tokenHits++; }
        else if (token.includes(kwl) && kwl.length > 3) { score += 10; tokenHits++; }
      }
      if (titleLower.includes(token) && token.length > 3) score += 15;
      if (topicLower.includes(token) && token.length > 3) score += 12;
      if (subjectLower.includes(token)) score += 5;
    }

    // Bonus for multiple token hits (the query is clearly about this topic)
    if (tokenHits >= 2) score += tokenHits * 8;

    // Subject-level boost
    for (const [subj, kwds] of Object.entries(SUBJECT_KEYWORDS)) {
      if (entry.subject.toLowerCase().includes(subj.toLowerCase())) {
        for (const kw of kwds) {
          if (q.includes(kw) || core.includes(kw)) score += 8;
        }
      }
    }

    if (score > 0) {
      results.push({ entry, score });
    }
  }

  results.sort((a, b) => b.score - a.score);
  return results.slice(0, 5);
}

export function buildCompositeAnswer(results: SearchResult[], query: string): ResearchAnswer | null {
  if (results.length === 0) return null;

  const primary = results[0];

  // Strong match — return the best entry directly
  if (primary.score >= 20) {
    return {
      ...primary.entry.answer,
      confidence: primary.score >= 60 ? 'high' : primary.score >= 35 ? 'medium' : 'partial',
    };
  }

  // Weak but non-zero match — build composite
  if (results.length >= 2 && primary.score >= 8) {
    const subjects = [...new Set(results.slice(0, 3).map(r => r.entry.subject))];
    const combined = results.slice(0, 3);

    const extraPoints: string[] = [];
    const extraBreakdown: BreakdownSection[] = [];

    for (const r of combined.slice(1)) {
      extraPoints.push(...r.entry.answer.keyPoints.slice(0, 2));
      extraBreakdown.push(...r.entry.answer.breakdown.slice(0, 1));
    }

    const cap = (s: string) => s.charAt(0).toUpperCase() + s.slice(1);
    const core = extractCoreConcept(query);

    return {
      title: `${cap(core || query)}`,
      subject: subjects.join(' / '),
      directExplanation: primary.entry.answer.directExplanation + (combined.length > 1 ? ` This topic also connects to ${combined.slice(1).map(r => r.entry.topic).join(' and ')}.` : ''),
      keyPoints: [...primary.entry.answer.keyPoints.slice(0, 4), ...extraPoints.slice(0, 3)],
      breakdown: [...primary.entry.answer.breakdown.slice(0, 3), ...extraBreakdown.slice(0, 2)],
      example: primary.entry.answer.example,
      summary: primary.entry.answer.summary,
      relatedTopics: [...new Set([...primary.entry.answer.relatedTopics, ...combined.slice(1).flatMap(r => r.entry.answer.relatedTopics.slice(0, 2))])].slice(0, 8),
      confidence: 'partial',
    };
  }

  // Single weak result — still return it rather than nothing
  if (primary.score >= 8) {
    return {
      ...primary.entry.answer,
      confidence: 'partial',
    };
  }

  return null;
}

export function getFallbackAnswer(query: string): ResearchAnswer {
  const core = extractCoreConcept(query);
  const cap = (s: string) => s.charAt(0).toUpperCase() + s.slice(1);
  const displayTerm = cap(core || query);
  const detectedSubject = detectSubjectFromQuery(query);
  const concepts = detectKeyConceptsFromQuery(query).slice(0, 5);

  const subjectHint = detectedSubject
    ? `This question appears to relate to **${detectedSubject}**. `
    : '';

  const conceptHint = concepts.length > 0
    ? `Key terms identified: ${concepts.map(c => `"${c}"`).join(', ')}.`
    : '';

  const subjectSuggestions: Record<string, string[]> = {
    'Biology': ['Cell Structure', 'Photosynthesis', 'Respiration', 'Genetics', 'Osmosis', 'Evolution', 'Ecology'],
    'Chemistry': ['Chemical Bonding', 'Acids and Bases', 'Redox Reactions', 'Organic Chemistry', 'Electrolysis'],
    'Physics': ['Newton\'s Laws', 'Waves and Light', 'Electricity', 'Magnetism', 'Thermodynamics'],
    'Mathematics': ['Algebra', 'Trigonometry', 'Statistics', 'Calculus', 'Coordinate Geometry'],
    'Further Mathematics': ['Differentiation', 'Integration', 'Vectors', 'Matrices', 'Complex Numbers'],
    'English Language': ['Essay Writing', 'Comprehension', 'Grammar', 'Summary Writing', 'Vocabulary'],
    'Geography': ['Climate Change', 'Population', 'Rivers', 'Agriculture', 'Map Reading'],
    'Agricultural Science': ['Soil Science', 'Crop Production', 'Animal Husbandry', 'Farm Management'],
  };

  const relatedForSubject = detectedSubject && subjectSuggestions[detectedSubject]
    ? subjectSuggestions[detectedSubject]
    : ['Biology', 'Chemistry', 'Physics', 'Mathematics', 'English', 'Geography'];

  return {
    title: displayTerm,
    subject: detectedSubject || 'General',
    directExplanation: `${subjectHint}The knowledge base doesn't have a dedicated entry for "${core || query}" yet. ${conceptHint} Below are guidance and related topics to help you find what you need.`,
    keyPoints: [
      `Search for "${core || query}" using specific key terms from your textbook`,
      detectedSubject
        ? `Visit the ${detectedSubject} subject page for full notes and quizzes on this topic`
        : 'Identify the subject area first — Biology, Chemistry, Physics, Maths, English, Geography, or Agric',
      'Try shorter, more specific search terms (e.g. "osmosis" instead of "how water moves in plants")',
      'Check past WASSCE papers — this concept may appear in exam questions with explanations',
      'Use the Quiz section for that subject to test related knowledge',
    ],
    breakdown: [
      b('How to Search Better', `Try single-concept searches: instead of "${query}", search for the core term like "${core || concepts[0] || 'the key concept'}". The knowledge base matches on specific WASSCE topic names.`, 'concept'),
      b('Subject Coverage', 'This knowledge base covers: Biology, Chemistry, Physics, Mathematics, Further Mathematics, English Language, Geography, and Agricultural Science — all at WASSCE level.', 'fact'),
      b('Topic Notes', 'Each subject page contains detailed notes for every topic in the WASSCE syllabus. Navigate to Subjects → select your subject → choose the relevant topic for in-depth coverage.', 'concept'),
      b('Practice Questions', 'Use the Quiz and Exam sections to find questions on this topic. WASSCE past questions often include model answers that explain the concept clearly.', 'process'),
    ],
    example: null,
    summary: `"${displayTerm}" will be covered in your ${detectedSubject || 'WASSCE'} notes. Go to the relevant subject page for complete topic notes, worked examples, and quiz questions. You can also try rephrasing your search with a more specific term from your syllabus.`,
    relatedTopics: relatedForSubject,
    confidence: 'partial',
  };
}
