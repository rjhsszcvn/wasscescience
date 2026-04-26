
/*
  # Biology notes for remaining topics: Plant/Animal Classification, Support & Movement,
    Growth, Evolution, Biotechnology, Practical Skills, Plant Coordination, Food Webs
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN

  -- Plant Kingdom Classification
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Plant Kingdom (Classification)' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Classification of Plants', $CONTENT$
## Plant Classification

**Classification (Taxonomy):** The systematic grouping of organisms based on shared characteristics.

### Why Classify Organisms?
- Easier to study vast diversity of life
- Shows evolutionary relationships
- Helps in naming organisms (universal language)
- Aids in identification of new species

### The Hierarchy of Classification (From Broadest to Most Specific)
Kingdom → Phylum → Class → Order → Family → Genus → Species

**Memory aid:** "King Phillip Came Over For Good Soup"

**Scientific naming (binomial nomenclature — Linnaeus, 1758):**
- Two-part name: Genus species (e.g., Homo sapiens, Zea mays)
- Genus begins with capital letter; species with lowercase
- Written in italics (or underlined if handwritten)

### Five Kingdoms (Traditional System)
1. **Monera:** Prokaryotes (bacteria, cyanobacteria)
2. **Protista:** Mostly unicellular eukaryotes (Amoeba, Paramecium, Plasmodium)
3. **Fungi:** Absorptive heterotrophs; cell walls of chitin (mushrooms, yeast, moulds)
4. **Plantae:** Multicellular; photosynthetic; cell walls of cellulose
5. **Animalia:** Multicellular; heterotrophic; no cell wall

### Major Plant Groups
1. **Algae (not true plants — Protista):** Aquatic; photosynthetic; no roots, stems, leaves
   - Chlorella (unicellular green alga), Spirogyra, seaweeds

2. **Bryophytes (Mosses and Liverworts):** No vascular tissue; no true roots; need water to reproduce; small size limits height

3. **Pteridophytes (Ferns):** Have vascular tissue (xylem and phloem); no seeds; reproduce by spores; include ferns, horsetails

4. **Gymnosperms:** Have vascular tissue; produce seeds but NO fruit (seeds exposed/naked); include conifers (pine, cycads)

5. **Angiosperms (Flowering Plants):** Have vascular tissue; produce seeds enclosed in fruit; flowers for reproduction; MOST diverse plant group
   - **Monocots:** One cotyledon; parallel leaf veins; flower parts in 3s (grass, maize, rice, onion, yam)
   - **Dicots:** Two cotyledons; net/branched leaf veins; flower parts in 4s or 5s (mango, tomato, bean, groundnut, cocoa)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Distinguishing Plant Groups', $CONTENT$
## Comparing Plant Groups

### Progressive Features in Plant Evolution
| Feature | Algae | Bryophytes | Pteridophytes | Gymnosperms | Angiosperms |
|---------|-------|-----------|---------------|-------------|-------------|
| Vascular tissue | No | No | Yes | Yes | Yes |
| Seeds | No | No | No | Yes (naked) | Yes (enclosed) |
| Flowers | No | No | No | No | Yes |
| Fruits | No | No | No | No | Yes |
| True roots | No | No | Yes | Yes | Yes |
| Reproduction | Spores/gametes | Spores | Spores | Seeds | Seeds |

### Monocots vs Dicots
| Feature | Monocots | Dicots |
|---------|----------|--------|
| Cotyledons | 1 | 2 |
| Leaf veins | Parallel | Net (branched) |
| Flower parts | In 3s (3, 6, 9...) | In 4s or 5s |
| Root type | Fibrous | Tap root |
| Stem (cross section) | Vascular bundles scattered | Vascular bundles in ring |
| Examples | Maize, rice, grass, onion, coconut | Mango, tomato, bean, rose, cacao |

### Economic Importance of Plants
**Food:** Rice, wheat, maize, yam, cassava, fruits, vegetables
**Medicine:** Quinine (malaria), morphine (painkiller), digitalis (heart)
**Timber:** Mahogany, teak, iroko for construction, furniture
**Oxygen production:** Photosynthesis maintains atmospheric O₂
**Carbon sequestration:** Forests store carbon → reduce greenhouse effect
**Fibre:** Cotton (seeds), hemp, jute (stems)
**Rubber:** Hevea brasiliensis (rubber tree latex)
**Biofuel:** Sugarcane, palm oil, jatropha
**Ornamental:** Flowers, garden plants for aesthetic value
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Plant Classification Worked Examples', $CONTENT$
## Worked Examples: Plant Classification

### Example 1: Identifying Plant Groups from Characteristics
Organism A: Has roots, stems, and leaves; vascular tissue present; reproduces by spores; no flowers or seeds.
**Identification:** This is a **Pteridophyte (Fern)**

Organism B: Has flowers; seeds enclosed in fruit; two cotyledons; net-veined leaves.
**Identification:** This is a **Dicotyledon (Angiosperm)**

Organism C: No true roots, stems, or leaves; found in water; photosynthetic; unicellular.
**Identification:** This is an **Alga** (Protista)

### Example 2: Differences Between Gymnosperms and Angiosperms
| Feature | Gymnosperm (Pine) | Angiosperm (Mango) |
|---------|-------------------|-------------------|
| Seeds | Naked, on cone scales | Enclosed in fruit |
| Flowers | No true flowers (cones) | True flowers |
| Fruit | No | Yes |
| Examples | Pine, cypress, cycad | Most common plants |

### Example 3: Why Angiosperms are Most Successful
1. **Flowers:** Attractive structures ensure effective cross-pollination by animals
2. **Fruit:** Protects seeds and aids in dispersal (animals eat fruit, disperse seeds)
3. **Seeds:** Well-protected embryo; dormant until conditions are right
4. **Vascular tissue:** Efficient transport of water, minerals, and sugars
5. **Adaptability:** Found in almost all habitats — desert, rainforest, aquatic environments
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Plant Classification', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
State TWO differences between mosses (Bryophytes) and ferns (Pteridophytes).

**Answer:**
1. Ferns have vascular tissue (xylem and phloem); mosses do NOT
2. Ferns have true roots, stems, and leaves; mosses have only simple root-like structures (rhizoids)
3. Ferns are generally larger (some tree ferns); mosses are small
4. (Note: both reproduce by spores — this is a similarity, NOT a difference)

---

### Question 2 (WASSCE 2021)
Explain the difference between monocotyledonous and dicotyledonous plants. Give TWO examples of each.

**Answer:**
**Monocotyledons (monocots):**
- Seeds have ONE cotyledon (seed leaf)
- Leaves have parallel veins
- Flower parts in 3s (or multiples of 3)
- Fibrous root system
- Examples: **Maize (Zea mays), Rice (Oryza sativa)**, grass, onion, coconut, yam

**Dicotyledons (dicots):**
- Seeds have TWO cotyledons
- Leaves have net-branched veins
- Flower parts in 4s or 5s
- Tap root system
- Examples: **Mango (Mangifera indica), Tomato (Lycopersicon esculentum)**, bean, cocoa, citrus

---

### Practice Questions
1. Name FIVE kingdoms of living organisms and give one example of each.
2. What is binomial nomenclature? Write the scientific name of humans using this system.
3. State two economic uses each of (a) gymnosperms (b) angiosperms.
4. How do Bryophytes differ from Pteridophytes?
5. Why are Angiosperms the most successful plant group?

**Answers:**
1. Monera (E. coli), Protista (Amoeba), Fungi (Mushroom), Plantae (Mango), Animalia (Chimpanzee)
2. System of naming organisms using genus and species names; Homo sapiens
3. (a) Gymnosperms: timber (pine wood), resin/turpentine, ornamental (Christmas trees) (b) Angiosperms: food (rice, yam), medicine, timber, fibre (cotton)
4. Bryophytes: no vascular tissue, no true roots, very small; Pteridophytes: have vascular tissue, true roots, stems and leaves, larger
5. Have flowers (for cross-pollination), fruits (for seed dispersal and protection), seeds (protected embryo), adapt to all habitats — combination makes them most diverse and widespread
$CONTENT$, 'practice', 4),
  (v_topic_id, 'WASSCE Questions: Plant Classification Extended', $CONTENT$
## Additional Practice and Notes

### Classification Hierarchy Example
**Humans:** Kingdom Animalia → Phylum Chordata → Class Mammalia → Order Primates → Family Hominidae → Genus Homo → Species sapiens

**Maize:** Kingdom Plantae → Phylum Angiospermophyta → Class Monocotyledonae → Order Poales → Family Poaceae → Genus Zea → Species mays (Zea mays)

### Key Vocabulary for Exam
- **Taxonomy:** Science of classification
- **Systematics:** Study of diversity and relationships between organisms
- **Phylogeny:** Evolutionary history/relationships between organisms
- **Species:** Group of organisms that can interbreed and produce fertile offspring
- **Genus:** Group of closely related species
- **Cotyledon:** Seed leaf (stores food for germination)
- **Rhizoid:** Root-like structures in bryophytes (for anchoring, not absorption)
- **Vascular tissue:** Specialised tissue for transport (xylem + phloem)
$CONTENT$, 'examples', 5);

  -- Animal Kingdom Classification
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Animal Kingdom (Classification)' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Animal Classification', $CONTENT$
## The Animal Kingdom: Incredible Diversity

The Animal Kingdom (Animalia) contains over 1 million described species. All animals are:
- Multicellular
- Heterotrophic (cannot make their own food)
- Eukaryotic
- Most can move at some point in their lives
- No cell wall

### Main Phyla (Animal Groups)

**Porifera (Sponges)**
- Simplest animals; no true tissues or organs
- Sessile (don't move); filter feeders
- Have pores (oscula) through which water passes
- Example: Sponge (Spongia)

**Coelenterata / Cnidaria (Jellyfish, Hydra, Coral)**
- Two cell layers; radial symmetry
- Tentacles with stinging cells (nematocysts)
- Two body forms: polyp (attached) and medusa (free-floating)
- Examples: Hydra, jellyfish, corals, sea anemones

**Platyhelminthes (Flatworms)**
- Flat, bilaterally symmetrical; no body cavity (acoelomate)
- Many are parasitic (tapeworm, liver fluke)
- Examples: Planaria (free-living), tapeworm (Taenia), liver fluke (Fasciola)

**Annelida (Segmented Worms)**
- Body divided into ring-like segments
- True body cavity (coelom); circulatory system
- Examples: Earthworm (Lumbricus), leeches, ragworms

**Arthropoda (Largest phylum)**
- Jointed legs (arthro = joint, pod = leg)
- Exoskeleton (hard outer covering) made of chitin
- Segmented body
- Classes: Insecta (insects), Arachnida (spiders), Crustacea (crabs, shrimp), Myriapoda (centipedes, millipedes)
- Examples: Cockroach, butterfly, spider, crab, centipede

**Mollusca (Soft-bodied)**
- Soft body, usually with a shell
- Examples: Snail, slugs, octopus, squid, clams, oysters

**Echinodermata (Spiny-skinned)**
- Marine; radial symmetry (in adults); water vascular system
- Examples: Starfish, sea urchin, sea cucumber

**Chordata (Have a notochord at some stage)**
- All vertebrates and some invertebrates
- Key features: notochord, dorsal hollow nerve cord, pharyngeal slits, post-anal tail (at some stage)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Vertebrate Classes', $CONTENT$
## The Five Classes of Vertebrates

### 1. Pisces (Fish)
- Aquatic; breathe through GILLS
- Cold-blooded (ectothermic) — body temperature varies with environment
- Scales covering body; streamlined shape
- Fins for locomotion
- External fertilisation (eggs laid in water)
- Lateral line system (detects vibrations in water)
- Examples: Tilapia, shark, mudfish, lungfish

### 2. Amphibia (Frogs, Toads, Salamanders)
- Can live in water AND on land (amphi = both)
- Cold-blooded; moist, smooth skin (no scales)
- Breathe via: gills (tadpoles), lungs, AND skin (adults)
- External fertilisation in water; eggs lack shells (need moist environment)
- Undergo metamorphosis (tadpole → frog)
- Examples: Frog (Rana), toad (Bufo), salamander

### 3. Reptilia (Reptiles)
- Terrestrial (mostly); cold-blooded
- Dry, scaly skin (scales made of keratin) — waterproof → true land animals
- Internal fertilisation; lay eggs with leathery shells on land (amniotic egg)
- Breathe by lungs only
- Examples: Lizard, snake, crocodile, gecko, tortoise

### 4. Aves (Birds)
- Warm-blooded (endothermic) — regulate own body temperature
- Feathers; wings (forelimbs modified for flight — most species)
- Internal fertilisation; lay eggs with hard shells
- Four-chambered heart; high metabolic rate
- Examples: Eagle, hen, parrot, ostrich, penguin

### 5. Mammalia (Mammals)
- Warm-blooded
- Hair/fur on body
- Give birth to live young (except monotremes — platypus, echidna)
- Females have mammary glands (produce milk to suckle young)
- Internal fertilisation; internal development (placenta in most)
- Four-chambered heart
- Examples: Dog, elephant, whale, bat, human, cow

### Quick Comparison: Vertebrate Classes
| Feature | Fish | Amphibia | Reptilia | Aves | Mammalia |
|---------|------|----------|---------|------|----------|
| Body temp | Cold | Cold | Cold | Warm | Warm |
| Skin | Scales | Moist/smooth | Dry scales | Feathers | Hair/fur |
| Breathing | Gills | Gills+lung+skin | Lungs | Lungs | Lungs |
| Fertilisation | External | External | Internal | Internal | Internal |
| Eggs | Water | Water | Land (leathery) | Land (hard shell) | Live birth |
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Economic Importance of Animals', $CONTENT$
## Importance of Animals to Humans

### Beneficial Roles
**Food:**
- Cattle, sheep, goats, pigs → meat, milk, cheese
- Poultry (chickens, turkey) → meat, eggs
- Fish → protein, omega-3 fatty acids
- Insects (in some cultures) → protein source

**Work (draught animals):**
- Horses, donkeys, oxen → ploughing, transportation (still important in developing regions)

**Medicine and Research:**
- Mice and rats → most laboratory research
- Primates → crucial for medical research (vaccine development)
- Horses → production of antivenom and some vaccines
- Leeches → medical use (anticoagulant, wound care)

**Products:**
- Silk (from silkworm Bombyx mori)
- Wool (from sheep)
- Honey and beeswax (from bees)
- Leather (from cattle hides)
- Pearls (from oysters)

**Pollination:**
- Bees, butterflies, moths, beetles → pollinate flowering plants (crucial for food production)

**Pest control:**
- Wasps, ladybirds eat pest insects
- Owls, hawks eat rodents
- Spiders eat insect pests

### Harmful Roles
**Pests and crop damage:**
- Locusts (devastating swarms destroy crops)
- Weevils (damage stored grain)
- Rats and mice (destroy food stores)

**Disease vectors:**
- Mosquitoes → malaria, dengue, yellow fever, Zika, lymphatic filariasis
- Tsetse fly → sleeping sickness (trypanosomiasis)
- Housefly → typhoid, cholera, dysentery (mechanical vector)
- Rats → plague (via fleas), leptospirosis

**Parasites directly:**
- Tapeworms, roundworms, hookworms
- Head lice, body lice

**Predation on livestock:**
- Leopards, hyenas, crocodiles attack farm animals
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Animal Classification', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
State THREE features that distinguish mammals from reptiles.

**Answer:**
1. Mammals are warm-blooded (endothermic); reptiles are cold-blooded (ectothermic)
2. Mammals have hair/fur; reptiles have dry, scaly skin
3. Mammals give birth to live young (viviparous, mostly); reptiles lay eggs with leathery shells
4. Mammals suckle young with milk from mammary glands; reptiles do not
5. Mammals have a four-chambered heart with complete separation; reptiles have a three-chambered heart (most)

---

### Question 2 (WASSCE 2021)
(a) List the classes of vertebrates.
(b) State ONE example from each class found in West Africa.

**Answer:**
(a) Pisces (Fish), Amphibia, Reptilia, Aves (Birds), Mammalia (Mammals)

(b) Examples:
- Pisces: Tilapia (Oreochromis niloticus) / mudfish
- Amphibia: African bullfrog / clawed frog
- Reptilia: Nile crocodile / monitor lizard / python
- Aves: African fish eagle / weaver bird / guinea fowl
- Mammalia: African elephant / chimpanzee / cattle

---

### Question 3 (WASSCE 2020)
State THREE economic importance of insects.

**Answer:**
1. **Pollination:** Bees pollinate crops → essential for fruit and seed production → food security
2. **Honey production:** Honeybees produce honey and beeswax (food, medicine, cosmetics)
3. **Silk production:** Silkworm (Bombyx mori) produces silk thread for the textile industry
4. **Biological control:** Predatory insects (wasps, ladybirds) control pest populations
5. **Food source:** Insects (caterpillars, termites, grasshoppers) eaten in many cultures — high protein
6. **Decomposition:** Dung beetles, carrion beetles help recycle dead organic matter

---

### Practice Questions
1. List FIVE features of the phylum Arthropoda.
2. State the differences between amphibians and reptiles.
3. Give TWO examples each of harmful and beneficial arthropods.
4. What is the significance of the amniotic egg in reptiles?
5. Name the phylum of each: (a) earthworm (b) tapeworm (c) starfish (d) cockroach.

**Answers:**
1. Jointed legs; exoskeleton of chitin; segmented body; paired appendages; bilateral symmetry
2. Amphibians: cold-blooded, moist skin, external fertilisation in water, breathe by gills+skin+lungs; Reptiles: cold-blooded, dry scaly skin, internal fertilisation, lay eggs on land, breathe by lungs only
3. Harmful: mosquito (malaria vector), locust (crop pest); Beneficial: honeybee (pollination, honey), silkworm (silk production)
4. Amniotic egg has membranes (amnion) that protect embryo and prevent drying out; allowed reptiles to reproduce on land without returning to water → true terrestrial existence
5. (a) Annelida (b) Platyhelminthes (c) Echinodermata (d) Arthropoda
$CONTENT$, 'practice', 4),
  (v_topic_id, 'WASSCE Questions: Animal Classification Part 2', $CONTENT$
## Additional Classification Notes

### Insect vs Other Arthropods
| Feature | Insect | Spider (Arachnid) | Crab (Crustacean) |
|---------|--------|------------------|-----------------|
| Body segments | 3 (head, thorax, abdomen) | 2 (cephalothorax + abdomen) | 2 |
| Legs | 6 | 8 | 10 |
| Wings | Present (most) | Absent | Absent |
| Antennae | 2 | None | 2 pairs |
| Eyes | Compound | Simple | Compound |

### Important WASSCE Points
- **Arthropoda is the largest animal phylum** (more species than all other phyla combined)
- **Insects are the most successful class of animals** (over 1 million species)
- All vertebrates belong to phylum **Chordata**
- Fish, amphibians, reptiles are **cold-blooded (ectotherms)**
- Birds and mammals are **warm-blooded (endotherms)**
- External fertilisation occurs in **fish and amphibians**
- Amniotic eggs evolved in **reptiles** → allowed colonisation of land
$CONTENT$, 'examples', 5);

  -- Evolution
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Evolution and Natural Selection' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Evolution and Natural Selection', $CONTENT$
## Evolution: Change Over Time

**Evolution** is the change in the inherited characteristics of populations of organisms over successive generations.

**Darwin's Theory of Natural Selection (1859 — "On the Origin of Species"):**
1. **Variation:** Individuals in a population vary in their traits (some heritable)
2. **Overproduction:** More offspring are born than can survive (struggle for existence)
3. **Survival of the fittest:** Individuals better adapted to environment survive and reproduce more
4. **Inheritance:** Surviving offspring inherit advantageous traits
5. **Over many generations:** Advantageous traits become more common in population → population changes → evolution

**Alfred Russel Wallace:** Independently developed similar theory; both Wallace and Darwin presented together in 1858.

### Evidence for Evolution
1. **Fossil record:** Fossils show organisms changed over time; transitional forms exist (e.g., Archaeopteryx — link between reptiles and birds)
2. **Comparative anatomy:** Homologous structures (same origin, different function) in different species — e.g., forelimbs of humans, bats, whales all have same bones (humerus, radius, ulna, carpals, etc.)
3. **Vestigial structures:** Reduced, functionless structures that were useful in ancestors — human coccyx (remnant tail), appendix, wisdom teeth, ear muscles
4. **Comparative embryology:** Embryos of very different vertebrates look remarkably similar early in development → shared ancestry
5. **Biochemistry (molecular biology):** DNA and protein sequences more similar between closely related species → shared ancestry; cytochrome c protein almost identical in humans and chimps
6. **Biogeography:** Distribution of species reflects evolutionary history and continental drift (e.g., marsupials in Australia — isolated from rest of world)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Natural Selection in Detail', $CONTENT$
## How Natural Selection Works

### Key Concepts
**Fitness:** An organism's ability to survive and reproduce in its environment (NOT physical fitness)
**Adaptation:** A heritable feature that increases an organism's fitness

### Types of Natural Selection
1. **Directional selection:** One extreme phenotype is favoured → population mean shifts
   - Example: Antibiotic resistance in bacteria
   - Example: Industrial melanism in peppered moth (Biston betularia)

2. **Stabilising selection:** Intermediate phenotype is favoured; extremes selected against
   - Example: Human birth weight — very small and very large babies have higher mortality; medium weight has highest survival

3. **Disruptive selection:** Both extremes are favoured over intermediate → can lead to speciation
   - Example: Beak size in some bird populations

### The Peppered Moth: Classic Example of Natural Selection
Before Industrial Revolution (pre-1850):
- Trees covered with light-coloured lichens
- Pale (speckled) moths camouflaged on trees → survived
- Dark (melanic) moths visible to birds → eaten (selected against)
- Population: mostly pale moths

After Industrial Revolution:
- Soot from factories killed lichens; bark became dark with soot
- Pale moths now VISIBLE on dark bark → eaten by birds
- Dark moths now CAMOUFLAGED → survived and reproduced
- Population: mostly dark moths

This showed natural selection in ACTION in real time.

### Speciation — Formation of New Species
**Speciation:** Evolution of new species from existing ones.

**Allopatric speciation (geographic isolation):**
1. One population is divided by a physical barrier (mountain, ocean, desert)
2. Two sub-populations are isolated — no interbreeding
3. Each population faces different environmental pressures
4. Natural selection favours different traits in each group
5. Random mutations accumulate differently in each group
6. Over thousands of generations → populations become so different they cannot interbreed
7. New species formed

**Galapagos finches:** Darwin's famous example — 14 species of finch evolved from one ancestral species on different islands, with different beak shapes for different food sources.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Lamarck vs Darwin, and Worked Examples', $CONTENT$
## Lamarck vs Darwin

### Lamarck's Theory (1809) — WRONG
Jean-Baptiste Lamarck proposed:
1. **Use and disuse:** Organs used more become stronger and larger; unused organs become weaker
2. **Inheritance of acquired characteristics:** Traits acquired during lifetime are passed to offspring

**Classic example:** Giraffes stretched their necks to reach higher leaves → longer necks → passed long necks to offspring

**Why Lamarck was wrong:**
- Acquired characteristics are NOT inherited (muscles you build don't change DNA)
- Weismann's experiment: Cut off tails of mice for 20 generations → offspring still born with tails
- We now know: Inheritance is through genes/DNA; only changes to DNA are inherited

### Darwin's Explanation of Giraffe Necks:
1. In ancestral giraffe population, individuals had VARYING neck lengths (genetic variation)
2. Longer-necked giraffes could reach MORE food → better survival → more offspring
3. Short-necked giraffes less able to reach food → competed poorly → fewer offspring
4. Over many generations: long neck alleles became more common in population
5. Result: Modern giraffes have long necks

### Worked Example: Antibiotic Resistance
How does antibiotic resistance evolve?

1. In a population of bacteria, random mutations occur
2. Occasionally a mutation confers resistance to an antibiotic
3. When antibiotic is applied: susceptible bacteria killed; resistant ones survive
4. Resistant bacteria reproduce rapidly (no competition)
5. All offspring carry resistance gene
6. Population is now resistant

This is why: (a) Complete the full course of antibiotics (b) Doctors shouldn't over-prescribe (c) New antibiotics must constantly be developed

### Evolution vs Common Misconceptions
**Wrong:** "Species WANT to evolve or NEED to adapt"
**Right:** Evolution has no direction or purpose — it is driven by random variation and environmental selection

**Wrong:** "Humans evolved FROM chimpanzees"
**Right:** Humans and chimpanzees SHARE A COMMON ANCESTOR — they are evolutionary cousins

**Wrong:** "Only the strongest survive"
**Right:** The BEST ADAPTED to current environment survive and reproduce — this varies by environment
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Evolution', $CONTENT$
## WASSCE Past Questions: Evolution

### Question 1 (WASSCE 2022)
(a) State Darwin's theory of natural selection.
(b) State THREE pieces of evidence for evolution.

**Answer:**
(a) Darwin's theory of natural selection:
1. In any population, there is heritable variation between individuals
2. More offspring are produced than can survive (competition/struggle for existence)
3. Those with advantageous variations survive and reproduce more ("survival of the fittest")
4. Advantageous traits are inherited by offspring
5. Over generations, these traits become more common → population changes (evolution)

(b) Evidence for evolution:
1. **Fossil record** — fossils show organisms have changed over time
2. **Comparative anatomy** — homologous structures in different species suggest common ancestry
3. **Biochemical evidence** — similar DNA and protein sequences in related organisms
4. **Vestigial structures** — remnants of ancestral structures no longer functional
5. **Comparative embryology** — embryos of different vertebrates look similar

---

### Question 2 (WASSCE 2021)
Compare the theories of Lamarck and Darwin on evolution. Which is accepted today and why?

**Answer:**
**Lamarck:** Organisms change during their lifetime through use/disuse; these acquired characteristics are inherited.

**Darwin:** Organisms with heritable variations that make them better adapted to environment survive and reproduce more; favourable traits passed to offspring.

**Darwin's theory is accepted today** because:
- Genetics and molecular biology support it — only changes in DNA (genes) are inherited; acquired characteristics (e.g., muscles built through exercise) cannot be inherited
- Weismann's experiments (cutting mouse tails — not inherited) disproved Lamarck
- The modern synthesis combines Darwin's natural selection with Mendel's genetics

---

### Practice Questions
1. Explain the term "survival of the fittest" in the context of natural selection.
2. Using the peppered moth example, explain how industrial melanism demonstrates natural selection.
3. What is meant by "speciation"? Describe allopatric speciation.
4. State THREE examples of vestigial structures in humans.
5. Why is natural selection described as the "mechanism" of evolution?

**Answers:**
1. Those organisms with traits BEST SUITED to their environment survive long enough to reproduce and pass these traits to offspring; "fittest" means most adapted, not physically strongest
2. (Describe pre/post industrial: lichens/bark colour change → camouflage of each moth form changes → birds selectively eat non-camouflaged → proportion of each form in population changes — as detailed above)
3. Formation of new species; Allopatric: geographic isolation → separate populations → different selection pressures → genetic divergence → reproductive isolation → new species
4. Coccyx (remnant tail), appendix, wisdom teeth, plantaris muscle, ear muscles, arrector pili muscles (goosebumps)
5. Natural selection is the mechanism because it explains HOW evolution happens — which individuals survive and reproduce; not just THAT evolution happens
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Evolution Extended Examples', $CONTENT$
## Additional Evolution Examples and Notes

### Human Evolution
Key fossil hominids in evolutionary history:
- Australopithecus (3-4 million years ago): walked upright; small brain
- Homo habilis (2.5 million years ago): "handy man"; used tools; larger brain
- Homo erectus (1.8 million years ago): taller; more sophisticated tools; left Africa
- Homo sapiens (300,000 years ago - present): modern humans; large brain; complex language and culture

Modern humans and chimpanzees share approximately **98.7% of their DNA** — this does NOT mean we descended from chimps, but that we share a very recent common ancestor (about 6-7 million years ago).

### Co-evolution
Species can evolve together in response to each other:
- Flowers and their pollinators (orchids and specific bees perfectly matched)
- Parasites and hosts (ongoing evolutionary "arms race")
- Predators and prey (cheetah speed and gazelle speed co-evolved)

### Genetic Drift
Random change in allele frequencies in a population (especially significant in small populations):
- **Bottleneck effect:** Population crashes dramatically → survivors' genes become entire gene pool → reduced genetic diversity
- **Founder effect:** Small group establishes new population → limited genetic diversity

These show that not all evolution is due to natural selection!
$CONTENT$, 'examples', 5);

  -- Growth and Development
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Growth and Development' LIMIT 1;

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Growth and Development', $CONTENT$
## Growth: A Fundamental Property of Life

**Growth** is the irreversible increase in dry mass of an organism.

**Note:** Increase in water content is NOT growth (a plant can temporarily gain mass from water uptake, but this is reversible). True growth is measured as DRY MASS.

### Characteristics of Growth
- Irreversible (permanent)
- Involves increase in cell number (cell division) and/or cell size
- Controlled by genes and hormones
- Requires nutrition and energy (ATP)

### Measurement of Growth
- **Dry mass:** Remove water by drying at 100°C until constant mass — most accurate but kills organism
- **Wet (fresh) mass:** Simple to measure; includes variable water content — less accurate
- **Length/height:** For linear growth (plants, height of child)
- **Number of cells:** Under microscope
- **Circumference:** For tree trunks

### Growth in Unicellular vs Multicellular Organisms
**Unicellular (e.g., bacteria):** Growth = increase in cell size + binary fission (cell division)
**Multicellular:** Growth = increase in cell number (mitosis) + cell enlargement + cell differentiation

### Types of Growth Curves

**S-shaped (sigmoid) growth curve:** Typical for bacteria in culture, populations, individual animals
- **Lag phase:** Initial slow growth (adaptation)
- **Log (exponential) phase:** Rapid increase in growth rate
- **Stationary phase:** Growth rate = death rate; carrying capacity reached
- **Decline phase:** Death rate > growth rate (resources exhausted)

**Typical mammal growth curve:** Rapid growth in infancy, slower through childhood, rapid again at puberty (growth spurt), then stops.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Growth Hormones and Development in Plants', $CONTENT$
## Plant Growth Hormones (Auxins)

**Auxin (Indole Acetic Acid - IAA):** Main plant growth hormone
- Produced at shoot tips (apical meristem) and young leaves
- Promotes CELL ELONGATION in stems
- **High concentration** promotes growth in shoots but INHIBITS root growth

### Tropisms — Growth Responses in Plants
A **tropism** is a growth response of a plant to a directional stimulus.

**Phototropism:** Growth response to LIGHT
- Shoot tip produces auxin
- In unilateral light: auxin moves to shaded side
- Shaded side has more auxin → elongates MORE than lit side
- Result: Shoot curves TOWARDS light (positive phototropism)
- Roots curve AWAY from light (negative phototropism)
- This helps leaves maximise light for photosynthesis

**Geotropism (Gravitropism):** Growth response to GRAVITY
- Shoots grow UPWARD (negative geotropism)
- Roots grow DOWNWARD (positive geotropism)
- Higher auxin concentration causes: shoot elongation (grows up); root inhibition (grows down)

**Hydrotropism:** Growth response to WATER
- Roots show positive hydrotropism — grow toward water source
- Important for water uptake in soil

**Thigmotropism:** Growth response to TOUCH
- Twining plants (bean vines, passion flower) grow around supports

### Other Plant Hormones
**Gibberellins:** Promote stem elongation, seed germination, breaking dormancy
**Cytokinins:** Promote cell division; delay ageing of leaves
**Abscisic acid (ABA):** Causes dormancy; closes stomata during drought (stress hormone)
**Ethylene:** Promotes fruit ripening; causes leaf drop (abscission)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Human Growth and Development', $CONTENT$
## Human Growth Stages

### Stages of Human Life Cycle
1. **Fertilisation → Zygote**
2. **Embryonic period (weeks 1-8):** Organ formation (organogenesis); most critical period
3. **Foetal period (weeks 9-38):** Growth and maturation of organs
4. **Birth (parturition)**
5. **Infancy (0-2 years):** Rapid growth; development of motor skills
6. **Childhood (2-12 years):** Steady growth; language, social skills
7. **Adolescence/Puberty (12-18 years):** Growth spurt; secondary sexual characteristics
8. **Adulthood (18-60 years):** Growth stops; reproductive peak
9. **Old age (60+):** Gradual decline in body functions

### Puberty: Physical Changes
**In both sexes:**
- Growth spurt (bones lengthen)
- Increase in body hair (pubic, underarm)
- Increased sweating (sebaceous gland activity)
- Psychological changes

**In males (testosterone):**
- Enlargement of testes and penis
- Voice deepens (larynx grows)
- Facial and body hair
- Muscle development
- Production of sperm begins

**In females (oestrogen and progesterone):**
- Development of breasts
- Widening of hips (pelvis broadens for childbirth)
- Menarche (first menstruation)
- Ovulation begins

### Development vs Growth
**Growth:** Quantitative increase in size/mass
**Development:** Qualitative change in complexity and function (differentiation of cells into different tissues and organs)

Both occur together during the organism's life cycle.

### Metamorphosis
**Incomplete metamorphosis (Hemimetabolism):** Egg → Nymph (resembles adult) → Adult
Example: Cockroach, grasshopper, locust

**Complete metamorphosis (Holometabolism):** Egg → Larva (caterpillar) → Pupa (cocoon) → Adult
Example: Butterfly, moth, housefly, housefly, ant, bee
This allows larva and adult to occupy different niches (no competition with self!)
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'WASSCE Questions: Growth and Development', $CONTENT$
## WASSCE Examination Questions

### Question 1 (WASSCE 2022)
(a) Define growth.
(b) Why is dry mass the best measure of true growth?

**Answer:**
(a) Growth is the **irreversible increase in the dry mass** of an organism, resulting from an increase in cell number and/or cell size.

(b) Dry mass is the best measure because:
- It excludes water, which can vary greatly with environment (a plant can gain water and appear to grow, then lose it and shrink)
- Water content fluctuates throughout the day
- Dry mass represents the actual organic material synthesised → true biological growth

---

### Question 2 (WASSCE 2021)
Explain how auxin brings about phototropism in a shoot tip.

**Answer:**
1. Shoot tip produces auxin (IAA)
2. When light comes from one side only, auxin migrates to the SHADED side of the stem
3. The shaded side therefore has a HIGHER concentration of auxin
4. Auxin promotes cell elongation
5. Cells on the shaded side elongate MORE than cells on the lit side
6. This unequal growth causes the shoot to BEND/CURVE towards the light source

(Positive phototropism — helps leaves reach maximum light for photosynthesis)

---

### Question 3 (WASSCE 2020)
State TWO differences between complete and incomplete metamorphosis in insects.

**Answer:**
| Complete metamorphosis | Incomplete metamorphosis |
|------------------------|------------------------|
| 4 stages: egg, larva, pupa, adult | 3 stages: egg, nymph, adult |
| Larva looks COMPLETELY different from adult | Nymph resembles miniature adult |
| Pupa (cocoon) stage occurs | No pupal stage |
| Examples: butterfly, fly | Examples: grasshopper, cockroach |

---

### Practice Questions
1. List FOUR stages of the human life cycle.
2. State THREE physical changes that occur in females during puberty.
3. What is geotropism? Explain how roots show positive geotropism.
4. What is the function of abscisic acid in plants?
5. Distinguish between growth and development.

**Answers:**
1. Embryo/foetal stage, infancy, childhood, adolescence, adulthood, old age (any four)
2. Breast development, widening of hips, menarche (first menstrual period), development of pubic/underarm hair, body fat redistribution
3. Growth response to gravity. Roots grow downward (positive geotropism) because: high auxin concentration at lower side of horizontal root; high auxin INHIBITS root growth; lower side grows less; root curves downward
4. Promotes seed dormancy; closes stomata in drought (reduces water loss); promotes leaf drop (abscission) in deciduous trees; generally acts as a growth inhibitor/stress response hormone
5. Growth: quantitative increase in size/mass (more cells, larger cells). Development: qualitative increase in complexity and differentiation (cells specialising into different tissues and organs with specific functions)
$CONTENT$, 'practice', 4),
  (v_topic_id, 'Growth Extended Notes', $CONTENT$
## Practical Growth Experiments and Notes

### Measuring Plant Growth
**Experiment: Effect of light on seed germination**
Method: Germinate seeds of same type in: (a) light (b) dark
Measure: Seedling height, root length, dry mass over 2 weeks
Expected result: Dark-grown seedlings are taller (etiolated — elongated searching for light) but have less dry mass; light-grown seedlings are shorter but stockier with more chlorophyll

### Sigmoid Growth Curve in Bacteria
At time = 0: Introduce bacteria to fresh nutrient broth
Lag phase: Bacteria adapt, synthesise enzymes — little increase in numbers
Log phase: Rapid binary fission — exponential increase (numbers double every ~20 min for E.coli)
Stationary phase: Nutrients run low, waste accumulates → birth rate = death rate → stable population
Decline/death phase: Nutrients exhausted, toxins accumulate → death rate > birth rate → population crashes

This is important for: (1) Food preservation (keep bacteria in lag/early growth phases); (2) Industrial fermentation (harvest during log phase for maximum product)

### Plant Growth Regulators in Agriculture
- Auxins (synthetic: 2,4-D) used as herbicides — selective weed killer (kills broad-leaved weeds, not narrow-leaved cereals)
- Gibberellins used to break seed dormancy, increase fruit size (seedless grapes)
- Ethylene used to accelerate fruit ripening during transport
- Cytokinins used to delay leaf yellowing in stored vegetables
$CONTENT$, 'examples', 5);

END $$;
