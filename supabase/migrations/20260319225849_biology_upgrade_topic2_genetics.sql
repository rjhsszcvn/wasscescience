/*
  # Biology Topic 2: Genetics and Heredity — Deep Notes Upgrade
*/

UPDATE topic_sections SET content = '## Genetics and Heredity — Overview

**Genetics** is the branch of biology that studies how traits are inherited from parents to offspring.

### Key Pioneers
- **Gregor Mendel** (1860s): Father of genetics; discovered laws of inheritance using pea plants
- **Watson and Crick** (1953): Discovered the double helix structure of DNA
- **Morgan**: Showed genes are carried on chromosomes

---

### DNA — The Molecule of Inheritance

```
DNA Double Helix Structure:

        A─────T          A = Adenine
       /         \       T = Thymine
      G─────C     |      G = Guanine
      |           |      C = Cytosine
      C─────G     |
       \         /      Base pairing rules:
        T─────A          A pairs with T
        |     |          G pairs with C
   Sugar-phosphate backbone (sides of ladder)
   Bases (rungs of ladder)
```

**DNA → RNA → Protein** (Central Dogma of Molecular Biology)
- **Transcription:** DNA → mRNA (in nucleus)
- **Translation:** mRNA → Protein (at ribosomes)

---

### Chromosomes
- Humans have **46 chromosomes** (23 pairs) in body cells
- Gametes (sperm/egg) have **23 chromosomes** (haploid)
- **Autosomes:** 22 pairs of non-sex chromosomes
- **Sex chromosomes:** 1 pair — XX (female), XY (male)

---

### Mendel''s Laws

**Law 1 — Law of Segregation:**
Alleles separate during gamete formation so each gamete carries only ONE allele for each trait.

**Law 2 — Law of Independent Assortment:**
Alleles for different traits are inherited independently of each other (applies to genes on different chromosomes).' WHERE id = '29f1e7ef-5e07-42a1-8de1-9991d2970691';

UPDATE topic_sections SET content = '## Key Genetics Definitions

| Term | Definition | Example |
|---|---|---|
| **Gene** | A segment of DNA that codes for a specific protein/trait | Gene for eye colour |
| **Allele** | Different forms of the same gene | Brown eye allele, blue eye allele |
| **Locus** | The specific position of a gene on a chromosome | — |
| **Genotype** | The genetic makeup of an organism | BB, Bb, bb |
| **Phenotype** | The observable characteristics of an organism | Brown eyes, tall plant |
| **Dominant** | Allele that is expressed even when only one copy is present | B (brown eyes) |
| **Recessive** | Allele expressed only when two copies are present | b (blue eyes) |
| **Homozygous** | Having two identical alleles | BB or bb |
| **Heterozygous** | Having two different alleles | Bb |
| **Codominance** | Both alleles are fully expressed in heterozygote | AB blood type |
| **Incomplete dominance** | Blending of two traits in heterozygote | Red × white = pink |
| **Carrier** | Organism with one recessive allele that does not express the trait | Aa (carries recessive a) |

---

### Sex Determination
```
Mother (XX)           Father (XY)
   ↓                     ↓
Eggs: X or X         Sperm: X or Y

       X sperm + X egg = XX = Female
       Y sperm + X egg = XY = Male

The FATHER determines the sex of the child!
```

---

### Sex-linked Traits
- Genes located on the **X chromosome** (mainly)
- More common in males (XY) because males have only ONE X
- Example: Colour blindness, haemophilia

**Colour Blindness:**
- X^N = normal vision (dominant)
- X^n = colour blind (recessive)
- Carrier female: X^N X^n (normal vision but can pass on)
- Colour blind male: X^n Y

---

### Types of Variation
| Type | Cause | Example |
|---|---|---|
| Continuous | Many genes + environment | Height, skin colour |
| Discontinuous | One or few genes | Blood groups (A, B, AB, O) |' WHERE id = '3e2c4c1c-03a8-4416-8cfa-80912844cbf6';

UPDATE topic_sections SET content = '## Monohybrid and Dihybrid Crosses

### Monohybrid Cross
Involves ONE pair of contrasting traits.

**Example:** Tall (T) is dominant over short (t)

**Cross 1: Pure tall × pure short (P generation)**
```
Parents:    TT (tall)  ×  tt (short)
Gametes:      T              t
F1:                   Tt (all tall)
```
F1 phenotype: All tall | F1 genotype: All Tt (heterozygous)

---

**Cross 2: F1 × F1 (heterozygous cross)**
```
Parents:     Tt  ×  Tt
Gametes:    T, t    T, t

Punnett Square:
         T        t
    T  │  TT   │  Tt  │
    t  │  Tt   │  tt  │

Genotypes: 1 TT : 2 Tt : 1 tt
Phenotypes: 3 Tall : 1 Short (3:1 ratio)
```

---

### Test Cross (Back Cross)
Used to determine if an organism showing dominant phenotype is homozygous or heterozygous.
Cross dominant phenotype with homozygous recessive (tt):
- If **all offspring tall** → parent was TT
- If **50% tall, 50% short** → parent was Tt

---

### Dihybrid Cross
Involves TWO pairs of contrasting traits.

**Example:** Seed colour (Yellow Y dominant over green y) and Seed shape (Round R dominant over wrinkled r)

**Cross: YyRr × YyRr**

Gametes from each parent: YR, Yr, yR, yr

```
16-square Punnett grid gives ratio:
9 Yellow Round : 3 Yellow Wrinkled : 3 Green Round : 1 Green Wrinkled
(9:3:3:1 ratio)
```

---

### ABO Blood Group System (Codominance)
| Alleles | Blood Group | Phenotype |
|---|---|---|
| I^A I^A or I^A i | A | Has A antigens |
| I^B I^B or I^B i | B | Has B antigens |
| I^A I^B | AB | Has A and B antigens |
| ii | O | No antigens |

Both I^A and I^B are **codominant** — both expressed in I^A I^B genotype.

---

### Worked Example: Blood Group Inheritance
Parents: Father blood group A (I^A i) × Mother blood group B (I^B i)

```
         I^B         i
I^A  │  I^A I^B  │  I^A i   │
 i   │   I^B i   │   ii     │

Offspring: 1 AB : 1 A : 1 B : 1 O
(25% chance of each blood group)
```' WHERE id = 'a91eacc0-d53e-4ff3-9f17-996ff9c901eb';

UPDATE topic_sections SET content = '## Mutations and Genetic Diseases

### What is a Mutation?
A **mutation** is a permanent change in the DNA sequence of a gene or chromosome.

**Types of Mutations:**

**1. Gene (Point) Mutations** — change in nucleotide sequence
- **Substitution:** One base replaced by another (e.g., sickle cell anaemia)
- **Insertion:** Extra base added → frameshift mutation
- **Deletion:** Base removed → frameshift mutation

**2. Chromosomal Mutations** — changes in chromosome number or structure
- **Non-disjunction:** Chromosomes fail to separate during meiosis
- **Translocation:** Segment moves to a different chromosome
- **Inversion:** Segment reversed on same chromosome

---

### Causes of Mutations (Mutagens)
| Physical Mutagens | Chemical Mutagens | Biological Mutagens |
|---|---|---|
| UV radiation | Benzene | Some viruses |
| X-rays | Tobacco smoke | Certain bacteria |
| Gamma rays | Aflatoxins (mouldy food) | |

---

### Genetic Diseases

**1. Sickle Cell Anaemia**
- Caused by a single **base substitution** mutation
- Glutamic acid → Valine in haemoglobin protein
- Red blood cells become sickle-shaped → block blood vessels
- Symptoms: pain crises, anaemia, organ damage
- Inheritance: autosomal recessive (HbS HbS = affected; HbA HbS = carrier)

```
Normal RBC:      ⬭  (disc-shaped, flexible)
Sickle cell RBC: ☽  (crescent-shaped, rigid, blocks vessels)
```

**Sickle cell cross:**
```
Parents: HbA HbS (carrier) × HbA HbS (carrier)
Offspring: 1 HbA HbA : 2 HbA HbS : 1 HbS HbS
           (normal)     (carriers)   (affected)
25% chance of sickle cell disease per pregnancy
```

---

**2. Down Syndrome (Trisomy 21)**
- Caused by non-disjunction during meiosis
- Extra chromosome 21 (47 chromosomes total instead of 46)
- Features: intellectual disability, characteristic facial features, heart defects
- Risk increases with maternal age

---

**3. Haemophilia**
- X-linked recessive disorder
- Blood fails to clot properly (lack of clotting factor VIII)
- Affects mainly males (X^h Y)
- Females are carriers (X^H X^h)

---

**4. Albinism**
- Autosomal recessive
- Inability to produce melanin pigment
- Results in white/pale skin, hair, and pink eyes
- Common in West Africa — approximately 1 in 5,000 births

---

### Significance of Genetic Variation
- Source material for natural selection
- Allows species to adapt to changing environments
- Basis of genetic counselling — advising families about inherited disease risks' WHERE id = '2792dbf9-f277-49ed-83e1-891dff4ffdbd';

UPDATE topic_sections SET content = '## WASSCE Practice Questions: Genetics

### Multiple Choice

**Q1.** In pea plants, tall (T) is dominant over short (t). What is the expected phenotype ratio from crossing Tt × tt?
A) 3 tall : 1 short
B) All tall
C) 1 tall : 1 short
D) All short
**Answer: C** — Test cross gives 1:1 ratio (Tt and tt in equal numbers)

**Q2.** A woman who is a carrier for colour blindness (X^N X^n) marries a normal man (X^N Y). What is the probability their son will be colour blind?
A) 0%   B) 25%   C) 50%   D) 100%
**Answer: C** — Sons have 50% chance of inheriting X^n from mother

**Q3.** Sickle cell anaemia is caused by:
A) A chromosomal mutation
B) A base substitution in the haemoglobin gene
C) A viral infection
D) A deletion of an entire chromosome
**Answer: B**

**Q4.** An organism with genotype Bb where B is dominant is described as:
A) Homozygous dominant
B) Homozygous recessive
C) Heterozygous
D) Codominant
**Answer: C**

---

### Structured Questions

**Q5.** In humans, the ability to roll the tongue (R) is dominant over the inability to roll (r).
(a) Give the genotypes of: (i) a tongue roller who is homozygous [1] (ii) a non-tongue roller [1]
**Answers:** (i) RR (ii) rr

(b) Two heterozygous tongue rollers have children. Using a Punnett square, show the expected ratio of tongue rollers to non-tongue rollers. [4 marks]
```
      R        r
R  │  RR  │  Rr  │
r  │  Rr  │  rr  │

Ratio: 3 tongue rollers : 1 non-tongue roller
```

**Q6.** Explain why males are more likely to be colour blind than females. [3 marks]
- Colour blindness is X-linked recessive (gene on X chromosome)
- Males are XY — they only have ONE X chromosome
- If they inherit the recessive allele (X^n), there is no dominant allele to mask it
- Females need TWO copies of the recessive allele to be colour blind

---

### Essay Question

**Q7.** (a) Explain what is meant by the term ''mutation''. [2 marks]
(b) Describe TWO types of mutation and give an example of a disease caused by each. [6 marks]
(c) State TWO causes of mutations and explain how they can be avoided. [4 marks]

**Model Answer outline:**
(a) Mutation = permanent change in DNA sequence/chromosome structure

(b) 
- Gene mutation (substitution): Sickle cell anaemia — change in one base of haemoglobin gene
- Chromosomal mutation (non-disjunction): Down syndrome — extra chromosome 21

(c)
- UV radiation → avoid prolonged sun exposure; use sunscreen
- Tobacco smoke → avoid smoking; stay away from smokers
- X-rays → avoid unnecessary X-rays; use protective shields' WHERE id = 'bfa3df8e-5afc-4884-a00b-b05ce966be48';
