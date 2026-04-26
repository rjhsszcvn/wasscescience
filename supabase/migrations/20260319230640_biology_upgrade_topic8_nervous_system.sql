/*
  # Biology Topic 8: Nervous System and Hormones — Deep Notes Upgrade
*/

UPDATE topic_sections SET content = '## The Nervous System and Endocrine System

The body has TWO major coordination systems:
1. **Nervous system** — fast, electrical, short-lived responses
2. **Endocrine system** — slow, chemical (hormones), long-lasting responses

---

### The Nervous System

**Central Nervous System (CNS):** Brain + Spinal cord — processes information
**Peripheral Nervous System (PNS):** All nerves outside CNS — connects body to CNS

**Types of Neurones (Nerve Cells):**
| Type | Function | Location |
|---|---|---|
| **Sensory neurone** | Carries impulses FROM sense organs TO CNS | Peripheral nervous system |
| **Motor neurone** | Carries impulses FROM CNS TO effectors (muscles/glands) | Peripheral nervous system |
| **Relay (interneurone)** | Connects sensory to motor neurones | CNS (brain and spinal cord) |

---

### Structure of a Motor Neurone
```
                    Dendrites
                   ╱ ╱ ╱
      Cell body ──●
                   ╲
                    Axon ─────────────────────────────→
                    │←── myelin sheath (insulation)──→│
                   Node of  Node of       Axon
                   Ranvier  Ranvier       terminal
                    ↑
              (gaps in myelin → speed up impulse)
                                                  → Muscle
```

**Key features:**
- **Dendrites:** Receive impulses from other neurones or receptors
- **Cell body (soma):** Contains nucleus; maintains the cell
- **Axon:** Long fibre carrying impulse away from cell body
- **Myelin sheath:** Fatty insulation — speeds up impulse (saltatory conduction)
- **Nodes of Ranvier:** Gaps in myelin — impulse jumps between nodes (faster conduction)
- **Axon terminals (synaptic knobs):** Release neurotransmitters' WHERE id = '084facfa-d8b1-4563-b0ec-f4db6e20ed09';

UPDATE topic_sections SET content = '## Nerve Impulses, Synapses, and Reflex Arcs

### Nerve Impulse (Action Potential)
A nerve impulse is an electrical signal caused by changes in ion concentration across the axon membrane.

**Resting potential:** Inside axon is negative compared to outside (−70 mV)
- K⁺ ions inside; Na⁺ ions outside

**Action potential:**
```
Stimulus → Na⁺ channels open → Na⁺ rushes IN → inside becomes positive (+40 mV) → DEPOLARISATION
     ↓
K⁺ channels open → K⁺ rushes OUT → inside becomes negative again → REPOLARISATION
     ↓
Na⁺/K⁺ pump restores resting potential
```

**Speed of nerve impulse:** 1–120 m/s (faster with myelin sheath)

---

### The Synapse
A synapse is a junction between two neurones (or between a neurone and a muscle/gland).

```
Pre-synaptic neurone:          Post-synaptic neurone:
     axon terminal                  dendrite
     ┌──────────┐                 ┌──────────┐
     │ vesicles │                 │ receptor │
     │ ●●●●●●  │                 │ sites    │
     └──────────┘                 └──────────┘
              ← synaptic cleft →
                (20 nm gap)
```

**How transmission occurs:**
1. Impulse arrives at pre-synaptic axon terminal
2. Ca²⁺ ions enter → vesicles containing neurotransmitter move to membrane
3. Neurotransmitter (e.g., **acetylcholine**) released into synaptic cleft by exocytosis
4. Neurotransmitter diffuses across cleft → binds to receptor sites on post-synaptic membrane
5. New impulse generated in post-synaptic neurone
6. Neurotransmitter broken down by enzyme (acetylcholinesterase) → prevents continuous firing
7. Products reabsorbed by pre-synaptic terminal for re-use

**Synapses ensure one-way transmission** (neurotransmitter only releases from pre-synaptic side)

---

### Reflex Arc
A **reflex** is a rapid, automatic, involuntary response to a stimulus.

```
REFLEX ARC:
Stimulus (e.g., pin prick)
      ↓
Receptor (sensory receptor in skin)
      ↓
Sensory neurone (to spinal cord)
      ↓
Relay neurone (in spinal cord — CNS)
      ↓
Motor neurone (from spinal cord)
      ↓
Effector (muscle contracts — withdraws hand)
      ↓
Response (hand pulled away from pin)
```

**Why reflexes are useful:**
- Extremely fast (bypasses brain)
- Protects from injury before conscious awareness
- Examples: knee-jerk, pupil reflex, salivation, blinking

---

### The Brain
| Region | Function |
|---|---|
| **Cerebrum** | Conscious thought, memory, language, voluntary movement, intelligence |
| **Cerebellum** | Balance, coordination of movement, posture |
| **Medulla oblongata** | Controls automatic functions: breathing rate, heart rate, blood pressure |
| **Hypothalamus** | Thermoregulation, osmoregulation, hunger, sleep; controls pituitary gland |
| **Pituitary gland** | "Master gland" — releases hormones that control other endocrine glands |' WHERE id = '549778ac-e159-45f1-8615-f3f6c1f7ea77';

UPDATE topic_sections SET content = '## Sense Organs: The Eye and Ear

### The Human Eye
```
                    Cornea (refracts light)
                      ↓
         ┌─────────────────────────┐
         │   Aqueous humour         │
Iris ──→ │  ┌───┐                  │
Pupil ──→│  │   │  ← Lens          │←── Sclera (white, tough)
         │  └───┘                  │
         │                         │←── Choroid (pigmented; absorbs
         │   Vitreous humour        │     stray light; nourishes retina)
         │                 ┌─────┐ │←── Retina (photoreceptors)
         │                 │ rod │ │←── Fovea (most sensitive area)
         └─────────────────┴─────┴─┘
                              ↓
                          Optic nerve → brain
```

**Structure and Function:**
| Structure | Function |
|---|---|
| Cornea | Refracts (bends) most of the incoming light |
| Iris | Controls amount of light entering eye (contains circular and radial muscles) |
| Pupil | Hole in iris through which light passes |
| Lens | Fine-focuses light onto retina; changes shape (accommodation) |
| Retina | Contains rod cells and cone cells (photoreceptors) |
| Rod cells | Work in dim light; detect black and white; in peripheral retina |
| Cone cells | Work in bright light; detect colour; concentrated at fovea |
| Fovea (yellow spot) | Point of sharpest vision; only cones |
| Blind spot | Where optic nerve exits; no photoreceptors |
| Optic nerve | Carries impulses to the brain (visual cortex) |

---

### Pupil Reflex (Light Reflex)
```
Bright light → circular muscles of iris contract → pupil constricts → less light enters
Dim light → radial muscles of iris contract → pupil dilates → more light enters
```

---

### Accommodation (Focusing)
```
Near object:                    Far object:
Ciliary muscles contract →      Ciliary muscles relax →
Suspensory ligaments loosen →   Suspensory ligaments taut →
Lens becomes FAT (round) →      Lens becomes THIN (flat) →
More refraction →               Less refraction →
Object focused on retina        Object focused on retina
```

---

### Common Eye Defects
| Defect | Cause | Correction |
|---|---|---|
| Short-sightedness (myopia) | Eyeball too long; image in front of retina | Concave (diverging) lens |
| Long-sightedness (hyperopia) | Eyeball too short; image behind retina | Convex (converging) lens |
| Astigmatism | Irregular cornea curvature | Cylindrical lens |
| Colour blindness | Absence of cone cell types | No correction (genetic) |

---

### The Ear (Brief Overview)
**Functions:** Hearing and balance

```
Sound waves → Ear canal → Eardrum (vibrates) → Ossicles (malleus, incus, stapes)
    → Oval window → Cochlea (fluid vibrates → hair cells stimulated)
    → Auditory nerve → Brain
```

**Balance:** Semicircular canals (3 planes) detect rotation; Utricle and saccule detect linear acceleration' WHERE id = 'ed4dd587-1151-4254-984c-f79986b1bd61';

UPDATE topic_sections SET content = '## Hormone Disorders and Worked Examples

### The Endocrine System — Major Glands and Hormones
| Gland | Hormone | Target | Effect |
|---|---|---|---|
| **Pituitary** | ADH | Kidney collecting duct | Increases water reabsorption |
| **Pituitary** | Growth hormone (GH) | Bone/muscle | Stimulates growth |
| **Thyroid** | Thyroxine | All cells | Controls metabolic rate |
| **Adrenal (medulla)** | Adrenaline | Heart, liver, muscles | Fight or flight response |
| **Adrenal (cortex)** | Aldosterone | Kidney | Controls Na⁺ reabsorption |
| **Pancreas (beta cells)** | Insulin | Liver, muscle | Lowers blood glucose |
| **Pancreas (alpha cells)** | Glucagon | Liver | Raises blood glucose |
| **Ovaries** | Oestrogen | Uterus, secondary sexual organs | Female characteristics; menstrual cycle |
| **Ovaries** | Progesterone | Uterus | Maintains uterine lining |
| **Testes** | Testosterone | Male sexual organs | Male characteristics; sperm production |

---

### Hormone Disorders

**Diabetes mellitus:**
- Type 1: No insulin → glucose not taken up by cells → hyperglycaemia → glucose in urine
- Symptoms: excessive thirst, frequent urination, weight loss, fatigue
- Treatment: insulin injections, diet control

**Goitre:**
- Iodine deficiency → insufficient thyroxine → thyroid gland enlarges
- Common in areas with low iodine in soil/food
- Prevention: iodised salt (common in Ghana, Nigeria)

**Gigantism/Acromegaly:**
- Excess growth hormone in childhood → gigantism
- Excess GH in adulthood → acromegaly (enlarged hands, feet, facial features)

**Dwarfism:**
- Insufficient growth hormone in childhood

---

### Nervous vs Hormonal Communication
| Feature | Nervous System | Endocrine System |
|---|---|---|
| Speed | Very fast (milliseconds) | Slow (minutes to hours) |
| Message | Electrical impulse | Chemical (hormone) in blood |
| Response | Short-lived | Long-lasting |
| Target | Specific (single cell/organ) | General (many cells) |
| Examples | Reflex arc, pupil reflex | Blood glucose regulation, puberty |

---

### Worked Example: Adrenaline (Fight or Flight)
**Scenario:** Student sees a dangerous dog.

Adrenaline released from adrenal glands → bloodstream → reaches multiple targets:
- Heart: rate and force increase → more blood to muscles
- Liver: glycogen → glucose → more energy available
- Lungs: bronchioles dilate → more O₂ intake
- Muscles: receive more blood and glucose
- Skin: blood vessels constrict → blood diverted to muscles
- Pupils: dilate → better vision
- Digestive system: slows down → energy redirected

This prepares body to FIGHT or FLEE from the danger.' WHERE id = 'c7f6b827-1e54-4abe-be20-43ce7ddea329';

UPDATE topic_sections SET content = '## WASSCE Practice Questions: Nervous System and Hormones

### Multiple Choice

**Q1.** Which part of the brain is responsible for controlling balance and coordination?
A) Cerebrum   B) Hypothalamus   C) Cerebellum   D) Medulla oblongata
**Answer: C**

**Q2.** In the reflex arc, which neurone connects the sensory neurone to the motor neurone?
A) Relay (interneurone)   B) Afferent neurone   C) Efferent neurone   D) Myelinated neurone
**Answer: A**

**Q3.** Which hormone is released in response to low blood glucose?
A) Insulin   B) Adrenaline   C) Glucagon   D) Thyroxine
**Answer: C** — Glucagon from alpha cells of pancreas raises blood glucose

**Q4.** The pupil of the eye becomes smaller in bright light because:
A) Radial muscles contract   B) Circular muscles contract   C) Lens flattens   D) Retina adapts
**Answer: B** — Circular muscles contract → constrict pupil

**Q5.** Which cells in the retina function in dim light and detect black and white?
A) Cone cells   B) Rod cells   C) Ganglion cells   D) Bipolar cells
**Answer: B**

---

### Structured Questions

**Q6.** A person accidentally touches a very hot surface and immediately withdraws their hand.
(a) Name this type of response. [1]
**Reflex action**

(b) Draw and label the pathway of nervous impulses involved. [4]
Receptor (heat receptor in skin) → Sensory neurone → Relay neurone (spinal cord) → Motor neurone → Effector (biceps muscle) → Response (arm withdraws)

(c) Why is this type of response important? [2]
- Very fast — does not require conscious thought
- Protects the body from injury before the brain can process the sensation

---

**Q7.** Compare the nervous system and the endocrine system as means of communication in the body. [6]

| Feature | Nervous System | Endocrine System |
|---|---|---|
| Speed | Fast | Slow |
| Duration | Short | Long |
| Type of signal | Electrical impulse | Chemical hormone in blood |
| Specificity | Specific target organ | Widespread/general |
| Example | Withdrawal reflex | Insulin regulation |

---

**Q8.** Describe how the pancreas and liver work together to maintain a constant blood glucose level. [8]

Key points:
- After a meal: Blood glucose rises → pancreatic beta cells release insulin
- Insulin promotes glucose uptake by liver and muscle cells
- Liver converts glucose to glycogen (glycogenesis)
- Blood glucose falls back to normal → insulin secretion reduced

- Between meals/exercise: Blood glucose falls → pancreatic alpha cells release glucagon
- Glucagon stimulates liver to break down glycogen → glucose (glycogenolysis)
- Blood glucose rises back to normal → glucagon secretion reduced
- This is negative feedback — maintains blood glucose at ~90 mg/100 mL

**WASSCE Tip:** Always state the organ that secretes the hormone AND the organ it acts on — both facts are needed for full marks!' WHERE id = 'd671775e-1cec-4355-906a-e0ae72ce2953';
