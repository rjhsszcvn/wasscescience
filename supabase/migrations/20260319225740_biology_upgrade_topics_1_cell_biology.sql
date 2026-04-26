/*
  # Biology Topic 1: Cell Biology — Deep Notes Upgrade

  Replaces all 5 sections for Cell Biology with comprehensive, high-quality WASSCE-targeted notes
  including ASCII diagrams, detailed explanations, comparisons, and past question practice.
*/

UPDATE topic_sections SET content = '## The Cell — Foundation of All Life

The cell is the basic structural and functional unit of all living organisms. This principle, known as the **Cell Theory**, was established by Schleiden (1838), Schwann (1839), and Virchow (1855).

### Cell Theory States:
1. All living things are made of one or more cells
2. The cell is the basic unit of life
3. All cells arise from pre-existing cells

---

### Types of Cells

| Feature | Prokaryotic Cell | Eukaryotic Cell |
|---|---|---|
| Nucleus | Absent (nucleoid region) | True membrane-bound nucleus |
| Size | 1–10 µm | 10–100 µm |
| Organelles | Very few; no membrane-bound | Many membrane-bound organelles |
| DNA | Circular, in cytoplasm | Linear, in nucleus |
| Examples | Bacteria, Cyanobacteria | Plants, Animals, Fungi |

---

### Plant vs Animal Cell Comparison

```
ANIMAL CELL                    PLANT CELL
┌─────────────────┐            ┌══════════════════╗
│  Cell membrane  │            ║  Cell wall       ║
│  ┌───────────┐  │            ║  ┌─────────────┐ ║
│  │  Nucleus  │  │            ║  │   Nucleus   │ ║
│  │  ┌─────┐  │  │            ║  │   ┌─────┐   │ ║
│  │  │Nucl.│  │  │            ║  │   │Nucl.│   │ ║
│  │  └─────┘  │  │            ║  │   └─────┘   │ ║
│  └───────────┘  │            ║  └─────────────┘ ║
│  Mitochondria   │            ║  Chloroplasts     ║
│  Ribosomes      │            ║  Large vacuole    ║
│  Golgi body     │            ║  Mitochondria     ║
│  Lysosomes      │            ║  Ribosomes        ║
│  Centrioles     │            ║  No centrioles    ║
└─────────────────┘            ╚══════════════════╝
```

**Key differences:**
- Plant cells have: **cell wall** (cellulose), **chloroplasts**, **large central vacuole**, **no centrioles**
- Animal cells have: **centrioles**, **lysosomes**, **no cell wall**, **small/no vacuoles**

---

### Structure of the Cell Membrane (Fluid Mosaic Model)

```
Outside cell
  ↑  ↑  ↑  Carbohydrate chains (glycoproteins)
──┬──┬──┬────────────────────────────────
  ●  ●  ●  ← Phospholipid heads (hydrophilic)
  |  |  |
  |  |  |  ← Phospholipid tails (hydrophobic)
  |  |  |
  ●  ●  ●  ← Phospholipid heads
──┴──┴──┴──[  Protein  ]──[Channel protein]──
Inside cell
```

The membrane is **selectively permeable** — controls what enters and leaves the cell.' WHERE id = 'b3bdb46d-b69a-4a26-a54f-11901b6b0f3e';

UPDATE topic_sections SET content = '## Cell Organelles — Structure and Function

### The Nucleus
- **Structure:** Surrounded by a double nuclear membrane with pores; contains chromatin (DNA + protein)
- **Function:** Controls all cell activities; stores genetic information; directs protein synthesis
- **Nucleolus:** Found inside nucleus; produces ribosomal RNA (rRNA)

### Mitochondria (singular: mitochondrion)
```
Outer membrane ──→ ┌─────────────────────┐
                   │  ╔═══╗  ╔═══╗       │
Inner membrane ──→ │  ║   ║  ║   ║       │  ← cristae (folds)
(cristae)          │  ╚═══╝  ╚═══╝       │
Matrix ────────→   │     fluid matrix     │
                   └─────────────────────┘
```
- **Function:** Site of aerobic respiration; produces ATP (energy)
- Called the **"powerhouse of the cell"**
- Has its own DNA and ribosomes

### Chloroplasts (Plant cells only)
```
                   ┌─────────────────────┐
Outer membrane ──→ │  ┌───┐ ┌───┐ ┌───┐ │ ← grana (stacks of thylakoids)
Inner membrane ──→ │  └───┘ └───┘ └───┘ │
Stroma ────────→   │    fluid stroma      │
                   └─────────────────────┘
```
- **Function:** Site of photosynthesis; captures light energy to make glucose
- Contains **chlorophyll** (green pigment)

### Endoplasmic Reticulum (ER)
| Type | Feature | Function |
|---|---|---|
| Rough ER | Has ribosomes on surface | Protein synthesis and transport |
| Smooth ER | No ribosomes | Lipid synthesis; detoxification |

### Golgi Apparatus (Golgi Body)
- Stack of flattened membrane sacs
- **Function:** Modifies, packages, and exports proteins (like a "post office")
- Produces lysosomes and vesicles

### Ribosomes
- Tiny, found free in cytoplasm or on rough ER
- Made of rRNA and protein
- **Function:** Site of protein synthesis (translation)

### Lysosomes
- Contain digestive enzymes
- **Function:** Break down worn-out organelles and foreign materials; involved in apoptosis (cell death)

### Vacuoles
- Animal cells: small contractile vacuoles
- Plant cells: large central vacuole filled with cell sap
- **Function:** Storage; maintains turgor pressure in plants

### Centrioles (Animal cells only)
- Paired cylindrical structures near nucleus
- **Function:** Form spindle fibres during cell division

### Cell Wall (Plant, Fungi, Bacteria)
- Made of **cellulose** (plants), chitin (fungi), peptidoglycan (bacteria)
- **Function:** Provides structural support and shape; prevents over-expansion

### Summary Table
| Organelle | Found In | Main Function |
|---|---|---|
| Nucleus | Both | Genetic control |
| Mitochondria | Both | ATP production |
| Chloroplast | Plants only | Photosynthesis |
| Ribosome | Both | Protein synthesis |
| Golgi body | Both | Protein packaging |
| Lysosome | Animals mainly | Intracellular digestion |
| Centriole | Animals only | Cell division |
| Cell wall | Plants/Fungi/Bacteria | Support |
| Vacuole | Both (large in plants) | Storage/turgor |' WHERE id = 'a7763c87-436f-4610-b5c7-3bf3c276f4b8';

UPDATE topic_sections SET content = '## Transport Across Cell Membranes

The cell membrane controls movement of substances into and out of the cell.

---

### 1. Diffusion
**Definition:** Movement of molecules from a region of **HIGH concentration** to a region of **LOW concentration** (down a concentration gradient) — passive process, no energy required.

```
HIGH concentration          LOW concentration
●●●●●●●●●●●●     →→→→→→→→→     ●●●
●●●●●●●●●●●●     →→→→→→→→→     ●●●

After equilibrium: ●●●●●●  |  ●●●●●●
```

**Factors that increase rate of diffusion:**
- Higher concentration gradient
- Higher temperature
- Smaller molecules
- Larger surface area
- Shorter diffusion distance

**Examples:** CO₂ leaving cells during respiration; O₂ entering leaf cells

---

### 2. Osmosis
**Definition:** Movement of **water molecules** from a region of **HIGH water potential** (dilute solution) to a region of **LOW water potential** (concentrated solution) through a **partially permeable membrane**.

```
Dilute solution │ Partially permeable │ Concentrated solution
(high water     │      membrane        │ (low water potential)
 potential)     │                      │
●●●●●●●  H₂O   │ → → → → → → → → →  │   ○○○○○  solute
●●●●●●●         │                      │
```

**Effects on cells:**
| Solution Type | Effect on Animal Cell | Effect on Plant Cell |
|---|---|---|
| Hypotonic (dilute) | Swells → bursts (haemolysis) | Swells → turgid (normal) |
| Hypertonic (concentrated) | Shrinks (crenation) | Shrinks → plasmolysis |
| Isotonic (same) | Normal | Normal |

**Turgor pressure:** Water entering plant cells pushes cytoplasm against wall — keeps plant upright.

**Plasmolysis:** Cell membrane pulls away from cell wall when plant cell loses water.

---

### 3. Active Transport
**Definition:** Movement of molecules from **LOW to HIGH** concentration (against the concentration gradient) — **requires energy (ATP)** and **carrier proteins**.

```
LOW concentration           HIGH concentration
         ●            ←←←←carrier←←←←  ●●●●●●●●●●
    (inside cell)     ← needs ATP ←    (outside cell)
```

**Examples:**
- Absorption of glucose and amino acids in the small intestine
- Reabsorption of glucose in kidney tubules
- Uptake of mineral salts by root hair cells

---

### 4. Facilitated Diffusion
- Uses **channel proteins** or **carrier proteins**
- Moves molecules **down** concentration gradient (like diffusion)
- Does NOT require energy
- Faster than simple diffusion for large/charged molecules

---

### Comparison Summary
| Process | Direction | Energy needed? | Carrier needed? |
|---|---|---|---|
| Diffusion | High → Low | No | No |
| Osmosis | High → Low (water) | No | No (membrane only) |
| Active transport | Low → High | Yes (ATP) | Yes |
| Facilitated diffusion | High → Low | No | Yes |' WHERE id = '744bf4de-e07d-4295-9871-613fb13a0e8f';

UPDATE topic_sections SET content = '## Cell Division: Mitosis and Meiosis

---

### Why Do Cells Divide?
- Growth of the organism
- Repair of damaged tissues
- Replacement of worn-out cells
- Reproduction (asexual)

---

### Mitosis

**Definition:** Cell division producing **two identical daughter cells**, each with the **same number of chromosomes** as the parent cell (diploid → diploid).

**Occurs in:** All body (somatic) cells — growth, repair, asexual reproduction.

**Stages of Mitosis (IPMAT):**
```
INTERPHASE → PROPHASE → METAPHASE → ANAPHASE → TELOPHASE → CYTOKINESIS

Interphase:  DNA replication occurs (S phase); cell prepares for division
                ┌───┐
                │ ≡≡ │  ← chromosomes replicate (each becomes 2 chromatids)
                └───┘

Prophase:    Chromosomes condense and become visible; spindle fibres form
                ╔═══╗
                ║╫╫╫║  ← chromosomes visible, nuclear membrane breaks down
                ╚═══╝

Metaphase:   Chromosomes line up at cell equator (metaphase plate)
              ─────╫─────╫─────╫─────  ← spindle fibres attach to centromeres

Anaphase:    Sister chromatids pulled to opposite poles by spindle fibres
              ↑ ↑ ↑              ↓ ↓ ↓

Telophase:   Two nuclei form; chromosomes uncoil; cell plate forms
              ┌──┐  ┌──┐   ← two new nuclei
              └──┘  └──┘

Cytokinesis: Cytoplasm divides → two identical daughter cells
```

**Result:** 2 daughter cells, genetically identical to parent, diploid (2n)

---

### Meiosis

**Definition:** Cell division producing **four genetically different daughter cells**, each with **half the number of chromosomes** (diploid → haploid). Occurs in **reproductive organs**.

**Two divisions:** Meiosis I (separation of homologous pairs) and Meiosis II (separation of sister chromatids)

```
Parent cell (2n=4)
       ↓
  ┌─────────┐
  │ Meiosis I │  ← homologous chromosomes separate (CROSSING OVER occurs here)
  └─────────┘
       ↓
  Two cells (n=2, each with 2 chromatids per chromosome)
       ↓
  ┌─────────┐
  │ Meiosis II│  ← sister chromatids separate
  └─────────┘
       ↓
  Four haploid cells (gametes) — each genetically UNIQUE
```

**Crossing Over (Chiasmata):** During Prophase I, homologous chromosomes exchange segments → creates genetic variation.

---

### Mitosis vs Meiosis Comparison Table
| Feature | Mitosis | Meiosis |
|---|---|---|
| Number of divisions | 1 | 2 |
| Cells produced | 2 | 4 |
| Chromosome number | Same as parent (2n) | Half of parent (n) |
| Genetic variation | No (identical) | Yes (crossing over) |
| Where it occurs | Body cells | Gonads (testes, ovaries) |
| Purpose | Growth, repair | Sexual reproduction |

---

### Significance
- **Mitosis** maintains genetic stability in body cells
- **Meiosis** produces variation — essential for evolution
- **Cancer** = uncontrolled mitosis due to mutations in cell cycle genes' WHERE id = 'ba259d82-6ba0-4d1f-a2a8-ee2abccaa99e';

UPDATE topic_sections SET content = '## WASSCE Practice Questions: Cell Biology

### Multiple Choice Style

**Q1.** Which organelle is responsible for producing ATP through aerobic respiration?
A) Nucleus   B) Ribosome   C) Mitochondrion   D) Chloroplast
**Answer: C** — Mitochondria are the site of aerobic respiration and ATP production.

**Q2.** A student placed red blood cells in a concentrated salt solution. What would happen?
A) The cells would swell and burst
B) The cells would remain unchanged
C) The cells would shrink (crenation)
D) The cells would divide
**Answer: C** — In a hypertonic solution, water leaves the cell by osmosis → cells shrink.

**Q3.** Which of the following is found in plant cells but NOT in animal cells?
A) Mitochondria   B) Ribosomes   C) Cell membrane   D) Chloroplasts
**Answer: D**

**Q4.** The process by which molecules move against a concentration gradient using energy is called:
A) Osmosis   B) Diffusion   C) Active transport   D) Facilitated diffusion
**Answer: C**

**Q5.** Meiosis results in cells with:
A) The same number of chromosomes as the parent cell
B) Twice the chromosomes of the parent cell
C) Half the chromosomes of the parent cell
D) Identical chromosomes to the parent cell
**Answer: C**

---

### Structured Questions

**Q6.** (a) Draw and label a diagram of a typical animal cell. [4 marks]
*(Include: nucleus, cell membrane, cytoplasm, mitochondria, ribosome, Golgi body)*

(b) State TWO differences between a plant cell and an animal cell. [2 marks]
- Plant cells have a cell wall made of cellulose; animal cells do not
- Plant cells have chloroplasts; animal cells do not

(c) Explain what happens to a plant cell when placed in a hypertonic solution. [3 marks]
- Water leaves the vacuole and cytoplasm by osmosis
- The cell membrane pulls away from the cell wall
- This is called **plasmolysis**; the cell becomes flaccid

**Q7.** Compare mitosis and meiosis under the following headings: [6 marks]
(i) Number of daughter cells produced
(ii) Chromosome number of daughter cells
(iii) Where in the body each process occurs

| | Mitosis | Meiosis |
|---|---|---|
| Daughter cells | 2 | 4 |
| Chromosome no. | 2n (diploid) | n (haploid) |
| Location | All body cells | Gonads only |

---

### Essay Question

**Q8.** Describe the structure of the cell membrane and explain how it controls the movement of substances into and out of the cell. [10 marks]

**Key points to include:**
- Fluid mosaic model — phospholipid bilayer with embedded proteins
- Hydrophilic heads face outward; hydrophobic tails face inward
- Selective permeability — small/non-polar molecules pass freely
- Diffusion: O₂, CO₂ move down concentration gradients
- Osmosis: water moves through aquaporin channels
- Active transport: requires ATP and carrier proteins for movement against gradient
- Facilitated diffusion: uses channel proteins but no energy
- Role of glycoproteins in cell recognition and signalling

**WASSCE Tip:** Always define terms first, then explain the process with examples from the human body or plants.' WHERE id = '5cc2e0a4-5925-41ad-aee9-4ab4d66f9bfe';
