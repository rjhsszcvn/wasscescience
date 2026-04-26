/*
  # Biology Topic 7: Excretion and Homeostasis — Deep Notes Upgrade
*/

UPDATE topic_sections SET content = '## Excretion and Homeostasis — Overview

**Excretion** is the removal of metabolic waste products from the body — products that are toxic or harmful.

**IMPORTANT DISTINCTIONS:**
- **Excretion:** Removal of waste products of metabolism (CO₂, urea, excess water, bile pigments)
- **Egestion:** Removal of undigested food (faeces) — NOT excretion
- **Secretion:** Release of useful substances made by cells (e.g., hormones, enzymes)

---

### Metabolic Waste Products and Their Origins
| Waste Product | Origin | Organ of Excretion |
|---|---|---|
| **Carbon dioxide (CO₂)** | Aerobic respiration | Lungs |
| **Urea** | Deamination of excess amino acids in liver | Kidneys |
| **Water** | Respiration, metabolism | Kidneys, lungs, skin |
| **Bile pigments (bilirubin)** | Breakdown of haemoglobin in liver | Liver → intestine (in faeces) |
| **Excess salts/minerals** | Diet | Kidneys, sweat glands (skin) |

---

### What is Homeostasis?
**Homeostasis** is the maintenance of a constant internal environment in the body, despite changes in the external environment.

**Things regulated by homeostasis:**
- Body temperature (37°C in humans)
- Blood glucose concentration
- Blood pH
- Blood water potential (osmolarity)
- Blood CO₂ levels

**Negative Feedback — The Basis of Homeostasis:**
```
Normal level (set point)
        ↓
Change detected by receptor
        ↓
Effector responds to correct change
        ↓
Level returns to normal → response switched off
        ↓
(This is "negative feedback" — the response NEGATES the change)
```' WHERE id = 'bd50ea7f-8760-4612-8587-4747e905189f';

UPDATE topic_sections SET content = '## The Human Kidney: Structure and Function

### Position and Structure of the Kidneys
- Paired organs in the abdomen, behind the stomach
- Each kidney contains approximately **1 million nephrons**

```
KIDNEY (longitudinal section):
┌────────────────────────────────────┐
│         CORTEX (outer layer)       │  ← nephron glomeruli here
│   ┌────────────────────────────┐   │
│   │       MEDULLA (inner)      │   │  ← nephron tubules here
│   │  ┌──────────────────────┐  │   │
│   │  │     PELVIS           │  │   │  ← collects urine
│   │  └──────────────────────┘  │   │
│   └────────────────────────────┘   │
└────────────────────────────────────┘
           ↓ ureter
           ↓ to bladder
```

---

### The Nephron — Functional Unit of the Kidney
```
Glomerulus (knot of capillaries in Bowman''s capsule)
    ↓ Ultra-filtration (high pressure filtration)
Proximal Convoluted Tubule (PCT)
    ↓ Selective reabsorption (glucose, amino acids, water, some salts)
Loop of Henle (descending and ascending limbs)
    ↓ Creates concentration gradient; more water reabsorbed
Distal Convoluted Tubule (DCT)
    ↓ Fine regulation of water/salt balance (influenced by ADH and aldosterone)
Collecting Duct
    ↓ Further water reabsorption under ADH control
Renal Pelvis → Ureter → Bladder → Urethra
```

---

### Stage 1: Ultrafiltration
- Occurs in the **Bowman''s capsule** (glomerulus)
- High blood pressure forces small molecules out of blood: water, glucose, urea, salts, amino acids, uric acid
- Large molecules STAY in blood: plasma proteins, red blood cells, white blood cells
- Filtrate (like plasma but without proteins) formed = ~180 litres/day

---

### Stage 2: Selective Reabsorption
- **Proximal Convoluted Tubule (PCT):** Most reabsorption occurs here
  - ALL glucose reabsorbed (active transport)
  - ALL amino acids reabsorbed
  - ~80% of water reabsorbed (osmosis)
  - Most salts reabsorbed
- **Loop of Henle:** Creates high salt concentration in medulla → allows water reabsorption from collecting duct
- **Collecting Duct:** Variable water reabsorption controlled by **ADH (antidiuretic hormone)**

---

### Stage 3: Urine Formation
What remains after reabsorption = **urine**:
- Urea (waste from amino acid breakdown)
- Excess water
- Excess salts
- Uric acid
- Creatinine

**Urine composition varies with:**
- Water intake (more water drunk → more dilute urine)
- Diet (high protein → more urea)
- Exercise (sweating → more concentrated urine)
- Disease (diabetes: glucose in urine; kidney disease: proteins in urine)

---

### ADH (Antidiuretic Hormone) and Osmoregulation
```
Blood too concentrated (dehydrated) →
  Hypothalamus detects → Pituitary gland releases ADH →
  Collecting duct becomes more permeable to water →
  More water reabsorbed → Concentrated urine (small amount)
  → Blood concentration returns to normal → ADH release stops

Blood too dilute (over-hydrated) →
  Less ADH released →
  Collecting duct less permeable →
  Less water reabsorbed → Dilute urine (large amount)
```' WHERE id = 'a6770b9b-6778-4f38-81b4-0455d9670b2f';

UPDATE topic_sections SET content = '## Thermoregulation and Liver Functions

### Temperature Regulation (Thermoregulation)
The hypothalamus acts as the body''s thermostat — it detects changes in blood temperature.

**Normal body temperature = 37°C**

---

**When too HOT (hyperthermia responses):**
```
Body temperature rises above 37°C
         ↓
Thermoreceptors in hypothalamus detect change
         ↓
1. Vasodilation: blood vessels in skin dilate → more blood near surface → more heat lost by radiation
2. Sweating: sweat glands produce sweat → evaporation cools skin
3. Hairs lie flat (erector muscles relax) → no insulating air layer
4. Reduced metabolic rate (less heat generated)
```

**When too COLD (hypothermia responses):**
```
Body temperature falls below 37°C
         ↓
1. Vasoconstriction: blood vessels in skin constrict → less blood near surface → less heat lost
2. Shivering: rapid involuntary muscle contractions → generate heat
3. Piloerection: hairs stand up → traps insulating air layer
4. Increased metabolic rate → more heat produced
5. Adrenaline released → speeds up metabolic reactions
```

```
SKIN IN WARM CONDITIONS:          SKIN IN COLD CONDITIONS:
  ┌─────────────────┐               ┌─────────────────┐
  │ hair lying flat │               │ hair standing up│
  │                 │               │    (piloerect.) │
  │ wide arteriole  │               │ narrow arteriole│
  │ (vasodilation)  │               │(vasoconstriction│
  │ sweat gland     │               │ no sweat        │
  │ producing sweat │               │                 │
  └─────────────────┘               └─────────────────┘
         (hot)                             (cold)
```

---

### The Liver — Major Functions
The liver is the largest organ in the body and performs over 500 functions.

**Key functions for WASSCE:**

| Function | Details |
|---|---|
| **Deamination** | Breaks down excess amino acids → removes amino group (NH₂) → forms ammonia → converted to UREA |
| **Glycogen storage** | Stores excess glucose as glycogen; breaks glycogen down when blood glucose falls |
| **Blood glucose regulation** | Works with insulin and glucagon |
| **Detoxification** | Breaks down alcohol, drugs, hormones |
| **Bile production** | Produces bile from broken-down haemoglobin → stored in gall bladder |
| **Heat production** | High metabolic rate → liver is a major heat-producing organ |
| **Plasma protein synthesis** | Makes fibrinogen (clotting), albumin (osmotic pressure) |
| **Vitamin storage** | Stores vitamins A, D, B₁₂ and iron |

---

### Blood Glucose Regulation (Homeostasis Example)
```
Blood glucose RISES (after meal):
Pancreas (beta cells) → releases INSULIN
    ↓
Liver: converts glucose → glycogen (glycogenesis)
Muscles: glucose uptake increases
    ↓
Blood glucose returns to normal → insulin secretion stops

Blood glucose FALLS (fasting/exercise):
Pancreas (alpha cells) → releases GLUCAGON
    ↓
Liver: converts glycogen → glucose (glycogenolysis)
Also: gluconeogenesis (make glucose from non-carbohydrates)
    ↓
Blood glucose returns to normal → glucagon secretion stops
```

**Diabetes mellitus:**
- Type 1: Pancreas does not produce insulin (autoimmune) → treated with insulin injections
- Type 2: Body cells resistant to insulin → treated with diet, exercise, metformin' WHERE id = '1084cef7-cd95-46d2-b636-233c5b5b9abc';

UPDATE topic_sections SET content = '## Worked Examples: Excretion and Homeostasis

### Worked Example 1: Interpreting Urine Data

A student collected urine samples from three people and tested them:

| Person | Glucose | Protein | Urea | Water content |
|---|---|---|---|---|
| A | Absent | Absent | High | Low (concentrated) |
| B | Present | Absent | Normal | Normal |
| C | Absent | Present | Normal | Normal |

**Analysis:**
- **Person A:** High urea and concentrated urine — likely ate a high-protein diet recently and is slightly dehydrated; could have kidney concentrating mechanism working well
- **Person B:** Glucose in urine — suggests diabetes mellitus (blood glucose exceeded renal threshold, so glucose not fully reabsorbed)
- **Person C:** Protein in urine (proteinuria) — suggests kidney damage/disease (Bowman''s capsule wall damaged, allowing plasma proteins through)

---

### Worked Example 2: Thermoregulation Scenario
Q: A student runs 5km on a hot day (35°C). Describe the body''s responses to prevent overheating.

**Answer:**
- Body temperature rises due to heat from muscle respiration
- Hypothalamus thermoreceptors detect rise in blood temperature
- **Vasodilation:** Arterioles in skin dilate → more blood flows to skin surface → heat radiated to environment
- **Sweating:** Sweat glands produce more sweat → evaporation removes latent heat
- **Hair flattening:** Erector muscles relax → hairs lie flat → no insulating air trapped
- Breathing rate increases → more heat lost from lungs via exhaled air
- As body cools back to 37°C → hypothalamus detects this → vasodilation and sweating reduced (negative feedback)

---

### Worked Example 3: ADH and Water Balance
Q: Explain why a person who drinks a lot of water produces large volumes of dilute urine.

**Answer:**
1. Drinking lots of water → blood becomes more dilute (lower solute concentration/higher water potential)
2. Osmoreceptors in hypothalamus detect this change
3. Posterior pituitary releases LESS ADH
4. Less ADH → collecting duct and DCT are less permeable to water
5. Less water reabsorbed back into blood
6. Excess water remains in filtrate → excreted as large volumes of dilute urine
7. Blood water potential returns to normal — negative feedback complete

---

### Key Terms Glossary
| Term | Definition |
|---|---|
| Osmoregulation | Control of water and salt balance in body |
| Deamination | Removal of amino group from excess amino acids in liver |
| Ultrafiltration | High-pressure filtration in Bowman''s capsule |
| Selective reabsorption | Return of useful substances from filtrate to blood in PCT |
| Thermoregulation | Maintenance of constant body temperature |
| Vasodilation | Widening of blood vessels near skin surface |
| Vasoconstriction | Narrowing of blood vessels near skin surface |' WHERE id = 'a0445136-1a9f-4796-bd83-6142688a0e5c';

UPDATE topic_sections SET content = '## WASSCE Practice Questions: Excretion and Homeostasis

### Multiple Choice

**Q1.** The removal of urea from the body is an example of:
A) Egestion   B) Secretion   C) Excretion   D) Digestion
**Answer: C** — Urea is a metabolic waste product; its removal = excretion

**Q2.** Which organ is responsible for converting excess amino acids to urea?
A) Kidney   B) Liver   C) Pancreas   D) Lungs
**Answer: B** — Deamination occurs in the liver

**Q3.** During ultrafiltration in the kidney, which substance is NOT filtered into the Bowman''s capsule?
A) Glucose   B) Urea   C) Plasma proteins   D) Water
**Answer: C** — Large plasma proteins cannot pass through the filtration membrane

**Q4.** ADH causes the collecting duct to become more permeable to:
A) Glucose   B) Urea   C) Water   D) Salts
**Answer: C**

**Q5.** When the body is too hot, blood vessels in the skin undergo:
A) Vasoconstriction   B) Vasodilation   C) Shivering   D) Piloerection
**Answer: B** — Vasodilation brings more blood to surface → more heat radiated

---

### Structured Questions

**Q6.** (a) Distinguish between excretion and egestion. [2]
- Excretion: removal of metabolic waste products made by body cells
- Egestion: removal of undigested food (faeces) that was never absorbed into body cells

(b) State the organ of excretion for each of the following wastes: [3]
- Carbon dioxide: **lungs**
- Urea: **kidneys**
- Bile pigments: **liver** (into intestine with faeces)

(c) Explain what is meant by selective reabsorption in the kidney. [3]
- After ultrafiltration, the filtrate contains many useful substances
- As filtrate passes through the proximal convoluted tubule
- Useful substances (glucose, amino acids, water, some salts) are actively transported and absorbed back into the blood
- Waste products (urea) remain in the filtrate → form urine

---

### Essay Question

**Q7.** Describe how the human body responds to an increase in body temperature on a hot day. [10]

Include: role of hypothalamus, vasodilation, sweating, hair flattening, negative feedback mechanism

**Model answer structure:**
1. Temperature stimulus → thermoreceptors in skin and hypothalamus detect rise
2. Hypothalamus (control centre) sends nerve impulses to effectors in skin
3. Vasodilation → arterioles dilate → more blood to skin → heat lost by radiation
4. Sweating → sweat glands produce sweat → evaporation → latent heat removed from skin
5. Hair erector muscles relax → hairs lie flat → no insulating air layer
6. As body temperature returns to 37°C → hypothalamus detects this (negative feedback)
7. Vasodilation and sweating reduced → temperature maintained at set point

**WASSCE Tip:** Use the words RECEPTOR, CONTROL CENTRE, and EFFECTOR when describing homeostatic responses — these are the three components of any homeostatic mechanism!' WHERE id = '3f006123-73a3-4f47-ad66-d4438eccb360';
