/*
  # Core Science Comprehensive WASSCE Notes - Topics 16 to 20

  Adds deep, exam-focused notes for:
  16. Waves - Light and Sound
  17. Earth Science and Space
  18. Health, Disease and the Human Body
  19. Technology and Society
  20. Environmental Chemistry and Pollution
*/

DO $$
DECLARE
  t16 uuid := 'a700337a-d765-461f-a0f6-bd9ab53522b7';
  t17 uuid := '6eb4b86a-39d2-4e04-babd-9fd4657dd5d0';
  t18 uuid := '44a87e17-f9ed-43ee-8be1-e5e6458d1f46';
  t19 uuid := 'db04d955-4800-44a3-8cad-a2f812eaaf18';
  t20 uuid := '4382651c-ccff-4c4a-8455-bdbd6a50891b';
BEGIN

-- ============================================================
-- TOPIC 16: Waves - Light and Sound
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t16;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t16, 'Wave Properties and Types', '<h2>Waves: Properties and Types</h2>

<h3>What is a Wave?</h3>
<p>A wave is a disturbance that transfers energy from one place to another without transferring matter.</p>

<h3>Key Wave Properties</h3>
<table border="1">
<tr><th>Property</th><th>Definition</th><th>Symbol</th><th>Unit</th></tr>
<tr><td>Amplitude (A)</td><td>Maximum displacement from the equilibrium (rest) position; related to wave energy</td><td>A</td><td>metres (m)</td></tr>
<tr><td>Wavelength</td><td>Distance between two successive points in phase (e.g., crest to crest, trough to trough)</td><td>lambda</td><td>metres (m)</td></tr>
<tr><td>Frequency (f)</td><td>Number of complete waves passing a point per second</td><td>f</td><td>Hertz (Hz)</td></tr>
<tr><td>Period (T)</td><td>Time for one complete wave to pass a point</td><td>T</td><td>seconds (s)</td></tr>
<tr><td>Wave speed (v)</td><td>Speed at which the wave travels</td><td>v</td><td>m/s</td></tr>
</table>

<h3>Wave Equation</h3>
<p><strong>v = f x lambda</strong> (Wave speed = frequency x wavelength)</p>
<p><strong>T = 1/f</strong> (Period = 1 / frequency)</p>

<h3>Types of Waves</h3>
<h4>Transverse Waves</h4>
<p>The vibration (oscillation) is perpendicular (at right angles) to the direction of wave travel (energy transfer).</p>
<ul>
<li>Examples: Light waves, water ripples, electromagnetic waves, seismic S-waves</li>
<li>Can be polarized</li>
</ul>

<h4>Longitudinal Waves</h4>
<p>The vibration is parallel to (in the same direction as) the direction of wave travel.</p>
<ul>
<li>Examples: Sound waves, seismic P-waves, compressions in a spring</li>
<li>Consist of compressions (regions of high pressure) and rarefactions (regions of low pressure)</li>
<li>Cannot be polarized</li>
</ul>

<h3>Wave Behaviors</h3>
<table border="1">
<tr><th>Behavior</th><th>Description</th><th>Example</th></tr>
<tr><td>Reflection</td><td>Wave bounces off a surface; angle of incidence = angle of reflection</td><td>Mirror, echo</td></tr>
<tr><td>Refraction</td><td>Wave changes speed and direction when entering a different medium</td><td>Light bending in glass/water; mirage; lens</td></tr>
<tr><td>Diffraction</td><td>Wave spreads out when passing through a gap or around an obstacle</td><td>Sound around corners; radio waves around buildings</td></tr>
<tr><td>Interference</td><td>Two waves overlap; constructive (amplitudes add) or destructive (amplitudes cancel) interference</td><td>Noise-cancelling headphones; soap bubble colors</td></tr>
<tr><td>Absorption</td><td>Wave energy is absorbed by a medium</td><td>Black objects absorb light; sound absorbed by soft furnishings</td></tr>
</table>

<h3>The Electromagnetic Spectrum</h3>
<p>All electromagnetic waves travel at the speed of light: c = 3 x 10^8 m/s in vacuum. They are transverse waves and do not require a medium.</p>
<table border="1">
<tr><th>Type</th><th>Wavelength</th><th>Frequency</th><th>Uses</th><th>Dangers</th></tr>
<tr><td>Radio waves</td><td>Longest (km to m)</td><td>Lowest</td><td>Radio/TV broadcasting, communications</td><td>None significant</td></tr>
<tr><td>Microwaves</td><td>cm to mm</td><td>-</td><td>Cooking (microwave ovens), satellite communication, mobile phones</td><td>Heating of body tissues</td></tr>
<tr><td>Infrared (IR)</td><td>mm to 700 nm</td><td>-</td><td>Thermal imaging, remote controls, heating, night vision</td><td>Burns (heating)</td></tr>
<tr><td>Visible light</td><td>700 to 400 nm</td><td>-</td><td>Seeing, photography, fiber optics</td><td>None (normal levels)</td></tr>
<tr><td>Ultraviolet (UV)</td><td>400 to 10 nm</td><td>-</td><td>Sterilization, tanning, fluorescent lights, detecting fake notes</td><td>Skin cancer, cataracts, DNA damage</td></tr>
<tr><td>X-rays</td><td>10 nm to 0.01 nm</td><td>-</td><td>Medical imaging (bones), airport security</td><td>Cancer, cell damage</td></tr>
<tr><td>Gamma rays</td><td>Shortest (less than 0.01 nm)</td><td>Highest</td><td>Cancer treatment (radiotherapy), sterilizing medical equipment, food irradiation</td><td>Cancer, cell mutation</td></tr>
</table>
<p><strong>Memory aid for EM spectrum:</strong> Radio, Microwaves, Infrared, Visible, Ultraviolet, X-rays, Gamma rays (R-M-I-V-U-X-G)</p>', 1),

(t16, 'Light and Sound', '<h2>Light and Sound</h2>

<h3>Properties of Light</h3>
<ul>
<li>Light is a transverse electromagnetic wave</li>
<li>Speed of light in vacuum: c = 3 x 10^8 m/s</li>
<li>Light slows down in denser media (glass, water)</li>
<li>Visible light wavelength range: 400 nm (violet) to 700 nm (red)</li>
</ul>

<h3>Reflection of Light</h3>
<p>Laws of Reflection:</p>
<ol>
<li>The angle of incidence = the angle of reflection</li>
<li>The incident ray, reflected ray, and normal all lie in the same plane</li>
</ol>
<p>Angles are measured from the <strong>normal</strong> (perpendicular to the surface at the point of incidence).</p>

<h4>Types of Reflection</h4>
<ul>
<li><strong>Regular (specular) reflection:</strong> From smooth, flat surfaces (mirrors). Produces clear images.</li>
<li><strong>Diffuse (irregular) reflection:</strong> From rough surfaces. Rays scatter in many directions. This is how we see most objects.</li>
</ul>

<h4>Plane Mirror Images</h4>
<ul>
<li>Same size as object</li>
<li>Same distance behind mirror as object is in front</li>
<li>Virtual (cannot be projected on a screen)</li>
<li>Laterally inverted (left and right swapped)</li>
<li>Upright (not inverted top to bottom)</li>
</ul>

<h3>Refraction of Light</h3>
<p>Refraction occurs because light travels at different speeds in different media.</p>
<p>When light passes from a less dense to a more dense medium: slows down and bends TOWARD the normal.</p>
<p>When light passes from a more dense to a less dense medium: speeds up and bends AWAY from the normal.</p>

<p><strong>Snell''s Law:</strong> n1 sin(angle1) = n2 sin(angle2)</p>
<p>Refractive index (n) = speed of light in vacuum / speed of light in medium</p>
<p>n = c/v</p>

<h4>Total Internal Reflection</h4>
<p>Occurs when light in a dense medium hits the boundary at an angle greater than the critical angle. All light is reflected back into the denser medium.</p>
<p><strong>Applications:</strong> Optical fibres (telecommunications, endoscopes); diamonds (sparkle); periscopes</p>

<h3>Lenses</h3>
<table border="1">
<tr><th>Type</th><th>Shape</th><th>Effect on Light</th><th>Uses</th></tr>
<tr><td>Convex (converging)</td><td>Thicker in middle</td><td>Converges light; brings parallel rays to a focal point</td><td>Magnifying glass, camera, projector, eye (short-sight correction with concave)</td></tr>
<tr><td>Concave (diverging)</td><td>Thinner in middle</td><td>Diverges light; spreads parallel rays apart</td><td>Correcting short-sightedness, peepholes</td></tr>
</table>

<h3>Dispersion of White Light</h3>
<p>White light is a mixture of all visible colors. When passed through a prism, it separates (disperses) into its component colors (spectrum) because different wavelengths refract by different amounts.</p>
<p><strong>Order of colors (ROYGBIV):</strong> Red, Orange, Yellow, Green, Blue, Indigo, Violet</p>
<p>Red refracts least (longest wavelength); Violet refracts most (shortest wavelength)</p>
<p>This also explains rainbows: water droplets act as prisms.</p>

<h3>Sound Waves</h3>
<ul>
<li>Longitudinal mechanical waves (require a medium to travel)</li>
<li>Cannot travel through vacuum</li>
<li>Speed in air: approximately 340 m/s at room temperature</li>
<li>Speed: solid greater than liquid greater than gas (sound travels faster in denser media)</li>
</ul>

<h4>Properties of Sound</h4>
<ul>
<li><strong>Pitch:</strong> Related to frequency. Higher frequency = higher pitch. Human hearing range: 20 Hz to 20,000 Hz</li>
<li><strong>Loudness:</strong> Related to amplitude. Greater amplitude = louder sound. Measured in decibels (dB)</li>
<li><strong>Timbre (quality):</strong> Distinguishes sounds of same pitch and loudness from different sources (waveform shape)</li>
</ul>

<h4>Infrasound and Ultrasound</h4>
<ul>
<li><strong>Infrasound:</strong> Below 20 Hz. Produced by elephants, earthquakes, volcanoes</li>
<li><strong>Ultrasound:</strong> Above 20,000 Hz (20 kHz). Uses: Medical imaging (pregnancy scans), sonar, cleaning equipment, flaw detection in metals</li>
</ul>

<h4>Echo</h4>
<p>A reflected sound wave. Used to calculate distances (sonar, echolocation by bats).</p>
<p>Distance = Speed x Time / 2 (divide by 2 because sound travels to object AND back)</p>

<h3>Eye Defects and Corrections</h3>
<table border="1">
<tr><th>Defect</th><th>Problem</th><th>Correction</th></tr>
<tr><td>Short-sightedness (myopia)</td><td>Image forms in front of retina; can see close objects clearly</td><td>Concave (diverging) lens</td></tr>
<tr><td>Long-sightedness (hyperopia)</td><td>Image forms behind retina; can see distant objects clearly</td><td>Convex (converging) lens</td></tr>
<tr><td>Astigmatism</td><td>Irregular curvature of cornea; blurred vision at all distances</td><td>Cylindrical lens</td></tr>
</table>', 2);

-- ============================================================
-- TOPIC 17: Earth Science and Space
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t17;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t17, 'Earth Structure and Geology', '<h2>Earth Science: Structure and Geology</h2>

<h3>Structure of the Earth</h3>
<table border="1">
<tr><th>Layer</th><th>Composition</th><th>State</th><th>Thickness</th></tr>
<tr><td>Crust</td><td>Silicate rocks (continental crust = granite; oceanic crust = basalt)</td><td>Solid</td><td>5 to 70 km</td></tr>
<tr><td>Mantle</td><td>Silicate minerals (rich in iron and magnesium)</td><td>Mostly solid; plastic upper mantle (asthenosphere)</td><td>About 2900 km</td></tr>
<tr><td>Outer core</td><td>Iron and nickel</td><td>Liquid</td><td>About 2200 km</td></tr>
<tr><td>Inner core</td><td>Iron and nickel</td><td>Solid (extreme pressure)</td><td>About 1200 km radius</td></tr>
</table>

<h3>Plate Tectonics</h3>
<p>The Earth''s lithosphere (crust + upper mantle) is broken into large, moving pieces called tectonic plates. These plates float on the semi-molten asthenosphere and move due to convection currents in the mantle.</p>

<h4>Types of Plate Boundaries</h4>
<table border="1">
<tr><th>Boundary Type</th><th>Movement</th><th>Features</th><th>Examples</th></tr>
<tr><td>Divergent (constructive)</td><td>Plates move apart</td><td>New ocean floor forms; mid-ocean ridges; volcanoes; earthquakes</td><td>Mid-Atlantic Ridge</td></tr>
<tr><td>Convergent (destructive)</td><td>Plates move toward each other</td><td>Subduction (oceanic plate sinks); trenches; volcanic mountains; earthquakes</td><td>Andes Mountains; Japan Trench</td></tr>
<tr><td>Transform (conservative)</td><td>Plates slide past each other</td><td>No creation or destruction of crust; earthquakes; fault lines</td><td>San Andreas Fault</td></tr>
</table>

<h3>Rocks and the Rock Cycle</h3>
<h4>Types of Rocks</h4>
<table border="1">
<tr><th>Rock Type</th><th>How Formed</th><th>Key Features</th><th>Examples</th></tr>
<tr><td>Igneous</td><td>Cooling and solidification of magma (molten rock)</td><td>Crystalline; no fossils; intrusive (slow cooling, large crystals, e.g., granite) or extrusive (fast cooling, small crystals, e.g., basalt)</td><td>Granite, basalt, obsidian, pumice</td></tr>
<tr><td>Sedimentary</td><td>Deposition and compaction of sediments over time</td><td>Layered (strata); may contain fossils; often porous</td><td>Sandstone, limestone, shale, conglomerate, coal</td></tr>
<tr><td>Metamorphic</td><td>Existing rock transformed by heat and/or pressure (without melting)</td><td>May have foliation (layered crystal structure); no fossils (destroyed); harder than original</td><td>Marble (from limestone), slate (from shale), quartzite (from sandstone)</td></tr>
</table>

<h4>The Rock Cycle</h4>
<ul>
<li>Magma cools -> igneous rock</li>
<li>Igneous rock weathered and eroded -> sediment</li>
<li>Sediment compacted and cemented -> sedimentary rock</li>
<li>Any rock under heat and pressure -> metamorphic rock</li>
<li>Any rock melted -> magma (cycle repeats)</li>
</ul>

<h3>Weathering and Erosion</h3>
<h4>Types of Weathering</h4>
<ul>
<li><strong>Physical/Mechanical weathering:</strong> Breaks rock without changing chemical composition. Examples: freeze-thaw (water expands as ice, splitting rock), exfoliation, abrasion</li>
<li><strong>Chemical weathering:</strong> Changes the chemical composition of rock. Examples: oxidation (rusting of iron minerals), carbonation (acid rain dissolves limestone), hydrolysis</li>
<li><strong>Biological weathering:</strong> Plant roots break rock; organisms bore into rock</li>
</ul>

<h3>Volcanoes and Earthquakes</h3>
<h4>Volcanoes</h4>
<p>Form when magma reaches the Earth''s surface. Lava, ash, and gases are ejected.</p>
<p>Found at: divergent plate boundaries; convergent boundaries (subduction zones); hot spots (e.g., Hawaii)</p>

<h4>Earthquakes</h4>
<p>Caused by sudden movement of tectonic plates. Energy released as seismic waves.</p>
<ul>
<li><strong>Focus:</strong> Point inside the Earth where earthquake originates</li>
<li><strong>Epicentre:</strong> Point on Earth''s surface directly above the focus</li>
<li><strong>Richter scale:</strong> Measures earthquake magnitude (logarithmic - each unit = 10x more energy)</li>
<li><strong>P-waves (primary):</strong> Longitudinal, fastest, travel through solid and liquid</li>
<li><strong>S-waves (secondary):</strong> Transverse, slower, travel through solid only</li>
<li><strong>Surface waves:</strong> Cause most damage at the surface</li>
</ul>

<h3>Mineral Resources</h3>
<ul>
<li><strong>Ghana''s key mineral resources:</strong> Gold (Ashanti Region), Bauxite, Manganese, Diamonds, Limestone, Oil (offshore)</li>
<li><strong>Mining methods:</strong> Surface mining/open pit, underground mining, alluvial (placer) mining</li>
<li><strong>Environmental impacts of mining:</strong> Deforestation, water pollution (acid mine drainage), land degradation, displacement of communities</li>
</ul>', 1),

(t17, 'The Solar System and Space', '<h2>The Solar System and Space</h2>

<h3>The Solar System</h3>
<p>The solar system consists of the Sun and all objects that orbit it, including planets, moons, asteroids, comets, and dwarf planets.</p>

<h4>The Sun</h4>
<ul>
<li>A star - a huge ball of hot plasma undergoing nuclear fusion</li>
<li>Primarily hydrogen (73%) and helium (25%)</li>
<li>Nuclear fusion: hydrogen fuses to form helium, releasing enormous amounts of energy (light and heat)</li>
<li>Distance from Earth: about 150 million km (1 AU - Astronomical Unit)</li>
<li>Diameter: about 1.4 million km (109 times Earth''s diameter)</li>
</ul>

<h4>The Planets</h4>
<p>Order from Sun: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune</p>
<p>Memory aid: My Very Excellent Mother Just Served Us Nachos</p>
<table border="1">
<tr><th>Planet</th><th>Type</th><th>Key Features</th></tr>
<tr><td>Mercury</td><td>Terrestrial</td><td>Smallest; no atmosphere; extreme temperature variation</td></tr>
<tr><td>Venus</td><td>Terrestrial</td><td>Hottest planet (strong greenhouse effect); dense CO2 atmosphere; rotates backward</td></tr>
<tr><td>Earth</td><td>Terrestrial</td><td>Only known planet with life; 1 large moon</td></tr>
<tr><td>Mars</td><td>Terrestrial</td><td>Red planet (iron oxide); thin CO2 atmosphere; 2 small moons</td></tr>
<tr><td>Jupiter</td><td>Gas giant</td><td>Largest planet; Great Red Spot (storm); 95 moons</td></tr>
<tr><td>Saturn</td><td>Gas giant</td><td>Spectacular ring system; least dense planet (would float on water)</td></tr>
<tr><td>Uranus</td><td>Ice giant</td><td>Rotates on its side; blue-green color (methane)</td></tr>
<tr><td>Neptune</td><td>Ice giant</td><td>Strongest winds in solar system; 1 large moon (Triton)</td></tr>
</table>

<h4>Other Objects in the Solar System</h4>
<ul>
<li><strong>Dwarf planets:</strong> Pluto, Eris, Ceres (spherical, orbit Sun, but have not cleared their orbital path)</li>
<li><strong>Asteroids:</strong> Rocky/metallic bodies mainly in the asteroid belt between Mars and Jupiter</li>
<li><strong>Comets:</strong> Icy bodies with highly elliptical orbits; develop tails when near Sun</li>
<li><strong>Meteoroids, meteors, meteorites:</strong> Small rocky/metallic objects; become meteors when burning in atmosphere; meteorites reach Earth''s surface</li>
</ul>

<h3>Earth, Moon and Sun Relationships</h3>
<h4>Seasons</h4>
<p>Caused by Earth''s axis being tilted (23.5 degrees) relative to its orbital plane.</p>
<ul>
<li>When Northern Hemisphere is tilted toward Sun: summer in North, winter in South</li>
<li>Seasons are NOT caused by distance from Sun (Earth is actually closer to Sun in Northern winter)</li>
</ul>

<h4>Day and Night</h4>
<p>Caused by Earth''s rotation on its axis (one complete rotation = 24 hours).</p>
<p>Earth rotates from west to east, so Sun appears to rise in the east and set in the west.</p>

<h4>Phases of the Moon</h4>
<p>The Moon takes about 29.5 days to complete one cycle of phases (synodic month).</p>
<p>Phases: New Moon - Waxing Crescent - First Quarter - Waxing Gibbous - Full Moon - Waning Gibbous - Last Quarter - Waning Crescent - New Moon</p>
<p>The same side of the Moon always faces Earth (synchronous rotation).</p>

<h4>Eclipses</h4>
<ul>
<li><strong>Solar eclipse:</strong> Moon passes between Sun and Earth; Moon''s shadow falls on Earth. Only visible from narrow path on Earth.</li>
<li><strong>Lunar eclipse:</strong> Earth passes between Sun and Moon; Earth''s shadow falls on Moon. Visible from anywhere on Earth where Moon is above horizon.</li>
</ul>

<h4>Tides</h4>
<p>Caused by the gravitational pull of the Moon (and to a lesser extent, the Sun) on Earth''s oceans.</p>
<ul>
<li>Spring tides: Sun, Earth, and Moon aligned (new and full moon) - highest tides</li>
<li>Neap tides: Sun and Moon at right angles (quarter moon) - lowest tidal range</li>
<li>Most coastal areas have two high tides and two low tides per day</li>
</ul>

<h3>Stars and the Universe</h3>
<ul>
<li>Stars are massive balls of gas (mainly hydrogen) undergoing nuclear fusion</li>
<li>Galaxies: Collections of billions of stars. Our galaxy = Milky Way</li>
<li>Universe: All of space, time, matter, and energy. Age: approximately 13.8 billion years (Big Bang theory)</li>
<li>Light year: Distance light travels in one year (9.46 x 10^15 m) - used to measure vast distances in space</li>
<li>The Sun is about 26,000 light years from the center of the Milky Way</li>
</ul>

<h3>Satellites</h3>
<p><strong>Natural satellites:</strong> Moons orbiting planets</p>
<p><strong>Artificial satellites:</strong> Human-made objects in orbit around Earth</p>
<ul>
<li>Communication satellites (telecommunications, GPS)</li>
<li>Weather satellites (meteorology)</li>
<li>Scientific satellites (Hubble Space Telescope)</li>
<li>Military satellites</li>
</ul>', 2);

-- ============================================================
-- TOPIC 18: Health, Disease and the Human Body
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t18;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t18, 'Disease, Immunity and Body Systems', '<h2>Health, Disease and the Human Body</h2>

<h3>Definition of Health</h3>
<p>The World Health Organization (WHO) defines health as "a state of complete physical, mental, and social well-being, and not merely the absence of disease or infirmity."</p>

<h3>Types of Diseases</h3>

<h4>1. Communicable (Infectious) Diseases</h4>
<p>Caused by pathogens (disease-causing organisms) and can be spread from person to person.</p>
<table border="1">
<tr><th>Pathogen</th><th>Examples of Diseases</th></tr>
<tr><td>Bacteria</td><td>Tuberculosis (TB), cholera, typhoid, pneumonia, gonorrhea, syphilis</td></tr>
<tr><td>Viruses</td><td>HIV/AIDS, influenza (flu), measles, malaria, COVID-19, Ebola</td></tr>
<tr><td>Fungi</td><td>Ringworm, athlete''s foot, candidiasis (thrush)</td></tr>
<tr><td>Protozoa (parasites)</td><td>Malaria (Plasmodium), sleeping sickness (Trypanosoma), amoebic dysentery</td></tr>
<tr><td>Helminths (worms)</td><td>Tapeworm, roundworm, hookworm, bilharzia (schistosomiasis)</td></tr>
</table>

<h4>2. Non-Communicable Diseases (NCDs)</h4>
<p>Cannot be spread from person to person. Often chronic (long-lasting).</p>
<ul>
<li>Cardiovascular diseases (heart disease, hypertension, stroke)</li>
<li>Cancers</li>
<li>Diabetes mellitus</li>
<li>Respiratory diseases (asthma, COPD)</li>
<li>Nutritional deficiency diseases</li>
<li>Genetic disorders</li>
<li>Mental health disorders</li>
</ul>

<h4>Risk Factors for NCDs</h4>
<ul>
<li>Unhealthy diet (high fat, sugar, salt)</li>
<li>Physical inactivity</li>
<li>Smoking and tobacco use</li>
<li>Excessive alcohol consumption</li>
<li>Obesity</li>
<li>Family history (genetics)</li>
<li>Environmental factors (pollution, radiation)</li>
</ul>

<h3>Malaria (Important WASSCE Topic)</h3>
<ul>
<li><strong>Causative organism:</strong> Plasmodium (a protozoan). Four species: P. falciparum (most dangerous), P. vivax, P. malariae, P. ovale</li>
<li><strong>Vector:</strong> Female Anopheles mosquito</li>
<li><strong>Life cycle:</strong> Mosquito bites infected person (takes up gametocytes) - sexual reproduction in mosquito gut - sporozoites form - mosquito bites healthy person (injects sporozoites) - asexual reproduction in liver and red blood cells - red blood cells burst, releasing merozoites (causes fever)</li>
<li><strong>Symptoms:</strong> Cyclic fever and chills, headache, vomiting, anaemia, splenomegaly (enlarged spleen), in severe cases: coma, death</li>
<li><strong>Prevention:</strong> Insecticide-treated bed nets, indoor residual spraying, eliminating mosquito breeding sites (stagnant water), repellents, antimalarial drugs</li>
<li><strong>Treatment:</strong> Artemisinin-based combination therapy (ACT), quinine</li>
</ul>

<h3>The Immune System</h3>
<h4>Non-specific (Innate) Immunity</h4>
<p>First line of defense against ALL pathogens, not specific to any one type:</p>
<ul>
<li>Skin (physical barrier)</li>
<li>Mucus (traps pathogens in respiratory tract)</li>
<li>Cilia (move mucus and trapped pathogens out)</li>
<li>Stomach acid (kills pathogens in food)</li>
<li>Tears and saliva contain lysozyme (enzyme that breaks down bacterial cell walls)</li>
<li>Inflammation response</li>
<li>Phagocytes (white blood cells that engulf and digest pathogens)</li>
</ul>

<h4>Specific (Adaptive) Immunity</h4>
<p>Responds to specific pathogens; has memory (faster response to second infection):</p>
<ul>
<li><strong>Lymphocytes:</strong>
  <ul>
    <li>B-lymphocytes (B-cells): Produce antibodies specific to antigens on pathogens</li>
    <li>T-lymphocytes (T-cells): Kill infected cells; coordinate immune response</li>
  </ul>
</li>
<li><strong>Antibodies:</strong> Proteins that bind specifically to antigens, marking pathogens for destruction</li>
<li><strong>Memory cells:</strong> Long-lived cells that "remember" previous infections; allow faster response if the same pathogen infects again</li>
</ul>

<h4>Active vs. Passive Immunity</h4>
<table border="1">
<tr><th>Type</th><th>How acquired</th><th>Duration</th><th>Examples</th></tr>
<tr><td>Natural active</td><td>Infection by pathogen</td><td>Long-lasting (sometimes life-long)</td><td>Getting measles; surviving chickenpox</td></tr>
<tr><td>Artificial active</td><td>Vaccination</td><td>Long-lasting (may need boosters)</td><td>Measles vaccine, flu vaccine, COVID-19 vaccine</td></tr>
<tr><td>Natural passive</td><td>Antibodies passed from mother to baby (placenta, breast milk)</td><td>Short-term (weeks to months)</td><td>Maternal antibodies in newborn</td></tr>
<tr><td>Artificial passive</td><td>Injection of antibodies (antiserum)</td><td>Short-term (weeks)</td><td>Rabies antiserum, tetanus antitoxin</td></tr>
</table>

<h3>Vaccination</h3>
<p>A weakened or killed form of a pathogen (or its antigens) is introduced into the body to stimulate an immune response without causing disease. Memory cells are produced, providing future protection.</p>
<p><strong>Herd immunity:</strong> When a large proportion of a population is immune, the spread of disease is limited, protecting even those who are not vaccinated.</p>

<h3>Ghana Expanded Program on Immunization (EPI)</h3>
<p>Key vaccines given in Ghana:</p>
<ul>
<li>BCG - Tuberculosis</li>
<li>Hepatitis B</li>
<li>DPT (Diphtheria, Pertussis, Tetanus)</li>
<li>OPV (Oral Polio Vaccine)</li>
<li>Measles</li>
<li>Yellow Fever</li>
<li>Meningococcal Meningitis A</li>
</ul>', 1),

(t18, 'Major Body Systems', '<h2>Major Body Systems</h2>

<h3>The Circulatory System</h3>
<p>Transports blood (carrying O2, nutrients, hormones, waste) around the body.</p>

<h4>Components of Blood</h4>
<table border="1">
<tr><th>Component</th><th>Appearance</th><th>Function</th></tr>
<tr><td>Red blood cells (erythrocytes)</td><td>Biconcave disc; no nucleus; red (haemoglobin)</td><td>Carry O2 (as oxyhaemoglobin); some CO2</td></tr>
<tr><td>White blood cells (leucocytes)</td><td>Larger; have nucleus; colourless</td><td>Defend against infection (phagocytosis and antibody production)</td></tr>
<tr><td>Platelets (thrombocytes)</td><td>Tiny cell fragments</td><td>Blood clotting</td></tr>
<tr><td>Plasma</td><td>Yellow liquid</td><td>Transports dissolved substances (glucose, CO2, hormones, waste, antibodies)</td></tr>
</table>

<h4>Blood Vessels</h4>
<table border="1">
<tr><th>Feature</th><th>Arteries</th><th>Veins</th><th>Capillaries</th></tr>
<tr><td>Direction</td><td>Away from heart</td><td>Toward heart</td><td>Connect arteries to veins</td></tr>
<tr><td>Blood pressure</td><td>High</td><td>Low</td><td>Very low</td></tr>
<tr><td>Walls</td><td>Thick, muscular, elastic</td><td>Thin, less elastic</td><td>One cell thick</td></tr>
<tr><td>Lumen</td><td>Narrow</td><td>Wide</td><td>Very narrow</td></tr>
<tr><td>Valves</td><td>None (except semilunar at heart)</td><td>Present (prevent backflow)</td><td>None</td></tr>
<tr><td>Blood O2 level</td><td>Usually oxygenated</td><td>Usually deoxygenated</td><td>Exchange occurs here</td></tr>
</table>

<h4>The Heart</h4>
<p>A double pump: right side pumps deoxygenated blood to lungs (pulmonary circulation); left side pumps oxygenated blood to body (systemic circulation).</p>
<p>Heart chambers: right atrium, right ventricle, left atrium, left ventricle</p>
<p>Heart valves: bicuspid (mitral), tricuspid, semilunar valves - prevent backflow</p>
<p>Coronary arteries supply blood to heart muscle itself. Blockage causes heart attack (myocardial infarction).</p>

<h3>The Respiratory System</h3>
<p>Purpose: Gas exchange - taking O2 into blood; removing CO2 from blood</p>

<h4>Pathway of Air</h4>
<p>Nose/Mouth - Trachea - Bronchi - Bronchioles - Alveoli</p>

<h4>Adaptations of Alveoli for Gas Exchange</h4>
<ul>
<li>Very large number (about 700 million) - huge total surface area (approximately 70 m2)</li>
<li>Walls one cell thick - short diffusion distance</li>
<li>Rich blood supply (capillary network) - maintains concentration gradient</li>
<li>Moist surface - gases dissolve for diffusion</li>
</ul>

<h4>Breathing Mechanism (Ventilation)</h4>
<table border="1">
<tr><th>Action</th><th>Inhalation</th><th>Exhalation</th></tr>
<tr><td>Diaphragm</td><td>Contracts (flattens)</td><td>Relaxes (domes up)</td></tr>
<tr><td>Intercostal muscles</td><td>External muscles contract; ribs move up and out</td><td>Relax; ribs move down and in</td></tr>
<tr><td>Thoracic volume</td><td>Increases</td><td>Decreases</td></tr>
<tr><td>Pressure in lungs</td><td>Decreases (below atmospheric)</td><td>Increases (above atmospheric)</td></tr>
<tr><td>Air flow</td><td>Air flows in</td><td>Air flows out</td></tr>
</table>

<h3>The Nervous System</h3>
<p>Coordinates and controls body activities through electrical signals (nerve impulses).</p>

<h4>Divisions</h4>
<ul>
<li><strong>Central Nervous System (CNS):</strong> Brain and spinal cord</li>
<li><strong>Peripheral Nervous System (PNS):</strong> All nerves outside CNS</li>
</ul>

<h4>Types of Neurons</h4>
<ul>
<li><strong>Sensory (afferent) neurons:</strong> Carry impulses FROM receptors TO CNS</li>
<li><strong>Motor (efferent) neurons:</strong> Carry impulses FROM CNS TO effectors (muscles and glands)</li>
<li><strong>Relay (interneurons):</strong> Connect sensory and motor neurons within CNS</li>
</ul>

<h4>Reflex Arc</h4>
<p>A rapid, automatic response to a stimulus that does not require conscious thought.</p>
<p>Pathway: Receptor - Sensory neuron - Relay neuron (in spinal cord) - Motor neuron - Effector</p>
<p>Examples: Knee-jerk reflex, withdrawing hand from heat, blinking, pupil dilation</p>

<h3>Endocrine System (Hormones)</h3>
<p>Chemical messengers (hormones) produced by endocrine glands, transported in blood to target organs.</p>
<table border="1">
<tr><th>Gland</th><th>Hormone</th><th>Function</th></tr>
<tr><td>Pituitary (master gland)</td><td>FSH, LH, GH, ADH, TSH</td><td>Controls other glands; growth; water balance</td></tr>
<tr><td>Thyroid</td><td>Thyroxine</td><td>Controls metabolic rate; growth and development</td></tr>
<tr><td>Pancreas</td><td>Insulin, Glucagon</td><td>Regulate blood glucose levels</td></tr>
<tr><td>Adrenal</td><td>Adrenaline (epinephrine)</td><td>Fight or flight response; increases heart rate, breathing</td></tr>
<tr><td>Ovaries</td><td>Oestrogen, Progesterone</td><td>Female sexual development; menstrual cycle</td></tr>
<tr><td>Testes</td><td>Testosterone</td><td>Male sexual development; sperm production</td></tr>
</table>

<h4>Insulin and Blood Glucose Control</h4>
<ul>
<li>Blood glucose too high: Pancreas releases <strong>insulin</strong> - cells absorb glucose; excess converted to glycogen in liver</li>
<li>Blood glucose too low: Pancreas releases <strong>glucagon</strong> - glycogen broken down to glucose in liver (glycogenolysis)</li>
<li><strong>Diabetes mellitus:</strong> Failure of blood glucose regulation. Type 1 (no insulin produced - autoimmune); Type 2 (cells resist insulin - lifestyle-related)</li>
</ul>', 2);

-- ============================================================
-- TOPIC 19: Technology and Society
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t19;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t19, 'Technology, Innovation and Society', '<h2>Technology, Innovation and Society</h2>

<h3>What is Technology?</h3>
<p>Technology is the application of scientific knowledge and skills to solve practical problems, satisfy human needs, and improve quality of life. It encompasses tools, machines, techniques, systems, and processes.</p>

<h3>Key Areas of Technology</h3>

<h4>1. Information and Communication Technology (ICT)</h4>
<ul>
<li>Computers, internet, smartphones, social media</li>
<li><strong>Benefits:</strong> Rapid communication; access to information; e-learning; e-commerce; telemedicine; digital banking (mobile money in Ghana)</li>
<li><strong>Risks:</strong> Cybercrime; privacy issues; digital divide; health effects (eye strain, sedentary lifestyle)</li>
</ul>

<h4>2. Agricultural Technology</h4>
<ul>
<li>Mechanization: tractors, irrigation systems, combines</li>
<li>Improved seeds (high-yield varieties, drought-resistant)</li>
<li>Fertilizers and pesticides</li>
<li>Genetic modification (GMOs) - controversial</li>
<li>Greenhouse farming and hydroponics</li>
<li><strong>Green Revolution:</strong> Use of technology to dramatically increase food production in developing countries</li>
</ul>

<h4>3. Medical Technology</h4>
<ul>
<li>Diagnostic imaging: X-rays, ultrasound (sonography), CT scans, MRI</li>
<li>Surgical robots and minimally invasive surgery</li>
<li>Vaccines and antibiotics</li>
<li>Genetic testing and gene therapy</li>
<li>Prosthetics and artificial organs</li>
<li>Telemedicine</li>
</ul>

<h4>4. Energy Technology</h4>
<ul>
<li><strong>Fossil fuels:</strong> Coal, oil, natural gas. Non-renewable; produce CO2 (climate change)</li>
<li><strong>Renewable energy:</strong> Does not run out; generally cleaner
  <ul>
    <li>Solar energy: photovoltaic cells; solar thermal</li>
    <li>Wind energy: wind turbines</li>
    <li>Hydroelectric: dams; Ghana''s Akosombo Dam on the Volta River</li>
    <li>Geothermal: heat from Earth''s interior</li>
    <li>Biomass: burning organic matter; biogas</li>
    <li>Tidal and wave energy</li>
  </ul>
</li>
<li><strong>Nuclear energy:</strong> From fission (splitting heavy atoms like uranium). Low carbon but produces radioactive waste.</li>
</ul>

<h3>Biotechnology</h3>
<p>Use of living organisms or biological systems to develop products and processes for human benefit.</p>
<ul>
<li><strong>Traditional biotechnology:</strong> Fermentation (bread, beer, cheese, yoghurt); selective breeding</li>
<li><strong>Modern biotechnology:</strong> Genetic engineering; recombinant DNA technology; cloning; stem cell research</li>
<li><strong>Examples:</strong> Insulin produced by genetically engineered bacteria; Bt crops (pest-resistant); golden rice (Vitamin A enhanced); PCR for disease diagnosis</li>
</ul>

<h3>Science, Technology and Development</h3>
<h4>Positive Impacts of Technology on Society</h4>
<ul>
<li>Improved healthcare and longer life expectancy</li>
<li>Increased food production (food security)</li>
<li>Better communication and access to information</li>
<li>Economic development and job creation</li>
<li>Improved transportation and infrastructure</li>
<li>Access to clean water and sanitation</li>
</ul>

<h4>Negative Impacts of Technology</h4>
<ul>
<li>Environmental pollution and resource depletion</li>
<li>Loss of traditional skills and knowledge</li>
<li>Unemployment (automation replacing workers)</li>
<li>Social isolation and mental health issues</li>
<li>Weapons development and warfare</li>
<li>Digital divide (inequality in access)</li>
</ul>

<h3>Ethical Issues in Science and Technology</h3>
<ul>
<li>Genetic modification of crops and organisms (GMOs)</li>
<li>Human cloning</li>
<li>Stem cell research (especially embryonic)</li>
<li>Animal testing</li>
<li>Nuclear weapons and power</li>
<li>Artificial intelligence and surveillance</li>
<li>Privacy in the digital age</li>
</ul>

<h3>Appropriate Technology</h3>
<p>Technology suitable for the social and economic conditions of a community, especially in developing countries. Characteristics:</p>
<ul>
<li>Low cost; uses locally available resources</li>
<li>Sustainable and environmentally friendly</li>
<li>Simple enough to be maintained and operated locally</li>
<li>Meets actual community needs</li>
</ul>
<p>Examples: Hand pumps for clean water; solar-powered water pumps; improved cookstoves; biogas digesters</p>', 1),

(t19, 'Nuclear Technology and Materials Science', '<h2>Nuclear Technology and Materials Science</h2>

<h3>Radioactivity</h3>
<p>Some atomic nuclei are unstable and spontaneously emit radiation to become more stable. This is called radioactive decay.</p>

<h4>Types of Nuclear Radiation</h4>
<table border="1">
<tr><th>Type</th><th>Symbol</th><th>Nature</th><th>Charge</th><th>Mass</th><th>Penetrating Power</th><th>Stopped By</th></tr>
<tr><td>Alpha (alpha)</td><td>He-4 nucleus</td><td>2 protons + 2 neutrons</td><td>+2</td><td>4 amu</td><td>Lowest</td><td>Paper/skin</td></tr>
<tr><td>Beta (beta)</td><td>Electron</td><td>High-speed electron from nucleus</td><td>-1</td><td>Negligible</td><td>Medium</td><td>Aluminium sheet (few mm)</td></tr>
<tr><td>Gamma (gamma)</td><td>EM wave</td><td>High-energy electromagnetic radiation</td><td>0</td><td>0</td><td>Highest</td><td>Thick lead or concrete</td></tr>
</table>

<h4>Half-Life</h4>
<p>The time for half the radioactive atoms in a sample to decay. Each radioactive isotope has a characteristic half-life.</p>
<p>Example: If half-life = 10 minutes and initial count = 800:</p>
<ul>
<li>After 10 min: 400</li>
<li>After 20 min: 200</li>
<li>After 30 min: 100</li>
</ul>
<p>After n half-lives: N = N0 x (1/2)^n</p>

<h4>Uses of Radioactivity</h4>
<table border="1">
<tr><th>Use</th><th>Isotope/Radiation</th><th>Application</th></tr>
<tr><td>Medical imaging</td><td>Technetium-99m</td><td>PET and gamma camera scans</td></tr>
<tr><td>Cancer treatment</td><td>Gamma radiation</td><td>Radiotherapy kills cancer cells</td></tr>
<tr><td>Sterilization</td><td>Gamma radiation</td><td>Sterilizing medical equipment; food irradiation</td></tr>
<tr><td>Radiocarbon dating</td><td>Carbon-14</td><td>Dating archaeological artefacts</td></tr>
<tr><td>Tracers</td><td>Various</td><td>Monitoring groundwater, detecting leaks in pipes</td></tr>
<tr><td>Smoke detectors</td><td>Americium-241 (alpha)</td><td>Detects smoke by measuring ionization current</td></tr>
<tr><td>Nuclear power</td><td>Uranium-235</td><td>Generate electricity via nuclear fission</td></tr>
</table>

<h4>Dangers of Radiation</h4>
<ul>
<li>Ionizes molecules in cells, damaging DNA</li>
<li>Can cause mutations, cancer, radiation sickness</li>
<li>High doses can be fatal</li>
</ul>
<p><strong>Protection measures:</strong> Distance (inverse square law: intensity decreases with square of distance), shielding (lead, concrete), time (minimize exposure duration), monitoring (dosimeters)</p>

<h3>Materials Science</h3>

<h4>Natural vs. Synthetic Materials</h4>
<table border="1">
<tr><th>Natural Materials</th><th>Examples</th><th>Synthetic Materials</th><th>Examples</th></tr>
<tr><td>Cotton, wool, silk</td><td>Fibres</td><td>Nylon, polyester, rayon</td><td>Synthetic fibres</td></tr>
<tr><td>Wood, stone, clay</td><td>Building materials</td><td>Concrete, steel, glass</td><td>Construction materials</td></tr>
<tr><td>Natural rubber</td><td>Latex from trees</td><td>Synthetic rubber</td><td>Manufactured polymers</td></tr>
<tr><td>Metals (iron, gold)</td><td>From ores</td><td>Alloys (steel, brass, bronze)</td><td>Mixed metals</td></tr>
</table>

<h4>Polymers (Plastics)</h4>
<p>Large molecules made of many repeated units (monomers) linked together by polymerization.</p>
<ul>
<li><strong>Addition polymers:</strong> Monomers with double bonds join without losing atoms (e.g., polyethylene from ethene)</li>
<li><strong>Condensation polymers:</strong> Monomers join with loss of small molecules (usually water) (e.g., nylon, polyester, proteins, DNA)</li>
</ul>
<p><strong>Problems with plastics:</strong> Non-biodegradable; accumulate in environment; harm wildlife; microplastics in food chain</p>

<h4>Alloys</h4>
<p>A mixture of two or more metals (or a metal with a non-metal).</p>
<table border="1">
<tr><th>Alloy</th><th>Components</th><th>Properties/Uses</th></tr>
<tr><td>Steel</td><td>Iron + Carbon</td><td>Stronger than iron; construction, tools</td></tr>
<tr><td>Stainless steel</td><td>Iron + Carbon + Chromium + Nickel</td><td>Rust-resistant; cutlery, medical instruments</td></tr>
<tr><td>Brass</td><td>Copper + Zinc</td><td>Corrosion-resistant; musical instruments, fittings</td></tr>
<tr><td>Bronze</td><td>Copper + Tin</td><td>Hard, corrosion-resistant; coins, sculptures, bells</td></tr>
<tr><td>Duralumin</td><td>Aluminium + Copper + Mg + Mn</td><td>Light but strong; aircraft construction</td></tr>
<tr><td>Solder</td><td>Tin + Lead</td><td>Low melting point; joining metals in electronics</td></tr>
</table>
<p>Alloys are harder and stronger than pure metals because the differently sized atoms disrupt the regular lattice, making it harder for layers to slide over each other.</p>', 2);

-- ============================================================
-- TOPIC 20: Environmental Chemistry and Pollution
-- ============================================================
DELETE FROM topic_sections WHERE topic_id = t20;

INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t20, 'Environmental Chemistry', '<h2>Environmental Chemistry and Pollution</h2>

<h3>Water Chemistry</h3>

<h4>The Water Cycle (Hydrological Cycle)</h4>
<p>The continuous movement of water through the environment:</p>
<ol>
<li><strong>Evaporation:</strong> Sun heats water in oceans, lakes, rivers -> water vapour</li>
<li><strong>Transpiration:</strong> Plants release water vapour through stomata</li>
<li><strong>Condensation:</strong> Water vapour cools -> forms clouds (tiny droplets)</li>
<li><strong>Precipitation:</strong> Rain, snow, hail falls from clouds</li>
<li><strong>Runoff/Infiltration:</strong> Water flows over land into rivers; or soaks into ground (groundwater)</li>
<li><strong>Collection:</strong> Water accumulates in oceans, lakes, groundwater</li>
</ol>

<h4>Hard and Soft Water</h4>
<p><strong>Hard water:</strong> Contains dissolved calcium (Ca2+) and magnesium (Mg2+) ions (from limestone and chalk). Does not lather easily with soap; forms scum.</p>
<p><strong>Soft water:</strong> Low concentration of Ca2+ and Mg2+ ions. Lathers easily with soap.</p>

<p><strong>Types of hardness:</strong></p>
<ul>
<li><strong>Temporary hardness:</strong> Caused by dissolved calcium hydrogencarbonate Ca(HCO3)2. Removed by boiling: Ca(HCO3)2 -> CaCO3 (scale/limescale) + H2O + CO2</li>
<li><strong>Permanent hardness:</strong> Caused by dissolved calcium sulfate (CaSO4) and magnesium sulfate. Cannot be removed by boiling.</li>
</ul>

<p><strong>Methods of softening water:</strong></p>
<ul>
<li>Boiling (removes temporary hardness only)</li>
<li>Adding washing soda (Na2CO3) - precipitates Ca2+ as CaCO3</li>
<li>Ion exchange resin - replaces Ca2+ and Mg2+ with Na+ or H+</li>
<li>Distillation (removes all ions)</li>
</ul>

<h4>Water Purification</h4>
<p>Making water safe to drink (potable water):</p>
<ol>
<li><strong>Screening/Sedimentation:</strong> Large particles settle or are filtered out</li>
<li><strong>Coagulation/Flocculation:</strong> Alum (aluminium sulfate) added; fine particles clump together (flocs) and settle</li>
<li><strong>Filtration:</strong> Water passes through sand and gravel filters; removes fine particles and microorganisms</li>
<li><strong>Chlorination:</strong> Chlorine gas or chlorine compounds added; kills remaining bacteria and viruses</li>
<li><strong>pH adjustment:</strong> Lime added to neutralize acidity</li>
</ol>

<h3>Air Chemistry</h3>

<h4>Composition of Clean Air</h4>
<table border="1">
<tr><th>Gas</th><th>Percentage</th></tr>
<tr><td>Nitrogen (N2)</td><td>About 78%</td></tr>
<tr><td>Oxygen (O2)</td><td>About 21%</td></tr>
<tr><td>Argon (Ar)</td><td>About 0.9%</td></tr>
<tr><td>Carbon dioxide (CO2)</td><td>About 0.04%</td></tr>
<tr><td>Other gases (Ne, He, etc.)</td><td>Trace amounts</td></tr>
<tr><td>Water vapour</td><td>Variable (0-4%)</td></tr>
</table>

<h4>Tests for Common Gases</h4>
<table border="1">
<tr><th>Gas</th><th>Test</th><th>Result</th></tr>
<tr><td>Oxygen (O2)</td><td>Glowing splint</td><td>Splint relights</td></tr>
<tr><td>Hydrogen (H2)</td><td>Burning splint</td><td>Squeaky pop</td></tr>
<tr><td>Carbon dioxide (CO2)</td><td>Limewater (Ca(OH)2)</td><td>Turns milky/cloudy</td></tr>
<tr><td>Chlorine (Cl2)</td><td>Damp litmus paper</td><td>Bleaches (turns white)</td></tr>
<tr><td>Ammonia (NH3)</td><td>Damp red litmus paper</td><td>Turns blue</td></tr>
<tr><td>Water vapour (H2O)</td><td>Anhydrous cobalt chloride</td><td>Blue to pink (or white)</td></tr>
<tr><td>Sulfur dioxide (SO2)</td><td>Acidified potassium dichromate</td><td>Orange to green</td></tr>
</table>

<h3>Rusting of Iron</h3>
<p>Rusting is the electrochemical corrosion of iron to form hydrated iron(III) oxide (Fe2O3.xH2O - rust).</p>
<p><strong>Conditions needed for rusting:</strong> Both oxygen AND water (moisture) must be present.</p>

<h4>Prevention of Rusting</h4>
<table border="1">
<tr><th>Method</th><th>How it works</th><th>Example</th></tr>
<tr><td>Painting</td><td>Creates physical barrier against O2 and H2O</td><td>Bridges, cars, buildings</td></tr>
<tr><td>Oiling/Greasing</td><td>Physical barrier</td><td>Machine parts, tools</td></tr>
<tr><td>Electroplating</td><td>Coating with another metal (tin, chromium)</td><td>Tin cans, chrome-plated faucets</td></tr>
<tr><td>Galvanizing</td><td>Coating with zinc - zinc also acts as sacrificial anode</td><td>Galvanized iron roof sheets</td></tr>
<tr><td>Alloying</td><td>Adding chromium creates stainless steel</td><td>Stainless steel cutlery, sinks</td></tr>
<tr><td>Sacrificial protection</td><td>More reactive metal attached; corrodes instead of iron</td><td>Magnesium blocks on ships; zinc blocks on pipelines</td></tr>
<tr><td>Cathodic protection</td><td>Making iron the cathode in electrochemical cell</td><td>Underground pipelines</td></tr>
</table>', 1),

(t20, 'Pollution, Its Effects and Control', '<h2>Pollution: Effects and Control</h2>

<h3>Types of Pollution and Their Causes</h3>

<h4>Air Pollution</h4>
<table border="1">
<tr><th>Pollutant</th><th>Sources</th><th>Effects</th></tr>
<tr><td>Carbon monoxide (CO)</td><td>Incomplete combustion of fossil fuels, vehicles</td><td>Toxic - binds to haemoglobin preventing O2 transport; can be fatal</td></tr>
<tr><td>Carbon dioxide (CO2)</td><td>Burning fossil fuels, deforestation, respiration</td><td>Greenhouse gas - global warming and climate change</td></tr>
<tr><td>Sulfur dioxide (SO2)</td><td>Burning coal and oil (sulfur impurities), smelting</td><td>Acid rain; respiratory irritant; damages vegetation</td></tr>
<tr><td>Nitrogen oxides (NOx)</td><td>Vehicle engines; power plants (high temp combustion)</td><td>Acid rain; photochemical smog; respiratory problems</td></tr>
<tr><td>Chlorofluorocarbons (CFCs)</td><td>Old refrigerants, aerosols, foam packaging</td><td>Ozone depletion</td></tr>
<tr><td>Particulate matter (PM2.5, PM10)</td><td>Vehicles, industry, burning, dust</td><td>Respiratory and cardiovascular diseases; reduced visibility</td></tr>
<tr><td>Lead (Pb)</td><td>Lead paint, formerly leaded petrol</td><td>Neurotoxin - especially harmful to children; affects brain development</td></tr>
<tr><td>Methane (CH4)</td><td>Livestock, rice paddies, landfills, natural gas leaks</td><td>Potent greenhouse gas</td></tr>
</table>

<h4>Water Pollution</h4>
<ul>
<li><strong>Sewage/organic waste:</strong> Increases BOD; eutrophication; waterborne diseases (cholera, typhoid)</li>
<li><strong>Agricultural runoff:</strong> Nitrates and phosphates cause eutrophication; pesticides harm aquatic life and accumulate in food chains</li>
<li><strong>Industrial effluents:</strong> Heavy metals (mercury, lead, cadmium, arsenic); acids; toxic organic chemicals</li>
<li><strong>Oil spills:</strong> Coat feathers/fur of wildlife; smother aquatic plants; toxic to marine life</li>
<li><strong>Plastic waste:</strong> Microplastics enter food chains; entangle and harm wildlife</li>
<li><strong>Thermal pollution:</strong> Warm water discharge from power plants; reduces dissolved O2; harms aquatic life</li>
</ul>

<h4>Soil Pollution</h4>
<ul>
<li>Pesticides and herbicides</li>
<li>Heavy metals from mining and industry</li>
<li>Solid waste disposal</li>
<li>Acid deposition</li>
<li>Improper disposal of hazardous materials</li>
</ul>

<h3>Bioaccumulation and Biomagnification</h3>
<p><strong>Bioaccumulation:</strong> Build-up of a substance (toxin) in a single organism over its lifetime.</p>
<p><strong>Biomagnification:</strong> Increase in concentration of a pollutant as it moves up the food chain. Higher trophic levels have much higher concentrations than lower levels.</p>
<p>Classic example: DDT (a pesticide) - concentrations increased dramatically from plankton to fish to birds (eagles); caused thin eggshells and population decline in birds of prey.</p>
<p>Mercury in fish: large predatory fish (swordfish, tuna, shark) have highest mercury levels.</p>

<h3>Greenhouse Effect and Climate Change</h3>
<h4>Natural vs. Enhanced Greenhouse Effect</h4>
<ul>
<li><strong>Natural greenhouse effect:</strong> Essential for life on Earth; without it, average surface temperature would be about -18 degrees C instead of +15 degrees C</li>
<li><strong>Enhanced greenhouse effect:</strong> Human activities increase greenhouse gas concentrations -> too much heat trapped -> global warming</li>
</ul>

<h4>Evidence for Climate Change</h4>
<ul>
<li>Rising global average temperatures</li>
<li>Melting glaciers and polar ice</li>
<li>Rising sea levels</li>
<li>More frequent and intense extreme weather events</li>
<li>Changes in species distributions and migration patterns</li>
<li>Ocean acidification (CO2 dissolves in seawater forming carbonic acid)</li>
</ul>

<h4>Reducing Climate Change</h4>
<ul>
<li>Switching to renewable energy sources</li>
<li>Improving energy efficiency</li>
<li>Reducing deforestation; increasing afforestation</li>
<li>Carbon capture and storage</li>
<li>Changing diet (less meat consumption)</li>
<li>International agreements (Paris Agreement)</li>
</ul>

<h3>Waste Management</h3>
<h4>The 3Rs (and more)</h4>
<ul>
<li><strong>Reduce:</strong> Use less material/energy in the first place</li>
<li><strong>Reuse:</strong> Use items more than once before disposal</li>
<li><strong>Recycle:</strong> Process waste materials into new products</li>
<li><strong>Recover:</strong> Extract energy from waste (incineration with energy recovery)</li>
<li><strong>Repair:</strong> Fix broken items instead of discarding</li>
</ul>

<h4>Composting</h4>
<p>Biological decomposition of organic waste (food scraps, garden waste) by microorganisms into nutrient-rich compost. Returns nutrients to soil; reduces landfill waste.</p>

<h4>Environmental Legislation in Ghana</h4>
<ul>
<li>Environmental Protection Agency (EPA) Act 1994</li>
<li>Ghana Environmental Assessment Procedures</li>
<li>Water Resources Commission Act</li>
<li>Forest and Wildlife Policy</li>
<li>Various pollution control regulations</li>
</ul>

<h3>Sustainable Development</h3>
<p>Development that meets the needs of the present generation without compromising the ability of future generations to meet their own needs. (Brundtland Report, 1987)</p>
<p>Three pillars of sustainable development:</p>
<ul>
<li><strong>Economic:</strong> Economic growth and development</li>
<li><strong>Social:</strong> Social equity, health, education, well-being</li>
<li><strong>Environmental:</strong> Protect ecosystems, biodiversity, natural resources</li>
</ul>
<p>UN Sustainable Development Goals (SDGs): 17 global goals adopted in 2015, to be achieved by 2030.</p>

<h3>Green Chemistry</h3>
<p>An approach to chemistry that aims to prevent pollution at source rather than treating it after production. Key principles include:</p>
<ul>
<li>Prevent waste rather than treating it</li>
<li>Design safer chemicals and processes</li>
<li>Use renewable feedstocks</li>
<li>Design for degradation (biodegradable products)</li>
<li>Use catalysts and less energy</li>
<li>Avoid toxic reagents and solvents</li>
</ul>', 2);

END $$;
