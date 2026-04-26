/*
  # Agricultural Science Comprehensive Notes - Topics 16 to 20

  Adds in-depth study notes for topics 16 through 20 of Agricultural Science:
  16. Plant Propagation and Nursery Practice
  17. Post-harvest Technology
  18. Agricultural Extension and Cooperation
  19. Biotechnology in Agriculture
  20. Environmental Impacts and Sustainable Agriculture
*/

UPDATE topics SET content = '
<h2>Plant Propagation and Nursery Practice</h2>

<h3>16.1 Definition and Importance of Plant Propagation</h3>
<p><strong>Plant propagation</strong> is the deliberate multiplication of plants to maintain or increase their population. It is fundamental to crop production, horticulture, forestry, and plant improvement.</p>
<p><strong>Importance:</strong></p>
<ul>
  <li>Produces planting material for farming</li>
  <li>Maintains desirable plant characteristics (vegetative propagation preserves genetic makeup)</li>
  <li>Allows rapid multiplication of superior varieties</li>
  <li>Enables production of plants out-of-season for transplanting</li>
  <li>Disease-free planting material can be produced under controlled nursery conditions</li>
</ul>

<h3>16.2 Methods of Plant Propagation</h3>
<h4>A. Sexual Propagation (by Seeds)</h4>
<p>Plants are grown from seeds produced by fertilisation of flowers.</p>
<ul>
  <li>Introduces genetic variation — offspring may differ from parents</li>
  <li>Suitable for: maize, rice, tomato, pepper, cabbage, most vegetables, groundnut, soybean</li>
  <li>Economical — large quantities of seeds produced</li>
</ul>

<h4>Seed Germination Requirements</h4>
<ul>
  <li><strong>Water (imbibition):</strong> Seeds absorb water to initiate metabolic activity; germination begins when seed moisture exceeds threshold</li>
  <li><strong>Warmth (temperature):</strong> Most tropical crops germinate best at 25–35°C; cold slows germination</li>
  <li><strong>Oxygen:</strong> Needed for aerobic respiration to provide energy for germination</li>
  <li><strong>Light:</strong> Some seeds require light (photoblastic seeds); most crop seeds are not light-requiring</li>
  <li><strong>Seed viability:</strong> Seed must be alive and capable of germinating; viability declines with age and poor storage</li>
</ul>

<h4>Seed Dormancy</h4>
<p>Dormancy prevents germination even when conditions are favourable. Types and methods to break dormancy:</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Dormancy Type</th><th>Cause</th><th>Method to Break</th><th>Example</th></tr></thead>
  <tbody>
    <tr><td>Physical (hard seed coat)</td><td>Impermeable seed coat blocks water absorption</td><td>Scarification: mechanical (sand paper, nicking); chemical (H₂SO₄ for 30–60 min); hot water soaking</td><td>Legumes (Leucaena, Acacia, Canavalia)</td></tr>
    <tr><td>Chemical/Physiological</td><td>Inhibitors in seed (e.g., abscisic acid)</td><td>Cold stratification (chilling); leaching in water; after-ripening (dry storage)</td><td>Apple, temperate fruits</td></tr>
    <tr><td>Morphological</td><td>Embryo not fully developed at harvest</td><td>Wait for after-ripening period</td><td>Mango, some palm seeds</td></tr>
  </tbody>
</table>

<h4>B. Asexual/Vegetative Propagation</h4>
<p>Reproducing plants from vegetative parts — stems, roots, leaves, or buds. Offspring are genetically identical to parent (clones).</p>

<h5>1. Cuttings</h5>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Plant Part Used</th><th>Examples</th></tr></thead>
  <tbody>
    <tr><td>Stem (hardwood)</td><td>Mature, woody stem sections</td><td>Cassava (20–30 cm stem cuttings), sugarcane, cocoa (rarely), coffee</td></tr>
    <tr><td>Stem (softwood/greenwood)</td><td>Young, green stems</td><td>Tomato, chrysanthemum, coleus; requires mist propagation</td></tr>
    <tr><td>Leaf cuttings</td><td>Whole leaf or leaf portion</td><td>Begonia, Sansevieria, African violet</td></tr>
    <tr><td>Root cuttings</td><td>Sections of thick roots</td><td>Breadfruit, some perennial weeds</td></tr>
  </tbody>
</table>
<p><strong>Rooting hormones (auxins):</strong> IBA (indole-butyric acid) applied to cut end promotes rooting; available as powder, gel, or solution</p>

<h5>2. Budding and Grafting</h5>
<p>Used to join parts of two plants (scion = desired plant; rootstock = root system of another plant) to produce a composite plant with the best qualities of both.</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Description</th><th>Crops</th></tr></thead>
  <tbody>
    <tr><td><strong>T-budding</strong></td><td>T-shaped cut in rootstock bark; single bud inserted; most common budding method</td><td>Citrus, rose, mango, avocado</td></tr>
    <tr><td><strong>Patch budding</strong></td><td>Square patch of bark with bud removed and replaced with matching patch from scion</td><td>Cacao, citrus</td></tr>
    <tr><td><strong>Cleft (crown) grafting</strong></td><td>Scion wedge inserted into split (cleft) at top of rootstock stem; common for topworking</td><td>Mango, avocado, citrus, top-working of old trees</td></tr>
    <tr><td><strong>Approach grafting</strong></td><td>Scion and rootstock both rooted; surfaces joined while both alive; most reliable</td><td>Mango, avocado; expensive (both plants must be grown first)</td></tr>
    <tr><td><strong>Side grafting</strong></td><td>Scion inserted into side of rootstock</td><td>Conifer trees; mango in Ghana</td></tr>
  </tbody>
</table>
<p><strong>Advantages of grafting:</strong> Combines disease-resistant rootstock with high-yielding scion; earlier bearing; preserves variety; propagates difficult-to-root species</p>

<h5>3. Layering</h5>
<ul>
  <li><strong>Air layering:</strong> Ring of bark removed from stem; moist sphagnum moss tied around wound and covered in plastic → roots develop; stem then cut and planted</li>
  <li>Used for: ornamentals, croton, some fruit trees</li>
  <li>Advantage: well-established root system before separation from parent</li>
</ul>

<h5>4. Division and Separation</h5>
<ul>
  <li><strong>Division:</strong> Splitting clumps of plants (e.g., banana suckers, cocoyam corms, grass tufts)</li>
  <li><strong>Separation:</strong> Naturally formed offsets removed and planted (e.g., pineapple ratoons, banana suckers)</li>
</ul>

<h5>5. Tissue Culture (In vitro Propagation)</h5>
<ul>
  <li>Small pieces of plant tissue (explants) cultured in sterile medium containing nutrients and hormones</li>
  <li>Rapid mass multiplication of disease-free planting material</li>
  <li>Used for: banana, plantain (virus-free suckers), cassava (virus-free cuttings), oil palm, sugarcane, ornamentals</li>
  <li>Requires laboratory with sterile conditions; expensive; mainly used commercially</li>
</ul>

<h3>16.3 Nursery Management</h3>
<p>A nursery is a place where young plants are raised from seed or cuttings to a size suitable for transplanting to the field.</p>
<h4>Types of Nurseries</h4>
<ul>
  <li><strong>Seedling nursery:</strong> For vegetables (tomato, pepper, cabbage, onion), tobacco; transplanted at 4–6 weeks</li>
  <li><strong>Forest/tree nursery:</strong> For forestry and fruit tree seedlings; grown in polythene bags 2–6+ months before planting</li>
  <li><strong>Budwood/Clonal nursery:</strong> For producing grafted or budded planting material (citrus, mango, avocado)</li>
</ul>
<h4>Nursery Media</h4>
<ul>
  <li>Seedbed mix: 2 parts topsoil + 1 part compost + 1 part sand</li>
  <li>Must be well-drained, nutrient-rich, pathogen-free</li>
  <li>Sterilise with heat (solarisation under clear plastic for 4–6 weeks) or formaldehyde drench to prevent damping-off</li>
</ul>
<h4>Nursery Management Operations</h4>
<ol>
  <li>Germination tray or nursery bed preparation</li>
  <li>Sowing seeds at correct depth (2–3× seed diameter)</li>
  <li>Pricking out: transfer seedlings when they have 2 true leaves to larger containers or polybags</li>
  <li>Watering: keep moist but not waterlogged; water in morning</li>
  <li>Shading: shade cloth 50–70% shade in first weeks; gradually reduce — "hardening off"</li>
  <li>Fertilising: liquid feeds (e.g., half-strength soluble NPK) every 2 weeks once established</li>
  <li>Pest/disease control: inspect regularly; treat damping off with fungicide drench; control aphids and whitefly</li>
  <li>Hardening off: gradually expose to full sun and outdoor conditions 1–2 weeks before field transplanting</li>
</ol>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Seed germination requires: water, warmth, oxygen (and sometimes light) — and viable seed.</li>
  <li>Seed dormancy (hard coat): break by scarification — mechanical (sandpaper) or chemical (H₂SO₄); or hot water.</li>
  <li>Cassava: vegetative propagation by stem cuttings (20–30 cm); insert at 45° with 2–3 nodes below soil.</li>
  <li>T-budding: most common budding method; used for citrus, mango; combines rootstock + scion.</li>
  <li>Cleft grafting: scion wedge inserted into rootstock split; used for topworking old mango/citrus trees.</li>
  <li>Tissue culture: rapid, disease-free multiplication; used for banana/plantain in Ghana.</li>
  <li>Hardening off: gradually reducing shade and shelter before field transplanting — critical step.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000016';

UPDATE topics SET content = '
<h2>Post-harvest Technology</h2>

<h3>17.1 Importance of Post-harvest Management</h3>
<p><strong>Post-harvest technology</strong> encompasses all operations and processes that occur after crop harvest — threshing, cleaning, drying, grading, storage, processing, packaging, and transport.</p>
<p><strong>Post-harvest losses in Africa:</strong></p>
<ul>
  <li>Estimated 25–40% of food produced in Sub-Saharan Africa is lost after harvest</li>
  <li>In Ghana: ~30–50% losses for perishables (tomato, vegetables); 10–20% for grains</li>
  <li>Total annual food loss in SSA = ~$4 billion</li>
  <li>Reducing losses by just 10% would improve food security significantly — equivalent to bringing new land under cultivation</li>
</ul>

<h3>17.2 Causes of Post-harvest Losses</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Cause</th><th>Examples</th><th>Affected Commodities</th></tr></thead>
  <tbody>
    <tr><td><strong>Biological</strong></td><td>Fungal mould (aflatoxin on groundnuts/maize), bacteria, viruses, insects (weevils, moths), rodents, birds</td><td>Grains, legumes, roots, vegetables</td></tr>
    <tr><td><strong>Physiological/Biochemical</strong></td><td>Continued respiration, ripening, ethylene production, enzymatic browning, sprouting</td><td>Fruits, vegetables, roots (cassava post-harvest deterioration starts within 24–48 hours)</td></tr>
    <tr><td><strong>Physical/Mechanical</strong></td><td>Rough handling at harvest; dropping; packing too tightly; abrasion; bruising</td><td>Fruits, tomato, yam, cassava</td></tr>
    <tr><td><strong>Environmental</strong></td><td>High temperature; high humidity; extreme rainfall; poor ventilation in stores</td><td>All commodities</td></tr>
    <tr><td><strong>Socioeconomic</strong></td><td>Lack of storage facilities; poor roads; inadequate processing equipment; price information gaps; lack of finance</td><td>All commodities; particularly affects smallholders</td></tr>
  </tbody>
</table>

<h3>17.3 Grain Storage</h3>
<h4>Conditions for Safe Storage of Dry Grains</h4>
<ul>
  <li><strong>Moisture content:</strong> Must be below safe storage moisture (12–13% for maize, rice; 11% for groundnuts); measure with moisture meter</li>
  <li><strong>Temperature:</strong> Low temperature slows insect and mould activity; below 15°C is ideal but difficult to achieve in tropics without refrigeration</li>
  <li><strong>Airtight storage:</strong> Reduces oxygen → kills insects through asphyxiation; prevents moisture ingress</li>
</ul>

<h4>Traditional Storage Structures</h4>
<ul>
  <li><strong>Cribs (on stilts):</strong> Maize stored on cob in ventilated wooden or bamboo cribs raised on stilts (rat guards); allows air drying</li>
  <li><strong>Granaries:</strong> Clay/mud/thatch circular granary structures; traditional in northern Ghana; used for sorghum, millet, cowpea</li>
  <li><strong>Underground pits:</strong> Lined with straw or clay; sealed; used in sub-Saharan Africa for grain storage; hermetic principle</li>
</ul>

<h4>Improved Storage Technologies</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Technology</th><th>Description</th><th>Advantage</th></tr></thead>
  <tbody>
    <tr><td><strong>Metal silos</strong></td><td>Airtight galvanised steel containers; hermetic; capacities 0.5–2.5 tonnes</td><td>No insects/mould; grain lasts 1–2 years; no chemicals needed; widely promoted in Ghana by USAID/FAO</td></tr>
    <tr><td><strong>Hermetic bags (PICS bags, GrainPro)</strong></td><td>Triple-layer polypropylene bags sealed airtight; insects die from CO₂ buildup</td><td>Cheap; effective; reduces weevil losses in cowpea; 70–90% reduction in insect damage; PICS bags = Purdue Improved Crop Storage</td></tr>
    <tr><td><strong>IRRI Super Bag</strong></td><td>Hermetic polyethylene bag for rice; 50 kg capacity</td><td>Prevents insect and mould damage; extends shelf life</td></tr>
    <tr><td><strong>Warehouse Receipt System</strong></td><td>Farmers store grain in certified warehouses; receive receipt used as loan collateral</td><td>Farmers avoid distress selling at harvest; can access credit using stored grain as collateral</td></tr>
  </tbody>
</table>

<h4>Chemical Control of Storage Pests</h4>
<ul>
  <li><strong>Phosphine (aluminium phosphide):</strong> Fumigant gas; most effective for large stores; highly toxic → trained operators only; leaves no residue</li>
  <li><strong>Actellic (pirimiphos-methyl):</strong> Dust or EC; applied to grain surface; protects against weevils and moths; recommended for cowpea and maize</li>
  <li><strong>Neem seed powder:</strong> Traditional bio-pesticide; mixed with stored cowpea (2–4% by weight); repels and kills weevils; no toxic residues</li>
  <li><strong>Wood ash:</strong> Traditional; mixed with grain; physical protection; pH change deters insects; cheap and available</li>
</ul>

<h3>17.4 Processing of Agricultural Products</h3>
<h4>Grain Processing</h4>
<ul>
  <li><strong>Threshing:</strong> Separating grain from stalk/panicle (manual beating, animal trampling, threshing machine)</li>
  <li><strong>Winnowing:</strong> Separating grain from chaff using wind or fan</li>
  <li><strong>Milling/Grinding:</strong> Converting grain to flour — hammer mill, stone mill; flour for bread, kenkey, tuo-zaafi</li>
  <li><strong>Parboiling (rice):</strong> Partially cooking paddy in water before milling; improves nutritional value; reduces breakage during milling; makes milling easier</li>
</ul>

<h4>Cassava Processing</h4>
<ul>
  <li><strong>Gari production:</strong> Peel → grate → ferment (24–72 hours) → press → roast → sieve; produces shelf-stable gari; fermentation reduces HCN (cyanide)</li>
  <li><strong>Fufu flour:</strong> Peel → ferment → dry → mill; reconstituted in hot water for fufu preparation</li>
  <li><strong>Starch extraction:</strong> Grate → wash → settle → dry; industrial use</li>
  <li><strong>Important:</strong> Raw cassava contains linamarin glycoside → enzymatic hydrolysis releases HCN (prussic acid) → toxic; processing removes HCN through fermentation, drying, cooking</li>
</ul>

<h4>Palm Oil Processing</h4>
<ol>
  <li>Harvest bunches → strip fruits → steam/boil to soften fruits and deactivate enzymes</li>
  <li>Pound or press to extract crude palm oil</li>
  <li>Separate oil from water and fibre</li>
  <li>Heat to clarify and remove moisture</li>
  <li>Small-scale: hand press; large-scale: hydraulic or screw press; industrial: continuous solvent extraction</li>
</ol>

<h3>17.5 Food Preservation Methods</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Principle</th><th>Products</th><th>Notes</th></tr></thead>
  <tbody>
    <tr><td><strong>Sun drying</strong></td><td>Reducing moisture to stop microbial growth and enzymatic activity</td><td>Fish, peppers, tomato, cassava chips, beans, yam flour</td><td>Cheap; simple; depends on weather; slow; quality may be poor (dust, contamination)</td></tr>
    <tr><td><strong>Mechanical drying</strong></td><td>Forced hot air in dryers; controlled temperature and airflow</td><td>Maize, rice, vegetables</td><td>Faster; more uniform; higher quality; expensive fuel/electricity</td></tr>
    <tr><td><strong>Smoking</strong></td><td>Heat drying + antiseptic compounds (phenols, aldehydes) in smoke</td><td>Fish (smoked herring, tilapia, mackerel); meat</td><td>Extends shelf life weeks to months; traditional and widely practised</td></tr>
    <tr><td><strong>Salting</strong></td><td>Osmotic dehydration; salt creates unfavourable osmotic environment for microbes</td><td>Fish; meat; vegetables</td><td>Traditional; effective; high salt intake is health concern</td></tr>
    <tr><td><strong>Fermentation</strong></td><td>Beneficial microorganisms change pH (acidification) and produce inhibitory compounds; destroys pathogens</td><td>Kenkey (fermented maize); yoghurt; cheese; dawadawa; gari</td><td>Traditional; improves nutrition and digestibility; natural preservation</td></tr>
    <tr><td><strong>Refrigeration/Chilling</strong></td><td>Low temperature (2–8°C) slows microbial growth and enzymatic activity</td><td>Fresh fruit, vegetables, meat, fish, dairy</td><td>Short-term (days-weeks); requires cold chain; electricity dependent</td></tr>
    <tr><td><strong>Freezing</strong></td><td>Very low temperature (&lt;-18°C) stops microbial and enzymatic activity</td><td>Meat, fish, vegetables, ice cream</td><td>Long-term (months-years); quality maintained; high energy cost; cold chain required</td></tr>
    <tr><td><strong>Canning</strong></td><td>Sealed in airtight container + heat treatment (sterilisation) kills all microbes</td><td>Tomato paste, fish, vegetables, fruits</td><td>Long shelf life; no refrigeration needed; industrial; high capital</td></tr>
    <tr><td><strong>Pasteurisation</strong></td><td>Moderate heat (72°C for 15 seconds, or 63°C for 30 min) kills pathogens without destroying food quality</td><td>Milk, fruit juice</td><td>Extends shelf life 2–3 weeks refrigerated; does not sterilise completely</td></tr>
  </tbody>
</table>

<h3>17.6 Aflatoxin Contamination</h3>
<p>Aflatoxin is a potent carcinogen (cancer-causing toxin) produced by the mould Aspergillus flavus and A. parasiticus.</p>
<ul>
  <li>Contaminates maize, groundnuts, sorghum, cottonseed when grown or stored under conditions of high moisture + high temperature</li>
  <li>Causes liver cancer in humans; immune suppression; stunting in children</li>
  <li>Major barrier to agricultural exports — international MRL (maximum residue level) = 10–20 ppb (parts per billion)</li>
  <li><strong>Prevention:</strong>
    <ul>
      <li>Harvest at right maturity; dry quickly to &lt;12% moisture</li>
      <li>Use hermetic storage; avoid moisture re-entry</li>
      <li>Use resistant varieties (where available)</li>
      <li>Afla-Guard / Aflasafe (biocontrol products): competitive strains of Aspergillus that displace toxigenic strains; applied to field; effective reduction of aflatoxin in West Africa</li>
    </ul>
  </li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Post-harvest losses: 25–40% in SSA — reducing losses = increasing food availability without growing more.</li>
  <li>Safe storage moisture: 12–13% for maize/rice; 11% for groundnuts — must dry to these levels.</li>
  <li>PICS bags: triple-layer hermetic bags; no insecticide needed; kills weevils in cowpea by CO₂ buildup.</li>
  <li>Cassava HCN: raw cassava contains cyanogenic glycoside (linamarin); processing (fermentation, drying, cooking) removes it.</li>
  <li>Gari processing: peel → grate → ferment → press → roast → sieve.</li>
  <li>Aflatoxin: produced by Aspergillus flavus on maize/groundnuts; carcinogenic; prevent by rapid drying + hermetic storage.</li>
  <li>Parboiling rice: partially cooking paddy before milling; reduces breakage; improves nutrition.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000017';

UPDATE topics SET content = '
<h2>Agricultural Extension and Cooperation</h2>

<h3>18.1 Definition and Purpose of Agricultural Extension</h3>
<p><strong>Agricultural extension</strong> is a non-formal educational process that facilitates the transfer of knowledge, skills, and technologies from researchers and development agents to farmers and rural communities to improve their productivity and livelihoods.</p>
<p><strong>Objectives of extension services:</strong></p>
<ul>
  <li>Educate farmers about improved agricultural technologies and practices</li>
  <li>Facilitate adoption of improved seeds, fertilisers, and farming methods</li>
  <li>Provide market information and linkages</li>
  <li>Promote rural development and poverty reduction</li>
  <li>Enable farmers to solve production and marketing problems</li>
  <li>Collect feedback from farmers to guide agricultural research</li>
</ul>

<h3>18.2 Extension Methods</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method Category</th><th>Specific Methods</th><th>Description</th><th>Best For</th></tr></thead>
  <tbody>
    <tr><td rowspan="4"><strong>Individual contact methods</strong></td><td>Farm and home visits</td><td>Extension agent visits individual farmer; direct advice</td><td>Complex problems; sensitive issues; building trust</td></tr>
    <tr><td>Office calls</td><td>Farmer visits extension office for advice</td><td>Motivated farmers seeking specific information</td><td></td></tr>
    <tr><td>Result demonstrations</td><td>Agent demonstrates improved practice on farmer''s own field; farmer sees results</td><td>Convincing sceptical farmers; technology adoption</td><td></td></tr>
    <tr><td>Personal letters/phone calls</td><td>Written or phone advice</td><td>Reaching farmers after field visits; quick questions</td><td></td></tr>
    <tr><td rowspan="4"><strong>Group contact methods</strong></td><td>Method demonstrations</td><td>Agent demonstrates HOW to do a practice (e.g., how to apply fertiliser) to a group</td><td>Skills transfer; reaching many farmers at once</td></tr>
    <tr><td>Field days</td><td>Farmers visit demonstration site at key crop stage to see and compare results</td><td>Showcasing improved varieties; motivating adoption</td><td></td></tr>
    <tr><td>Farmer field schools (FFS)</td><td>Group of 25–30 farmers meet weekly throughout crop season; learn by doing; facilitated self-discovery</td><td>Complex IPM, soil fertility, sustainable practices</td><td></td></tr>
    <tr><td>Farmer groups/cooperatives</td><td>Working with organised groups; collective learning and action</td><td>Efficient; builds social capital; leads to collective marketing</td><td></td></tr>
    <tr><td rowspan="4"><strong>Mass media methods</strong></td><td>Radio</td><td>Agricultural radio programmes; most effective mass medium in rural Ghana</td><td>Wide reach; low cost; literacy not required</td></tr>
    <tr><td>Television</td><td>Demonstration of practices; agricultural news</td><td>Urban and peri-urban audiences</td><td></td></tr>
    <tr><td>Print (leaflets, posters)</td><td>Simple illustrated leaflets left with farmers</td><td>Reinforcing messages; literate farmers</td></tr>
    <tr><td>Mobile phones/SMS/Internet</td><td>e-Extension; mobile advisory services; videos on smartphones</td><td>Modern; increasing coverage; rapid adoption in Ghana via platforms like Farmerline, ESOKO</td><td></td></tr>
  </tbody>
</table>

<h3>18.3 Technology Adoption Process</h3>
<p>Technology adoption does not happen overnight. The diffusion of innovation process describes how new practices spread through a farming community over time:</p>
<ol>
  <li><strong>Awareness:</strong> Farmer first hears about the innovation (through radio, extension agent, neighbour)</li>
  <li><strong>Interest:</strong> Farmer seeks more information</li>
  <li><strong>Evaluation:</strong> Farmer mentally assesses whether the practice is suitable for their situation</li>
  <li><strong>Trial:</strong> Farmer tries the practice on a small area to see if it works</li>
  <li><strong>Adoption:</strong> Farmer fully accepts and uses the practice on their whole farm</li>
</ol>
<h4>Categories of Adopters (Rogers'' Diffusion of Innovation)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Category</th><th>Proportion</th><th>Characteristics</th></tr></thead>
  <tbody>
    <tr><td><strong>Innovators</strong></td><td>~2.5%</td><td>First to adopt; risk-takers; may be wealthier; well-connected; often have external contacts; cosmopolitan</td></tr>
    <tr><td><strong>Early adopters</strong></td><td>~13.5%</td><td>Opinion leaders in community; respected; others watch them; crucial for spreading technology</td></tr>
    <tr><td><strong>Early majority</strong></td><td>~34%</td><td>Deliberate; adopt after seeing early adopters succeed; practical; influenced by peers</td></tr>
    <tr><td><strong>Late majority</strong></td><td>~34%</td><td>Sceptical; adopt under peer pressure or economic necessity; wait until technology is proven</td></tr>
    <tr><td><strong>Laggards</strong></td><td>~16%</td><td>Last to adopt; tradition-oriented; isolated; suspicious of change; often resource-poor</td></tr>
  </tbody>
</table>
<h4>Factors Affecting Technology Adoption</h4>
<ul>
  <li><strong>Relative advantage:</strong> Is it better than current practice? (yield increase, cost reduction)</li>
  <li><strong>Compatibility:</strong> Does it fit with existing practices, values, needs?</li>
  <li><strong>Complexity:</strong> Is it easy to understand and use?</li>
  <li><strong>Trialability:</strong> Can the farmer try it on a small scale first?</li>
  <li><strong>Observability:</strong> Can others easily see the results? (Visible results spread faster)</li>
  <li><strong>Economic resources:</strong> Can farmer afford the inputs required?</li>
  <li><strong>Access to credit, markets, and information</strong></li>
  <li><strong>Gender:</strong> Women farmers face additional barriers to adoption (land tenure, input access, market access)</li>
</ul>

<h3>18.4 Agricultural Cooperatives</h3>
<p><strong>Definition:</strong> A cooperative is a voluntary, democratic organisation owned and controlled by its members to meet their shared economic, social, and cultural needs.</p>

<h4>Cooperative Principles (ICA Principles)</h4>
<ol>
  <li>Voluntary and open membership</li>
  <li>Democratic member control (one member, one vote)</li>
  <li>Member economic participation (equitable contribution to capital)</li>
  <li>Autonomy and independence</li>
  <li>Education, training, and information</li>
  <li>Cooperation among cooperatives</li>
  <li>Concern for community</li>
</ol>

<h4>Types of Agricultural Cooperatives</h4>
<ul>
  <li><strong>Production cooperatives:</strong> Members pool resources to farm collectively; joint purchase of inputs; shared machinery</li>
  <li><strong>Marketing cooperatives:</strong> Members sell collectively for better prices; access bulk orders; KUAPA KOKOO (cocoa in Ghana)</li>
  <li><strong>Credit/Savings cooperatives:</strong> Members save collectively and lend to each other; Susu groups; credit unions</li>
  <li><strong>Multi-purpose cooperatives:</strong> Combine production, marketing, credit, and input supply functions</li>
</ul>

<h4>Benefits of Cooperative Membership</h4>
<ul>
  <li>Economies of scale in buying inputs (bulk purchase discounts)</li>
  <li>Better bargaining power in selling produce</li>
  <li>Shared use of expensive equipment; reduces individual cost</li>
  <li>Easier access to credit (group guarantee)</li>
  <li>Access to training and extension services</li>
  <li>Risk sharing among members</li>
  <li>Social support and community solidarity</li>
</ul>

<h4>Challenges of Cooperatives in Ghana/West Africa</h4>
<ul>
  <li>Weak governance and mismanagement of funds</li>
  <li>Elite capture — powerful members exploit ordinary members</li>
  <li>Free-rider problem — some members benefit without contributing</li>
  <li>Political interference in government-sponsored cooperatives</li>
  <li>Low literacy levels among members; poor record-keeping</li>
  <li>Lack of capital and working capital constraints</li>
</ul>

<h3>18.5 Government Agricultural Policies in Ghana</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Policy/Programme</th><th>Period</th><th>Key Features</th></tr></thead>
  <tbody>
    <tr><td>Food and Agriculture Sector Development Policy (FASDEP)</td><td>2002–present</td><td>National agricultural policy framework; food security; commercialisation; sustainable management</td></tr>
    <tr><td>Planting for Food and Jobs (PFJ)</td><td>2017–present</td><td>Subsidised seeds and fertilisers; free technical advice; boosted maize/rice production; extended to vegetables, cashew</td></tr>
    <tr><td>Rearing for Food and Jobs (RFJ)</td><td>2017–present</td><td>Subsidised feeds; vaccines; loans for livestock and poultry farmers</td></tr>
    <tr><td>Planting for Export and Rural Development (PERD)</td><td>2018–present</td><td>Support for cashew, cocoa, shea, coffee, rubber — export crops</td></tr>
    <tr><td>Ghana Agriculture Investment Programme</td><td>Ongoing</td><td>Infrastructure; irrigation; market access; agro-processing</td></tr>
  </tbody>
</table>

<h3>18.6 Role of ICT in Agricultural Extension</h3>
<ul>
  <li><strong>Mobile phones:</strong> Vast majority of Ghanaian farmers own mobile phones; SMS advisory services; voice-based extension</li>
  <li><strong>Farmerline:</strong> Ghana-based AgriTech company; multilingual voice messages with agronomic advice; reaches 1M+ farmers</li>
  <li><strong>ESOKO:</strong> Market price information via SMS; farmers receive weekly crop prices</li>
  <li><strong>Drone technology:</strong> Aerial field monitoring; precision application of inputs</li>
  <li><strong>GIS and remote sensing:</strong> Mapping crop areas; monitoring drought/flood; land use planning</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Agricultural extension: transfers knowledge from researchers to farmers through non-formal education.</li>
  <li>Extension methods: individual (farm visits), group (farmer field schools, field days), mass media (radio — most effective in rural Ghana).</li>
  <li>Technology adoption stages: Awareness → Interest → Evaluation → Trial → Adoption.</li>
  <li>Rogers'' categories: Innovators (2.5%) → Early adopters (13.5%) → Early majority (34%) → Late majority (34%) → Laggards (16%).</li>
  <li>Cooperative principles: voluntary membership; democratic control (one member, one vote).</li>
  <li>KUAPA KOKOO: Ghana''s famous cocoa marketing cooperative; fair trade certification; farmer-owned.</li>
  <li>Ghana''s PFJ policy (2017): subsidised seeds and fertilisers to boost maize/rice production.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000018';

UPDATE topics SET content = '
<h2>Biotechnology in Agriculture</h2>

<h3>19.1 Definition of Agricultural Biotechnology</h3>
<p><strong>Biotechnology</strong> is the use of living organisms, biological systems, or their components to develop or modify products and processes for specific use. In agriculture, it encompasses both traditional and modern techniques to improve crops and livestock.</p>

<h3>19.2 Traditional Biotechnology</h3>
<p>Traditional biotechnology uses living organisms without genetic engineering, and has been practised for thousands of years:</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Application</th><th>Description</th><th>Example</th></tr></thead>
  <tbody>
    <tr><td><strong>Selective breeding (plant)</strong></td><td>Choosing best-performing plants as parents for next generation; mass or pure-line selection</td><td>Development of improved OBATANPA maize variety in Ghana; all modern crop varieties are result of centuries of selective breeding</td></tr>
    <tr><td><strong>Selective breeding (animal)</strong></td><td>Mating superior animals to improve traits in offspring</td><td>Improving local Zebu cattle milk production by crossing with Friesian</td></tr>
    <tr><td><strong>Hybridisation</strong></td><td>Crossing different varieties or species to combine desirable traits; F₁ hybrids have heterosis (hybrid vigour)</td><td>Hybrid maize: F₁ hybrid seed gives 20–30% higher yield than OPV; vigour due to heterosis</td></tr>
    <tr><td><strong>Fermentation</strong></td><td>Microorganisms transform substrates into useful products</td><td>Gari (cassava) fermentation; kenkey (maize) fermentation; dawadawa (locust bean fermentation); yoghurt; silage; beer brewing</td></tr>
    <tr><td><strong>Composting</strong></td><td>Microbial decomposition of organic matter into stable humus</td><td>Producing compost manure for soil fertility improvement</td></tr>
    <tr><td><strong>Backcrossing</strong></td><td>Repeatedly crossing F₁ hybrid back to one parent to incorporate a specific trait while maintaining parent''s overall genetics</td><td>Incorporating disease resistance gene into high-yielding variety</td></tr>
  </tbody>
</table>

<h3>19.3 Modern Biotechnology</h3>

<h4>A. Tissue Culture (In vitro Propagation)</h4>
<ul>
  <li>Growing plant cells, tissues, or organs on sterile nutrient medium in laboratory conditions</li>
  <li>Explants (small pieces of plant tissue) taken from meristematic regions</li>
  <li>Uses:
    <ul>
      <li>Rapid multiplication of superior clones (banana, sugarcane, oil palm)</li>
      <li>Production of virus-free planting material (banana bunchy top virus elimination)</li>
      <li>Germplasm conservation — storing genetic material without taking up field space</li>
      <li>Embryo rescue — saving wide crosses that would otherwise abort</li>
    </ul>
  </li>
  <li>Used at CSIR-Crops Research Institute, Kumasi for banana/plantain in Ghana</li>
</ul>

<h4>B. Genetic Engineering (Recombinant DNA Technology)</h4>
<p>Direct manipulation of an organism''s genes by inserting, deleting, or modifying specific DNA sequences using molecular tools.</p>
<p><strong>Key Steps:</strong></p>
<ol>
  <li>Identify gene of interest (e.g., Bt toxin gene from Bacillus thuringiensis)</li>
  <li>Isolate and copy the gene using restriction enzymes and PCR</li>
  <li>Insert gene into a vector (usually Agrobacterium tumefaciens or gene gun)</li>
  <li>Transfer to target plant/animal cells</li>
  <li>Select transformed cells and regenerate into whole organism</li>
  <li>Test that trait is expressed correctly</li>
</ol>

<h4>C. Genetically Modified Organisms (GMOs)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>GMO Crop</th><th>Trait Introduced</th><th>Benefit</th><th>Status in Africa</th></tr></thead>
  <tbody>
    <tr><td><strong>Bt maize</strong></td><td>Bacillus thuringiensis toxin gene (Cry proteins) toxic to Lepidopteran insects</td><td>Resistance to stem borers and fall armyworm; reduces insecticide use; higher yields</td><td>Approved in South Africa, Nigeria, Ethiopia; not yet in Ghana</td></tr>
    <tr><td><strong>Bt cotton</strong></td><td>Bt toxin gene</td><td>Resistance to bollworm; reduces pesticide applications by 50–80%; major success in India, China, Burkina Faso (before discontinued)</td><td>Burkina Faso: grown 2008–2015 then phased out; South Africa ongoing</td></tr>
    <tr><td><strong>Herbicide-tolerant soybean/canola</strong></td><td>EPSPS gene (tolerance to glyphosate)</td><td>Farmers can apply glyphosate to kill weeds without harming crop; no-till possible</td><td>Not approved in West Africa; major crops in Americas, Australia</td></tr>
    <tr><td><strong>Golden Rice</strong></td><td>Beta-carotene (provitamin A) synthesis genes</td><td>Produces vitamin A precursor in rice grain; intended to address VAD (vitamin A deficiency) in Asia/Africa</td><td>Approved in Philippines (2021); not yet in Africa</td></tr>
    <tr><td><strong>Virus-resistant cassava</strong></td><td>Resistance to cassava mosaic virus and cassava brown streak virus</td><td>Protects against devastating viral diseases; research ongoing</td><td>Field trials in Uganda, Kenya; CSIR in Ghana conducting research</td></tr>
    <tr><td><strong>Drought-tolerant maize (DTMA)</strong></td><td>Conventional breeding + marker-assisted selection; not transgenic</td><td>30–50% higher yields under drought conditions; water-use efficient</td><td>Released in 13+ African countries including Ghana; not GMO — important distinction</td></tr>
  </tbody>
</table>

<h4>D. Arguments For and Against GMOs</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Arguments FOR GMOs</th><th>Arguments AGAINST GMOs</th></tr></thead>
  <tbody>
    <tr><td>Higher crop yields — can feed growing population</td><td>Unknown long-term health effects on humans</td></tr>
    <tr><td>Reduced pesticide and herbicide use</td><td>Risk of GMO genes spreading to wild relatives (gene flow)</td></tr>
    <tr><td>Improved nutritional quality (e.g., Golden Rice)</td><td>Reduced biodiversity — farmers dependent on few GM varieties</td></tr>
    <tr><td>Drought tolerance → climate change adaptation</td><td>Corporate control of food supply (seed patents); farmers cannot save seed</td></tr>
    <tr><td>Reduced post-harvest losses (insect-resistant storage)</td><td>Economic marginalisation of poor farmers who cannot afford GM seed</td></tr>
    <tr><td>Disease resistance reduces need for fungicides</td><td>Consumer rejection in some markets (EU) reduces export options</td></tr>
  </tbody>
</table>

<h3>19.4 Animal Biotechnology</h3>

<h4>A. Artificial Insemination (AI)</h4>
<ul>
  <li>Collection of semen from superior bulls/rams; processing and storage; insertion into female reproductive tract</li>
  <li><strong>Advantages:</strong>
    <ul>
      <li>One superior bull can father 100,000+ offspring/year (vs 30–50 by natural mating)</li>
      <li>Eliminates disease transmission through natural mating</li>
      <li>Semen can be frozen and transported worldwide (liquid nitrogen at -196°C)</li>
      <li>Access to superior genetics without purchasing expensive animals</li>
    </ul>
  </li>
  <li>Used in Ghana dairy cattle improvement programme; also in pigs, goats, and increasingly poultry</li>
</ul>

<h4>B. Embryo Transfer (ET)</h4>
<ul>
  <li>Superovulate a genetically superior donor cow using hormones → collect multiple embryos → transfer to surrogate recipient cows</li>
  <li>A superior cow can produce 5–15 embryos per flush vs 1 calf/year naturally</li>
  <li>Combined with AI and in vitro fertilisation (IVF) for maximum multiplication</li>
  <li>Expensive; requires veterinary expertise; used in dairy breeding programmes</li>
</ul>

<h4>C. Marker-Assisted Selection (MAS)</h4>
<ul>
  <li>Uses DNA markers (molecular indicators linked to genes of interest) to identify superior animals or plants in breeding programmes</li>
  <li>Speeds up breeding; can select for traits that are difficult/expensive to measure directly (disease resistance, meat quality)</li>
  <li>Important tool in developing improved crop varieties (DTMA — drought-tolerant maize in Africa)</li>
</ul>

<h3>19.5 Biosafety and Regulation</h3>
<ul>
  <li><strong>Cartagena Protocol on Biosafety (2000):</strong> International agreement on safe handling, transport, and use of Living Modified Organisms (LMOs); parties include Ghana</li>
  <li><strong>Ghana''s Plant Breeders Bill / Plant and Fertiliser Act (2010):</strong> Framework for plant variety protection and regulation of new crop varieties</li>
  <li><strong>CSIR (Council for Scientific and Industrial Research):</strong> Ghana''s main agricultural research institution; conducts GMO field trials (Pod Borer Resistant Cowpea, drought-tolerant maize)</li>
  <li><strong>Environmental Protection Agency (EPA):</strong> Regulates biosafety and GMO trials in Ghana</li>
  <li><strong>National Biosafety Authority (NBA):</strong> Assesses risks of GMOs for health and environment; issues permits</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Traditional biotechnology: selective breeding, hybridisation, fermentation — been used for centuries.</li>
  <li>Hybrid maize (F₁): heterosis gives 20–30% yield advantage over OPV; seed must be purchased each season (cannot save F₁ seed).</li>
  <li>Tissue culture: virus-free plants; rapid multiplication; used for banana/plantain in Ghana.</li>
  <li>Bt crops: contain Bacillus thuringiensis toxin gene; kills insects (stem borers, fall armyworm) without spraying.</li>
  <li>Golden Rice: contains beta-carotene gene; produces Vitamin A precursor to combat VAD.</li>
  <li>AI advantages: one superior bull → 100,000+ offspring; disease-free; frozen semen transport.</li>
  <li>Embryo transfer: superovulate donor cow → multiple embryos → transfer to surrogates.</li>
  <li>NBA (National Biosafety Authority): regulates GMO trials and releases in Ghana.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000019';

UPDATE topics SET content = '
<h2>Environmental Impacts and Sustainable Agriculture</h2>

<h3>20.1 Positive Environmental Impacts of Agriculture</h3>
<ul>
  <li>Well-managed farmland maintains soil cover and reduces erosion</li>
  <li>Agro-forestry systems sequester carbon and increase biodiversity</li>
  <li>Wetland rice fields create habitats for birds and aquatic organisms</li>
  <li>Traditional farming maintains crop genetic diversity (landraces)</li>
  <li>Organic farming promotes soil biological diversity</li>
  <li>Contour farming and terracing help conserve water and prevent flooding</li>
</ul>

<h3>20.2 Negative Environmental Impacts of Agriculture</h3>

<h4>A. Deforestation and Land Degradation</h4>
<ul>
  <li>Forest clearance for farmland destroys habitat; disrupts water cycle; releases stored carbon</li>
  <li>Ghana has lost >80% of original forest cover since 1900</li>
  <li>Shifting cultivation with shortened fallow periods → soil degradation</li>
  <li>Overgrazing → bare soil → erosion → desertification (major in northern Ghana, Sahel)</li>
  <li>Soil compaction from heavy machinery reduces infiltration, increases runoff</li>
</ul>

<h4>B. Water Pollution</h4>
<ul>
  <li><strong>Nutrient pollution (eutrophication):</strong>
    <ul>
      <li>Excess nitrogen (NO₃⁻) from fertilisers leaches into groundwater and surface water</li>
      <li>Causes algal blooms in lakes and rivers → depletes oxygen → fish deaths</li>
      <li>Nitrate in drinking water causes methemoglobinemia (blue baby syndrome) in infants</li>
    </ul>
  </li>
  <li><strong>Pesticide contamination:</strong>
    <ul>
      <li>Pesticide runoff and leaching contaminates rivers, streams, groundwater</li>
      <li>Kills non-target organisms (bees, fish, birds, beneficial insects)</li>
      <li>Persistent organochlorines (DDT, aldrin) accumulate in food chain (bioaccumulation/biomagnification)</li>
      <li>Galamsey (illegal small-scale mining) in Ghana involves chemical contamination but also affects agricultural water sources</li>
    </ul>
  </li>
  <li><strong>Sedimentation:</strong> Erosion fills rivers, dams, reduces water quality and storage capacity</li>
</ul>

<h4>C. Air Pollution</h4>
<ul>
  <li><strong>Greenhouse gas emissions from agriculture:</strong>
    <ul>
      <li><strong>Methane (CH₄):</strong> Produced by enteric fermentation in ruminants (cattle, sheep, goats); from rice paddies; from manure pits; 30× global warming potential of CO₂</li>
      <li><strong>Nitrous oxide (N₂O):</strong> From nitrification and denitrification in soils following fertiliser application; 300× global warming potential of CO₂</li>
      <li><strong>Carbon dioxide (CO₂):</strong> From deforestation (release of stored carbon); burning of crop residues and forest</li>
    </ul>
  </li>
  <li>Agriculture contributes ~10–12% of global greenhouse gas emissions</li>
  <li>Burning of crop residues: air pollution; loss of organic matter; kills soil organisms</li>
</ul>

<h4>D. Loss of Biodiversity</h4>
<ul>
  <li>Conversion of natural habitats to farmland destroys wildlife habitat</li>
  <li>Monoculture farming replaces diverse ecosystems with single-crop fields</li>
  <li>Pesticides kill non-target insects, birds, and soil organisms</li>
  <li>Replacement of traditional varieties with modern improved varieties reduces crop genetic diversity</li>
  <li>Introduction of invasive species through agricultural trade (e.g., Parthenium weed, Fall Armyworm)</li>
</ul>

<h3>20.3 Climate Change and Agriculture in West Africa</h3>
<h4>Projected Impacts of Climate Change</h4>
<ul>
  <li>Increased temperatures (1–3°C by 2050 in West Africa under business-as-usual scenarios)</li>
  <li>More variable and erratic rainfall; delayed onset of rains; more intense rainfall events</li>
  <li>Longer dry seasons; increased drought frequency</li>
  <li>Coastal flooding (sea level rise) affecting coastal agriculture in Ghana</li>
  <li>Shifts in crop suitability zones — cocoa zone may shift northwards</li>
  <li>Increased frequency and severity of pest and disease outbreaks</li>
</ul>

<h4>Adaptation Strategies</h4>
<ul>
  <li>Drought-tolerant crop varieties (DTMA maize, drought-tolerant cowpea)</li>
  <li>Conservation agriculture (minimum/zero tillage + residue cover + crop rotation)</li>
  <li>Improved irrigation and water harvesting</li>
  <li>Agro-forestry to moderate microclimate and diversify income</li>
  <li>Crop diversification to reduce risk</li>
  <li>Early warning systems for seasonal forecasts; ICT-based weather services for farmers</li>
</ul>

<h3>20.4 Sustainable Agriculture</h3>
<p><strong>Sustainable agriculture</strong> is farming that meets current food and fibre needs without compromising the ability of future generations to meet their needs. It balances economic profitability, environmental stewardship, and social equity.</p>
<h4>Principles of Sustainable Agriculture</h4>
<ol>
  <li>Maintain and enhance soil health and biodiversity</li>
  <li>Conserve and protect water resources</li>
  <li>Minimise external inputs and their environmental impact</li>
  <li>Maintain economic viability for farming families</li>
  <li>Support vibrant rural communities</li>
  <li>Adapt to and mitigate climate change</li>
</ol>

<h4>Sustainable Agricultural Practices</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Practice</th><th>Description</th><th>Benefit</th></tr></thead>
  <tbody>
    <tr><td><strong>Conservation Agriculture (CA)</strong></td><td>Three principles: minimum soil disturbance (no/minimum tillage) + permanent soil cover (residue, mulch, cover crop) + crop rotation/diversification</td><td>Reduces erosion 90%+; improves water infiltration; builds organic matter; reduces fuel costs; key FAO-promoted practice in Africa</td></tr>
    <tr><td><strong>Integrated Soil Fertility Management (ISFM)</strong></td><td>Combining mineral fertilisers with organic inputs (manure, compost, green manure, legumes) and improved varieties</td><td>More efficient fertiliser use; builds long-term soil health; reduces cost; widely promoted in sub-Saharan Africa by IITA</td></tr>
    <tr><td><strong>Organic farming</strong></td><td>No synthetic chemicals; relies on natural fertilisers, crop rotations, biological pest control</td><td>Premium prices; environmental benefit; soil health; biodiversity; consumer preference growing</td></tr>
    <tr><td><strong>Agro-forestry</strong></td><td>Integrating trees with crops and/or livestock</td><td>N-fixation; carbon sequestration; microclimate regulation; income diversification; biodiversity</td></tr>
    <tr><td><strong>Integrated Pest Management (IPM)</strong></td><td>Combining biological, cultural, physical, and minimal chemical control</td><td>Reduces pesticide use; protects natural enemies; sustainable pest control</td></tr>
    <tr><td><strong>Rainwater harvesting and small-scale irrigation</strong></td><td>Capturing and using rainfall efficiently; drip irrigation for high-value crops</td><td>Extends growing season; reduces drought risk; water use efficiency</td></tr>
    <tr><td><strong>Crop diversification</strong></td><td>Growing multiple crops instead of monoculture</td><td>Reduces risk; improves nutrition; maintains soil health; market diversification</td></tr>
  </tbody>
</table>

<h3>20.5 Key Environmental Legislation and Policies in Ghana</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Law/Policy</th><th>Year</th><th>Key Provisions</th></tr></thead>
  <tbody>
    <tr><td>Environmental Protection Agency Act</td><td>1994</td><td>Established EPA; environmental impact assessment (EIA) requirements; pollution control</td></tr>
    <tr><td>Forest and Wildlife Policy</td><td>1994</td><td>Sustainable management of forest and wildlife resources; community participation</td></tr>
    <tr><td>Water Resources Commission Act</td><td>1996</td><td>Regulates use of water resources; permits required for water use; prevents overexploitation</td></tr>
    <tr><td>Pesticides Control and Management Act</td><td>1996 (amended 2012)</td><td>Registration and regulation of pesticides; banning of highly toxic pesticides; label requirements</td></tr>
    <tr><td>Ghana National Climate Change Policy</td><td>2013</td><td>Adaptation and mitigation strategies; reducing agricultural emissions; supporting sustainable land use</td></tr>
  </tbody>
</table>

<h3>20.6 Organic Farming and Certification</h3>
<ul>
  <li>Organic farming excludes synthetic fertilisers and pesticides</li>
  <li>Relies on crop rotation, green manures, compost, and biological pest control</li>
  <li>Requires certification by accredited body (e.g., ECOCERT, IMO Control, Control Union)</li>
  <li>Certified organic products earn premium prices — especially for export (cocoa, shea, pineapple)</li>
  <li>Ghana has growing organic sector; certified organic cocoa, mango, and sesame exported to Europe and USA</li>
  <li>Challenges: lower short-term yields; certification cost and process; maintaining organic integrity in pests and disease management</li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Agriculture contributes ~10–12% of global greenhouse gas emissions: methane (ruminants, paddies), N₂O (fertilised soils), CO₂ (deforestation).</li>
  <li>Eutrophication: nitrate runoff → algal bloom → oxygen depletion → fish death → dead zones.</li>
  <li>Biomagnification: persistent pesticides (DDT) accumulate up food chain; highest concentration in top predators.</li>
  <li>Conservation Agriculture: no/minimum tillage + permanent soil cover + crop rotation — FAO''s 3 principles.</li>
  <li>ISFM: mineral fertiliser + organic inputs + improved varieties = most effective approach for African smallholders.</li>
  <li>Ghana lost &gt;80% of original forest cover since 1900 — deforestation is a critical issue.</li>
  <li>Sustainable agriculture meets current needs without compromising future generations'' ability to meet theirs.</li>
  <li>Climate change threats: higher temperatures, erratic rainfall, longer dry seasons — adaptation needed urgently.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000020';
