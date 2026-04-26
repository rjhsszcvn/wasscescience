
/*
  # Biology notes for final topics: Support & Movement, Biotechnology, Practical Skills, 
    Plant Coordination, Food Webs
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Support and Movement
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Support and Movement' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Support and Movement', $CONTENT$
## Support and Movement in Living Organisms

All living organisms need support (to maintain their shape against gravity) and the ability to move (locomotion or movement of body parts).

### Support in Plants
1. **Turgor pressure:** Water-filled vacuoles push against cell walls → cells become rigid → soft plant parts become firm
   - Loss of turgor (wilting) when plant is dehydrated
2. **Cellulose cell wall:** Provides rigidity; prevents over-expansion
3. **Lignin (in xylem):** Provides woody support; allows trees to grow tall
4. **Sclerenchyma fibres:** Very rigid; provide mechanical support in stems and leaves
5. **Collenchyma:** Flexible support in young plant parts (corners of stems)

### Support in Animals: The Skeleton

**Functions of the skeleton:**
1. Support: holds the body upright against gravity
2. Protection: skull (brain), ribcage (heart, lungs), vertebral column (spinal cord), pelvis (reproductive organs)
3. Movement: provides attachment for muscles; levers for muscle action
4. Blood cell production: Red bone marrow produces red and white blood cells
5. Mineral storage: Calcium and phosphorus stored in bones

**Types of skeletal systems:**
- **Exoskeleton (outside):** In arthropods (insects, crabs); chitin; limits size; must be moulted (ecdysis) to grow
- **Endoskeleton (inside):** In vertebrates (bone/cartilage); allows unlimited growth; doesn't need moulting
- **Hydrostatic skeleton:** In worms and other soft-bodied animals; fluid-filled body cavity provides support against contraction of muscles (earthworms move using this)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Human Skeletal and Muscular System', $CONTENT$
## The Human Skeleton

### Bones of the Skeleton
**Axial skeleton (central axis):**
- Skull (cranium + facial bones)
- Vertebral column: 7 cervical + 12 thoracic + 5 lumbar + 1 sacrum + 1 coccyx = 33 vertebrae
- Ribcage: 12 pairs of ribs + sternum (breastbone)

**Appendicular skeleton (limbs):**
- Shoulder girdle (clavicle + scapula) + arm bones (humerus, radius, ulna) + hand (carpals, metacarpals, phalanges)
- Pelvic girdle (ilium, ischium, pubis = hip bone) + leg bones (femur, tibia, fibula) + foot (tarsals, metatarsals, phalanges)

### Joints: Where Bones Meet
**Immovable joints (Fibrous joints):** Skull bones; no movement; held by fibrous tissue
**Slightly movable joints (Cartilaginous):** Between vertebrae; cartilage disc between bones; some flex
**Freely movable joints (Synovial joints):** Maximum movement; features:
- **Synovial fluid:** Lubricates joint; reduces friction
- **Articular cartilage:** Covers bone ends; reduces friction; absorbs shock
- **Ligament:** Bone to bone; holds joint together
- **Tendon:** Muscle to bone; transmits force

**Types of synovial joints:**
- **Ball and socket:** Shoulder (humerus + scapula), hip (femur + pelvis) → movement in ALL directions
- **Hinge joint:** Elbow, knee → flexion and extension only (like a door hinge)
- **Pivot joint:** Between radius and ulna → rotation
- **Gliding joint:** Between carpals → sliding movement

### Muscle Action: Antagonistic Pairs
Muscles can only PULL (contract), not push. They work in antagonistic pairs:

**Bicep-Tricep example (flexing elbow):**
- **Bicep** (FLEXOR): Contracts → shortens → BENDS arm (flexion)
- **Tricep** (EXTENSOR): Relaxes → extends when bicep contracts

- **Tricep** contracts → shortens → STRAIGHTENS arm (extension)
- **Bicep** relaxes

**How muscles produce force:**
Muscle contracts → pulls on tendon → tendon pulls bone → bone rotates about joint
The bone acts as a LEVER; joint as a FULCRUM
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Movement in Organisms', $CONTENT$
## Locomotion in Different Organisms

### Movement in Unicellular Organisms

**Amoeba:** Pseudopodium (false feet)
- Cytoplasm streams forward (endoplasm)
- Plasma membrane bulges out
- Rest of cell flows in
- Used for feeding (phagocytosis) and locomotion

**Paramecium:** Cilia
- Thousands of tiny hair-like cilia beat in coordinated waves
- Very fast movement in water

**Euglena:** Flagellum (singular: flagellum)
- Long whip-like appendage
- Rotates to propel organism forward

### Locomotion in Multicellular Animals

**Fish:** Undulating body; tail fin provides thrust; dorsal fin provides stability; pectoral fins steer
**Frogs:** Powerful hind legs for jumping; webbed feet for swimming
**Birds:** Wings (modified forelimbs) for flight; hollow bones reduce weight
**Earthworm:** Longitudinal + circular muscles + setae (bristles)
- Circular muscles contract → body gets longer and thinner → extends forward
- Setae grip soil; longitudinal muscles contract → body gets shorter and fatter → pulls posterior forward

### Movement vs Locomotion
**Movement:** Change in position of part of an organism (e.g., opening/closing of stomata, eye movement)
**Locomotion:** Movement of the whole organism from one place to another

All organisms show movement; not all show locomotion (e.g., plants show movement but not locomotion — except gametes in some algae)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Support and Movement', $CONTENT$
## WASSCE Past Questions

### Question 1 (WASSCE 2022)
State FOUR functions of the skeleton in mammals.

**Answer:**
1. **Support:** Maintains body shape and posture against gravity
2. **Protection:** Protects vital organs (skull → brain; ribcage → heart and lungs; pelvis → reproductive organs)
3. **Movement:** Provides attachment for muscles; acts as system of levers for movement
4. **Blood cell production:** Red bone marrow produces red blood cells, white blood cells, and platelets
5. **Mineral storage:** Stores calcium and phosphorus; released when needed by the body

---

### Question 2 (WASSCE 2021)
(a) State the types of joints found in the human body.
(b) Explain how antagonistic muscles work at the elbow joint.

**Answer:**
(a) Immovable (fibrous) joints — skull; Slightly movable (cartilaginous) joints — vertebrae; Freely movable (synovial) joints — shoulder, elbow, knee

(b) The biceps and triceps are antagonistic muscles:
- When **biceps contracts** (shortens), the forearm is pulled upward (FLEXION) — the elbow bends; the triceps relaxes simultaneously
- When **triceps contracts** (shortens), the forearm is pulled downward (EXTENSION) — the elbow straightens; the biceps relaxes simultaneously
This opposing action allows controlled movement in both directions

---

### Practice Questions
1. State TWO ways in which turgor pressure supports non-woody plants.
2. Compare endoskeleton and exoskeleton.
3. Name the type of joint and state the movement possible at: (a) shoulder (b) elbow (c) between skull bones
4. What is the function of: (a) cartilage (b) ligament (c) tendon?
5. How does an earthworm move? Describe the muscle actions.

**Answers:**
1. Cells filled with water by osmosis → push outward on cell walls → cells rigid and turgid → plant stands upright. If water lost → cells become flaccid → plant wilts
2. Endoskeleton: inside body, made of bone/cartilage, allows growth without moulting (vertebrates). Exoskeleton: outside body, made of chitin, must be moulted (ecdysis) for growth, provides more protection from external damage (arthropods)
3. (a) Shoulder: ball and socket → movement in all directions (b) Elbow: hinge joint → flexion and extension only (c) Skull: immovable/fibrous → no movement
4. (a) Cartilage: reduces friction at joint; absorbs shock (b) Ligament: joins bone to bone; holds joint together (c) Tendon: joins muscle to bone; transmits force of muscle contraction to bone
5. When circular muscles contract: body becomes long and thin → anterior (front) end pushed forward; setae of posterior end grip soil → front moves forward. When longitudinal muscles contract: body becomes short and fat → posterior (back) end pulled forward; setae of anterior end grip soil.
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Support and Movement Extended', $CONTENT$
## Bone Composition and Cartilage

### Bone Composition
Bone is a living tissue (not dead!) made of:
- **Collagen fibres** (~35%): Provides flexibility and tensile strength
- **Mineral salts** (~65%): Mainly hydroxyapatite [calcium phosphate Ca₅(PO₄)₃OH] — provides hardness and compressive strength
- **Living cells (osteocytes):** Maintain bone tissue; in small spaces (lacunae)
- **Osteoblasts:** Build new bone (deposit calcium)
- **Osteoclasts:** Break down bone (resorption) — allows remodelling

Together, collagen + minerals make bone both flexible AND hard (like reinforced concrete).

### Cartilage
Types of cartilage:
1. **Hyaline cartilage:** Smooth, glassy; covers ends of bones in synovial joints; in trachea and bronchi rings; fetal skeleton
2. **Fibrocartilage:** Contains collagen fibres; tougher; intervertebral discs, meniscus in knee
3. **Elastic cartilage:** Contains elastic fibres; flexible; ear pinna, epiglottis

Cartilage differs from bone: no blood vessels; cannot repair as well; no mineral deposits (softer but more flexible)

### Osteoporosis
- Loss of bone density with age (especially in postmenopausal women)
- Bones become porous, brittle, prone to fractures
- Prevention: adequate calcium and vitamin D intake, weight-bearing exercise
$CONTENT$, 'examples', 5);

  -- Biotechnology
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Biotechnology and Genetics Applications' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Biotechnology', $CONTENT$
## Biotechnology: Using Living Organisms for Human Benefit

**Biotechnology** is the use of living organisms, cells, or biological processes to develop products and processes useful to humans.

### Traditional (Old) Biotechnology
Uses of microorganisms known for thousands of years:
- **Bread making:** Yeast (Saccharomyces cerevisiae) ferments glucose → CO₂ (causes dough to rise) + ethanol (evaporates during baking)
- **Alcohol production (brewing, winemaking):** Yeast fermentation: glucose → ethanol + CO₂
- **Cheese making:** Bacteria (Lactobacillus) ferment lactose in milk → lactic acid → curdles milk; enzymes (rennet) separate curds
- **Yoghurt production:** Lactobacillus bacteria ferment lactose → lactic acid → thickens and sours milk
- **Vinegar:** Acetobacter bacteria oxidise ethanol → acetic acid
- **Kombucha:** Symbiotic culture of bacteria and yeast (SCOBY) ferment sweet tea

### Modern Biotechnology: Genetic Engineering
**Genetic engineering** (recombinant DNA technology): Altering the DNA of an organism by inserting, deleting, or modifying genes from another organism.

**The process of genetic engineering:**
1. **Identify the gene** of interest (e.g., human insulin gene)
2. **Cut out the gene** using restriction enzymes (molecular scissors — cut DNA at specific sequences)
3. **Cut open plasmid** (circular DNA in bacteria) using the same restriction enzyme → sticky ends match
4. **Join gene into plasmid** using ligase enzyme (molecular glue) → recombinant plasmid
5. **Insert plasmid into bacterium** (transformation)
6. **Culture bacterium:** As bacterium reproduces, it produces human protein

### Key Examples of Genetic Engineering
- **Insulin production:** Human insulin gene inserted into E. coli → bacteria produce insulin for diabetics (safer than pig insulin previously used)
- **Bt crops:** Bacillus thuringiensis gene in cotton/maize → plant produces own insecticide → pest resistance
- **Golden Rice:** Beta-carotene (vitamin A precursor) genes inserted into rice → addresses vitamin A deficiency
- **Genetically Modified Organisms (GMOs):** Plants with herbicide resistance, disease resistance, increased yield
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Cloning, Gene Therapy, and Medical Biotechnology', $CONTENT$
## Advanced Biotechnology Topics

### Cloning
**Cloning:** Producing genetically identical copies of an organism.

**Types of cloning:**
1. **Natural cloning:** Identical twins; vegetative propagation in plants; asexual reproduction
2. **Artificial cloning:**
   - **Plant tissue culture (micropropagation):** Small piece of plant tissue (explant) placed on sterile nutrient agar with hormones → callus forms → shoots develop → whole plant regenerates. Advantages: rapid production of many identical disease-free plants
   - **Animal cloning (somatic cell nuclear transfer - SCNT):** Remove nucleus from egg cell; insert nucleus from body cell of donor animal; stimulate to develop; implant in surrogate mother. Example: Dolly the sheep (1996)

### Polymerase Chain Reaction (PCR)
PCR amplifies (copies) specific DNA sequences millions of times from tiny samples:
- Used in: DNA fingerprinting (forensics), detecting pathogens, genetic testing
- Process: Heat to separate DNA strands → cool with primers → DNA polymerase copies strands → repeat ~30 times

### DNA Fingerprinting
Each person has unique pattern of repeated DNA sequences. Uses:
- Forensics (crime scene DNA)
- Paternity testing
- Identifying victims of disasters

### Gene Therapy
Inserting functional genes into cells to replace defective ones:
- **Somatic gene therapy:** Corrects genes in specific body cells (not heritable)
- **Germ line gene therapy:** Modifies eggs, sperm, or embryos → heritable changes → currently illegal/controversial in most countries
- Example: Gene therapy for cystic fibrosis (CFTR gene), haemophilia, some cancers

### Monoclonal Antibodies
Antibodies produced from a single B-cell clone → all identical → bind to ONE specific antigen.
Uses:
- Pregnancy tests (detect HCG hormone)
- Cancer treatment (Herceptin for breast cancer)
- Diagnosis (detect specific proteins/antigens)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Applications and Ethical Issues', $CONTENT$
## Biotechnology in Agriculture

### GM Crops: Benefits and Concerns

**Benefits:**
1. Herbicide resistance (Roundup Ready crops): Farmers can spray herbicide to kill weeds but not crops → higher yields
2. Pest resistance (Bt crops): Produces insecticide → less pesticide spraying → reduced costs, less environmental pollution
3. Disease resistance: Reduced crop losses
4. Improved nutritional value: Golden Rice (vitamin A), biofortified cassava/maize
5. Drought tolerance: Crops survive in drier conditions → important with climate change
6. Longer shelf life: Reduced food waste
7. Increased yield: Feed more people (food security)

**Concerns (Ethics and Risks):**
1. **Health risks:** Long-term effects of consuming GM foods unclear to some critics (though most scientific bodies say GM foods currently approved are safe)
2. **Biodiversity loss:** GM crops might outcompete wild relatives; monocultures reduce genetic diversity → vulnerability to new diseases
3. **Terminator seeds:** GM crops designed to produce sterile seeds → farmers must buy new seeds each year → economic dependence on corporations
4. **Horizontal gene transfer:** Could GM genes spread to wild plants?
5. **Ethical concerns:** Patenting life forms; "playing God"
6. **Superweeds:** Herbicide-resistant genes could transfer to weeds

### Fermentation Industry
Industrial fermenters (bioreactors) produce:
- Penicillin (antibiotic from Penicillium mould)
- Insulin (from GM bacteria)
- Citric acid (from Aspergillus niger mould)
- Bioethanol (from yeast)
- Single Cell Protein (SCP) — yeast or bacteria grown as food/animal feed

### Bioremediation
Using microorganisms to clean up pollution:
- Bacteria can break down oil spills
- Fungi can absorb heavy metals from contaminated soil
- Bacteria used to treat sewage (breakdown of organic waste)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Biotechnology', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) What is biotechnology?
(b) State FOUR products made using microorganisms.

**Answer:**
(a) Biotechnology is the use of living organisms or biological processes to develop products and processes for human benefit.

(b) Any four: bread (yeast), beer/wine/palm wine (yeast), cheese (bacteria/enzymes), yoghurt (bacteria), penicillin (Penicillium mould), vinegar (Acetobacter), insulin (GM bacteria), citric acid (Aspergillus), bioethanol (yeast), biogas/methane (anaerobic bacteria)

---

### Question 2 (WASSCE 2021)
Describe the process by which human insulin is produced using genetic engineering.

**Answer:**
1. Locate and identify the human insulin gene in the DNA of human pancreatic cells
2. Use restriction enzymes to cut out the insulin gene (leaves "sticky ends")
3. Use the same restriction enzyme to cut open a bacterial plasmid (leaving complementary sticky ends)
4. Mix insulin gene with opened plasmid; use DNA ligase to join them → recombinant plasmid
5. Insert recombinant plasmid into E. coli bacteria (transformation)
6. Culture bacteria in large fermenters; bacteria multiply and express the human insulin gene
7. Collect and purify insulin produced by bacteria → used to treat diabetic patients

---

### Question 3 (WASSCE 2020)
State THREE advantages and TWO disadvantages of growing GM crops.

**Answer:**
**Advantages (any 3):**
1. Pest resistance → less pesticide needed → lower costs and less pollution
2. Herbicide resistance → effective weed control → higher yields
3. Improved nutritional content (e.g., Golden Rice with beta-carotene)
4. Disease resistance → fewer crop losses
5. Drought tolerance → can grow in arid regions
6. Longer shelf life → less food waste

**Disadvantages (any 2):**
1. Possible unknown long-term health effects of consuming GM foods
2. Reduction in biodiversity (monocultures; spread of GM genes to wild plants)
3. Economic dependence on biotech companies (cost of seeds, patents)
4. Development of herbicide-resistant "superweeds"

---

### Practice Questions
1. Explain the role of restriction enzymes and DNA ligase in genetic engineering.
2. What is cloning? Describe how Dolly the sheep was produced.
3. State the difference between somatic gene therapy and germ line gene therapy.
4. What are monoclonal antibodies? Give two uses.
5. What is fermentation? State two industrial products made by fermentation.

**Answers:**
1. Restriction enzymes: "molecular scissors" — cut DNA at specific recognition sequences, producing sticky ends; DNA ligase: "molecular glue" — joins sticky ends of gene fragment to opened plasmid
2. Producing genetically identical copies. Dolly: nucleus removed from sheep's egg cell; nucleus from body cell of donor sheep inserted; egg stimulated with electric shock to develop; embryo implanted in surrogate ewe; Dolly born genetically identical to nucleus donor
3. Somatic: genes corrected in specific body cells of patient → not passed to children; Germ line: genes modified in egg/sperm/early embryo → changes inherited by offspring → ethically controversial, largely banned
4. Antibodies produced from single B-cell clone → all identical, bind to specific antigen. Uses: pregnancy tests (detect HCG); targeted cancer therapy (Herceptin); diagnostic tests
5. Fermentation: anaerobic respiration by microorganisms producing useful products. Industrial products: penicillin (antibiotic), bioethanol, beer/wine, bread, cheese, citric acid, insulin
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Biotechnology Extended Notes', $CONTENT$
## More Biotechnology Applications

### Stem Cell Research
**Stem cells:** Undifferentiated cells capable of developing into any cell type.

**Embryonic stem cells:** From early embryo (blastocyst); can become ANY cell type; controversial (embryo must be destroyed)
**Adult stem cells:** In specific tissues (bone marrow, skin); can produce limited cell types
**Induced Pluripotent Stem Cells (iPSCs):** Adult cells reprogrammed to become pluripotent; avoids ethical issues of embryonic stem cells

**Potential uses:**
- Grow replacement tissues/organs (regenerative medicine)
- Treatment of leukaemia (bone marrow transplant = stem cell therapy)
- Research on disease development

### CRISPR-Cas9 Gene Editing
Revolutionary technology (2012) allowing precise editing of DNA:
- More accurate, cheaper, and easier than previous methods
- Used to: correct genetic diseases in research models; develop disease-resistant crops; investigate gene function
- Ethical debates: Use in human embryos ("designer babies")

### DNA Profiling Applications in West Africa
DNA technology increasingly used in:
- **Criminal justice:** Identifying perpetrators from crime scene evidence
- **Immigration:** Proving family relationships
- **Medical diagnosis:** Identifying genetic disorders, pathogens
- **Agricultural research:** Breeding programmes for improved livestock and crops
$CONTENT$, 'examples', 5);

  -- Practical Biology Skills
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Practical Biology Skills' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Practical Biology Skills', $CONTENT$
## Laboratory Skills for Biology

Practical skills are essential for WASSCE biology. You must know how to:
1. Use laboratory equipment safely and correctly
2. Plan and carry out experiments
3. Record data accurately
4. Present data in tables and graphs
5. Analyse and draw conclusions from data

### Laboratory Safety Rules
- Always wear appropriate protective equipment (lab coat, goggles, gloves where needed)
- Know the location of fire extinguisher, first aid box, eye wash station
- Never taste any substance in the laboratory
- Never pipette by mouth
- Handle glassware carefully; dispose of broken glass safely
- Label all containers
- Wash hands thoroughly after practical work
- Handle hot items with tongs or heat-resistant gloves
- Report all accidents to teacher immediately

### Common Laboratory Equipment
- **Microscope:** For viewing cells and microorganisms; calculate magnification = image size/actual size
- **Bunsen burner:** For heating; yellow flame (safety/luminous) vs blue flame (roaring/hot for heating)
- **Test tubes:** Small volume reactions; held in test tube rack
- **Beakers and conical flasks:** Larger volumes; heating
- **Measuring cylinder:** Measuring volumes of liquids
- **Thermometer:** Measuring temperature
- **Forceps and scalpels:** Dissection
- **Petri dishes:** Culturing microorganisms; germinating seeds
- **Filter paper and funnel:** Filtration
- **Stop clock:** Timing experiments
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Key Biological Tests and Procedures', $CONTENT$
## Practical Tests in Biology

### Food Tests Summary
| Substance | Test | Positive Result |
|-----------|------|-----------------|
| Starch | Iodine solution | Blue-black colour |
| Reducing sugar (glucose, maltose) | Benedict's test (heat) | Red/orange/brick-red precipitate |
| Non-reducing sugar (sucrose) | Hydrolysis with HCl, then Benedict's | Red/orange (only after acid hydrolysis) |
| Protein | Biuret test (NaOH + CuSO₄) | Purple/violet colour |
| Fat (lipid) | Emulsion test (ethanol, then water) | Milky-white emulsion |
| Vitamin C | DCPIP test | Blue DCPIP decolourises |

### Microscopy
**Using a microscope:**
1. Start with lowest power objective (×4 or ×10)
2. Place slide on stage; clip in place
3. Focus using coarse adjustment (lower objective close to slide, looking from side)
4. Look through eyepiece; use coarse then fine adjustment to focus
5. Increase magnification if needed; refocus

**Total magnification** = Objective magnification × Eyepiece magnification
Example: ×40 objective × ×10 eyepiece = ×400 total magnification

**Calculating actual size:**
Actual size = Image size / Magnification
Example: Cell in image = 2cm (20mm); magnification = ×400
Actual size = 20mm/400 = 0.05mm = 50μm

**Scale bars:** On micrographs, use scale bar to calculate actual sizes.

### Preparing a Microscope Slide
1. Place small piece of material/sample on clean glass slide
2. Add a drop of appropriate stain (iodine for plant cells/starch; methylene blue for animal cells)
3. Gently lower coverslip at 45° to avoid air bubbles
4. Blot excess stain with tissue/filter paper from side
5. Observe under microscope

**Common stains:**
- Iodine: stains starch blue-black; cytoplasm yellow-brown
- Methylene blue: stains nucleus blue; used for animal cells
- Safranin: stains lignified (woody) plant cells red
- Eosin: stains cytoplasm pink
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Experimental Design and Data Analysis', $CONTENT$
## Designing Biology Experiments

### Key Principles of Experimental Design
1. **Independent variable:** What you CHANGE (one at a time)
2. **Dependent variable:** What you MEASURE (the result)
3. **Controlled variables:** Everything else kept THE SAME
4. **Control experiment:** Same setup but WITHOUT the independent variable → provides comparison
5. **Replication:** Repeat experiment multiple times → improves reliability; identify anomalous results
6. **Hypothesis:** Testable prediction based on prior knowledge

### Example: Designing an Experiment

**Question:** Does temperature affect the rate of enzyme activity?

**Hypothesis:** As temperature increases (up to the optimum), the rate of enzyme activity will increase because higher temperature gives molecules more kinetic energy, leading to more enzyme-substrate collisions.

**Independent variable:** Temperature (test at 10°C, 20°C, 30°C, 40°C, 50°C, 60°C)

**Dependent variable:** Rate of reaction (measure product formed per minute, or time for substrate to disappear)

**Controlled variables:** pH, enzyme concentration, substrate concentration, volume of solutions, time of reaction

**Control:** Same experiment with denatured enzyme (boiled) or no enzyme → shows reaction doesn't occur without functional enzyme

**How to ensure reliability:** Repeat each temperature THREE times and calculate mean

### Presenting Data
**Tables:** Use clear headings with units; fill all cells; no gaps in data
**Line graphs:** For continuous data (time, temperature, concentration); join points with smooth curve or straight line; label axes with units
**Bar charts:** For discrete/categorical data (blood groups, species counts)
**Scatter graphs:** For correlation between two continuous variables

### Drawing Conclusions
- State what the data SHOWS (trend/pattern)
- Link back to hypothesis — was it supported or refuted?
- Suggest explanations for the pattern (in biological terms)
- Identify limitations and sources of error
- Suggest improvements to the experiment
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Practical Questions', $CONTENT$
## WASSCE Practical Examination Questions

### Question 1 (WASSCE 2022)
A student was given four test tubes containing unknown solutions A, B, C, D. Describe ONE test to identify which solution contains starch.

**Answer:**
Add a few drops of iodine solution to each test tube.

Observations:
- Test tube with starch: solution turns **blue-black**
- Test tubes without starch: solution remains **orange-brown**

**Conclusion:** The test tube that turns blue-black contains starch.

---

### Question 2 (WASSCE 2021)
A student prepared a temporary slide of onion epidermal cells and observed them under the microscope.
(a) State TWO structures visible in onion epidermal cells.
(b) The cell was measured on the slide and found to be 5mm long. The total magnification was ×50. Calculate the actual length of the cell.

**Answer:**
(a) Two visible structures: **cell wall, nucleus** (no chloroplasts in onion epidermal cells as they are unpigmented and do not photosynthesize; cytoplasm and vacuole may also be visible)

(b) Actual length = Image size / Magnification
= 5mm / 50
= **0.1mm = 100μm**

---

### Question 3 (WASSCE 2020)
A student investigated the effect of light intensity on the rate of photosynthesis. She counted oxygen bubbles from pondweed at different distances from a lamp and recorded the following:

| Distance from lamp (cm) | Bubbles per minute |
|------------------------|-------------------|
| 10 | 45 |
| 20 | 28 |
| 30 | 15 |
| 40 | 8 |
| 50 | 4 |

(a) State the relationship between light intensity and rate of photosynthesis.
(b) Suggest ONE way to improve the reliability of this experiment.

**Answer:**
(a) As the distance from the lamp increases (light intensity decreases), the rate of photosynthesis decreases (fewer bubbles produced per minute). This shows light intensity is directly related to photosynthesis rate — as light intensity increases, rate increases.

(b) Improvements: Repeat each distance THREE times and calculate mean; control temperature by placing pondweed in water bath; add measured amount of NaHCO₃ to ensure constant CO₂; use light meter to measure actual light intensity rather than distance

---

### Practice Questions
1. Describe how you would test a food sample for the presence of protein.
2. Calculate the actual size of a cell if it appears 3cm in a micrograph taken at ×1500 magnification.
3. State FOUR variables that must be controlled when investigating enzyme activity.
4. What is the purpose of a control experiment?
5. A student investigating osmosis placed pieces of potato in different concentrations of sugar solution. The potato gained mass in 0.1M solution and lost mass in 0.5M solution. What does this suggest about the concentration of solutes in potato cells?

**Answers:**
1. Add equal volumes of dilute NaOH to sample in test tube; add a few drops of dilute CuSO₄ solution. Purple/violet colour = protein present; if remains blue = protein absent.
2. Actual size = image size / magnification = 30mm / 1500 = **0.02mm = 20μm**
3. Temperature, pH, enzyme concentration, substrate concentration, volume/amount of solution, time
4. Control experiment: same setup without the independent variable (e.g., without enzyme, or without light). Shows that any change in the dependent variable is actually caused by the independent variable, not by something else. Provides a baseline for comparison.
5. The potato cell solution concentration is between 0.1M and 0.5M (likely around 0.3M). In 0.1M (lower than cells): water enters cells by osmosis → mass increases. In 0.5M (higher than cells): water leaves cells by osmosis → mass decreases. The concentration at which no mass change occurs = the concentration inside potato cells.
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Practical Skills Extended', $CONTENT$
## Additional Practical Techniques

### Chromatography in Biology
Paper chromatography separates mixtures based on solubility:
- Used to identify pigments in leaves (separate chlorophyll a, chlorophyll b, carotene, xanthophyll)
- Each pigment has a different Rf value: Rf = distance moved by substance / distance moved by solvent

**Procedure:**
1. Extract leaf pigments with acetone/ethanol
2. Spot onto chromatography paper; allow to dry; re-spot 3-4 times
3. Place in solvent (petroleum ether + acetone mixture); allow to run
4. Remove; mark solvent front; measure distances
5. Calculate Rf values; compare with known values to identify pigments

### Dissection Skills
For WASSCE, you may be required to dissect and identify:
- **Fish (tilapia):** External features (fins, scales, lateral line, gill covers); internal organs (gills, heart, stomach, intestine, liver, gonads, swim bladder)
- **Frog:** External features; internal organs (lungs, heart — 3-chambered, liver, stomach, intestine, kidneys)
- **Locust/grasshopper:** External features (segments, appendages, compound eyes, spiracles)

**Important:** Always use sharp instruments carefully; pin specimens down flat; work systematically from outside in; label your drawings clearly.

### Drawing Biological Diagrams
Rules for biological drawings:
1. Use sharp pencil; smooth continuous lines (no shading or hatching)
2. Draw large (at least half the page)
3. All parts labelled with horizontal lines (not arrows unless indicating direction of movement)
4. Include magnification or scale bar
5. Give diagram a title
6. Do not shade or colour (unless specifically asked)
$CONTENT$, 'examples', 5);

  -- Plant Coordination
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Coordination in Plants' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Plant Coordination and Responses', $CONTENT$
## How Plants Respond to Their Environment

Unlike animals, plants do not have a nervous system. They respond to stimuli through:
1. **Tropisms** (growth movements — already covered in Growth section)
2. **Nastic movements** (non-directional responses to stimuli)
3. **Plant hormones** (chemical signals — phytohormones)

### Nastic Movements (Nasties)
These are non-directional responses to stimuli (unlike tropisms, direction of response is not determined by direction of stimulus).

**Photonasty:** Response to light/dark
- Flowers of many plants open in daylight, close at night (e.g., dandelion, tulip, daisy)
- Stomata open in light, close in dark

**Thigmonasty:** Response to touch/contact
- **Mimosa pudica (sensitive plant):** Leaflets fold inward when touched — ion movements cause rapid changes in turgor pressure in pulvinus (swollen region at base of leaf); happens within seconds; no growth involved
- **Venus flytrap:** Trigger hairs on leaf → rapid closure when touched twice

**Thermonasty:** Response to temperature changes
- Some tulips and crocuses open in warm, close when cold

**Seismonasty:** Response to shaking/vibration
- Mimosa pudica also responds this way
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Phytohormones: Plant Chemical Signals', $CONTENT$
## Plant Hormones (Phytohormones)

### Auxins (IAA — Indole Acetic Acid)
**Produced by:** Apical meristems (shoot tips), young leaves
**Effects:**
- Promotes cell elongation in stems (low concentrations)
- Inhibits growth at high concentrations (roots are more sensitive than stems)
- **Apical dominance:** High auxin from apex inhibits lateral bud growth → plant grows tall, not bushy. Removing tip (pinching) → lateral buds grow → bushy plant
- Promotes root formation from cuttings
- Stimulates fruit development

**Commercial uses of synthetic auxins:**
- Rooting powder (encourages root formation on cuttings)
- 2,4-D and 2,4,5-T: Selective herbicides (kill broad-leaved weeds but not grass/cereals)
- NAA: Prevents premature fruit drop (fruit stays on tree longer)

### Gibberellins
**Produced by:** Seeds, young leaves, root tips
**Effects:**
- Promote stem elongation (elongation of internodes)
- Break dormancy of seeds and buds
- Promote germination
- Promotes fruit development without fertilisation (parthenocarpy)
- Involved in bolting (rapid stem growth in some plants before flowering)

**Commercial uses:**
- Stimulate seed germination (breaking dormancy)
- Increase grape size (seedless grapes treated with gibberellin)
- Accelerate brewing (faster barley seed germination for malting)

### Cytokinins
**Produced by:** Root tips, fruits, seeds
**Effects:**
- Promote cell DIVISION (cytokinesis)
- Promote growth of lateral buds (opposite to auxin)
- Delay senescence (leaf ageing/yellowing)
- Promote chloroplast development

**Commercial uses:**
- Tissue culture media (promotes callus growth and differentiation)
- Applied to cut flowers to delay wilting and yellowing

### Abscisic Acid (ABA)
**Produced by:** Leaves, stems, roots (during stress)
**Effects:**
- **Stress hormone** — produced during drought/cold
- Causes stomata to close (reduces water loss during drought)
- Promotes seed dormancy
- Promotes leaf abscission (leaf fall in deciduous plants)
- Inhibits germination (keeps seeds dormant until conditions are right)

### Ethylene (Ethene)
**Produced by:** Ripening fruits, roots in waterlogged soil, senescing leaves
**Effects:**
- Promotes fruit ripening (increases respiration rate; breaks down cell walls → fruit softens)
- Promotes leaf, flower, and fruit abscission (drop)
- Promotes root hair development

**Commercial uses:**
- Applied to unripe fruits to trigger uniform ripening (bananas exported green, ripened with ethylene in warehouses)
- Ethylene-suppressing technology (keeps fruits fresh longer in storage)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Worked Examples: Plant Coordination', $CONTENT$
## Worked Examples

### Example 1: Auxin and Phototropism Experiment
**Experiment:** Shoot tip is covered with opaque cap; another is left uncovered. Both placed in unilateral light.

**Prediction:** Capped shoot will grow straight up; uncapped shoot will bend toward light.

**Explanation:**
- Capped: no auxin produced (tip blocked); no phototropism
- Uncapped: auxin migrates to shaded side; unequal cell elongation; shoot bends toward light

**Conclusion:** The tip is essential for phototropism — it detects light and produces/distributes auxin.

### Example 2: Apical Dominance
A tomato farmer notices that plants grow tall and spindly with few branches when the growing tip is intact. When she pinches out the tips, plants become bushy with more branches. Explain this.

**Explanation:**
- Intact tip produces high auxin → diffuses down → inhibits lateral (side) bud growth = apical dominance
- Removing tip → auxin source removed → lateral buds released from inhibition → branches grow → bushy plant
- Also: removing tip may allow cytokinins from roots to promote lateral bud growth

### Example 3: Seed Dormancy and Gibberellins
Seeds of many plants will not germinate even when conditions seem ideal. What might cause dormancy, and how can it be overcome?

**Causes of dormancy:**
- Hard seed coat prevents water uptake (scarification needed)
- Inhibitor ABA present in seeds → prevents germination
- Immature embryo
- Requirement for cold period (vernalisation)

**How to break dormancy:**
- Apply gibberellins → overcomes ABA inhibition → triggers germination
- Scarification (scratch or file seed coat) → allows water in
- Cold treatment (stratification)
- Light exposure (for some seeds)

### Example 4: Commercial Application of Ethylene
A fruit exporter sends bananas from Ghana to Europe. Explain how they use knowledge of plant hormones to deliver ripe bananas.

**Answer:**
1. Bananas are harvested UNRIPE (green) → lower risk of damage during transport
2. Transported in ethylene-FREE atmosphere (ethylene scrubbers remove any ethylene produced)
3. Stored at cool temperature → slows ripening
4. Upon arrival at distribution centre: expose to ethylene gas in sealed room
5. Ethylene triggers ripening reactions: starch → sugar (banana sweetens), chlorophyll breaks down (green → yellow), cell walls soften
6. Bananas delivered to shops ready for sale at correct ripeness
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Plant Coordination', $CONTENT$
## WASSCE Past Questions

### Question 1 (WASSCE 2022)
(a) Define phototropism.
(b) Explain how unilateral light causes a shoot tip to bend towards the light.

**Answer:**
(a) Phototropism is the growth response of a plant to the direction of light. Shoots show positive phototropism (grow toward light); roots show negative phototropism (grow away from light).

(b) Explanation:
1. The shoot tip produces auxin (IAA)
2. When light comes from one side, auxin is transported to the shaded side of the tip
3. The shaded side now has a higher concentration of auxin
4. Auxin promotes cell elongation
5. Cells on the shaded side elongate more than those on the lit side
6. This unequal growth causes the shoot to curve/bend towards the light source

---

### Question 2 (WASSCE 2021)
(a) State TWO functions of abscisic acid in plants.
(b) Name the hormone responsible for fruit ripening.

**Answer:**
(a) Abscisic acid (ABA):
1. Causes stomata to close during drought conditions (reduces water loss)
2. Promotes seed dormancy (keeps seeds from germinating at wrong time)
3. Promotes leaf fall (abscission) in deciduous trees

(b) **Ethylene (ethene)** is responsible for fruit ripening.

---

### Question 3 (WASSCE 2020)
State THREE commercial uses of plant hormones.

**Answer:**
Any three:
1. **Rooting powder (auxin):** Promotes root development from cuttings → easy propagation of plants
2. **Herbicide (synthetic auxin — 2,4-D):** Selective weed killer — kills broad-leaved plants but not grasses
3. **Ethylene for fruit ripening:** Triggers uniform ripening of fruits (bananas, tomatoes) for market
4. **Gibberellins for seedless grapes:** Promotes fruit development without fertilisation; increases fruit size
5. **Breaking seed dormancy (gibberellins):** Promotes germination for faster crop establishment
6. **Cytokinins in tissue culture:** Promotes cell division in plant tissue culture for propagation

---

### Practice Questions
1. What is nastic movement? Give two examples.
2. Explain apical dominance and how it is used in horticulture.
3. State the effect of gibberellins on seeds and stems.
4. Why do bananas ripen faster when stored together?
5. What would happen if you applied ABA to an actively growing plant?

**Answers:**
1. A non-directional plant response to a stimulus (direction of response not determined by direction of stimulus). Examples: Mimosa leaflets folding when touched (thigmonasty); flowers opening in daylight/closing at night (photonasty)
2. High auxin from apex inhibits lateral bud growth → plant grows straight up. Removing apex removes auxin source → lateral buds grow → bushy plant. Horticulture: "pinching out" shoot tips of ornamental plants to make them bushier; training hedge plants; cutting back houseplants
3. Gibberellins: breaks dormancy (stimulate germination); promotes stem elongation (longer internodes)
4. Bananas produce ethylene as they ripen; ethylene stimulates further ripening in surrounding bananas; stored together → ethylene builds up → accelerates ripening of all bananas (autocatalytic ripening)
5. ABA inhibits growth, closes stomata, promotes dormancy → plant growth would slow/stop; stomata would close → less photosynthesis; leaves might yellow (senescence promoted); plant enters dormant-like state
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Plant Coordination Extended Notes', $CONTENT$
## Photoperiodism: Flowering and Daylength

**Photoperiodism:** Response of plants to the relative length of light and dark periods in a 24-hour cycle.

### Types of Plants Based on Photoperiodism
1. **Short-day plants:** Flower when daylength is SHORTER than a critical value (i.e., night is longer than critical minimum)
   - Examples: Chrysanthemum, tobacco, soya bean, cannabis, poinsettia
   - Flower in autumn/winter

2. **Long-day plants:** Flower when daylength is LONGER than a critical value
   - Examples: Wheat, barley, spinach, iris
   - Flower in spring/summer

3. **Day-neutral plants:** Flower regardless of daylength
   - Examples: Tomato, cucumber, many tropical plants

**Note:** Research has shown it is actually the DARK period (night length) that is critical, not daylength — but they are related (longer day = shorter night).

**Phytochrome:** The pigment that detects light/dark periods. Exists in two forms:
- Pr: absorbs red light → converts to Pfr
- Pfr: absorbs far-red light → converts to Pr; also slowly converted to Pr in dark
- Pfr is the active form that promotes or inhibits flowering depending on plant type

### Vernalisation
Some plants require a period of cold temperature before they can flower (e.g., winter wheat).
This cold requirement ensures plants flower in spring, not in autumn.
Gibberellins can sometimes substitute for the cold requirement.
$CONTENT$, 'examples', 5);

  -- Food Webs and Energy Flow  
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Food Webs and Energy Flow' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Food Webs and Energy Flow', $CONTENT$
## Energy in Ecosystems

All energy in ecosystems ultimately comes from the SUN. Plants capture solar energy by photosynthesis and convert it to chemical energy stored in glucose. This energy flows through the ecosystem when organisms eat each other.

### Key Definitions
**Producer (Autotroph):** Makes its own food using inorganic substances and an energy source
- **Photoautotrophs:** Use sunlight + CO₂ + H₂O → glucose (green plants, algae, cyanobacteria)
- **Chemoautotrophs:** Use chemical energy (nitrifying bacteria use NH₃ as energy source)

**Consumer (Heterotroph):** Obtains energy by eating other organisms
- **Primary consumer (herbivore):** Eats plants/producers (grasshopper, rabbit, cattle)
- **Secondary consumer:** Eats primary consumers (frog, fox, hawk)
- **Tertiary consumer:** Eats secondary consumers (top predators — eagle, lion)

**Decomposer:** Breaks down dead organic matter into inorganic minerals (bacteria, fungi)
- Also called saprotrophs
- Essential for nutrient cycling — without decomposers, minerals would be locked up in dead matter forever

### Difference: Food Chain vs Food Web
**Food chain:** Linear sequence of feeding relationships (one path)
Grass → Rabbit → Fox → Eagle

**Food web:** Network of interconnected food chains (more realistic)
- Most organisms eat multiple prey
- Most organisms are eaten by multiple predators
- Food webs are more stable than food chains (losing one species has less impact)

### Trophic Levels and Energy
**Trophic level:** Position in a food chain (trophic = feeding)
- Level 1: Producers
- Level 2: Primary consumers
- Level 3: Secondary consumers
- Level 4: Tertiary consumers

Energy decreases at each trophic level (typically only ~10% transferred to next level).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Ecological Pyramids and Energy Transfer', $CONTENT$
## Ecological Pyramids

Ecological pyramids represent the quantitative relationship between trophic levels.

### Pyramid of Numbers
- Shows the NUMBER of organisms at each trophic level
- Usually wide at base (many producers), narrow at top (few top predators)
- **Can be INVERTED:** If producers are large (one tree supports many insects → insects support few birds)
- Example inverted: 1 oak tree → hundreds of caterpillars → tens of birds

### Pyramid of Biomass
- Shows the TOTAL DRY MASS of organisms at each trophic level
- Usually always pyramid-shaped (biomass decreases up)
- **Rare inversion:** In some aquatic ecosystems where phytoplankton reproduce very quickly — at one moment, animal biomass may exceed phytoplankton biomass (but over time the phytoplankton produce more total biomass)

### Pyramid of Energy
- Shows the ENERGY available at each trophic level (kJ/m²/year)
- **ALWAYS pyramid-shaped** — energy can never increase up the chain (2nd Law of Thermodynamics)
- This is the most useful and accurate pyramid

### The 10% Rule
Only approximately **10%** of energy at one trophic level reaches the next.

Where does the other 90% go?
- **Heat from respiration** (~60-65%)
- **Egested/undigested material** (faeces) (~20-25%)
- **Dead organic matter** not consumed by next level (~5-10%)

### Efficiency of Energy Transfer
**Ecological efficiency** = (Energy available at level n+1 / Energy available at level n) × 100%

If grassland has 100,000 kJ:
- Primary consumers receive: 10,000 kJ (10%)
- Secondary consumers receive: 1,000 kJ (1%)
- Tertiary consumers receive: 100 kJ (0.1%)

**Implications:**
1. Food chains are rarely longer than 4-5 levels (insufficient energy)
2. More people can be fed on a vegetarian diet (fewer energy transfers = less waste)
3. Large predators need enormous home ranges (small energy base at top)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Nutrient Cycles: Carbon and Nitrogen', $CONTENT$
## Nutrient Cycles

Nutrients are recycled — they are used by organisms, then returned to the environment for reuse. This is why life on Earth can continue indefinitely (unlike energy, which flows THROUGH the ecosystem).

### The Carbon Cycle

**Carbon enters living organisms:**
- **Photosynthesis:** CO₂ + H₂O → glucose (carbon fixed by plants)
- Carbon then passes along food chains as organisms feed on each other

**Carbon returns to atmosphere:**
1. **Respiration:** All organisms release CO₂ during aerobic respiration
2. **Decomposition:** Decomposers break down dead organic matter → CO₂ released
3. **Combustion:** Burning fossil fuels and wood → CO₂ released

**Long-term carbon storage:**
- **Fossil fuels:** Ancient organisms buried → coal, oil, natural gas over millions of years
- **Limestone/chalk:** Marine organisms' shells → calcium carbonate → rock

**The problem:** Burning fossil fuels releases carbon stored for millions of years in short time → rapid CO₂ increase → enhanced greenhouse effect → climate change

### The Nitrogen Cycle

Nitrogen (N₂) makes up 78% of air but most organisms cannot use it directly. It must be converted to usable forms.

**Key Processes:**

1. **Nitrogen fixation:** N₂ → ammonia (NH₃) / ammonium ions (NH₄⁺)
   - By Rhizobium bacteria (in root nodules of legumes — beans, peas, clover)
   - By Azotobacter and Clostridium (free-living in soil)
   - By lightning (small amount)
   - Industrial: Haber process (making fertiliser)

2. **Nitrification:** NH₄⁺ → NO₂⁻ → NO₃⁻ (nitrate)
   - By Nitrosomonas bacteria: NH₄⁺ → NO₂⁻
   - By Nitrobacter bacteria: NO₂⁻ → NO₃⁻
   - Nitrates are the main form absorbed by plants

3. **Assimilation:** Plants absorb NO₃⁻ → synthesise amino acids, proteins, nucleotides
   - Animals eat plants → obtain proteins → build animal proteins

4. **Ammonification:** Dead organisms and waste (urea) decomposed by bacteria/fungi → NH₄⁺
   - Returns nitrogen to soil

5. **Denitrification:** NO₃⁻ → N₂ (back to atmosphere)
   - By denitrifying bacteria in ANAEROBIC (waterlogged) conditions
   - Reduces available nitrogen in soil → problem in waterlogged soils
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Food Web Analysis: Worked Examples', $CONTENT$
## Worked Examples: Food Webs and Energy Flow

### Example 1: Analysing a Complex Food Web
Consider this food web:
Phytoplankton → Zooplankton → Small fish → Large fish → Shark
Phytoplankton → Zooplankton → Squid → Large fish → Shark
Phytoplankton → Mussel → Starfish → Sea otter

Questions and answers:
(a) **Name ALL producers:** Phytoplankton
(b) **Name an organism at two trophic levels:** Zooplankton (eats phytoplankton = level 2; could also be eaten by level 3 predators at different points)
(c) **If large fish were removed:** Sharks would have less food → shark population might decrease. Small fish would have less predation → increase. Zooplankton might decrease as more small fish eat them.
(d) **If phytoplankton were destroyed:** Entire food web would collapse — no primary production → all consumers would eventually die.

### Example 2: Energy Transfer Calculation
A meadow ecosystem has producers with 500,000 kJ of energy.
(a) How much energy reaches herbivores?
= 10% × 500,000 = **50,000 kJ**

(b) How much energy reaches carnivores (eating herbivores)?
= 10% × 50,000 = **5,000 kJ**

(c) How many people could be sustained if they ate herbivores vs plants?
- Eating plants: 500,000 kJ available
- Eating herbivores: only 50,000 kJ available
- **10× more people** can be sustained eating plants directly

This explains why veganism is more sustainable for feeding large populations!

### Example 3: Effect of Bioaccumulation
A pesticide (e.g., DDT) enters a food chain. It is not excreted — it accumulates in fatty tissue.

Producer: 0.003 ppm DDT
Primary consumer: 0.04 ppm (accumulates)
Secondary consumer: 0.5 ppm
Tertiary consumer: 2 ppm
Top predator (e.g., eagle): **25 ppm** (biomagnification!)

This is why top predators are most affected by persistent pesticides (thinning of eggshells in eagles from DDT).
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Questions: Food Webs and Energy Flow', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
The following is a food web:
Grass → Mice → Snakes → Eagles
Grass → Grasshoppers → Frogs → Snakes
Grass → Mice → Hawks

(a) Name the producer in the food web.
(b) Identify the apex predator(s).
(c) If all the frogs were removed, describe the likely effects on the snake population.
(d) Write out a food chain with FOUR organisms from this web.

**Answer:**
(a) **Grass** (it is the producer — makes its own food by photosynthesis)

(b) **Eagles** and **Hawks** (no predators feed on them — they are at the top)

(c) If frogs removed:
- Snakes lose one source of food (frogs) → **snakes may decrease** initially
- However, snakes can still eat mice → snakes may survive on remaining food
- Grasshoppers now have no frog predators → **grasshoppers will increase**
- Grass will be consumed more by increased grasshoppers → **grass may decrease**

(d) Example: Grass → Grasshoppers → Frogs → Snakes ✓

---

### Question 2 (WASSCE 2021)
(a) State the 10% rule in ecology.
(b) Using a pyramid of energy, explain why food chains rarely exceed five links.

**Answer:**
(a) The 10% rule states that only approximately **10% of the energy** available at one trophic level is transferred to the next trophic level. The remaining 90% is lost as heat (from respiration), in faeces, or as undigested material.

(b) At each link in the food chain, 90% of energy is lost. Starting with 100,000 kJ at producer level:
- Level 2: 10,000 kJ
- Level 3: 1,000 kJ
- Level 4: 100 kJ
- Level 5: 10 kJ
- Level 6: only 1 kJ — insufficient to support a viable population

After 4-5 trophic levels, so little energy remains that it cannot support another level of organisms.

---

### Question 3 (WASSCE 2020)
Describe the role of bacteria in the nitrogen cycle.

**Answer:**
Bacteria play FOUR crucial roles in the nitrogen cycle:
1. **Nitrogen fixation (Rhizobium, Azotobacter):** Convert N₂ gas from atmosphere to ammonium ions (NH₄⁺) that plants can use
2. **Nitrification (Nitrosomonas, Nitrobacter):** Convert ammonium → nitrite → nitrate (NO₃⁻) — the form plants absorb best
3. **Ammonification (decomposers):** Break down dead organic matter (proteins) and excretory products (urea) → release ammonium ions back into soil
4. **Denitrification (denitrifying bacteria):** Convert nitrate → nitrogen gas (N₂) back to atmosphere — occurs in waterlogged/anaerobic soils

---

### Practice Questions
1. State THREE differences between a food chain and a food web.
2. What is biomagnification? Give an example.
3. Explain why pyramids of energy are always pyramid-shaped.
4. State the roles of decomposers in an ecosystem.
5. Explain how deforestation affects the carbon cycle.

**Answers:**
1. Food chain: single linear sequence; food web: network of many chains. Food chain: shows one pathway; food web: shows multiple pathways and interconnections. Food web: more realistic (most organisms eat several types of food); food chain: simplified model.
2. Accumulation of toxic substances in organisms; concentration increases at each successive trophic level (because organisms eat many times their own mass over lifetime → toxin concentrates). Example: DDT in eagles reaching levels 1000× higher than in producers.
3. Energy flows IN ONE DIRECTION through food chains (cannot be recycled). At each trophic level, large amounts of energy are lost as heat from respiration → always less energy at each successive level → pyramid shape inevitable.
4. Break down dead organic matter → release minerals (phosphate, nitrate, etc.) back into soil; complete nutrient cycles; prevent accumulation of dead matter; support plant growth through nutrient release.
5. Trees are major carbon stores (wood = carbon). Cutting trees releases CO₂ (burning) or as trees decompose. Fewer trees = less photosynthesis → less CO₂ absorbed from atmosphere. Net effect: CO₂ accumulates in atmosphere → enhanced greenhouse effect → global warming.
$CONTENT$, 'practice', 5);

END $$;
