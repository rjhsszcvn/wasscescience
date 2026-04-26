
/*
  # Add comprehensive Biology notes for topics 1-5
  
  Topics covered:
  1. Cell Biology
  2. Genetics and Heredity
  3. Ecology and Environment
  4. Nutrition and Digestion
  5. Respiration
  
  Each topic gets 5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- =====================
  -- TOPIC 1: CELL BIOLOGY
  -- =====================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Cell Biology' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: The Cell — Unit of Life', $CONTENT$
## The Cell: Building Block of All Living Things

The **cell** is the basic structural and functional unit of all living organisms. Robert Hooke first observed cells in 1665 when he looked at cork under a microscope. Anton van Leeuwenhoek later observed living cells.

### Cell Theory (Three Principles)
1. All living organisms are made of one or more cells
2. The cell is the basic unit of life
3. All cells come from pre-existing cells (omnis cellula e cellula — Rudolf Virchow, 1855)

### Two Fundamental Cell Types

**Prokaryotic Cells** (Pro = before, karyon = nucleus)
- No membrane-bound nucleus
- No membrane-bound organelles
- DNA is circular, found in cytoplasm (nucleoid region)
- Generally smaller (1-10 μm)
- Examples: Bacteria, Archaea, Cyanobacteria (blue-green algae)
- Have cell wall (made of peptidoglycan in bacteria)

**Eukaryotic Cells** (Eu = true, karyon = nucleus)
- Has a membrane-bound nucleus containing DNA
- Has membrane-bound organelles
- DNA is linear, found in nucleus
- Generally larger (10-100 μm)
- Examples: Animal cells, Plant cells, Fungi cells, Protists

### Animal vs Plant Cells
| Feature | Animal Cell | Plant Cell |
|---------|------------|------------|
| Cell wall | Absent | Present (cellulose) |
| Chloroplast | Absent | Present |
| Large central vacuole | Absent | Present |
| Centrioles | Present | Absent (in most) |
| Lysosomes | Common | Rare |
| Shape | Irregular | Regular/fixed |

### Size of Cells
Cells are microscopic. Units used:
- **Micrometre (μm):** 1 μm = 0.001 mm = 10⁻⁶ m
- **Nanometre (nm):** 1 nm = 0.001 μm = 10⁻⁹ m
- Most cells: 10-100 μm in diameter
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Cell Organelles: Definitions and Functions', $CONTENT$
## Cell Organelles and Their Functions

### Nucleus
- **Structure:** Enclosed by double membrane (nuclear envelope) with nuclear pores
- **Function:** Controls all cell activities; contains DNA (genetic material); site of DNA replication and RNA transcription
- **Parts:** Nucleolus (makes ribosomes), chromatin (DNA + protein), nuclear envelope

### Mitochondria (singular: Mitochondrion)
- **Structure:** Double membrane; inner membrane folded into cristae; matrix inside
- **Function:** Site of aerobic respiration — produces ATP (energy)
- Known as the **"powerhouse of the cell"**
- Has its own DNA (evidence for endosymbiotic theory)

### Chloroplast
- **Found in:** Plant cells only
- **Structure:** Double membrane; thylakoids (stacked into grana); stroma
- **Function:** Site of photosynthesis — converts light energy to chemical energy (glucose)
- Contains chlorophyll (green pigment)

### Ribosome
- **Structure:** Small (70S in prokaryotes, 80S in eukaryotes); made of rRNA + protein
- **Function:** Site of protein synthesis (translation)
- Found free in cytoplasm or attached to rough ER

### Endoplasmic Reticulum (ER)
- **Rough ER:** Has ribosomes on surface; processes and transports proteins
- **Smooth ER:** No ribosomes; synthesises lipids and steroids; detoxifies drugs/alcohol

### Golgi Apparatus (Golgi Body)
- **Structure:** Stack of flattened membrane sacs (cisternae)
- **Function:** Processes, packages, and ships proteins and lipids to their destinations
- Makes lysosomes; involved in secretion

### Lysosome
- **Found in:** Mainly animal cells
- **Function:** Contains digestive enzymes; breaks down worn-out organelles, foreign particles, cellular debris
- "Suicide bags" — can digest the whole cell (autolysis)

### Vacuole
- **Large central vacuole (plants):** Maintains turgor pressure; stores water, pigments, waste products
- **Small vacuoles (animals):** Temporary storage; contractile vacuoles in protists for osmoregulation

### Cell Wall
- **Found in:** Plant cells, fungi, bacteria
- Plant cell wall: Made of cellulose microfibrils
- **Function:** Gives shape, support, and protection; prevents over-expansion

### Cell Membrane (Plasma Membrane)
- **Structure:** Phospholipid bilayer with embedded proteins — the Fluid Mosaic Model (Singer & Nicholson, 1972)
- **Function:** Controls what enters and leaves the cell (selectively permeable)
- Proteins serve as channels, carriers, receptors, enzymes

### Centriole
- **Found in:** Animal cells (and lower plant cells)
- **Function:** Forms spindle fibres during cell division; organises cell division

### Cytoplasm
- Gel-like fluid (cytosol) that fills the cell
- Medium for chemical reactions
- Contains organelles
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Transport Across Cell Membranes', $CONTENT$
## How Substances Move In and Out of Cells

Cell membranes are selectively permeable — they allow some substances to pass through but not others. Movement occurs by several mechanisms:

### 1. Diffusion (Passive Transport)
**Definition:** Movement of molecules from a region of HIGH concentration to LOW concentration, down a concentration gradient.

**Key features:**
- Requires NO energy (ATP)
- Continues until equilibrium is reached
- Rate affected by: temperature, concentration gradient, surface area, distance
- Examples: O₂ into cells, CO₂ out of cells, glucose in gut

**Fick's Law of Diffusion:**
Rate of diffusion ∝ (Surface area × Concentration difference) / Thickness

### 2. Osmosis (Special Diffusion)
**Definition:** Movement of water molecules from a region of HIGH water potential to LOW water potential, through a selectively permeable membrane.

**Key terms:**
- **Hypotonic solution:** Less solute than cell → water moves INTO cell → cell swells (lysis in animals; turgor in plants)
- **Hypertonic solution:** More solute than cell → water moves OUT of cell → cell shrinks (crenation in animals; plasmolysis in plants)
- **Isotonic solution:** Same solute concentration → no net movement

**In animals:** Red blood cells in distilled water → haemolysis (burst)
**In plants:** In concentrated salt solution → plasmolysis (cell membrane pulls away from cell wall)

### 3. Active Transport
**Definition:** Movement of molecules AGAINST a concentration gradient, from LOW to HIGH concentration.
- **Requires energy (ATP)**
- Requires carrier proteins
- Examples: Absorption of glucose in small intestine, Na+/K+ pump in nerve cells, mineral ions into plant root hairs

### 4. Endocytosis and Exocytosis
- **Endocytosis:** Cell engulfs substances by folding membrane inward (phagocytosis — solids; pinocytosis — liquids)
- **Exocytosis:** Cell releases substances by fusing vesicles with cell membrane (secretion of hormones, digestive enzymes)

### Worked Example: Osmosis in Plant Cells
A plant cell is placed in a solution more concentrated than its cell contents.

What happens?
1. Water potential is LOWER outside (hypertonic solution)
2. Water moves out of cell by osmosis (from higher to lower water potential)
3. Vacuole shrinks, cell membrane pulls away from cell wall
4. This is called **PLASMOLYSIS**
5. The cell becomes FLACCID

If the same cell is placed in distilled water:
1. Water potential is HIGHER outside (hypotonic)
2. Water moves INTO cell
3. Vacuole swells, presses outward
4. Cell wall prevents bursting
5. Cell becomes TURGID (this is TURGOR PRESSURE)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Cell Division: Mitosis and Meiosis', $CONTENT$
## Cell Division

### Mitosis
**Definition:** Cell division that produces two daughter cells genetically IDENTICAL to the parent cell, each with the SAME number of chromosomes.

**Purpose:** Growth, repair, asexual reproduction

**Phases of Mitosis:**
1. **Prophase:** Chromosomes condense and become visible; centrioles move to poles; spindle fibres form; nuclear envelope breaks down
2. **Metaphase:** Chromosomes align at the equator (middle) of the cell; spindle fibres attach to centromeres
3. **Anaphase:** Sister chromatids are pulled to opposite poles; centromeres split
4. **Telophase:** Nuclear envelopes reform around chromosomes at each pole; chromosomes uncoil; spindle fibres break down
5. **Cytokinesis:** Cytoplasm divides; two identical daughter cells formed

**Result:** 2 daughter cells, each diploid (2n) — same as parent

### Meiosis
**Definition:** Cell division that produces four daughter cells each with HALF the number of chromosomes of the parent cell.

**Purpose:** Produces gametes (sex cells) — sperm and eggs

**Key feature:** Two rounds of division — Meiosis I and Meiosis II

**Meiosis I** (Reduction division):
- Homologous chromosomes pair up (bivalents form)
- **Crossing over** occurs in Prophase I — chromatids exchange segments → genetic variation
- Homologous chromosomes separate
- Result: 2 cells, each haploid (n)

**Meiosis II** (Similar to mitosis):
- Sister chromatids separate
- Result: 4 haploid cells (n)

**Comparison: Mitosis vs Meiosis**
| Feature | Mitosis | Meiosis |
|---------|---------|---------|
| Daughter cells | 2 | 4 |
| Chromosome number | Same as parent (diploid) | Half parent (haploid) |
| Genetic variation | None | Yes (crossing over) |
| Purpose | Growth, repair | Sexual reproduction |
| Crossing over | No | Yes |

### Worked Example
A cell with 46 chromosomes undergoes:
(a) Mitosis → produces 2 cells each with **46 chromosomes**
(b) Meiosis → produces 4 cells each with **23 chromosomes**
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Cell Biology', $CONTENT$
## WASSCE Examination Questions: Cell Biology

### Question 1 (WASSCE 2022)
Which of the following is NOT found in a plant cell?
(A) Cell wall  (B) Chloroplast  (C) Centriole  (D) Large vacuole

**Answer: (C) Centriole**
Explanation: Centrioles are found in animal cells and help organise cell division. Plant cells lack centrioles but still divide using other mechanisms.

---

### Question 2 (WASSCE 2021)
State THREE differences between prokaryotic and eukaryotic cells.

**Answer:**
1. Prokaryotes have NO membrane-bound nucleus; eukaryotes HAVE a membrane-bound nucleus
2. Prokaryotes have NO membrane-bound organelles; eukaryotes have membrane-bound organelles (mitochondria, ER, etc.)
3. Prokaryotic DNA is circular and found in cytoplasm; eukaryotic DNA is linear and found in nucleus

---

### Question 3 (WASSCE 2020)
A red blood cell is placed in a very dilute salt solution. Describe what happens and explain why.

**Answer:**
The red blood cell will **swell and may burst (haemolysis)**.

Explanation: The dilute salt solution has higher water potential than the cell contents. Water moves into the cell by osmosis (from region of high water potential to low water potential). Since animal cells have no cell wall, there is nothing to prevent over-swelling, so the cell bursts.

---

### Question 4 (WASSCE 2019)
State the function of each of the following cell organelles:
(a) Mitochondria  (b) Ribosome  (c) Nucleus  (d) Chloroplast

**Answer:**
(a) **Mitochondria:** Site of aerobic respiration; produces ATP (energy for cell activities)
(b) **Ribosome:** Site of protein synthesis (translation of mRNA to protein)
(c) **Nucleus:** Controls cell activities; contains genetic material (DNA); directs protein synthesis
(d) **Chloroplast:** Site of photosynthesis; traps light energy and converts it to chemical energy (glucose)

---

### Question 5 (WASSCE 2018)
Explain the difference between osmosis and diffusion.

**Answer:**
**Diffusion:** Movement of any molecules (solute or solvent) from high to low concentration; no membrane needed; involves any substance.

**Osmosis:** Movement of WATER MOLECULES ONLY from high water potential (dilute solution) to low water potential (concentrated solution) through a selectively permeable membrane.

Key difference: Osmosis is a special case of diffusion specifically for water, and requires a selectively permeable membrane.

---

### Practice Questions
1. Name the organelle responsible for each: (a) Packaging proteins for export (b) Producing energy (c) Synthesising lipids (d) Digesting worn-out organelles
2. Explain why plant cells do not burst when placed in distilled water but animal cells do.
3. Draw and label a typical animal cell.
4. What is the importance of mitosis in living organisms?
5. State two features of the cell membrane that make it suitable for its function.

**Answers (Summary):**
1. (a) Golgi apparatus (b) Mitochondria (c) Smooth ER (d) Lysosomes
2. Plant cells have a cell wall that prevents over-expansion; animal cells lack cell wall
3. (Label: nucleus, mitochondria, ribosomes, cell membrane, cytoplasm, centrioles, lysosomes)
4. Growth of organism; repair of damaged tissues; asexual reproduction
5. Phospholipid bilayer (hydrophobic core blocks most water-soluble substances); protein channels (allow selective passage of specific molecules)
$CONTENT$, 'practice', 5);

  -- ==========================
  -- TOPIC 2: GENETICS & HEREDITY
  -- ==========================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Genetics and Heredity' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Genetics and Heredity', $CONTENT$
## Genetics: The Science of Inheritance

**Genetics** is the branch of biology that studies how traits (characteristics) are passed from parents to offspring through generations.

### Why Genetics Matters
- Explains why children resemble their parents
- Explains why siblings differ from each other
- Used in medicine (genetic diseases), agriculture (breeding programs), and forensics (DNA fingerprinting)

### Key Scientists
- **Gregor Mendel (1822-1884):** Father of genetics; studied pea plants; discovered laws of inheritance
- **Watson and Crick (1953):** Discovered double helix structure of DNA
- **Rosalind Franklin:** X-ray crystallography data crucial for DNA discovery

### Chromosomes, Genes, and DNA
**DNA (Deoxyribonucleic Acid):** The molecule that carries genetic information
**Chromosome:** Condensed structure made of DNA + protein (histone)
- Humans have 46 chromosomes (23 pairs) in most body cells
- 23 chromosomes in gametes (haploid)

**Gene:** A segment of DNA that codes for a specific protein (and thus a trait)
- Located at a specific position on a chromosome (called a locus)
- Humans have approximately 20,000-25,000 genes

**Allele:** Alternative forms of a gene (e.g., tall vs short allele for height)

### Human Chromosomes
- 22 pairs of **autosomes** (non-sex chromosomes)
- 1 pair of **sex chromosomes:** XX (female) or XY (male)
- Females: 44 autosomes + XX = 46 chromosomes
- Males: 44 autosomes + XY = 46 chromosomes
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Key Genetics Definitions', $CONTENT$
## Essential Genetics Terms

**Genotype:** The genetic makeup of an organism; the alleles it carries (e.g., TT, Tt, tt)

**Phenotype:** The physical appearance/observable characteristics of an organism; determined by genotype AND environment (e.g., tall, short, blue eyes)

**Dominant allele:** An allele that expresses its trait whenever it is present (even in one copy); written in CAPITAL letters (e.g., T for tall)

**Recessive allele:** An allele whose trait is only expressed when TWO copies are present (homozygous recessive); written in lowercase (e.g., t for short)

**Homozygous:** Having two identical alleles for a gene (e.g., TT = homozygous dominant; tt = homozygous recessive)

**Heterozygous:** Having two different alleles for a gene (e.g., Tt); also called a carrier or hybrid

**Diploid (2n):** Cell with two sets of chromosomes (body cells)

**Haploid (n):** Cell with one set of chromosomes (gametes)

**Locus (plural: loci):** The specific position of a gene on a chromosome

**Gamete:** Sex cell (sperm or egg); haploid; formed by meiosis

**Zygote:** Fertilised egg; formed by fusion of sperm and egg; diploid

**Monohybrid cross:** Crossing organisms differing in ONE trait

**Dihybrid cross:** Crossing organisms differing in TWO traits

### Mendel's Laws

**Law 1: Law of Segregation**
Alleles for a trait separate during gamete formation. Each gamete receives only ONE allele from each gene pair.

**Law 2: Law of Independent Assortment**
Alleles for different traits are inherited independently of each other (they assort independently during gamete formation).
[Note: This applies to genes on different chromosomes; linked genes do NOT assort independently]

### Codominance
Both alleles are fully expressed in the phenotype. Example: ABO blood groups — I^A and I^B are both expressed in type AB blood.

### Incomplete Dominance
The heterozygote shows an intermediate phenotype. Example: Red flower (RR) × White flower (WW) → Pink flower (RW)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Monohybrid and Dihybrid Crosses', $CONTENT$
## Genetic Crosses: Step-by-Step Method

### How to Solve Genetics Problems (Monohybrid)

**Step 1:** Define alleles. Example: T = tall (dominant); t = short (recessive)
**Step 2:** Write the genotypes of parents
**Step 3:** Determine the gametes each parent can produce
**Step 4:** Complete the Punnett square
**Step 5:** State the genotype ratio and phenotype ratio

### Example 1: Monohybrid Cross
Tall (Tt) × Short (tt) — What are the expected offspring?

Parents: Tt × tt
Gametes from Tt: T or t
Gametes from tt: t only

Punnett square:
```
     T    t
t  | Tt | tt |
t  | Tt | tt |
```
Genotype ratio: 2 Tt : 2 tt = 1 Tt : 1 tt
Phenotype ratio: **2 tall : 2 short (1:1)**

### Example 2: Classic Monohybrid
Tall (TT) × Short (tt)
F1 offspring: All Tt (all tall)
F1 × F1: Tt × Tt

```
     T    t
T  | TT | Tt |
t  | Tt | tt |
```
F2 genotype ratio: 1 TT : 2 Tt : 1 tt
F2 phenotype ratio: **3 tall : 1 short**

This 3:1 ratio is the classic Mendelian result for F2 generation.

### Example 3: ABO Blood Groups (Multiple Alleles)
There are THREE alleles: I^A, I^B, i
- I^A and I^B are both dominant over i
- I^A and I^B are codominant with each other

Possible blood types:
- Type A: I^A I^A or I^A i
- Type B: I^B I^B or I^B i
- Type AB: I^A I^B (both expressed — codominance)
- Type O: ii

Cross: Father Type A (I^A i) × Mother Type B (I^B i)
```
        I^A    i
I^B  | I^A I^B | I^B i |
 i   | I^A i   | ii    |
```
Offspring: 1 AB : 1 B : 1 A : 1 O = **25% chance of each blood type**

### Example 4: Sex Linkage (X-linked traits)
Colour blindness is X-linked recessive. Let X^N = normal vision, X^n = colour blind.

Cross: Carrier female (X^N X^n) × Normal male (X^N Y)
```
       X^N    X^n
X^N | X^N X^N | X^N X^n |
 Y  | X^N Y   | X^n Y   |
```
- X^N X^N: Normal female (25%)
- X^N X^n: Carrier female (25%)
- X^N Y: Normal male (25%)
- X^n Y: Colour blind male (25%)

**Important:** Males only need ONE X^n allele to be colour blind; females need TWO.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Mutations and Genetic Diseases', $CONTENT$
## Mutations: Changes in DNA

**Mutation:** A change in the DNA sequence (base sequence) of a gene or chromosome.

### Types of Gene Mutations (Point Mutations)
1. **Substitution:** One base is replaced by another
   - Sickle cell anaemia: ONE base change in haemoglobin gene (T→A) causes abnormal haemoglobin
2. **Insertion:** One or more bases are added → frameshifts the reading of all subsequent codons
3. **Deletion:** One or more bases are removed → also causes frameshift

### Chromosomal Mutations
1. **Deletion:** Segment of chromosome is lost
2. **Duplication:** Segment is copied twice
3. **Inversion:** Segment is reversed
4. **Translocation:** Segment moves to another chromosome
5. **Non-disjunction:** Chromosomes fail to separate properly during meiosis

### Non-disjunction and Down Syndrome
During meiosis, chromosome 21 fails to separate.
Result: Gamete with 2 copies of chromosome 21
After fertilisation: zygote has 3 copies of chromosome 21 = **Trisomy 21**

**Down Syndrome (Trisomy 21):**
- 47 chromosomes (instead of 46)
- Characteristics: intellectual disability, heart defects, characteristic facial features
- Risk increases with mother's age

### Sickle Cell Anaemia
- **Gene mutation:** Single nucleotide substitution
- **Effect:** Abnormal haemoglobin (HbS instead of HbA) — causes red blood cells to become sickle-shaped
- **Inheritance:** Autosomal recessive
- Alleles: Hb^A (normal), Hb^S (sickle)
- HbA HbA = normal; HbA HbS = sickle cell trait (carrier); HbS HbS = sickle cell disease
- **Sickle cell trait:** Some protection against malaria (heterozygous advantage)

### Mutagenic Agents (Mutagens)
- UV radiation (from sun) → skin cancer
- X-rays and gamma rays → leukaemia
- Certain chemicals (benzene, aflatoxin, tobacco smoke) → various cancers
- Viruses (HPV → cervical cancer)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Genetics', $CONTENT$
## WASSCE Examination Questions: Genetics

### Question 1 (WASSCE 2022)
In pea plants, round seed (R) is dominant over wrinkled seed (r). Two heterozygous plants are crossed.
(a) Write the genotypes of the parents.
(b) Draw a Punnett square to show the cross.
(c) State the expected phenotype ratio in the offspring.

**Answer:**
(a) Parents: Rr × Rr

(b) Punnett square:
```
     R    r
R  | RR | Rr |
r  | Rr | rr |
```

(c) Offspring: 1 RR : 2 Rr : 1 rr
Phenotype: **3 Round : 1 Wrinkled (3:1 ratio)**

---

### Question 2 (WASSCE 2021)
A woman with blood group A (heterozygous) marries a man with blood group B (heterozygous). What blood groups are possible among their children?

**Answer:**
Woman: I^A i  ×  Man: I^B i
```
       I^A    i
I^B | I^A I^B | I^B i |
 i  | I^A i   | ii    |
```
Possible blood groups: **A, B, AB, and O** — all four blood groups are possible, each with 25% probability.

---

### Question 3 (WASSCE 2020)
State THREE differences between mitosis and meiosis.

**Answer:**
1. Mitosis produces 2 cells; meiosis produces 4 cells
2. Mitosis produces diploid (2n) cells; meiosis produces haploid (n) cells
3. Mitosis produces genetically identical cells; meiosis produces genetically different cells (due to crossing over)

---

### Question 4 (WASSCE 2019)
Haemophilia is a sex-linked recessive condition. A carrier woman marries a normal man. Draw a Punnett square and determine the probability of:
(a) A haemophiliac son
(b) A carrier daughter

**Answer:**
Let X^H = normal, X^h = haemophilia
Woman (carrier): X^H X^h  ×  Man (normal): X^H Y

```
        X^H    X^h
X^H  | X^H X^H | X^H X^h |
 Y   | X^H Y   | X^h Y   |
```

(a) Haemophiliac son (X^h Y): **1/4 = 25% probability**
(b) Carrier daughter (X^H X^h): **1/4 = 25% probability** (but 1/2 of daughters = 50% of daughters)

---

### Practice Questions
1. Define: genotype, phenotype, dominant, recessive, heterozygous.
2. In tomatoes, red fruit (R) is dominant over yellow (r). Cross Rr × rr. State the phenotype ratio.
3. What is non-disjunction? What condition results from non-disjunction of chromosome 21?
4. Explain why males are more likely to be colour blind than females.
5. State two effects of mutations on organisms.

**Answers:**
1. (See definitions section above)
2. Rr × rr → 1Rr : 1rr → **1 Red : 1 Yellow (1:1)**
3. Failure of chromosomes to separate during meiosis; Down syndrome (Trisomy 21)
4. Males are XY — they only have one X chromosome, so ONE X^n allele expresses the trait. Females (XX) need TWO copies of X^n
5. May cause new traits (some beneficial in evolution); may cause genetic diseases/cancer
$CONTENT$, 'practice', 5);

END $$;
