
/*
  # Chemistry notes for topics 1-5: Atomic Structure, Chemical Bonding, 
    Acids/Bases/Salts, Organic Chemistry, Electrochemistry
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Atomic Structure and Periodic Table
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Atomic Structure and Periodic Table' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: The Atom and the Periodic Table', $CONTENT$
## The Atom: Building Block of Matter

**Atom:** The smallest unit of an element that can exist and still retain the chemical properties of that element.

### History of Atomic Models
1. **Dalton (1803):** Atoms are tiny, indivisible solid spheres — like billiard balls
2. **Thomson (1897):** Discovered electrons; "plum pudding" model — electrons embedded in positive sphere
3. **Rutherford (1911):** Gold foil experiment → discovered nucleus; most of atom is empty space; dense positive nucleus
4. **Bohr (1913):** Electrons orbit nucleus in fixed energy levels (shells)
5. **Modern quantum model:** Electrons exist in probability regions (orbitals); current accepted model

### Subatomic Particles
| Particle | Symbol | Location | Relative mass | Relative charge |
|---------|--------|----------|---------------|----------------|
| Proton | p⁺ | Nucleus | 1 | +1 |
| Neutron | n | Nucleus | 1 | 0 (neutral) |
| Electron | e⁻ | Shells (orbitals) | 1/1836 (≈0) | -1 |

### Key Atomic Terms
**Atomic number (Z):** Number of protons in the nucleus → defines the element (each element has unique atomic number)
**Mass number (A):** Total number of protons + neutrons in nucleus
**Number of neutrons = A - Z**
**Number of electrons = Number of protons** (in neutral atom)

**Notation:** ᴬ_z X  (e.g., ¹²₆C means carbon-12: 6 protons, 6 neutrons)

### Isotopes
**Isotopes:** Atoms of the SAME element with the SAME number of protons but DIFFERENT numbers of neutrons.
- Same element (same chemical properties)
- Different mass numbers (different physical properties)

Examples:
- Carbon: ¹²C (6p, 6n), ¹³C (6p, 7n), ¹⁴C (6p, 8n — radioactive)
- Hydrogen: ¹H (protium), ²H (deuterium), ³H (tritium)
- Chlorine: ³⁵Cl (75%) and ³⁷Cl (25%) → Ar(Cl) = 35.5

**Relative atomic mass (Ar):** Weighted average mass of all isotopes relative to ¹/₁₂ mass of ¹²C
Ar(Cl) = (75 × 35 + 25 × 37) / 100 = (2625 + 925)/100 = 35.5
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Electronic Configuration and the Periodic Table', $CONTENT$
## Electron Arrangement

### Electron Shells
Electrons are arranged in shells (energy levels) around the nucleus. Shells are filled from innermost outward.

**Maximum electrons per shell:**
- Shell 1 (nearest nucleus): maximum 2 electrons
- Shell 2: maximum 8 electrons
- Shell 3: maximum 8 electrons (for first 20 elements)
- Shell 4 onwards: more complex

### Electronic Configurations for First 20 Elements
| Element | Z | Configuration | Notation |
|---------|---|---------------|----------|
| Hydrogen | 1 | 1 | 1 |
| Helium | 2 | 2 | 2 |
| Lithium | 3 | 2,1 | 2.1 |
| Carbon | 6 | 2,4 | 2.4 |
| Nitrogen | 7 | 2,5 | 2.5 |
| Oxygen | 8 | 2,6 | 2.6 |
| Neon | 10 | 2,8 | 2.8 |
| Sodium | 11 | 2,8,1 | 2.8.1 |
| Magnesium | 12 | 2,8,2 | 2.8.2 |
| Chlorine | 17 | 2,8,7 | 2.8.7 |
| Argon | 18 | 2,8,8 | 2.8.8 |
| Calcium | 20 | 2,8,8,2 | 2.8.8.2 |

**The outermost shell electrons = VALENCE ELECTRONS**
Valence electrons determine: chemical bonding, reactivity, group number in periodic table

### The Periodic Table

**Arrangement:** Elements arranged in order of INCREASING ATOMIC NUMBER

**Period:** Horizontal row — elements in same period have same number of electron shells
- Period 1: 2 elements (H, He)
- Period 2: 8 elements (Li to Ne)
- Period 3: 8 elements (Na to Ar)

**Group:** Vertical column — elements in same group have same number of valence electrons → similar chemical properties
- **Group 1 (Alkali metals):** 1 valence electron (Li, Na, K, Rb, Cs, Fr)
- **Group 2 (Alkaline earth metals):** 2 valence electrons (Be, Mg, Ca, Sr, Ba, Ra)
- **Group 7 (Halogens):** 7 valence electrons (F, Cl, Br, I, At)
- **Group 0/8 (Noble gases):** 8 valence electrons (2 for He) — full outer shell → very unreactive

### Periodic Trends
**Atomic radius:** Increases DOWN a group (more shells); decreases across a period (more protons pull electrons closer)

**Electronegativity:** Increases across a period; decreases down a group. Fluorine is most electronegative element.

**Ionisation energy:** Energy to remove one electron from gaseous atom. Increases across period; decreases down group.

**Metallic character:** Decreases left to right across period; increases down a group.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Periodic Table Groups and Properties', $CONTENT$
## Group Properties in Detail

### Group 1: Alkali Metals
**Physical properties:** Soft, low density, low melting points; silvery appearance (but quickly tarnish)

**Reactions with water:** Vigorous! → Metal hydroxide + Hydrogen
2Na + 2H₂O → 2NaOH + H₂↑
2K + 2H₂O → 2KOH + H₂↑

**Reactivity increases DOWN the group:** Li < Na < K < Rb < Cs
- More shells → outer electron further from nucleus → less energy to remove → more reactive

**Reactions with oxygen:** 4Na + O₂ → 2Na₂O (sodium oxide)
**Reactions with halogens:** 2Na + Cl₂ → 2NaCl

### Group 7: The Halogens
**Physical properties:**
- F₂: pale yellow gas
- Cl₂: yellow-green gas
- Br₂: red-brown liquid (only non-metal liquid at room temp)
- I₂: dark grey/purple solid; purple vapour
- Melting/boiling points INCREASE down group (stronger van der Waals forces)

**Reactivity DECREASES down group:** F > Cl > Br > I
- More shells → outer electrons further from nucleus → less attraction for another electron

**Displacement reactions:** More reactive halogen displaces less reactive one from its salt solution
Cl₂ + 2KBr → 2KCl + Br₂ (chlorine displaces bromine — Cl more reactive)
Br₂ + 2KI → 2KBr + I₂ (bromine displaces iodine — Br more reactive than I)
Cl₂ + 2KI → 2KCl + I₂ (chlorine displaces iodine)
But: I₂ + KCl → NO REACTION (iodine cannot displace chlorine)

### Group 0: Noble Gases
**Properties:** Colourless, odourless, monatomic gases; extremely unreactive (inert)
**Why unreactive:** Full outer electron shell — no tendency to gain, lose, or share electrons
**Uses:** Helium (balloons, diving tanks — non-toxic); Argon (inert atmosphere in light bulbs, welding); Neon (advertising signs); Krypton and Xenon (fluorescent lights, flash photography)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Atomic Structure', $CONTENT$
## Worked Examples

### Example 1: Writing Electronic Configurations
Write the electronic configuration of: (a) Phosphorus (P, Z=15) (b) Calcium (Ca, Z=20) (c) Chloride ion (Cl⁻, Z=17)

**(a) Phosphorus (15 electrons):**
Shell 1: 2, Shell 2: 8, Shell 3: 5
Configuration: **2.8.5**
Valence electrons: 5 → Group 5 (Group VA)

**(b) Calcium (20 electrons):**
Shell 1: 2, Shell 2: 8, Shell 3: 8, Shell 4: 2
Configuration: **2.8.8.2**
Valence electrons: 2 → Group 2

**(c) Chloride ion (Cl⁻):**
Cl has 17 electrons normally. Cl⁻ has gained 1 electron → 18 electrons
Shell 1: 2, Shell 2: 8, Shell 3: 8
Configuration: **2.8.8** (same as Argon — noble gas configuration)
This is why Cl forms Cl⁻ — achieves stable full outer shell!

### Example 2: Calculating Relative Atomic Mass
Chlorine exists as 75% ³⁵Cl and 25% ³⁷Cl. Calculate the relative atomic mass.

Ar = (75/100 × 35) + (25/100 × 37)
= 26.25 + 9.25
= **35.5**

### Example 3: Identifying Elements from Configuration
Element X has configuration 2.8.1. Identify the element and predict its properties.

- Total electrons = 2+8+1 = **11 electrons** → atomic number 11 → **Sodium (Na)**
- 1 valence electron → **Group 1 (Alkali metal)**
- 3 shells → **Period 3**
- Properties: Soft, silvery metal; reacts vigorously with water; forms NaOH and H₂; forms Na⁺ ions

### Example 4: Isotope Calculations
An element has two isotopes: ⁶³X (69%) and ⁶⁵X (31%). Calculate Ar and identify element.

Ar = (69/100 × 63) + (31/100 × 65)
= 43.47 + 20.15
= 63.62 ≈ **63.6**

This is **Copper (Cu)** (Ar ≈ 63.5)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Atomic Structure', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) State the number of protons, neutrons, and electrons in ⁴⁰₁₈Ar.
(b) Define isotopes and give two isotopes of hydrogen.

**Answer:**
(a) Argon-40:
- Atomic number (Z) = 18 → **18 protons**
- Mass number (A) = 40; neutrons = 40 - 18 = **22 neutrons**
- Neutral atom: **18 electrons**

(b) Isotopes are atoms of the same element with the same number of protons but different numbers of neutrons (different mass numbers).

Hydrogen isotopes:
- ¹H (Protium): 1 proton, 0 neutrons — most common
- ²H (Deuterium): 1 proton, 1 neutron
- ³H (Tritium): 1 proton, 2 neutrons — radioactive

---

### Question 2 (WASSCE 2021)
(a) Write the electronic configuration of nitrogen (Z=7) and oxygen (Z=8).
(b) Why are noble gases unreactive?

**Answer:**
(a) Nitrogen (7 electrons): **2.5** — Period 2, Group 5
Oxygen (8 electrons): **2.6** — Period 2, Group 6

(b) Noble gases are unreactive because they have a COMPLETE outer electron shell (full valence shell: 8 electrons, except He which has 2). Having a full outer shell means they have no tendency to gain, lose, or share electrons — therefore they do not form chemical bonds under normal conditions.

---

### Question 3 (WASSCE 2020)
Explain the following observations about Group 1 elements:
(a) They all react with water to form alkalis.
(b) The reactivity increases down the group.

**Answer:**
(a) All Group 1 metals have 1 valence electron which they readily donate to form M⁺ ions.
Reaction: 2M + 2H₂O → 2MOH + H₂↑
The metal hydroxide (MOH) dissolves in water to give an alkaline solution.

(b) Going down Group 1, each element has more electron shells. The outer (valence) electron is therefore further from the nucleus and more shielded by inner electron shells. The nuclear attraction on the valence electron decreases → the electron is more easily lost → the element is more reactive.

---

### Practice Questions
1. An atom has 17 protons and 18 neutrons. Write its symbol, atomic number, and mass number.
2. Write the electronic configurations of: Na, Mg, Al, Si, P, S, Cl, Ar. What trend do you notice?
3. State THREE differences between metals and non-metals in the periodic table.
4. Explain why chlorine's relative atomic mass is 35.5, not a whole number.
5. An element in Group 2, Period 3 — identify the element and state its electron configuration.

**Answers:**
1. ³⁵₁₇Cl; Z = 17; A = 35
2. Na(2.8.1), Mg(2.8.2), Al(2.8.3), Si(2.8.4), P(2.8.5), S(2.8.6), Cl(2.8.7), Ar(2.8.8) — one more electron added to outer shell each time
3. Metals: conduct electricity, malleable/ductile, shiny, form positive ions, basic oxides; Non-metals: mostly non-conductors, brittle (if solid), form negative ions, acidic oxides
4. Chlorine has two isotopes (³⁵Cl = 75%, ³⁷Cl = 25%). The Ar is a weighted average of both isotopes. The average (35.5) is between the two, not a whole number, reflecting the mixture of isotopes.
5. Group 2, Period 3 = **Magnesium (Mg)**; configuration: **2.8.2**
$CONTENT$, 'practice', 5);

  -- Chemical Bonding
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Chemical Bonding' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Chemical Bonding', $CONTENT$
## Why Do Atoms Bond?

Atoms bond with each other to achieve a more stable electron arrangement — usually a full outer electron shell (the **octet rule**: 8 electrons in outer shell; except H and He which need only 2).

### The Three Main Types of Chemical Bonds
1. **Ionic bonding:** Transfer of electrons from metal to non-metal → ions formed → electrostatic attraction
2. **Covalent bonding:** Sharing of electrons between non-metals → molecules formed
3. **Metallic bonding:** Metal atoms share delocalised electrons → metal lattice

### Fourth Type: Hydrogen Bonding
- Special type of intermolecular force (not true chemical bond)
- Occurs between H bonded to N, O, or F and a lone pair on another N, O, or F
- Responsible for: high boiling point of water, properties of DNA, protein structure

### Bond Polarity
**Electronegativity:** Ability of an atom to attract bonding electrons toward itself
- High electronegativity: F > O > N > Cl
- When two atoms with DIFFERENT electronegativities bond → polar bond (electrons shared unequally)
- When same (or similar) electronegativities → non-polar bond

**Polar molecule:** Has an uneven charge distribution (dipole moment)
- H₂O: polar (V-shape; O is more electronegative; partial charges δ+ on H, δ- on O)
- CO₂: non-polar despite polar bonds (linear; dipoles cancel)
- HCl: polar (Cl more electronegative than H)
- CCl₄: non-polar (tetrahedral; dipoles cancel)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Ionic, Covalent, and Metallic Bonding', $CONTENT$
## Bonding Types in Detail

### Ionic Bonding
**Formation:** Metal gives electron(s) to non-metal → both achieve full outer shells
- Metal loses electrons → becomes positive ion (cation): Na → Na⁺ + e⁻
- Non-metal gains electrons → becomes negative ion (anion): Cl + e⁻ → Cl⁻
- Oppositely charged ions attract each other strongly → ionic bond

**Structure:** Giant ionic lattice (repeating 3D arrangement of alternating + and - ions)
- NaCl: each Na⁺ surrounded by 6 Cl⁻ and vice versa
- Lattice held together by strong electrostatic attractions in ALL directions

**Properties of ionic compounds:**
- High melting/boiling points (strong ionic bonds throughout lattice require much energy to break)
- Hard and brittle (when struck, ions of same charge align → repel → shatter)
- Conduct electricity when MOLTEN or in SOLUTION (ions free to move; carry charge)
- Do NOT conduct when solid (ions fixed in lattice; cannot move)
- Usually soluble in water (water molecules surround and separate ions)

**Common examples:** NaCl (table salt), MgO (magnesia), CaCl₂, K₂O, Al₂O₃

### Covalent Bonding
**Formation:** Both atoms contribute one or more electrons to a shared pair → covalent bond
- Single bond: 1 shared pair (H-H, H-Cl, C-H)
- Double bond: 2 shared pairs (O=O, C=O, C=C)
- Triple bond: 3 shared pairs (N≡N, C≡C)

**Dot-cross (Lewis) diagrams:** Show valence electrons only; electrons from each atom drawn differently

**Examples:**
- H₂: H:H (1 shared pair — single bond)
- Cl₂: Each Cl has 7 valence electrons; 1 shared pair; each Cl ends up with 8 outer electrons
- H₂O: O has 6 valence; needs 2 more → shares with 2 H atoms; V-shaped molecule; 2 lone pairs on O
- NH₃: N has 5 valence; shares with 3 H; pyramidal; 1 lone pair on N
- CO₂: C has 4 valence; double bond with each O; linear; O=C=O

**Structures:**
1. **Simple molecular:** Small molecules (H₂O, CO₂, HCl, CH₄); weak intermolecular forces between molecules → low melting/boiling points; non-conductor
2. **Giant covalent (macromolecular):** Atoms covalently bonded throughout → very high melting points; non-conductor; very hard
   - Diamond: C; each C bonded to 4 others; tetrahedral; hardest natural substance
   - Graphite: C; layers of hexagonal rings; delocalized electrons → conducts; used as lubricant
   - Silicon dioxide (SiO₂): sand; very high mp

### Metallic Bonding
**Structure:** Positive metal ions (cations) in a sea of delocalised electrons
- Metal atoms release valence electrons → become positive ions
- Electrons free to move throughout structure

**Properties:**
- Conduct electricity (free electrons carry charge)
- Conduct heat (free electrons transfer kinetic energy)
- Malleable and ductile (layers of ions can slide without breaking; metallic bond maintains)
- Shiny (free electrons reflect light)
- High melting/boiling points (generally — strong metallic bonds)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Intermolecular Forces and Allotropy', $CONTENT$
## Intermolecular Forces

Forces between molecules (weaker than chemical bonds):

### 1. London Dispersion Forces (Van der Waals Forces)
- Weakest intermolecular force
- Exist between ALL molecules (polar and non-polar)
- Caused by temporary dipoles
- Increase with molecular size and surface area
- Explains why larger noble gases/molecules have higher boiling points (Ne < Ar < Kr < Xe)
- Explains why longer alkane chains have higher boiling points (CH₄ < C₂H₆ < ... < C₁₂H₂₆)

### 2. Dipole-Dipole Forces
- Between polar molecules
- Permanent dipoles attract each other
- Stronger than London forces for similar-sized molecules

### 3. Hydrogen Bonding
- Special strong dipole-dipole interaction
- Requires H bonded to F, O, or N (these are very electronegative)
- H₂O: very high bp (100°C) compared to H₂S (-60°C) — due to hydrogen bonding
- HF: higher bp than HCl
- NH₃: higher bp than PH₃

**Why water is special:**
- Each water molecule can form UP TO 4 hydrogen bonds (2 donated via H, 2 accepted via O lone pairs)
- Ice: hydrogen bonds create open hexagonal structure → less dense than liquid water (floats!)
- Water: high surface tension, high boiling point, excellent solvent — all due to hydrogen bonding

### Allotropes of Carbon
**Allotropes:** Different physical forms of the same element — same element, different atomic arrangement

**Diamond:**
- Each C: 4 covalent bonds → tetrahedral → giant 3D covalent lattice
- Properties: Hardest natural substance; very high mp (~3550°C); poor conductor; transparent; used in cutting tools, jewellery

**Graphite:**
- Each C: 3 covalent bonds → flat hexagonal layers
- 4th valence electron of each C: delocalised between layers → can conduct electricity
- Layers held by weak van der Waals forces → slide easily → good lubricant; used in pencils
- Properties: Soft, slippery; conducts electricity; used as electrode, pencil lead, lubricant

**Fullerenes (C₆₀ — Buckminsterfullerene):**
- 60 C atoms in soccer ball shape (pentagons + hexagons)
- Discovered 1985
- Applications: Drug delivery, nanomaterials, superconductors

**Graphene:**
- Single layer of graphite; one atom thick
- Exceptional strength, conductivity; potential revolutionary material
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Chemical Bonding', $CONTENT$
## Worked Examples

### Example 1: Drawing Dot-Cross Diagrams
Draw the dot-cross diagram for: (a) NaCl (b) MgO (c) H₂O (d) NH₃

**(a) NaCl (ionic):**
Na: 2.8.1 → loses 1 e⁻ → Na⁺ (2.8)
Cl: 2.8.7 → gains 1 e⁻ → Cl⁻ (2.8.8)
[Na]⁺ [Cl]⁻ (show outer shells; Cl⁻ has 8 electrons in outer shell, all Cl's own)

**(b) MgO (ionic):**
Mg: 2.8.2 → loses 2 e⁻ → Mg²⁺ (2.8)
O: 2.6 → gains 2 e⁻ → O²⁻ (2.8)
[Mg]²⁺ [O]²⁻

**(c) H₂O (covalent):**
O has 6 valence electrons; needs 2 more
Share 1 pair with each H → 2 O-H bonds
O has 2 lone pairs remaining
Shape: **V-shaped (bent)** — 104.5° bond angle

**(d) NH₃ (covalent):**
N has 5 valence electrons; needs 3 more
Share 1 pair with each H → 3 N-H bonds
N has 1 lone pair remaining
Shape: **Trigonal pyramidal** — 107° bond angle

### Example 2: Predicting Properties
Predict whether each compound conducts electricity:
(a) Solid NaCl (b) Molten NaCl (c) NaCl solution (d) Solid Cu (e) Diamond

**(a) Solid NaCl:** NO — ions fixed in lattice; cannot move
**(b) Molten NaCl:** YES — ions free to move → carry charge
**(c) NaCl solution:** YES — ions dissociated in water → free to move
**(d) Solid Cu:** YES — delocalised electrons free to move throughout metal
**(e) Diamond:** NO — all 4 valence electrons tied up in covalent bonds; no free electrons

### Example 3: Explaining Boiling Points
Explain why water (H₂O) has a much higher boiling point (100°C) than hydrogen sulphide (H₂S, bp = -60°C) even though H₂S is larger.

**Answer:** Water molecules are held together by HYDROGEN BONDS in addition to van der Waals forces. Oxygen is highly electronegative → H-O bonds are highly polar → strong hydrogen bonds form between molecules. Breaking these requires much more energy → higher boiling point.
H₂S: sulphur is less electronegative → S-H bonds less polar → only van der Waals forces between H₂S molecules (no hydrogen bonding) → less energy needed to separate → lower boiling point.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Chemical Bonding', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Explain ionic bonding with reference to sodium chloride.
(b) State THREE properties of ionic compounds.

**Answer:**
(a) Ionic bonding in NaCl:
- Sodium (2.8.1) has 1 valence electron; chlorine (2.8.7) has 7 valence electrons
- Sodium TRANSFERS its 1 outer electron to chlorine
- Sodium becomes Na⁺ (2.8) — stable; chlorine becomes Cl⁻ (2.8.8) — stable
- Both achieve noble gas (full outer shell) configuration
- The opposite charges attract strongly → ionic bond
- NaCl forms a giant ionic lattice of alternating Na⁺ and Cl⁻ ions

(b) Three properties:
1. High melting and boiling points
2. Conduct electricity when molten or in aqueous solution (not when solid)
3. Often soluble in water
4. Hard and brittle

---

### Question 2 (WASSCE 2021)
Compare covalent and ionic bonding using the following headings:
(a) Formation  (b) Structure  (c) Electrical conductivity

**Answer:**
(a) **Formation:**
- Ionic: Transfer of electrons from metal to non-metal; ions formed
- Covalent: Sharing of electron pairs between non-metals; molecules formed

(b) **Structure:**
- Ionic: Giant ionic lattice
- Covalent: Simple molecules (small) OR giant covalent lattice (some)

(c) **Electrical conductivity:**
- Ionic: Conducts when molten or dissolved (free ions); not when solid
- Covalent: Most do NOT conduct (no charged particles); graphite is exception (delocalised electrons)

---

### Question 3 (WASSCE 2020)
(a) Explain why diamond is very hard but graphite is soft.
(b) Both are allotropes of carbon. What does "allotrope" mean?

**Answer:**
(b) **Allotropes** are different physical forms of the same element, with different arrangements of atoms.

(a) 
- **Diamond:** Each carbon atom is bonded to 4 others by strong covalent bonds in a tetrahedral 3D arrangement → giant covalent lattice with strong bonds in ALL directions → extremely hard; very high melting point
- **Graphite:** Each carbon bonded to only 3 others in flat hexagonal layers → layers are held to each other by only WEAK van der Waals forces → layers slide easily over each other → soft and slippery

---

### Practice Questions
1. Draw the dot-cross diagram for Cl₂.
2. Explain why graphite conducts electricity but diamond does not.
3. State THREE differences between ionic and metallic bonding.
4. Predict the formula of the ionic compound formed between aluminium (Al³⁺) and oxide (O²⁻) ions.
5. Explain why ice is less dense than liquid water.

**Answers:**
1. Each Cl has 7 valence electrons; they share one pair → each has 8 in outer shell; 3 lone pairs on each Cl
2. Graphite: 3 bonds per C → 4th valence electron is delocalised (free) → free electrons carry charge → conducts. Diamond: 4 bonds per C → ALL valence electrons used in bonding → no free electrons → non-conductor
3. Ionic: between metal and non-metal; forms + and - ions; ions fixed in lattice unless molten/dissolved. Metallic: between metal atoms only; forms cation sea in electron sea; electrons free to move → conducts even as solid
4. Al³⁺ needs to balance O²⁻: 2×Al³⁺ = +6; 3×O²⁻ = -6 → formula is **Al₂O₃** (aluminium oxide)
5. In ice, water molecules form hydrogen bond network that creates open hexagonal structure with more space between molecules than liquid water → lower density → ice floats on water. This is unusual — most solids are denser than their liquids.
$CONTENT$, 'practice', 5);

  -- Acids, Bases and Salts
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Acids, Bases and Salts' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Acids, Bases and Salts', $CONTENT$
## Acids, Bases, and Salts

### Definitions of Acids and Bases

**Arrhenius definition:**
- Acid: substance that produces H⁺ ions in water
- Base: substance that produces OH⁻ ions in water

**Bronsted-Lowry definition (more useful):**
- Acid: proton (H⁺) DONOR
- Base: proton (H⁺) ACCEPTOR
- HCl + H₂O → H₃O⁺ + Cl⁻ (HCl donates H⁺ to water; water is base)

### Strong vs Weak Acids
**Strong acids:** Completely (fully) ionise in water
- HCl → H⁺ + Cl⁻ (100% ionisation)
- H₂SO₄ → 2H⁺ + SO₄²⁻
- HNO₃ → H⁺ + NO₃⁻

**Weak acids:** Partially ionise in water (reversible equilibrium)
- CH₃COOH ⇌ H⁺ + CH₃COO⁻ (ethanoic/acetic acid — only ~1% ionised)
- H₂CO₃ ⇌ H⁺ + HCO₃⁻ (carbonic acid — very weak)
- Citric acid, lactic acid — naturally occurring weak acids

### Strong vs Weak Bases
**Strong bases:** Fully ionise in water
- NaOH → Na⁺ + OH⁻
- KOH → K⁺ + OH⁻
- Ca(OH)₂ → Ca²⁺ + 2OH⁻

**Weak bases:**
- NH₃ (ammonia): NH₃ + H₂O ⇌ NH₄⁺ + OH⁻

### The pH Scale
- Range: 0-14
- **pH < 7:** Acidic (higher H⁺ concentration)
- **pH = 7:** Neutral (pure water)
- **pH > 7:** Alkaline/basic (higher OH⁻ concentration)
- Strong acid: pH 0-2; Weak acid: pH 3-6
- Strong alkali: pH 12-14; Weak alkali: pH 8-11

**pH = -log[H⁺]** (concentration of H⁺ ions in mol/L)

### Indicators
Indicators change colour with pH:
- **Litmus:** Red in acid, blue in alkali, purple in neutral
- **Phenolphthalein:** Colourless in acid, pink in alkali
- **Methyl orange:** Red in acid, yellow in alkali
- **Universal indicator:** Whole range of colours for different pH values
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Reactions of Acids and Bases', $CONTENT$
## Chemical Reactions Involving Acids

### Reactions of Acids

**1. Acid + Metal → Salt + Hydrogen gas**
Zn + H₂SO₄ → ZnSO₄ + H₂↑
Mg + 2HCl → MgCl₂ + H₂↑
Fe + H₂SO₄ → FeSO₄ + H₂↑
Test for H₂: burns with a "squeaky pop" when lighted splint applied

Note: Copper, silver, gold do NOT react with dilute acids (unreactive metals)

**2. Acid + Metal Oxide (Base) → Salt + Water (Neutralisation)**
CuO + H₂SO₄ → CuSO₄ + H₂O
ZnO + 2HCl → ZnCl₂ + H₂O
Na₂O + H₂SO₄ → Na₂SO₄ + H₂O

**3. Acid + Metal Hydroxide (Alkali) → Salt + Water (Neutralisation)**
NaOH + HCl → NaCl + H₂O
2KOH + H₂SO₄ → K₂SO₄ + 2H₂O
Ca(OH)₂ + 2HCl → CaCl₂ + 2H₂O
NH₄OH + HCl → NH₄Cl + H₂O

**4. Acid + Metal Carbonate → Salt + Water + Carbon Dioxide**
CaCO₃ + 2HCl → CaCl₂ + H₂O + CO₂↑
Na₂CO₃ + H₂SO₄ → Na₂SO₄ + H₂O + CO₂↑
MgCO₃ + 2HCl → MgCl₂ + H₂O + CO₂↑
Test for CO₂: turns limewater milky (Ca(OH)₂ + CO₂ → CaCO₃ + H₂O)

**5. Acid + Metal Hydrogen Carbonate → Salt + Water + CO₂**
NaHCO₃ + HCl → NaCl + H₂O + CO₂↑

### Neutralisation — The Ionic Equation
The essential reaction of neutralisation:
**H⁺(aq) + OH⁻(aq) → H₂O(l)**

This is the net ionic equation for ALL strong acid + strong alkali neutralisations.

### Preparing Salts

**Method 1: Insoluble salt (double decomposition/precipitation)**
Mix two solutions that react to form an insoluble product:
Pb(NO₃)₂ + 2KI → PbI₂↓ (yellow precipitate) + 2KNO₃
AgNO₃ + NaCl → AgCl↓ (white precipitate) + NaNO₃

**Method 2: Acid + excess insoluble metal/oxide/carbonate**
Add excess solid (e.g., CuO, ZnCO₃) to acid → react until no more dissolves → filter off excess → evaporate to crystallise salt

**Method 3: Titration (for soluble salts from two solutions)**
Add exact amount of acid to exactly neutralise alkali (using indicator to find endpoint) → evaporate to crystallise

**Method 4: Direct synthesis**
Na + Cl₂ → 2NaCl (direct combination)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Salts, Solubility, and Water Treatment', $CONTENT$
## Salts and Solubility

### Naming Salts
Acid → Salt type:
- Hydrochloric acid (HCl) → Chloride salts (NaCl, CaCl₂)
- Sulphuric acid (H₂SO₄) → Sulphate salts (ZnSO₄, Na₂SO₄)
- Nitric acid (HNO₃) → Nitrate salts (KNO₃, Ca(NO₃)₂)
- Phosphoric acid (H₃PO₄) → Phosphate salts (Ca₃(PO₄)₂)
- Carbonic acid (H₂CO₃) → Carbonate salts (Na₂CO₃, CaCO₃)

### Solubility Rules (For WASSCE)
**All soluble:**
- All nitrates (NO₃⁻) — no exceptions
- All sodium (Na⁺), potassium (K⁺), ammonium (NH₄⁺) salts

**Mostly soluble, some exceptions:**
- Chlorides: Soluble EXCEPT AgCl, PbCl₂, Hg₂Cl₂ (insoluble)
- Sulphates: Soluble EXCEPT BaSO₄, PbSO₄, CaSO₄ (slightly)

**Mostly insoluble:**
- Carbonates: Insoluble EXCEPT Na₂CO₃, K₂CO₃, (NH₄)₂CO₃
- Hydroxides: Insoluble EXCEPT NaOH, KOH, Ca(OH)₂ (slightly), NH₄OH

### Water of Crystallisation and Anhydrous Salts
Some salts form crystals containing water (water of crystallisation):
- CuSO₄·5H₂O (copper(II) sulphate pentahydrate) — blue crystals
- When heated: CuSO₄·5H₂O → CuSO₄ (white powder) + 5H₂O
- CuSO₄ is anhydrous (without water) — used to test for water (turns blue)
- Na₂CO₃·10H₂O (washing soda), CaCl₂·6H₂O

### Hardness of Water
**Temporary hardness:** Caused by dissolved Ca(HCO₃)₂ and Mg(HCO₃)₂
- Removed by: Boiling (Ca(HCO₃)₂ → CaCO₃↓ + H₂O + CO₂); adding lime water (Ca(OH)₂)

**Permanent hardness:** Caused by dissolved CaSO₄ and MgSO₄
- Cannot be removed by boiling
- Removed by: Adding washing soda (Na₂CO₃) — forms insoluble CaCO₃; ion exchange resin; distillation

**Why hardness is a problem:** Soap doesn't lather (forms scum); scale/furring in kettles and pipes (wastes energy); scale in boilers (fire risk)

### pH and Agriculture
- Soil pH affects nutrient availability
- Most crops prefer slightly acidic to neutral soil (pH 6-7)
- Acidic soil: treated with agricultural lime (CaCO₃) or slaked lime (Ca(OH)₂)
- Too alkaline: treated with sulphur or acidic fertilisers
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Acids, Bases and Salts', $CONTENT$
## Worked Examples

### Example 1: Identifying Salt from Acid and Base
What salt is formed from each reaction?

(a) NaOH + HNO₃ → ? + H₂O
Salt name: **Sodium nitrate (NaNO₃)**
(sodium from NaOH; nitrate from HNO₃)

(b) Ca(OH)₂ + H₂SO₄ → ? + H₂O
Salt: **Calcium sulphate (CaSO₄)**
Note: 1 mol Ca(OH)₂ + 1 mol H₂SO₄ → CaSO₄ + 2H₂O

(c) Al₂O₃ + 3H₂SO₄ → ? + 3H₂O
Salt: **Aluminium sulphate (Al₂(SO₄)₃)**
Check balance: 2Al on each side; 6 O from Al₂O₃; 12 O from 3H₂SO₄ → 3SO₄; balance ✓

### Example 2: Predicting Solubility and Identifying Precipitate
Will a precipitate form when AgNO₃ solution is added to NaCl solution? Identify the precipitate.

Possible products: AgCl and NaNO₃
- AgCl: Silver chloride — INSOLUBLE (exception to chloride rule) → will precipitate
- NaNO₃: Sodium nitrate — soluble → stays in solution

**White precipitate of AgCl** forms.
This reaction is used to test for chloride ions!

### Example 3: Calculating pH
(a) A solution has [H⁺] = 0.01 mol/L. What is the pH?
pH = -log(0.01) = -log(10⁻²) = **2**

(b) If pH = 3, what is [H⁺]?
[H⁺] = 10⁻³ = **0.001 mol/L**

### Example 4: Titration Calculation
25.0 cm³ of NaOH is neutralised by 20.0 cm³ of 0.1 mol/L HCl. Calculate the concentration of NaOH.

NaOH + HCl → NaCl + H₂O (1:1 mole ratio)

Moles of HCl = concentration × volume (L) = 0.1 × (20/1000) = 0.002 mol
Moles of NaOH = moles of HCl = 0.002 mol (1:1)
Concentration of NaOH = moles / volume = 0.002 / (25/1000) = **0.08 mol/L**
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Acids, Bases, Salts', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Define an acid according to the Bronsted-Lowry theory.
(b) Write equations for the reaction of dilute sulphuric acid with (i) zinc metal (ii) sodium hydroxide.

**Answer:**
(a) A Bronsted-Lowry acid is a substance that can DONATE a proton (H⁺ ion) to another substance.

(b) (i) Zn + H₂SO₄ → ZnSO₄ + H₂↑
(ii) 2NaOH + H₂SO₄ → Na₂SO₄ + 2H₂O

---

### Question 2 (WASSCE 2021)
Explain the difference between a strong acid and a weak acid. Give one example of each.

**Answer:**
**Strong acid:** One that is COMPLETELY (fully) ionised in water — all molecules dissociate into ions.
Example: Hydrochloric acid (HCl → H⁺ + Cl⁻) — 100% ionised

**Weak acid:** One that is PARTIALLY ionised in water — only a small fraction of molecules dissociate; a reversible equilibrium exists.
Example: Ethanoic acid (CH₃COOH ⇌ H⁺ + CH₃COO⁻) — only about 1% ionised

Both a 1 mol/L strong acid and 1 mol/L weak acid have the same CONCENTRATION, but the strong acid has a LOWER pH (more H⁺ ions in solution).

---

### Question 3 (WASSCE 2020)
Describe how you would prepare a sample of copper(II) sulphate crystals from copper(II) oxide and dilute sulphuric acid.

**Answer:**
1. Pour a measured volume of dilute H₂SO₄ into a beaker
2. Warm the acid gently
3. Add excess CuO powder (black) to the warm acid; stir until no more dissolves
   [CuO + H₂SO₄ → CuSO₄ + H₂O — blue solution forms]
4. **Filter** the mixture to remove excess unreacted CuO
5. Transfer the blue CuSO₄ filtrate to an evaporating dish
6. **Evaporate** slowly (do not boil dry) to concentrate the solution
7. Allow to cool → **blue crystals** of CuSO₄·5H₂O form
8. Filter off and dry crystals between filter papers

---

### Practice Questions
1. A student added excess zinc to dilute HCl. State observations and write equation.
2. Identify the acid and salt formed: KOH + HNO₃ →
3. Why does soap not lather well in hard water?
4. State two methods of removing temporary hardness from water.
5. An indicator turns red in solution X and yellow in solution Y. If the indicator is methyl orange, which is acidic? What can you say about their pH?

**Answers:**
1. Observations: zinc dissolves; bubbles of gas produced; solution gets warm. Equation: Zn + 2HCl → ZnCl₂ + H₂↑
2. Acid: nitric acid (HNO₃); salt: potassium nitrate (KNO₃); KOH + HNO₃ → KNO₃ + H₂O
3. Hard water contains Ca²⁺ and Mg²⁺ ions; these react with soap to form insoluble calcium/magnesium stearate (scum) instead of lather. Only after all Ca²⁺/Mg²⁺ ions have formed scum will the soap lather.
4. Boiling (decomposes Ca(HCO₃)₂ → CaCO₃ precipitate); adding calcium hydroxide (lime water) — Clark's method
5. Methyl orange: red in acid, yellow in alkali. Solution X (red) = **acidic** (pH < 7); Solution Y (yellow) = **alkaline** (pH > 7)
$CONTENT$, 'practice', 5);

END $$;
