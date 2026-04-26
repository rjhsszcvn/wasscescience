/*
  # Geography Comprehensive Deep Notes — Topics 1 to 5

  Replaces all existing section content for Geography Topics 1–5 with
  exhaustive Aki Ola-style notes. Each section is dramatically expanded with:
  - Full definitions with etymology and context
  - Deep explanations with sub-headings
  - Real West African examples
  - Worked exam-style problems
  - WASSCE-style practice questions with full answer guidance

  Topics covered:
  1. Plate Tectonics and Earthquakes
  2. Climate and Weather
  3. Population and Settlement
  4. Map Reading and Scale
  5. Rivers and Drainage
*/

-- ============================================================
-- TOPIC 1: PLATE TECTONICS AND EARTHQUAKES
-- ============================================================

UPDATE topic_sections SET content = $$## What is Plate Tectonics?

Plate tectonics is the scientific theory that explains how the rigid outer shell of the Earth (the **lithosphere**) is divided into large pieces called **tectonic plates** that move slowly over the semi-molten **asthenosphere** beneath them. This movement drives many of the Earth's most dramatic geological events — earthquakes, volcanoes, and the formation of mountains and ocean trenches.

## The Structure of the Earth

To understand plate tectonics, you must first understand the Earth's internal layers:

| Layer | Depth | State | Temperature | Key Feature |
|-------|-------|-------|-------------|-------------|
| Crust (Continental) | 25–90 km | Solid | Cool | Composed of granite; lighter (less dense) |
| Crust (Oceanic) | 5–10 km | Solid | Cool | Composed of basalt; denser and thinner |
| Upper Mantle | 90–400 km | Solid/Plastic | 1,000°C | Part of the lithosphere |
| Asthenosphere | 100–700 km | Semi-molten | 1,300°C | Where plates "float" and slide |
| Lower Mantle | 700–2,900 km | Solid | 3,000°C | High pressure keeps it solid |
| Outer Core | 2,900–5,100 km | Liquid | 4,000–5,000°C | Iron and nickel; generates magnetic field |
| Inner Core | 5,100–6,371 km | Solid | ~5,500°C | Immense pressure keeps it solid despite heat |

**The Lithosphere** is the rigid outer shell — it includes the crust AND the uppermost part of the mantle. It is broken into about 15 major tectonic plates.

**The Asthenosphere** is the soft, partially molten layer on which the lithospheric plates float and move. Convection currents in this layer drive plate movement.

## Why Is This Topic Important for WASSCE?

Plate tectonics explains:
- Where earthquakes and volcanoes occur (at plate boundaries)
- How mountains (e.g., Himalayas, Alps, Andes) formed
- Why some coastlines have deep ocean trenches
- Why West Africa has few earthquakes (far from active plate boundaries)
- The geological history of the African continent
$$ WHERE id = 'aa42f493-85bf-401d-947e-4792ccb00a92';

UPDATE topic_sections SET content = $$## Core Vocabulary You Must Know

**Tectonic Plate:** A massive, rigid slab of the Earth's lithosphere that moves slowly over the underlying asthenosphere. There are approximately 15 major plates.

**Lithosphere:** The rigid outer layer of the Earth comprising the crust and uppermost mantle. It is about 100 km thick on average.

**Asthenosphere:** The weak, partially molten layer of the upper mantle on which the tectonic plates move. Its semi-fluid nature allows plates to drift.

**Convection Current:** A circular flow of heat energy in the mantle caused by differences in temperature. Hot mantle material rises, spreads, cools, and sinks — this circulation drags the plates above.

**Subduction:** The process by which one tectonic plate slides beneath another, sinking into the mantle. The subducting plate eventually melts.

**Subduction Zone:** The area where one plate dives below another. Characterised by deep ocean trenches, earthquakes, and volcanic activity.

**Convergent Boundary:** A plate boundary where two plates move TOWARDS each other. Results in subduction, fold mountains, and volcanic arcs.

**Divergent Boundary:** A plate boundary where two plates move AWAY from each other. Results in rift valleys, mid-ocean ridges, and seafloor spreading.

**Transform (Conservative) Boundary:** A plate boundary where two plates slide PAST each other horizontally. Results in earthquakes but no volcanism.

**Earthquake:** A sudden and violent shaking of the ground caused by movements along faults or at plate boundaries.

**Focus (Hypocentre):** The point INSIDE the Earth where an earthquake originates. This is where the energy is released.

**Epicentre:** The point on the SURFACE of the Earth directly above the focus. This is the point of greatest surface damage.

**Seismic Waves:** The waves of energy released by an earthquake. They travel through and across the Earth.
- **P-waves (Primary):** Fastest; travel through solids and liquids; compressional
- **S-waves (Secondary):** Slower; travel only through solids; transverse (sideways)
- **Surface Waves (L-waves):** Slowest; travel along Earth's surface; cause most damage

**Richter Scale:** A logarithmic scale (1–10) measuring the magnitude (energy released) of earthquakes. Each unit represents 10× more ground motion.

**Mercalli Scale:** Measures the intensity (observed effects) of an earthquake on a scale of I–XII.

**Volcano:** An opening or rupture in the Earth's crust through which lava, gases, and ash are expelled.

**Magma:** Molten rock INSIDE the Earth (beneath the surface).

**Lava:** Molten rock that has reached the Earth's surface through a volcanic eruption.

**Seismograph:** An instrument used to detect, record, and measure seismic waves during an earthquake.

**Tsunami:** A series of giant ocean waves triggered by an undersea earthquake, landslide, or volcanic eruption.
$$ WHERE id = '7021f474-5f9e-4d67-a100-f9a648dc1e48';

UPDATE topic_sections SET content = $$## Types of Plate Boundaries

### A. Convergent Boundaries (Plates Colliding)

Two plates move towards each other. There are THREE types:

#### 1. Oceanic-Continental Convergence (Subduction)
- The denser oceanic plate is forced UNDER the lighter continental plate.
- The oceanic plate melts in the mantle, forming **magma**.
- **Landforms produced:** Deep ocean trenches, fold mountains, composite volcanoes (stratovolcanoes), island arcs.
- **Example:** The **Nazca Plate** (oceanic) subducts under the **South American Plate** (continental) → creating the **Andes Mountains** and the **Peru-Chile Trench**.
- **Earthquakes:** Yes — powerful, deep-focus earthquakes.

#### 2. Oceanic-Oceanic Convergence
- Two oceanic plates collide; the older, denser one subducts.
- **Landforms produced:** Deep ocean trenches, volcanic island arcs.
- **Example:** **Mariana Trench** (deepest point on Earth at ~11,000 m) formed by the Pacific Plate subducting under the Mariana Plate; **Japan's volcanic islands**.

#### 3. Continental-Continental Convergence
- Two continental plates collide. Neither subducts because both are too light.
- Rocks are crumpled, folded, and thrust upward.
- **Landforms produced:** Very high fold mountains. No volcanoes.
- **Example:** **Indian Plate** colliding with **Eurasian Plate** → **Himalayan Mountains** (highest in the world, including Mount Everest at 8,849 m).
- **Earthquakes:** Yes — very powerful, shallow-focus earthquakes.

---

### B. Divergent Boundaries (Plates Separating)

Two plates move AWAY from each other.

#### On Land (Continental Rift)
- The crust stretches and fractures, forming a **rift valley**.
- Magma wells up, creating new crust. Volcanoes form along the rift.
- **Example:** **East African Rift Valley** — this is where the African Plate is slowly splitting apart. The valley contains Lake Victoria, Lake Tanganyika, and active volcanoes (Mt. Kilimanjaro, Mt. Kenya).
- **Future:** In millions of years, East Africa may separate, forming a new ocean.

#### Under the Ocean (Seafloor Spreading)
- Plates pull apart on the ocean floor, and magma wells up to form new oceanic crust.
- Creates a **mid-ocean ridge** — an underwater mountain range.
- **Example:** **Mid-Atlantic Ridge** — the Atlantic Ocean is getting wider by about 2.5 cm per year as the American plates move west and Eurasian/African plates move east.

---

### C. Transform (Conservative) Boundaries (Plates Sliding Past)

Two plates slide HORIZONTALLY past each other. Crust is neither created nor destroyed.

- **Landforms produced:** **Fault lines** — zones of weakness in the crust.
- **No volcanism** — no magma is produced.
- **Earthquakes:** Yes — frequent, shallow, and often devastating.
- **Example:** **San Andreas Fault** (California, USA) — the Pacific Plate slides northwest past the North American Plate. The city of San Francisco was nearly destroyed by the 1906 earthquake here.

---

## Causes of Earthquakes

### 1. Plate Boundary Earthquakes (Tectonic Earthquakes)
The most common and most powerful earthquakes. They occur where:
- Plates subduct and stick temporarily before releasing energy
- Plates grind past each other at transform boundaries
- Plates move apart, causing tension fractures

### 2. Volcanic Earthquakes
- Caused by the movement of magma inside a volcano before or during an eruption.
- Usually less powerful but can trigger larger events.

### 3. Collapse Earthquakes
- Caused by the collapse of underground caves or mine tunnels.
- Very localised and usually minor.

### 4. Reservoir-Induced Seismicity
- Large dams filling massive reservoirs can sometimes trigger small earthquakes due to the immense weight of water.

---

## Distribution of Earthquakes and Volcanoes

**The Pacific Ring of Fire:** A zone around the Pacific Ocean where ~90% of the world's earthquakes and ~75% of the world's volcanoes occur. This is because the Pacific Plate and surrounding plates have numerous convergent and transform boundaries.

**Mid-oceanic ridges:** Sites of divergent boundaries on ocean floors — constant low-level volcanic and earthquake activity.

**West Africa's situation:** The African continent is located at the interior of the African Plate, far from any active plate boundary. This is why West Africa experiences very few significant earthquakes or volcanic eruptions — it is a region of **tectonic stability**.

---

## Effects of Earthquakes

### Primary Effects (Direct)
- Ground shaking — buildings collapse, roads crack
- Surface rupture — the ground splits open along fault lines
- Landslides triggered by ground movement
- Tsunamis triggered by underwater earthquakes

### Secondary Effects (Indirect)
- Fires from broken gas pipes
- Flooding from broken water mains or dam failure
- Disease outbreaks due to polluted water supplies
- Economic collapse from destruction of infrastructure

### Social Effects
- Loss of life (the 2010 Haiti earthquake killed ~230,000 people)
- Population displacement — refugees
- Psychological trauma among survivors

---

## Measurement of Earthquakes

### The Richter Scale
- Measures **magnitude** (energy released) at the seismograph station.
- Logarithmic: magnitude 6 releases 10× more energy than magnitude 5.
- Scale typically runs from 1 (barely felt) to 9+ (catastrophic).

| Richter Magnitude | Description | Typical Effects |
|------------------|-------------|-----------------|
| 1–2 | Micro | Not felt by humans |
| 3–4 | Minor | Felt by some; little damage |
| 5 | Moderate | Felt widely; some damage |
| 6 | Strong | Damage in populated areas |
| 7 | Major | Serious damage over wide areas |
| 8+ | Great | Catastrophic destruction |

### The Mercalli Intensity Scale
- Measures **intensity** — how the earthquake is FELT and what damage it causes.
- Scale runs from I (not felt) to XII (total destruction).
- Varies with distance from epicentre and local geology.
$$ WHERE id = '70ba2e3a-e697-435a-9f25-da99a061d526';

UPDATE topic_sections SET content = $$## Worked Example 1: Identifying Plate Boundary Type

**Question:** A region experiences frequent powerful earthquakes, has a chain of volcanic islands, and is located near a deep ocean trench. What type of plate boundary is present? Explain how this boundary forms these features.

**Answer:**
The region has an **oceanic-oceanic convergent boundary**.

**How it forms:**
- Two oceanic plates move towards each other.
- The older, denser plate is forced downward (subducted) beneath the other into the mantle.
- As the subducting plate descends, it melts under the intense heat and pressure of the mantle.
- The melted material (magma) is less dense than the surrounding rock, so it rises through the overlying plate.
- Where magma breaks through the ocean floor, it creates **volcanic islands** in a curved chain called an **island arc**.
- The subduction zone itself creates a **deep ocean trench** — the deepest parts of the ocean are found here.
- As the plates grind against each other during subduction, they release enormous amounts of energy as **earthquakes**.

**Real-world example:** Japan — located where the Pacific Plate subducts under the Eurasian and Philippine Plates. Japan has both the Marianas-type trenches nearby and a chain of active volcanic islands.

---

## Worked Example 2: Earthquake Focus and Epicentre

**Question:** An earthquake has its focus 30 km below the surface. Define the terms 'focus' and 'epicentre'. Where would the greatest surface damage occur?

**Answer:**
- **Focus (Hypocentre):** The exact point BELOW the Earth's surface where the earthquake originates — where rocks first break and energy is released. In this case, it is 30 km deep.
- **Epicentre:** The point on the Earth's SURFACE directly above the focus. It is where surface damage is greatest because this point is closest to where the energy was released.

The greatest surface damage would occur **at and around the epicentre**, because this is where seismic waves first arrive at the surface and with the most intensity.

---

## Worked Example 3: Comparing LEDC and MEDC Earthquake Responses

**Question:** Compare the impact of earthquakes in Less Economically Developed Countries (LEDCs) vs. More Economically Developed Countries (MEDCs).

**Answer:**

| Factor | LEDC (e.g., Haiti 2010) | MEDC (e.g., Japan 2011) |
|--------|-------------------------|-------------------------|
| Death toll | Very high (~230,000) | Moderate (~20,000) |
| Building quality | Poor — inadequate earthquake-resistant design | High — strict building codes |
| Emergency response | Slow — limited resources, poor infrastructure | Fast — well-trained, equipped |
| Recovery time | Years to decades | Months to years |
| Economic loss | Devastating — years of GDP | Significant but manageable |

**Conclusion:** While MEDCs have better preparedness and infrastructure, they still suffer major losses. LEDCs are far more vulnerable due to poverty and limited resources.

---

## Worked Example 4: Why West Africa Has Few Earthquakes

**Question:** Explain why Ghana and Nigeria experience very few earthquakes compared to countries like Japan or Chile.

**Answer:**
Ghana and Nigeria are located on the **African Plate**, far from any active plate boundary. The nearest plate boundaries are:
- The Mid-Atlantic Ridge (west of Africa, divergent) — thousands of km away
- The Mediterranean collision zone (north of Africa) — relatively distant from West Africa

Since earthquakes occur primarily at plate boundaries (convergent, divergent, transform), and West Africa sits in the stable interior of the African Plate, it is a region of **tectonic stability**. Earthquakes here are very rare and usually very mild.

In contrast, Japan sits at a convergent boundary where the Pacific Plate subducts beneath the Eurasian Plate — one of the most seismically active zones on Earth.
$$ WHERE id = '82f47c6d-3544-4c61-ab7c-42372571e374';

UPDATE topic_sections SET content = $$## WASSCE Practice Questions: Plate Tectonics and Earthquakes

### Section A: Multiple Choice

**Question 1:** Which of the following best describes the asthenosphere?
A. The rigid outer shell of the Earth
B. The solid innermost layer of the Earth
C. The semi-molten layer on which tectonic plates move
D. The outermost layer of the atmosphere

**Answer: C** — The asthenosphere is the weak, partially molten layer of the upper mantle. Its semi-fluid nature allows the overlying lithospheric plates to move over it.

---

**Question 2:** At which type of plate boundary are the world's deepest ocean trenches formed?
A. Divergent boundaries
B. Transform boundaries
C. Continental-continental convergent boundaries
D. Oceanic-continental convergent boundaries

**Answer: D** — When an oceanic plate subducts beneath a continental plate, the descending plate creates a deep trench at the boundary (e.g., Peru-Chile Trench).

---

**Question 3:** The point on the Earth's surface directly above the focus of an earthquake is called the:
A. Epicentre
B. Seismograph
C. Hypocentre
D. Richter point

**Answer: A** — The epicentre is the surface point above the focus. It experiences the greatest damage.

---

**Question 4:** Which of the following is a PRIMARY effect of an earthquake?
A. Disease outbreak from polluted water
B. Fire from broken gas pipes
C. Building collapse from ground shaking
D. Population displacement to refugee camps

**Answer: C** — Primary effects are the immediate, direct results of the earthquake. Building collapse from ground shaking is a direct effect. The others are secondary (indirect) effects.

---

**Question 5:** The East African Rift Valley is evidence of which plate boundary type?
A. Transform boundary
B. Convergent boundary
C. Oceanic divergent boundary
D. Continental divergent boundary

**Answer: D** — The East African Rift Valley is forming where the African Plate is pulling apart (continental divergent boundary), creating a rift valley as the crust stretches and thins.

---

### Section B: Short Answer

**Question 6:** With the aid of a labelled diagram, explain how fold mountains are formed at a continental-continental convergent plate boundary. Give ONE named example. (8 marks)

**Model Answer:**
**Diagram should show:** Two continental plates labelled; arrows showing plates moving towards each other; sedimentary rocks between plates being crumpled upward; the resulting mountain range.

**Explanation:**
- Two continental plates, both composed of light granitic rock, move towards each other.
- Neither plate is dense enough to subduct.
- The sedimentary rocks along the collision zone are compressed, buckled, and folded upward.
- Over millions of years, these folded rocks build up into high **fold mountains**.
- The process produces no volcanoes (no subduction, so no magma), but causes intense earthquake activity.

**Example:** The **Himalayan Mountains** were formed (and are still forming) by the collision of the **Indian Plate** with the **Eurasian Plate**, which began approximately 50 million years ago. Mount Everest (8,849 m) is the highest peak.

---

**Question 7:** Describe THREE ways in which the prediction and management of earthquake hazards can reduce their impact. (6 marks)

**Model Answer:**
1. **Seismic monitoring and early warning systems:** Networks of seismographs detect the first P-waves of an earthquake and can send automatic alerts seconds to minutes before more destructive S-waves and surface waves arrive. Japan's early warning system has saved many lives.

2. **Earthquake-resistant building design:** Modern buildings in high-risk zones are constructed with flexible foundations, reinforced concrete frames, and base isolators (rubber pads that absorb shaking). These buildings sway without collapsing.

3. **Public education and emergency preparedness drills:** Regular earthquake drills teach people what to do (drop, cover, hold on), where to go after an earthquake (open spaces away from buildings), and how to prepare emergency kits (food, water, first aid). Countries like Japan conduct national earthquake drills annually.

---

**Question 8:** Explain how convection currents in the mantle cause tectonic plates to move. (5 marks)

**Model Answer:**
- The Earth's core generates enormous heat, which heats the rock in the mantle.
- Hot mantle material near the core becomes less dense and **rises** towards the surface in a convection current.
- As this material rises and spreads out beneath the lithosphere, it creates a **drag force** on the base of the tectonic plates.
- The plates are pulled or pushed along by this drag.
- When the mantle material cools, it becomes denser and **sinks** back towards the core, completing the circular convection cell.
- Different convection cells beneath adjacent plates can pull plates apart (creating divergent boundaries) or push them together (creating convergent boundaries).
$$ WHERE id = 'e6f82d09-fa53-4571-ae19-22064eaba687';

-- ============================================================
-- TOPIC 2: CLIMATE AND WEATHER
-- ============================================================

UPDATE topic_sections SET content = $$## Introduction to Climate and Weather

Two of the most commonly confused terms in Geography are **weather** and **climate**. Understanding the difference is essential for the WASSCE.

**Weather** refers to the **short-term** atmospheric conditions at a specific place and time. Weather changes from day to day and even hour to hour.

**Climate** refers to the **average weather conditions** of a place over a **long period of time** — typically **30 years** or more. Climate is predictable and stable.

**Memory device:** "Climate is what you expect; weather is what you get."

## Why Climate Matters

Climate determines:
- The types of crops that can grow in an area (agriculture)
- The vegetation type (rainforest, savanna, desert)
- Human settlement patterns (people avoid very hot/cold/dry areas)
- River flow and water availability
- Natural hazard risk (floods, droughts, hurricanes)
- Economic activities (tourism, fishing, farming)

## West Africa's Climate Significance

West Africa has a variety of climates strongly influenced by:
- **Latitude** — West Africa lies in the tropics (between 5°N and 20°N), receiving intense solar radiation year-round.
- **The Intertropical Convergence Zone (ITCZ)** — a band of low pressure that migrates north and south with the seasons, bringing rainfall.
- **Trade winds** — the Harmattan (dry NE winds from the Sahara) and the SW Monsoon (moist winds from the Atlantic).
- **Distance from the sea** — coastal areas are wetter; inland areas are drier.
- **Relief** — highlands receive more rainfall.

## Climate Zones of West Africa (North to South)

| Zone | Location | Rainfall (mm/year) | Dry Season | Vegetation |
|------|----------|-------------------|------------|------------|
| Sahel | 14–18°N | 100–600 mm | 9–10 months | Sparse grass, acacia |
| Sudan/Guinea Savanna | 8–14°N | 600–1,200 mm | 6–7 months | Tall grass, scattered trees |
| Derived Savanna | 6–8°N | 1,200–1,600 mm | 3–4 months | Transitional |
| Tropical Rainforest | 0–6°N | 1,600–3,000+ mm | 0–2 months | Dense evergreen forest |
| Coastal/Equatorial | Coastal | High | Short | Mangroves, forest |
$$ WHERE id = 'c4b84840-210a-4edf-8e30-84badc82f6d8';

UPDATE topic_sections SET content = $$## Essential Climate and Weather Vocabulary

**Weather:** The state of the atmosphere at a specific place and specific time, including temperature, rainfall, humidity, wind speed and direction, cloud cover, and air pressure. It is short-term and variable.

**Climate:** The average weather conditions of a region over a minimum of 30 years. It is stable and predictable.

**Temperature:** A measure of the heat energy of the atmosphere, measured in degrees Celsius (°C) using a thermometer placed in a Stevenson Screen.

**Precipitation:** All forms of water falling from the atmosphere — rain, drizzle, snow, sleet, hail. In West Africa, this is mainly **rainfall**.

**Humidity:** The amount of water vapour in the air.
- **Absolute humidity:** The actual mass of water vapour per unit of air.
- **Relative humidity (RH):** The amount of water vapour in the air as a percentage of the maximum the air CAN hold at that temperature. At 100% RH, the air is saturated.

**Dew Point:** The temperature at which air becomes saturated (100% RH) and water vapour begins to condense into water droplets (forming dew, mist, or clouds).

**Condensation:** The process by which water vapour cools and changes state from a gas to liquid water. This forms clouds and fog.

**Evaporation:** The process by which liquid water changes to water vapour. Occurs at the surface of water bodies, soil, and vegetation.

**Transpiration:** The process by which plants release water vapour through their leaves into the atmosphere.

**Evapotranspiration:** The combined water vapour released to the atmosphere by both evaporation (from land/water surfaces) and transpiration (from plants).

**Insolation:** The solar radiation (sunlight) received at the Earth's surface. The amount of insolation received depends on latitude, season, time of day, and cloud cover.

**Radiation:** The transfer of heat energy in the form of electromagnetic waves. The Sun radiates heat to the Earth; the Earth also radiates heat back to space.

**Convection:** The transfer of heat through the movement of fluids (liquids or gases). Warm air rises, cools, and sinks — creating convection currents in the atmosphere.

**Air Mass:** A large body of air with uniform temperature and humidity characteristics. West Africa is affected by:
- **Maritime Tropical (mT) air mass:** Warm, moist air from the Atlantic Ocean (SW Monsoon winds)
- **Continental Tropical (cT) air mass:** Hot, dry air from the Sahara Desert (NE Trade Winds / Harmattan)

**Inter-Tropical Convergence Zone (ITCZ):** The zone where the NE trade winds from the northern hemisphere and the SE trade winds from the southern hemisphere meet (converge). The ITCZ is a belt of low pressure, rising air, cloud, and heavy rainfall. It migrates seasonally with the overhead sun. **Also called the Doldrums or Meteorological Equator.**

**Harmattan:** A dry, dusty, NE trade wind that blows across West Africa from the Sahara Desert between November and March. It brings cool, dry conditions and reduces visibility. Known locally as "the doctor" in coastal areas for its cooling effect, but causes respiratory problems and cracked skin inland.

**Isotherm:** A line on a map connecting points of equal temperature.

**Isobar:** A line on a map connecting points of equal atmospheric pressure.

**Isohyet:** A line on a map connecting points of equal rainfall.

**Stevenson Screen:** A white louvred box that houses meteorological instruments (thermometers, hygrometer). It is raised 1.25 m above the ground to protect instruments from direct sunlight and precipitation while allowing free air circulation.
$$ WHERE id = '785e6fea-7e92-40ae-9ba4-ddeaedb315e0';

UPDATE topic_sections SET content = $$## Types of Rainfall

Understanding how rainfall forms is one of the most important topics in West African geography.

### 1. Convectional Rainfall (Equatorial/Tropical Rainfall)

**How it forms:**
1. Intense solar heating of the ground causes the air above to become **very hot**.
2. Hot air is less dense than surrounding air, so it **rises rapidly** (convection).
3. As the air rises, it **expands and cools** (at the dry adiabatic lapse rate: ~10°C per 1,000 m).
4. When the air cools to the **dew point**, water vapour **condenses** into water droplets, forming large **cumulonimbus clouds** (thunderclouds).
5. The water droplets combine and eventually fall as **heavy, intense rainfall**, often accompanied by **thunder and lightning**.
6. Rain is usually short-lived (1–2 hours) but very intense.

**Location:** Equatorial regions (within 5–10° of the equator), including southern Ghana, southern Nigeria, Sierra Leone, Liberia.

**Characteristics:**
- Occurs mainly in the **afternoon** (after maximum heating)
- Heavy, intense rainfall
- Short duration
- Thunder and lightning common
- Two peaks per year (in coastal West Africa) — **April-June** and **September-November**

---

### 2. Orographic (Relief) Rainfall

**How it forms:**
1. Moist air (usually SW Monsoon winds from the ocean) is **forced to rise** over a mountain range or hill.
2. As the air rises, it **cools** and water vapour condenses into clouds.
3. Heavy rainfall falls on the **windward side** (the side facing the wind) of the mountain.
4. The air descends on the **leeward side** (the sheltered side), warming as it descends.
5. The leeward side receives little rain — this is called the **rain shadow**.

**Location:** Mountain and hilly areas — e.g., the **Cameroon Highlands**, **Jos Plateau** (Nigeria), **Akwapim-Togo Ranges** (Ghana), **Fouta Djallon Highlands** (Guinea).

**Significance:** Cameroon Mountain (4,040 m) is one of the wettest places in West Africa because moist SW winds rise steeply over it, producing enormous rainfall (over 10,000 mm/year at some locations).

---

### 3. Frontal (Cyclonic) Rainfall

**How it forms:**
1. A **warm air mass** meets a **cold air mass**.
2. The warmer, lighter air is **forced to rise** over the colder, denser air at a boundary called a **front**.
3. As the warm air rises, it cools, water vapour condenses, and **prolonged, moderate rainfall** occurs.

**Location:** Mainly in **temperate regions** (Europe, North America). Less common in West Africa, though the ITCZ can create similar effects.

**Characteristics:**
- Prolonged (can last hours or days)
- Steady, moderate intensity
- Widespread (covers large areas)

---

## Factors Affecting Temperature

### 1. Latitude
- Areas near the equator receive more direct solar radiation (high insolation) → **higher temperatures**.
- At higher latitudes, the Sun's rays hit at an angle, spreading energy over a larger area → **lower temperatures**.
- In West Africa: southern coastal areas are hotter year-round than the drier north (though the north may be hotter in summer).

### 2. Altitude (Height Above Sea Level)
- Temperature decreases by approximately **6.5°C per 1,000 m** increase in altitude (**Environmental Lapse Rate**).
- This is why mountains are cold even in tropical regions (e.g., Mount Cameroon has snow-like conditions near its summit despite being near the equator).

### 3. Distance from the Sea (Continentality)
- The sea heats up and cools down more slowly than the land (high specific heat capacity).
- **Coastal areas** have **moderate temperatures** — warm in winter, cool in summer (small annual temperature range).
- **Inland areas** have **extreme temperatures** — very hot in summer, very cold in winter (large annual temperature range).
- In West Africa, the Sahel and Sahara regions have very high diurnal (day-night) and annual temperature ranges.

### 4. Ocean Currents
- **Warm ocean currents** (e.g., North Atlantic Drift) warm the air above them, warming nearby coastal areas.
- **Cold ocean currents** (e.g., Benguela Current off the SW African coast) cool the air above them, cooling nearby coastal areas and reducing rainfall.
- The **cold Canary Current** off West Africa's northwest coast contributes to the aridity of Mauritania and Western Sahara.

### 5. Cloud Cover
- Clouds **reflect** incoming solar radiation (cooling effect during the day).
- Clouds also **trap** outgoing radiation at night (warming effect).
- Clear desert skies → very hot days, very cold nights (large diurnal range).

### 6. Aspect (Direction a Slope Faces)
- Slopes facing the equator (south-facing in NH, north-facing in SH) receive more direct sunlight → warmer.
- Slopes facing away receive less sunlight → cooler.

---

## Climate of West Africa: The ITCZ and Seasonal Rainfall

### The Inter-Tropical Convergence Zone (ITCZ)
- Where the NE Harmattan winds meet the SW Monsoon winds.
- A zone of rising air, low pressure, heavy cloud, and RAINFALL.
- The ITCZ **migrates northward** in the northern summer (June-August) and **southward** in the northern winter (December-February).

**Effect on West Africa:**
- When the ITCZ is over a location → **wet season** (rainy season)
- When the ITCZ has moved away → **dry season** (Harmattan)
- Southern coastal areas (near equator) have TWO rainy seasons per year because the ITCZ passes over twice.
- Northern Sahel regions have ONE short rainy season when the ITCZ barely reaches them.

### The Harmattan
- NE Trade Wind from the Sahara Desert.
- Blows November–March across West Africa.
- **Characteristics:** Very dry (RH as low as 10%), cool temperatures at night, dusty (reduces visibility), causes dry skin and respiratory problems, desiccates crops.
- **Positive aspects:** Dries fish and agricultural produce; makes some areas temporarily cooler.
$$ WHERE id = '99aca8f5-3b39-40b8-a9b6-34bdd79f6dd3';

UPDATE topic_sections SET content = $$## Worked Example 1: Interpreting a Climograph

**Question:** Study the following climate data for Accra, Ghana and answer the questions.

| Month | J | F | M | A | M | J | J | A | S | O | N | D |
|-------|---|---|---|---|---|---|---|---|---|---|---|---|
| Temp (°C) | 27 | 28 | 28 | 28 | 27 | 26 | 25 | 25 | 26 | 27 | 28 | 27 |
| Rainfall (mm) | 15 | 33 | 56 | 81 | 142 | 178 | 46 | 15 | 38 | 64 | 25 | 15 |

**(a) Calculate the annual temperature range for Accra.**
**(b) Identify the two wettest months.**
**(c) Describe the rainfall pattern and explain it using the ITCZ.**
**(d) Suggest TWO reasons why Accra's temperatures do not vary much throughout the year.**

---

**Answer:**

**(a) Annual Temperature Range:**
- Highest temperature: 28°C (February, March, April, November)
- Lowest temperature: 25°C (July, August)
- **Annual temperature range = 28 − 25 = 3°C**
- This very small range is typical of equatorial/tropical coastal locations.

**(b) Two Wettest Months:**
- **June (178 mm)** and **May (142 mm)** are the wettest months.
- This shows a distinct **first rainy season** peaking in May–June.
- There is a **drier period** in July–August (only 46 mm and 15 mm).
- Then a **second (minor) rainy season** in September–October.

**(c) Rainfall Pattern and the ITCZ:**
- Accra experiences **two rainy seasons** typical of locations 5–8° from the equator.
- **First rainy season (May–June):** As the ITCZ moves northward with the overhead Sun, it passes over Accra, bringing SW Monsoon winds loaded with moisture from the Atlantic Ocean. The rising air creates heavy convectional and frontal rainfall.
- **Drier period (July–August):** The ITCZ has moved further north, temporarily reducing rainfall over Accra.
- **Second rainy season (September–October):** As the ITCZ retreats southward, it passes over Accra again.
- **Dry season (November–April):** The ITCZ is far south; the NE Harmattan dominates, bringing dry conditions.

**(d) Why Temperatures Don't Vary Much:**
1. **Latitude:** Accra is very close to the equator (~5.5°N). The overhead Sun (high solar angle) delivers intense, relatively consistent insolation throughout the year, with only minor seasonal variation.
2. **Proximity to the sea:** The Atlantic Ocean moderates temperatures — it heats and cools slowly, keeping coastal temperatures stable year-round, preventing extreme heat in summer or cold in winter.

---

## Worked Example 2: Explaining Orographic Rainfall

**Question:** Explain how relief (orographic) rainfall is formed. Why do some areas in West Africa receive much more rainfall than others because of their relief?

**Answer:**
**Formation:**
- Moisture-laden SW winds blow off the Atlantic Ocean towards West Africa.
- When these winds encounter a mountain range, they are **forced to rise** over the barrier.
- Rising air **expands and cools** at the dry adiabatic lapse rate (approximately 10°C per 1,000 m).
- When the air temperature falls to the **dew point**, condensation occurs, forming clouds.
- Heavy rainfall falls on the **windward (SW-facing) side** of the mountain.
- After crossing the summit, the air **descends** on the leeward side and **warms up**, becoming drier.
- The leeward side receives little rainfall — the **rain shadow** effect.

**West African Examples:**
- **Mount Cameroon** (4,040 m): One of Africa's wettest spots (>3,000–10,000 mm/year) because moist SW winds rise sharply over it.
- **Fouta Djallon Highlands, Guinea:** Receives heavy rainfall; the region acts as the "water tower" of West Africa, giving rise to the Senegal, Gambia, and Niger rivers.
- **Jos Plateau, Nigeria:** Receives more rainfall than surrounding lowlands.
- **Akwapim-Togo Ranges, Ghana:** Creates orographic rainfall on their SW slopes.
$$ WHERE id = 'a71f5a50-a65e-4294-957e-d7ad9b6090d0';

UPDATE topic_sections SET content = $$## WASSCE Practice Questions: Climate and Weather

### Section A: Multiple Choice

**Question 1:** The average weather conditions of a place over 30 years is best described as:
A. Weather
B. Climate
C. Humidity
D. Insolation

**Answer: B** — Climate is the long-term (30+ years) average of weather conditions. Weather is the short-term, day-to-day state of the atmosphere.

---

**Question 2:** Which type of rainfall is associated with the forced ascent of moist air over a mountain?
A. Frontal rainfall
B. Convectional rainfall
C. Orographic rainfall
D. Cyclonic rainfall

**Answer: C** — Orographic (relief) rainfall is caused by moist air being forced to rise over hills or mountains, cooling and precipitating on the windward side.

---

**Question 3:** The Harmattan is:
A. A warm, moist wind from the Atlantic Ocean
B. A cold, dry wind from the Mediterranean
C. A dry, dusty NE wind from the Sahara Desert
D. A warm, moist SE wind from the Indian Ocean

**Answer: C** — The Harmattan is a dry, dusty trade wind that blows from the NE from the Sahara Desert across West Africa during the dry season (November–March).

---

**Question 4:** Which instrument is used to measure wind speed?
A. Thermometer
B. Hygrometer
C. Barometer
D. Anemometer

**Answer: D** — An anemometer measures wind speed. A thermometer measures temperature; a hygrometer measures humidity; a barometer measures atmospheric pressure.

---

**Question 5:** The zone where the NE and SW trade winds meet in West Africa is called the:
A. Tropic of Cancer
B. Equatorial Low Pressure Belt
C. Inter-Tropical Convergence Zone (ITCZ)
D. Harmattan Front

**Answer: C** — The ITCZ is where the NE trade winds (Harmattan) and the SW Monsoon converge. It is associated with rising air, cloud formation, and rainfall.

---

### Section B: Structured Questions

**Question 6:** Explain how convectional rainfall is formed in West Africa. In your answer, refer to specific conditions that cause this type of rainfall. (7 marks)

**Model Answer:**
- The equatorial sun heats the land surface intensely during the day.
- The air above the hot ground is heated by **conduction** and becomes less dense.
- This hot, less dense air **rises rapidly** in convection currents.
- As the air ascends, it **expands and cools** (at ~10°C per 1,000 m).
- When the temperature falls to the **dew point**, water vapour **condenses** into tiny water droplets, forming towering **cumulonimbus clouds**.
- Inside the cloud, droplets combine until they are large enough to overcome updrafts and fall.
- Heavy, intense **rainfall** accompanied by **thunder and lightning** results.
- This is characteristic of the equatorial belt (southern Ghana, southern Nigeria, etc.).
- It typically occurs in the **afternoon** after maximum surface heating.

---

**Question 7:** Describe and explain the seasonal distribution of rainfall in a location with a tropical monsoon/Guinea Coast climate. (8 marks)

**Model Answer:**
**Location:** Southern Ghana / Sierra Leone / southern Nigeria (Guinea Coast climate)

**Description:**
- The region experiences **two distinct rainy seasons** and two shorter dry periods.
- **First (major) rainy season:** April to July — peak rainfall in June.
- **Short dry season:** August — reduced rainfall.
- **Second (minor) rainy season:** September to October.
- **Long dry season:** November to March — Harmattan conditions.

**Explanation:**
- Rainfall pattern is controlled by the northward and southward migration of the **ITCZ** throughout the year.
- As the ITCZ moves north (April–July), it brings the moist **SW Monsoon** winds over the Guinea Coast, causing the first rainy season.
- In August, the ITCZ is at its northernmost position and the area experiences a temporary break.
- As the ITCZ retreats southward (September–October), it passes over the region again, causing the second rainy season.
- November–March: the ITCZ is far south; the **dry NE Harmattan** dominates, bringing the long dry season.

---

**Question 8:** Explain why temperatures in coastal West Africa (e.g., Accra or Freetown) have a much smaller annual range than temperatures in inland Sahel regions (e.g., Kano or Bamako). (6 marks)

**Model Answer:**
- **Coastal areas** are influenced by the moderating effect of the **Atlantic Ocean**.
- Water has a high specific heat capacity — it heats and cools much more slowly than land.
- This means coastal temperatures remain relatively stable: not extremely hot in summer, not extremely cold in "winter."
- Accra's annual temperature range is only about 3–4°C.
- **Inland Sahel areas** are far from the ocean and dominated by large land masses.
- Land heats rapidly in the dry season (temperatures can exceed 40°C) and cools significantly in the Harmattan period.
- With no oceanic moderation, Kano or Bamako may have annual temperature ranges of 15–20°C or more.
- Additionally, cloud cover in the humid coastal areas reduces insolation, while the clear desert skies of the Sahel allow extreme daytime heating and rapid nocturnal cooling.
$$ WHERE id = '244fad17-0a9b-483a-b311-dec3bb981b8c';

-- ============================================================
-- TOPIC 3: POPULATION AND SETTLEMENT
-- ============================================================

UPDATE topic_sections SET content = $$## Introduction: People and Where They Live

**Population Geography** studies the distribution, density, growth, and movement of human populations. **Settlement Geography** examines where and why people build their homes and communities.

Understanding population and settlement is critical for planning — governments need to know how many people there are, where they live, and where they are moving to, in order to provide schools, hospitals, roads, water, and electricity.

## Why Population Distribution is Uneven

People cluster in some areas and avoid others based on:

### Physical Factors
- **Flat, fertile land** attracts farmers (river valleys, deltas)
- **Water supply** (rivers, lakes) attracts settlement
- **Moderate climate** — neither too hot, too cold, too dry, nor too wet
- **Natural resources** — mineral deposits attract mining settlements
- **Coastal locations** attract trade and fishing communities

### Human/Economic Factors
- **Jobs and industries** — cities grow where employment exists
- **Transport routes** — settlements develop along roads, railways, rivers
- **Political factors** — government policies can force or attract settlement
- **Historical factors** — old trading centres become cities

## Population Distribution in West Africa

**Densely Populated Areas:**
- River valleys (Niger Delta, Volta Basin)
- Coastal areas (Lagos, Accra, Abidjan, Freetown)
- Mining towns (Obuasi, Ghana; Enugu, Nigeria)

**Sparsely Populated Areas:**
- The Sahara and Sahel regions (very dry, inhospitable)
- Dense equatorial rainforest zones (challenging to farm and access)
- Tsetse fly-infested areas (dangerous for livestock and humans)

## West Africa's Population Growth

West Africa has one of the **fastest-growing populations** in the world.

| Country | Population (approx.) | Growth Rate |
|---------|---------------------|-------------|
| Nigeria | ~220 million | ~2.5%/year |
| Ghana | ~33 million | ~2.2%/year |
| Sierra Leone | ~8 million | ~2.0%/year |
| Liberia | ~5 million | ~2.5%/year |
| Gambia | ~2.5 million | ~3.0%/year |

**Key implication:** At a 2.5% growth rate, a population DOUBLES in approximately 28 years. This creates enormous pressure on resources, services, and jobs.
$$ WHERE id = '68c354e0-489c-42d3-8d8d-4a4e1f5e8907';

UPDATE topic_sections SET content = $$## Population Geography Vocabulary

**Population Distribution:** The pattern of where people live across an area. Usually shown on a dot map or choropleth map.

**Population Density:** The average number of people per unit area (usually per km²).
- **Formula: Population Density = Total Population ÷ Total Area (km²)**
- High density = many people per km² (e.g., Lagos Island: >20,000 per km²)
- Low density = few people per km² (e.g., Sahara Desert: <1 per km²)

**Population Distribution vs. Density:** Distribution tells you WHERE people live; density tells you HOW MANY live in a given space.

**Birth Rate (Crude Birth Rate):** The number of live births per 1,000 people in a population per year.
- **Formula: BR = (Births ÷ Population) × 1,000**
- High BR in West Africa: typically 35–50 per 1,000.

**Death Rate (Crude Death Rate):** The number of deaths per 1,000 people per year.
- **Formula: DR = (Deaths ÷ Population) × 1,000**
- Falling DR in West Africa due to improved healthcare.

**Natural Increase Rate (NIR):** The rate at which a population grows due to births and deaths (excluding migration).
- **Formula: NIR = Birth Rate − Death Rate**
- If BR = 40 and DR = 15, then NIR = 25 per 1,000 = 2.5% per year.

**Population Growth Rate:** The percentage by which a population increases in a year, including both natural increase AND migration.

**Migration:** The movement of people from one place to another. Types:
- **Internal migration:** Within a country (e.g., rural-to-urban movement)
- **International migration:** Between countries
- **Voluntary migration:** By choice (economic opportunities)
- **Forced migration:** Not by choice (war, famine, natural disaster)
- **Push factors:** Reasons that make people LEAVE a place (poverty, drought, conflict)
- **Pull factors:** Reasons that attract people TO a place (jobs, education, safety)

**Rural-Urban Migration:** Movement of people from rural (countryside) areas to urban (city) areas. The most significant migration trend in West Africa today.

**Population Pyramid:** A back-to-back bar graph showing the age and sex structure of a population. The left side shows males, the right shows females; the x-axis shows percentage of population; the y-axis shows age groups (cohorts).

**Dependency Ratio:** The ratio of the non-working population (children under 15 and elderly over 65) to the working-age population (15–64).
- **Formula: DR = [(0–14 population + 65+ population) ÷ (15–64 population)] × 100**
- A high dependency ratio means many dependants per worker — a strain on the economy.

**Settlement:** Any place where people live, from a single farmstead to a large city.

**Settlement Hierarchy:** The ranking of settlements by size and function — from hamlet to village to town to city to conurbation (megacity).

**Nucleated Settlement:** A clustered settlement where buildings are grouped close together (common in West Africa — villages cluster around water sources).

**Dispersed Settlement:** A scattered settlement where buildings are spread out over a wide area (common in farming areas where land is abundant).

**Linear Settlement:** Buildings arranged in a line along a road, river, or coastline.

**Urbanisation:** The increase in the proportion of a country's population living in urban areas (towns and cities).

**Primate City:** A city that is disproportionately large compared to the next largest city in a country. Lagos (Nigeria) is a primate city.
$$ WHERE id = '085d0f02-76e5-45b3-b543-d4860e55ae0b';

UPDATE topic_sections SET content = $$## Factors Affecting Population Distribution and Density

### Physical Factors

#### 1. Relief (Landforms)
- **Flat plains** → easy to farm, build, and travel → high population density.
- **Mountainous areas** → difficult farming, poor access → low density.
- Exception: some fertile mountain slopes attract dense populations.

#### 2. Climate
- **Moderate rainfall and temperature** → good for farming → high density.
- **Very arid (dry) areas** (Sahara, Sahel) → sparse water, poor agriculture → very low density.
- **Very wet areas** (dense equatorial rainforest) → difficult to clear land, disease → low density.
- Much of West Africa's population concentrates in the Guinea Savanna belt — good climate balance.

#### 3. Soils
- **Fertile soils** (river alluvium, volcanic soils) → productive farming → high density.
- **Poor, leached soils** → low agricultural productivity → low density.
- The Niger Delta (Nigeria) has rich alluvial soils supporting dense populations.

#### 4. Water Supply
- Rivers, lakes, and coastal areas attract settlements.
- The Volta River basin (Ghana), Niger River valley (Nigeria/Mali), and Senegal River basin have historically supported large populations.

#### 5. Vegetation and Disease
- **Tsetse fly** (vector of sleeping sickness) thrives in moist savanna areas → limits human and livestock settlement.
- Dense forest was historically avoided due to disease and difficulty of farming.

### Human Factors

#### 1. Economic Opportunities
- **Mining towns:** Gold (Obuasi, Ghana), tin (Jos Plateau), oil (Port Harcourt) attract workers.
- **Industrial towns:** Manufacturing attracts labour.
- **Commercial centres:** Markets, trade attract merchants and workers.

#### 2. Transport
- Settlements developed along major trade routes (trans-Saharan caravan routes, coastal trade routes).
- Modern roads and railways attract linear settlements.

#### 3. Historical Factors
- **Old kingdoms and empires** (Ashanti, Oyo, Mali) established population centres that persist today.
- Colonial capitals (Accra, Freetown, Lagos, Monrovia) became major cities.

---

## Population Pyramids and Age-Sex Structure

### Reading a Population Pyramid

A population pyramid for a developing country (like those in West Africa) typically has:
- **Wide base:** High birth rate → large proportion of young children
- **Rapidly narrowing towards top:** High death rates, short life expectancy
- **Small "top":** Few elderly people
- Overall shape: **triangular / Christmas tree shape**

This contrasts with developed countries (narrow base, rectangular shape) where birth rates are low and life expectancy is high.

### Implications of West Africa's Population Structure:
1. **High dependency ratio:** Many children depend on fewer working-age adults.
2. **Large future labour force:** Young population → large workforce in 20 years.
3. **High demand for education:** Schools must cater to many children.
4. **High demand for healthcare:** Maternal and infant health services critical.
5. **Future population momentum:** Even if birth rates fall, the large youth cohort will produce many children, sustaining population growth.

---

## Causes of High Birth Rates in West Africa

1. **Cultural and social values:** Large families are prized; children provide security for parents in old age.
2. **Religious beliefs:** Some religions encourage large families.
3. **Low female education:** Less-educated women tend to have more children and marry younger.
4. **Low status of women:** Women have limited control over reproductive decisions.
5. **High infant mortality:** Parents have many children expecting some to die.
6. **Lack of family planning services:** Access to contraception is limited in rural areas.
7. **Child labour:** Children contribute economically to farming households.

---

## Causes of Falling Death Rates

1. Better healthcare: hospitals, clinics, vaccination programmes.
2. Improved nutrition and food security.
3. Clean water supply and improved sanitation.
4. Control of diseases like malaria, cholera, HIV/AIDS.
5. Better education about health and hygiene.

---

## Rural-Urban Migration in West Africa

### Push Factors (from Rural Areas)
- Poverty and unemployment
- Drought and crop failure
- Lack of schools and hospitals
- Traditional discrimination (especially against women)
- Limited entertainment and social opportunities
- Mechanisation of agriculture reducing need for farm labour

### Pull Factors (to Urban Areas)
- Employment opportunities (factories, offices, services)
- Better schools and universities
- Better hospitals and health services
- Higher wages
- Bright lights and urban entertainment
- Social freedom

### Effects of Rural-Urban Migration

**On Cities:**
- **Positive:** Growing labour force, economic growth, urbanisation.
- **Negative:** Overcrowding, development of squatter settlements/slums (e.g., Makoko in Lagos), strain on services (water, sanitation, schools), unemployment, crime.

**On Rural Areas:**
- **Positive:** Remittances sent back improve rural living standards.
- **Negative:** Loss of young, productive workforce; abandoned farmland; aging rural population; reduced food production.
$$ WHERE id = '7609ac47-3133-4a44-979b-994e907a41d3';

UPDATE topic_sections SET content = $$## Worked Example 1: Population Density Calculation

**Question:** The country of Sierraland has a total population of 7,650,000 and an area of 72,000 km². Calculate its population density and classify it.

**Working:**
Population Density = Total Population ÷ Total Area
Population Density = 7,650,000 ÷ 72,000
**Population Density = 106.25 persons per km²**

**Classification:** This is a **moderate** population density. (Compare: Bangladesh >1,000/km² is very high; Canada ~4/km² is very low.)

---

## Worked Example 2: Natural Increase Rate

**Question:** In 2024, a West African country had a birth rate of 38 per 1,000 and a death rate of 12 per 1,000. Calculate:
(a) The natural increase rate per 1,000
(b) The annual percentage natural increase
(c) The approximate number of years for the population to double (use the Rule of 70)

**Working:**
(a) NIR per 1,000 = Birth Rate − Death Rate = 38 − 12 = **26 per 1,000**

(b) Annual % increase = NIR/1000 × 100 = 26/1000 × 100 = **2.6%**

(c) Doubling time = 70 ÷ Growth Rate (%) = 70 ÷ 2.6 = **approximately 27 years**

**Implication:** At this growth rate, the population will double in about 27 years — placing enormous pressure on food, water, schools, hospitals, and jobs.

---

## Worked Example 3: Settlement Location Analysis

**Question:** A new settlement was established where two rivers meet (confluence), on flat land, next to an ancient trade route. Explain why these three factors made it a good location.

**Answer:**

1. **River confluence:** The site has two rivers meeting — providing abundant, reliable freshwater for drinking, cooking, farming (irrigation), and fish. The rivers also allow water transport in two directions, aiding trade. Historically, confluence points were crucial for trade and military strategy.

2. **Flat land:** Level terrain is easier to build on (no expensive foundations needed), easier to farm (ploughing is simpler), and allows for easy expansion of the settlement as population grows. Flat land also allows easier road building.

3. **Trade route:** A pre-existing trade route means merchants and travellers pass through regularly. This creates markets, economic activity, and employment. The settlement can grow by serving traders — providing food, accommodation, and goods. Over time, market towns at trade route intersections become major cities (e.g., Kumasi, Ghana).
$$ WHERE id = '4d51c7e9-28bb-41e4-9de4-5166c5066566';

UPDATE topic_sections SET content = $$## WASSCE Practice Questions: Population and Settlement

### Section A: Multiple Choice

**Question 1:** Population density is calculated by:
A. Multiplying total population by total area
B. Dividing total area by total population
C. Dividing total population by total area
D. Subtracting death rate from birth rate

**Answer: C** — Population density = Total Population ÷ Total Area (km²). This gives the number of people per km².

---

**Question 2:** Which of the following is a PUSH factor that causes people to migrate from rural to urban areas?
A. Better schools in the city
B. Higher wages in factories
C. Drought and crop failure in the village
D. Better hospitals in the city

**Answer: C** — Push factors are reasons that drive people AWAY from a place. Drought and crop failure create poverty and food insecurity, pushing people to seek opportunities elsewhere. A, B, and D are pull factors (reasons that attract people TO cities).

---

**Question 3:** A population pyramid with a very wide base and a narrow top suggests:
A. A declining population with low birth rates
B. An ageing population typical of developed countries
C. A rapidly growing population with high birth rates and high death rates
D. A stable population with equal birth and death rates

**Answer: C** — A wide base indicates many young children (high birth rate). A narrow top indicates few elderly people (high death rates, short life expectancy). This is the classic developing-country pyramid.

---

**Question 4:** Which of the following areas in West Africa has the LOWEST population density?
A. The Niger Delta
B. The Sahara Desert
C. The coast near Accra
D. The Jos Plateau

**Answer: B** — The Sahara Desert is extremely arid with minimal water and food resources, making it unable to support large populations. It is one of the most sparsely populated regions on Earth.

---

**Question 5:** Urbanisation refers to:
A. The movement of people from cities to rural areas
B. The growth of cities in physical size only
C. The increase in the proportion of a country's population living in urban areas
D. The improvement of rural infrastructure

**Answer: C** — Urbanisation is a process: the increasing share of the total population living in towns and cities. It involves both rural-urban migration and higher birth rates in cities.

---

### Section B: Structured Questions

**Question 6:** With the aid of a labelled diagram, describe a population pyramid typical of a West African country. Explain what it tells us about the population structure. (8 marks)

**Model Answer:**

**Diagram should show:**
- Wide base (large proportion aged 0–14)
- Rapidly narrowing sides as age increases
- Small top (few people aged 65+)
- Both male (left) and female (right) sides
- Age groups (cohorts) labelled on the y-axis
- Percentage or number on x-axis

**Description and Explanation:**
- The **very wide base** indicates a **high birth rate** — many babies are born each year relative to the total population.
- The **rapid narrowing** at young adult ages indicates significant **child and young adult mortality**, often due to disease (malaria, cholera), malnutrition, and limited healthcare.
- The **narrow top** shows that **few people live to old age** — life expectancy in many West African countries is 55–65 years.
- The shape is **triangular**, indicating a **rapidly growing** population.
- There are typically **more females than males** in older age groups (women live longer).
- The large youth cohort (under 15) represents a heavy **dependency burden** — many children depending on fewer adults.

---

**Question 7:** Discuss the causes and consequences of rapid urbanisation in ONE named West African city. (10 marks)

**Model Answer — Lagos, Nigeria:**

**Causes of Rapid Urbanisation:**
- **Rural-urban migration** is the primary driver. Lagos receives thousands of migrants daily from all parts of Nigeria and neighbouring countries.
- **Push factors** from rural areas: poverty, unemployment, drought (especially in northern Nigeria), lack of schools and hospitals.
- **Pull factors** of Lagos: Nigeria's commercial capital, Nigeria's largest port, manufacturing industries, Nigeria's entertainment industry (Nollywood), perceived economic opportunities.
- **Natural population increase** within the city itself.

**Consequences:**

*Positive:*
- Lagos generates approximately 25% of Nigeria's GDP.
- Growing service sector providing employment.
- Cultural innovation, diversity, and creativity.

*Negative:*
- **Overcrowding:** Lagos has over 15 million people in a metropolitan area not designed for this many.
- **Slum development:** Areas like Makoko, Ajegunle — millions live in makeshift housing without proper sanitation or clean water.
- **Traffic congestion:** Lagos has some of the worst traffic jams in the world; commuters may spend 4–6 hours per day in traffic.
- **Environmental pollution:** Air, water, and land pollution.
- **Unemployment and underemployment:** Millions work in the informal sector with low, unstable incomes.
- **Crime:** Poverty and inequality drive high crime rates.
- **Inadequate infrastructure:** Schools, hospitals, roads, electricity, and water supplies are overwhelmed.
$$ WHERE id = 'b4cc7e57-d2c8-43a2-b6d2-159565836434';

-- ============================================================
-- TOPIC 4: MAP READING AND SCALE
-- ============================================================

UPDATE topic_sections SET content = $$## What is a Map?

A **map** is a flat, two-dimensional representation of all or part of the Earth's surface, drawn to a specific **scale** and using **conventional symbols** to represent real-world features.

Maps are among the most important tools in Geography. They allow us to:
- Navigate from one place to another
- Understand the physical landscape (hills, rivers, valleys)
- Study land use and settlement patterns
- Plan development projects
- Measure distances and areas

## Types of Maps

| Map Type | Purpose | Examples |
|----------|---------|---------|
| Topographic Map | Shows relief (height), water features, settlements, roads | Ghana OS maps at 1:50,000 |
| Political Map | Shows country/regional boundaries | World political map |
| Physical Map | Shows natural features (mountains, rivers) | Atlas physical map |
| Thematic Map | Shows a specific topic | Population density map, rainfall map |
| Land Use Map | Shows how land is used | Agricultural, urban, forest zones |
| Choropleth Map | Uses shading to show data by area | Population density by district |
| Dot Map | Uses dots to show distribution | One dot = 1,000 cattle |
| Isoline Map | Lines connecting equal values | Contour maps, weather maps |
| Flow Map | Shows movement | Migration, trade routes |

## Map Components (Every Map Should Have These)

Every well-drawn map must include:
1. **Title** — What the map shows
2. **Key/Legend** — Explains all symbols used
3. **Scale** — Shows the relationship between map distance and real distance
4. **North Arrow/Compass Rose** — Shows direction
5. **Frame/Border** — Defines the map area
6. **Grid Lines** — Latitude/longitude or national grid
7. **Source** — Where the data came from (for thematic maps)
$$ WHERE id = '16da3e1d-8539-4ecc-9ce5-ad8cced33ded';

UPDATE topic_sections SET content = $$## Essential Map Reading Vocabulary

**Scale:** The ratio between a distance on the map and the corresponding distance on the ground.

**Representative Fraction (RF):** Scale expressed as a pure ratio with no units. E.g., 1:50,000 means 1 unit on the map = 50,000 of the same units on the ground.

**Linear Scale (Graphical Scale):** A scaled line drawn on the map that can be used to measure distances directly. The advantage: it remains accurate even if the map is enlarged or reduced (unlike an RF).

**Statement Scale:** Scale written in words. E.g., "One centimetre to one kilometre" or "One inch to one mile."

**Large Scale Map:** A map with a small RF denominator that shows a SMALL area in GREAT DETAIL. E.g., 1:1,000 or 1:10,000. Used for town plans.

**Small Scale Map:** A map with a large RF denominator that shows a LARGE area in LESS DETAIL. E.g., 1:1,000,000. Used for world maps.

**Memory trick for scale:** "Large scale = large detail, small area" (think of a large-scale drawing of your hand — detailed). "Small scale = small detail, large area" (think of a small drawing of Africa).

**Contour Lines:** Lines on a topographic map connecting all points at the same height (elevation) above sea level (or another datum).

**Contour Interval:** The vertical difference in height between adjacent contour lines. Must be read from the map key. On Ghana 1:50,000 maps, the contour interval is often 50 feet or 15 metres.

**Spot Height:** A point on a map marked with its exact elevation.

**Triangulation Point (Trig Point):** A specially surveyed point of known exact elevation, marked on the map with a triangle symbol.

**Relief:** The variation in height and shape of the land surface. Includes hills, valleys, plains, and plateaus.

**Steep slope:** Contours close together (the slope rises or falls quickly over a short horizontal distance).

**Gentle slope:** Contours far apart (the slope rises or falls gradually).

**Ridge:** A narrow, elongated elevated area with slopes on both sides. Contours form a V or U shape pointing downslope.

**Valley/River valley:** A low-lying area between hills or ridges. Contours form a V or U shape pointing upslope (upstream).

**Escarpment:** A steep cliff or scarp formed by erosion or faulting, with a gentler backslope. Contours are very close together on the scarp face.

**Spur:** A ridge of high land that juts out from a hillside into a valley. Contours form a V/U shape pointing downslope.

**Saddle/Col:** A low point between two hills or peaks. A pass in a mountain range. Contours form an hourglass shape.

**Grid Reference:** A method of specifying an exact location using numbered grid lines.
- **4-figure grid reference:** Identifies a 1 km² grid square. Read the easting first, then the northing (ACROSS the corridor, then UP the stairs). E.g., 4532.
- **6-figure grid reference:** Identifies a 100 m × 100 m square within the larger grid. E.g., 452321.

**Latitude:** Angular distance north or south of the equator, measured in degrees (°). The equator is 0°; poles are 90°N and 90°S.

**Longitude:** Angular distance east or west of the Prime Meridian (Greenwich, 0°). Ranges from 0° to 180° E or W.

**Bearing:** A direction measured clockwise from north, expressed in three digits. E.g., due east = 090°; due south = 180°; due west = 270°.
$$ WHERE id = 'c9db5253-5a22-4c9e-ba66-34ad3968c648';

UPDATE topic_sections SET content = $$## Understanding Scale

### Converting Between Scale Types

**Example:** A map has a scale of 1:50,000. 
- **What does this mean?** 1 cm on the map = 50,000 cm on the ground.
- **Converting to km:** 50,000 cm ÷ 100 ÷ 1,000 = **0.5 km**
- **So:** 1 cm on the map = 0.5 km on the ground.
- **Or:** 2 cm on the map = 1 km on the ground.

**How to convert an RF to a statement scale:**
1. Take the RF (e.g., 1:25,000)
2. Divide the denominator by 100 to get metres: 25,000 ÷ 100 = 250 m
3. Divide by 1,000 to get km: 250 ÷ 1,000 = 0.25 km
4. Statement: "1 cm represents 250 metres" or "4 cm represents 1 kilometre"

---

## Reading Contours and Relief

### The Rules of Contour Lines
1. Every point on a contour line is at the **same height**.
2. Contour lines **never cross** each other.
3. Contour lines form **closed loops** (they must eventually close, though it may be off the map).
4. **Closely-spaced contours** = steep slope.
5. **Widely-spaced contours** = gentle slope.
6. Contours that form a **V-shape pointing uphill** (upstream) indicate a **valley or river**.
7. Contours that form a **V-shape pointing downhill** indicate a **spur (ridge)**.
8. A **hill** is shown by a series of closed concentric contours, with the highest in the centre.
9. **Contour numbers** always read upslope (the top of the number faces uphill).

### Recognising Landforms from Contours

| Landform | Contour Pattern |
|----------|----------------|
| Gentle slope | Widely spaced, parallel contours |
| Steep slope | Closely spaced, parallel contours |
| Concave slope | Contours become more widely spaced going uphill |
| Convex slope | Contours become more closely spaced going uphill |
| Hill/Peak | Closed, roughly circular contours; highest in centre |
| Plateau | Closely spaced contours at edges, widely spaced (or none) at top |
| Ridge | Elongated closed contours; V-shape pointing downhill on each side |
| Valley | V-shape pointing uphill |
| Spur | V-shape pointing downhill, between valley V-shapes |
| Saddle/Col | Two hills connected; hourglass-shaped contours |
| Escarpment | Very closely spaced contours on scarp face |

---

## Calculating Distance on a Map

**Method:**
1. Measure the distance on the map using a ruler (for straight-line distance) or a piece of string following curves (for road/river distance).
2. Multiply the measured map distance by the scale denominator.
3. Convert to appropriate units.

**Example:**
- Map scale: 1:50,000
- Measured distance on map between two towns: 8 cm
- Actual ground distance = 8 cm × 50,000 = 400,000 cm = 4,000 m = **4 km**

---

## Bearings and Direction

### Compass Bearings
- A **bearing** is measured clockwise from North.
- Always written as three digits: 005°, 045°, 270°, etc.
- **Cardinal directions:** N = 000°, E = 090°, S = 180°, W = 270°

### Finding a Bearing (Map Work)
1. Place a protractor at the point you are measuring FROM.
2. Align the 0° (north) line of the protractor with the north lines on the map.
3. Measure the angle clockwise to the direction you want.
4. Record as three figures.

### Back Bearing
- The bearing FROM B TO A, when you know the bearing FROM A TO B.
- If the bearing A→B is less than 180°: Back bearing = bearing + 180°
- If the bearing A→B is more than 180°: Back bearing = bearing − 180°
- **Example:** If A to B is 060°, then B to A = 060 + 180 = **240°**

---

## Cross-Sections (Profiles)

A cross-section is a diagram showing the height of the land along a straight line across a map.

**Steps to Draw a Cross-Section:**
1. Draw a straight line (the transect line) across the map.
2. Mark where each contour crosses the transect line.
3. Set up a grid: x-axis = horizontal distance; y-axis = elevation.
4. Plot the height of each contour crossing point.
5. Join the points with a smooth curve.
6. Add labels: rivers, roads, settlements, hill names.

**Vertical exaggeration:** To make relief features visible, the vertical scale is often exaggerated relative to the horizontal scale. Calculate as:
VE = Vertical scale ÷ Horizontal scale
(expressed as the same units)
$$ WHERE id = '93eff3fb-1234-4906-a91d-2d7211803c67';

UPDATE topic_sections SET content = $$## Worked Example 1: Scale Conversion

**Question:** A map has a representative fraction of 1:25,000.
(a) How many centimetres on the map represent 1 km on the ground?
(b) If two schools are 6.5 cm apart on the map, what is the actual distance between them?
(c) A road is 3.5 km long. How long would it appear on the map?

**Answers:**
(a) 1 km = 100,000 cm
RF = 1:25,000, so 1 map cm = 25,000 ground cm
Number of map cm for 1 km = 100,000 ÷ 25,000 = **4 cm per km**

(b) Ground distance = 6.5 × 25,000 = 162,500 cm = 1,625 m = **1.625 km**

(c) 3.5 km = 350,000 cm
Map distance = 350,000 ÷ 25,000 = **14 cm**

---

## Worked Example 2: Contour Interpretation

**Question:** Study a section of a topographic map where contours at 200 m, 250 m, 300 m, 350 m, and 400 m form a V-shape pointing towards the northeast. A blue line follows the V.
(a) What landform does the V-shape indicate?
(b) In which direction does the river flow?
(c) What is the contour interval?

**Answers:**
(a) The V-shape formed by contours pointing northeast indicates a **valley** (river valley or gorge). V-shapes always point upstream on valleys.

(b) The river flows in the **opposite direction to the V-shape pointing** — since the V points northeast, the river flows **southwest** (from higher ground towards lower ground).

(c) Contour interval = 400 − 350 = 350 − 300 = 300 − 250 = 250 − 200 = **50 metres**

---

## Worked Example 3: Grid Reference

**Question:** On a map with a national grid, a church is located where easting 47 and northing 83 intersect. Give:
(a) The 4-figure grid reference of the square where the church is located.
(b) If the church is 6 tenths of the way across the square and 2 tenths of the way up, give the 6-figure grid reference.

**Answers:**
(a) 4-figure GR: **4783** (always read EASTING first, then NORTHING — "along the corridor, up the stairs")

(b) 6-figure GR: 47 + 6 = 476 (easting); 83 + 2 = 832 (northing) = **476832**
$$ WHERE id = 'b002b7dd-ebec-475a-ae74-a8c9e9f322aa';

UPDATE topic_sections SET content = $$## WASSCE Practice Questions: Map Reading and Scale

### Section A: Multiple Choice

**Question 1:** On a topographic map, closely-spaced contour lines indicate:
A. A flat plain
B. A gentle slope
C. A steep slope
D. A river valley

**Answer: C** — Closely spaced contours indicate that the height changes rapidly over a short horizontal distance, meaning a steep slope.

---

**Question 2:** A map has a scale of 1:50,000. Two towns are 12 cm apart on the map. What is the actual distance between them?
A. 600 m
B. 6 km
C. 60 km
D. 600 km

**Answer: B** — 12 cm × 50,000 = 600,000 cm = 6,000 m = **6 km**

---

**Question 3:** When reading a four-figure grid reference, which direction do you read FIRST?
A. From south to north (northing first)
B. From east to west (westing first)
C. From west to east (easting first)
D. From north to south (southing first)

**Answer: C** — Always read eastings first (the horizontal axis), then northings (the vertical axis). Memory aid: "Along the corridor (easting), then up the stairs (northing)."

---

**Question 4:** A ridge is shown on a contour map by:
A. V-shapes pointing uphill (upstream)
B. Circular closed contours with the highest in the centre
C. V-shapes pointing downhill (downstream)
D. Evenly spaced parallel contours

**Answer: C** — A spur or ridge projects downhill from a hillside. The contours form V-shapes that point away from the main hill (pointing downhill/downstream).

---

**Question 5:** A 1:10,000 map is described as:
A. Small scale because the denominator is small
B. Large scale because the denominator is small
C. Small scale because it shows a large area
D. Medium scale

**Answer: B** — A large-scale map has a small RF denominator. 1:10,000 means every centimetre on the map represents only 10,000 cm (100 m) of ground — a lot of detail for a small area. Large scale = large detail, small area.

---

### Section B: Structured Questions

**Question 6:** Describe how you would use a topographic map to identify: (i) a hill, (ii) a river, (iii) an escarpment. In each case, describe the contour pattern you would look for. (9 marks)

**Model Answer:**

**(i) A Hill:**
A hill appears on a topographic map as a series of **closed, roughly circular contours** arranged concentrically, like rings. The **innermost, smallest ring has the highest elevation**, and the rings get progressively lower outward. If the hill has a peak, there may be a spot height or trig point symbol at the centre. The spacing of contours tells you how steep the hillsides are — closely spaced on steep sides, widely spaced on gentle sides.

**(ii) A River:**
A river is typically shown as a blue line on a topographic map. The river occupies a valley, shown by contours forming **V-shapes that point upstream (uphill)**. The V-shape opens downstream. The river flows from higher elevation (where V-points originate) to lower elevation (in the direction the V opens). Tributaries join the main river, and their valleys show smaller V-shapes pointing towards the main valley.

**(iii) An Escarpment:**
An escarpment is characterised by a **steep scarp slope** on one side and a **gentle dip slope** on the other. On the steep side, contours are **very closely spaced** — sometimes so close they may appear as a thick band. On the gentle dip slope, contours are **widely and evenly spaced**. The escarpment edge (crest) is where the closely spaced contours give way to widely spaced ones. The highest contours mark the crest of the escarpment.

---

**Question 7:** The scale of a map is 1:50,000. (a) Express this scale as a statement scale. (b) A forest on the map covers an area of 5 cm × 3 cm. Calculate the actual area of the forest in km². (5 marks)

**Model Answer:**
(a) 1:50,000 means 1 cm on map = 50,000 cm on ground = 500 m on ground.
**Statement scale: "1 centimetre represents 500 metres"** or "2 centimetres represents 1 kilometre."

(b) Map dimensions: 5 cm × 3 cm
Convert each to ground distance:
5 cm × 50,000 = 250,000 cm = 2,500 m = 2.5 km
3 cm × 50,000 = 150,000 cm = 1,500 m = 1.5 km
Area = 2.5 km × 1.5 km = **3.75 km²**
$$ WHERE id = 'ddbab42d-6228-4495-8343-fb9352d0885c';

-- ============================================================
-- TOPIC 5: RIVERS AND DRAINAGE
-- ============================================================

UPDATE topic_sections SET content = $$## Introduction: The Importance of Rivers

Rivers are among the most powerful forces shaping the Earth's surface. Over millions of years, rivers carve valleys, build plains, and deposit sediments — creating some of the most important agricultural land and human settlements on Earth.

In West Africa, rivers are vitally important:
- The **Niger River** (4,184 km) is the 3rd longest in Africa and drains much of West Africa — flowing through Guinea, Mali, Niger, Benin, and Nigeria.
- The **Volta River** (1,850 km) and its lake (Lake Volta — the world's largest artificial lake) provide Ghana with hydroelectric power (Akosombo Dam), water, and fisheries.
- The **Senegal, Gambia, and Komoe rivers** all have their sources in the Fouta Djallon Highlands.
- The **Pra, Tano, Ankobra** rivers drain Ghana southward to the Atlantic.

Rivers provide:
- Fresh water for drinking and agriculture
- Transport routes
- Hydroelectric power
- Fisheries
- Sediment (fertile alluvium) for farming
- Recreational opportunities

## The Hydrological Cycle (Water Cycle)

The **hydrological cycle** (also called the water cycle) describes the continuous movement of water between the atmosphere, land, and oceans.

**Key processes:**
1. **Evaporation:** Water evaporates from ocean/lake/river surfaces into the atmosphere.
2. **Transpiration:** Plants release water vapour through their leaves.
3. **Condensation:** Water vapour cools and condenses to form clouds.
4. **Precipitation:** Water falls from clouds as rain, snow, or hail.
5. **Surface runoff:** Water flows over the land into rivers and streams.
6. **Infiltration:** Water soaks into the ground through the soil.
7. **Percolation:** Water moves deeper into rock (becomes groundwater).
8. **Groundwater flow:** Water moves slowly through rock towards the sea.
9. **Throughflow:** Water moves laterally through soil downslope.
10. **River flow:** Water moves through rivers back to the ocean, completing the cycle.

## River Vocabulary Overview

A **river** is a natural stream of freshwater flowing in a channel from higher to lower ground, usually draining into the sea, a lake, or another river. Rivers begin at the **source** and end at the **mouth**.
$$ WHERE id = '6282e2e6-d100-4b06-8e34-3c067ae9873b';

UPDATE topic_sections SET content = $$## River and Drainage Vocabulary

**River:** A large natural stream of water flowing in a defined channel.

**Stream:** A smaller watercourse, usually a tributary of a river.

**Source:** The starting point or origin of a river — often a spring, lake, glacier, or area of high rainfall.

**Mouth:** Where a river reaches its destination — usually a sea, ocean, or lake.

**Tributary:** A smaller river or stream that flows into a larger one.

**Confluence:** The point where two rivers or streams meet.

**Distributary:** A branch of a river that flows away from the main channel — common in deltas.

**Watershed (Drainage Divide):** The ridge of high land that separates one drainage basin from another. Rainfall on one side flows into one river system; rainfall on the other side flows into a different system.

**Drainage Basin (Catchment Area):** The total area of land drained by a river and all its tributaries. Also called a catchment.

**River Channel:** The bed and banks through which a river flows.

**River Bed:** The bottom of the river channel.

**River Banks:** The sides of the river channel.

**Load:** The material carried (transported) by a river. Includes:
- **Dissolved load:** Minerals dissolved in the water
- **Suspended load:** Fine particles (silt, clay) carried in the flow
- **Saltation load:** Medium particles bounced along the bed
- **Bed load:** Large particles (pebbles, boulders) rolled along the bed

**Discharge:** The volume of water flowing past a point in a given time. Measured in cubic metres per second (cumecs or m³/s).
- **Formula: Discharge (Q) = Cross-sectional area (A) × Velocity (V)**

**Velocity:** The speed at which water moves in the river. Fastest in the centre and at bends on the outer bank; slowest at the edges and near the bed.

**Erosion:** The wearing away and removal of material by the river.

**Deposition:** The dropping of material that the river was carrying, when it slows down.

**Transportation:** The movement of eroded material downstream.

**Long Profile:** A cross-section of a river from source to mouth showing how the gradient changes. Typically steep near the source (upper course), flatter in the middle and lower course.

**Cross Profile:** The shape of the river channel at a particular point, shown as a cross-section (width × depth).

**Meander:** A large bend or curve in a river, usually in the lower course where the gradient is gentle.

**Oxbow Lake:** A curved lake formed when a meander is cut off from the main river channel.

**Floodplain:** The flat, low-lying land on either side of a river's lower course, built up of alluvium deposited during floods.

**Delta:** A flat, fan-shaped area of deposited sediment (alluvium) at the mouth of a river where it enters the sea or a lake. Forms when a river slows down and drops its load.

**Gorge:** A deep, narrow valley with steep sides, cut by a river through hard rock.

**Waterfall:** Where a river flows over a sudden drop in the riverbed, often where hard rock overlies softer rock.

**Alluvium:** Fine sediment (silt, sand, clay) deposited by a river on its floodplain or delta. Very fertile, excellent for farming.

**Levee:** A natural embankment of sediment deposited by a river along its banks during flood events. The heaviest sediment is dropped first, closest to the channel, building up a ridge (levee).

**Hydraulic Action:** Erosion by the force of flowing water hitting rocks and banks. The force of the water compresses air into cracks, eventually breaking rocks apart.

**Corrasion (Abrasion):** Erosion where the river's load acts as sandpaper, scraping and wearing away the channel bed and banks.

**Attrition:** The wearing down of the load itself as particles collide with each other and the channel, becoming smaller and rounder downstream.

**Solution (Corrosion):** Chemical erosion where soluble rocks (limestone, chalk) are dissolved by slightly acidic river water.
$$ WHERE id = 'e0470415-5577-4c58-aeda-11db984b1397';

UPDATE topic_sections SET content = $$## The Long Profile: Upper, Middle, and Lower Course

Rivers change character dramatically from source to mouth. Understanding these changes is crucial for WASSCE.

### Upper Course (Youthful Stage)

**Location:** Near the source, in highland areas.

**Gradient:** Very steep — the river loses height rapidly over a short distance.

**Features:**
- **V-shaped valleys** — the river cuts downward rapidly (vertical erosion dominates), creating steep-sided, narrow valleys shaped like a V.
- **Interlocking spurs** — the river winds around hard rock outcrops that project alternately from each side of the valley like the teeth of a zip.
- **Waterfalls and rapids** — where the river flows over hard rock above softer rock, the softer rock erodes faster, creating a sudden drop.
- **Gorges** — deep, narrow cuts into the landscape, especially below waterfalls.
- **Potholes** — cylindrical holes drilled in the riverbed by stones trapped in eddy currents and abrading in circles.

**Dominant process:** Vertical (downward) erosion — the river cuts into the bed, deepening the valley.

**Load:** Coarse, angular boulders and large stones (not yet worn smooth by attrition).

**Velocity:** High, though discharge is low (small catchment area).

**West African examples:**
- Upper Volta River in the Kwahu Plateau area (Ghana)
- Upper Niger River in Guinea near its source

---

### Middle Course (Mature Stage)

**Location:** Between highland and lowland.

**Gradient:** Moderate — less steep than upper course.

**Features:**
- **Wider, shallower valleys** — both vertical and lateral (sideways) erosion occur.
- **Meanders begin to form** — the river starts to swing left and right in large curves.
- **Flood plain begins to appear** — some alluvium deposited during floods.
- **Deposition of medium-grained material** on the inside of bends.

**Dominant process:** Lateral (sideways) erosion — the river cuts into the valley sides, widening the valley.

---

### Lower Course (Old Age Stage)

**Location:** Near the mouth, on flat lowland.

**Gradient:** Very gentle — almost flat. The river barely loses height.

**Features:**
- **Wide, flat floodplain** — the river has deposited vast amounts of alluvium over thousands of years of flooding. This alluvium makes the floodplain extremely fertile (e.g., the floodplain of the Niger River in Nigeria).
- **Large meanders** — the river swings in wide, sweeping curves across the floodplain.
- **Oxbow lakes** — formed when meanders become so pronounced that the river cuts through the neck, leaving the old bend as a curved lake.
- **Levees** — natural embankments along the river banks, built up by coarse sediment deposited during floods.
- **Delta or estuary** — at the mouth.

**Dominant process:** Deposition — the river drops its load as velocity decreases.

**West African examples:**
- **Niger Delta (Nigeria)** — a vast, complex delta where the Niger deposits its load into the Gulf of Guinea. The Niger Delta is one of the world's largest river deltas and contains enormous oil reserves.

---

## How Waterfalls Form

1. A river flows over an area where **hard, resistant rock** overlies **softer, less resistant rock**.
2. The softer rock is **eroded faster** than the hard rock.
3. This creates an **overhang** of hard rock above the softer rock.
4. Water plunges off the hard rock into a **plunge pool** below.
5. **Hydraulic action** and **abrasion** in the plunge pool erode the soft rock further and undercut the hard rock overhang.
6. Eventually, the overhang collapses — the waterfall has **retreated upstream** by a short distance.
7. Over thousands of years, the waterfall retreats upstream, leaving behind a **gorge** — a deep, narrow valley.

**West African Example:** **Kintampo Waterfalls** (Ghana), **Awhum Waterfalls** (Ghana).

---

## How Meanders Form

1. In the middle/lower course, a slight irregularity in the riverbed causes the flow to swing to one side.
2. The fastest-flowing water (thalweg) hits the **outer bank** of the bend → erodes it by hydraulic action and abrasion → creates a **river cliff (cut bank)**.
3. The slower-flowing water on the **inside of the bend** loses energy → deposits its load → forms a **slip-off slope (point bar)**.
4. Over time, erosion of the outer bank and deposition on the inner bank makes the bend grow larger.
5. The river migrates sideways, and the meanders grow more pronounced.

---

## How Oxbow Lakes Form

1. A meander becomes so pronounced that the two bends nearly touch at the **neck**.
2. During a flood, the river **cuts through the narrow neck** (takes the shorter, more direct route).
3. The old meander loop is cut off from the main flow.
4. Deposition at the ends of the cut-off seals it completely.
5. The isolated loop of water becomes an **oxbow lake** (also called a mortlake or cutoff lake).
6. Over time, the oxbow lake silts up and may become a marsh, then dry land.

---

## Drainage Patterns

The arrangement of a river system and its tributaries forms a **drainage pattern**. The type of pattern depends on the underlying geology.

| Pattern | Appearance | Cause |
|---------|-----------|-------|
| Dendritic | Like a tree/branches | Uniform, gently sloping terrain (most common) |
| Radial | Spreads outward from a central point | Dome-shaped hills or volcanic cones |
| Trellis | Right-angle tributaries joining main river | Alternating hard and soft rock bands (ridges and valleys) |
| Parallel | Rivers run parallel to each other | Uniformly sloping, parallel ridges |
| Annular | Roughly circular pattern | Eroded dome or volcanic structure |
$$ WHERE id = '7b76799b-753f-4431-8295-d7ba95f37550';

UPDATE topic_sections SET content = $$## Worked Example 1: River Processes

**Question:** Explain the formation of a waterfall. Include the key processes of erosion involved. Name a waterfall in West Africa.

**Model Answer:**
A waterfall forms where a river flows over rocks of **different resistances** — specifically where resistant (hard) rock overlies less resistant (soft) rock.

**Step-by-step formation:**
1. The river flows over the boundary between hard and soft rock.
2. The **soft rock below is eroded faster** by the processes of hydraulic action (force of water), corrasion (abrasion by the river's load), and solution (chemical dissolution).
3. The hard rock is left protruding as an overhang above the softer rock.
4. Water plunges off this overhang into a **plunge pool** at the base.
5. **Hydraulic action** and **abrasion** by stones carried in the swirling plunge pool continue to erode the soft rock and undermine the hard rock overhang.
6. Eventually, the unsupported hard rock overhang **collapses**.
7. The waterfall has **retreated upstream** by a small amount.
8. This retreat, occurring over thousands of years, leaves behind a steep-sided **gorge** downstream.

**Named example:** **Kintampo Waterfalls**, Ghana — located on the Black Volta tributary, an important tourist site.

---

## Worked Example 2: Delta vs. Estuary

**Question:** Distinguish between a delta and an estuary. Explain the conditions that favour delta formation.

**Answer:**

**Delta:** A fan-shaped or triangular deposit of alluvium at the mouth of a river, built up as the river slows on entering a sea or lake. The river splits into multiple smaller channels called **distributaries** as it crosses the delta.

**Estuary:** A wide, funnel-shaped mouth where the river meets the sea, characterised by tidal influence, brackish water (mix of fresh and salt water), and no significant sediment build-up. Tidal currents remove sediment faster than the river deposits it.

**Conditions for delta formation:**
1. The river must carry a **large sediment load** (high erosion in upper catchment).
2. The sea must be **shallow** near the river mouth — deep water would allow sediment to disperse.
3. **Tidal range must be small** — strong tides remove sediment before it can accumulate.
4. The river must have **low velocity** at its mouth — slow flow promotes deposition.
5. No strong ocean currents to redistribute sediment.

**Example:** The **Niger Delta** (Nigeria) — one of Africa's largest deltas. The Niger carries enormous sediment loads from its long journey, deposits them in the relatively calm, shallow Gulf of Guinea, building the delta. The delta is also famous for its oil and gas reserves, the basis of Nigeria's economy.

---

## Worked Example 3: Calculating Discharge

**Question:** A river has a cross-sectional area of 25 m² and a velocity of 2.4 m/s. Calculate its discharge.

**Working:**
Discharge (Q) = Cross-sectional Area (A) × Velocity (V)
Q = 25 m² × 2.4 m/s
**Q = 60 m³/s** (60 cumecs)

This means 60 cubic metres of water flows past that point every second.

**Interpretation:** Discharge increases downstream as more tributaries join. The **Niger River** near its mouth has a discharge of approximately 6,000–30,000 m³/s depending on season.
$$ WHERE id = '3dc43079-9e0b-4d81-a6d3-a7bec136e937';

UPDATE topic_sections SET content = $$## WASSCE Practice Questions: Rivers and Drainage

### Section A: Multiple Choice

**Question 1:** The area of land drained by a river and all its tributaries is called:
A. A watershed
B. A floodplain
C. A drainage basin
D. A delta

**Answer: C** — The drainage basin (or catchment area) is the entire area of land from which water drains into a particular river system. The watershed is the ridge that SEPARATES drainage basins.

---

**Question 2:** Which of the following processes causes the OUTER bank of a meander to be eroded?
A. Deposition of sediment
B. Hydraulic action and abrasion
C. Attrition and solution
D. Saltation and traction

**Answer: B** — The fastest-flowing water hits the outer (concave) bank of a meander. Hydraulic action (force of water) and abrasion (scraping by the river's load) erode this outer bank, forming a river cliff. Deposition occurs on the INNER (convex) bank.

---

**Question 3:** An oxbow lake is formed from:
A. A river delta that has been cut off
B. A meander that has been cut off from the main river
C. A waterfall that has retreated to leave a lake
D. A glacier lake in a mountain valley

**Answer: B** — An oxbow lake forms when a river meander becomes so pronounced that the river cuts through the narrow neck during a flood, cutting off the old loop as a separate body of water.

---

**Question 4:** Which feature is characteristic of the UPPER course of a river?
A. A wide floodplain
B. Large meanders
C. A V-shaped valley with interlocking spurs
D. A delta at the mouth

**Answer: C** — In the upper course, steep gradient drives rapid vertical (downward) erosion, cutting a narrow, deep V-shaped valley. Interlocking spurs form where the river winds around hard rock outcrops.

---

**Question 5:** In rivers, the load is transported by all of the following EXCEPT:
A. Traction (rolling/sliding along the bed)
B. Saltation (bouncing along the bed)
C. Suspension (carried within the flow)
D. Sublimation (changing from solid to gas)

**Answer: D** — Sublimation is a physical/chemical process not related to river transport. Rivers transport load by: traction (rolling large particles), saltation (bouncing medium particles), suspension (carrying fine particles in the flow), and solution (dissolved minerals).

---

### Section B: Structured Questions

**Question 6:** With the aid of a labelled diagram, explain how an oxbow lake is formed. (8 marks)

**Model Answer:**

**Diagram should show:**
1. A large meander with outer bank (river cliff) and inner bank (slip-off slope)
2. The neck of the meander narrowing
3. The river cutting through the neck during a flood
4. The old meander loop isolated as an oxbow lake
5. Labels: erosion on outer bank, deposition on inner bank, neck, flood cut-through, oxbow lake

**Explanation:**
- In the lower course of a river, meanders develop as the river swings from side to side on its floodplain.
- **Erosion of the outer bank** (by hydraulic action and abrasion) makes meanders grow larger.
- **Deposition on the inner bank** (slip-off slope) adds to the meander's asymmetry.
- Over time, the meander loops become so large that the two curves almost meet, leaving only a narrow strip of land (the **neck**) between them.
- During a **flood**, the river has extra energy and takes the more direct route, **cutting through the neck**.
- After the flood, the river continues to flow in this new, shorter channel.
- **Deposition at each end** of the cut-off loop gradually seals it from the main river.
- The isolated loop of water becomes an **oxbow lake**.
- Eventually, the oxbow lake silts up and may become a **marsh**, then dry land.

---

**Question 7:** (a) Name THREE major rivers of West Africa and for EACH, name ONE country it flows through. (3 marks)
(b) Explain the importance of ONE of these rivers to the countries through which it flows. (6 marks)

**Model Answer:**
(a)
- **Niger River** — flows through Nigeria (also Guinea, Mali, Niger, Benin)
- **Volta River** — flows through Ghana (also Burkina Faso)
- **Senegal River** — flows through Senegal (also Guinea, Mali, Mauritania)

(b) **The Volta River and its importance to Ghana:**

1. **Hydroelectric Power:** The Akosombo Dam (built 1966) on the Volta River created Lake Volta and generates approximately 1,020 MW of electricity — historically supplying about 60–70% of Ghana's electricity. This powers industries, hospitals, schools, and homes.

2. **Lake Volta (World's Largest Artificial Lake by Area):** Lake Volta (8,502 km²) is used for fishing (providing food and income for thousands of fishermen), transport of goods between communities along its shores, and water supply.

3. **Irrigation:** Waters from the Volta system are used for irrigation in northern Ghana (Kpong Irrigation Project) to grow rice, vegetables, and other crops.

4. **Tourism:** The dam, lake, and surrounding nature attract tourists, generating income.

5. **Transport:** Historically, sections of the Volta and its tributaries were used for canoe transport between communities.
$$ WHERE id = '3ca7af7a-023f-4b51-bcee-fe41c6454b5e';
