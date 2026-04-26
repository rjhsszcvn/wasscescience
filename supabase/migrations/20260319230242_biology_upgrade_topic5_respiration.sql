/*
  # Biology Topic 5: Respiration — Deep Notes Upgrade
*/

UPDATE topic_sections SET content = '## Cellular Respiration — Overview

**Respiration** is the process by which organisms break down food (glucose) to release energy in the form of **ATP** (adenosine triphosphate).

**IMPORTANT:** Respiration is NOT the same as breathing!
- **Respiration** = chemical process in cells releasing energy
- **Breathing (ventilation)** = mechanical process of moving air in and out of lungs

---

### The Respiration Equation

**Aerobic Respiration** (with oxygen):
```
C₆H₁₂O₆  +  6O₂  →  6CO₂  +  6H₂O  +  ATP energy
(glucose)    (oxygen)  (carbon   (water)
                       dioxide)
```
Energy released: approximately **2,870 kJ per mole of glucose** (38 ATP molecules)

**Anaerobic Respiration** (without oxygen):

In animals/humans (during intense exercise):
```
C₆H₁₂O₆  →  2C₃H₆O₃  +  small amount of ATP
(glucose)    (lactic acid)
```

In yeast/fungi (fermentation):
```
C₆H₁₂O₆  →  2C₂H₅OH  +  2CO₂  +  small amount of ATP
(glucose)    (ethanol)  (carbon dioxide)
```
Energy released: approximately **218 kJ per mole** (only 2 ATP molecules)

---

### Aerobic vs Anaerobic Respiration
| Feature | Aerobic | Anaerobic |
|---|---|---|
| Oxygen needed | Yes | No |
| End products | CO₂ + H₂O | Lactic acid (animals) / Ethanol + CO₂ (yeast) |
| ATP produced | 38 (many) | 2 (few) |
| Efficiency | High | Low |
| Location | Cytoplasm + Mitochondria | Cytoplasm only |
| Duration | Sustained activity | Short bursts only |

---

### ATP — The Energy Currency
- **ATP** = Adenosine TriPhosphate
- When broken down to ADP (Adenosine DiPhosphate), energy is released for cell work
- ATP is used for: muscle contraction, active transport, protein synthesis, cell division, nerve impulses' WHERE id = '2b496efd-47ec-4a5d-92fb-83c15f6911cc';

UPDATE topic_sections SET content = '## Stages of Aerobic Respiration

Aerobic respiration occurs in THREE main stages:

### Stage 1: Glycolysis (in cytoplasm)
```
Glucose (6C) → 2 Pyruvate (3C) + 2 ATP + 2 NADH
```
- Occurs in the **cytoplasm** (cytosol)
- Does NOT require oxygen
- Glucose is split into two pyruvate molecules
- Net gain of **2 ATP**

---

### Stage 2: Krebs Cycle / Citric Acid Cycle (in mitochondrial matrix)
```
Pyruvate → Acetyl CoA (2C)
    ↓
  enters Krebs Cycle:
Acetyl CoA + Oxaloacetate → Citric acid
                ↓
         (series of reactions)
                ↓
   CO₂ released + NADH + FADH₂ produced + 2 ATP
```
- Occurs in the **matrix of mitochondria**
- Requires oxygen indirectly
- Releases CO₂ as a waste product
- Produces electron carriers (NADH, FADH₂)
- Net gain of **2 ATP** per glucose

---

### Stage 3: Oxidative Phosphorylation / Electron Transport Chain (on inner mitochondrial membrane)
```
NADH and FADH₂ → release electrons
                ↓
Electrons pass along carrier proteins (cristae)
                ↓
Energy used to pump H⁺ ions → ATP synthesised
                ↓
O₂ is the final electron acceptor → H₂O formed
```
- Occurs on the **cristae (inner membrane) of mitochondria**
- Requires oxygen as final electron acceptor
- Produces **34 ATP** molecules

---

### Summary of ATP Yield
| Stage | Location | ATP Produced |
|---|---|---|
| Glycolysis | Cytoplasm | 2 |
| Krebs Cycle | Mitochondrial matrix | 2 |
| Electron Transport Chain | Inner mitochondrial membrane | 34 |
| **Total** | | **38** |

---

### Respiratory Substrates
Glucose is the primary fuel, but organisms can also respire:
- **Fats** → broken into glycerol + fatty acids → enter respiration
- **Proteins** → amino acids deaminated → enter Krebs cycle
- Fat yields MORE energy per gram than carbohydrates (but takes longer to mobilise)' WHERE id = 'f8773d80-9307-42c3-bf37-eb3a1d11baf0';

UPDATE topic_sections SET content = '## Breathing and Gas Exchange

### The Human Respiratory System
```
Nasal cavity (warms, moistens, filters air)
      ↓
Pharynx (throat)
      ↓
Larynx (voice box) with epiglottis
      ↓
Trachea (windpipe — C-shaped cartilage rings)
      ↓
   ┌──┴──┐
Left     Right
bronchus  bronchus
  ↓          ↓
Bronchioles (smaller tubes)
  ↓
Alveoli (air sacs — millions; actual gas exchange site)
```

---

### The Alveolus (Gas Exchange Surface)
```
Alveolus wall (1 cell thick)
     │
     │  O₂ →→→→→→→→→ into blood capillary
     │
     │  CO₂ ←←←←←←← from blood capillary
     │
Blood capillary (1 cell thick)
```

**Adaptations of alveoli for gas exchange:**
1. **Very thin walls** (one cell thick) — short diffusion distance
2. **Vast numbers** (~700 million) — enormous total surface area (~70 m²)
3. **Rich blood supply** — maintains steep concentration gradient
4. **Moist surface** — gases dissolve before diffusing
5. **Large capillary network** — maximises blood contact

---

### Mechanism of Breathing

**Inhalation (breathing in):**
```
Diaphragm contracts → flattens (moves down)
External intercostal muscles contract
→ Ribs move UP and OUT
→ Volume of thorax INCREASES
→ Pressure inside DECREASES (below atmospheric)
→ Air rushes IN to lungs
```

**Exhalation (breathing out):**
```
Diaphragm relaxes → domes upward
Internal intercostal muscles contract (forced expiration)
→ Ribs move DOWN and IN
→ Volume of thorax DECREASES
→ Pressure inside INCREASES (above atmospheric)
→ Air pushed OUT of lungs
```

---

### Lung Volumes
| Volume | Definition | Approximate Value |
|---|---|---|
| Tidal volume | Air breathed in/out during normal breathing | 500 mL |
| Vital capacity | Maximum air in one breath | 4,800 mL |
| Residual volume | Air remaining after maximum exhalation | 1,200 mL |
| Total lung capacity | Total air lungs can hold | 6,000 mL |

---

### Gas Exchange in Other Organisms
| Organism | Gas Exchange Surface | Mechanism |
|---|---|---|
| Fish | Gills | Water flows over lamellae; counter-current flow |
| Insects | Tracheae/spiracles | Air diffuses through spiracles directly to cells |
| Frogs | Skin + lungs | Moist skin for cutaneous respiration |
| Earthworm | Moist skin | Simple diffusion |
| Plants | Stomata (leaves) | Diffusion through open stomata |' WHERE id = 'c79732ec-83b4-4664-aa4c-579c0d04f305';

UPDATE topic_sections SET content = '## Respiration: Experiments and Calculations

### Experiment 1: Testing for CO₂ Production in Respiration
**Materials:** Germinating seeds, limewater (calcium hydroxide solution), delivery tube

**Setup:**
```
Sealed flask with germinating seeds
          ↓
     delivery tube
          ↓
  limewater in test tube
```

**Observation:** Limewater turns **milky/cloudy**
**Conclusion:** CO₂ is produced during respiration

**Explanation:** CO₂ reacts with limewater (Ca(OH)₂) → calcium carbonate (CaCO₃) precipitate = cloudy white

---

### Experiment 2: Oxygen Consumption (Respirometer)
- A respirometer measures the rate of O₂ consumption
- Contains living organisms (woodlice, germinating seeds) and a KOH solution (absorbs CO₂)
- As O₂ is consumed, pressure drops → coloured liquid in capillary tube moves toward organism
- Rate of movement indicates rate of respiration

---

### Experiment 3: Heat Production During Respiration
- Germinating seeds in insulated flask
- Temperature rises as seeds respire
- Boiled (dead) seeds control: no temperature rise
- Proves respiration releases heat energy

---

### Calculating Respiratory Quotient (RQ)
```
RQ = Volume of CO₂ released
     ─────────────────────
     Volume of O₂ absorbed
```

| Substrate | RQ | Interpretation |
|---|---|---|
| Carbohydrate | 1.0 | Aerobic respiration of glucose |
| Fat | ~0.7 | Fat being respired |
| Protein | ~0.9 | Protein being respired |
| >1.0 | Anaerobic respiration occurring | |

**Worked Example:**
A woodlouse absorbs 5 cm³ O₂ and releases 5 cm³ CO₂ in 10 minutes.
RQ = 5/5 = **1.0** → Carbohydrate is the respiratory substrate (aerobic)

---

### Oxygen Debt (EPOC)
During intense exercise:
- O₂ supply insufficient → anaerobic respiration
- Lactic acid accumulates in muscles → fatigue and cramps
- After exercise: rapid breathing continues to:
  1. Oxidise lactic acid → CO₂ + H₂O
  2. Replenish ATP stores
  3. Replenish glycogen stores
  
This extra O₂ consumed after exercise is called the **oxygen debt (excess post-exercise oxygen consumption)**' WHERE id = '707837e9-4efa-4986-a6a9-0f76ea192d79';

UPDATE topic_sections SET content = '## WASSCE Practice Questions: Respiration

### Multiple Choice

**Q1.** Which organelle is the main site of aerobic respiration?
A) Ribosome   B) Mitochondrion   C) Chloroplast   D) Nucleus
**Answer: B**

**Q2.** The end products of anaerobic respiration in yeast are:
A) Lactic acid + water   B) CO₂ + water   C) Ethanol + CO₂   D) Glucose + O₂
**Answer: C**

**Q3.** Limewater is used to detect:
A) Oxygen   B) Carbon dioxide   C) Glucose   D) Starch
**Answer: B** — Limewater turns milky in the presence of CO₂

**Q4.** During heavy exercise, why do muscles experience fatigue?
A) Glucose levels rise   B) Oxygen levels rise   C) Lactic acid accumulates   D) ATP accumulates
**Answer: C**

**Q5.** The respiratory quotient (RQ) for carbohydrate respiration is:
A) 0.7   B) 0.9   C) 1.0   D) 1.5
**Answer: C**

---

### Structured Questions

**Q6.** (a) Write the balanced equation for aerobic respiration. [2]
C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + energy (ATP)

(b) State THREE differences between aerobic and anaerobic respiration. [3]
1. Aerobic requires oxygen; anaerobic does not
2. Aerobic produces more ATP (38) than anaerobic (2)
3. Aerobic end products are CO₂ and H₂O; anaerobic end products are lactic acid OR ethanol + CO₂

(c) Describe an experiment to demonstrate that living organisms release CO₂ during respiration. [4]
- Set up airtight flask with germinating seeds
- Connect to test tube of limewater via delivery tube
- Air is drawn through the apparatus
- CO₂ produced turns limewater milky/cloudy
- Control: boiled seeds → limewater remains clear

---

### Essay Question

**Q7.** (a) Describe the structure of the alveolus and explain how it is adapted for efficient gas exchange. [6]
(b) Explain the mechanism of inhalation and exhalation. [4]

**Model answer (a):**
- Alveolus has very thin wall (one cell thick) — short diffusion distance for O₂ and CO₂
- Surrounded by dense network of blood capillaries — maintains concentration gradient
- Large number (~700 million) — creates huge total surface area (~70 m²)
- Moist lining — gases dissolve before crossing membrane
- Good ventilation — maintains fresh O₂ supply and removes CO₂

**Model answer (b):**
Inhalation:
- Diaphragm contracts and flattens; external intercostal muscles contract
- Ribs move upward and outward; volume of thorax increases
- Air pressure inside thorax falls below atmospheric pressure
- Air rushes into lungs down pressure gradient

Exhalation:
- Diaphragm and intercostal muscles relax
- Elastic recoil of lungs; ribs move down and inward
- Volume decreases; pressure rises above atmospheric
- Air is expelled from lungs

**WASSCE Tip:** Always distinguish between breathing (ventilation) and respiration (chemical process) — this distinction is commonly tested!' WHERE id = 'b67208df-e472-4952-97c7-1b8040031c1f';
