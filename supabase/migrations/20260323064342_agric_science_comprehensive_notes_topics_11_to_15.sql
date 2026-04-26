/*
  # Agricultural Science Comprehensive Notes - Topics 11 to 15

  Adds in-depth study notes for topics 11 through 15 of Agricultural Science:
  11. Fish Farming (Aquaculture)
  12. Agricultural Economics and Marketing
  13. Farm Records and Management
  14. Forestry and Agro-forestry
  15. Soil Erosion and Conservation
*/

UPDATE topics SET content = '
<h2>Fish Farming (Aquaculture)</h2>

<h3>11.1 Definition and Importance of Aquaculture</h3>
<p><strong>Aquaculture</strong> is the controlled cultivation and harvesting of aquatic organisms — fish, molluscs, crustaceans, and aquatic plants — in freshwater or marine environments.</p>
<p><strong>Importance:</strong></p>
<ul>
  <li>Supplements wild capture fisheries which are overexploited in many areas</li>
  <li>Provides high-quality animal protein — fish protein has all essential amino acids</li>
  <li>Income source — catfish farming highly profitable in Ghana, Nigeria</li>
  <li>Employment in rural areas</li>
  <li>Ghana''s per capita fish consumption is among the highest in Africa (~25 kg/person/year); aquaculture helps fill the supply gap</li>
  <li>Conversion efficiency: fish FCR 1.5–2.0 (more efficient than poultry or cattle)</li>
</ul>

<h3>11.2 Fish Species Cultured in Ghana/West Africa</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Species</th><th>Common Name</th><th>Characteristics</th><th>Farming System</th></tr></thead>
  <tbody>
    <tr><td>Clarias gariepinus</td><td>African catfish (sharp tooth catfish)</td><td>Air-breathing organ — survives in low-oxygen water; very hardy; fast-growing; 1–1.5 kg in 6–8 months</td><td>Earthen ponds, concrete tanks, cages</td></tr>
    <tr><td>Oreochromis niloticus</td><td>Nile tilapia</td><td>Most widely farmed tilapia globally; accepts formulated feeds; matures quickly; tends to over-reproduce → stunting</td><td>Earthen ponds, cages in reservoirs</td></tr>
    <tr><td>Heterotis niloticus</td><td>African bonytongue</td><td>Herbivore; eats phytoplankton; good for poly-culture with tilapia</td><td>Earthen ponds</td></tr>
    <tr><td>Lates niloticus</td><td>Nile perch</td><td>Predatory; excellent meat quality; mainly capture fishery</td><td>Cage farming in Lake Volta</td></tr>
    <tr><td>Penaeus monodon</td><td>Tiger prawn</td><td>Marine; high value; emerging aquaculture along Ghana coast</td><td>Coastal brackish ponds</td></tr>
  </tbody>
</table>

<h3>11.3 Types of Aquaculture Systems</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>System</th><th>Description</th><th>Stocking Density</th><th>Notes</th></tr></thead>
  <tbody>
    <tr><td><strong>Extensive</strong></td><td>Large ponds; low stocking; relies on natural feed (algae, insects, detritus)</td><td>&lt; 1 fish/m²</td><td>Low input/output; rural subsistence; traditional ponds</td></tr>
    <tr><td><strong>Semi-intensive</strong></td><td>Moderate stocking; supplementary feeding + pond fertilisation</td><td>1–5 fish/m²</td><td>Most common smallholder system in Ghana; combination of feeds and pond management</td></tr>
    <tr><td><strong>Intensive</strong></td><td>High stocking density; complete dependence on formulated feeds; active water management</td><td>10–50+ fish/m²</td><td>Concrete tanks, raceways, cages; high capital and management; maximum yield</td></tr>
    <tr><td><strong>Cage culture</strong></td><td>Fish raised in net cages suspended in natural water body (reservoir, lake, river)</td><td>50–200 fish/m³</td><td>Uses Lake Volta in Ghana; Akosombo area; tilapia cage farming expanding</td></tr>
    <tr><td><strong>Recirculating Aquaculture System (RAS)</strong></td><td>Indoor; water purified and recycled; controlled environment</td><td>100–300 fish/m³</td><td>Very high capital cost; high-value species; emerging in urban Ghana</td></tr>
  </tbody>
</table>

<h3>11.4 Fish Pond Construction</h3>
<h4>Site Selection Criteria</h4>
<ul>
  <li><strong>Water availability:</strong> Reliable water source — stream, borehole, reservoir — with adequate flow</li>
  <li><strong>Topography:</strong> Gentle slope (0.5–2%) for gravity filling and draining; valleys ideal for large earthen ponds</li>
  <li><strong>Soil type:</strong> Clay soil (>25% clay) to retain water; avoid sandy or gravelly soils that leak; test by making a ball of moist soil — should hold shape</li>
  <li><strong>Water quality:</strong> No pollution from industries, pesticides; neutral to slightly alkaline pH</li>
  <li><strong>Accessibility:</strong> Close to road for input delivery and fish sales; near market</li>
  <li><strong>Land tenure:</strong> Secure access to land</li>
</ul>

<h4>Pond Preparation Steps</h4>
<ol>
  <li><strong>Drying and cleaning:</strong> Drain pond; dry for 2–3 weeks to kill pathogens and predator fish</li>
  <li><strong>Liming:</strong> Apply agricultural lime (CaCO₃) at 200–500 kg/ha to raise pH to 7–8; kills pathogens; improves productivity
    <ul>
      <li>Acidic ponds (pH &lt; 6): apply quicklime (CaO) at 100–200 kg/ha or agricultural lime at 500 kg/ha</li>
    </ul>
  </li>
  <li><strong>Fertilisation:</strong> Add organic fertiliser (poultry manure 500–1,000 kg/ha or inorganic NPK) to stimulate natural food organisms (phytoplankton, zooplankton)</li>
  <li><strong>Filling:</strong> Fill with water; allow natural food to develop (green colour = good plankton bloom) for 5–7 days</li>
  <li><strong>Stocking:</strong> Introduce fingerlings when pond water is green (plankton-rich)</li>
</ol>

<h3>11.5 Feed Management in Aquaculture</h3>
<h4>Types of Fish Feed</h4>
<ul>
  <li><strong>Natural food:</strong> Phytoplankton, zooplankton, benthic organisms, insects — stimulated by pond fertilisation</li>
  <li><strong>Supplementary feeds:</strong> Inexpensive locally available materials — rice bran, broken rice, cassava, maize bran; low nutritional value but reduce feeding costs</li>
  <li><strong>Formulated pellet feeds:</strong> Complete nutrition; floating or sinking pellets; high protein (28–45% for catfish); expensive but required for intensive production</li>
</ul>

<h4>Feeding Rates</h4>
<ul>
  <li>Feed at 3–5% body weight per day for fingerlings; reduce to 2–3% as fish grow</li>
  <li>Feed 2–3 times per day; remove uneaten feed after 30 minutes</li>
  <li>Feed conversion ratio (FCR) = Feed fed / Weight gain; target FCR &lt; 2.0</li>
</ul>

<h3>11.6 Water Quality Management</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Parameter</th><th>Optimal Range</th><th>Effect if Outside Range</th></tr></thead>
  <tbody>
    <tr><td>Dissolved Oxygen (DO)</td><td>5–8 mg/L; minimum 3 mg/L</td><td>&lt;2 mg/L: fish gasp at surface; mortality</td></tr>
    <tr><td>pH</td><td>6.5–8.5</td><td>&lt;5 or &gt;10: fish stress; mortality</td></tr>
    <tr><td>Temperature</td><td>25–30°C for tropical species</td><td>&gt;35°C: stress; reduced feeding; &lt;18°C: slow growth</td></tr>
    <tr><td>Ammonia (NH₃)</td><td>&lt;0.05 mg/L</td><td>Gill damage; immune suppression; from decomposing feed and fish excretion</td></tr>
    <tr><td>Turbidity</td><td>Secchi disc depth 25–40 cm (moderate turbidity)</td><td>Too clear: poor plankton; too murky: reduced photosynthesis; oxygen depletion at night</td></tr>
    <tr><td>Alkalinity</td><td>80–200 mg/L as CaCO₃</td><td>Buffers pH swings; promotes plankton growth</td></tr>
  </tbody>
</table>

<h3>11.7 Fish Harvesting</h3>
<ul>
  <li><strong>Partial harvesting:</strong> Remove large fish with seine net periodically while leaving smaller fish to grow — allows continuous production</li>
  <li><strong>Complete harvesting:</strong> Drain pond; harvest all fish with seine net; prepare pond for next cycle</li>
  <li>Best to harvest in cool morning hours to reduce stress and spoilage</li>
  <li>Harvest catfish at 500–1,000 g; tilapia at 300–500 g for best market price</li>
</ul>

<h3>11.8 Post-Harvest Fish Handling</h3>
<ul>
  <li>Fresh fish deteriorates very quickly (within hours in tropical temperatures)</li>
  <li>Keep fish alive until just before processing/selling (live fish transport is best)</li>
  <li><strong>Preservation methods:</strong>
    <ul>
      <li><strong>Smoking:</strong> Traditional method; reduces moisture; inhibits microbial growth; flavour — most common in Ghana</li>
      <li><strong>Drying/Sun-drying:</strong> Simple; cheap; for inland areas</li>
      <li><strong>Icing/Chilling:</strong> Extends freshness 2–3 days; expensive</li>
      <li><strong>Freezing:</strong> Extends shelf life months; requires electricity; cold chain</li>
      <li><strong>Salting:</strong> Traditional method; osmotic preservation</li>
    </ul>
  </li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Catfish (Clarias gariepinus) is most important farmed fish in Ghana — air-breathing; fast-growing.</li>
  <li>Tilapia tends to over-reproduce in ponds → stunting if not controlled (use mono-sex male tilapia).</li>
  <li>Pond liming (lime at 200–500 kg/ha) raises pH, kills pathogens, improves productivity.</li>
  <li>Dissolved oxygen &lt; 2 mg/L causes mortality — fish gasp at surface (hyperventilate).</li>
  <li>FCR &lt; 2 = efficient: fish produces 1 kg for every 2 kg feed or less.</li>
  <li>Cage culture uses Lake Volta — important commercial fish production system in Ghana.</li>
  <li>Secchi disc depth 25–40 cm = optimal plankton bloom for semi-intensive ponds.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000011';

UPDATE topics SET content = '
<h2>Agricultural Economics and Marketing</h2>

<h3>12.1 Basic Economic Concepts in Agriculture</h3>
<p><strong>Agricultural Economics</strong> is the application of economic principles to the production, distribution, and consumption of agricultural products and resources.</p>

<h4>Factors of Production</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Factor</th><th>Definition</th><th>Agricultural Examples</th><th>Reward</th></tr></thead>
  <tbody>
    <tr><td><strong>Land</strong></td><td>All natural resources used in production</td><td>Farm land, water, sunlight, forests, minerals</td><td>Rent</td></tr>
    <tr><td><strong>Labour</strong></td><td>Human effort — physical and mental</td><td>Farm workers, ploughing, weeding, harvesting</td><td>Wages/Salary</td></tr>
    <tr><td><strong>Capital</strong></td><td>Man-made resources used in production</td><td>Tractors, irrigation equipment, buildings, seeds, fertiliser</td><td>Interest</td></tr>
    <tr><td><strong>Management/Entrepreneurship</strong></td><td>Organising other factors; bearing risk</td><td>Farm manager; farmer who takes risk of investing in inputs</td><td>Profit</td></tr>
  </tbody>
</table>

<h4>Supply and Demand</h4>
<ul>
  <li><strong>Law of Demand:</strong> As price increases, quantity demanded decreases (inverse relationship) — ceteris paribus</li>
  <li><strong>Law of Supply:</strong> As price increases, quantity supplied increases (direct relationship)</li>
  <li><strong>Equilibrium price:</strong> Price at which quantity demanded = quantity supplied; market clears</li>
  <li><strong>Price elasticity of demand for food:</strong> Generally inelastic — small price changes cause small quantity changes; people still need to eat</li>
  <li><strong>Seasonal price variation:</strong> Prices low at harvest time (high supply); prices rise in dry season (reduced supply)</li>
</ul>

<h3>12.2 Costs in Farm Production</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Cost Type</th><th>Definition</th><th>Examples</th></tr></thead>
  <tbody>
    <tr><td><strong>Fixed Costs (FC)</strong></td><td>Costs that do not change with the level of output; must be paid even if nothing is produced</td><td>Land rent, loan repayment, depreciation of machinery, permanent labour, buildings</td></tr>
    <tr><td><strong>Variable Costs (VC)</strong></td><td>Costs that change directly with the level of production</td><td>Seeds, fertilisers, pesticides, hired labour, fuel, irrigation water</td></tr>
    <tr><td><strong>Total Costs (TC)</strong></td><td>TC = FC + VC</td><td>All costs combined</td></tr>
    <tr><td><strong>Average Total Cost (ATC)</strong></td><td>TC ÷ Output</td><td>Cost per unit produced</td></tr>
    <tr><td><strong>Marginal Cost (MC)</strong></td><td>Additional cost of producing one more unit</td><td>Cost of extra bag of fertiliser on yield</td></tr>
  </tbody>
</table>

<h4>Example Gross Margin Analysis (1 Hectare Maize)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Item</th><th>Amount (GHS)</th></tr></thead>
  <tbody>
    <tr><td><strong>Gross Income</strong></td><td></td></tr>
    <tr><td>Yield: 2,500 kg × GHS 2.50/kg</td><td>6,250</td></tr>
    <tr><td><strong>Variable Costs</strong></td><td></td></tr>
    <tr><td>Seeds (25 kg × GHS 8/kg)</td><td>200</td></tr>
    <tr><td>Fertiliser (2 bags NPK + 1 bag Urea)</td><td>900</td></tr>
    <tr><td>Labour (land prep, planting, weeding, harvesting)</td><td>1,200</td></tr>
    <tr><td>Herbicides + pesticides</td><td>300</td></tr>
    <tr><td>Total Variable Costs (TVC)</td><td>2,600</td></tr>
    <tr><td><strong>Gross Margin = Gross Income − TVC</strong></td><td><strong>3,650</strong></td></tr>
  </tbody>
</table>

<h3>12.3 Farm Planning and Budgeting</h3>
<p>A <strong>farm plan</strong> is a written programme that describes what will be produced and how resources will be allocated over a future period.</p>
<h4>Steps in Farm Planning</h4>
<ol>
  <li>Inventory of resources: land, labour, capital, equipment</li>
  <li>Identify production possibilities and constraints</li>
  <li>Set production goals</li>
  <li>Develop enterprise budgets for each crop/livestock activity</li>
  <li>Select optimal combination of enterprises</li>
  <li>Prepare whole-farm budget (cash flow)</li>
  <li>Implement and monitor; adjust as necessary</li>
</ol>

<h3>12.4 Agricultural Marketing</h3>
<p><strong>Agricultural marketing</strong> encompasses all activities involved in moving agricultural products from the farm to the final consumer.</p>

<h4>Marketing Functions</h4>
<ul>
  <li><strong>Exchange functions:</strong> Buying and selling — farmer → assembler → wholesaler → retailer → consumer</li>
  <li><strong>Physical functions:</strong> Transportation, storage, processing, packaging, grading and standardisation</li>
  <li><strong>Facilitating functions:</strong> Market information, financing, risk-bearing, standardisation</li>
</ul>

<h4>Marketing Channels</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Channel</th><th>Description</th><th>Example</th></tr></thead>
  <tbody>
    <tr><td>Direct marketing</td><td>Farmer sells directly to consumer; no intermediaries</td><td>Roadside stall; farmers'' market; community-supported agriculture (CSA)</td></tr>
    <tr><td>One-level channel</td><td>Farmer → Retailer → Consumer</td><td>Farmer supplies fresh vegetables to supermarket</td></tr>
    <tr><td>Two-level channel</td><td>Farmer → Wholesaler → Retailer → Consumer</td><td>Most staple grains in Ghana; cocoa: farmer → LBC → CMC → export</td></tr>
    <tr><td>Three-level channel</td><td>Farmer → Assembler → Wholesaler → Retailer → Consumer</td><td>Remote farmers sell small quantities to assemblers at farm gate</td></tr>
  </tbody>
</table>

<h4>Marketing Intermediaries and Their Roles</h4>
<ul>
  <li><strong>Assemblers/Collectors:</strong> Buy small quantities from many farmers; assemble larger volumes for sale to wholesalers; provide transport credit</li>
  <li><strong>Wholesalers:</strong> Buy in bulk; sort, grade, store; break bulk for retailers; Makola Market (Accra), Kumasi Central Market</li>
  <li><strong>Retailers:</strong> Sell in small quantities to consumers; provide credit; convenient location; market women at local markets</li>
  <li><strong>Processors:</strong> Add value — gari processors, cooking oil mills, grain millers</li>
  <li><strong>Exporters:</strong> Meet international standards; access premium markets</li>
</ul>

<h4>Marketing Problems in West Africa</h4>
<ul>
  <li>Poor road infrastructure — increases transport costs; post-harvest losses</li>
  <li>Limited storage facilities — farmers forced to sell at harvest (low prices)</li>
  <li>Lack of market information — farmers cannot access best prices</li>
  <li>Price volatility — seasonal and annual price fluctuations create risk</li>
  <li>Lack of standardisation — no uniform grades; consumers uncertain of quality</li>
  <li>Long supply chains — many intermediaries take margins; farmer gets small share of final price</li>
  <li>Limited access to formal credit for market activities</li>
</ul>

<h3>12.5 Agricultural Cooperatives</h3>
<p>A <strong>cooperative</strong> is a voluntary association of farmers who pool resources and act collectively to achieve economic and social objectives that individuals cannot achieve alone.</p>
<h4>Benefits of Cooperatives</h4>
<ul>
  <li>Bulk buying of inputs at lower prices</li>
  <li>Collective bargaining for better prices when selling</li>
  <li>Shared use of expensive equipment (tractor, processing machine)</li>
  <li>Easier access to credit (group collateral)</li>
  <li>Knowledge sharing and collective extension services</li>
  <li>Collective marketing: reduces transport cost; meets bulk orders</li>
</ul>
<p><strong>Examples in Ghana:</strong> KUAPA KOKOO (cocoa cooperative — links farmers to fair trade markets); various rice farmer cooperatives in northern Ghana</p>

<h3>12.6 Price Formation and Stabilisation</h3>
<ul>
  <li><strong>Price discovery:</strong> Determined by supply and demand in competitive markets</li>
  <li><strong>Seasonal prices:</strong> Lowest at harvest; rise until next harvest — creates incentive to store</li>
  <li><strong>Government intervention tools:</strong>
    <ul>
      <li>Minimum guaranteed price (floor price) — protects farmers from low prices; Ghana Cocoa Board sets farmgate price</li>
      <li>Strategic grain reserve — government buys and stores grain at harvest; releases in scarcity to stabilise prices</li>
      <li>Subsidies on inputs — reduces production costs; increases supply</li>
      <li>Import/export tariffs — protect domestic producers from cheap imports</li>
    </ul>
  </li>
</ul>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Four factors of production: Land (rent), Labour (wages), Capital (interest), Management (profit).</li>
  <li>Fixed costs do not change with output (e.g., rent); variable costs do (e.g., seeds, fertiliser).</li>
  <li>Gross Margin = Gross Income − Total Variable Costs (not including fixed costs).</li>
  <li>Marketing channels: direct; one-level; two-level; three-level — know each with examples.</li>
  <li>Cocoa marketing in Ghana: farmer → Licensed Buying Company (LBC) → Cocoa Marketing Company (CMC) → export.</li>
  <li>Cooperatives improve farmers'' bargaining power, access to credit, and input purchasing.</li>
  <li>KUAPA KOKOO: Ghana''s largest cocoa cooperative — fair trade certified.</li>
  <li>Law of demand: price up → quantity demanded down. Law of supply: price up → quantity supplied up.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000012';

UPDATE topics SET content = '
<h2>Farm Records and Management</h2>

<h3>13.1 Importance of Farm Records</h3>
<p>Farm records are written accounts of all activities, inputs, outputs, and financial transactions on a farm. Keeping accurate records is fundamental to good farm management.</p>
<p><strong>Why keep farm records?</strong></p>
<ul>
  <li>Enable analysis of profitability and identification of loss-making enterprises</li>
  <li>Basis for farm planning — what worked, what did not</li>
  <li>Required for loan applications (banks, microfinance, MASLOC)</li>
  <li>Track performance over time; compare to benchmarks</li>
  <li>Aid tax computation</li>
  <li>Provide evidence for insurance claims</li>
  <li>Facilitate transfer of farm business to heirs</li>
</ul>

<h3>13.2 Types of Farm Records</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Record Type</th><th>Information Recorded</th><th>Purpose</th></tr></thead>
  <tbody>
    <tr><td><strong>Inventory Records</strong></td><td>All assets: land, buildings, equipment, livestock, stored inputs, feed</td><td>Determine farm net worth; depreciation calculation; insurance</td></tr>
    <tr><td><strong>Production Records</strong></td><td>Crop yields; livestock numbers; milk/egg output per period; mortality; inputs used</td><td>Measure productivity; identify best-performing enterprises</td></tr>
    <tr><td><strong>Labour Records</strong></td><td>Workers employed (family and hired); days/hours worked; tasks done</td><td>Labour cost calculation; efficiency analysis; wage payment</td></tr>
    <tr><td><strong>Financial Records</strong></td><td>Cash received and paid; receipts; invoices</td><td>Profit and loss determination; tax</td></tr>
    <tr><td><strong>Marketing Records</strong></td><td>Products sold; quantities; prices received; buyer details; date of sale</td><td>Revenue tracking; market analysis; contract fulfilment</td></tr>
    <tr><td><strong>Health Records</strong></td><td>Diseases diagnosed; treatments given; vaccination history; death records</td><td>Monitor disease prevalence; plan vaccination; identify disease trends</td></tr>
    <tr><td><strong>Soil and Climate Records</strong></td><td>Rainfall; temperatures; soil tests; fertiliser applications; pH records</td><td>Crop planning; irrigation scheduling; soil fertility management</td></tr>
    <tr><td><strong>Breeding Records (Livestock)</strong></td><td>Mating dates; parentage; birth weights; weaning weights; growth rates</td><td>Identify productive animals; selection for breeding; culling decisions</td></tr>
  </tbody>
</table>

<h3>13.3 Farm Accounts</h3>
<h4>A. Cash Analysis Book (Farm Cashbook)</h4>
<p>Records all cash receipts (income) and payments (expenditure):</p>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Date</th><th>Particulars</th><th>Receipts (GHS)</th><th>Payments (GHS)</th><th>Balance (GHS)</th></tr></thead>
  <tbody>
    <tr><td>01/03</td><td>Opening balance</td><td>500</td><td>—</td><td>500</td></tr>
    <tr><td>03/03</td><td>Sale of 10 bags maize</td><td>1,200</td><td>—</td><td>1,700</td></tr>
    <tr><td>05/03</td><td>Purchase of fertiliser (2 bags NPK)</td><td>—</td><td>450</td><td>1,250</td></tr>
    <tr><td>10/03</td><td>Hired labour (weeding)</td><td>—</td><td>300</td><td>950</td></tr>
  </tbody>
</table>

<h4>B. Farm Profit and Loss Account</h4>
<ul>
  <li><strong>Gross Income:</strong> Total value of all farm outputs sold + change in value of livestock/stocks</li>
  <li><strong>Total Costs:</strong> All expenses paid out + depreciation of assets</li>
  <li><strong>Net Profit = Gross Income − Total Costs</strong></li>
  <li>Or: <strong>Farm Profit = Gross Margin − Fixed Costs</strong></li>
</ul>

<h4>C. Farm Inventory/Balance Sheet</h4>
<ul>
  <li><strong>Assets (what the farm owns):</strong> Land, buildings, machinery, livestock, crops in store, cash, debtors</li>
  <li><strong>Liabilities (what the farm owes):</strong> Bank loans, outstanding bills, creditors</li>
  <li><strong>Net Worth (Equity) = Assets − Liabilities</strong></li>
</ul>

<h3>13.4 Depreciation</h3>
<p>Depreciation is the loss in value of a fixed asset over time due to wear, age, or obsolescence.</p>
<h4>Straight-Line Depreciation</h4>
<p>Annual Depreciation = (Purchase Cost − Salvage Value) ÷ Useful Life (years)</p>
<p><strong>Example:</strong> Tractor purchased at GHS 120,000; salvage value GHS 20,000; useful life 10 years<br>
Annual Depreciation = (120,000 − 20,000) ÷ 10 = <strong>GHS 10,000/year</strong></p>

<h3>13.5 Principles of Farm Management</h3>
<p>Good farm management involves applying economic principles to maximise returns from available resources:</p>

<h4>Principle of Variable Proportions (Law of Diminishing Returns)</h4>
<ul>
  <li>As more of one variable input is added while others remain fixed, beyond a point each additional unit of input yields less additional output</li>
  <li>Example: Applying more fertiliser to maize — first bags give large yield increases; after optimum level, each additional bag gives smaller gains; eventually yield may decrease (toxicity)</li>
  <li><strong>Implication:</strong> There is an economically optimal input level — apply where Marginal Revenue Product (MRP) = input cost</li>
</ul>

<h4>Principle of Opportunity Cost</h4>
<ul>
  <li>The cost of using a resource is the value of the next best alternative foregone</li>
  <li>Example: Using land for maize means forgoing income from growing rice on that land</li>
  <li>Farmers must choose activities with the highest returns relative to opportunity cost</li>
</ul>

<h4>Principle of Comparative Advantage</h4>
<ul>
  <li>Farmers should specialise in producing crops/livestock for which they have the greatest relative advantage (lower opportunity cost)</li>
  <li>Basis for agricultural trade between regions</li>
</ul>

<h3>13.6 Farm Budget Preparation</h3>
<p>A farm budget estimates expected income and costs for a future period to guide decision-making.</p>
<h4>Enterprise Budget Format (Per Hectare of Tomato)</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Item</th><th>Amount (GHS)</th></tr></thead>
  <tbody>
    <tr><td colspan="2"><strong>Expected Income</strong></td></tr>
    <tr><td>Yield: 15,000 kg × GHS 1.50/kg</td><td>22,500</td></tr>
    <tr><td colspan="2"><strong>Variable Costs</strong></td></tr>
    <tr><td>Seed (grafted transplants)</td><td>800</td></tr>
    <tr><td>Fertiliser (NPK + Urea + CAN)</td><td>2,500</td></tr>
    <tr><td>Pesticides + fungicides + herbicides</td><td>1,800</td></tr>
    <tr><td>Irrigation (fuel, water)</td><td>1,200</td></tr>
    <tr><td>Labour (land prep to harvest)</td><td>3,000</td></tr>
    <tr><td>Packaging and transport to market</td><td>600</td></tr>
    <tr><td><strong>Total Variable Costs</strong></td><td><strong>9,900</strong></td></tr>
    <tr><td><strong>Gross Margin</strong></td><td><strong>12,600</strong></td></tr>
    <tr><td>Fixed costs (land rent + depreciation)</td><td>2,000</td></tr>
    <tr><td><strong>Net Profit</strong></td><td><strong>10,600</strong></td></tr>
  </tbody>
</table>

<h3>13.7 Agricultural Finance</h3>
<h4>Sources of Agricultural Finance</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Source</th><th>Type</th><th>Features</th></tr></thead>
  <tbody>
    <tr><td>Commercial banks</td><td>Formal</td><td>Low interest; requires collateral; complicated; slow; not accessible to poor farmers</td></tr>
    <tr><td>Microfinance institutions</td><td>Formal/Semi-formal</td><td>Small loans; no collateral; higher interest; group lending; accessible to smallholders</td></tr>
    <tr><td>MASLOC (Ghana)</td><td>Government</td><td>Micro and small loans for entrepreneurs; subsidised interest</td></tr>
    <tr><td>Agricultural Development Bank (ADB)</td><td>Formal/Government</td><td>Specialises in agricultural loans in Ghana; ADB Agro-processing loans</td></tr>
    <tr><td>Input credit from agro-dealers</td><td>Informal</td><td>Seeds/fertiliser on credit; repay after harvest; high implicit interest</td></tr>
    <tr><td>Susu (rotating savings)</td><td>Informal</td><td>Group savings; predictable lump sum; no interest; common in Ghana</td></tr>
    <tr><td>Family and friends</td><td>Informal</td><td>Interest-free or low interest; flexible; limited amounts</td></tr>
  </tbody>
</table>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Farm records: inventory, production, labour, financial, marketing, health, breeding, soil records.</li>
  <li>Gross Margin = Gross Income − Total Variable Costs; Net Profit = Gross Margin − Fixed Costs.</li>
  <li>Depreciation (straight-line) = (Cost − Salvage value) ÷ Useful life; know calculation.</li>
  <li>Law of Diminishing Returns: adding more of one input while others are fixed eventually gives smaller additional yields.</li>
  <li>Opportunity cost: value of next best alternative — guides farm enterprise decisions.</li>
  <li>Farm balance sheet: Assets − Liabilities = Net Worth (Equity).</li>
  <li>Sources of farm finance: ADB, MASLOC, microfinance, susu, input credit, family.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000013';

UPDATE topics SET content = '
<h2>Forestry and Agro-forestry</h2>

<h3>14.1 Importance of Forests</h3>
<p>Forests cover about 30% of the Earth''s land surface but have declined significantly in West Africa due to deforestation. Ghana''s forest cover has declined from ~8 million hectares in 1900 to about 1.6 million hectares today.</p>

<h4>Ecological Importance</h4>
<ul>
  <li><strong>Watershed protection:</strong> Forest cover protects watersheds, regulates water flow, prevents floods and drought; the Black Volta, Pra, and Volta rivers are partially protected by upstream forests</li>
  <li><strong>Soil conservation:</strong> Forest canopy intercepts rain, preventing splash erosion; roots bind soil; leaf litter adds organic matter</li>
  <li><strong>Carbon sequestration:</strong> Forests absorb CO₂ from atmosphere, reducing greenhouse effect; Ghana''s forests store 140–200 million tonnes of carbon</li>
  <li><strong>Biodiversity:</strong> Tropical forests house ~50% of all terrestrial species; Ghana''s forests include unique endemic species</li>
  <li><strong>Climate regulation:</strong> Forests increase local rainfall through transpiration; loss of forests reduces rainfall — major concern in Ghana</li>
  <li><strong>Oxygen production:</strong> Photosynthesis by trees produces O₂</li>
</ul>

<h4>Economic Importance</h4>
<ul>
  <li>Timber and logs for construction, furniture, export — Ghana''s timber industry earns significant foreign exchange</li>
  <li>Fuelwood and charcoal — 80%+ of Ghanaian households use wood fuel for cooking</li>
  <li>Non-timber forest products (NTFPs): shea nuts, palm kernels, kola nuts, medicinal plants, rattan, cane</li>
  <li>Employment in logging, sawmilling, processing, export</li>
  <li>Tourism: forest reserves attract ecotourism (Kakum National Park, Atewa Forest Reserve)</li>
</ul>

<h3>14.2 Major Forest Types in Ghana</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Forest Type</th><th>Location</th><th>Characteristics</th><th>Key Species</th></tr></thead>
  <tbody>
    <tr><td>Wet evergreen forest</td><td>Southwest (Axim, Takoradi area)</td><td>Highest rainfall (>1,800 mm); dense canopy; very tall trees</td><td>Berlinia, Lophira, Piptadeniastrum</td></tr>
    <tr><td>Moist semi-deciduous forest</td><td>Ashanti, Eastern, Brong-Ahafo</td><td>1,200–1,800 mm rainfall; partly deciduous in dry season; most valuable timber</td><td>Triplochiton (Wawa), Entandrophragma (Edinam), Khaya (Mahogany), Milicia (Odum)</td></tr>
    <tr><td>Dry semi-deciduous forest</td><td>Northern transition zone</td><td>&lt;1,200 mm rainfall; more deciduous; less dense</td><td>Anogeissus, Daniellia, Terminalia</td></tr>
    <tr><td>Guinea savannah woodland</td><td>Northern Ghana</td><td>Parkland; scattered trees in grassland; shea, dawadawa dominant</td><td>Vitellaria (shea), Parkia (dawadawa/locust bean), Butyrospermum</td></tr>
  </tbody>
</table>

<h3>14.3 Forestry Management</h3>
<h4>Principles of Sustainable Forest Management</h4>
<ul>
  <li><strong>Sustained Yield:</strong> Harvest no more timber per year than the forest can regrow</li>
  <li><strong>Selection felling:</strong> Only mature, large-diameter trees are harvested; smaller trees grow on</li>
  <li><strong>Allowable cut:</strong> Annual cutting volume set by Forestry Commission based on forest inventory</li>
  <li><strong>Reforestation:</strong> Replanting after logging to maintain forest cover</li>
  <li><strong>Reduced Impact Logging (RIL):</strong> Techniques to minimise damage to residual trees during harvesting</li>
</ul>

<h4>Forestry Institutions in Ghana</h4>
<ul>
  <li><strong>Forestry Commission (FC):</strong> Manages all forest reserves; regulates timber harvesting; issues permits</li>
  <li><strong>Timber Industry Development Division (TIDD):</strong> Regulates timber trade and exports</li>
  <li><strong>OASL (Office of the Administrator of Stool Lands):</strong> Manages revenue from stool lands including forests</li>
</ul>

<h3>14.4 Reforestation and Afforestation</h3>
<ul>
  <li><strong>Reforestation:</strong> Replanting trees on previously forested land that has been cleared</li>
  <li><strong>Afforestation:</strong> Planting trees on land that was not previously forested</li>
  <li><strong>Ghana''s plantation programme:</strong> Plantations of Teak (Tectona grandis), Cedrela, Gmelina arborea, Eucalyptus established for timber production</li>
  <li><strong>Nursery production:</strong> Seeds → germination in germination trays → pricking out into polythene bags → hardening off → field planting</li>
</ul>

<h3>14.5 Agro-forestry</h3>
<p><strong>Definition:</strong> Agro-forestry is a land use system in which woody perennials (trees and shrubs) are grown together with crops and/or livestock on the same land management unit, either simultaneously or in sequence, with interactions between them that are ecological and economically advantageous.</p>

<h4>Benefits of Agro-forestry</h4>
<ul>
  <li>Trees fix atmospheric nitrogen (leguminous trees: Leucaena, Gliricidia, Faidherbia albida)</li>
  <li>Leaf litter adds organic matter to soil — improves fertility and structure</li>
  <li>Tree roots penetrate deep soil — bring up nutrients from deep layers to surface</li>
  <li>Provides shade for shade-tolerant crops (cocoa, coffee) and animals</li>
  <li>Reduces wind erosion and provides windbreaks</li>
  <li>Diversifies farm income: timber, fruit, fuel, food, fodder from same land</li>
  <li>Carbon sequestration; helps mitigate climate change</li>
</ul>

<h4>Types of Agro-forestry Systems</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>System</th><th>Description</th><th>Example in Ghana</th></tr></thead>
  <tbody>
    <tr><td><strong>Agro-silvicultural</strong></td><td>Trees + crops</td><td>Alley cropping (Leucaena rows + maize/cowpea between); Cocoa under shade trees; homegardens</td></tr>
    <tr><td><strong>Silvo-pastoral</strong></td><td>Trees + livestock/pasture</td><td>Parkland agro-forestry in north (shea, dawadawa trees in crop fields); rotational grazing under trees</td></tr>
    <tr><td><strong>Agro-silvo-pastoral</strong></td><td>Trees + crops + livestock</td><td>Integrated tree-crop-livestock systems; complete mixed farming</td></tr>
    <tr><td><strong>Alley cropping</strong></td><td>Rows of nitrogen-fixing trees pruned regularly; crops grown in alleys between rows</td><td>Leucaena leucocephala or Gliricidia sepium rows 4–8 m apart; maize/cassava in alleys; prunings mulched in alleys</td></tr>
  </tbody>
</table>

<h4>Important Agro-forestry Trees in West Africa</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Tree</th><th>Type</th><th>Benefits</th></tr></thead>
  <tbody>
    <tr><td>Leucaena leucocephala</td><td>Legume; fast-growing</td><td>N-fixation (200+ kg N/ha/yr); fodder; mulch; fuelwood; excellent for alley cropping</td></tr>
    <tr><td>Gliricidia sepium</td><td>Legume</td><td>N-fixation; live fences; fodder; green manure; stakes for yam</td></tr>
    <tr><td>Tithonia diversifolia (Mexican sunflower)</td><td>Herbaceous plant; bush</td><td>Phosphorus-rich biomass; mulch and green manure; rapid growth</td></tr>
    <tr><td>Vitellaria paradoxa (Shea)</td><td>Parkland tree</td><td>Shea butter (food, cosmetics); shade; carbon store; protected by farmers in parklands</td></tr>
    <tr><td>Parkia biglobosa (Dawadawa/Locust bean)</td><td>Legume tree</td><td>Food: fermented seeds (dawadawa condiment); pods (sugar); shade; N-fixation</td></tr>
    <tr><td>Faidherbia albida (Winter thorn)</td><td>Legume; deciduous in wet season</td><td>Drops leaves in rainy season (does not compete with crops); fixes N; provides shade in dry season; called "miracle tree" of Africa</td></tr>
    <tr><td>Neem (Azadirachta indica)</td><td>Evergreen</td><td>Biopesticide (azadirachtin); shade; windbreak; medicinal; drought-tolerant</td></tr>
  </tbody>
</table>

<h3>14.6 Non-Timber Forest Products (NTFPs)</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Product</th><th>Source</th><th>Importance</th></tr></thead>
  <tbody>
    <tr><td>Shea butter</td><td>Vitellaria paradoxa nuts</td><td>Food oil; cosmetics (major export); income for women in north Ghana</td></tr>
    <tr><td>Dawadawa/Locust bean</td><td>Parkia biglobosa seeds</td><td>Protein-rich food condiment; fermented as flavouring</td></tr>
    <tr><td>Bush meat</td><td>Wild animals</td><td>Animal protein; income; conservation challenge</td></tr>
    <tr><td>Medicinal plants</td><td>Various forest plants</td><td>Traditional medicine; pharmaceutical industry raw material</td></tr>
    <tr><td>Rattan/Cane</td><td>Calamus, Laccosperma spp.</td><td>Furniture; basketry; handicrafts</td></tr>
    <tr><td>Bamboo</td><td>Various bamboo species</td><td>Construction; furniture; charcoal; fast-growing; sustainable</td></tr>
  </tbody>
</table>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Reforestation = replanting previously forested land; afforestation = planting trees on previously non-forested land.</li>
  <li>Agro-forestry: trees + crops + livestock on same land; benefits include N-fixation, mulch, income diversification.</li>
  <li>Alley cropping: Leucaena/Gliricidia rows 4–8 m apart; crop grown in alleys; prunings mulched — key N input.</li>
  <li>Faidherbia albida: deciduous in WET season (does not shade crops when raining) → "reverse phenology" miracle.</li>
  <li>Ghana''s forest cover has declined dramatically — from ~8 million ha to ~1.6 million ha.</li>
  <li>Shea (Vitellaria paradoxa) is key NTFP in north Ghana — income for rural women.</li>
  <li>Tithonia diversifolia: phosphorus-rich biomass; used as organic P source for poor soils.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000014';

UPDATE topics SET content = '
<h2>Soil Erosion and Conservation</h2>

<h3>15.1 Definition and Significance of Soil Erosion</h3>
<p><strong>Soil erosion</strong> is the detachment, transport, and deposition of soil particles from one location to another by the agents of water, wind, and gravity. It is one of the most serious environmental problems in West Africa, threatening agricultural productivity and food security.</p>
<p><strong>Scale of the problem:</strong> Sub-Saharan Africa loses an estimated 9 billion tonnes of topsoil per year. Ghana loses significant soil in the Guinea Savannah, Sudan Savannah, and Coastal Savannah ecological zones. Forming 2.5 cm of topsoil takes 200–1,000 years — once lost, it is effectively non-renewable.</p>

<h3>15.2 Agents and Types of Erosion</h3>

<h4>A. Water Erosion</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Type</th><th>Description</th><th>Characteristics</th></tr></thead>
  <tbody>
    <tr><td><strong>Splash (raindrop) erosion</strong></td><td>Raindrops strike bare soil and dislodge particles</td><td>First stage; breaks aggregates; moves particles up to 2 m; seals soil surface → reduces infiltration</td></tr>
    <tr><td><strong>Sheet erosion</strong></td><td>Thin, uniform layer of topsoil removed by overland water flow</td><td>Often unnoticed until soil fertility declines; most damaging type for agriculture</td></tr>
    <tr><td><strong>Rill erosion</strong></td><td>Small channels (rills) cut by concentrated runoff water</td><td>Clear evidence of erosion; rills can be ploughed out; 0.2–1.5 m deep</td></tr>
    <tr><td><strong>Gully erosion</strong></td><td>Large, deep channels formed by severe concentrated runoff</td><td>Cannot be ploughed out; severs land; makes it uncultivable; common in northern Ghana and Volta Region</td></tr>
    <tr><td><strong>Stream bank erosion</strong></td><td>Undercutting and collapse of river/stream banks by water flow</td><td>Loss of agricultural land; sedimentation downstream</td></tr>
    <tr><td><strong>Mass movement (landslide)</strong></td><td>Downslope movement of large soil mass, often after heavy rain</td><td>Steep slopes; saturated soils; deforested areas</td></tr>
  </tbody>
</table>

<h4>B. Wind Erosion</h4>
<ul>
  <li>Dominant in semi-arid areas of northern Ghana, the Sahel (Niger, Mali, Burkina Faso)</li>
  <li>Occurs when wind velocity exceeds threshold for moving dry, loose, bare soil particles</li>
  <li><strong>Types:</strong>
    <ul>
      <li><strong>Saltation:</strong> Particles hop 1–2 m above surface (main mechanism; 50–80% of wind erosion)</li>
      <li><strong>Surface creep:</strong> Large particles roll along ground surface</li>
      <li><strong>Suspension:</strong> Fine clay and silt particles rise high in air and travel great distances → dust storms (Harmattan dust from Sahara)</li>
    </ul>
  </li>
</ul>

<h3>15.3 Factors Affecting Soil Erosion</h3>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Factor</th><th>How It Affects Erosion</th></tr></thead>
  <tbody>
    <tr><td><strong>Rainfall intensity</strong></td><td>High-intensity convectional rainfall (common in West Africa) has high erosivity — large raindrops; high kinetic energy; causes splash and sheet erosion</td></tr>
    <tr><td><strong>Slope (angle)</strong></td><td>Steeper slope → faster runoff → greater erosive power; more mass movement risk</td></tr>
    <tr><td><strong>Slope length</strong></td><td>Longer slope → more runoff accumulates → more erosion at foot of slope</td></tr>
    <tr><td><strong>Soil texture</strong></td><td>Sandy soils — high infiltration but easily detached; silty soils — most erodible; clay soils — cohesive; resist detachment but surface seals</td></tr>
    <tr><td><strong>Soil organic matter</strong></td><td>High OM → good aggregates → more stable → resists erosion; low OM soils highly erodible</td></tr>
    <tr><td><strong>Vegetation cover</strong></td><td>Dense vegetation intercepts rain; roots bind soil; absorbs runoff; bare soil 100× more erodible than well-covered soil</td></tr>
    <tr><td><strong>Farming practices</strong></td><td>Tillage up-down slope → channels for runoff; bare fallow → no protection; heavy machinery → compaction and surface sealing</td></tr>
  </tbody>
</table>

<h3>15.4 Effects of Soil Erosion</h3>
<ul>
  <li><strong>Loss of topsoil:</strong> Most fertile layer removed; reduced crop yields</li>
  <li><strong>Nutrient loss:</strong> Organic matter and nutrients concentrated in topsoil are carried away</li>
  <li><strong>Reduced soil depth:</strong> Roots cannot penetrate; reduced water storage capacity</li>
  <li><strong>Sedimentation:</strong> Eroded soil deposits in rivers, dams, irrigation canals — reduces dam capacity; destroys aquatic ecosystems (Volta Lake sedimentation)</li>
  <li><strong>Gully formation:</strong> Irreversible land degradation; fields become unusable</li>
  <li><strong>Off-site water pollution:</strong> Pesticides and nutrients attached to eroded particles contaminate water</li>
  <li><strong>Desertification:</strong> In semi-arid areas, progressive loss of vegetation and soil → eventual desert conditions</li>
</ul>

<h3>15.5 Soil Conservation Methods</h3>
<h4>A. Vegetative/Biological Methods</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Description</th><th>Effect</th></tr></thead>
  <tbody>
    <tr><td><strong>Cover crops</strong></td><td>Growing low-growing crops (mucuna, cowpea, sweet potato) to cover bare soil between main crops or during off-season</td><td>Intercepts rain; reduces runoff; adds organic matter; fixes N (if legume)</td></tr>
    <tr><td><strong>Mulching</strong></td><td>Covering soil with crop residues, straw, leaves, or plastic sheets</td><td>Absorbs raindrop impact; reduces evaporation; moderates temperature; suppresses weeds</td></tr>
    <tr><td><strong>Grass strips/filter strips</strong></td><td>Narrow strips of grass across slope (Vetiver grass, Napier grass)</td><td>Slows runoff; traps sediment; gradually forms natural terrace</td></tr>
    <tr><td><strong>Contour grass strips</strong></td><td>Vetiver (Chrysopogon zizanioides) planted in rows on contour</td><td>Highly effective; roots bind soil; deep rooting; doesn''t spread invasively</td></tr>
    <tr><td><strong>Windbreaks/Shelterbelts</strong></td><td>Rows of trees planted perpendicular to prevailing wind</td><td>Reduces wind velocity behind break for distance 10–15× tree height; protects crops and soil</td></tr>
    <tr><td><strong>Reforestation</strong></td><td>Planting trees on degraded land</td><td>Restores vegetation cover; improves infiltration; prevents runoff and erosion</td></tr>
  </tbody>
</table>

<h4>B. Mechanical/Engineering Methods</h4>
<table border="1" cellpadding="6" style="border-collapse:collapse;width:100%">
  <thead><tr><th>Method</th><th>Description</th><th>Effect</th></tr></thead>
  <tbody>
    <tr><td><strong>Contour ploughing</strong></td><td>Ploughing along contour lines (across the slope, not up-down)</td><td>Creates small ridges that intercept runoff; water infiltrates instead of running off</td></tr>
    <tr><td><strong>Terracing</strong></td><td>Cutting steps (terraces) into hillside to create level or gently sloping platforms</td><td>Converts steep slopes to stepped areas; greatly reduces runoff velocity; enables cultivation of steep slopes; practiced in Ethiopia, Rwanda</td></tr>
    <tr><td><strong>Bunding</strong></td><td>Earthen ridges (bunds) constructed along contours to capture runoff</td><td>Impounds water; allows infiltration; traps sediment; improves soil moisture for dry spells</td></tr>
    <tr><td><strong>Check dams</strong></td><td>Small stone or earthen dams across gullies</td><td>Slows water flow in gullies; traps sediment; raises water table; stone bunds common in Upper East Ghana (Bolgatanga area)</td></tr>
    <tr><td><strong>Rip-rap</strong></td><td>Stones placed on steep slope or stream bank</td><td>Armours surface against erosion; protects stream banks</td></tr>
    <tr><td><strong>Strip cropping</strong></td><td>Alternating strips of erosion-resistant crops (grass, legumes) with erosion-prone crops across slope</td><td>Erosion-resistant strips trap sediment; reduce runoff velocity</td></tr>
  </tbody>
</table>

<h4>C. Agronomic/Cultural Methods</h4>
<ul>
  <li><strong>Conservation tillage / Minimum tillage:</strong> Reduce number of tillage operations; maintains crop residue on surface → protects from rain impact</li>
  <li><strong>Zero tillage (no-till):</strong> Seed drilled into undisturbed soil; residue cover maintained; maximum protection</li>
  <li><strong>Crop rotation:</strong> Alternate deep-rooted and shallow-rooted crops; legumes improve structure; avoids monoculture which depletes soil</li>
  <li><strong>Avoiding clean-weeding:</strong> Allow some ground cover between crop rows; not allowing bare soil</li>
  <li><strong>Avoid farming steep slopes (&gt;30°) without engineering measures</strong></li>
  <li><strong>Early planting:</strong> Ensures good canopy cover when heavy rains occur</li>
</ul>

<h3>15.6 Desertification</h3>
<p>Desertification is the degradation of dryland ecosystems due to human activities and climate variability, resulting in loss of soil productivity and vegetation cover.</p>
<p><strong>Causes in West Africa:</strong> Overgrazing; deforestation; unsustainable farming; reduced rainfall; population pressure</p>
<p><strong>Effects:</strong> Reduced agricultural productivity; food insecurity; rural poverty; migration to cities</p>
<p><strong>The Great Green Wall Initiative:</strong> Pan-African project to plant an 8,000 km wall of trees across the Sahel from Senegal to Djibouti to halt desertification — partial implementation underway</p>

<h3>WASSCE Key Points</h3>
<ul>
  <li>Types of water erosion: splash → sheet → rill → gully (in order of severity; gully is worst).</li>
  <li>Contour ploughing: plough across slope, not up-down — intercepting furrows trap runoff.</li>
  <li>Terracing: cuts steps into hillsides — best for steep slopes; practiced in Rwanda, Ethiopia.</li>
  <li>Vetiver grass strips: extremely effective; deep roots; planted on contours; traps sediment; forms natural terraces.</li>
  <li>Windbreaks: perpendicular to wind; protect 10–15× tree height downwind.</li>
  <li>Zero tillage: soil undisturbed; residue cover maintained — maximum erosion protection.</li>
  <li>Stone bunds (check dams): traditional practice in Upper East Ghana; traps runoff in gullies; raises water table.</li>
  <li>Forming 2.5 cm topsoil takes 200–1,000 years — erosion prevention is critical.</li>
</ul>
' WHERE id = 'b0000001-0000-0000-0000-000000000015';
