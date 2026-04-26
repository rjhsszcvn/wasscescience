/*
  # Agricultural Science Comprehensive Notes - Topics 6 to 10

  Adds in-depth study notes for topics 6 through 10 of Agricultural Science:
  6. Pests, Diseases, and Weed Control
  7. Irrigation and Water Management
  8. Agricultural Tools and Machinery
  9. Animal Husbandry — Livestock Management
  10. Poultry Farming
*/

UPDATE topics SET content = '
<h2>Pests, Diseases, and Weed Control</h2>

<h3>6.1 Crop Pests</h3>
<p>A pest is any organism that causes economic damage to a crop. Pests are broadly classified by their feeding mechanism and the damage they cause.</p>

<h4>A. Insect Pests</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Pest</th><th>Crops Affected</th><th>Damage</th><th>Control</th></tr></thead>
  <tbody>
    <tr><td><strong>Maize Stem Borer</strong> (Busseola fusca; Sesamia calamistis)</td><td>Maize, sorghum, millet</td><td>Larvae bore into stems → "dead heart" in young plants; stem breakage at tasseling; yield loss 20–80%</td><td>Carbofuran granules in whorl; lambda-cyhalothrin spray; resistant varieties; biological control (Trichogramma parasitic wasp)</td></tr>
    <tr><td><strong>Fall Armyworm</strong> (Spodoptera frugiperda)</td><td>Maize, sorghum, rice</td><td>Larvae feed on leaves and bore into cobs; severe defoliation; introduced to Africa 2016</td><td>Emamectin benzoate, spinetoram, chlorpyrifos; botanical extracts (neem); Bacillus thuringiensis</td></tr>
    <tr><td><strong>Aphids</strong> (Aphis, Myzus spp.)</td><td>Cowpea, groundnut, vegetables</td><td>Suck phloem sap; cause wilting; transmit viruses; produce honeydew → sooty mould</td><td>Imidacloprid seed treatment; pirimicarb spray; encourage natural enemies (ladybirds, lacewings)</td></tr>
    <tr><td><strong>Pod Borer</strong> (Maruca vitrata)</td><td>Cowpea, beans</td><td>Larvae bore into pods and eat seeds; 20–80% yield loss without control</td><td>Cypermethrin, lambda-cyhalothrin at flowering; 3 sprays at 7-day intervals</td></tr>
    <tr><td><strong>Whitefly</strong> (Bemisia tabaci)</td><td>Cassava, vegetables</td><td>Suck sap; transmit cassava mosaic virus; produce honeydew</td><td>Imidacloprid; reflective mulch; natural enemies (Encarsia parasitic wasp)</td></tr>
    <tr><td><strong>Mealybug</strong> (Phenacoccus manihoti)</td><td>Cassava</td><td>Sucks sap; stunts growth; introduced pest; causes "bunchy top"</td><td>Biological control: Anagyrus lopezi parasitic wasp (classic biocontrol success in Africa)</td></tr>
    <tr><td><strong>Locust</strong> (Schistocerca gregaria)</td><td>All crops</td><td>Swarms can strip entire fields in hours; devastates cereals in Sahel</td><td>Aerial spraying (organophosphates); early warning systems; ECOWAS regional control</td></tr>
    <tr><td><strong>Weevil</strong> (Callosobruchus maculatus)</td><td>Cowpea in storage</td><td>Larvae eat seeds in store; 50–100% loss within 3–6 months</td><td>Hermetic storage bags; ash/sand mixing; chemical treatment (phosphine fumigation)</td></tr>
  </tbody>
</table>

<h4>B. Vertebrate Pests</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Pest</th><th>Damage</th><th>Control</th></tr></thead>
  <tbody>
    <tr><td>Rodents (rats, mice)</td><td>Eat seeds, young plants, stored grains; contaminate stores</td><td>Traps, rodenticides; cats; store improvement</td></tr>
    <tr><td>Birds (quelea, sparrows)</td><td>Eat ripening grain heads; major pest in savannah cereals</td><td>Scare devices; netting; early/late planting to avoid flocks; avitrol (chemical)</td></tr>
    <tr><td>Primates (monkeys, baboons)</td><td>Destroy maize, cocoa; hard to control</td><td>Guarding, snares, noise deterrents; legal protection issues</td></tr>
    <tr><td>Grasscutters (Greater Cane Rat)</td><td>Eat maize, cassava, rice at field edges and in stores</td><td>Fencing; traps; also raised as mini-livestock in Ghana</td></tr>
  </tbody>
</table>

<h3>6.2 Crop Diseases</h3>
<p>A crop disease is any condition that impairs normal functioning of a plant, caused by pathogens or environmental factors.</p>

<h4>Classification by Pathogen Type</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Pathogen</th><th>Disease</th><th>Crop</th><th>Symptoms</th><th>Control</th></tr></thead>
  <tbody>
    <tr><td rowspan="4"><strong>Fungi</strong></td><td>Late Blight</td><td>Tomato, potato</td><td>Water-soaked brown lesions on leaves; white mycelium under leaf; fruit rot</td><td>Mancozeb, copper oxychloride; resistant varieties; avoid overhead irrigation</td></tr>
    <tr><td>Leaf Rust</td><td>Maize, wheat</td><td>Orange/brown pustules on leaves; reduces photosynthesis</td><td>Fungicide (propiconazole); resistant varieties</td></tr>
    <tr><td>Downy Mildew</td><td>Maize, pearl millet</td><td>Yellowing; white cottony growth on leaf undersides; malformed tassels</td><td>Metalaxyl seed treatment; resistant varieties</td></tr>
    <tr><td>Damping Off</td><td>Seedlings of all crops</td><td>Seedling collapses at soil surface; stem constriction</td><td>Fungicide seed treatment (thiram, captan); avoid overwatering; good drainage</td></tr>
    <tr><td rowspan="2"><strong>Bacteria</strong></td><td>Bacterial Blight</td><td>Cowpea, cassava</td><td>Water-soaked spots → brown angular leaf lesions; exudate; stem cankers</td><td>Copper-based sprays; resistant varieties; clean planting material</td></tr>
    <tr><td>Bacterial Wilt</td><td>Tomato, pepper</td><td>Sudden wilting of entire plant; vascular browning; milky ooze from cut stem</td><td>No cure once infected; use resistant varieties; rotation; soil solarisation</td></tr>
    <tr><td rowspan="2"><strong>Viruses</strong></td><td>Cassava Mosaic Disease (CMD)</td><td>Cassava</td><td>Mosaic/mottled yellowing of leaves; distorted leaflets; severe yield loss</td><td>Use virus-free planting material; control whitefly vectors; resistant varieties (TME 14, Kwansitiri)</td></tr>
    <tr><td>Groundnut Rosette Virus</td><td>Groundnut</td><td>Stunted yellow plants; leaves rolled and mosaic; complete crop failure in outbreaks</td><td>Early planting; dense spacing to reduce aphid vectors; resistant varieties</td></tr>
    <tr><td><strong>Nematodes</strong></td><td>Root-knot nematode</td><td>Tomato, carrot, yam</td><td>Galls/knots on roots; stunted, yellowing plants; wilting in dry conditions</td><td>Crop rotation; neem cake; carbofuran; resistant rootstocks; solarisation</td></tr>
  </tbody>
</table>

<h3>6.3 Weed Control</h3>
<p><strong>Definition:</strong> A weed is any plant growing where it is not wanted, competing with crops for light, water, nutrients, and space.</p>

<h4>Characteristics of Weeds</h4>
<ul>
  <li>Produce very large numbers of seeds (e.g., Amaranthus produces 100,000+ seeds/plant)</li>
  <li>Seeds remain viable in soil for many years (weed seed bank)</li>
  <li>Rapid growth rate — often faster than crops in early stages</li>
  <li>Adapt to various environments; some (e.g., Striga) parasitise crops directly</li>
  <li>Many have vegetative reproduction (rhizomes, stolons, tubers)</li>
</ul>

<h4>Classification of Weeds</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Classification</th><th>Types</th><th>Examples</th></tr></thead>
  <tbody>
    <tr><td>By leaf type</td><td>Broadleaf weeds</td><td>Amaranthus (pig weed), Tridax, Euphorbia heterophylla</td></tr>
    <tr><td></td><td>Grassy weeds</td><td>Imperata cylindrica (spear grass), Digitaria, Rottboellia</td></tr>
    <tr><td></td><td>Sedges</td><td>Cyperus rotundus (nutgrass/purple sedge), Cyperus esculentus</td></tr>
    <tr><td>By life cycle</td><td>Annuals</td><td>Digitaria, Amaranthus — complete life cycle in one season</td></tr>
    <tr><td></td><td>Perennials</td><td>Imperata, Cyperus rotundus — persist for many years via underground structures</td></tr>
    <tr><td>By mode of nutrition</td><td>Autotrophic (regular)</td><td>Most weeds photosynthesise normally</td></tr>
    <tr><td></td><td>Parasitic</td><td>Striga hermonthica (witch weed) — root parasite of cereals; Cuscuta (dodder) — stem parasite</td></tr>
  </tbody>
</table>

<h4>Economic Importance of Weeds</h4>
<p><strong>Harmful effects:</strong></p>
<ul>
  <li>Competition for water, light, nutrients — reduces yield by 30–80% if uncontrolled</li>
  <li>Harbour pests and diseases</li>
  <li>Some are poisonous to livestock (e.g., Crotalaria)</li>
  <li>Clog irrigation channels</li>
  <li>Increase production costs through control measures</li>
  <li>Striga causes annual losses of US$7–13 billion in sub-Saharan Africa</li>
</ul>
<p><strong>Beneficial effects:</strong></p>
<ul>
  <li>Prevent soil erosion when no crops are growing</li>
  <li>Add organic matter when ploughed in</li>
  <li>Some are food plants (e.g., Amaranthus leaves are edible)</li>
  <li>Provide habitat for beneficial insects (pollinators, natural enemies)</li>
</ul>

<h4>Weed Control Methods</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Description</th><th>Examples</th><th>Advantages/Disadvantages</th></tr></thead>
  <tbody>
    <tr><td><strong>Cultural</strong></td><td>Preventive practices that reduce weed establishment</td><td>Crop rotation; cover crops; mulching; competitive varieties; optimum planting density</td><td>Cheap; sustainable; does not eliminate established weeds</td></tr>
    <tr><td><strong>Manual/Mechanical</strong></td><td>Physical removal by hand or machine</td><td>Hand-pulling; hoe weeding; inter-row cultivation; rotary hoe</td><td>Effective; labour intensive; can damage crop roots; expensive at large scale</td></tr>
    <tr><td><strong>Chemical (Herbicides)</strong></td><td>Applying herbicides to kill weeds</td><td>Pre-emergence: atrazine (maize), metolachlor; Post-emergence: 2,4-D (broadleaves in maize), glyphosate (non-selective)</td><td>Effective; fast; expensive; residues; environmental hazard; resistance development</td></tr>
    <tr><td><strong>Biological</strong></td><td>Using organisms to suppress weeds</td><td>Striga: resistant varieties (IITA), Strigaway maize (herbicide-coated seed), Fusarium oxysporum biocontrol</td><td>Sustainable; expensive to develop; slow acting</td></tr>
  </tbody>
</table>

<h4>Critical Weed Period</h4>
<p>The <strong>critical weed-free period</strong> is the time during which the crop must be kept weed-free to prevent significant yield loss:</p>
<ul>
  <li>Maize: First <strong>3–6 weeks</strong> after planting are most critical</li>
  <li>Cowpea: First <strong>3–4 weeks</strong></li>
  <li>Rice: First <strong>4–6 weeks</strong></li>
</ul>
<p>After this period, the crop canopy closes and shades out most weeds — later-emerging weeds cause little additional yield loss.</p>

<h3>6.4 Integrated Pest Management (IPM)</h3>
<p>IPM is a sustainable approach that combines multiple pest control methods to minimise economic, health, and environmental risks:</p>
<ol>
  <li><strong>Prevention:</strong> Crop rotation, use of resistant varieties, clean planting material, healthy seed</li>
  <li><strong>Monitoring:</strong> Regular field scouting — count pests, identify damage; economic threshold concept</li>
  <li><strong>Biological control:</strong> Conserve natural enemies; release beneficial insects</li>
  <li><strong>Cultural control:</strong> Modify environment to reduce pest establishment</li>
  <li><strong>Physical/Mechanical control:</strong> Traps, barriers, heat treatment</li>
  <li><strong>Chemical control:</strong> Only when pest population exceeds Economic Injury Level (EIL); use selective, least toxic pesticides</li>
</ol>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Maize stem borer causes "dead heart"; controlled by carbofuran + resistant varieties + Trichogramma wasp.</li>
  <li>Fall armyworm: introduced to Africa in 2016; controlled by emamectin benzoate and Bt sprays.</li>
  <li>Cassava mosaic disease: spread by whiteflies; controlled by virus-free cuttings + resistant varieties.</li>
  <li>Striga (witchweed): root parasite of cereals; causes US$7–13 billion loss/year in Africa.</li>
  <li>Critical weed-free period: first 3–6 weeks for maize — must weed during this time to protect yield.</li>
  <li>IPM combines prevention, monitoring, biological, cultural, and chemical methods — reduces pesticide reliance.</li>
  <li>Weed classification: grasses (Imperata), broadleaves (Amaranthus), sedges (Cyperus).</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000006';

UPDATE topics SET content = '
<h2>Irrigation and Water Management</h2>

<h3>7.1 Importance of Water in Plant Growth</h3>
<ul>
  <li>Water makes up 70–90% of plant tissue</li>
  <li>Essential for photosynthesis (raw material), nutrient transport, cell turgidity, temperature regulation (transpiration), and germination</li>
  <li>Water stress at critical growth stages causes irreversible yield loss</li>
  <li>Drought affects >40% of agricultural land globally</li>
</ul>

<h3>7.2 Water Sources for Irrigation</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Source</th><th>Description</th><th>Advantages</th><th>Limitations</th></tr></thead>
  <tbody>
    <tr><td><strong>Rivers and streams</strong></td><td>Surface water diverted by gravity or pumped</td><td>Reliable; large volumes</td><td>Can dry up seasonally; sedimentation; pollution risk</td></tr>
    <tr><td><strong>Reservoirs/dams</strong></td><td>Stored surface water behind earthen or concrete structures</td><td>Controlled supply; year-round use</td><td>High construction cost; evaporation losses; displacement of people</td></tr>
    <tr><td><strong>Groundwater (boreholes)</strong></td><td>Underground aquifer water pumped to surface</td><td>Reliable; clean; available even in dry season</td><td>Pumping costs; over-extraction → aquifer depletion; can be saline</td></tr>
    <tr><td><strong>Rainwater harvesting</strong></td><td>Collecting and storing rainfall from rooftops or catchments</td><td>Free; local; sustainable</td><td>Limited volume; seasonal</td></tr>
    <tr><td><strong>Wastewater recycling</strong></td><td>Treated urban wastewater used for irrigation</td><td>Nutrient-rich; reduces freshwater demand</td><td>Health risks if inadequately treated; social acceptance issues</td></tr>
  </tbody>
</table>

<h3>7.3 Irrigation Methods</h3>

<h4>A. Surface Irrigation</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>Efficiency</th><th>Best For</th></tr></thead>
  <tbody>
    <tr><td><strong>Flood (basin) irrigation</strong></td><td>Water floods entire field surrounded by earthen bunds</td><td>40–60%</td><td>Rice paddies; orchards on level land</td></tr>
    <tr><td><strong>Furrow irrigation</strong></td><td>Water flows along furrows between crop rows; absorbed by capillarity</td><td>50–70%</td><td>Row crops: maize, cassava, vegetables, sugarcane</td></tr>
    <tr><td><strong>Border strip irrigation</strong></td><td>Water flows in long strips bounded by ridges</td><td>50–75%</td><td>Close-growing crops: wheat, alfalfa</td></tr>
  </tbody>
</table>

<h4>B. Overhead/Sprinkler Irrigation</h4>
<ul>
  <li>Water is pumped under pressure and distributed through sprinklers above the crop canopy</li>
  <li>Simulates rainfall; uniform distribution</li>
  <li>Efficiency: 70–85%</li>
  <li>Types: rotating sprinklers, centre-pivot systems, travelling sprinklers</li>
  <li>Best for: vegetables, turf, lawns, tree nurseries</li>
  <li>Disadvantage: high initial cost; promotes foliar diseases if leaves stay wet; cannot be used in high wind</li>
</ul>

<h4>C. Drip (Trickle) Irrigation</h4>
<ul>
  <li>Water delivered slowly and directly to root zone through emitters/drippers in pipes</li>
  <li>Most efficient method: <strong>90–95% efficiency</strong></li>
  <li>Fertigation possible — nutrients added directly through drip system</li>
  <li>Best for: high-value crops — tomato, pepper, cucumber, orchards, greenhouse crops</li>
  <li>Disadvantage: very high installation cost; emitters can clog; requires filtered water; requires technical skills</li>
</ul>

<h3>7.4 Water Use Efficiency (WUE)</h3>
<p>WUE = Yield produced per unit of water applied (kg/m³ or kg/mm)</p>
<p>Improving WUE strategies:</p>
<ul>
  <li>Mulching — reduces soil evaporation</li>
  <li>Drip irrigation — targets water to root zone</li>
  <li>Drought-tolerant varieties</li>
  <li>Deficit irrigation — deliberately applying less than full water requirement at less sensitive growth stages</li>
  <li>Scheduling irrigation based on crop water demand (ETc) and soil moisture monitoring</li>
</ul>

<h3>7.5 Irrigation Scheduling</h3>
<p>Irrigation should be applied when soil moisture falls below the <strong>threshold level</strong> for the specific crop:</p>
<ul>
  <li><strong>Field Capacity (FC):</strong> Maximum water soil can hold after excess has drained — ideal moisture level after irrigation</li>
  <li><strong>Permanent Wilting Point (PWP):</strong> Moisture level at which plants cannot recover from wilting — too dry; yield loss has already occurred</li>
  <li><strong>Available Water Content (AWC):</strong> FC − PWP = water available to plants</li>
  <li><strong>Management Allowable Deficit (MAD):</strong> Typically irrigate when 50–60% of AWC is depleted (earlier for sensitive crops)</li>
</ul>
<p><strong>Tools for scheduling:</strong> Tensiometers (measure soil moisture tension); neutron probes; capacitance sensors; crop evapotranspiration (ETc) calculation</p>

<h3>7.6 Major Irrigation Schemes in Ghana/West Africa</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Scheme</th><th>Location</th><th>Area (ha)</th><th>Main Crops</th></tr></thead>
  <tbody>
    <tr><td>Kpong Irrigation Project</td><td>Greater Accra/Eastern Region</td><td>4,000</td><td>Rice, vegetables</td></tr>
    <tr><td>Tono Irrigation Project</td><td>Upper East Region (Navrongo)</td><td>2,400</td><td>Rice, tomatoes, onions</td></tr>
    <tr><td>Vea Irrigation Project</td><td>Upper East Region (Bolgatanga)</td><td>780</td><td>Rice, vegetables</td></tr>
    <tr><td>Accra Plains Irrigation</td><td>Greater Accra</td><td>2,000</td><td>Vegetables, rice</td></tr>
    <tr><td>Office du Niger</td><td>Mali (Niger River delta)</td><td>100,000+</td><td>Rice, sugarcane</td></tr>
  </tbody>
</table>

<h3>7.7 Drainage</h3>
<p>Drainage removes excess water from the soil to prevent waterlogging, which causes:</p>
<ul>
  <li>Oxygen depletion — roots cannot respire; die and rot</li>
  <li>Reduction in soil temperature — slows nutrient uptake</li>
  <li>Denitrification — loss of soil nitrogen</li>
  <li>Accumulation of toxic gases (methane, hydrogen sulphide)</li>
  <li>Spread of root diseases</li>
</ul>
<h4>Types of Drainage</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>Use</th></tr></thead>
  <tbody>
    <tr><td><strong>Surface drainage</strong></td><td>Shaping land surface to guide excess water into collection channels; graded furrows</td><td>Level, poorly drained fields; rice paddies drainage after harvest</td></tr>
    <tr><td><strong>Open channel drainage</strong></td><td>Open ditches/canals to collect and carry away excess water</td><td>Field perimeter channels; rice field drains</td></tr>
    <tr><td><strong>Subsurface drainage</strong></td><td>Perforated pipes (tiles or plastic) buried 60–100 cm deep collect and drain water underground</td><td>Heavy clay soils with high water table; orchards</td></tr>
    <tr><td><strong>Mole drainage</strong></td><td>Cylindrical channel made 40–50 cm deep by pulling a mole plough through the soil</td><td>Heavy clay soils; cheap; lasts 5–10 years</td></tr>
    <tr><td><strong>Raised beds/ridges</strong></td><td>Growing on raised beds or ridges keeps roots above water table</td><td>Waterlogged soils; vegetables; cassava</td></tr>
  </tbody>
</table>

<h3>7.8 Irrigation Problems</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Problem</th><th>Cause</th><th>Effect</th><th>Solution</th></tr></thead>
  <tbody>
    <tr><td>Waterlogging</td><td>Over-irrigation; poor drainage; impermeable layer</td><td>Root death; reduced yields; disease spread</td><td>Improve drainage; irrigation scheduling; raised beds</td></tr>
    <tr><td>Salinisation</td><td>Evaporation of irrigation water deposits salts at soil surface</td><td>Osmotic stress — plants cannot absorb water; "wilting in wet soil"</td><td>Leaching with excess water; good drainage; use low-salt water; salt-tolerant varieties</td></tr>
    <tr><td>Alkalisation</td><td>Accumulation of sodium (Na⁺) — breaks down soil aggregates</td><td>Soil compaction; poor structure; "black alkali" soil</td><td>Gypsum (CaSO₄) application; leaching; good drainage</td></tr>
    <tr><td>Sedimentation</td><td>Sediment in irrigation water clogs channels and emitters</td><td>Reduced water flow; uneven distribution</td><td>Settling basins; filtration; lined canals</td></tr>
  </tbody>
</table>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Drip irrigation is most efficient (90–95%); flood irrigation least efficient (40–60%).</li>
  <li>Ghana irrigation schemes: Kpong, Tono, Vea — remember locations and main crops.</li>
  <li>Field capacity = soil is at optimum moisture after drainage of excess water.</li>
  <li>Permanent wilting point = plant cannot recover — never let soil reach this level.</li>
  <li>Waterlogging causes oxygen depletion → root death → yield loss.</li>
  <li>Salinisation: evaporation deposits salts at surface — remedy is leaching + drainage.</li>
  <li>Water use efficiency: drip > sprinkler > furrow > flood irrigation.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000007';

UPDATE topics SET content = '
<h2>Agricultural Tools and Machinery</h2>

<h3>8.1 Classification of Farm Tools and Equipment</h3>
<p>Farm tools are implements used to carry out agricultural operations. They range from simple hand tools to complex motorised machines.</p>

<h3>8.2 Hand Tools</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Tool</th><th>Description</th><th>Uses</th></tr></thead>
  <tbody>
    <tr><td><strong>Cutlass/Machete</strong></td><td>Curved, broad-bladed metal knife with wooden handle</td><td>Land clearing; harvesting; trimming; general farm work</td></tr>
    <tr><td><strong>Hoe (jembe)</strong></td><td>Flat metal blade at right angle to handle</td><td>Weeding; ridging; earthing-up; primary cultivation on small plots</td></tr>
    <tr><td><strong>Shovel</strong></td><td>Flat or curved scooping blade; handle</td><td>Moving loose soil, sand, gravel; mixing compost</td></tr>
    <tr><td><strong>Spade</strong></td><td>Flat rectangular blade; straight edge</td><td>Digging; making furrows; cutting through roots</td></tr>
    <tr><td><strong>Fork/Pitchfork</strong></td><td>Multiple metal tines on handle</td><td>Turning compost; spreading manure; loosening soil</td></tr>
    <tr><td><strong>Rake</strong></td><td>Series of teeth on crossbar attached to handle</td><td>Levelling seedbeds; gathering leaves and debris</td></tr>
    <tr><td><strong>Watering can</strong></td><td>Container with perforated spout (rose)</td><td>Watering seedlings in nursery; applying liquid fertiliser</td></tr>
    <tr><td><strong>Knapsack sprayer</strong></td><td>Pressurised tank worn on back; pump action</td><td>Applying pesticides and herbicides; foliar feeding</td></tr>
    <tr><td><strong>Wheel hoe</strong></td><td>Single-wheel cultivator; hand-pushed</td><td>Inter-row cultivation and weeding</td></tr>
    <tr><td><strong>Dibber/planting stick</strong></td><td>Pointed stick or metal rod</td><td>Making holes for seed or transplant placement</td></tr>
    <tr><td><strong>Harvesting sickle</strong></td><td>Curved serrated blade</td><td>Harvesting cereals (rice, sorghum) by hand</td></tr>
    <tr><td><strong>Pruning shears/secateurs</strong></td><td>Spring-loaded cutting blades</td><td>Pruning cocoa, fruit trees; cutting grafting material</td></tr>
  </tbody>
</table>

<h3>8.3 Animal-Drawn Implements</h3>
<p>In northern Ghana and other savannah regions, animal traction (oxen, donkeys) significantly improves farm productivity.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Implement</th><th>Function</th></tr></thead>
  <tbody>
    <tr><td>Ox-drawn plough (single furrow)</td><td>Primary tillage — breaks and inverts soil to 15–20 cm</td></tr>
    <tr><td>Ox-drawn ridger</td><td>Forms ridges for planting yam, cassava; improves drainage</td></tr>
    <tr><td>Ox-drawn cultivator</td><td>Secondary tillage and inter-row cultivation/weeding</td></tr>
    <tr><td>Donkey cart</td><td>Transporting farm produce and inputs</td></tr>
    <tr><td>Seed drill (animal-drawn)</td><td>Precise seed placement at correct depth and spacing</td></tr>
  </tbody>
</table>

<h3>8.4 Tractors</h3>
<p>A tractor is a powered vehicle designed to pull or drive agricultural implements. It is the main power source on mechanised farms.</p>
<h4>Types of Tractors</h4>
<ul>
  <li><strong>2-Wheel (walking) tractor:</strong> Small, operator walks behind; 8–12 HP; suitable for small farms (0.5–5 ha); versatile; affordable for smallholders</li>
  <li><strong>4-Wheel tractor:</strong> Full-size; 30–200+ HP; operator sits; suitable for medium to large farms; can carry mounted or trailed implements</li>
</ul>
<h4>Tractor Hitching Systems</h4>
<ul>
  <li><strong>Three-point linkage:</strong> Mounted implements attach to 3 points at rear of tractor; depth controlled hydraulically; most common</li>
  <li><strong>PTO (Power Take-Off):</strong> Shaft at rear of tractor provides rotary power to drive implements (ploughs, threshers, pumps) at 540 or 1,000 rpm</li>
  <li><strong>Drawbar hitch:</strong> Trailed implements pulled from drawbar (trailers, heavy ploughs)</li>
</ul>

<h3>8.5 Primary Tillage Implements</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Implement</th><th>Action</th><th>Depth</th><th>Uses</th></tr></thead>
  <tbody>
    <tr><td><strong>Mould-board plough</strong></td><td>Cuts, lifts, and completely inverts a furrow slice — buries surface vegetation</td><td>20–30 cm</td><td>First ploughing; weed/crop residue burial; breaking hardpan</td></tr>
    <tr><td><strong>Disc plough</strong></td><td>Spherical discs cut and partially invert soil; handles crop residues better</td><td>15–25 cm</td><td>Hard, dry, stony soils; residue-heavy fields; most common in West Africa</td></tr>
    <tr><td><strong>Chisel plough/subsoiler</strong></td><td>Deep-running tines break hardpan without inverting soil</td><td>30–60 cm</td><td>Breaking compacted layers (plough pan); improves deep drainage</td></tr>
    <tr><td><strong>Rotavator (rototiller)</strong></td><td>Rotating L-shaped blades chop and mix soil thoroughly</td><td>10–20 cm</td><td>Fine seedbed preparation; incorporating organic matter; paddy rice preparation</td></tr>
  </tbody>
</table>

<h3>8.6 Secondary Tillage Implements</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Implement</th><th>Action</th><th>Uses</th></tr></thead>
  <tbody>
    <tr><td><strong>Disc harrow</strong></td><td>Rows of curved discs cut and stir soil</td><td>Breaking clods after ploughing; secondary tillage; incorporating fertiliser/lime; light ploughing of trash</td></tr>
    <tr><td><strong>Tine harrow</strong></td><td>Rigid or spring-loaded tines drag through surface</td><td>Final seedbed preparation; weed control post-germination; aerating pastures</td></tr>
    <tr><td><strong>Ridger/hiller</strong></td><td>Wings throw soil into ridges/mounds</td><td>Making ridges for yam, cassava, potatoes; hilling up maize after thinning</td></tr>
    <tr><td><strong>Land roller/cultipacker</strong></td><td>Heavy smooth or ridged cylinder firms seedbed</td><td>Breaking clods; firming seedbed for small seeds; improving seed-soil contact</td></tr>
  </tbody>
</table>

<h3>8.7 Planting Equipment</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Equipment</th><th>Function</th></tr></thead>
  <tbody>
    <tr><td>Row planter (seed drill)</td><td>Places seed at precise depth and spacing; can simultaneously apply fertiliser in separate band</td></tr>
    <tr><td>Transplanter</td><td>Mechanical transplanting of rice or vegetable seedlings at correct spacing</td></tr>
    <tr><td>Broadcasting machine (spinner)</td><td>Spreads seed or fertiliser uniformly over area using rotating disc</td></tr>
  </tbody>
</table>

<h3>8.8 Harvesting Equipment</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Equipment</th><th>Crops</th><th>Function</th></tr></thead>
  <tbody>
    <tr><td>Combine harvester</td><td>Wheat, rice, maize, soybean</td><td>Cuts, threshes, cleans grain in one pass; reduces harvest losses and labour</td></tr>
    <tr><td>Maize/corn picker</td><td>Maize</td><td>Snaps cobs from stalks; does not shell</td></tr>
    <tr><td>Rice thresher (axial)</td><td>Rice</td><td>Separates grain from panicle; common small threshers in Ghana (ASI thresher)</td></tr>
    <tr><td>Cassava harvester</td><td>Cassava</td><td>Lifts tubers from soil; reduces labour and damage; not widely used in Ghana yet</td></tr>
    <tr><td>Groundnut lifter</td><td>Groundnuts</td><td>Lifts plants and shakes soil from roots</td></tr>
  </tbody>
</table>

<h3>8.9 Sources of Farm Power</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Source</th><th>Description</th><th>Advantages</th><th>Limitations</th></tr></thead>
  <tbody>
    <tr><td><strong>Human (manual)</strong></td><td>Physical labour of farm workers</td><td>Cheap; precise; no capital cost; available everywhere</td><td>Limited power output (~0.1 HP); tiring; slow; not suitable for large farms</td></tr>
    <tr><td><strong>Animal (draught)</strong></td><td>Oxen, donkeys, horses, buffaloes</td><td>Low fuel cost; available; suitable for 2–10 ha; reduces drudgery</td><td>Requires animal care; disease risk (trypanosomiasis); limited in wet forest zone due to tsetse fly</td></tr>
    <tr><td><strong>Mechanical (tractor)</strong></td><td>Diesel-powered tractors and engines</td><td>High power; fast operations; suitable for large farms</td><td>High capital and fuel cost; maintenance; trained operator needed; limited in wet conditions</td></tr>
    <tr><td><strong>Electrical</strong></td><td>Electric motors (irrigation pumps, processing, cold storage)</td><td>Clean; efficient; reliable if grid connected</td><td>Requires grid connection or generator; not mobile in the field</td></tr>
    <tr><td><strong>Wind/Solar</strong></td><td>Windmills for pumping; solar-powered pumps and dryers</td><td>Renewable; free energy; low operating cost</td><td>Weather dependent; high initial cost; limited to water pumping and processing</td></tr>
  </tbody>
</table>

<h3>8.10 Maintenance of Farm Equipment</h3>
<p>Regular maintenance extends equipment life, reduces breakdowns, and improves safety:</p>
<ul>
  <li><strong>Daily checks:</strong> Oil level, coolant, fuel, tyre pressure, lights, bolts</li>
  <li><strong>After each use:</strong> Clean soil and crop residue from implements; lubricate moving parts</li>
  <li><strong>Periodic (50-100 hour service):</strong> Change engine oil and filter; air filter cleaning/replacement; fuel filter change</li>
  <li><strong>Annual:</strong> Full engine overhaul if needed; replace worn cutting edges; check hydraulic system</li>
  <li><strong>Storage:</strong> Clean and oil metal surfaces; store under cover; disconnect battery; drain cooling system if frost risk</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Know specific uses of each hand tool: hoe (weeding/ridging), cutlass (clearing/harvesting), rake (levelling seedbed).</li>
  <li>Disc plough is most common primary tillage implement in West Africa — handles hard, stony, residue-heavy soils.</li>
  <li>Mould-board plough: cuts and INVERTS soil — buries surface vegetation completely.</li>
  <li>Combine harvester: cuts + threshes + cleans grain in ONE pass — reduces post-harvest losses.</li>
  <li>Sources of farm power: human → animal → mechanical → electrical → wind/solar (in order of increasing mechanisation).</li>
  <li>Animal traction not suitable in tsetse fly belt (forest zone) because of trypanosomiasis risk to animals.</li>
  <li>PTO shaft drives stationary and implement machinery from tractor engine at 540 or 1,000 rpm.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000008';

UPDATE topics SET content = '
<h2>Animal Husbandry — Livestock Management</h2>

<h3>9.1 Importance of Livestock Production</h3>
<ul>
  <li>Provides food: meat, milk, eggs</li>
  <li>Source of income and savings ("walking bank") for rural families</li>
  <li>Draught power for farming (oxen, donkeys)</li>
  <li>Raw materials: hides/skins, wool, silk</li>
  <li>Manure for soil fertility improvement</li>
  <li>Contributes 30–40% of agricultural GDP in developing countries</li>
  <li>Cultural/social roles: bride price, ceremonies, status</li>
</ul>

<h3>9.2 Cattle Production (Bos indicus; Bos taurus)</h3>
<h4>Breeds in West Africa</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Breed</th><th>Type</th><th>Origin/Distribution</th><th>Characteristics</th></tr></thead>
  <tbody>
    <tr><td>White Fulani (Bunaji)</td><td>Zebu</td><td>Northern Nigeria, Ghana, Niger</td><td>Dual-purpose (meat+milk); tall; long horns; tolerant to heat and ticks; 2–4 L milk/day</td></tr>
    <tr><td>West African Shorthorn (Dwarf)</td><td>Bos taurus</td><td>Forest/coastal zones</td><td>Small; trypanotolerant; adapted to humid zones; low milk; N''Dama, Muturu sub-breeds</td></tr>
    <tr><td>Sanga cattle</td><td>Hybrid Zebu/Taurus</td><td>East/West Africa</td><td>Intermediate size; good milk; trypanotolerant</td></tr>
    <tr><td>Holstein Friesian (exotic)</td><td>Bos taurus</td><td>Netherlands/Europe; imported</td><td>Best dairy breed; 20–40 L milk/day; poor tropical adaptation; requires high management</td></tr>
    <tr><td>Jersey (exotic)</td><td>Bos taurus</td><td>Jersey Island; imported</td><td>Small; high fat milk (5%); better heat tolerance than Friesian; 15–20 L/day</td></tr>
  </tbody>
</table>

<h4>Cattle Management Practices</h4>
<ul>
  <li><strong>Feeding:</strong> Pasture/range grazing; supplementary concentrates during dry season when grass quality declines; hay and silage</li>
  <li><strong>Housing:</strong> Open free-range under tree shade; simple kraals/paddocks for night security; zero-grazing (stall-fed) for dairy</li>
  <li><strong>Health management:</strong>
    <ul>
      <li>Vaccination: anthrax, foot-and-mouth disease, blackleg, brucellosis</li>
      <li>Dipping/spraying against ticks: weekly/fortnightly; acaricides (dipping tanks or spray races)</li>
      <li>Deworming: every 3–6 months; anthelmintics</li>
      <li>Castration of non-breeding males: improves carcass quality; reduces aggression</li>
    </ul>
  </li>
  <li><strong>Identification:</strong> Ear tagging, ear notching, tattooing, branding</li>
  <li><strong>Breeding:</strong> Natural mating (bull:cow ratio 1:25–30); artificial insemination (AI); synchronisation of oestrus with hormones</li>
</ul>

<h4>Reproductive Data for Cattle</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Parameter</th><th>Value</th></tr></thead>
  <tbody>
    <tr><td>Gestation period</td><td>280–285 days (~9.5 months)</td></tr>
    <tr><td>Age at first calving</td><td>2–3 years (local); 1.5–2 years (exotic)</td></tr>
    <tr><td>Calving interval</td><td>12–15 months (target); 15–18 months (local breeds)</td></tr>
    <tr><td>Oestrus (heat) cycle</td><td>21 days; oestrus lasts 12–18 hours</td></tr>
    <tr><td>Lactation period</td><td>270–305 days (dairy); shorter in local breeds</td></tr>
  </tbody>
</table>

<h3>9.3 Goat and Sheep Production</h3>
<h4>West African Dwarf Goat and Djallonké Sheep</h4>
<ul>
  <li>Most common small ruminants in Ghana and West Africa</li>
  <li>Hardy; adapted to local conditions; trypanotolerant</li>
  <li>Multipurpose: meat, milk, skin, income generation</li>
  <li>Reproduce rapidly (kidding/lambing interval 8–12 months; twins common)</li>
</ul>
<h4>Management Highlights</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Parameter</th><th>Goats</th><th>Sheep</th></tr></thead>
  <tbody>
    <tr><td>Gestation period</td><td>148–152 days (~5 months)</td><td>144–152 days (~5 months)</td></tr>
    <tr><td>Litter size</td><td>1–3 kids (twins common)</td><td>1–2 lambs</td></tr>
    <tr><td>Age at first mating (female)</td><td>8–12 months</td><td>8–12 months</td></tr>
    <tr><td>Male to female ratio</td><td>1:20–30</td><td>1:20–30</td></tr>
    <tr><td>Weaning age</td><td>8–12 weeks</td><td>8–12 weeks</td></tr>
  </tbody>
</table>
<p><strong>Key management practices:</strong> Housing at night to protect from predators and theft; supplementary feed during dry season; deworming every 3 months; vaccination against PPR (Peste des Petits Ruminants), foot-and-mouth, anthrax</p>

<h3>9.4 Pig Production</h3>
<p>Pig farming is growing in Ghana, especially among smallholders in the south.</p>
<h4>Characteristics</h4>
<ul>
  <li>Omnivore — efficient converter of waste food, kitchen scraps, crop residues</li>
  <li>Fast growth: market weight (80–90 kg) in 5–6 months</li>
  <li>High reproductive rate: 8–14 piglets per litter; 2 litters/year</li>
  <li>Feed conversion ratio (FCR): 2.5–3.5 (efficient)</li>
</ul>
<h4>Important Reproductive Data</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Parameter</th><th>Value</th></tr></thead>
  <tbody>
    <tr><td>Gestation period</td><td>114 days (3 months, 3 weeks, 3 days) — easy to remember!</td></tr>
    <tr><td>Litter size</td><td>8–14 piglets</td></tr>
    <tr><td>Weaning age</td><td>3–5 weeks</td></tr>
    <tr><td>Age at first service (gilt)</td><td>6–8 months (220–250 days)</td></tr>
    <tr><td>Oestrus cycle</td><td>21 days</td></tr>
  </tbody>
</table>
<h4>Major Pig Diseases</h4>
<ul>
  <li>African Swine Fever (ASF): no vaccine; must cull infected animals; major threat in West Africa</li>
  <li>Classical Swine Fever (Hog Cholera): vaccination available</li>
  <li>Foot-and-Mouth Disease: highly contagious; vaccination</li>
  <li>Erysipelas: bacterial; causes diamond skin lesions; treated with penicillin</li>
</ul>

<h3>9.5 Important Livestock Diseases</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Disease</th><th>Pathogen</th><th>Animals Affected</th><th>Symptoms</th><th>Control</th></tr></thead>
  <tbody>
    <tr><td>Anthrax</td><td>Bacillus anthracis (bacteria)</td><td>All livestock + humans (zoonosis)</td><td>Sudden death; bleeding from orifices; blood fails to clot</td><td>Annual vaccination; quarantine; carcass burning</td></tr>
    <tr><td>Foot-and-Mouth Disease (FMD)</td><td>FMD virus (picornavirus)</td><td>Cloven-hoofed animals (cattle, sheep, goats, pigs)</td><td>Vesicles (blisters) on feet, mouth, teats; severe lameness; high fever; drooling; drop in milk production</td><td>Vaccination; quarantine; movement restrictions</td></tr>
    <tr><td>Trypanosomiasis (nagana)</td><td>Trypanosoma vivax, T. congolense (protozoa)</td><td>Cattle, horses; transmitted by tsetse fly</td><td>Anaemia; weakness; progressive emaciation; reproductive failure; death</td><td>Tsetse control; trypanotolerant breeds (N''Dama, West African Shorthorn); trypanocidal drugs (diminazene, isometamidium)</td></tr>
    <tr><td>Newcastle Disease</td><td>Paramyxovirus</td><td>Poultry</td><td>Respiratory distress; greenish diarrhoea; nervous signs (twisted neck); very high mortality</td><td>Vaccination (La Sota, I-2 strains); biosecurity</td></tr>
    <tr><td>Tick Fever (East Coast Fever)</td><td>Theileria parva (protozoa) — carried by brown ear tick</td><td>Cattle</td><td>Fever; swollen lymph nodes; respiratory distress; high mortality in exotic breeds</td><td>Tick control (dipping); tick-resistant breeds; immunisation</td></tr>
    <tr><td>Brucellosis</td><td>Brucella abortus (bacteria) — zoonosis (undulant fever in humans)</td><td>Cattle, goats, sheep, pigs</td><td>Abortion in late pregnancy; retained placenta; infertility; orchitis in males</td><td>Vaccination; test-and-slaughter; pasteurisation of milk; PPE for farm workers</td></tr>
  </tbody>
</table>

<h3>9.6 Farm Records in Livestock Production</h3>
<p>Essential records for efficient livestock management:</p>
<ul>
  <li><strong>Individual animal records:</strong> ID, birth date, parentage, weight at different ages, health events, production</li>
  <li><strong>Breeding records:</strong> Mating dates, pregnancy confirmations, parturition dates, litter sizes</li>
  <li><strong>Health records:</strong> Vaccination dates, disease treatments, veterinary visits</li>
  <li><strong>Feed records:</strong> Feed purchased, amounts fed, FCR calculations</li>
  <li><strong>Financial records:</strong> Income and expenditure; gross margin analysis</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>White Fulani: most common cattle breed in West Africa; dual-purpose; heat/tick tolerant.</li>
  <li>Holstein Friesian: best dairy breed; 20–40 L/day; not well-adapted to tropics.</li>
  <li>Cattle gestation: 280 days; goat/sheep: ~150 days; pig: 114 days (3-3-3 rule).</li>
  <li>Trypanosomiasis: fatal in exotic cattle; spread by tsetse fly; West African Shorthorn is trypanotolerant.</li>
  <li>FMD: vesicles on feet/mouth/teats; affects cloven-hoofed animals; vaccination and quarantine are key controls.</li>
  <li>Brucellosis causes abortion; is a zoonosis (infects humans via unpasteurised milk).</li>
  <li>Pig FCR 2.5–3.5 means pig produces 1 kg meat for every 2.5–3.5 kg feed — very efficient.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000009';

UPDATE topics SET content = '
<h2>Poultry Farming</h2>

<h3>10.1 Types of Poultry</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Poultry Type</th><th>Scientific Name</th><th>Main Product</th></tr></thead>
  <tbody>
    <tr><td>Chicken (local, broiler, layer)</td><td>Gallus gallus domesticus</td><td>Eggs and meat</td></tr>
    <tr><td>Turkey</td><td>Meleagris gallopavo</td><td>Meat</td></tr>
    <tr><td>Duck</td><td>Anas platyrhynchos</td><td>Meat and eggs</td></tr>
    <tr><td>Guinea fowl</td><td>Numida meleagris</td><td>Meat and eggs; traditional bird in northern Ghana</td></tr>
    <tr><td>Quail</td><td>Coturnix coturnix</td><td>Eggs (nutritious); meat; growing in Ghana</td></tr>
    <tr><td>Pigeon</td><td>Columba livia</td><td>Meat (squab)</td></tr>
  </tbody>
</table>

<h3>10.2 Classification of Chickens by Purpose</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Purpose</th><th>Breeds</th><th>Characteristics</th></tr></thead>
  <tbody>
    <tr><td><strong>Layers</strong></td><td>Egg production</td><td>White Leghorn, Brown Leghorn, ISA Brown, Lohmann, Hy-Line</td><td>Thin body; small frame; 280–320 eggs/year; lay from ~18 weeks; low feed intake</td></tr>
    <tr><td><strong>Broilers</strong></td><td>Meat production</td><td>Ross 308, Cobb 500, Arbor Acres, Hubbard</td><td>Fast growth; market weight (2 kg) in 35–42 days; FCR 1.8–2.0; large breast muscle</td></tr>
    <tr><td><strong>Dual-purpose</strong></td><td>Both eggs and meat</td><td>Rhode Island Red, Plymouth Rock, New Hampshire, local breeds</td><td>Moderate egg production (~180–220/year); reasonable meat yield; hardier; suitable for free range</td></tr>
    <tr><td><strong>Local/indigenous</strong></td><td>Subsistence; cultural</td><td>Ghana Forest fowl, others</td><td>Hardy; disease resistant; slow growth; forages; 60–80 eggs/year; free-range system</td></tr>
  </tbody>
</table>

<h3>10.3 Housing Systems</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>System</th><th>Description</th><th>Stocking Density</th><th>Advantages</th><th>Disadvantages</th></tr></thead>
  <tbody>
    <tr><td><strong>Extensive (free-range)</strong></td><td>Birds roam freely outdoors during day; simple shelter at night</td><td>1 bird/10 m²+</td><td>Low feed cost; natural behaviour; low capital; organic status</td><td>Losses from predators; disease from wild birds; hard to manage</td></tr>
    <tr><td><strong>Semi-intensive</strong></td><td>Birds have access to outside run plus indoor housing</td><td>1–2 birds/m² indoor + outdoor run</td><td>Some foraging; controlled housing for night</td><td>Requires more space; worm burdens from soil</td></tr>
    <tr><td><strong>Deep litter (intensive)</strong></td><td>Birds kept indoors on layer of litter (sawdust, wood shavings, rice hulls) 10–20 cm deep</td><td>4–6 birds/m² (layers); 10–12 birds/m² (broilers)</td><td>Good environment; easy management; dung absorbed by litter → manure</td><td>Requires regular litter management; ammonia build-up if poorly managed</td></tr>
    <tr><td><strong>Battery cages</strong></td><td>Layer hens kept in stacked wire cages; individual feeding/water; conveyor egg collection</td><td>500 cm² per bird (conventional cage); 750+ cm² (enriched)</td><td>Highest egg production; cleaner eggs; easy disease monitoring; no pecking; no coccidiosis from litter</td><td>High capital cost; welfare concerns; banned in some countries; ammonia from manure pits</td></tr>
  </tbody>
</table>

<h3>10.4 Brooding Management</h3>
<p>Brooding is the provision of artificial heat and care to newly hatched chicks during the first 3–6 weeks of life (when they cannot regulate their own body temperature).</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Age (days)</th><th>Brooder Temperature (°C)</th><th>Brooder Temperature (°F)</th></tr></thead>
  <tbody>
    <tr><td>1–7</td><td>32–35°C</td><td>90–95°F</td></tr>
    <tr><td>8–14</td><td>29–32°C</td><td>85–90°F</td></tr>
    <tr><td>15–21</td><td>27–29°C</td><td>80–85°F</td></tr>
    <tr><td>22–28</td><td>24–27°C</td><td>75–80°F</td></tr>
    <tr><td>29–35</td><td>21–24°C</td><td>70–75°F</td></tr>
    <tr><td>35+</td><td>Room temperature (~27°C in Ghana)</td><td>Weaned from brooder</td></tr>
  </tbody>
</table>
<p><strong>Brooder types:</strong> Gas brooders; electric brooders (infrared lamps); kerosene brooders</p>
<p><strong>Reading chick behaviour to judge temperature:</strong></p>
<ul>
  <li>Chicks huddled under brooder, silent = too cold → raise temperature</li>
  <li>Chicks spread out around edges, panting = too hot → lower temperature</li>
  <li>Chicks spread evenly, active, vocalising normally = correct temperature</li>
  <li>Chicks clustered to one side = draughts — check for air leaks</li>
</ul>

<h3>10.5 Poultry Nutrition</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Phase</th><th>Age</th><th>Crude Protein %</th><th>Energy (kcal ME/kg)</th></tr></thead>
  <tbody>
    <tr><td>Broiler Starter</td><td>0–3 weeks</td><td>22–24%</td><td>3,000–3,100</td></tr>
    <tr><td>Broiler Finisher</td><td>3–6 weeks</td><td>18–20%</td><td>3,100–3,200</td></tr>
    <tr><td>Layer Chick</td><td>0–8 weeks</td><td>20–22%</td><td>2,900–3,000</td></tr>
    <tr><td>Layer Grower</td><td>8–18 weeks</td><td>15–16%</td><td>2,700–2,800</td></tr>
    <tr><td>Layer (production)</td><td>18+ weeks</td><td>16–18%</td><td>2,700–2,900</td></tr>
  </tbody>
</table>

<h4>Common Feed Ingredients in West Africa</h4>
<ul>
  <li><strong>Energy sources:</strong> Maize (main ingredient, 50–60%), cassava, sorghum, wheat bran</li>
  <li><strong>Protein sources:</strong> Soybean meal (main; 44–48% CP), fishmeal (60–65% CP), groundnut cake (45% CP)</li>
  <li><strong>Mineral/vitamin premix:</strong> Provides Ca, P, vitamins A, D, E, K, B complex</li>
  <li><strong>Oyster shell/limestone:</strong> Calcium for eggshell formation in layers (3.5–4 g Ca/day)</li>
  <li><strong>Lysine, methionine:</strong> Limiting essential amino acids; added as synthetic supplements</li>
</ul>

<h3>10.6 Vaccination Schedule for Poultry in Ghana</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Age</th><th>Vaccine</th><th>Disease</th><th>Route</th></tr></thead>
  <tbody>
    <tr><td>Day 1</td><td>Marek''s disease vaccine (at hatchery)</td><td>Marek''s disease (lymphoma)</td><td>Subcutaneous injection</td></tr>
    <tr><td>Day 7–10</td><td>Newcastle disease (ND) + Infectious Bronchitis (IB)</td><td>Newcastle; IB</td><td>Eye drop or drinking water</td></tr>
    <tr><td>Day 14</td><td>Gumboro (IBD) vaccine</td><td>Infectious Bursal Disease</td><td>Drinking water</td></tr>
    <tr><td>Day 21</td><td>Gumboro booster</td><td>Infectious Bursal Disease</td><td>Drinking water</td></tr>
    <tr><td>Day 28</td><td>Newcastle disease booster</td><td>Newcastle disease</td><td>Eye drop or spray</td></tr>
    <tr><td>6 weeks</td><td>Fowl pox</td><td>Fowl pox</td><td>Wing web stab</td></tr>
    <tr><td>16 weeks (layers)</td><td>Newcastle disease + IB + EDS (oil-based killed)</td><td>Multiple diseases</td><td>Intramuscular injection</td></tr>
  </tbody>
</table>

<h3>10.7 Common Poultry Diseases</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Disease</th><th>Cause</th><th>Symptoms</th><th>Control</th></tr></thead>
  <tbody>
    <tr><td><strong>Newcastle Disease (ND)</strong></td><td>Paramyxovirus</td><td>Gasping; coughing; green diarrhoea; nervous signs (twisted neck); very high mortality; sudden drop in egg production</td><td>Vaccination; biosecurity; no cure</td></tr>
    <tr><td><strong>Gumboro/IBD</strong></td><td>Birnavirus</td><td>Ruffled feathers; watery diarrhoea; depression; sudden death in young chicks (3–6 weeks); destroys bursa of Fabricius (immune organ)</td><td>Vaccination at 14 + 21 days; biosecurity</td></tr>
    <tr><td><strong>Fowl pox</strong></td><td>Poxvirus</td><td>Wart-like scabs on unfeathered skin (dry form); white plaques in mouth (wet/diphtheritic form); reduced egg production</td><td>Vaccination; insect vector (mosquito) control</td></tr>
    <tr><td><strong>Marek''s Disease</strong></td><td>Herpesvirus</td><td>Progressive paralysis; tumours in internal organs; iris turns grey (grey eye); death</td><td>Vaccination at day 1 (hatchery only); no treatment</td></tr>
    <tr><td><strong>Coccidiosis</strong></td><td>Eimeria spp. (protozoa)</td><td>Bloody diarrhoea; ruffled feathers; poor growth; high mortality in chicks 3–6 weeks</td><td>Coccidiostats in feed (amprolium, toltrazuril); good litter management; clean waterers</td></tr>
    <tr><td><strong>Salmonellosis</strong></td><td>Salmonella pullorum, S. gallinarum (bacteria)</td><td>White diarrhoea (pullorum/BWD); sudden death in young chicks; reduced production in adults; food safety concern</td><td>Clean hatchery; day-old chick treatment; biosecurity; food hygiene</td></tr>
  </tbody>
</table>

<h3>10.8 Egg Production and Quality</h3>
<h4>Factors Affecting Egg Production</h4>
<ul>
  <li>Breed and genetics — high-production strains lay 300+ eggs/year</li>
  <li>Nutrition — adequate protein, calcium, energy, vitamins</li>
  <li>Light — 16–17 hours light/day stimulates laying; light control with artificial lighting</li>
  <li>Temperature — optimal 18–24°C; heat stress above 30°C reduces production and shell quality</li>
  <li>Health — disease-free flock lays consistently</li>
  <li>Age — production peaks at 25–35 weeks; declines after 72 weeks</li>
</ul>

<h4>Egg Structure and Components</h4>
<ul>
  <li><strong>Shell:</strong> 94% calcium carbonate; provides protection; contains pores for gas exchange</li>
  <li><strong>Albumen (white):</strong> 60% of egg weight; mainly protein (ovalbumin); two layers (thick and thin)</li>
  <li><strong>Yolk:</strong> 30% of egg weight; contains fat, fat-soluble vitamins (A, D, E, K), carotenoids; air cell forms as egg cools after laying</li>
  <li><strong>Germinal disc:</strong> Fertilised eggs have visible germinal disc on yolk surface</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Broilers: market in 35–42 days; FCR 1.8–2.0; breeds include Ross 308, Cobb 500.</li>
  <li>Layers: 280–320 eggs/year; start laying at ~18 weeks; breeds include ISA Brown, Lohmann.</li>
  <li>Brooding temperature: start at 32–35°C, reduce by ~3°C per week until 5–6 weeks.</li>
  <li>Battery cage: highest egg production; welfare concern; cleaner eggs; no coccidiosis from litter.</li>
  <li>Newcastle disease: paramyxovirus; twisted neck; green diarrhoea; vaccination critical.</li>
  <li>Gumboro destroys bursa of Fabricius → immunosuppression → secondary infections.</li>
  <li>Light = 16–17 hours/day needed to maintain laying in commercial flocks.</li>
  <li>Layers need calcium (oyster shell/limestone) for eggshell formation — 3.5–4 g Ca/bird/day.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000010';
