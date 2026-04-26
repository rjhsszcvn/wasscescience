/*
  # Core Science WASSCE Topics Batch 4 (Topics 16-20)

  Topics:
  16. Waves - Light and Sound
  17. Earth Science and Space
  18. Health, Disease and the Human Body
  19. Technology and Society
  20. Environmental Chemistry and Pollution
*/

INSERT INTO topics (subject_id, name, description, content, order_index) VALUES

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Waves - Light and Sound',
 'Properties of waves, light reflection and refraction, the electromagnetic spectrum, sound properties and uses',
 '<h2>Waves - Light and Sound</h2>

<h3>16.1 Properties of Waves</h3>
<ul>
  <li><strong>Wave:</strong> A disturbance that transfers energy without transferring matter</li>
  <li><strong>Amplitude:</strong> Maximum displacement from rest position; related to energy of wave</li>
  <li><strong>Wavelength (lambda):</strong> Distance between two successive crests or troughs; SI unit: metre (m)</li>
  <li><strong>Frequency (f):</strong> Number of complete waves passing a point per second; SI unit: Hertz (Hz)</li>
  <li><strong>Period (T):</strong> Time for one complete wave; T = 1/f; SI unit: second (s)</li>
  <li><strong>Wave speed (v):</strong> v = f x wavelength; SI unit: m/s</li>
</ul>

<h4>Transverse vs Longitudinal Waves</h4>
<ul>
  <li><strong>Transverse waves:</strong> Oscillations are perpendicular to direction of energy transfer (e.g., light, water waves, electromagnetic waves)</li>
  <li><strong>Longitudinal waves:</strong> Oscillations are parallel to direction of energy transfer; have compressions and rarefactions (e.g., sound waves, seismic P-waves)</li>
</ul>

<h3>16.2 Light</h3>
<p>Light is a transverse electromagnetic wave that can travel through a vacuum at 3 x 10^8 m/s.</p>

<h4>Reflection of Light</h4>
<ul>
  <li>Law of reflection: Angle of incidence = Angle of reflection (both measured from the normal)</li>
  <li><strong>Regular reflection:</strong> From smooth surfaces (mirror); produces clear images</li>
  <li><strong>Diffuse reflection:</strong> From rough surfaces; light scattered in many directions</li>
  <li>Images in plane mirrors: virtual, upright, same size, laterally inverted, as far behind mirror as object is in front</li>
</ul>

<h4>Refraction of Light</h4>
<ul>
  <li>Bending of light as it passes from one medium to another (change in speed)</li>
  <li>Light bends towards the normal when entering a denser medium (slows down)</li>
  <li>Light bends away from the normal when entering a less dense medium (speeds up)</li>
  <li><strong>Refractive index (n):</strong> n = speed in vacuum / speed in medium = sin(angle of incidence) / sin(angle of refraction)</li>
  <li><strong>Total internal reflection:</strong> When angle of incidence exceeds critical angle; all light reflects back (fibre optics, mirages)</li>
</ul>

<h4>Lenses</h4>
<ul>
  <li><strong>Convex (converging) lens:</strong> Thicker in middle; brings parallel rays to a focal point; used in magnifying glasses, cameras, eyes</li>
  <li><strong>Concave (diverging) lens:</strong> Thinner in middle; spreads parallel rays apart; used to correct short-sightedness</li>
</ul>

<h3>16.3 Electromagnetic Spectrum</h3>
<p>Family of transverse waves that all travel at the speed of light in a vacuum. In order of increasing wavelength (decreasing frequency):</p>
<ul>
  <li><strong>Gamma rays:</strong> Shortest wavelength; highest energy; from radioactive decay; used in cancer treatment and sterilisation</li>
  <li><strong>X-rays:</strong> Medical imaging; detecting cracks in materials</li>
  <li><strong>Ultraviolet:</strong> Causes suntan and skin cancer; used in sterilisation and detecting forged bank notes</li>
  <li><strong>Visible light:</strong> 400-700 nm; red (longest) to violet (shortest)</li>
  <li><strong>Infrared:</strong> Heat radiation; remote controls; thermal imaging</li>
  <li><strong>Microwaves:</strong> Cooking food; mobile phone signals; satellite communication</li>
  <li><strong>Radio waves:</strong> Longest wavelength; lowest energy; radio and TV broadcasting</li>
</ul>

<h3>16.4 Sound</h3>
<ul>
  <li>Sound is a longitudinal mechanical wave; requires a medium to travel (cannot travel through vacuum)</li>
  <li>Speed of sound: approximately 340 m/s in air; faster in liquids and solids</li>
  <li><strong>Pitch:</strong> How high or low a sound is; determined by frequency</li>
  <li><strong>Loudness:</strong> Determined by amplitude of wave</li>
  <li><strong>Timbre:</strong> Quality of sound; determined by waveform</li>
  <li>Human hearing range: 20 Hz to 20,000 Hz (20 kHz)</li>
  <li><strong>Ultrasound:</strong> Above 20 kHz; used in medical scanning, sonar, cleaning</li>
  <li><strong>Infrasound:</strong> Below 20 Hz; produced by earthquakes, elephants, whales</li>
</ul>

<h4>Echo</h4>
<p>Reflection of sound from a surface. Used to calculate distance: distance = (speed x time) / 2</p>',
 16),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Earth Science and Space',
 'Structure of the Earth, rock cycle, plate tectonics, the solar system, stars and the universe',
 '<h2>Earth Science and Space</h2>

<h3>17.1 Structure of the Earth</h3>
<ul>
  <li><strong>Crust:</strong> Outermost solid layer; thin (5-70 km); oceanic crust (denser, basalt) and continental crust (less dense, granite)</li>
  <li><strong>Mantle:</strong> Thick layer of semi-molten rock (silicates); extends from crust to 2900 km depth; convection currents drive plate movement</li>
  <li><strong>Outer core:</strong> Liquid iron and nickel; 2900-5100 km depth; responsible for Earth magnetic field</li>
  <li><strong>Inner core:</strong> Solid iron and nickel; immense pressure; 5100-6371 km depth</li>
</ul>

<h3>17.2 The Rock Cycle</h3>

<h4>Types of Rocks</h4>
<ul>
  <li><strong>Igneous rocks:</strong> Formed from cooled magma or lava. Intrusive (cooled slowly underground, large crystals, e.g., granite) and Extrusive (cooled quickly at surface, small crystals, e.g., basalt)</li>
  <li><strong>Sedimentary rocks:</strong> Formed from compressed sediments (pieces of other rocks, shells, remains). Layers (strata). Examples: sandstone, limestone, shale. May contain fossils.</li>
  <li><strong>Metamorphic rocks:</strong> Formed when existing rocks are changed by heat and/or pressure. Examples: marble (from limestone), slate (from shale), quartzite (from sandstone)</li>
</ul>

<h4>Rock Cycle Processes</h4>
<ul>
  <li>Weathering and erosion: break down surface rocks into sediments</li>
  <li>Deposition and compaction: sediments form sedimentary rocks</li>
  <li>Heat and pressure: form metamorphic rocks</li>
  <li>Melting: forms magma; cooling forms igneous rocks</li>
</ul>

<h3>17.3 Plate Tectonics</h3>
<ul>
  <li>The crust is divided into tectonic plates that move on the mantle</li>
  <li>Movement driven by convection currents in the mantle</li>
  <li><strong>Convergent boundary:</strong> Plates collide; oceanic plate subducts under continental; forms mountains and volcanoes</li>
  <li><strong>Divergent boundary:</strong> Plates move apart; magma fills gap; forms mid-ocean ridges and rift valleys</li>
  <li><strong>Transform boundary:</strong> Plates slide past each other; causes earthquakes</li>
</ul>

<h3>17.4 Volcanoes and Earthquakes</h3>
<ul>
  <li><strong>Volcano:</strong> Opening in crust through which magma, ash and gases escape. Occurs at convergent and divergent boundaries.</li>
  <li><strong>Earthquake:</strong> Vibrations caused by sudden movement of tectonic plates. Measured on Richter scale. Epicentre is the point on surface above the focus.</li>
</ul>

<h3>17.5 The Solar System</h3>
<ul>
  <li>The Sun is a star at the centre of our solar system</li>
  <li>Eight planets orbit the Sun (in order from Sun): Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune</li>
  <li><strong>Inner (terrestrial) planets:</strong> Mercury, Venus, Earth, Mars; small, rocky, dense</li>
  <li><strong>Outer (gas giant) planets:</strong> Jupiter, Saturn, Uranus, Neptune; large, gaseous, less dense</li>
  <li>Asteroids: rocky bodies orbiting Sun mainly between Mars and Jupiter (asteroid belt)</li>
  <li>Comets: icy bodies with elliptical orbits; develop tails near the Sun</li>
  <li>Moons: natural satellites orbiting planets</li>
</ul>

<h3>17.6 The Universe</h3>
<ul>
  <li>The Sun is one of about 200 billion stars in the Milky Way galaxy</li>
  <li>The universe contains billions of galaxies</li>
  <li><strong>Big Bang theory:</strong> The universe began from a single point about 13.8 billion years ago and has been expanding ever since</li>
  <li><strong>Star life cycle:</strong> Nebula (gas cloud) → Protostar → Main sequence star → Red giant → White dwarf (average star like Sun) OR Supernova → Neutron star/Black hole (massive star)</li>
</ul>

<h3>17.7 Earth Motions</h3>
<ul>
  <li><strong>Rotation:</strong> Earth spins on its axis; takes 24 hours; causes day and night</li>
  <li><strong>Revolution:</strong> Earth orbits the Sun; takes approximately 365.25 days (1 year); causes seasons (due to tilt of axis)</li>
  <li><strong>Moon phases:</strong> Caused by relative positions of Sun, Moon and Earth; cycle of approximately 29.5 days</li>
</ul>',
 17),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Health, Disease and the Human Body',
 'Types of diseases, immune system, vaccination, body systems, and maintaining good health',
 '<h2>Health, Disease and the Human Body</h2>

<h3>18.1 Health and Disease</h3>
<p>Health is a state of complete physical, mental, and social well-being, not merely the absence of disease (WHO definition).</p>

<h4>Types of Disease</h4>
<ul>
  <li><strong>Communicable (infectious) diseases:</strong> Caused by pathogens; can spread from person to person</li>
  <li><strong>Non-communicable diseases:</strong> Cannot spread between individuals; include genetic disorders, nutritional diseases, degenerative diseases</li>
</ul>

<h3>18.2 Pathogens and Diseases</h3>
<ul>
  <li><strong>Bacteria:</strong> Single-celled prokaryotes; diseases: tuberculosis (TB), cholera, typhoid, pneumonia</li>
  <li><strong>Viruses:</strong> Non-living particles; diseases: influenza, HIV/AIDS, COVID-19, measles, chicken pox</li>
  <li><strong>Fungi:</strong> Eukaryotes; diseases: ringworm, athlete foot, thrush</li>
  <li><strong>Protozoa:</strong> Single-celled eukaryotes; diseases: malaria (Plasmodium), sleeping sickness</li>
  <li><strong>Worms (helminths):</strong> Parasitic worms; diseases: roundworm, tapeworm, bilharzia</li>
</ul>

<h4>Modes of Disease Transmission</h4>
<ul>
  <li>Airborne: coughing, sneezing (TB, influenza)</li>
  <li>Water/food contaminated: cholera, typhoid</li>
  <li>Direct contact: touching infected person or surface</li>
  <li>Vector-borne: through an animal carrier (malaria via mosquito)</li>
  <li>Blood-borne: sharing needles, blood transfusion (HIV, hepatitis B)</li>
  <li>Sexual contact: HIV, gonorrhoea, syphilis</li>
</ul>

<h3>18.3 The Immune System</h3>

<h4>Non-specific Defences (First and Second Lines)</h4>
<ul>
  <li>Skin: physical barrier; prevents entry of pathogens</li>
  <li>Mucus and cilia in respiratory tract: trap and remove pathogens</li>
  <li>Stomach acid (HCl): kills pathogens in food</li>
  <li>Inflammatory response: increased blood flow; phagocytes arrive</li>
  <li>Phagocytosis: white blood cells (phagocytes) engulf and destroy pathogens</li>
</ul>

<h4>Specific Immune Response (Third Line)</h4>
<ul>
  <li>Lymphocytes (B-cells) produce antibodies specific to pathogen antigens</li>
  <li>Antibodies bind to antigens and neutralise or label pathogens for destruction</li>
  <li>Memory cells remain after infection; faster response to future infection (immunity)</li>
</ul>

<h3>18.4 Vaccination (Immunisation)</h3>
<ul>
  <li>A weakened, killed, or fragmented form of a pathogen is introduced into the body</li>
  <li>The immune system produces antibodies and memory cells without causing disease</li>
  <li>On exposure to real pathogen, immune system responds rapidly</li>
  <li>Examples: vaccines for measles, polio, tetanus, tuberculosis (BCG), COVID-19</li>
  <li><strong>Herd immunity:</strong> When a large enough proportion of a population is immune, the disease cannot spread easily</li>
</ul>

<h3>18.5 Key Body Systems</h3>

<h4>Circulatory System</h4>
<ul>
  <li>Heart: four-chambered pump; right side pumps deoxygenated blood to lungs; left side pumps oxygenated blood to body</li>
  <li>Arteries: carry blood away from heart; thick muscular walls; high pressure</li>
  <li>Veins: carry blood towards heart; thinner walls; valves prevent backflow</li>
  <li>Capillaries: single cell thick walls; site of exchange of materials between blood and tissues</li>
  <li>Blood components: red blood cells (oxygen transport), white blood cells (immunity), platelets (clotting), plasma (transport medium)</li>
</ul>

<h4>Respiratory System</h4>
<ul>
  <li>Breathing brings oxygen into the lungs and removes carbon dioxide</li>
  <li>Alveoli: tiny air sacs; large surface area; thin walls; rich blood supply; moist; efficient gas exchange</li>
  <li>Gas exchange: oxygen diffuses from alveoli into blood; CO2 diffuses from blood into alveoli</li>
</ul>

<h4>Excretory System</h4>
<ul>
  <li>Kidneys: filter blood; remove urea, excess water and salts as urine</li>
  <li>Lungs: excrete CO2 and water vapour</li>
  <li>Skin: excretes some water and salts through sweat</li>
  <li>Liver: converts excess amino acids to urea (deamination)</li>
</ul>

<h3>18.6 Maintaining Good Health</h3>
<ul>
  <li>Regular physical exercise: strengthens heart, muscles, and bones; reduces risk of obesity and chronic diseases</li>
  <li>Balanced diet: provides all necessary nutrients</li>
  <li>Good hygiene: regular handwashing; safe food handling; sanitation</li>
  <li>Adequate sleep: allows body repair and recovery</li>
  <li>Avoiding harmful substances: tobacco, alcohol, illicit drugs</li>
  <li>Regular medical check-ups and vaccinations</li>
</ul>',
 18),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Technology and Society',
 'Biotechnology, materials science, nanotechnology, ICT in science, and ethical issues in science',
 '<h2>Technology and Society</h2>

<h3>19.1 Biotechnology</h3>
<p>Biotechnology is the use of biological systems or living organisms to develop products and technologies for human benefit.</p>

<h4>Traditional Biotechnology</h4>
<ul>
  <li>Fermentation: yeast converts glucose to ethanol and CO2; used in bread, beer, wine production</li>
  <li>Yoghurt and cheese production: bacteria ferment milk</li>
  <li>Composting: decomposers break down organic waste into compost/fertiliser</li>
</ul>

<h4>Modern Biotechnology</h4>
<ul>
  <li><strong>Genetic engineering:</strong> Inserting or modifying genes in organisms; used to produce insulin, vaccines, herbicide-resistant crops</li>
  <li><strong>Genetically modified organisms (GMOs):</strong> Organisms whose DNA has been altered; e.g., Bt crops (pest resistant), golden rice (vitamin A enriched)</li>
  <li><strong>Cloning:</strong> Producing genetically identical organisms; therapeutic cloning for medical research</li>
  <li><strong>Stem cell research:</strong> Undifferentiated cells that can develop into any cell type; potential for treating diseases</li>
  <li><strong>Tissue culture:</strong> Growing cells or tissues in controlled laboratory conditions</li>
</ul>

<h3>19.2 Materials Science</h3>
<ul>
  <li><strong>Polymers (plastics):</strong> Long-chain molecules; thermoplastics (can be melted and reshaped) and thermosetting plastics (cannot be remelted)</li>
  <li><strong>Composites:</strong> Materials made from two or more components (fibreglass, concrete, reinforced plastic)</li>
  <li><strong>Alloys:</strong> Mixtures of metals (steel = iron + carbon; bronze = copper + tin; brass = copper + zinc)</li>
  <li><strong>Ceramics:</strong> Inorganic non-metallic materials; high melting points; hard and brittle (pottery, tiles, glass)</li>
  <li><strong>Smart materials:</strong> Change properties in response to stimuli (shape memory alloys, thermochromic materials, piezoelectric materials)</li>
</ul>

<h3>19.3 ICT in Science</h3>
<ul>
  <li>Data loggers: automatically record measurements over time (temperature, pressure, pH)</li>
  <li>Computer modelling: simulate complex systems (weather, climate, spread of disease)</li>
  <li>Internet: access to scientific literature, databases, collaboration</li>
  <li>Sensors and microprocessors: precise measurements in experiments</li>
  <li>Bioinformatics: using computers to analyse biological data (genome sequencing)</li>
</ul>

<h3>19.4 Science and Society</h3>

<h4>Benefits of Science and Technology</h4>
<ul>
  <li>Improved medical treatments and vaccines</li>
  <li>Increased food production (fertilisers, pesticides, GMOs)</li>
  <li>Better communication and information sharing</li>
  <li>Renewable energy technologies (solar, wind, hydro)</li>
  <li>Clean water purification</li>
</ul>

<h4>Risks and Ethical Issues</h4>
<ul>
  <li>Environmental pollution from industrial chemicals and plastics</li>
  <li>Ethical concerns about genetic engineering and GMOs</li>
  <li>Nuclear power: clean energy but risk of accidents and nuclear waste</li>
  <li>Antibiotic resistance from overuse of antibiotics</li>
  <li>Digital technology: cybersecurity, privacy, social media effects</li>
</ul>

<h3>19.5 Renewable and Non-Renewable Energy</h3>

<h4>Non-Renewable Energy Sources</h4>
<ul>
  <li>Fossil fuels (coal, oil, natural gas): formed from ancient organisms; limited supply; release CO2 when burned</li>
  <li>Nuclear fuel (uranium): fission releases large amounts of energy; produces radioactive waste</li>
</ul>

<h4>Renewable Energy Sources</h4>
<ul>
  <li>Solar energy: photovoltaic panels convert sunlight to electricity</li>
  <li>Wind energy: wind turbines generate electricity</li>
  <li>Hydroelectric power: flowing water drives turbines</li>
  <li>Geothermal energy: heat from within the Earth</li>
  <li>Biomass: burning or fermenting organic material</li>
  <li>Tidal/wave energy: kinetic energy of sea water</li>
</ul>',
 19),

('4a4ac3bb-73d4-45c7-86c3-1dcf8734e6fe',
 'Environmental Chemistry and Pollution',
 'Air pollution, water pollution, soil pollution, greenhouse effect, ozone layer and remediation',
 '<h2>Environmental Chemistry and Pollution</h2>

<h3>20.1 The Atmosphere</h3>
<p>Composition of clean, dry air (approximately):</p>
<ul>
  <li>Nitrogen (N2): 78%</li>
  <li>Oxygen (O2): 21%</li>
  <li>Argon (Ar): 0.9%</li>
  <li>Carbon dioxide (CO2): 0.04%</li>
  <li>Other trace gases: neon, helium, methane, etc.</li>
</ul>

<h3>20.2 Air Pollution</h3>

<h4>Major Air Pollutants</h4>
<ul>
  <li><strong>Carbon monoxide (CO):</strong> From incomplete combustion; colourless, odourless, highly toxic; binds to haemoglobin preventing oxygen transport</li>
  <li><strong>Sulphur dioxide (SO2):</strong> From burning fossil fuels (coal, oil) containing sulphur; causes acid rain; irritates respiratory system</li>
  <li><strong>Nitrogen oxides (NOx):</strong> From vehicle engines and power stations; cause acid rain and smog; respiratory irritants</li>
  <li><strong>Particulate matter:</strong> Fine solid particles and liquid droplets; from combustion, construction, agriculture; cause respiratory disease</li>
  <li><strong>Volatile organic compounds (VOCs):</strong> From paints, solvents, vehicles; contribute to ground-level ozone formation</li>
  <li><strong>Lead:</strong> From leaded petrol (now largely phased out); damages nervous system especially in children</li>
</ul>

<h4>Acid Rain</h4>
<ul>
  <li>SO2 + H2O gives H2SO3 (sulphurous acid) or SO2 + H2O + O2 gives H2SO4 (sulphuric acid)</li>
  <li>NOx + H2O gives HNO3 (nitric acid)</li>
  <li>Effects: damages forests, corrodes buildings and statues, acidifies lakes (kills aquatic life)</li>
</ul>

<h3>20.3 The Greenhouse Effect and Global Warming</h3>
<ul>
  <li>Greenhouse gases (CO2, CH4, H2O vapour, N2O) absorb infrared radiation emitted by Earth and re-emit it back; warming the planet</li>
  <li>The natural greenhouse effect keeps Earth warm enough for life</li>
  <li>Enhanced greenhouse effect: increasing CO2 (fossil fuels) and CH4 (agriculture, landfill) are causing additional warming</li>
  <li>Consequences: rising temperatures, melting ice caps, rising sea levels, extreme weather events, changes in ecosystems</li>
</ul>

<h3>20.4 Ozone Layer Depletion</h3>
<ul>
  <li>Ozone (O3) layer in stratosphere absorbs harmful UV radiation from the Sun</li>
  <li>Chlorofluorocarbons (CFCs) from aerosols and refrigerants break down ozone</li>
  <li>Ozone hole over Antarctica detected in 1980s</li>
  <li>Increased UV radiation: higher risk of skin cancer and eye damage</li>
  <li>Montreal Protocol (1987): international agreement to phase out CFCs</li>
</ul>

<h3>20.5 Water Pollution</h3>
<ul>
  <li><strong>Sewage:</strong> Bacteria from untreated sewage; causes cholera and typhoid; depletes dissolved oxygen</li>
  <li><strong>Agricultural chemicals:</strong> Nitrates and phosphates from fertilisers cause eutrophication</li>
  <li><strong>Industrial effluents:</strong> Heavy metals (mercury, lead, cadmium); toxic to aquatic life and humans</li>
  <li><strong>Oil spills:</strong> Coats and kills marine birds and mammals; depletes dissolved oxygen</li>
  <li><strong>Thermal pollution:</strong> Hot water discharged from power stations; reduces dissolved oxygen</li>
</ul>

<h4>Eutrophication</h4>
<ol>
  <li>Excess nitrates and phosphates from fertilisers or sewage enter water bodies</li>
  <li>Algae grow rapidly (algal bloom)</li>
  <li>Algae block sunlight from underwater plants which die</li>
  <li>Decomposers break down dead material; use up dissolved oxygen</li>
  <li>Fish and other aquatic organisms die from lack of oxygen</li>
</ol>

<h3>20.6 Soil Pollution and Land Degradation</h3>
<ul>
  <li>Pesticides and herbicides accumulate in soil; kill soil organisms; enter food chain (bioaccumulation)</li>
  <li>Heavy metal contamination from mining and industrial waste</li>
  <li>Soil erosion: loss of topsoil from deforestation, overgrazing, poor farming practices</li>
  <li>Desertification: conversion of fertile land to desert</li>
</ul>

<h3>20.7 Solutions and Remediation</h3>
<ul>
  <li>Catalytic converters in vehicles: convert CO, NOx and hydrocarbons to less harmful gases</li>
  <li>Flue gas desulphurisation: removes SO2 from power station emissions</li>
  <li>Sewage treatment: physical, biological and chemical processes to clean waste water</li>
  <li>Water purification: filtration, chlorination, UV treatment</li>
  <li>Bioremediation: using microorganisms to break down pollutants</li>
  <li>Reduce, Reuse, Recycle (3Rs): reducing waste production</li>
  <li>Sustainable development: meeting present needs without compromising future generations</li>
</ul>',
 20);
