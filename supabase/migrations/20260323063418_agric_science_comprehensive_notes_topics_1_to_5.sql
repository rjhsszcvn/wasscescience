/*
  # Agricultural Science Comprehensive Notes - Topics 1 to 5

  Adds in-depth study notes for topics 1 through 5 of Agricultural Science:
  1. Introduction to Agriculture
  2. Types of Farming Systems
  3. Soil Science and Management
  4. Crop Production
  5. Plant Nutrition and Fertilizers

  Each topic gets rich HTML-formatted content with definitions, tables, diagrams
  descriptions, examples, and WASSCE exam-focused key points.
*/

UPDATE topics SET content = '
<h2>Introduction to Agriculture</h2>

<h3>1.1 Definition and Meaning of Agriculture</h3>
<p>Agriculture is the science, art, and practice of cultivating soil, growing crops, raising livestock, and processing and marketing the resulting products. It is the backbone of Ghana''s economy and the livelihoods of over half the population.</p>
<p><strong>Key Definition:</strong> Agriculture encompasses all activities involved in the production of food, fibre, fuel, and raw materials from living organisms — plants and animals.</p>

<h3>1.2 Branches of Agriculture</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Branch</th><th>Definition</th><th>Examples</th></tr></thead>
  <tbody>
    <tr><td><strong>Agronomy</strong></td><td>Science of soil management and production of field crops</td><td>Maize, rice, cassava, wheat production</td></tr>
    <tr><td><strong>Horticulture</strong></td><td>Cultivation of garden plants — vegetables, fruits, ornamentals</td><td>Tomato, mango, ornamental flowers</td></tr>
    <tr><td><strong>Animal Husbandry</strong></td><td>Rearing and breeding of domestic animals for food and services</td><td>Cattle, sheep, goats, pigs</td></tr>
    <tr><td><strong>Fisheries (Aquaculture)</strong></td><td>Management and exploitation of fish and other aquatic organisms</td><td>Catfish, tilapia ponds</td></tr>
    <tr><td><strong>Forestry</strong></td><td>Management and utilization of forest resources</td><td>Timber production, reforestation</td></tr>
    <tr><td><strong>Agricultural Engineering</strong></td><td>Application of engineering principles to agricultural production</td><td>Irrigation, machinery, farm structures</td></tr>
    <tr><td><strong>Agricultural Economics</strong></td><td>Application of economic principles to agricultural production and marketing</td><td>Farm budgeting, pricing, marketing</td></tr>
    <tr><td><strong>Entomology</strong></td><td>Study of insects in relation to agriculture</td><td>Pest identification and control</td></tr>
    <tr><td><strong>Plant Pathology</strong></td><td>Study of plant diseases and their management</td><td>Fungal, bacterial, viral diseases</td></tr>
  </tbody>
</table>

<h3>1.3 Importance of Agriculture</h3>
<h4>Economic Importance</h4>
<ul>
  <li><strong>Source of income and employment:</strong> Agriculture employs about 54% of Ghana''s workforce directly and indirectly.</li>
  <li><strong>Foreign exchange earnings:</strong> Ghana earns substantial foreign exchange from export crops like cocoa, pineapple, cashew, and shea.</li>
  <li><strong>Contribution to GDP:</strong> Agriculture contributes approximately 20–25% of Ghana''s GDP.</li>
  <li><strong>Raw materials for industries:</strong> Cotton, cocoa, palm fruit, rubber, and timber supply local and international industries.</li>
  <li><strong>Market for goods and services:</strong> Farmers purchase machinery, chemicals, and consumer goods, stimulating the broader economy.</li>
</ul>

<h4>Social Importance</h4>
<ul>
  <li>Provides food security and reduces hunger and malnutrition.</li>
  <li>Supports rural development and reduces urban migration.</li>
  <li>Preserves cultural traditions tied to farming practices.</li>
  <li>Promotes community development through cooperatives.</li>
</ul>

<h4>Environmental Importance</h4>
<ul>
  <li>Maintains biodiversity through crop variety preservation.</li>
  <li>Well-managed farms act as carbon sinks.</li>
  <li>Agroforestry practices help control soil erosion.</li>
</ul>

<h3>1.4 History and Development of Agriculture in West Africa</h3>
<p>West African agriculture has evolved through several distinct phases:</p>
<ol>
  <li><strong>Hunting and Gathering (Pre-agricultural era):</strong> Early humans depended entirely on wild plants and animals for food.</li>
  <li><strong>Shifting Cultivation (~10,000 BC onwards):</strong> Communities cleared land, cultivated it for 2–3 years, then moved on to new land as soil became exhausted. Allowed fallow land to regenerate.</li>
  <li><strong>Settled Farming (Iron Age ~500 BC):</strong> Iron tools enabled deeper tillage, larger clearings, and more permanent settlements. Communities grew staple crops like yam, sorghum, and millet.</li>
  <li><strong>Colonial Era Agriculture (1800s–1960):</strong> Colonial powers introduced cash crop farming — cocoa in Ghana (1879), groundnuts in Senegal, cotton in Nigeria. Export-oriented farming replaced subsistence in many areas.</li>
  <li><strong>Post-Independence Era (1960–present):</strong> Government-led agricultural policies, Green Revolution technologies, fertiliser subsidies, and mechanisation programmes were introduced.</li>
  <li><strong>Modern Era (2000–present):</strong> Introduction of biotechnology, GPS-guided precision farming, greenhouse agriculture, and mobile-based extension services.</li>
</ol>

<h3>1.5 Factors Affecting Agricultural Production</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Factor</th><th>How It Affects Production</th></tr></thead>
  <tbody>
    <tr><td><strong>Climate</strong></td><td>Rainfall, temperature, humidity, and sunshine determine what can be grown and when.</td></tr>
    <tr><td><strong>Soil Type</strong></td><td>Soil texture, structure, fertility, and pH affect crop growth and yield.</td></tr>
    <tr><td><strong>Finance/Capital</strong></td><td>Access to credit determines the level of input use and technology adoption.</td></tr>
    <tr><td><strong>Labour</strong></td><td>Availability of farm labour affects timeliness of operations and farm size.</td></tr>
    <tr><td><strong>Land</strong></td><td>Land tenure, size, and location influence investment in land improvements.</td></tr>
    <tr><td><strong>Technology</strong></td><td>Improved varieties, machinery, and techniques increase productivity.</td></tr>
    <tr><td><strong>Markets</strong></td><td>Market access and prices determine profitability and production decisions.</td></tr>
    <tr><td><strong>Government Policy</strong></td><td>Subsidies, trade policies, and research investments shape farming incentives.</td></tr>
  </tbody>
</table>

<h3>1.6 Agricultural Zones of Ghana</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Zone</th><th>Regions</th><th>Key Crops</th><th>Rainfall</th></tr></thead>
  <tbody>
    <tr><td><strong>High Forest Zone</strong></td><td>Western, Central, Eastern, Ashanti</td><td>Cocoa, plantain, oil palm, timber</td><td>1,500–2,200 mm/year (bimodal)</td></tr>
    <tr><td><strong>Forest-Savannah Transition</strong></td><td>Bono, Bono East, Ahafo</td><td>Cocoa, yam, cassava, maize</td><td>1,200–1,500 mm/year</td></tr>
    <tr><td><strong>Guinea Savannah</strong></td><td>Brong-Ahafo north, Northern</td><td>Maize, yam, groundnuts, cotton, cowpea</td><td>900–1,200 mm/year (unimodal)</td></tr>
    <tr><td><strong>Sudan Savannah</strong></td><td>Upper East, Upper West</td><td>Sorghum, millet, groundnuts, shea</td><td>600–900 mm/year</td></tr>
    <tr><td><strong>Coastal Savannah</strong></td><td>Greater Accra, parts of Volta</td><td>Vegetables, cassava, fishing</td><td>750–900 mm/year (bimodal)</td></tr>
  </tbody>
</table>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Agriculture is the science, art, and practice of cultivating soil, growing crops, and raising livestock.</li>
  <li>Know all 9 branches of agriculture with examples from Ghana/West Africa.</li>
  <li>Agriculture contributes ~20–25% of Ghana''s GDP and employs ~54% of the workforce.</li>
  <li>Ghana earns foreign exchange from cocoa, pineapple, cashew, timber, and rubber.</li>
  <li>The five agricultural zones of Ghana have distinct rainfall patterns and crops.</li>
  <li>Factors affecting agriculture: climate, soil, finance, labour, land, technology, markets, policy.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000001';

UPDATE topics SET content = '
<h2>Types of Farming Systems</h2>

<h3>2.1 Overview of Farming Systems</h3>
<p>A farming system is the combination of farm enterprises — crops, livestock, trees, and off-farm activities — that a household manages according to its resources, goals, and environment. Understanding farming systems is critical for improving productivity and sustainability.</p>

<h3>2.2 Classification Based on Scale and Purpose</h3>

<h4>A. Subsistence Farming</h4>
<p><strong>Definition:</strong> Farming practised mainly to produce food for the farmer and family, with little or no surplus for sale.</p>
<ul>
  <li>Characterised by small farm sizes (0.5–2 hectares)</li>
  <li>Low input use (mostly family labour, minimal fertiliser)</li>
  <li>Simple hand tools (hoe, cutlass, digging stick)</li>
  <li>Mixed cropping to ensure food variety and risk reduction</li>
  <li>Dominant in rural West Africa — Ghana, Nigeria, Ivory Coast</li>
</ul>
<p><strong>Advantages:</strong> Low risk; diverse diet; maintains traditional varieties; resilient to market fluctuations.</p>
<p><strong>Disadvantages:</strong> Low productivity; food insecurity when crops fail; little income for education or healthcare.</p>

<h4>B. Commercial Farming</h4>
<p><strong>Definition:</strong> Large-scale farming primarily for profit, using modern inputs and technology.</p>
<ul>
  <li>Large farm sizes (50–10,000+ hectares)</li>
  <li>High input use: improved seeds, fertilisers, pesticides, machinery</li>
  <li>Employs hired labour</li>
  <li>Specialised in one or a few crops/livestock</li>
  <li>Examples in Ghana: cocoa estates, rice farms in Volta Basin, large-scale poultry</li>
</ul>
<p><strong>Advantages:</strong> High yields; generates income and employment; uses economies of scale.</p>
<p><strong>Disadvantages:</strong> High capital requirements; heavy reliance on market prices; can cause environmental damage.</p>

<h3>2.3 Classification Based on Crop/Livestock Combination</h3>

<h4>A. Mixed Farming</h4>
<p><strong>Definition:</strong> Integration of crop cultivation and animal husbandry on the same farm.</p>
<ul>
  <li>Animals graze crop residues; manure fertilises crops — creating a nutrient cycle</li>
  <li>Diversifies income: revenue from both crops and livestock</li>
  <li>Reduces risk — if one enterprise fails, the other provides income</li>
  <li>Common in forest-savannah transition zones of Ghana</li>
</ul>
<p><strong>Examples:</strong> Farmer grows maize + keeps cattle. Cattle eat maize stover; cattle dung fertilises next season''s maize.</p>

<h4>B. Monoculture</h4>
<p><strong>Definition:</strong> Growing a single crop species on a piece of land over a long period.</p>
<ul>
  <li>Simplifies management and mechanisation</li>
  <li>Facilitates specialised knowledge</li>
  <li><strong>Disadvantages:</strong> Rapid build-up of pests and diseases; soil nutrient depletion; vulnerable to price crashes of a single commodity</li>
  <li>Examples: cocoa plantations, rubber estates, banana farms</li>
</ul>

<h4>C. Mixed Cropping (Intercropping)</h4>
<p><strong>Definition:</strong> Growing two or more crops simultaneously on the same piece of land in the same season.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>Example</th></tr></thead>
  <tbody>
    <tr><td>Row intercropping</td><td>Crops planted in alternate rows</td><td>Maize + cowpea in alternate rows</td></tr>
    <tr><td>Strip intercropping</td><td>Crops grown in strips wide enough for mechanisation</td><td>Soybean strips between maize strips</td></tr>
    <tr><td>Mixed intercropping</td><td>Seeds of different crops mixed and broadcast together</td><td>Sorghum + cowpea mixed broadcast</td></tr>
    <tr><td>Relay cropping</td><td>Second crop planted into a standing first crop before it matures</td><td>Cowpea planted into maize 6 weeks after maize emergence</td></tr>
  </tbody>
</table>
<p><strong>Advantages of intercropping:</strong> Maximises land use; reduces weed pressure; biological nitrogen fixation from legumes; reduces pest and disease spread; provides crop diversity.</p>

<h3>2.4 Classification Based on Land Use Pattern</h3>

<h4>A. Shifting Cultivation</h4>
<p><strong>Definition:</strong> Land is cleared, cultivated for 2–3 years until soil fertility declines, then abandoned for a fallow period (5–20+ years) before being recultivated.</p>
<ul>
  <li>Also called bush fallow or slash-and-burn farming</li>
  <li>Traditional practice in forest zones of West Africa</li>
  <li>Fallow period allows soil to regenerate through natural vegetation growth</li>
  <li><strong>Problem:</strong> As population grows, fallow periods shorten, soil has less time to recover, and fertility declines permanently</li>
  <li>Not sustainable with high population densities</li>
</ul>

<h4>B. Settled/Permanent Farming</h4>
<ul>
  <li>Land is farmed continuously or in rotation without long fallow periods</li>
  <li>Requires soil fertility management — fertilisers, manure, crop rotation</li>
  <li>Associated with land tenure security and capital investment</li>
</ul>

<h4>C. Crop Rotation</h4>
<p><strong>Definition:</strong> Systematic sequence of different crops grown on the same piece of land in successive seasons or years.</p>
<p><strong>Principles:</strong></p>
<ul>
  <li>Legumes (cowpea, groundnuts, soybeans) fix atmospheric nitrogen, enriching soil for subsequent cereals</li>
  <li>Different crops have different root depths — reduces competition for nutrients</li>
  <li>Different crops host different pests/diseases — breaking pest cycles</li>
</ul>
<p><strong>Example rotation (3-year):</strong></p>
<ol>
  <li>Year 1: Maize (heavy nitrogen feeder)</li>
  <li>Year 2: Cowpea or soybean (nitrogen-fixer; adds 50–200 kg N/ha to soil)</li>
  <li>Year 3: Cassava or groundnuts (tolerates lower fertility; maintains soil cover)</li>
</ol>

<h3>2.5 Classification Based on Location</h3>

<h4>A. Nomadic Herding</h4>
<p><strong>Definition:</strong> Continuous movement of livestock (cattle, sheep, goats, camels) to seek fresh pasture and water.</p>
<ul>
  <li>Practised in Sudan and Guinea savannah zones — Fulani/Fula herdsmen</li>
  <li>Highly adapted to dry-season conditions</li>
  <li>Conflict with settled farmers when herds damage crops — common challenge in northern Ghana, Nigeria, Mali</li>
  <li>Animals are lean but hardy; adapted to diseases and harsh conditions</li>
</ul>

<h4>B. Transhumance</h4>
<ul>
  <li>Semi-nomadic: seasonal movement between fixed high and lowland pastures</li>
  <li>Herders have home base; move to wet-season pastures then return</li>
</ul>

<h4>C. Ranching</h4>
<ul>
  <li>Intensive rearing of cattle on large, enclosed pastures</li>
  <li>Controlled breeding, veterinary care, and supplementary feeding</li>
  <li>Government ranches: Pong Tamale Ranch (Northern Ghana), SARI cattle ranches</li>
</ul>

<h3>2.6 Plantation Agriculture</h3>
<p><strong>Definition:</strong> Large-scale, single-crop cultivation, usually tree crops, often with associated processing facilities.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Crop</th><th>Country</th><th>Importance</th></tr></thead>
  <tbody>
    <tr><td>Cocoa</td><td>Ghana, Ivory Coast</td><td>Major foreign exchange earner; Ghana = 2nd largest world producer</td></tr>
    <tr><td>Oil Palm</td><td>Nigeria, Malaysia (originally W. Africa)</td><td>Palm oil production; industrial uses</td></tr>
    <tr><td>Rubber</td><td>Ivory Coast, Liberia</td><td>Natural rubber for industrial use</td></tr>
    <tr><td>Coffee</td><td>Ivory Coast, Ethiopia</td><td>Export crop; beverage</td></tr>
    <tr><td>Banana</td><td>Ghana (Volta Basin)</td><td>Fresh export; domestic food</td></tr>
  </tbody>
</table>

<h3>2.7 Organic Farming</h3>
<p><strong>Definition:</strong> Agricultural system that relies on natural processes and avoids synthetic chemicals, including synthetic fertilisers and pesticides.</p>
<ul>
  <li>Uses compost, green manures, crop rotation, and biological pest control</li>
  <li>Promotes soil health, biodiversity, and ecological balance</li>
  <li>Growing demand in export markets — premium prices for certified organic produce</li>
  <li>Challenges: lower short-term yields; certification costs; labour intensive</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Subsistence farming: small scale, family food, little surplus — most common in West Africa.</li>
  <li>Commercial farming: large scale, profit-oriented, uses modern inputs.</li>
  <li>Mixed farming integrates crops and livestock on the same farm — nutrients recycled.</li>
  <li>Intercropping types: row, strip, mixed, relay — advantages include land use efficiency and pest control.</li>
  <li>Shifting cultivation: abandoned land regenerates during fallow — unsustainable with high population.</li>
  <li>Crop rotation: legumes fix nitrogen, break pest cycles — give a 3-year example.</li>
  <li>Nomadic herding: Fulani herdsmen; conflict with settled farmers is a key issue.</li>
  <li>Plantation agriculture: cocoa (Ghana), oil palm (Nigeria), rubber (Liberia).</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000002';

UPDATE topics SET content = '
<h2>Soil Science and Management</h2>

<h3>3.1 What is Soil?</h3>
<p>Soil is the uppermost layer of the earth''s crust that has been altered by physical, chemical, and biological processes to support plant growth. It is a complex mixture of mineral particles, organic matter, water, air, and living organisms.</p>
<p><strong>Composition of ideal agricultural soil (by volume):</strong></p>
<ul>
  <li>Mineral matter: ~45%</li>
  <li>Organic matter: ~5%</li>
  <li>Water: ~25%</li>
  <li>Air: ~25%</li>
</ul>

<h3>3.2 Soil Formation (Pedogenesis)</h3>
<p>Soil forms through the weathering of parent rock material over thousands of years, modified by five factors (remembered as <strong>CLORPT</strong>):</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Factor</th><th>Explanation</th><th>Effect</th></tr></thead>
  <tbody>
    <tr><td><strong>C</strong>limate</td><td>Temperature and rainfall</td><td>High rainfall → leaching; high temp → rapid weathering</td></tr>
    <tr><td><strong>L</strong>iving organisms</td><td>Bacteria, fungi, earthworms, plant roots</td><td>Add organic matter; break down rock; improve aeration</td></tr>
    <tr><td><strong>O</strong>rganic matter</td><td>Decayed plant and animal remains</td><td>Improves fertility, structure, and water retention</td></tr>
    <tr><td><strong>R</strong>elief (topography)</td><td>Slope, aspect, elevation</td><td>Steep slopes → erosion; valleys → deep soils accumulate</td></tr>
    <tr><td><strong>P</strong>arent material</td><td>Type of rock beneath</td><td>Determines mineral composition and soil type</td></tr>
    <tr><td><strong>T</strong>ime</td><td>Duration of soil-forming processes</td><td>Older soils = more developed horizons; more leached</td></tr>
  </tbody>
</table>

<h3>3.3 Soil Texture</h3>
<p>Soil texture refers to the relative proportions of sand, silt, and clay particles in soil.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Particle</th><th>Diameter</th><th>Feel</th><th>Properties</th></tr></thead>
  <tbody>
    <tr><td><strong>Gravel</strong></td><td>&gt; 2 mm</td><td>Gritty, coarse</td><td>Poor water/nutrient retention</td></tr>
    <tr><td><strong>Sand</strong></td><td>0.05–2 mm</td><td>Gritty, coarse</td><td>Good drainage; poor nutrients; low water retention</td></tr>
    <tr><td><strong>Silt</strong></td><td>0.002–0.05 mm</td><td>Smooth, flour-like</td><td>Moderate drainage; moderate fertility</td></tr>
    <tr><td><strong>Clay</strong></td><td>&lt; 0.002 mm</td><td>Sticky, plastic when wet</td><td>Poor drainage; high nutrient retention; swells/shrinks</td></tr>
  </tbody>
</table>
<p><strong>Loam soil:</strong> Mixture of sand, silt, and clay in roughly equal proportions (~40% sand, 40% silt, 20% clay). Considered ideal for agriculture because it combines good drainage with adequate water and nutrient retention.</p>

<h4>Determination of Soil Texture (Field Test)</h4>
<ol>
  <li>Take a small amount of moist soil</li>
  <li>Rub between fingers — gritty = sandy; smooth = silty; sticky/plastic = clay</li>
  <li>Try to form a ribbon — short, crumbles = sandy loam; long, smooth ribbon = clay</li>
</ol>

<h3>3.4 Soil Structure</h3>
<p>Soil structure is the way soil particles clump together into aggregates (peds). Good structure:</p>
<ul>
  <li>Allows water infiltration and drainage</li>
  <li>Provides pore space for roots and air</li>
  <li>Reduces erosion by water and wind</li>
</ul>
<p><strong>Types of soil structure:</strong> Granular (ideal for crops), platy, prismatic, blocky, single-grain (sand), massive (compact).</p>

<h3>3.5 Soil Profile</h3>
<p>A soil profile is a vertical cross-section of soil showing distinct layers called horizons:</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Horizon</th><th>Name</th><th>Description</th></tr></thead>
  <tbody>
    <tr><td><strong>O</strong></td><td>Organic/Humus layer</td><td>Dead and decomposing plant/animal matter at surface; thin in tropics due to rapid decomposition</td></tr>
    <tr><td><strong>A</strong></td><td>Topsoil</td><td>Dark, rich in organic matter and nutrients; most biologically active layer; where plant roots are most concentrated</td></tr>
    <tr><td><strong>B</strong></td><td>Subsoil</td><td>Lighter colour; contains minerals leached from A horizon; clay accumulation; less organic matter</td></tr>
    <tr><td><strong>C</strong></td><td>Parent material</td><td>Partially weathered rock; little organic matter; determines mineral composition of upper horizons</td></tr>
    <tr><td><strong>R</strong></td><td>Bedrock</td><td>Unweathered parent rock; base of soil profile</td></tr>
  </tbody>
</table>
<p><strong>Note:</strong> In the tropics, heavy rainfall causes rapid leaching, making soils more weathered with a thin, nutrient-poor topsoil.</p>

<h3>3.6 Soil pH</h3>
<p>Soil pH measures the acidity or alkalinity of soil on a scale of 0–14:</p>
<ul>
  <li><strong>pH &lt; 7:</strong> Acidic — common in high rainfall forest zones of Ghana</li>
  <li><strong>pH = 7:</strong> Neutral — ideal for most crops</li>
  <li><strong>pH &gt; 7:</strong> Alkaline — common in dry savannah, irrigated areas</li>
</ul>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Crop</th><th>Optimal pH Range</th></tr></thead>
  <tbody>
    <tr><td>Maize</td><td>5.5–7.0</td></tr>
    <tr><td>Cassava</td><td>5.5–6.5</td></tr>
    <tr><td>Cowpea</td><td>6.0–7.0</td></tr>
    <tr><td>Cocoa</td><td>5.0–6.5</td></tr>
    <tr><td>Tomato</td><td>5.5–7.0</td></tr>
    <tr><td>Rice (paddy)</td><td>5.5–6.5</td></tr>
  </tbody>
</table>

<h4>Effects of Soil Acidity (Low pH)</h4>
<ul>
  <li>Aluminium and manganese toxicity — damages roots</li>
  <li>Reduced availability of phosphorus, calcium, magnesium</li>
  <li>Reduced microbial activity — slower decomposition</li>
  <li>Poor nodulation in legumes — less nitrogen fixation</li>
</ul>
<h4>Correcting Soil Acidity: Liming</h4>
<ul>
  <li>Apply agricultural lime (CaCO₃) or dolomite (CaMg(CO₃)₂)</li>
  <li>Neutralises acidity: CaCO₃ + 2H⁺ → Ca²⁺ + H₂O + CO₂</li>
  <li>Apply 2–4 tonnes/ha depending on soil texture and pH target</li>
  <li>Apply several weeks before planting to allow reaction</li>
</ul>

<h3>3.7 Soil Organic Matter (Humus)</h3>
<p>Soil organic matter is the decomposed residue of plant, animal, and microbial material.</p>
<p><strong>Benefits of organic matter:</strong></p>
<ul>
  <li>Improves soil structure — aggregation of particles</li>
  <li>Increases water-holding capacity</li>
  <li>Source of plant nutrients (especially N, P, S)</li>
  <li>Supports microbial life</li>
  <li>Buffers pH changes</li>
  <li>Reduces erosion</li>
</ul>
<p><strong>Sources:</strong> Compost, farmyard manure, crop residues, green manures (mucuna, tithonia, leucaena)</p>

<h3>3.8 Soil Water</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>Availability to Plants</th></tr></thead>
  <tbody>
    <tr><td><strong>Gravitational water</strong></td><td>Passes quickly through soil pores under gravity after rain</td><td>Not available — drains too fast</td></tr>
    <tr><td><strong>Capillary water</strong></td><td>Held in small pores against gravity</td><td><strong>Available</strong> — main source for plants</td></tr>
    <tr><td><strong>Hygroscopic water</strong></td><td>Tightly bound to soil particles in very thin films</td><td>Not available — held too tightly</td></tr>
  </tbody>
</table>

<h3>3.9 Soil Management Practices</h3>
<h4>A. Tillage</h4>
<ul>
  <li><strong>Primary tillage:</strong> Deep ploughing to break compact soil, bury crop residues (disc plough, mould-board plough)</li>
  <li><strong>Secondary tillage:</strong> Prepare fine seedbed, break clods (harrow, rotavator)</li>
  <li><strong>Minimum tillage:</strong> Reduced soil disturbance to preserve structure and reduce erosion</li>
  <li><strong>Zero tillage:</strong> No soil disturbance — direct seeding into residue-covered soil</li>
</ul>

<h4>B. Mulching</h4>
<ul>
  <li>Covering soil with organic material (straw, leaves, plastic sheeting)</li>
  <li>Benefits: conserves moisture, controls weeds, moderates temperature, adds organic matter when it decomposes</li>
</ul>

<h4>C. Composting and Manuring</h4>
<ul>
  <li>Adding organic matter improves fertility and structure</li>
  <li>Farmyard manure: 5–10 tonnes/ha</li>
  <li>Compost: mixture of crop residues, kitchen waste, animal manure</li>
</ul>

<h4>D. Drainage Improvement</h4>
<ul>
  <li>Heavy clay soils: channel drains, mole drains, raised beds</li>
  <li>Prevent waterlogging — oxygen deprivation kills roots</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Soil is a mixture of mineral matter (45%), organic matter (5%), water (25%), and air (25%).</li>
  <li>CLORPT factors: Climate, Living organisms, Organic matter, Relief, Parent material, Time.</li>
  <li>Soil texture: sand (coarse, drains fast), clay (fine, poor drainage, good nutrients), loam (ideal).</li>
  <li>Soil profile horizons: O (organic) → A (topsoil) → B (subsoil) → C (parent material) → R (bedrock).</li>
  <li>pH &lt; 7 = acidic; pH = 7 = neutral; pH &gt; 7 = alkaline. Liming corrects acidity.</li>
  <li>Capillary water is the main water available to plants.</li>
  <li>Organic matter improves structure, water retention, fertility, and microbial life.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000003';

UPDATE topics SET content = '
<h2>Crop Production</h2>

<h3>4.1 Classification of Crops</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Classification Basis</th><th>Types</th><th>Examples</th></tr></thead>
  <tbody>
    <tr><td rowspan="2"><strong>Life Cycle</strong></td><td>Annuals</td><td>Maize, rice, cassava (when harvested within a year), tomato</td></tr>
    <tr><td>Perennials</td><td>Cocoa, oil palm, rubber, mango, citrus</td></tr>
    <tr><td rowspan="4"><strong>Use</strong></td><td>Food/Cereal crops</td><td>Maize, rice, sorghum, millet, wheat</td></tr>
    <tr><td>Root and tuber crops</td><td>Cassava, yam, sweet potato, cocoyam</td></tr>
    <tr><td>Legume crops</td><td>Cowpea, groundnut, soybean, beans</td></tr>
    <tr><td>Industrial/Cash crops</td><td>Cocoa, coffee, cotton, rubber, oil palm</td></tr>
    <tr><td rowspan="2"><strong>Season</strong></td><td>Minor season crops</td><td>Quick-maturing varieties (60–80 days)</td></tr>
    <tr><td>Major season crops</td><td>Longer-duration varieties (90–120+ days)</td></tr>
  </tbody>
</table>

<h3>4.2 Maize Production (Zea mays)</h3>
<p>Maize is the most important cereal crop in Ghana, providing food and income for millions of smallholder farmers.</p>
<h4>Ecological Requirements</h4>
<ul>
  <li>Rainfall: 500–1,200 mm well distributed during growing season</li>
  <li>Temperature: 20–30°C optimum</li>
  <li>Altitude: 0–2,000 m above sea level</li>
  <li>Soil: Well-drained loamy soil; pH 5.5–7.0</li>
  <li>Sunlight: Long-day or day-neutral varieties available</li>
</ul>
<h4>Production Steps</h4>
<ol>
  <li><strong>Land Preparation:</strong> Clear land, plough to 20 cm depth, harrow to fine tilth</li>
  <li><strong>Planting:</strong>
    <ul>
      <li>Spacing: 75 cm × 25 cm (2 seeds per hole); 75 cm × 40 cm (1 plant per stand)</li>
      <li>Planting depth: 3–5 cm</li>
      <li>Population: ~50,000–65,000 plants/ha</li>
      <li>Varieties: OBATANPA (OPV), OKOMASA, ABUROHEMAA, hybrid varieties (EV8728, DK8031)</li>
    </ul>
  </li>
  <li><strong>Fertiliser Application:</strong>
    <ul>
      <li>Basal: 60 kg N + 30 kg P₂O₅ + 30 kg K₂O per ha (at planting or 2 weeks after)</li>
      <li>Top-dressing: 60 kg N/ha at 4–6 weeks after planting (knee-high stage)</li>
      <li>Practical: Apply 2 bags (100 kg) NPK 15-15-15 at planting + 1 bag (50 kg) urea at 4–6 WAP per hectare</li>
    </ul>
  </li>
  <li><strong>Weed Control:</strong> First weeding at 3 WAP (hand hoe); second at 6 WAP; or pre-emergence herbicide (atrazine) + post-emergence (2,4-D)</li>
  <li><strong>Pest and Disease Management:</strong> Monitor for stem borers, armyworms; apply insecticide as needed; use disease-resistant varieties</li>
  <li><strong>Harvesting:</strong>
    <ul>
      <li>Physiological maturity: 90–110 days after planting (black layer formation at kernel base)</li>
      <li>Harvest when husk turns brown and dry; moisture ~25%</li>
      <li>Dry to 12–13% moisture before storage</li>
      <li>Average yield: 1.5–2.5 t/ha (smallholder); 5–8 t/ha (improved inputs + varieties)</li>
    </ul>
  </li>
</ol>

<h3>4.3 Cassava Production (Manihot esculenta)</h3>
<p>Cassava is a drought-tolerant root crop and a vital food security crop in sub-Saharan Africa.</p>
<h4>Ecological Requirements</h4>
<ul>
  <li>Rainfall: 500–1,500 mm/year; tolerates dry periods</li>
  <li>Temperature: 25–29°C optimum</li>
  <li>Soil: Light, well-drained sandy loam; pH 5.5–6.5; tolerates low fertility</li>
  <li>Does NOT tolerate waterlogging</li>
</ul>
<h4>Production Steps</h4>
<ol>
  <li><strong>Land Preparation:</strong> Mound or ridge to improve drainage; loose soil aids tuber development</li>
  <li><strong>Planting Material:</strong> Stem cuttings 20–30 cm long (5–7 nodes); take from healthy, mature stems 8–12 months old</li>
  <li><strong>Planting:</strong>
    <ul>
      <li>Spacing: 1 m × 1 m (10,000 plants/ha) to 1 m × 0.8 m</li>
      <li>Insert cuttings at 45° angle with 2–3 nodes below soil surface</li>
    </ul>
  </li>
  <li><strong>Fertiliser:</strong> NPK 15-15-15 at 200–400 kg/ha; organic matter incorporation recommended</li>
  <li><strong>Weed Control:</strong> Critical in first 3 months; hand weeding or pre-emergence herbicides (metolachlor, atrazine)</li>
  <li><strong>Harvesting:</strong> 9–24 months depending on variety; Harvest when leaves yellow and fall</li>
  <li><strong>Varieties in Ghana:</strong> Afisiafi, Abasafita, Ampong, Amoanimidi, Bankye Hemaa, Doku Duade, IFAD, IITA improved varieties</li>
</ol>
<h4>Post-Harvest Issues</h4>
<ul>
  <li>Fresh cassava tubers deteriorate within 24–48 hours after harvest (physiological post-harvest deterioration)</li>
  <li>Processing: sun-drying (chips), garification (gari production), fermentation (fufu flour)</li>
</ul>

<h3>4.4 Yam Production (Dioscorea spp.)</h3>
<p>Yam is a culturally significant crop in Ghana, especially in the Brong-Ahafo and Northern regions.</p>
<h4>Major Species</h4>
<ul>
  <li><em>D. rotundata</em> — White yam; most important; high starch content</li>
  <li><em>D. alata</em> — Water yam; fast-growing; good for fufu</li>
  <li><em>D. cayenensis</em> — Yellow yam; contains natural steroids</li>
</ul>
<h4>Production Steps</h4>
<ol>
  <li><strong>Land preparation:</strong> Make large mounds (50–100 cm high); improves drainage and provides loose soil for tuber expansion</li>
  <li><strong>Planting material:</strong> Seed yams (small whole tubers ~100–300 g) or sett (portions of large tubers 100–150 g with at least one bud)</li>
  <li><strong>Planting depth:</strong> 10–15 cm in mound top</li>
  <li><strong>Spacing:</strong> 1 m × 1 m; 1 m × 1.5 m on ridges</li>
  <li><strong>Staking:</strong> Erect stakes/bamboo poles (1.5–2 m) at each mound for climbing; improves yield significantly (+30–50%)</li>
  <li><strong>Fertiliser:</strong> NPK 15-15-15 at 400 kg/ha + sulphate of ammonia top-dressing at 6 WAP</li>
  <li><strong>Harvest:</strong> 6–9 months (dry season); indicated by yellowing and dying back of aerial parts</li>
  <li><strong>Yield:</strong> 10–15 t/ha (traditional); 20–30 t/ha (improved practices)</li>
</ol>

<h3>4.5 Rice Production (Oryza sativa)</h3>
<h4>Types of Rice Production Systems</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>System</th><th>Description</th><th>Areas in Ghana</th></tr></thead>
  <tbody>
    <tr><td>Upland/Dryland</td><td>Grown on well-drained soils; rain-fed; no flooding</td><td>Northern Region, Brong-Ahafo</td></tr>
    <tr><td>Lowland/Paddy</td><td>Grown in flooded fields (paddies); higher yield potential</td><td>Volta Basin, Dawhenya, Afife</td></tr>
    <tr><td>Irrigated</td><td>Controlled water supply; year-round production</td><td>Kpong, Tono, Vea irrigation schemes</td></tr>
    <tr><td>Deep water</td><td>Flooded to &gt;50 cm depth; elongating varieties</td><td>Some Volta Basin areas</td></tr>
  </tbody>
</table>
<h4>Key Production Points for Paddy Rice</h4>
<ul>
  <li>Seedbed: Nursery for 21–28 days; transplant seedlings at 2–3 tillers stage</li>
  <li>Spacing: 20 cm × 20 cm or 25 cm × 25 cm after transplanting</li>
  <li>Water management: Maintain 5–10 cm flood during vegetative stage; drain at harvest</li>
  <li>Fertiliser: 90 kg N/ha split application (basal + tillering + panicle initiation)</li>
  <li>Harvest: When 80–85% of grains are straw-coloured (golden), ~28–32 days after heading</li>
  <li>Varieties: AGRA, JASMINE 85, NERICA, WITA 9, Sikamo</li>
</ul>

<h3>4.6 Groundnut Production (Arachis hypogaea)</h3>
<ul>
  <li>Nitrogen-fixing legume; valuable for soil fertility improvement</li>
  <li>Spacing: 30 cm × 30 cm or 30 cm × 45 cm</li>
  <li>Requires well-drained, light sandy soil; pH 5.5–7.0</li>
  <li>Peg (gynophore) penetrates soil after fertilisation; pods develop underground</li>
  <li>Harvest when leaves yellow; pull plant and shake; dry on the plant for 1–2 weeks</li>
  <li>Aflatoxin contamination (Aspergillus flavus mould) is a major post-harvest problem — caused by poor drying/storage</li>
</ul>

<h3>4.7 Cowpea Production (Vigna unguiculata)</h3>
<ul>
  <li>Drought-tolerant; fixes 70–170 kg N/ha per season via Rhizobium nodules on roots</li>
  <li>Spacing: 75 cm × 30 cm or 50 cm × 30 cm</li>
  <li>Matures in 60–90 days; good intercrop with maize, sorghum</li>
  <li>Major pest: pod borer (Maruca vitrata); apply cypermethrin or lambda-cyhalothrin at flowering</li>
  <li>Varieties in Ghana: Hewale, Asontem, Videza, IT-18</li>
</ul>

<h3>4.8 Crop Protection Practices</h3>
<ul>
  <li><strong>Cultural control:</strong> Crop rotation, resistant varieties, sanitation, optimum planting dates</li>
  <li><strong>Mechanical control:</strong> Hand-picking of insects, trapping rodents</li>
  <li><strong>Biological control:</strong> Using natural enemies — Bacillus thuringiensis for caterpillars; parasitic wasps</li>
  <li><strong>Chemical control:</strong> Pesticides as last resort; follow label instructions; use PPE</li>
  <li><strong>Integrated Pest Management (IPM):</strong> Combination of methods; minimises pesticide use</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Maize spacing: 75 cm × 25 cm; fertilise with NPK at planting + urea top-dressing at 4–6 WAP.</li>
  <li>Cassava: propagated by stem cuttings (20–30 cm); harvest at 9–24 months; deteriorates quickly after harvest.</li>
  <li>Yam: requires mounding and staking; white yam is most important species.</li>
  <li>Rice: paddy system uses flooded fields; major irrigated schemes at Kpong, Tono, Vea (Ghana).</li>
  <li>Cowpea: fixes nitrogen via Rhizobium; intercrop with maize; major pest is pod borer.</li>
  <li>Groundnut: pods develop underground after pegging; aflatoxin is main post-harvest problem.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000004';

UPDATE topics SET content = '
<h2>Plant Nutrition and Fertilizers</h2>

<h3>5.1 Essential Plant Nutrients</h3>
<p>Plants require 17 essential elements for normal growth and reproduction. These are divided into:</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Category</th><th>Nutrients</th><th>Source</th></tr></thead>
  <tbody>
    <tr><td><strong>Non-mineral (from air/water)</strong></td><td>Carbon (C), Hydrogen (H), Oxygen (O)</td><td>CO₂ from air; H₂O from soil</td></tr>
    <tr><td><strong>Macronutrients (needed in large amounts)</strong></td><td>Nitrogen (N), Phosphorus (P), Potassium (K), Calcium (Ca), Magnesium (Mg), Sulphur (S)</td><td>Soil and fertilisers</td></tr>
    <tr><td><strong>Micronutrients (needed in trace amounts)</strong></td><td>Iron (Fe), Manganese (Mn), Zinc (Zn), Copper (Cu), Boron (B), Molybdenum (Mo), Chlorine (Cl), Nickel (Ni)</td><td>Soil (usually sufficient)</td></tr>
  </tbody>
</table>

<h3>5.2 Functions and Deficiency Symptoms of Key Nutrients</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Nutrient</th><th>Function in Plant</th><th>Deficiency Symptom</th></tr></thead>
  <tbody>
    <tr><td><strong>Nitrogen (N)</strong></td><td>Component of amino acids, proteins, chlorophyll, nucleic acids; promotes vegetative growth</td><td>Yellowing of older (lower) leaves (chlorosis) starting from leaf tip and midrib; stunted growth; pale green colour</td></tr>
    <tr><td><strong>Phosphorus (P)</strong></td><td>Energy transfer (ATP); root development; flower and seed formation; component of DNA, RNA</td><td>Purple/reddish-purple colouration of older leaves and stems (anthocyanin accumulation); delayed maturity; poor root system; dark green leaves initially</td></tr>
    <tr><td><strong>Potassium (K)</strong></td><td>Stomatal regulation; enzyme activation; transport of sugars; disease resistance; water balance</td><td>Scorching/browning of leaf edges and tips of older leaves (marginal scorch); weak stems; poor fruit quality; lodging in cereals</td></tr>
    <tr><td><strong>Calcium (Ca)</strong></td><td>Cell wall formation; root and shoot tip growth; seed germination; enzyme activation</td><td>Distorted, hooked young leaves; die-back of shoot tips; blossom-end rot in tomato and pepper</td></tr>
    <tr><td><strong>Magnesium (Mg)</strong></td><td>Central atom of chlorophyll molecule; enzyme activation; phosphorus transport</td><td>Interveinal chlorosis of older leaves (veins remain green, tissue between turns yellow/white)</td></tr>
    <tr><td><strong>Sulphur (S)</strong></td><td>Component of amino acids (cysteine, methionine); protein synthesis; chlorophyll formation</td><td>Uniform yellowing of young (upper) leaves; similar to N deficiency but affects young leaves first</td></tr>
    <tr><td><strong>Iron (Fe)</strong></td><td>Chlorophyll synthesis; electron transport in photosynthesis and respiration</td><td>Interveinal chlorosis of young leaves; most severe on alkaline soils where Fe becomes insoluble</td></tr>
    <tr><td><strong>Zinc (Zn)</strong></td><td>Enzyme activation; auxin (growth hormone) synthesis; protein synthesis</td><td>Stunted growth (little leaf); small leaves; shortened internodes; mottled appearance; maize shows "white bud" on young leaves</td></tr>
    <tr><td><strong>Boron (B)</strong></td><td>Cell wall formation; pollen germination; sugar transport; calcium uptake</td><td>Hollow heart in brassicas; poor pod/fruit set; die-back of growing points; brittle stems</td></tr>
  </tbody>
</table>

<h3>5.3 The Nitrogen Cycle</h3>
<p>Nitrogen makes up 78% of the atmosphere as N₂ gas, but plants can only absorb nitrogen in the mineral form (NH₄⁺ ammonium or NO₃⁻ nitrate). The nitrogen cycle describes how N moves between the atmosphere, soil, and living organisms:</p>
<ol>
  <li><strong>Nitrogen Fixation:</strong> Conversion of atmospheric N₂ to ammonia (NH₃)
    <ul>
      <li><em>Biological fixation:</em> Rhizobium bacteria in legume root nodules fix 70–200 kg N/ha/season; free-living bacteria (Azotobacter, Clostridium) fix smaller amounts</li>
      <li><em>Industrial fixation:</em> Haber-Bosch process used to manufacture nitrogen fertilisers</li>
      <li><em>Lightning:</em> Atmospheric fixation during electrical storms — small contribution</li>
    </ul>
  </li>
  <li><strong>Nitrification:</strong> Soil bacteria convert NH₄⁺ → NO₂⁻ (Nitrosomonas) → NO₃⁻ (Nitrobacter) — makes N available to most plants</li>
  <li><strong>Denitrification:</strong> Anaerobic bacteria (Pseudomonas, Thiobacillus) convert NO₃⁻ back to N₂ gas in waterlogged soils — this is LOSS from the soil</li>
  <li><strong>Ammonification:</strong> Decomposers (bacteria, fungi) break down organic N in dead matter → NH₄⁺</li>
  <li><strong>Assimilation:</strong> Plants absorb NH₄⁺ or NO₃⁻ and incorporate N into amino acids and proteins</li>
  <li><strong>Leaching:</strong> NO₃⁻ is highly soluble — washed out by heavy rainfall into groundwater (environmental concern)</li>
</ol>

<h3>5.4 Types of Fertilisers</h3>

<h4>A. Organic Fertilisers (Natural)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>NPK Approximate Content</th><th>Advantages</th></tr></thead>
  <tbody>
    <tr><td>Farmyard Manure (FYM)</td><td>Mixture of dung, urine, bedding material from animals</td><td>0.5–1% N, 0.3–0.5% P, 0.5–0.8% K</td><td>Improves soil structure; slow-release; cheap; sustainable</td></tr>
    <tr><td>Compost</td><td>Decomposed plant and kitchen waste</td><td>0.5–2% N, 0.3–1% P, 0.5–1.5% K</td><td>Improves soil biology; reduces waste</td></tr>
    <tr><td>Green Manure</td><td>Ploughing in leguminous crops (mucuna, leucaena, tithonia)</td><td>Variable — mainly N from legumes</td><td>Adds organic matter + N; suppresses weeds</td></tr>
    <tr><td>Poultry Manure</td><td>Chicken droppings (highest nutrient content of manures)</td><td>2–4% N, 1.5–3% P, 1–2% K</td><td>Higher nutrient content; widely available</td></tr>
    <tr><td>Bone Meal</td><td>Ground animal bones</td><td>2–4% N, 15–25% P₂O₅</td><td>Excellent P source; slow release</td></tr>
  </tbody>
</table>

<h4>B. Inorganic Fertilisers (Chemical/Synthetic)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Fertiliser</th><th>Formula</th><th>N%</th><th>Notes</th></tr></thead>
  <tbody>
    <tr><td>Urea</td><td>CO(NH₂)₂</td><td>46% N</td><td>Highest N content; volatile if surface applied without incorporation; widely used for top-dressing</td></tr>
    <tr><td>Sulphate of Ammonia (SOA)</td><td>(NH₄)₂SO₄</td><td>21% N</td><td>Acidifying; provides sulphur; cheaper per kg</td></tr>
    <tr><td>Calcium Ammonium Nitrate (CAN)</td><td>Ca(NO₃)₂·NH₄NO₃</td><td>26–27% N</td><td>Contains both ammonium and nitrate N; less acidifying</td></tr>
    <tr><td>Triple Superphosphate (TSP)</td><td>Ca(H₂PO₄)₂</td><td>— </td><td>46% P₂O₅; concentrated P fertiliser</td></tr>
    <tr><td>Single Superphosphate (SSP)</td><td>CaH₂PO₄ + CaSO₄</td><td>—</td><td>18% P₂O₅; also contains sulphur (12% S)</td></tr>
    <tr><td>Muriate of Potash (MOP)</td><td>KCl</td><td>—</td><td>60% K₂O; standard potassium fertiliser</td></tr>
    <tr><td>NPK 15-15-15</td><td>Mixed compound</td><td>15% N</td><td>15% P₂O₅ + 15% K₂O; most common in West Africa; "compound fertiliser"</td></tr>
    <tr><td>NPK 23-10-5</td><td>Mixed compound</td><td>23% N</td><td>Higher N; for N-demanding crops at vegetative stage</td></tr>
  </tbody>
</table>

<h4>Reading Fertiliser Labels: The NPK System</h4>
<p>A fertiliser labelled <strong>15-15-15</strong> contains:</p>
<ul>
  <li><strong>15% N</strong> (nitrogen as a percentage of total weight)</li>
  <li><strong>15% P₂O₅</strong> (phosphate)</li>
  <li><strong>15% K₂O</strong> (potash)</li>
</ul>
<p>So a 50 kg bag contains: 7.5 kg N + 7.5 kg P₂O₅ + 7.5 kg K₂O = 22.5 kg active nutrients + 27.5 kg filler/carrier.</p>

<h3>5.5 Fertiliser Application Methods</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Description</th><th>Best For</th></tr></thead>
  <tbody>
    <tr><td><strong>Broadcasting</strong></td><td>Spreading fertiliser evenly over entire field surface; incorporated by cultivation</td><td>P and K before planting; organic manure</td></tr>
    <tr><td><strong>Band/Placement</strong></td><td>Applying fertiliser in a band 5–7 cm to the side and below seed</td><td>Phosphorus at planting; most efficient P use</td></tr>
    <tr><td><strong>Top-dressing</strong></td><td>Applying nitrogen fertiliser to growing crop by broadcasting between rows</td><td>Urea, CAN for maize/rice at 4–6 WAP</td></tr>
    <tr><td><strong>Side-dressing</strong></td><td>Placing fertiliser in furrow beside growing plant</td><td>Precision N application; reduces volatilisation</td></tr>
    <tr><td><strong>Fertigation</strong></td><td>Dissolving fertiliser in irrigation water</td><td>High-value crops under drip irrigation</td></tr>
    <tr><td><strong>Foliar application</strong></td><td>Spraying dilute nutrient solution on leaves</td><td>Rapid correction of micronutrient deficiencies (Zn, Mg, Fe)</td></tr>
  </tbody>
</table>

<h3>5.6 Soil Fertility Management Principles</h3>
<ul>
  <li><strong>4Rs of Fertiliser Management:</strong>
    <ul>
      <li><strong>Right Source:</strong> Match fertiliser type to nutrient needed and soil type</li>
      <li><strong>Right Rate:</strong> Apply what soil and crop need — use soil test recommendations</li>
      <li><strong>Right Time:</strong> Apply when crop can use it — N at vegetative stage; P at planting</li>
      <li><strong>Right Place:</strong> Place where roots can access — band placement for P; side-dress N</li>
    </ul>
  </li>
  <li><strong>Integrated Soil Fertility Management (ISFM):</strong> Combining mineral fertilisers with organic inputs and improved germplasm. Used widely in Sub-Saharan Africa to improve fertiliser efficiency.</li>
</ul>

<h3>5.7 Advantages and Disadvantages of Organic vs Inorganic Fertilisers</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Aspect</th><th>Organic</th><th>Inorganic</th></tr></thead>
  <tbody>
    <tr><td>Nutrient content</td><td>Low (1–3%); bulky</td><td>High (10–46%); concentrated</td></tr>
    <tr><td>Release rate</td><td>Slow — nutrients released as organic matter decomposes</td><td>Fast — immediately available to crops</td></tr>
    <tr><td>Soil improvement</td><td>Excellent — improves structure, water retention, microbial life</td><td>Little improvement in soil physical properties</td></tr>
    <tr><td>Cost</td><td>Low or free (if produced on farm)</td><td>Higher; requires purchase; price volatility</td></tr>
    <tr><td>Environmental impact</td><td>Low; sustainable; supports biodiversity</td><td>Risk of over-application: nitrate leaching, eutrophication, greenhouse gases</td></tr>
    <tr><td>Ease of application</td><td>Bulky — large quantities needed; labour-intensive to transport</td><td>Easy — small quantities; can be mechanically applied</td></tr>
  </tbody>
</table>

<h3>WASSCE Key Points</h3>
<ul>
  <li>NPK are the three primary macronutrients: Nitrogen (vegetative growth), Phosphorus (root/seed), Potassium (disease resistance/water balance).</li>
  <li>N deficiency: yellowing of OLD leaves; P deficiency: purple coloration; K deficiency: marginal leaf scorch.</li>
  <li>Nitrogen cycle steps: fixation → nitrification → assimilation → ammonification → denitrification.</li>
  <li>Urea (46% N) is the highest N fertiliser; NPK 15-15-15 is most common in West Africa.</li>
  <li>Organic fertilisers improve soil structure; inorganic fertilisers act faster but do not improve soil structure.</li>
  <li>4Rs: Right Source, Right Rate, Right Time, Right Place.</li>
  <li>Rhizobium in legume nodules fixes 70–200 kg N/ha — reduces need for nitrogen fertiliser.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000005';
