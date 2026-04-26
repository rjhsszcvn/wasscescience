
/*
  # Upgrade Chemistry Notes: Topics 1-5 (Comprehensive High-Quality Notes)
  Replaces existing sections with detailed WASSCE-aligned content.
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- ============================================================
  -- TOPIC 1: ATOMIC STRUCTURE AND PERIODIC TABLE
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Atomic Structure and Periodic Table' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Atomic Structure: Subatomic Particles and Atomic Models', E'
## The Atom: Fundamental Unit of Matter

An **atom** is the smallest particle of an element that retains the chemical properties of that element.

### Subatomic Particles

| Particle | Symbol | Location | Relative Mass | Relative Charge |
|----------|--------|----------|--------------|----------------|
| Proton | p+ | Nucleus | 1 | +1 |
| Neutron | n0 | Nucleus | 1 | 0 |
| Electron | e- | Shells/orbitals | ~0 (1/1836) | -1 |

The **nucleus** contains protons and neutrons (nucleons). Electrons orbit in **energy levels (shells)**. Neutral atoms have equal protons and electrons.

---

### Key Atomic Definitions

**Atomic Number (Z):** Number of protons in the nucleus. Uniquely identifies the element.
- Z = protons = electrons (neutral atom)

**Mass Number (A):** Total protons + neutrons in nucleus.
- Neutrons = A - Z

**Notation:** A/Z X (e.g., 23/11 Na: 11 protons, 12 neutrons, 11 electrons)

---

### Historical Atomic Models

**1. Dalton (1803):** Atoms are tiny, hard, indivisible spheres. Same element = identical atoms.

**2. Thomson (1897):** Discovered electrons using cathode ray tube. "Plum pudding" model — electrons embedded in positive sphere.

**3. Rutherford (1911) — Gold Foil Experiment:**
- Fired alpha particles at gold foil
- Most passed straight through (atom = mostly empty space)
- Some deflected; very few bounced back (dense, tiny, positive nucleus)
- Concluded: atom has a small, dense, positively charged nucleus

**4. Bohr (1913):**
- Electrons orbit nucleus in FIXED circular energy levels (shells)
- Electrons absorb/emit energy when jumping between shells
- Explains hydrogen''s atomic spectrum

**5. Modern Quantum Mechanical Model:**
- Electrons exist in probability regions called orbitals (s, p, d, f)
- Currently accepted model

---

### Isotopes

**Isotopes** are atoms of the **same element** with the **same atomic number** but **different mass numbers** (different numbers of neutrons).

**Same:** chemical properties (same element, same valence electrons)
**Different:** physical properties (mass, density, radioactivity)

| Element | Isotope | Protons | Neutrons | Notes |
|---------|---------|---------|----------|-------|
| Hydrogen | 1H (Protium) | 1 | 0 | Most abundant |
| Hydrogen | 2H (Deuterium) | 1 | 1 | Used in heavy water |
| Hydrogen | 3H (Tritium) | 1 | 2 | Radioactive |
| Carbon | 12C | 6 | 6 | Standard for Ar |
| Carbon | 14C | 6 | 8 | Radioactive dating |
| Chlorine | 35Cl | 17 | 18 | 75% abundance |
| Chlorine | 37Cl | 17 | 20 | 25% abundance |
| Uranium | 235U | 92 | 143 | Nuclear fission fuel |

---

### Relative Atomic Mass (Ar)

The weighted average mass of all naturally occurring isotopes compared to 1/12 the mass of carbon-12.

**Formula:**
Ar = Sum of (isotope mass x percentage abundance) / 100

**Example — Chlorine:**
Ar(Cl) = (35 x 75 + 37 x 25) / 100 = (2625 + 925) / 100 = 3550 / 100 = **35.5**

**Example — Boron (10B: 20%, 11B: 80%):**
Ar(B) = (10 x 20 + 11 x 80) / 100 = (200 + 880) / 100 = **10.8**
', 'overview', 1),

  (v_topic_id, 'Electronic Configuration and the Periodic Table', E'
## Electron Arrangement in Atoms

### Electron Shells (Energy Levels)

| Shell | n | Maximum Electrons | Elements |
|-------|---|------------------|---------|
| First | 1 | 2 | H, He |
| Second | 2 | 8 | Li to Ne |
| Third | 3 | 8 (for Z up to 20) | Na to Ar |
| Fourth | 4 | 18+ | K, Ca, transition metals |

---

### Electronic Configurations — First 20 Elements

| Element | Z | Config | Valence e- | Group | Period |
|---------|---|--------|-----------|-------|--------|
| Hydrogen | 1 | 1 | 1 | I | 1 |
| Helium | 2 | 2 | 2 | 0 | 1 |
| Lithium | 3 | 2,1 | 1 | I | 2 |
| Beryllium | 4 | 2,2 | 2 | II | 2 |
| Boron | 5 | 2,3 | 3 | III | 2 |
| Carbon | 6 | 2,4 | 4 | IV | 2 |
| Nitrogen | 7 | 2,5 | 5 | V | 2 |
| Oxygen | 8 | 2,6 | 6 | VI | 2 |
| Fluorine | 9 | 2,7 | 7 | VII | 2 |
| Neon | 10 | 2,8 | 8 (full) | 0 | 2 |
| Sodium | 11 | 2,8,1 | 1 | I | 3 |
| Magnesium | 12 | 2,8,2 | 2 | II | 3 |
| Aluminium | 13 | 2,8,3 | 3 | III | 3 |
| Silicon | 14 | 2,8,4 | 4 | IV | 3 |
| Phosphorus | 15 | 2,8,5 | 5 | V | 3 |
| Sulfur | 16 | 2,8,6 | 6 | VI | 3 |
| Chlorine | 17 | 2,8,7 | 7 | VII | 3 |
| Argon | 18 | 2,8,8 | 8 (full) | 0 | 3 |
| Potassium | 19 | 2,8,8,1 | 1 | I | 4 |
| Calcium | 20 | 2,8,8,2 | 2 | II | 4 |

**Key rules:**
- **Group number = number of valence electrons** (Groups I to VII)
- **Period number = number of electron shells**

---

### The Periodic Table — Key Points

**Periods (horizontal rows):** Element arranged in order of increasing atomic number. Period number = number of shells.

**Groups (vertical columns):** Elements with same number of valence electrons. Same group = similar chemical properties.

| Group | Name | Valence e- | Ion Formed |
|-------|------|-----------|-----------|
| I | Alkali metals | 1 | +1 (e.g., Na+) |
| II | Alkaline earth metals | 2 | +2 (e.g., Ca2+) |
| VII | Halogens | 7 | -1 (e.g., Cl-) |
| 0 | Noble gases | 8 (2 for He) | None (stable) |

---

### Periodic Trends

**Atomic Radius:**
- Across a period: DECREASES (more protons pull electrons closer; same shell)
- Down a group: INCREASES (more shells added)

**Ionization Energy (energy to remove outermost electron):**
- Across a period: INCREASES (stronger nuclear pull)
- Down a group: DECREASES (outer electrons further, more shielded)

**Electronegativity (ability to attract bonding electrons):**
- Across a period: INCREASES
- Down a group: DECREASES
- Most electronegative: **Fluorine (F)**

**Metallic character:**
- Across a period: DECREASES (metals to non-metals)
- Down a group: INCREASES

---

### Group I — Alkali Metals (Li, Na, K, Rb, Cs, Fr)

- Soft, silvery metals; stored under oil (react with air/water)
- 1 valence electron — readily lost to form +1 ions
- React with water: 2M + 2H2O → 2MOH + H2 (vigorous, exothermic)
- Reactivity INCREASES down the group (outer electron further from nucleus, easier to remove)

**K + water:** Burns with lilac flame, melts, moves rapidly, produces H2 gas

---

### Group VII — Halogens (F, Cl, Br, I, At)

- Non-metals with 7 valence electrons; gain 1 electron to form -1 ions
- Exist as diatomic molecules (F2, Cl2, Br2, I2)

| Halogen | State at RTP | Color | Reactivity |
|---------|-------------|-------|-----------|
| Fluorine (F2) | Gas | Pale yellow | Most reactive |
| Chlorine (Cl2) | Gas | Yellow-green | Very reactive |
| Bromine (Br2) | Liquid | Red-brown | Moderate |
| Iodine (I2) | Solid | Grey-black | Least reactive |

**Reactivity DECREASES down the group** (harder to attract electron into larger shell)

**Displacement reactions (more reactive halogen displaces less reactive):**
- Cl2 + 2KBr → 2KCl + Br2 (solution turns orange-brown — Br2 formed)
- Cl2 + 2KI → 2KCl + I2 (solution turns brown-black — I2 formed)
- Br2 + 2KI → 2KBr + I2 (bromine displaces iodine)
- Br2 + KCl → NO REACTION (bromine cannot displace chlorine)

---

### Group 0 — Noble Gases (He, Ne, Ar, Kr, Xe, Rn)

- Full outer shells: chemically inert, do not react
- Monatomic gases
- Uses: He (balloons, dirigibles — non-flammable), Ne (neon signs), Ar (welding shield gas, light bulbs), Kr (flash photography), Xe (hospital lighting)

---

### Transition Metals (d-block, Groups 3-12)

Properties different from Group I/II metals:
- **Colored compounds:** Fe2+ = pale green; Fe3+ = yellow-brown; Cu2+ = blue; Mn2+ = pink/pale
- **Variable oxidation states:** Fe (+2, +3); Cu (+1, +2); Mn (+2, +4, +7); Cr (+2, +3, +6)
- **Catalytic activity:** Fe (Haber process), V2O5 (Contact process), Pt/Rh (catalytic converters), Ni (hydrogenation of oils)
- Higher densities, melting points, and hardness than Group I metals

---

### Ions and Isoelectronic Species

Atoms gain/lose electrons to achieve noble gas configurations:
- Na (2,8,1) → Na+ (2,8) = Ne configuration
- Mg (2,8,2) → Mg2+ (2,8) = Ne configuration
- Al (2,8,3) → Al3+ (2,8) = Ne configuration
- Cl (2,8,7) → Cl- (2,8,8) = Ar configuration
- O (2,6) → O2- (2,8) = Ne configuration
- Ca (2,8,8,2) → Ca2+ (2,8,8) = Ar configuration

**Isoelectronic species:** Same number of electrons → same configuration
Na+, Mg2+, Al3+, F-, O2- are ALL isoelectronic with Ne (10 electrons)

---

### Flame Tests

| Metal Ion | Flame Color |
|-----------|------------|
| Lithium (Li+) | Crimson/bright red |
| Sodium (Na+) | Bright/persistent yellow |
| Potassium (K+) | Lilac/violet |
| Calcium (Ca2+) | Brick red/orange-red |
| Barium (Ba2+) | Apple/pale green |
| Copper (Cu2+) | Blue-green |
', 'explanation', 2),

  (v_topic_id, 'Oxides Across Periods and Detailed Group Comparisons', E'
## Oxides Across Period 3

The nature of oxides changes from basic (metal oxides) to acidic (non-metal oxides) across a period.

| Element | Oxide | Type | Nature in Water |
|---------|-------|------|----------------|
| Sodium (Na) | Na2O | Basic | Strongly alkaline (NaOH) |
| Magnesium (Mg) | MgO | Basic | Weakly alkaline (Mg(OH)2) |
| Aluminium (Al) | Al2O3 | Amphoteric | Reacts with acids AND bases |
| Silicon (Si) | SiO2 | Acidic | Insoluble (silicic acid) |
| Phosphorus (P) | P2O5 | Acidic | Strongly acidic (H3PO4) |
| Sulfur (S) | SO3 | Acidic | Strongly acidic (H2SO4) |
| Chlorine (Cl) | Cl2O7 | Acidic | Strongly acidic |

**Amphoteric oxides** react with both acids AND bases:
- Al2O3 + 6HCl → 2AlCl3 + 3H2O (acting as base)
- Al2O3 + 2NaOH + 3H2O → 2NaAl(OH)4 (acting as acid)

Other amphoteric oxides: ZnO, SnO, PbO

---

## Comparing Group I and Group II

| Property | Group I | Group II |
|---------|---------|---------|
| Valence electrons | 1 | 2 |
| Ion formed | M+ | M2+ |
| Reactivity | Very reactive | Less reactive than Group I |
| Reaction with water | Vigorous (all react) | Ca reacts; Mg reacts slowly; Be does not |
| Oxide formula | M2O | MO |
| Hydroxide | MOH (soluble) | M(OH)2 (sparingly soluble) |

**Group II reaction with water (less vigorous):**
Ca + 2H2O → Ca(OH)2 + H2 (vigorous)
Mg + H2O → MgO + H2 (only with steam)

---

## Explaining Periodic Trends — Detailed

### Why atomic radius decreases across a period:
Going from Na to Cl (Period 3), the atomic number increases from 11 to 17. More protons in the nucleus = greater nuclear charge. All extra electrons are added to the SAME shell (shell 3). The stronger nuclear pull contracts the electron cloud inward. The increased shielding from additional electrons in the same shell is NOT effective (same-shell electrons shield each other poorly). Net result: stronger pull → smaller atom.

### Why ionization energy generally increases across a period:
More protons = stronger nuclear attraction on electrons. Electrons are at similar distances from nucleus (same shell). Therefore more energy is needed to remove an electron. Exceptions occur at Group III (Al) and Group VI (S) due to sub-shell effects.

### Why reactivity of Group I increases down the group:
From Li to Cs, each element has one more electron shell. The outermost electron is progressively further from the nucleus and more shielded by inner electrons. The effective nuclear attraction on the valence electron is weaker. Less energy (lower ionization energy) is needed to remove the valence electron → atom loses its electron more readily → more reactive.

### Why reactivity of Group VII decreases down the group:
Halogens react by GAINING an electron. From F to I, each element has more shells. The incoming electron enters a shell that is further from the nucleus. The nucleus exerts less attraction on this distant incoming electron. It is harder to attract the extra electron → less reactive.
', 'definitions', 3),

  (v_topic_id, 'Worked Examples: Atomic Structure and Periodic Table', E'
## Worked Examples

### Example 1: Subatomic Particles
**Q:** An atom has the notation 40/20 Ca. Find the number of protons, neutrons, and electrons.

**Solution:**
- Atomic number Z = 20 → **20 protons**
- Mass number A = 40
- Neutrons = 40 - 20 = **20 neutrons**
- Neutral atom → electrons = protons = **20 electrons**
- Electronic config: **2, 8, 8, 2**

---

### Example 2: Relative Atomic Mass Calculation
**Q:** Neon has two main isotopes: 20Ne (90.5%) and 22Ne (9.5%). Calculate Ar(Ne).

**Solution:**
Ar(Ne) = (20 x 90.5 + 22 x 9.5) / 100
= (1810 + 209) / 100
= 2019 / 100
= **20.19 ≈ 20.2**

---

### Example 3: Electronic Configuration and Prediction
**Q:** Element Y has atomic number 16. Write its electronic configuration and predict its group, period, and ion formed.

**Solution:**
- Config: **2, 8, 6**
- Shells = 3 → **Period 3**
- Valence electrons = 6 → **Group VI**
- Needs 2 more electrons to fill outer shell → forms **S2- ion** (sulfide)
- 6 valence electrons → non-metal (**Sulfur, S**)

---

### Example 4: Periodic Trends
**Q:** Explain why fluorine is more electronegative than chlorine.

**Solution:**
Both F and Cl are in Group VII with 7 valence electrons, but:
- F is in Period 2 (2 shells); Cl is in Period 3 (3 shells)
- F has a smaller atomic radius — its nucleus is closer to the bonding electrons
- F has a greater nuclear charge relative to its atomic size
- Therefore F exerts a stronger pull on bonding electrons → **higher electronegativity**

---

### Example 5: Isoelectronic Species
**Q:** Write the electronic configurations of Ca2+ and Cl-. Are they isoelectronic?

**Solution:**
- Ca (Z=20): config 2,8,8,2 → Ca2+ loses 2e- → **2,8,8** (18 electrons)
- Cl (Z=17): config 2,8,7 → Cl- gains 1e- → **2,8,8** (18 electrons)
- Both have 18 electrons with config 2,8,8 (same as Ar)
- **YES, they are isoelectronic** — both have the argon electronic configuration

---

### Example 6: Halogen Displacement
**Q:** Chlorine water is added to potassium iodide solution. Describe observations and write equations.

**Solution:**
**Observations:** Solution turns brown/dark brown; if cyclohexane (organic layer) is added, it turns violet/purple.

**Reason:** Cl2 is more reactive than I2 and displaces iodine from the iodide salt.

**Ionic equation:** Cl2(aq) + 2I-(aq) → 2Cl-(aq) + I2(aq)

**Explanation:** Chlorine is a better oxidizing agent (higher up in reactivity) and so it oxidizes I- to I2, while itself being reduced to Cl-.

---

### Example 7: Predicting Formula from Position in Periodic Table
**Q:** An element X is in Period 3, Group II. Another element Y is in Period 3, Group VII. Predict the formula of the compound formed between X and Y.

**Solution:**
- X is in Group II → forms X2+ ion (loses 2 electrons)
- Y is in Group VII → forms Y- ion (gains 1 electron)
- For electrical neutrality: 1 X2+ needs 2 Y-
- Formula: **XY2**
- (Example: Mg and Cl would give MgCl2)
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Atomic Structure and Periodic Table', E'
## WASSCE Practice Questions

### Section A: Multiple Choice

**Q1.** Which particle determines the chemical properties of an atom?
- A) Proton B) Neutron C) Electron D) Nucleon
**Answer: C** — Valence electrons determine chemical reactivity and bonding.

**Q2.** Isotopes 35Cl and 37Cl differ in:
- A) Proton number B) Electron number C) Neutron number D) Chemical properties
**Answer: C** — Same element (same protons/electrons) but different neutrons.

**Q3.** Element with config 2,8,7 belongs to:
- A) Period 2, Group VII B) Period 3, Group VII C) Period 2, Group I D) Period 3, Group I
**Answer: B** — 3 shells = Period 3; 7 valence electrons = Group VII

**Q4.** Which element has the highest electronegativity?
- A) Oxygen B) Chlorine C) Fluorine D) Nitrogen
**Answer: C**

**Q5.** Going down Group I, the reactivity of metals:
- A) Decreases B) Increases C) Remains the same D) First increases then decreases
**Answer: B**

---

### Section B: Structured Questions

**Q6.** The table shows information about three particles:

| Particle | Protons | Neutrons | Electrons |
|----------|---------|---------|-----------|
| X | 11 | 12 | 10 |
| Y | 12 | 12 | 10 |
| Z | 11 | 13 | 11 |

(a) Which particles are isotopes? Explain. [2]
(b) Which particles are isoelectronic? Explain. [2]
(c) Identify X and state whether it is a cation or anion. [2]

**Answers:**
(a) X and Z are isotopes — both have 11 protons (same element, sodium/Na) but different neutrons (12 vs 13). Same atomic number, different mass number.

(b) X and Y are isoelectronic — both have 10 electrons (electronic config 2,8, same as neon).

(c) X has 11 protons but 10 electrons → net charge = +1 → **Na+ → cation**

---

**Q7.** (a) Calculate Ar(Mg) given: 24Mg (79%), 25Mg (10%), 26Mg (11%). [2]
(b) Explain why Na and K have similar chemical properties. [2]
(c) Why is chlorine more reactive than iodine? [3]

**Answers:**
(a) Ar(Mg) = (24x79 + 25x10 + 26x11)/100 = (1896+250+286)/100 = 2432/100 = **24.32**

(b) Na (2,8,1) and K (2,8,8,1) both have **1 valence electron** in Group I. Both easily lose this single electron to form +1 ions. They react similarly — with water to form alkali and hydrogen; with oxygen and halogens.

(c) Chlorine has a smaller atomic radius than iodine (fewer shells). The chlorine nucleus is closer to the outer shell, exerting stronger attraction on the incoming electron. Chlorine more easily gains an electron to form Cl-, making it more reactive. Iodine is larger, the incoming electron would be further from the nucleus — harder to attract.

---

**Q8.** Describe and explain the trend in:
(a) Reactivity down Group I (Li to Cs) [3]
(b) Reactivity down Group VII (F to I) [3]

**Answers:**
(a) Reactivity **increases** down Group I. Each successive element has one more electron shell. The valence electron is progressively further from the nucleus and more screened by inner shell electrons. The effective nuclear attraction on the outermost electron decreases → less energy needed to remove it → element loses electron more readily → MORE reactive.

(b) Reactivity **decreases** down Group VII. Halogens react by gaining one electron into their outer shell. Going from F to I, each element has more electron shells — the outer shell is further from the nucleus. The nuclear attraction on an incoming electron decreases. It becomes progressively harder to attract an extra electron → LESS reactive.
', 'practice', 5);


  -- ============================================================
  -- TOPIC 2: CHEMICAL BONDING
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Chemical Bonding' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Types of Chemical Bonds', E'
## Why Atoms Bond

Atoms form chemical bonds to achieve a **stable electronic configuration** — usually a full outer shell (8 electrons = **octet**; 2 electrons for H/He = **duet**).

**Three main types of chemical bonds:**
1. **Ionic Bond** — transfer of electrons (metal → non-metal)
2. **Covalent Bond** — sharing of electrons (non-metal + non-metal)
3. **Metallic Bond** — sea of delocalised electrons (metal + metal)

---

## 1. Ionic Bonding (Electrovalent Bonding)

**Definition:** The strong electrostatic attraction between **oppositely charged ions** formed when electrons are completely transferred from a metal atom to a non-metal atom.

### Formation of NaCl

1. Na (2,8,1) → Na+ (2,8) + e-       [sodium LOSES 1 electron → cation]
2. Cl (2,8,7) + e- → Cl- (2,8,8)     [chlorine GAINS 1 electron → anion]
3. Na+ and Cl- attract each other → **ionic bond**

Both achieve noble gas configurations: Na+ = Ne config; Cl- = Ar config

### Other Ionic Compounds

| Compound | Cation | Anion | Formula | Bond Formation |
|----------|--------|-------|---------|----------------|
| Magnesium oxide | Mg2+ | O2- | MgO | Mg loses 2e-, O gains 2e- |
| Calcium chloride | Ca2+ | 2Cl- | CaCl2 | Ca loses 2e-, each Cl gains 1e- |
| Sodium oxide | 2Na+ | O2- | Na2O | 2 Na lose 1e- each, O gains 2e- |
| Aluminium oxide | 2Al3+ | 3O2- | Al2O3 | 2 Al lose 3e- each, 3 O gain 2e- each |
| Potassium fluoride | K+ | F- | KF | K loses 1e-, F gains 1e- |

**Rule:** Total charges must balance to zero.
Example: Al3+ and O2- → need 2 Al3+ (+6 total) and 3 O2- (-6 total) → Al2O3

### Properties of Ionic Compounds

| Property | Value/State | Explanation |
|---------|------------|-------------|
| Melting/boiling point | HIGH | Strong electrostatic forces between ions need much energy |
| State at room temperature | Solid | Ions locked in rigid crystal lattice |
| Conductivity (solid) | Does NOT conduct | Ions fixed, cannot move |
| Conductivity (molten/dissolved) | CONDUCTS | Ions free to move and carry charge |
| Solubility in water | Usually soluble | Polar water molecules attract and separate ions |
| Solubility in organic solvents | Insoluble | Non-polar solvents cannot break ionic lattice |
| Crystal structure | Regular lattice | Each ion surrounded by opposite ions (e.g., NaCl: each Na+ by 6 Cl-) |
| Brittleness | Brittle | Shifting layers brings like charges together → repulsion → shatters |

---

## 2. Covalent Bonding

**Definition:** A covalent bond is formed when two non-metal atoms **share** one or more pairs of electrons, each atom contributing one electron per bond (normally).

### Types of Covalent Bonds

| Bond | Shared Pairs | Electrons | Bond Energy | Bond Length | Example |
|------|-------------|-----------|------------|-------------|---------|
| Single | 1 | 2 | Lowest | Longest | H-H, H-Cl |
| Double | 2 | 4 | Medium | Medium | O=O, C=O |
| Triple | 3 | 6 | Highest | Shortest | N≡N, C≡C |

### Common Covalent Molecules

| Molecule | Formula | Bonds | Shape | Bond Angle |
|---------|---------|-------|-------|-----------|
| Hydrogen | H2 | H-H single | Linear | 180 |
| Water | H2O | 2 O-H single | Bent/V-shape | 104.5 |
| Ammonia | NH3 | 3 N-H single | Trigonal pyramidal | 107 |
| Carbon dioxide | CO2 | 2 C=O double | Linear | 180 |
| Methane | CH4 | 4 C-H single | Tetrahedral | 109.5 |
| Chlorine | Cl2 | Cl-Cl single | Linear | 180 |
| Nitrogen | N2 | N≡N triple | Linear | 180 |
| Ethene | C2H4 | C=C + 4 C-H | Planar | 120 |

### Dative (Coordinate) Covalent Bond

A covalent bond where **BOTH electrons** come from the **same atom** (the donor atom has a lone pair).

Examples:
- NH4+ (ammonium ion): NH3 donates its lone pair to H+ → all 4 N-H bonds then equivalent
- H3O+ (oxonium ion): H2O donates lone pair to H+
- CO molecule: one bond is dative

### Properties of Simple Covalent Compounds

| Property | Description | Reason |
|---------|-------------|--------|
| Melting/boiling point | LOW | Weak intermolecular forces (van der Waals) between molecules |
| Conductivity | Does not conduct | No ions or free electrons |
| Solubility in water | Variable | Polar → dissolve; non-polar → do not |
| Solubility in organic solvents | Usually soluble | Non-polar dissolves in non-polar |
| State at RTP | Gas or liquid (usually) | Weak forces, easy to separate |

**IMPORTANT DISTINCTION:**
- The covalent BONDS within molecules are strong
- The INTERMOLECULAR FORCES between molecules are weak
- Melting/boiling destroys intermolecular forces (NOT covalent bonds)

### Giant Covalent Structures

Some covalent substances have atoms bonded in giant networks — these have very HIGH melting points.
Examples: Diamond, Graphite, Silicon dioxide (SiO2), Silicon (Si)
', 'overview', 1),

  (v_topic_id, 'Metallic Bonding, Intermolecular Forces and Allotropy', E'
## 3. Metallic Bonding

**Definition:** The strong electrostatic attraction between a lattice of positive metal ions and a "sea" of **delocalised (free-moving) electrons**.

### The Metal Structure
- Metal atoms release valence electrons → become positive ions (cations)
- These electrons are free to move throughout the entire metal structure ("sea of electrons")
- The positive ion cores are held in a regular, tightly packed lattice
- Strong attraction between ions and electron sea = **metallic bond**

### Properties of Metals Explained

| Property | Explanation |
|---------|-------------|
| Good electrical conductor | Delocalised electrons carry charge (current) freely throughout metal |
| Good thermal conductor | Delocalised electrons rapidly transfer kinetic energy (heat) |
| Malleable (can be shaped) | Ion layers can slide past each other — electron sea maintains bonding |
| Ductile (can be drawn into wire) | Same as above — bonds do not break when metal deforms |
| High melting/boiling points | Strong forces between ions and electron sea — need much energy |
| Lustrous/shiny | Free electrons reflect light |
| Sonorous (ring when struck) | Ion layers vibrate, transmit sound waves |

**Strength of metallic bond depends on:**
- Charge of ion: more charge = stronger (Al3+ > Mg2+ > Na+)
- Size of ion: smaller = stronger bond (ions closer to electron sea)
- Number of delocalised electrons: more = stronger

**Explanation for Al having higher melting point than Na:**
Al donates 3 electrons to the sea (vs Na''s 1), and Al3+ is smaller → stronger metallic bonding.

---

## 4. Intermolecular Forces

These are forces BETWEEN molecules (NOT the covalent bonds within molecules). Weaker than covalent/ionic/metallic bonds.

### Types (in order of increasing strength)

**a) Van der Waals forces (London dispersion forces):**
- Present in ALL substances
- Caused by temporary random uneven distribution of electrons → temporary dipoles
- Stronger in larger molecules (more electrons, larger surface area)
- Only forces in noble gases and non-polar molecules (e.g., CH4, CCl4)

**b) Dipole-dipole forces:**
- In POLAR molecules (permanent dipoles)
- + end of one molecule attracted to - end of another
- Examples: HCl, SO2, CHCl3

**c) Hydrogen bonding (strongest intermolecular force):**
- ONLY when H is bonded to a highly electronegative atom: **N, O, or F**
- Very strong dipole-dipole interaction involving H
- H is very small, so + charge is concentrated → very strong attraction
- Found in: H2O, HF, NH3, alcohols (R-OH), carboxylic acids (R-COOH), amines (R-NH2)

### Effects of Hydrogen Bonding

**Water (H2O):** Each molecule forms up to 4 hydrogen bonds (2 donor, 2 acceptor)

Consequences of H-bonding in water:
1. Much higher boiling point than expected (100°C vs predicted -70°C for non-H-bonding molecule)
2. Ice is LESS dense than liquid water (H-bonds hold molecules in open hexagonal lattice)
3. Water is an excellent solvent (can H-bond with many solutes)
4. High surface tension and specific heat capacity

**Comparison of boiling points in Group VI hydrides:**
H2Te: -2°C, H2Se: -41°C, H2S: -60°C (decreasing with decreasing molecular size — normal trend)
H2O: +100°C — ANOMALOUSLY HIGH due to hydrogen bonding (does not fit the trend!)

---

## 5. Allotropy

**Allotropy:** The existence of an element in two or more different physical forms (**allotropes**) in the same physical state, differing in the arrangement of atoms.

### Allotropes of Carbon

#### Diamond
- Each C bonded to **4 others** in a 3D tetrahedral giant covalent network
- No free electrons
- Properties: Hardest natural substance; very high mp (3550°C); electrical insulator; transparent; high refractive index
- Uses: Cutting tools, drill bits, jewelry, grinding

#### Graphite
- C atoms in flat **hexagonal layers**
- Within each layer: each C bonded to **3 others** (strong covalent bonds)
- Between layers: weak van der Waals forces
- ONE electron per C is delocalised between layers

| Property | Reason |
|---------|--------|
| Soft and slippery | Layers slide easily (weak forces between layers) |
| Electrical conductor | Delocalised electrons carry charge |
| High melting point | Strong covalent bonds within layers |
| Good lubricant | Layers slide over each other |

Uses: Electrodes, lubricant, pencil lead, moderator in nuclear reactors

**Key comparison: Diamond vs Graphite**

| Feature | Diamond | Graphite |
|---------|---------|---------|
| Bonding | 4 covalent bonds per C | 3 covalent bonds per C + delocalized e- |
| Structure | 3D tetrahedral network | 2D layered structure |
| Hardness | Hardest (10 Mohs) | Very soft (1-2 Mohs) |
| Conductivity | Insulator | Good conductor |
| Color | Transparent/colorless | Black, opaque |
| Density | 3.51 g/cm3 | 2.09 g/cm3 |

#### Fullerenes (C60 — Buckminsterfullerene "Bucky ball")
- 60 C atoms in spherical "football" cage (20 hexagons + 12 pentagons)
- Each C bonded to 3 others
- Molecular (not giant) structure → lower melting point than diamond/graphite
- Uses: Drug delivery, lubricants, superconductors, nanotechnology

#### Graphene
- A single atomic layer of graphite
- Strongest material known per unit weight
- Excellent electrical/thermal conductor
- Transparent
- Used in electronics, composites, sensors

### Allotropes of Sulfur

| Allotrope | Form | Structure | Stability |
|-----------|------|-----------|-----------|
| Rhombic sulfur | Octahedral crystals | S8 puckered rings | Below 96°C |
| Monoclinic sulfur | Needle-like crystals | S8 rings (different packing) | 96°C to 119°C |
| Amorphous (plastic) sulfur | Rubbery solid | Long Sn chains | Unstable, reverts to rhombic |

**Transition temperature (rhombic ↔ monoclinic): 96°C**

### Summary: Comparing Bond Types

| Feature | Ionic | Simple Covalent | Giant Covalent | Metallic |
|---------|-------|----------------|---------------|---------|
| Particles | Ions | Molecules | Atoms (network) | Metal ions + e- sea |
| Melting point | High | Low | Very high | High |
| Conduct (solid) | No | No | No (except graphite) | Yes |
| Conduct (solution) | Yes | No | No | - |
| Solubility in H2O | Usually yes | Variable | No | - |
| Malleable | No (brittle) | N/A | No | Yes |
| Examples | NaCl, MgO | H2O, CO2, CH4 | Diamond, SiO2 | Fe, Cu, Al |
', 'explanation', 2),

  (v_topic_id, 'VSEPR Theory, Polarity and Bond Comparisons', E'
## VSEPR Theory — Molecular Shapes

**VSEPR (Valence Shell Electron Pair Repulsion) Theory:** Electron pairs around a central atom repel each other and arrange to be as far apart as possible.

**Lone pairs repel MORE than bonding pairs.** This reduces bond angles.

| Total e- pairs | Bonding pairs | Lone pairs | Shape | Bond Angle | Example |
|---------------|--------------|-----------|-------|-----------|--------|
| 2 | 2 | 0 | Linear | 180 | BeCl2, CO2 |
| 3 | 3 | 0 | Trigonal planar | 120 | BF3, AlCl3 |
| 4 | 4 | 0 | Tetrahedral | 109.5 | CH4, CCl4 |
| 4 | 3 | 1 | Trigonal pyramidal | ~107 | NH3 |
| 4 | 2 | 2 | Bent/V-shape | ~104.5 | H2O |
| 5 | 5 | 0 | Trigonal bipyramidal | 90/120 | PCl5 |
| 6 | 6 | 0 | Octahedral | 90 | SF6 |

**Why is water''s angle 104.5° not 109.5°?**
Water has 2 lone pairs on oxygen. Lone pairs take more space than bonding pairs → they squeeze the bonding pairs closer together → reduces H-O-H angle from tetrahedral (109.5°) to 104.5°.

**Why is NH3 angle 107° not 109.5°?**
Nitrogen has 1 lone pair → pushes N-H bonds closer → reduces angle from 109.5° to 107°.

---

## Polar Bonds and Polar Molecules

### Bond Polarity
When atoms of **different electronegativities** form a covalent bond, electrons are unequally shared:
- More electronegative atom: partial negative charge (δ-)
- Less electronegative atom: partial positive charge (δ+)

Example: H-Cl → H(δ+)—Cl(δ-)  since Cl is more electronegative than H

### Molecular Polarity
A molecule is polar only if bond dipoles do NOT cancel. Symmetry determines this:

| Molecule | Bonds | Geometry | Polar? | Reason |
|---------|-------|----------|--------|--------|
| CO2 | 2 C=O (polar) | Linear | Non-polar | Symmetric, dipoles cancel |
| H2O | 2 O-H (polar) | Bent | POLAR | Asymmetric, dipoles add |
| CCl4 | 4 C-Cl (polar) | Tetrahedral | Non-polar | Symmetric, dipoles cancel |
| CHCl3 | C-H + 3 C-Cl | Tetrahedral | POLAR | Asymmetric distribution |
| NH3 | 3 N-H (polar) | Pyramidal | POLAR | Lone pair adds asymmetry |
| H2 | H-H (nonpolar) | Linear | Non-polar | Identical atoms |

**"Like dissolves like":**
- Polar solvents (water) dissolve polar/ionic solutes
- Non-polar solvents (hexane, CCl4) dissolve non-polar solutes

---

## Comparing Bond Strength and Length

**Bond energy:** Energy needed to break 1 mole of bonds in gaseous state (kJ/mol)
- Single bonds: lowest energy (weakest) — e.g., C-C: 347 kJ/mol
- Double bonds: higher — e.g., C=C: 612 kJ/mol
- Triple bonds: highest (strongest) — e.g., C≡C: 838 kJ/mol

**Bond length:**
- Single bonds: longest
- Double bonds: intermediate
- Triple bonds: shortest
- Larger atoms → longer bonds (e.g., C-C longer than C-O)
', 'definitions', 3),

  (v_topic_id, 'Worked Examples: Chemical Bonding', E'
## Worked Examples — Chemical Bonding

### Example 1: Ionic Bond Formation
**Q:** Describe the formation of aluminium oxide (Al2O3).

**Solution:**
- Al (2,8,3): metal → loses 3 electrons → Al3+ (2,8)
- O (2,6): non-metal → gains 2 electrons → O2- (2,8)
- For balance: 2 Al3+ gives +6; need 3 O2- (-6) → formula Al2O3
- Al loses: 2 × 3e- = 6e- total; O gains: 3 × 2e- = 6e- total ✓
- Strong electrostatic attraction between Al3+ and O2- = ionic bond
- Both achieve noble gas (Ne) configuration

---

### Example 2: Identifying Substance Type
**Q:** Substance A melts at 815°C; conducts when dissolved. Substance B melts at -78°C; never conducts. Identify and explain.

**Solution:**
**Substance A:** High melting point (strong lattice bonds) + conducts in solution (mobile ions) → **Ionic compound** (e.g., NaCl or similar). Strong electrostatic forces between ions require high temperature. When dissolved/melted, ions free to move.

**Substance B:** Very low melting point (weak intermolecular forces) + never conducts (no free charge carriers) → **Simple covalent compound** (e.g., CO2, CCl4). Only weak van der Waals forces between molecules — little energy to separate them. No ions or free electrons.

---

### Example 3: Why CO2 is Non-Polar
**Q:** CO2 has polar C=O bonds yet is a non-polar molecule. Explain.

**Solution:**
- Each C=O bond is polar: O is more electronegative → O(δ-), C(δ+)
- CO2 is linear (O=C=O at 180°)
- The two C=O bond dipoles point in exactly opposite directions (they are equal in size)
- They **completely cancel each other** (vector sum = 0)
- Net dipole moment = 0 → **non-polar molecule** despite having polar bonds

---

### Example 4: Diamond vs Graphite
**Q:** Why does graphite conduct electricity but diamond does not? Explain in terms of structure.

**Solution:**
- **Diamond:** Each C forms 4 covalent bonds in 3D tetrahedral network. ALL 4 valence electrons used in bonding. **No free electrons** → **electrical insulator**
- **Graphite:** Each C forms only 3 covalent bonds within hexagonal layers. The remaining **4th valence electron per C is delocalised** and free to move between the layers.
- These mobile electrons carry charge → **graphite conducts electricity** (similar to metals)

---

### Example 5: Hydrogen Bonding
**Q:** Water (H2O, Mr=18) has a much higher boiling point than methane (CH4, Mr=16). Explain.

**Solution:**
- CH4 is non-polar → only very weak van der Waals forces between CH4 molecules → easy to separate → low bp (-161°C)
- H2O has very polar O-H bonds (O is highly electronegative) and lone pairs on O
- Water molecules form **hydrogen bonds** with each other (O-H...O bridges)
- These H-bonds are much stronger than van der Waals forces
- Much more energy needed to overcome H-bonds and separate water molecules
- Therefore water has a much **higher boiling point** (100°C) despite being a lighter molecule
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Chemical Bonding', E'
## WASSCE Practice Questions — Chemical Bonding

### Multiple Choice

**Q1.** Which bond forms when electrons are completely transferred from one atom to another?
A) Covalent  B) Metallic  C) Ionic  D) Dative
**Answer: C**

**Q2.** Diamond and graphite both have very high melting points because both have:
A) Ionic bonds  B) Metallic bonds  C) Strong covalent bonds  D) Hydrogen bonds
**Answer: C** — Both are giant covalent structures with strong C-C bonds throughout.

**Q3.** Which has the lowest melting point?
A) NaCl  B) MgO  C) H2O  D) Al2O3
**Answer: C** — Simple molecular compound with weak intermolecular forces.

**Q4.** Electrical conductivity of metals is due to:
A) Mobile protons  B) Mobile cations in lattice  C) Delocalised electrons  D) Mobile anions
**Answer: C**

**Q5.** Which molecule has a bent (V-shape) geometry?
A) CO2  B) BF3  C) H2O  D) CH4
**Answer: C** — Water is bent due to 2 lone pairs on oxygen.

---

### Section B: Structured Questions

**Q6.** (a) Explain the meaning of the term "covalent bond." [2]
(b) Draw a dot-and-cross diagram for H2O and state its shape and bond angle. [3]
(c) Explain why HF has a higher boiling point than HCl, even though HF has a lower molecular mass. [3]

**Answers:**
(a) A covalent bond is formed when two non-metal atoms share a pair of electrons, one electron donated by each atom, to achieve a stable noble gas (full outer shell) configuration.

(b) H2O: Oxygen has 6 valence electrons. Forms 2 shared pairs (bonding) with 2 H atoms, plus 2 lone pairs.
Shape: **Bent/V-shape**
Bond angle: **104.5°** (less than tetrahedral 109.5° due to 2 lone pairs)

(c) HF contains **hydrogen bonding** because F is highly electronegative (one of N, O, F required for H-bonding) and the H-F bond is very polar. Strong H-bonds form between HF molecules (F-H...F). HCl has a less electronegative Cl → no hydrogen bonding → only weaker dipole-dipole forces. More energy needed to overcome H-bonds in HF → **higher boiling point** despite lower mass.

---

**Q7.** Compare the properties of ionic and simple covalent compounds with explanations.

| Property | Ionic Compounds | Simple Covalent |
|---------|----------------|----------------|
| Melting/boiling point | HIGH — strong electrostatic attraction between ions | LOW — weak van der Waals between molecules |
| Conductivity (solid) | Non-conductor — ions fixed in lattice | Non-conductor — no free charges |
| Conductivity (molten/aq) | CONDUCTS — free ions move | Non-conductor — no ions |
| Solubility in H2O | Usually soluble (polar solvent attracts ions) | Variable (polar dissolves, non-polar does not) |
| Solubility in organics | Insoluble | Usually soluble (non-polar) |

---

**Q8.** (a) What is an allotrope? [1]
(b) Describe TWO differences between diamond and graphite in terms of structure and ONE resulting property difference. [4]
(c) Explain why graphite is used as a lubricant. [2]

**Answers:**
(a) An allotrope is one of two or more forms of the same element in the same physical state, differing in the arrangement of atoms.

(b)
- Structure difference 1: In diamond, each C is bonded to 4 other C atoms in a tetrahedral 3D network. In graphite, each C is bonded to only 3 others in 2D hexagonal layers.
- Structure difference 2: In graphite, there is a delocalised electron per C between layers; diamond has no delocalised electrons.
- Property: Graphite conducts electricity (delocalised electrons); diamond is an insulator. OR diamond is much harder than graphite.

(c) Graphite has layers held by weak van der Waals forces. These layers can slide over each other easily with little resistance. This makes graphite feel slippery and act as a lubricant (reduces friction between surfaces).
', 'practice', 5);


  -- ============================================================
  -- TOPIC 3: ACIDS, BASES AND SALTS
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Acids, Bases and Salts' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Acids, Bases and the pH Scale', E'
## Acids — Definitions and Properties

### Definitions of Acids
**Arrhenius (1884):** An acid is a substance that produces H+ (hydrogen) ions when dissolved in water.
HCl(aq) → H+(aq) + Cl-(aq)

**Brønsted-Lowry (1923):** An acid is a **proton (H+) donor**; a base is a **proton acceptor**.
HCl + H2O → H3O+ + Cl-   (HCl donates H+ to water; water is the base)

### Properties of Acids
- Turn blue litmus RED
- pH less than 7 (lower pH = stronger acid)
- React with metals, bases, carbonates
- Taste sour (citric acid in lemon, ethanoic acid in vinegar)
- Corrosive (especially concentrated acids)
- Conduct electricity (electrolytes)

### Common Acids — Complete Reference

| Acid | Formula | Strength | Type | Common Sources |
|------|---------|---------|------|----------------|
| Hydrochloric acid | HCl | Strong | Mineral/inorganic | Stomach acid, cleaning |
| Sulfuric acid | H2SO4 | Strong | Mineral/inorganic | Car batteries, fertilizers |
| Nitric acid | HNO3 | Strong | Mineral/inorganic | Explosives, fertilizers, dyes |
| Phosphoric acid | H3PO4 | Moderate | Mineral/inorganic | Fertilizers, soft drinks |
| Ethanoic (acetic) acid | CH3COOH | Weak | Organic | Vinegar |
| Carbonic acid | H2CO3 | Weak | Inorganic | Fizzy/carbonated drinks |
| Citric acid | C6H8O7 | Weak | Organic | Citrus fruits (lemons, oranges) |
| Lactic acid | C3H6O3 | Weak | Organic | Sour milk, muscles |
| Methanoic (formic) acid | HCOOH | Weak | Organic | Ant/bee stings |

---

### Strong vs Weak Acids

**Strong acid:** COMPLETELY dissociates in water (100% ionized)
HCl(aq) → H+(aq) + Cl-(aq)       (one-way arrow: complete)
H2SO4(aq) → 2H+(aq) + SO42-(aq)

**Weak acid:** PARTIALLY dissociates in water (typically only 1-5% ionized)
CH3COOH(aq) ⇌ CH3COO-(aq) + H+(aq)    (reversible arrows: equilibrium)

**Comparing same concentration of strong vs weak acid:**

| Property | Strong acid (HCl) | Weak acid (CH3COOH) |
|---------|------------------|---------------------|
| Ionization | Complete | Partial |
| [H+] in solution | HIGH | LOW |
| pH | Lower (more acidic) | Higher |
| Electrical conductivity | Higher | Lower |
| Rate of reaction with Mg | Faster | Slower |
| Total H2 produced | Same | Same (all H eventually reacts) |
| Reaction with Na2CO3 | Faster | Slower (same total CO2) |

**Key point:** Strong and weak refer to DEGREE OF IONIZATION — not concentration! Concentrated does not mean strong!

---

## Bases — Definitions and Properties

**Arrhenius base:** Produces OH- ions in water.
**Brønsted-Lowry base:** A proton acceptor.
**Alkali:** A base that is SOLUBLE in water (forms OH- in solution)

### Properties of Bases/Alkalis
- Turn red litmus BLUE
- pH greater than 7
- Taste bitter; feel soapy/slippery
- React with acids (neutralization)
- React with ammonium salts (produce NH3 gas on heating)
- Corrosive (strong alkalis like NaOH, KOH)

### Common Bases and Alkalis

| Name | Formula | Classification | Strength |
|------|---------|---------------|---------|
| Sodium hydroxide | NaOH | Alkali | Strong |
| Potassium hydroxide | KOH | Alkali | Strong |
| Calcium hydroxide | Ca(OH)2 | Alkali | Strong (sparingly soluble) |
| Ammonia solution | NH3(aq) | Alkali | Weak |
| Magnesium oxide | MgO | Base (insoluble) | — |
| Copper(II) oxide | CuO | Base (insoluble) | — |
| Iron(III) oxide | Fe2O3 | Base (insoluble) | — |
| Calcium carbonate | CaCO3 | Base (insoluble) | — |

**All alkalis are bases, but NOT all bases are alkalis.** An alkali is a soluble base.

---

## The pH Scale

**pH** measures the concentration of H+ ions in solution.
pH = -log[H+]

| pH | [H+] mol/L | Example | Nature |
|----|-----------|---------|--------|
| 0 | 1.0 | Stomach acid (concentrated) | Strongly acidic |
| 1 | 0.1 | Hydrochloric acid (conc.) | Strongly acidic |
| 2 | 0.01 | Lemon juice | Acidic |
| 3 | 0.001 | Vinegar | Acidic |
| 4 | 0.0001 | Tomato juice | Mildly acidic |
| 5 | 0.00001 | Black coffee | Mildly acidic |
| 6 | 10-6 | Urine, milk | Slightly acidic |
| 7 | 10-7 | Pure water | NEUTRAL |
| 8 | 10-8 | Seawater | Slightly alkaline |
| 9 | 10-9 | Baking soda | Alkaline |
| 10 | 10-10 | Milk of magnesia | Alkaline |
| 12 | 10-12 | Washing soda | Strongly alkaline |
| 14 | 10-14 | NaOH (1 mol/L) | Strongly alkaline |

**Important:** Each pH unit = 10-fold change in [H+].
pH 3 is 10× more acidic than pH 4; 100× more acidic than pH 5.

---

## Indicators

An indicator changes color depending on whether a solution is acidic, neutral, or alkaline.

| Indicator | Acidic (below pH range) | pH Range of Change | Alkaline (above pH range) |
|-----------|------------------------|-------------------|--------------------------|
| Litmus | Red (pH < 7) | 6-8 | Blue (pH > 8) |
| Phenolphthalein | Colorless (pH < 8.2) | 8.2-10 | Pink/Red (pH > 10) |
| Methyl orange | Red (pH < 3.1) | 3.1-4.4 | Yellow (pH > 4.4) |
| Universal indicator | Red/orange/yellow → | 1-14 (full range) | → blue/violet |

**Choosing the right indicator for titrations:**
- Strong acid + strong base: Any indicator works (sharp color change)
- Strong acid + weak base: Use methyl orange (end point on acidic side)
- Weak acid + strong base: Use phenolphthalein (end point on alkaline side)
- Weak acid + weak base: No suitable indicator (gradual change)

**Natural indicators:** Red cabbage juice (purple → red in acid, green in alkali); turmeric; hibiscus
', 'overview', 1),

  (v_topic_id, 'Reactions of Acids and Base — All Key Reactions', E'
## Chemical Reactions of Acids

### 1. Acids + Active Metals → Salt + Hydrogen

Only metals above hydrogen in the activity series react with dilute acids.

acid + metal → salt + hydrogen gas
Test for H2: Burning splint — "squeaky pop"

**Examples:**
- Mg + H2SO4 → MgSO4 + H2
- Zn + 2HCl → ZnCl2 + H2
- Fe + H2SO4 → FeSO4 + H2 (iron(II) sulfate)
- 2Al + 3H2SO4 → Al2(SO4)3 + 3H2
- 2Na + 2HCl → 2NaCl + H2 (very vigorous — dangerous!)

**Metals that do NOT react with dilute acids:** Cu, Ag, Au, Pt (below H in activity series)

---

### 2. Acids + Metal Oxides → Salt + Water

acid + metal oxide → salt + water

- CuO + H2SO4 → CuSO4 + H2O (black CuO dissolves → blue solution)
- MgO + 2HCl → MgCl2 + H2O
- Fe2O3 + 3H2SO4 → Fe2(SO4)3 + 3H2O
- ZnO + 2HCl → ZnCl2 + H2O
- Al2O3 + 6HCl → 2AlCl3 + 3H2O

---

### 3. Acids + Metal Hydroxides → Salt + Water (Neutralization)

acid + base/hydroxide → salt + water

- NaOH + HCl → NaCl + H2O
- Ca(OH)2 + 2HCl → CaCl2 + 2H2O
- 2KOH + H2SO4 → K2SO4 + 2H2O
- Mg(OH)2 + H2SO4 → MgSO4 + 2H2O
- Al(OH)3 + 3HNO3 → Al(NO3)3 + 3H2O

**Ionic equation for any neutralization:**
H+(aq) + OH-(aq) → H2O(l)

---

### 4. Acids + Carbonates → Salt + Water + Carbon Dioxide

acid + carbonate → salt + water + CO2 gas
Test for CO2: Bubbles through limewater → turns milky (white precipitate of CaCO3)

- CaCO3 + 2HCl → CaCl2 + H2O + CO2 (limestone, marble reacts with acid)
- Na2CO3 + H2SO4 → Na2SO4 + H2O + CO2
- K2CO3 + 2HNO3 → 2KNO3 + H2O + CO2
- NaHCO3 + HCl → NaCl + H2O + CO2 (baking soda + acid)
- 2HCl + CaCO3 → CaCl2 + H2O + CO2 (why caves form — CO2 in rainwater dissolves limestone)

**Limewater test (for CO2):**
Ca(OH)2(aq) + CO2(g) → CaCO3(s)(white precipitate) + H2O

**With excess CO2:** CaCO3 + H2O + CO2 → Ca(HCO3)2 (soluble → milky solution clears)

---

### 5. Acids + Ammonia → Ammonium Salts

acid + ammonia → ammonium salt (no water)

- HCl + NH3 → NH4Cl (ammonium chloride — white fumes)
- H2SO4 + 2NH3 → (NH4)2SO4 (ammonium sulfate — important fertilizer)
- HNO3 + NH3 → NH4NO3 (ammonium nitrate — fertilizer, also used in explosives)
- H3PO4 + 3NH3 → (NH4)3PO4 (ammonium phosphate — NPK fertilizer)

---

## Salts — Types, Naming, and Preparation

### What is a Salt?
A salt is an ionic compound formed when the hydrogen in an acid is replaced (partially or completely) by a metal ion or ammonium ion.

### Types of Salts

| Type | Definition | Examples |
|------|-----------|---------|
| Normal salt | All H replaced | NaCl, Na2SO4, CaCl2, K2CO3 |
| Acidic salt | Some H remains (diprotic acid, one H replaced) | NaHSO4, NaHCO3, NaH2PO4 |
| Basic (oxy) salt | Contains both OH- and an anion | Pb(OH)Cl, BiOCl |

### Naming Salts

| Parent Acid | Anion | Salt Ending | Example |
|------------|-------|-------------|---------|
| Hydrochloric acid (HCl) | Cl- | -chloride | NaCl (sodium chloride) |
| Sulfuric acid (H2SO4) | SO42- | -sulfate | Na2SO4 (sodium sulfate) |
| Nitric acid (HNO3) | NO3- | -nitrate | KNO3 (potassium nitrate) |
| Carbonic acid (H2CO3) | CO32- | -carbonate | Na2CO3 (sodium carbonate) |
| Phosphoric acid (H3PO4) | PO43- | -phosphate | Ca3(PO4)2 (calcium phosphate) |
| Ethanoic acid (CH3COOH) | CH3COO- | -ethanoate | CH3COONa (sodium ethanoate) |

### Methods of Preparing Salts

**Method 1: Excess metal/base + acid (for soluble salts, insoluble base/metal)**
- Add excess metal or insoluble base to warm acid until no more dissolves
- Filter off excess
- Evaporate filtrate to crystallize
- Example: CuO + H2SO4 → CuSO4

**Method 2: Titration (for soluble salts, soluble acid + soluble base)**
- Use indicator to find exact neutralization volume
- Repeat without indicator; evaporate to crystallize
- Example: NaOH + HCl → NaCl

**Method 3: Precipitation (for insoluble salts)**
- Mix two solutions containing the required ions
- Insoluble salt precipitates immediately
- Filter, wash, dry
- Example: BaCl2(aq) + Na2SO4(aq) → BaSO4(s) + 2NaCl(aq)
- Other examples: AgNO3 + NaCl → AgCl↓ + NaNO3 (white precipitate)
- Pb(NO3)2 + 2KI → PbI2↓ + 2KNO3 (yellow precipitate)

**Method 4: Direct combination (limited use)**
- Example: Fe + S → FeS (iron(II) sulfide — heating)
', 'explanation', 2),

  (v_topic_id, 'Water Chemistry, Hardness and Worked Examples', E'
## Water Chemistry — Hard Water and Treatment

### Hard Water
**Hard water** does not form a lather with soap easily. Instead, it forms a scum (insoluble calcium soap).

Ca2+(aq) + 2RCOO- (soap ions) → Ca(RCOO)2 (insoluble scum)

**Cause:** Dissolved Ca2+ and Mg2+ ions from limestone/chalk (CaCO3) or dolomite (MgCO3) rock.

### Types of Hardness

**Temporary hardness:**
- Caused by dissolved Ca(HCO3)2 or Mg(HCO3)2
- Formed when CO2 (from air/soil) dissolves in water and reacts with CaCO3:
  CaCO3(s) + CO2(g) + H2O(l) → Ca(HCO3)2(aq)
- CAN be removed by BOILING:
  Ca(HCO3)2(aq) → CaCO3(s) + CO2(g) + H2O(l)
  (white scale/limescale forms in kettle, boiler)

**Permanent hardness:**
- Caused by dissolved CaSO4 or MgSO4 (from gypsum rock)
- CANNOT be removed by boiling

### Removing Hardness

| Method | Type of Hardness Removed | How it Works |
|--------|-------------------------|-------------|
| Boiling | Temporary only | Ca(HCO3)2 decomposes → CaCO3 precipitates |
| Adding Na2CO3 (washing soda) | BOTH types | CO32- + Ca2+ → CaCO3 (insoluble) |
| Ion exchange resin | BOTH types | Ca2+/Mg2+ exchanged for Na+ or H+ (harmless) |
| Distillation | BOTH types | Pure H2O collected; ions remain behind |
| Adding Ca(OH)2 (lime) | Temporary only | OH- reacts with HCO3-: Ca(HCO3)2 + Ca(OH)2 → 2CaCO3 + 2H2O |

### Advantages and Disadvantages of Hard Water

**Advantages:**
- Ca2+ beneficial for bones and teeth
- Mg2+ supports heart health
- Limescale can protect old lead pipes from corrosion (coating prevents lead dissolving)
- Better taste for drinking

**Disadvantages:**
- Wastes soap (forms scum)
- Limescale (scale) deposits in kettles, boilers, water pipes → reduced efficiency, blockages
- Hot water systems become less efficient → higher energy bills
- Reduces effectiveness of detergents

---

### Municipal Water Treatment (Making Water Safe)

1. **Screening:** Large debris removed (fish, leaves)
2. **Sedimentation/Coagulation/Flocculation:**
   - Add alum [Al2(SO4)3] or iron(III) sulfate
   - Al3+ ions react with OH- → Al(OH)3 gel forms
   - Gel traps fine suspended particles → flocs form → settle
3. **Filtration:**
   - Water passes through sand and gravel beds
   - Removes fine suspended particles, some bacteria
4. **Chlorination:**
   - Chlorine (Cl2) or sodium hypochlorite (NaOCl) added
   - Kills bacteria, viruses, and other pathogens
   - Cl2 + H2O → HCl + HOCl (hypochlorous acid — bactericide)
5. **pH adjustment:**
   - Lime Ca(OH)2 added to raise pH if too acidic
   - Prevents pipe corrosion
6. **Fluoridation (optional):**
   - 1 ppm fluoride added to prevent tooth decay

---

## Worked Examples — Acids, Bases and Salts

### Example 1: Salt from Acid and Metal
**Q:** Write the equation for zinc reacting with hydrochloric acid.
**Solution:** Zn + 2HCl → ZnCl2 + H2
- Salt = **zinc chloride (ZnCl2)**
- Gas produced = **hydrogen (H2)** — test with burning splint (squeaky pop)

### Example 2: Salt Identification
**Q:** Name the salt formed: (a) Ca(OH)2 + HNO3; (b) Al + H2SO4

**Solution:**
(a) Ca(OH)2 + 2HNO3 → Ca(NO3)2 + 2H2O → **calcium nitrate**
(b) 2Al + 3H2SO4 → Al2(SO4)3 + 3H2 → **aluminium sulfate**

### Example 3: Titration Calculation
**Q:** 25.0 cm3 of 0.10 mol/dm3 HCl neutralizes 20.0 cm3 NaOH. Find [NaOH].

**Solution:**
- Equation: HCl + NaOH → NaCl + H2O (1:1)
- n(HCl) = 0.10 × 25.0/1000 = 0.0025 mol
- n(NaOH) = 0.0025 mol (1:1)
- c(NaOH) = 0.0025 / (20.0/1000) = 0.0025/0.020 = **0.125 mol/dm3**

### Example 4: Precipitation
**Q:** Write the equation for preparing barium sulfate by precipitation.

**Solution:**
BaCl2(aq) + Na2SO4(aq) → BaSO4(s) + 2NaCl(aq)
Ionic equation: Ba2+(aq) + SO42-(aq) → BaSO4(s)
**White precipitate forms immediately. Spectator ions: Na+ and Cl-.**

### Example 5: Amphoteric Oxide
**Q:** Show that Al2O3 is amphoteric. Write equations.

**Solution:**
*With acid (acts as base):*
Al2O3 + 6HCl → 2AlCl3 + 3H2O

*With alkali (acts as acid):*
Al2O3 + 2NaOH + 3H2O → 2NaAl(OH)4 (sodium aluminate solution)
', 'definitions', 3),

  (v_topic_id, 'More Worked Examples: Acids, Bases and Salts', E'
## Extended Worked Examples

### Example 6: Sulfuric Acid Reactions
**Q:** Write equations for sulfuric acid reacting with: (a) copper(II) oxide, (b) sodium carbonate, (c) magnesium, (d) ammonia.

**Solutions:**
(a) CuO + H2SO4 → CuSO4 + H2O (black solid dissolves to give blue solution)
(b) Na2CO3 + H2SO4 → Na2SO4 + H2O + CO2 (effervescence, CO2 turns limewater milky)
(c) Mg + H2SO4 → MgSO4 + H2 (bubbles of hydrogen — squeaky pop with burning splint)
(d) H2SO4 + 2NH3 → (NH4)2SO4 (ammonium sulfate — white solid, used as fertilizer)

---

### Example 7: Preparation of CuSO4 (Exam favourite!)
**Q:** Describe the preparation of pure dry crystals of copper(II) sulfate from CuO and H2SO4.

**Procedure:**
1. Warm dilute sulfuric acid in a beaker (hot water bath)
2. Add EXCESS copper(II) oxide (black powder) in small portions, stirring
3. Continue adding until no more dissolves (ensures all acid is used)
4. Filter off excess CuO (blue filtrate = CuSO4 solution)
5. Transfer blue filtrate to an evaporating dish
6. Heat gently on water bath to concentrate (evaporate most water)
7. Test for crystallization point: one drop on a cooled surface — crystals form
8. Allow to cool → blue crystals of CuSO4·5H2O (hydrated copper sulfate) form
9. Filter off crystals; dry between filter paper at LOW temperature (to avoid losing crystal water)

**Observations:** Black CuO dissolves → blue solution; blue crystals form on cooling.
**Why excess CuO?** To ensure all acid is consumed (neutral product).
**Why not evaporate to dryness?** CuSO4·5H2O loses its water of crystallization (blue → white).

---

### Example 8: Strong vs Weak Acid Comparison
**Q:** 0.1 mol/dm3 HCl and 0.1 mol/dm3 CH3COOH have the same concentration. Explain TWO differences in their behavior.

**Answer:**
1. **pH:** HCl is fully ionized → [H+] = 0.1 mol/dm3 → pH = 1. CH3COOH is partially ionized → [H+] much less than 0.1 mol/dm3 → pH is higher (about 2.9). HCl solution has LOWER pH.

2. **Electrical conductivity:** HCl solution has many more free ions (H+ and Cl-) than CH3COOH solution (which has few ions due to partial ionization). HCl conducts electricity BETTER.

3. **Rate of reaction with Mg:** HCl reacts faster (more H+ ions available to react). CH3COOH reacts more slowly. BUT both produce the same total volume of H2 (same moles of acid).
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Acids, Bases and Salts', E'
## WASSCE Practice Questions

### Multiple Choice

**Q1.** Which acid is classified as weak?
A) HCl  B) H2SO4  C) HNO3  D) CH3COOH
**Answer: D** — Ethanoic acid partially dissociates.

**Q2.** An aqueous solution has pH = 9. This solution is:
A) Strongly acidic  B) Weakly acidic  C) Neutral  D) Alkaline
**Answer: D**

**Q3.** A white precipitate that dissolves in excess NaOH is produced with NaOH. The ion present is:
A) Ca2+  B) Pb2+  C) Cu2+  D) Al3+
**Answer: D** — Al(OH)3 (white ppt) dissolves in excess NaOH (amphoteric).

**Q4.** 20 cm3 NaOH is neutralized by 10 cm3 of 0.4 mol/dm3 H2SO4. What is [NaOH]?
A) 0.1  B) 0.2  C) 0.4  D) 0.8 mol/dm3
**Answer: C**
n(H2SO4) = 0.4 × 10/1000 = 0.004 mol; H2SO4 + 2NaOH → Na2SO4 + 2H2O; n(NaOH) = 0.008 mol; c = 0.008/0.020 = 0.4 mol/dm3

**Q5.** The best method to prepare an insoluble salt is:
A) Neutralization + evaporation  B) Precipitation  C) Dissolving metal in acid  D) Adding excess base
**Answer: B** — Mix two solutions containing the required ions → precipitate forms.

---

### Structured Questions

**Q6.** (a) Define: (i) acid (Brønsted-Lowry) (ii) base (iii) alkali
(b) Explain why HCl(aq) is a stronger acid than CH3COOH(aq) at same concentration.
(c) Write ionic equation for neutralization. [6]

**Answers:**
(a)
(i) An acid is a proton (H+) donor.
(ii) A base is a proton acceptor (Arrhenius: produces OH- in water).
(iii) An alkali is a base that is soluble in water, producing OH- ions.

(b) HCl is completely ionized in water (HCl → H+ + Cl-; 100% dissociation). CH3COOH is only partially ionized (CH3COOH ⇌ CH3COO- + H+; ~1-5% dissociation). Therefore HCl produces a much higher concentration of H+ ions → lower pH → stronger acid.

(c) H+(aq) + OH-(aq) → H2O(l)

---

**Q7.** (a) Distinguish between temporary and permanent hardness. [2]
(b) Describe how temporary hardness forms in rainwater. [2]
(c) How can BOTH types of hardness be removed using Na2CO3? Write equation. [3]

**Answers:**
(a) Temporary hardness is caused by dissolved calcium hydrogen carbonate Ca(HCO3)2 and CAN be removed by boiling. Permanent hardness is caused by dissolved calcium sulfate CaSO4 and CANNOT be removed by boiling.

(b) CO2 from the atmosphere and soil dissolves in rainwater to form carbonic acid (CO2 + H2O → H2CO3). This weak acid reacts with limestone (CaCO3) in the ground: CaCO3 + H2CO3 → Ca(HCO3)2 (soluble). The dissolved Ca(HCO3)2 makes the water temporarily hard.

(c) Na2CO3 (washing soda) provides CO32- ions which react with Ca2+ ions to form insoluble CaCO3:
Ca2+(aq) + CO32-(aq) → CaCO3(s)
This removes Ca2+ from solution whether its source is Ca(HCO3)2 or CaSO4, so it removes BOTH types.

---

**Q8.** Write equations for hydrochloric acid reacting with each of the following:
(a) calcium carbonate (b) iron (c) sodium hydroxide (d) ammonia
State the name and type of salt formed in each case.

**Answers:**
(a) CaCO3 + 2HCl → CaCl2 + H2O + CO2; Salt: **calcium chloride** (normal salt)
(b) Fe + 2HCl → FeCl2 + H2; Salt: **iron(II) chloride** (normal salt)
(c) NaOH + HCl → NaCl + H2O; Salt: **sodium chloride** (normal salt)
(d) NH3 + HCl → NH4Cl; Salt: **ammonium chloride** (normal salt)
', 'practice', 5);


  -- ============================================================
  -- TOPIC 4: ORGANIC CHEMISTRY
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Organic Chemistry' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Introduction to Organic Chemistry and Hydrocarbons', E'
## What is Organic Chemistry?

**Organic chemistry** is the study of carbon compounds. Carbon forms millions of compounds because it:
- Is **tetravalent** (forms 4 covalent bonds)
- Can bond to other carbon atoms (**catenation**) → chains, branches, rings
- Forms single, double, and triple bonds

**Excluded from "organic":** CO, CO2, carbonates (CO32-), carbides, cyanides — treated as inorganic.

---

## Homologous Series

A **homologous series** is a family of organic compounds sharing:
1. The same **general formula**
2. The same **functional group** (determines chemical properties)
3. Differ by **-CH2-** (methylene group) from one member to next
4. Gradual change in **physical properties** (e.g., boiling point increases)
5. Similar **chemical properties** (react the same way)

---

## 1. Alkanes (CnH2n+2) — Saturated Hydrocarbons

Contain only single C-C bonds. "Saturated" = no double/triple bonds.

| Name | Formula | Melting Pt (°C) | Boiling Pt (°C) | State at RTP |
|------|---------|----------------|----------------|-------------|
| Methane | CH4 | -183 | -161 | Gas |
| Ethane | C2H6 | -183 | -89 | Gas |
| Propane | C3H8 | -188 | -42 | Gas |
| Butane | C4H10 | -138 | -1 | Gas |
| Pentane | C5H12 | -130 | 36 | Liquid |
| Hexane | C6H14 | -95 | 69 | Liquid |
| Octane | C8H18 | -57 | 126 | Liquid |
| Decane | C10H22 | -30 | 174 | Liquid |
| Hexadecane | C16H34 | 18 | 287 | Solid/viscous |

**Trend:** Boiling point increases with chain length (more electrons → stronger van der Waals forces).

### Chemical Properties of Alkanes

**1. Combustion (most important reaction):**

Complete combustion (plenty of O2):
CH4 + 2O2 → CO2 + 2H2O        (methane)
C3H8 + 5O2 → 3CO2 + 4H2O     (propane)
2C8H18 + 25O2 → 16CO2 + 18H2O (octane/petrol)

Incomplete combustion (limited O2 — produces toxic products):
2CH4 + 3O2 → 2CO + 4H2O       (carbon monoxide — toxic, odorless)
CH4 + O2 → C + 2H2O            (soot/carbon — black smoke)

**Dangers of incomplete combustion:**
- CO (carbon monoxide): binds to haemoglobin 200× stronger than O2 → prevents O2 transport → asphyxiation
- Soot/black carbon: air pollution, respiratory problems

**2. Substitution reaction (with halogens, UV light):**

CH4 + Cl2 → CH3Cl + HCl    (chloromethane — first step)
CH3Cl + Cl2 → CH2Cl2 + HCl (dichloromethane)
CH2Cl2 + Cl2 → CHCl3 + HCl (trichloromethane/chloroform)
CHCl3 + Cl2 → CCl4 + HCl   (tetrachloromethane)

**Mechanism:** Free radical substitution — UV light breaks Cl-Cl bond:
- Initiation: Cl2 → 2Cl• (homolytic cleavage by UV)
- Propagation: CH4 + Cl• → CH3• + HCl; CH3• + Cl2 → CH3Cl + Cl•
- Termination: Cl• + Cl• → Cl2 (or similar radical recombinations)

---

## 2. Alkenes (CnH2n) — Unsaturated Hydrocarbons

Contain at least one **C=C double bond**. "Unsaturated" = can accept more atoms.

| Name | Formula | Boiling Pt (°C) |
|------|---------|----------------|
| Ethene | C2H4 | -104 |
| Propene | C3H6 | -47 |
| But-1-ene | C4H8 | -6 |
| Pent-1-ene | C5H10 | 30 |
| Hex-1-ene | C6H12 | 63 |

### Testing for Alkenes (Unsaturation)

**Test 1: Bromine water (orange → colorless)**
CH2=CH2 + Br2 → CH2Br-CH2Br (1,2-dibromoethane — colorless)

**Test 2: Acidified KMnO4 (purple → colorless)**
Potassium permanganate oxidizes the double bond → colorless products

### Chemical Reactions of Alkenes

**1. Addition of bromine (halogenation):**
CH2=CH2 + Br2 → CH2Br-CH2Br (dibromoethane)
CH3CH=CH2 + Br2 → CH3CHBr-CH2Br (1,2-dibromopropane)

**2. Addition of hydrogen (hydrogenation):**
CH2=CH2 + H2 → CH3-CH3     [catalyst: Ni, 200°C]
Used industrially: liquid vegetable oils (unsaturated fats) + H2 → solid margarine (saturated)

**3. Addition of water (hydration — industrial ethanol production):**
CH2=CH2 + H2O → CH3CH2OH    [catalyst: H3PO4, 300°C, 70 atm]

**4. Addition of HBr (or HCl):**
CH2=CH2 + HBr → CH3CH2Br (bromoethane)
CH3CH=CH2 + HBr → CH3CHBrCH3 (Markovnikov''s rule: H adds to C with more H)

**5. Combustion:**
C2H4 + 3O2 → 2CO2 + 2H2O

**6. Addition polymerization:**
n(CH2=CH2) → (-CH2-CH2-)n  (polythene)
The double bond opens and molecules join in a chain.

---

## 3. Alkynes (CnH2n-2)

Contain at least one C≡C triple bond (two pi bonds + one sigma bond).

| Name | Formula | Use |
|------|---------|-----|
| Ethyne (acetylene) | C2H2 | Oxyacetylene welding (~3500°C) |
| Propyne | C3H4 | — |

Reactions: Also undergo addition reactions (Br2, H2, HBr) at both bonds.

---

## IUPAC Naming Rules

**Parent chain:** Longest continuous carbon chain
Meth(1) Eth(2) Prop(3) But(4) Pent(5) Hex(6) Hept(7) Oct(8) Non(9) Dec(10)

**Suffixes (functional group):**
- Alkane: -ane
- Alkene: -ene (position of double bond given, e.g., but-1-ene)
- Alkyne: -yne
- Alcohol: -ol (e.g., propan-2-ol)
- Aldehyde: -anal
- Ketone: -anone
- Carboxylic acid: -anoic acid

**Numbering:** Number from end giving functional group/substituent lowest number.

Examples:
- CH3CH2CH2OH: propan-1-ol (OH on C1)
- CH3CH(OH)CH3: propan-2-ol (OH on C2)
- CH3CH2COOH: propanoic acid (3C chain)
- CH3CH=CH2: prop-1-ene
- CH3CH2CH=CH2: but-1-ene
- (CH3)2CHCH3: 2-methylpropane (branch on C2)
', 'overview', 1),

  (v_topic_id, 'Alcohols, Carboxylic Acids, Esters and Polymers', E'
## 4. Alcohols (CnH2n+1OH) — Functional Group: -OH (Hydroxyl)

| Name | Formula | Boiling Pt (°C) | Notes |
|------|---------|----------------|-------|
| Methanol | CH3OH | 65 | Very toxic |
| Ethanol | C2H5OH | 78 | Drinks, fuel, antiseptic |
| Propan-1-ol | C3H7OH | 97 | Solvent |
| Butan-1-ol | C4H9OH | 117 | Solvent |

**Why high boiling points (compared to alkanes)?** Hydrogen bonding through -OH group.
**Miscible with water:** -OH forms H-bonds with water molecules.

### Classification of Alcohols
- **Primary (1°):** OH on carbon bonded to 1 other carbon → e.g., CH3CH2OH (ethanol), propan-1-ol
- **Secondary (2°):** OH on carbon bonded to 2 other carbons → e.g., propan-2-ol
- **Tertiary (3°):** OH on carbon bonded to 3 other carbons → e.g., 2-methylpropan-2-ol

### Chemical Reactions of Alcohols

**1. Combustion:**
C2H5OH + 3O2 → 2CO2 + 3H2O    (ethanol burns with clean blue flame)

**2. Dehydration to alkene (elimination):**
C2H5OH → CH2=CH2 + H2O    [conc. H2SO4, 170°C]
Concentrated H2SO4 removes OH and adjacent H → double bond forms.

**3. Oxidation (using K2Cr2O7/H2SO4 or KMnO4):**
Primary alcohol → aldehyde → carboxylic acid (vigorous/prolonged oxidation)
C2H5OH → CH3CHO → CH3COOH
(orange dichromate → green Cr3+; purple KMnO4 → colorless)

Secondary alcohol → ketone (cannot be oxidized further easily)
CH3CH(OH)CH3 → CH3COCH3 (propanone/acetone)

Tertiary alcohol → does NOT readily oxidize (no H on OH-bearing carbon)

**4. Esterification (with carboxylic acid):**
C2H5OH + CH3COOH ⇌ CH3COOC2H5 + H2O    [conc H2SO4 catalyst, heat]
(Reversible reaction; catalyst: conc. H2SO4 or H+)

**5. Reaction with sodium metal:**
2C2H5OH + 2Na → 2C2H5ONa + H2    (sodium ethoxide + hydrogen gas)
(Slower and less vigorous than Na + water)

**6. Fermentation (biological production of ethanol):**
C6H12O6 → 2C2H5OH + 2CO2    [yeast, 30-40°C, anaerobic/no air]
(Glucose fermented by enzymes in yeast — produces beer, wine, ethanol fuel)
Max ethanol ~15% (yeast killed by higher concentrations).

### Industrial vs Fermentation Ethanol

| Feature | Fermentation | Hydration (C2H4 + H2O) |
|---------|-------------|------------------------|
| Raw material | Glucose/sugar | Ethene from crude oil cracking |
| Conditions | 30-40°C, yeast | 300°C, 70 atm, H3PO4 catalyst |
| Rate | Slow (batch process) | Fast (continuous process) |
| Purity | Impure (must distill) | High purity |
| Renewable? | YES (biomass) | NO (fossil fuel) |
| Sustainability | Renewable, carbon neutral | Non-renewable, CO2 released |

---

## 5. Carboxylic Acids (CnH2n+1COOH) — Functional Group: -COOH (Carboxyl)

| Name | Formula | Source |
|------|---------|--------|
| Methanoic acid | HCOOH | Ant stings |
| Ethanoic acid | CH3COOH | Vinegar |
| Propanoic acid | C2H5COOH | — |
| Butanoic acid | C3H7COOH | Rancid butter |
| Citric acid | C6H8O7 | Lemon/citrus fruit |
| Stearic acid | C17H35COOH | Animal fat (solid soap) |
| Oleic acid | C17H33COOH | Olive oil (1 double bond) |
| Linoleic acid | C17H31COOH | Sunflower oil (2 double bonds) |

### Reactions of Carboxylic Acids (All Behave as Weak Acids)

**1. With metals:** 2CH3COOH + Mg → (CH3COO)2Mg + H2
**2. With bases:** CH3COOH + NaOH → CH3COONa + H2O
**3. With carbonates:** 2CH3COOH + Na2CO3 → 2CH3COONa + H2O + CO2
**4. Esterification:** CH3COOH + C2H5OH ⇌ CH3COOC2H5 + H2O

---

## Esters — Formation and Hydrolysis

### Formation (Esterification)
Carboxylic acid + Alcohol ⇌ Ester + Water [conc. H2SO4, heat]

**Naming:** [alkyl group from alcohol]-yl [acid name minus -ic acid + ]-anoate

| Alcohol | Acid | Ester | Smell |
|---------|------|-------|-------|
| Ethanol | Ethanoic acid | Ethyl ethanoate | Nail polish remover |
| Methanol | Methanoic acid | Methyl methanoate | — |
| Pentan-1-ol | Ethanoic acid | Pentyl ethanoate | Banana |
| Ethanol | Butanoic acid | Ethyl butanoate | Pineapple |
| Octan-1-ol | Ethanoic acid | Octyl ethanoate | Orange |

**Uses of esters:** Food flavorings; perfumes; solvents (nail polish remover, paints, adhesives)

### Hydrolysis of Esters

**Acid hydrolysis (reverse of esterification):**
Ester + H2O ⇌ Acid + Alcohol (in presence of H+/H2SO4)

**Saponification (alkaline/base hydrolysis):**
Ester + NaOH → Sodium salt (soap) + Alcohol (irreversible)

**Making Soap from Fats/Oils:**
Fats/oils are **glyceryl esters** (triesters of glycerol with long-chain fatty acids)
Fat + 3NaOH → Glycerol + 3 Sodium fatty acid salt (soap)
e.g., glyceryl tristearate + 3NaOH → glycerol + 3 sodium stearate (soap)

**How soap works:**
- Soap molecules have a **hydrophilic head** (-COO-Na+) that dissolves in water
- And a **hydrophobic tail** (long C chain) that dissolves in grease/oil
- Tails surround grease droplets → **micelles** form
- Micelles dispersed in water and washed away

---

## Polymers — Addition and Condensation

### Addition Polymerization
Alkene monomers (C=C) join together as the double bonds open:
n(CH2=CH2) → (-CH2-CH2-)n

| Monomer | Polymer | Properties/Uses |
|---------|---------|----------------|
| Ethene | Polyethene (LDPE/HDPE) | Bags, bottles, pipes |
| Propene | Polypropene (PP) | Ropes, food containers, car bumpers |
| Chloroethene (CH2=CHCl) | PVC | Water pipes, electrical insulation, window frames |
| Styrene (C6H5CH=CH2) | Polystyrene (PS) | Packaging, cups, insulation |
| Tetrafluoroethene (CF2=CF2) | PTFE (Teflon) | Non-stick cookware, waterproof clothing |

### Condensation Polymerization
Monomers with two functional groups react repeatedly, releasing a small molecule (usually H2O or HCl) per bond formed.

**Nylon 6,6 (Polyamide):**
- Monomer 1: Hexanedioic acid (HO2C(CH2)4CO2H)
- Monomer 2: Hexane-1,6-diamine (H2N(CH2)6NH2)
- Linkage: **-CO-NH-** (amide bond); each bond releases H2O
- Properties: Strong, flexible, resistant to abrasion
- Uses: Clothing, parachutes, ropes, tights, toothbrush bristles

**Terylene/PET (Polyester):**
- Monomer 1: Benzene-1,4-dicarboxylic acid (terephthalic acid)
- Monomer 2: Ethane-1,2-diol
- Linkage: **-CO-O-** (ester bond); each bond releases H2O
- Uses: Clothing fibers (polyester), plastic bottles (PET), packaging film

| Feature | Addition Polymerization | Condensation Polymerization |
|---------|------------------------|---------------------------|
| Monomer | Unsaturated (has C=C) | Two functional groups (or difunctional) |
| By-product | None | Small molecule (H2O, HCl) |
| Polymer backbone | C-C only | Contains O, N, etc. in backbone |
| Examples | Polythene, PVC, PTFE | Nylon, Terylene, proteins, DNA |

### Environmental Issues with Polymers
- Most polymers are **non-biodegradable** (break down very slowly)
- Accumulate in landfill, oceans → marine pollution, microplastics
- Some require special recycling facilities
- **Solutions:** Biodegradable plastics (polylactic acid, PLA); recycling; reducing use
', 'explanation', 2),

  (v_topic_id, 'Isomerism and Functional Groups Summary', E'
## Isomerism

**Structural isomers:** Same molecular formula, DIFFERENT structural formula (atoms bonded differently). Same molecular formula but different connectivity.

### Types of Structural Isomerism

**1. Chain isomers:** Different carbon chain arrangement
- Butane (C4H10): CH3CH2CH2CH3 (n-butane) vs CH3CH(CH3)CH3 (2-methylpropane/isobutane)

**2. Position isomers:** Same carbon chain, functional group in different position
- C3H7OH isomers:
  - Propan-1-ol: CH3CH2CH2OH (OH on C1)
  - Propan-2-ol: CH3CH(OH)CH3 (OH on C2)

**3. Functional group isomers:** Same molecular formula, different functional group
- C2H6O: Ethanol (CH3CH2OH — alcohol) vs methoxymethane (CH3OCH3 — ether)
- C3H6O: Propanal (CH3CH2CHO — aldehyde) vs propanone (CH3COCH3 — ketone)

### All Isomers of C4H10 (Butane)
1. n-Butane: CH3-CH2-CH2-CH3 (straight chain)
2. 2-Methylpropane: CH3-CH(CH3)-CH3 (branched)

### All Isomers of C4H9OH (Butanol — C4H10O)
1. Butan-1-ol: CH3CH2CH2CH2OH
2. Butan-2-ol: CH3CH(OH)CH2CH3
3. 2-Methylpropan-1-ol: (CH3)2CHCH2OH
4. 2-Methylpropan-2-ol: (CH3)3COH

---

## Summary: Functional Groups and Tests

| Homologous Series | Functional Group | Test | Result |
|------------------|----------------|------|--------|
| Alkenes | C=C double bond | Bromine water | Orange → colorless |
| Alcohols | -OH | Na metal | Fizzing (H2 gas) |
| Carboxylic acids | -COOH | Na2CO3 | Effervescence (CO2) |
| Aldehydes | -CHO | Fehling''s/Tollens'' | Brick red ppt / silver mirror |
| Ketones | -CO- | Fehling''s/Tollens'' | No reaction (negative) |
| Esters | -COO- | Smell; hydrolysis | Fruity smell; gives acid + alcohol |

---

## Crude Oil and Fractional Distillation

Crude oil = mixture of hydrocarbons from decomposed ancient organisms.

**Fractional distillation** separates crude oil using differences in boiling points:

| Fraction | Carbon atoms | Boiling range (°C) | Uses |
|---------|-------------|-------------------|------|
| Refinery gas | C1-C4 | below 25 | Fuel (LPG, cooking) |
| Gasoline/petrol | C5-C10 | 25-175 | Car fuel |
| Naphtha/light oil | C7-C14 | 100-200 | Chemical feedstock |
| Kerosene/paraffin | C10-C16 | 175-275 | Aircraft fuel, heating |
| Diesel/gas oil | C14-C20 | 250-400 | Lorry/bus fuel |
| Lubricating oil | C20-C30 | 300-500 | Engine oil |
| Heavy oil/fuel oil | C30-C40 | 400+ | Ship fuel, power stations |
| Bitumen/tar | C40+ | residue | Road surfacing, roofing |

**Cracking:** Heating long-chain hydrocarbons with catalyst (Al2O3/silica) at high temperature → shorter, more useful hydrocarbons + alkenes:
C16H34 → C8H18 + C4H8 + C4H8 (example)

**Why crack?** Greater demand for petrol and short-chain fractions than for heavy oils.
', 'definitions', 3),

  (v_topic_id, 'Worked Examples: Organic Chemistry', E'
## Worked Examples — Organic Chemistry

### Example 1: Identifying an Unknown Compound
**Q:** An organic compound X:
- Molecular formula C2H5OH
- Decolorizes acidified K2Cr2O7 (orange → green)
- Reacts with CH3COOH to form a sweet-smelling compound
- Produced by fermentation of glucose

Identify X, name the sweet-smelling product, and write the fermentation equation.

**Solution:**
X is **ethanol (C2H5OH)**

Oxidation: C2H5OH + [O] → CH3COOH (orange Cr2O72- reduced to green Cr3+)

Esterification: C2H5OH + CH3COOH ⇌ CH3COOC2H5 + H2O
Sweet product = **ethyl ethanoate** (fruity smell, nail polish remover)

Fermentation: C6H12O6 → 2C2H5OH + 2CO2 [yeast, 30-40°C]

---

### Example 2: Distinguishing Compounds
**Q:** How would you use chemical tests to distinguish between:
(a) Propane and propene  (b) Ethanol and ethanoic acid

**Solution:**
(a) **Propane vs Propene:**
- Add **bromine water**: Propane (alkane) → NO change (stays orange); Propene (alkene) → decolorized (colorless) because Br2 adds across C=C bond.
- Also: Propane does not decolorize KMnO4; propene does.

(b) **Ethanol vs Ethanoic acid:**
- Add **Na2CO3 (sodium carbonate)**: Ethanol → no gas; Ethanoic acid → effervescence (CO2 produced: 2CH3COOH + Na2CO3 → 2CH3COONa + H2O + CO2)
- Use **litmus/universal indicator**: Ethanoic acid turns it red/acidic; ethanol is neutral.

---

### Example 3: Naming Esters
**Q:** Name the esters formed from: (a) methanol + ethanoic acid; (b) propan-1-ol + methanoic acid

**Solution:**
(a) Methanol (CH3OH) + Ethanoic acid (CH3COOH) → **Methyl ethanoate** (CH3COOCH3) + H2O

(b) Propan-1-ol (CH3CH2CH2OH) + Methanoic acid (HCOOH) → **Propyl methanoate** (HCOOCH2CH2CH3) + H2O

---

### Example 4: Polymerization
**Q:** Write the structure of the repeat unit of PVC and name its monomer.

**Solution:**
Monomer: **Chloroethene (vinyl chloride, CH2=CHCl)**
Polymerization: n(CH2=CHCl) → (-CH2-CHCl-)n

Repeat unit: **-CH2-CHCl-** (this unit repeats thousands of times in PVC)

---

### Example 5: Isomers
**Q:** Draw and name all structural isomers of C3H7OH (propanol).

**Solution:**
C3H7OH has two isomers:

1. **Propan-1-ol:** CH3-CH2-CH2-OH (OH on carbon 1, primary alcohol)
2. **Propan-2-ol:** CH3-CH(OH)-CH3 (OH on carbon 2, secondary alcohol)

These are **position isomers** — same chain length, OH group in different position.

---

### Example 6: Cracking
**Q:** Write an equation for the cracking of decane (C10H22) to produce octane and ethene.

**Solution:**
C10H22 → C8H18 + C2H4    [catalyst Al2O3, high temperature ~500°C]

**Check:** C: 10 = 8 + 2 ✓; H: 22 = 18 + 4 ✓

Ethene (alkene) produced can be used to make:
- Polyethene (polythene) by addition polymerization
- Ethanol by hydration
- Ethane-1,2-diol for Terylene (polyester)
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Organic Chemistry', E'
## WASSCE Practice Questions — Organic Chemistry

### Multiple Choice

**Q1.** The general formula CnH2n represents:
A) Alkanes  B) Alkenes  C) Alkynes  D) Alcohols
**Answer: B**

**Q2.** Which reagent is used to test for unsaturation (C=C)?
A) Litmus paper  B) Bromine water  C) Limewater  D) NaOH
**Answer: B** — Decolorizes orange bromine water.

**Q3.** Ethanol is converted to ethanoic acid by:
A) Reduction  B) Hydration  C) Oxidation  D) Esterification
**Answer: C**

**Q4.** Which type of polymerization involves loss of a small molecule?
A) Addition  B) Condensation  C) Free radical  D) Substitution
**Answer: B**

**Q5.** The ester formed from ethanol and methanoic acid is:
A) Ethyl methanoate  B) Methyl ethanoate  C) Ethyl ethanoate  D) Methyl methanoate
**Answer: A** — Ethyl (from ethanol) + methanoate (from methanoic acid)

---

### Structured Questions

**Q6.** (a) Define homologous series. [2]
(b) Ethanol can be made by two methods. Name both and write equations. [4]
(c) Write the equation for complete combustion of ethanol. [2]
(d) Explain why ethanol has a higher boiling point than ethane (same number of carbons). [2]

**Answers:**
(a) A homologous series is a group of organic compounds that have the same general formula, contain the same functional group, differ by -CH2- from one member to the next, and show a gradual change in physical properties while having similar chemical properties.

(b)
Method 1 — Fermentation: C6H12O6 → 2C2H5OH + 2CO2 [yeast, 30-40°C, anaerobic]
Method 2 — Hydration of ethene: CH2=CH2 + H2O → C2H5OH [H3PO4 catalyst, 300°C, 70 atm]

(c) C2H5OH + 3O2 → 2CO2 + 3H2O

(d) Ethanol has an -OH group that can form **hydrogen bonds** with other ethanol molecules (O is electronegative, H on O acts as H-bond donor). Ethane (C2H6) has only van der Waals forces (much weaker). More energy needed to break hydrogen bonds → much higher boiling point for ethanol (78°C vs -89°C for ethane).

---

**Q7.** (a) What is saponification? [1]
(b) An animal fat is hydrolyzed with NaOH. Name the TWO products. [2]
(c) Explain how soap acts as a cleaning agent. [3]
(d) Write the equation for the formation of propyl ethanoate. [2]

**Answers:**
(a) Saponification is the alkaline (base) hydrolysis of a fat (ester) with NaOH to produce soap (sodium salt of fatty acid) and glycerol.

(b) **Soap (sodium stearate or similar long-chain fatty acid sodium salt)** and **Glycerol (propane-1,2,3-triol)**

(c) Soap molecules are sodium salts of long-chain fatty acids (e.g., sodium stearate, C17H35COONa). They have:
- A **hydrophilic ionic head** (-COO-Na+) that dissolves in water and is attracted to water molecules
- A **hydrophobic hydrocarbon tail** (-C17H35) that dissolves in grease/oil but not water

When soap is added to greasy water:
1. The hydrophobic tails penetrate into and surround the grease droplets
2. The hydrophilic heads face outward into the water
3. Spherical structures called **micelles** form around grease
4. Micelles are dispersed (emulsified) in water and washed away

(d) Propan-1-ol + Ethanoic acid → Propyl ethanoate + Water
CH3CH2CH2OH + CH3COOH ⇌ CH3COOCH2CH2CH3 + H2O [conc H2SO4, heat]

---

**Q8.** (a) State TWO differences between addition and condensation polymerization.
(b) Draw the repeat unit of polystyrene. Monomer: C6H5-CH=CH2
(c) Explain why polymers are a problem for the environment.

**Answers:**
(a) Differences:
1. Addition polymerization requires monomers with C=C double bonds; condensation requires monomers with two functional groups (bifunctional).
2. Addition polymerization produces no by-product; condensation polymerization releases a small molecule (H2O, HCl) with each bond formed.

(b) Polystyrene repeat unit: -CH2-CH(C6H5)- [a -CH2- bonded to a -CH- which carries a benzene ring C6H5, repeated n times]

(c) Most polymers/plastics are **non-biodegradable** — they do not break down naturally for hundreds or thousands of years. Problems:
- Accumulate in landfill sites (take up large volumes)
- Pollute oceans and waterways (harm marine wildlife through ingestion or entanglement)
- Break into **microplastics** which enter food chains and drinking water
- Burning produces toxic gases (HCl from PVC, dioxins)
- Waste a valuable resource (made from oil)
', 'practice', 5);


  -- ============================================================
  -- TOPIC 5: ELECTROCHEMISTRY
  -- ============================================================
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Electrochemistry' LIMIT 1;
  DELETE FROM topic_sections WHERE topic_id = v_topic_id;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Electrolysis and Electrochemical Cells', E'
## Electrochemistry — Introduction

Electrochemistry studies the relationship between electrical energy and chemical reactions.

**Two key processes:**
1. **Electrolysis** — electrical energy drives a chemical reaction (non-spontaneous)
2. **Electrochemical cells** — chemical reaction generates electrical energy (spontaneous)

---

## Key Definitions

| Term | Definition |
|------|-----------|
| Electrolysis | Decomposition of an electrolyte by passing DC current through it in molten or aqueous state |
| Electrolyte | Ionic compound that conducts electricity when molten or dissolved in water |
| Non-electrolyte | Substance that does not conduct electricity (covalent molecules, e.g., sugar, urea) |
| Electrode | The conductor (graphite or metal) through which current enters or leaves the electrolyte |
| Anode | POSITIVE electrode — where OXIDATION occurs; attracts anions |
| Cathode | NEGATIVE electrode — where REDUCTION occurs; attracts cations |
| Cation | Positive ion; moves to cathode (-) |
| Anion | Negative ion; moves to anode (+) |

**Memory aid: "AN OX" and "RED CAT"**
- ANode = OXidation (loss of electrons)
- REDuction = CAThode (gain of electrons)

**OILRIG:** Oxidation Is Loss; Reduction Is Gain (of electrons)

---

## Electrolysis Setup

**Components required:**
1. DC power supply (battery)
2. Two electrodes (connected to battery)
3. Electrolyte (molten or in solution)
4. External connecting wires

**What happens:**
- DC current → electrons flow from negative terminal through cathode
- Cations (+) migrate to cathode → gain electrons → reduced
- Anions (-) migrate to anode → lose electrons → oxidized
- Products form at the electrodes

**Inert electrodes:** Graphite (C) or platinum (Pt) — do not react with products.
**Active electrodes:** Same metal as the product (e.g., copper electrodes for copper refining).

---

## Electrolysis of Molten Ionic Compounds

With molten compounds, only the ions of that compound are present.

### Molten Lead(II) Bromide (PbBr2)

Ions present: Pb2+, Br-

At **cathode**: Pb2+ + 2e- → Pb    (lead deposited — grey metallic liquid)
At **anode**: 2Br- → Br2 + 2e-    (bromine gas — orange-brown vapor)
Overall: PbBr2 → Pb + Br2

### Molten Sodium Chloride (NaCl)

At **cathode**: Na+ + e- → Na    (sodium metal — silvery liquid)
At **anode**: 2Cl- → Cl2 + 2e-  (chlorine gas — yellow-green)
Overall: 2NaCl → 2Na + Cl2

**Industrial use (Down''s cell):** Produces Na metal and Cl2 gas.

### Molten Aluminium Oxide (Al2O3) — Hall-Héroult Process

Al2O3 dissolved in molten **cryolite** (Na3AlF6) to lower melting point (~950°C from 2072°C).

At **cathode (steel)**: Al3+ + 3e- → Al    (molten aluminium sinks to bottom)
At **anode (graphite)**: 2O2- → O2 + 4e-  (oxygen gas — burns graphite anodes away!)

**Important:** Graphite anodes are consumed: C + O2 → CO2 (replaced regularly)
**Products:** Pure aluminium metal (liquid)
**Industrial significance:** Ghana''s VALCO smelter; West African bauxite (Al2O3 ore)

---

## Selective Discharge of Ions in Aqueous Solutions

In aqueous solutions, both electrolyte ions AND water-derived ions (H+ and OH-) are present.

**Competition at cathode:** Which cation is discharged?
**Order of preference (easiest to deposit):**
Cu2+ > H+ > Zn2+ > Fe2+ > Mg2+ > Na+ > K+

Rule: Cu2+ deposits before H2 evolves. If no metal ions more noble than H, then H2 evolves.

**Competition at anode:** Which anion is discharged?
**Order of preference (easiest to oxidize):**
I- > Br- > Cl- > OH-/H2O > SO42- > NO3-

Rule: Halides (especially at high concentration) are discharged before OH- (from water).
Exception: In DILUTE Cl- solution, OH- may be discharged instead of Cl- (O2 produced).

### Aqueous CuSO4 with Platinum Electrodes
Ions: Cu2+, SO42-, H+, OH-

At **cathode**: Cu2+ + 2e- → Cu    (copper plates out — pink)
At **anode**: 4OH- → O2 + 2H2O + 4e-   (oxygen evolved — SO42- not discharged)

### Aqueous HCl (dilute or concentrated) with Graphite Electrodes
Ions: H+, Cl-, (OH- from water)

At **cathode**: 2H+ + 2e- → H2     (hydrogen gas)
At **anode (dilute HCl)**: 4OH- → O2 + 2H2O + 4e-  (oxygen — OH- preferred over dilute Cl-)
At **anode (conc. HCl)**: 2Cl- → Cl2 + 2e-    (chlorine — Cl- high concentration wins)

### Aqueous Na2SO4 (dilute) with Platinum Electrodes
Ions: Na+, SO42-, H+, OH-

At **cathode**: 2H+ + 2e- → H2   (H+ discharged over Na+)
At **anode**: 4OH- → O2 + 2H2O + 4e-   (OH- discharged over SO42-)
Overall: 2H2O → 2H2 + O2    (effectively splitting water)
Volume ratio: H2 : O2 = 2:1 (Hoffman voltameter experiment)

### Aqueous NaCl (concentrated brine) — Chlor-Alkali Process
Ions: Na+, Cl-, H+, OH-

At **cathode**: 2H2O + 2e- → H2 + 2OH-     (hydrogen gas; also generates OH-)
OR: 2H+ + 2e- → H2
At **anode**: 2Cl- → Cl2 + 2e-   (chlorine gas — concentrated Cl- wins)
Remaining in solution: Na+ + OH- → NaOH

**THREE products from brine electrolysis:** Cl2, H2, NaOH

---

## Electrochemical (Voltaic/Galvanic) Cells

An electrochemical cell converts **chemical energy** to **electrical energy** through a spontaneous redox reaction.

### Simple Zinc-Copper (Daniell) Cell

**Setup:**
- Zinc electrode in ZnSO4 solution (left cell — negative electrode)
- Copper electrode in CuSO4 solution (right cell — positive electrode)
- Salt bridge (e.g., KNO3 in agar) connecting the two half-cells

**Half-reactions:**
Zinc half-cell (ANODE — oxidation): Zn(s) → Zn2+(aq) + 2e-
Copper half-cell (CATHODE — reduction): Cu2+(aq) + 2e- → Cu(s)
Overall reaction: Zn + Cu2+ → Zn2+ + Cu

**What happens:**
- Zinc oxidizes → loses mass (zinc electrode decreases in size)
- Copper ions reduced → copper deposits (copper electrode increases in mass)
- Electrons flow: Zn → external wire → Cu (from anode to cathode)
- Salt bridge: allows ion flow to maintain electrical neutrality (K+ to ZnSO4; NO3- to CuSO4)

**Cell EMF (voltage): ~1.1 V**

### Comparing Electrolytic and Electrochemical Cells

| Feature | Electrolytic Cell | Electrochemical (Voltaic) Cell |
|---------|-----------------|-------------------------------|
| Energy conversion | Electrical → Chemical | Chemical → Electrical |
| Spontaneous? | No — needs power supply | Yes — reaction drives current |
| Power source | External battery/power | None needed (self-powered) |
| Anode charge | Positive (+) | Negative (-) |
| Cathode charge | Negative (-) | Positive (+) |
| Reaction driven by | External current | Chemical energy (ΔG < 0) |
| Examples | Electrolysis, electroplating | Batteries, fuel cells |
', 'overview', 1),

  (v_topic_id, 'Faraday''s Laws, Electroplating and Industrial Applications', E'
## Faraday''s Laws of Electrolysis

### First Law
**"The mass of a substance deposited or liberated at an electrode is directly proportional to the quantity of electricity (charge) passed."**
m ∝ Q

### Second Law
**"When the same charge is passed through different electrolytes, the masses of substances deposited are proportional to their equivalent masses (molar mass ÷ n factor)."**
m ∝ M/n

### Key Equations

**Charge:**
Q = I × t
(Q in coulombs C; I in amperes A; t in seconds s)

**Moles of electrons:**
n(e-) = Q / F = (I × t) / 96500
(F = Faraday constant = 96,500 C/mol)

**Moles of substance:**
n(substance) = n(e-) / electrons per ion

**Mass:**
m = n × M = (I × t × M) / (n × F)

---

### Electrode Reactions — Full Reference

| Electrolysis | At Cathode (-) | At Anode (+) |
|-------------|---------------|-------------|
| Molten NaCl | Na+ + e- → Na | 2Cl- → Cl2 + 2e- |
| Molten PbBr2 | Pb2+ + 2e- → Pb | 2Br- → Br2 + 2e- |
| Molten Al2O3 (in cryolite) | Al3+ + 3e- → Al | 2O2- → O2 + 4e- |
| Dilute H2SO4 (Pt) | 2H+ + 2e- → H2 | 4OH- → O2 + 2H2O + 4e- |
| Dilute HCl (Pt) | 2H+ + 2e- → H2 | 4OH- → O2 + 2H2O + 4e- |
| Concentrated HCl | 2H+ + 2e- → H2 | 2Cl- → Cl2 + 2e- |
| Conc. NaCl (brine) | 2H2O + 2e- → H2 + 2OH- | 2Cl- → Cl2 + 2e- |
| CuSO4(aq) (Pt anode) | Cu2+ + 2e- → Cu | 4OH- → O2 + 2H2O + 4e- |
| CuSO4(aq) (Cu anode) | Cu2+ + 2e- → Cu (grows) | Cu → Cu2+ + 2e- (dissolves) |

---

## Electroplating

**Electroplating:** Using electrolysis to deposit a thin, adherent layer of one metal onto another.

### Reasons for Electroplating
- **Corrosion protection:** Chromium, tin, zinc plating protects steel
- **Decoration/appearance:** Gold, silver plating for jewelry
- **Reduced cost:** Cheap base metal (steel, copper) with thin precious metal coating
- **Improved properties:** Hard chrome (hardness), tin plating (food safety)

### Electroplating Setup

| Component | Role |
|-----------|------|
| Cathode | The OBJECT to be plated (must be clean and conductive) |
| Anode | The PLATING METAL (dissolves to replenish ions) |
| Electrolyte | Aqueous solution of a salt of the plating metal |

**Example: Silver plating a copper bracelet:**
- Cathode: copper bracelet
- Anode: pure silver
- Electrolyte: silver nitrate (AgNO3) solution

At cathode: Ag+(aq) + e- → Ag(s)     (silver deposits on bracelet)
At anode: Ag(s) → Ag+(aq) + e-       (silver dissolves, maintaining [Ag+])

**Example: Tin plating (tin cans / food containers):**
- Cathode: steel sheet
- Anode: tin metal
- Electrolyte: tin(II) sulfate or stannous chloride solution

**Example: Zinc electroplating (galvanising steel):**
- Protects against corrosion — zinc sacrificially corrodes before steel

**Example: Chromium plating (decorative hard chrome):**
- Cathode: steel object
- Anode: lead (inert — chromic acid electrolyte is used)
- Electrolyte: chromic acid (CrO3 in H2SO4)

---

## Industrial Applications

### 1. Chlor-Alkali Industry (Electrolysis of Brine)
Already described above. Three products: Cl2, H2, NaOH

**Economic importance:**
- Cl2: PVC manufacture; water treatment; bleach; solvents (CHCl3, CCl4); paper bleaching
- H2: Haber process (NH3); margarine production; fuel cells; rocket fuel
- NaOH: Soap and detergent manufacture; paper production; food processing (cocoa processing important in Ghana/Côte d''Ivoire)

### 2. Extraction of Aluminium (Hall-Héroult Process)
**Raw material:** Bauxite ore (Al2O3 with impurities of Fe2O3, SiO2)

**Purification:** Bayer process → dissolve Al2O3 in NaOH → filter → precipitate Al(OH)3 → heat → pure Al2O3 (alumina)

**Electrolysis:**
- Al2O3 dissolved in molten cryolite (Na3AlF6) — reduces melting point from 2072°C to ~950°C
- Large current (100,000–250,000 A) through system
- Cathode (steel lining): Al3+ + 3e- → Al (liquid Al sinks, tapped off regularly)
- Anode (graphite rods): 2O2- → O2 + 4e- (graphite burns: C + O2 → CO2; replaced every 1-3 months)

**High energy cost:** Electricity is major cost in Al production → smelters located near cheap hydro power
**West African context:** Ghana (Volta River Project, VALCO), Guinea (world''s largest bauxite reserves)

### 3. Electrorefining (Purification of Copper)
- Impure copper (blister copper): ~98-99% pure
- Set up as electrolytic cell with CuSO4 electrolyte
- Impure copper = ANODE (dissolves)
- Pure copper = CATHODE (copper deposits)
- Impurities (Ag, Au, Pt, Ni) fall as **anode sludge** (valuable — recovered separately!)
- Result: 99.99% pure copper for electrical wiring

### 4. Anodizing Aluminium
- Al made the ANODE in H2SO4
- Thick, controlled Al2O3 layer forms on surface
- This oxide layer:
  - Protects against further corrosion (self-sealing)
  - Can be dyed various colors (dye absorbed into porous oxide)
  - Used for aircraft parts, architectural cladding, electronics casings

---

## Summary: Electrolysis Rules

**At cathode (reduction):**
1. If a metal ion less reactive than H+ is present → metal deposits (Cu, Ag)
2. If only reactive metals (Na, K, Mg, Al, Zn) → H2 gas produced (from H+ or H2O)

**At anode (oxidation — inert electrode):**
1. If halide ion (Cl-, Br-, I-) present in sufficient concentration → halogen gas (Cl2, Br2, I2)
2. If no halide (or very dilute) → O2 gas produced (from OH-/H2O)
3. If active metal anode → the anode metal dissolves

**Memory aid:** "Halides go at the anode; metals go at the cathode; failing that, gases (H2 or O2)"
', 'explanation', 2),

  (v_topic_id, 'Worked Examples: Electrochemistry', E'
## Worked Examples — Electrochemistry

### Example 1: Identifying Electrode Products
**Q:** What products form at each electrode when concentrated brine (NaCl solution) is electrolyzed with graphite electrodes?

**Solution:**
Ions in concentrated brine: Na+, Cl-, H+ (from water), OH- (from water)

At **cathode**: H+ and Na+ both present.
Na+ is above H in activity series → Na+ is harder to reduce than H+.
Therefore H+ (from water) is discharged: 2H+ + 2e- → H2
**Product: Hydrogen gas**

At **anode**: Cl- and OH- both present.
In CONCENTRATED NaCl, Cl- is present in excess → overcome the preference for OH-.
2Cl- → Cl2 + 2e-
**Product: Chlorine gas**

Remaining in solution: Na+ and OH- combine → **Sodium hydroxide (NaOH)**

**The three products of brine electrolysis: H2, Cl2, NaOH**

---

### Example 2: Faraday''s Law Calculation — Mass
**Q:** A current of 2.0 A passes through molten PbBr2 for 30 minutes. Calculate the mass of lead deposited. [Pb = 207, F = 96500 C/mol]

**Solution:**
Step 1: Q = I × t = 2.0 × (30 × 60) = 2.0 × 1800 = 3600 C

Step 2: n(e-) = Q/F = 3600/96500 = 0.0373 mol

Step 3: Electrode reaction: Pb2+ + 2e- → Pb
n(Pb) = n(e-)/2 = 0.0373/2 = 0.01866 mol

Step 4: m(Pb) = n × M = 0.01866 × 207 = **3.86 g**

---

### Example 3: Faraday''s Law — Time
**Q:** How long must a current of 5.0 A be passed through AgNO3 solution to deposit 5.4 g of silver? [Ag = 108, F = 96500 C/mol]

**Solution:**
Step 1: n(Ag) = m/M = 5.4/108 = 0.05 mol

Step 2: Ag+ + e- → Ag (1 electron per Ag)
n(e-) = 0.05 mol

Step 3: Q = n(e-) × F = 0.05 × 96500 = 4825 C

Step 4: t = Q/I = 4825/5.0 = **965 seconds ≈ 16 minutes 5 seconds**

---

### Example 4: Electroplating
**Q:** Describe how to silver-plate a copper spoon. Include: anode, cathode, electrolyte, and electrode reactions.

**Solution:**
**Cathode:** The copper spoon (object to be plated)
**Anode:** A block of pure silver
**Electrolyte:** Silver nitrate solution (AgNO3, which contains Ag+ ions)

At **cathode** (spoon): Ag+(aq) + e- → Ag(s)   [silver ions deposited on spoon surface]
At **anode** (silver): Ag(s) → Ag+(aq) + e-      [silver dissolves, replenishes Ag+ ions]

**Key features:**
- The [Ag+] in solution remains roughly constant (anode dissolves as cathode deposits)
- Spoon gains mass; silver anode loses mass
- Current controlled carefully for even, thin coating
- Surface must be clean and smooth before plating

---

### Example 5: Comparing Cells
**Q:** Explain the key difference between an electrolytic cell and a voltaic (electrochemical) cell.

**Solution:**
**Electrolytic cell:**
- Requires an EXTERNAL power supply to force the reaction
- Uses electrical energy to cause a NON-SPONTANEOUS chemical reaction
- Examples: Electroplating, electrolysis of brine, aluminium extraction

**Voltaic (electrochemical) cell:**
- Produces electrical energy from a SPONTANEOUS chemical (redox) reaction
- No external power needed — it IS the power source
- Examples: Dry cell battery (Leclanché), lead-acid car battery, fuel cells

**Key:** Electrolytic cell CONSUMES electricity; Voltaic cell PRODUCES electricity.
', 'examples', 4),

  (v_topic_id, 'WASSCE Practice Questions: Electrochemistry', E'
## WASSCE Practice Questions — Electrochemistry

### Multiple Choice

**Q1.** During electrolysis, reduction occurs at the:
A) Anode  B) Cathode  C) Electrolyte  D) Salt bridge
**Answer: B** — Reduction (gain of electrons) at cathode.

**Q2.** When dilute H2SO4 is electrolyzed, the gas at the anode is:
A) Hydrogen  B) Sulfur dioxide  C) Oxygen  D) Sulfur
**Answer: C** — 4OH- → O2 + 2H2O + 4e- at anode.

**Q3.** The Faraday constant (charge per mole of electrons) is:
A) 6,600 C  B) 9,650 C  C) 96,500 C  D) 965,000 C
**Answer: C** — F = 96,500 C/mol

**Q4.** In silver plating a metal object:
A) The object is the anode  B) Silver nitrate solution is used as electrolyte
C) The anode is platinum  D) Silver ions are oxidized at cathode
**Answer: B**

**Q5.** In the electrolysis of copper(II) sulfate with copper electrodes:
A) Only hydrogen forms at cathode  B) The anode decreases in mass
C) The [Cu2+] decreases over time  D) Oxygen forms at both electrodes
**Answer: B** — The copper anode dissolves: Cu → Cu2+ + 2e-

---

### Structured Questions

**Q6.** A current of 3.0 A is passed for 1 hour through CuSO4(aq) with copper electrodes.
(a) Write electrode reactions at anode and cathode. [2]
(b) Calculate mass of copper deposited. [Cu=64, F=96500] [3]
(c) What happens to the mass of the anode? Explain. [2]

**Answers:**
(a) Cathode: Cu2+(aq) + 2e- → Cu(s)
    Anode: Cu(s) → Cu2+(aq) + 2e-

(b) Q = I × t = 3.0 × 3600 = 10,800 C
n(e-) = 10800/96500 = 0.1119 mol
n(Cu) = 0.1119/2 = 0.05596 mol (2e- per Cu)
m(Cu) = 0.05596 × 64 = **3.58 g**

(c) The anode mass DECREASES by 3.58 g. The copper anode dissolves at the same rate as copper deposits on the cathode (Cu → Cu2+ + 2e-). The [Cu2+] in solution stays approximately constant.

---

**Q7.** Describe the industrial electrolysis of concentrated brine.
(a) Write electrode reactions at anode and cathode. [2]
(b) State the three products and write their industrial uses (two each). [6]

**Answers:**
(a) Anode: 2Cl-(aq) → Cl2(g) + 2e-
    Cathode: 2H2O(l) + 2e- → H2(g) + 2OH-(aq)

(b)
**Chlorine (Cl2):**
1. Treatment of drinking water to kill bacteria/pathogens
2. Manufacture of PVC (polyvinyl chloride) plastic for pipes, wiring

**Hydrogen (H2):**
1. Used in Haber process to make ammonia (for fertilizers)
2. Hydrogenation of vegetable oils to make margarine

**Sodium hydroxide (NaOH):**
1. Manufacture of soap and detergents
2. Production of paper (wood pulp digestion/bleaching)

---

**Q8.** (a) State Faraday''s first law of electrolysis. [1]
(b) Calculate how long a 4.0 A current must flow through AgNO3(aq) to deposit 21.6 g of silver. [Ag=108, F=96500] [4]
(c) Distinguish between an electrolytic cell and a voltaic cell. [2]

**Answers:**
(a) The mass of substance deposited at an electrode is directly proportional to the quantity of electricity (charge, in coulombs) passed through the electrolyte.

(b) n(Ag) = 21.6/108 = 0.2 mol
Electrode reaction: Ag+ + e- → Ag (1 electron per silver ion)
n(e-) = 0.2 mol
Q = n × F = 0.2 × 96500 = 19,300 C
t = Q/I = 19300/4.0 = **4825 seconds (≈ 80.4 minutes)**

(c) **Electrolytic cell:** Uses electrical energy from an external power source to drive a non-spontaneous chemical reaction. **Voltaic (electrochemical) cell:** A spontaneous chemical (redox) reaction generates electrical energy — no external power needed (it is a source of electricity, e.g., a battery).
', 'practice', 5);

END $$;
