/*
  # Add Agricultural Science Quiz Questions

  Adds 60 WASSCE-style questions across Agricultural Science topics covering:
  soil science, crop production, animal husbandry, farm management, and more.
  Subject ID: a1000000-0000-0000-0000-000000000008
*/

INSERT INTO quiz_questions (topic_id, subject_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Introduction to Agriculture (b8000001)
('b8000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which branch of agriculture deals with the cultivation of garden plants such as vegetables, fruits and flowers?',
 '["Agronomy","Horticulture","Floriculture","Apiculture"]', 1,
 'Horticulture is the branch of agriculture dealing with garden plants — vegetables (olericulture), fruits (pomology) and flowers (floriculture).', 'easy'),

('b8000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'A farming system where a farmer produces just enough food for family consumption is called:',
 '["Commercial farming","Mixed farming","Subsistence farming","Plantation farming"]', 2,
 'Subsistence farming is small-scale farming aimed at meeting only the family''s food needs, with little or no surplus for sale.', 'easy'),

('b8000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which of the following is a perennial crop?',
 '["Maize","Cowpea","Cocoa","Groundnut"]', 2,
 'Cocoa is a perennial crop that lives and produces for many years. Maize, cowpea, and groundnut are annual crops that complete their life cycle in one growing season.', 'easy'),

('b8000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The rearing of bees for honey production is called:',
 '["Aquaculture","Apiculture","Pisciculture","Aviculture"]', 1,
 'Apiculture is the scientific management of bees for honey and wax production. Aquaculture is fish farming, pisciculture is fish culture, and aviculture is bird rearing.', 'medium'),

('b8000001-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'In West Africa, what percentage of the workforce is typically employed in agriculture?',
 '["10–20%","60–80%","30–40%","5–10%"]', 1,
 'Agriculture employs between 60–80% of the workforce in most West African countries, making it the dominant sector of employment.', 'medium'),

-- Soil Science (b8000002)
('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which soil texture is considered ideal for crop production because of its good balance of drainage and water retention?',
 '["Sandy soil","Clay soil","Loam soil","Silt soil"]', 2,
 'Loam soil is a mixture of sand, silt, and clay particles. It has good drainage, adequate water retention, and is well aerated — making it ideal for most crops.', 'easy'),

('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The layer of soil richest in organic matter and most important for crop growth is the:',
 '["B horizon","C horizon","A horizon","R horizon"]', 2,
 'The A horizon (topsoil) is the uppermost mineral layer, richest in organic matter and biological activity. It is the most important layer for plant growth.', 'easy'),

('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'What is the pH range in which most crops grow best?',
 '["4.0–5.0","8.0–9.0","6.0–7.0","3.0–4.0"]', 2,
 'Most crops grow best in slightly acidic to neutral soils with a pH of 6.0–7.0. Soils outside this range may lock up essential nutrients.', 'medium'),

('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which type of soil erosion creates large channels that permanently damage farmland?',
 '["Sheet erosion","Splash erosion","Rill erosion","Gully erosion"]', 3,
 'Gully erosion creates large, deep channels that make the land unsuitable for farming. It is the most severe form of water erosion and is very difficult to reverse.', 'medium'),

('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'What is the purpose of liming an agricultural soil?',
 '["To add nitrogen","To reduce soil acidity","To improve soil colour","To increase water logging"]', 1,
 'Lime (calcium carbonate, CaCO₃) is applied to acidic soils to raise the pH (reduce acidity), making nutrients more available to crops.', 'easy'),

('b8000002-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The movement of water upward through soil pores against gravity is called:',
 '["Percolation","Capillarity","Leaching","Infiltration"]', 1,
 'Capillarity (capillary action) is the movement of water upward through fine soil pores. It brings water from the water table toward plant roots.', 'hard'),

-- Plant Nutrients and Fertilizers (b8000003)
('b8000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'A yellowing of older leaves starting from the tip is a deficiency symptom of which nutrient?',
 '["Phosphorus","Potassium","Nitrogen","Calcium"]', 2,
 'Nitrogen deficiency causes chlorosis (yellowing) of older leaves first, starting from the leaf tip. This is because nitrogen is mobile and moves from old to young leaves.', 'medium'),

('b8000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which fertilizer contains 46% nitrogen and is widely used for crop production?',
 '["Ammonium sulphate","Triple superphosphate","Urea","Muriate of potash"]', 2,
 'Urea (CO(NH₂)₂) contains 46% nitrogen, making it the most concentrated straight nitrogen fertilizer. It is widely used for top-dressing crops.', 'medium'),

('b8000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which microorganism is responsible for nitrogen fixation in the root nodules of leguminous plants?',
 '["Nitrobacter","Nitrosomonas","Rhizobium","Azotobacter"]', 2,
 'Rhizobium bacteria live in root nodules of legumes (cowpea, groundnut, soybean) and convert atmospheric nitrogen (N₂) into ammonia (NH₃) usable by plants.', 'medium'),

('b8000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'An advantage of organic fertilizers over inorganic fertilizers is that they:',
 '["Act faster","Have higher nutrient concentration","Improve soil structure","Are easier to transport"]', 2,
 'Organic fertilizers add humus to soil, improving its structure, water retention, and aeration. They also support soil microorganism activity, unlike synthetic fertilizers.', 'easy'),

('b8000003-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which method of fertilizer application involves dissolving fertilizer in irrigation water?',
 '["Broadcasting","Foliar spray","Top dressing","Fertigation"]', 3,
 'Fertigation is the application of fertilizers dissolved in irrigation water, delivering nutrients directly to the root zone. It is highly efficient but requires irrigation infrastructure.', 'hard'),

-- Crop Production Field Crops (b8000004)
('b8000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Cassava is propagated vegetatively using:',
 '["Seeds","Root cuttings","Stem cuttings","Tuber setts"]', 2,
 'Cassava is propagated using stem cuttings (25–30 cm long), taken from mature stems. This ensures true-to-type plants and faster establishment than seeds.', 'easy'),

('b8000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The primary benefit of growing cowpea in a crop rotation system is that it:',
 '["Produces large quantities of food","Fixes atmospheric nitrogen","Repels all pests","Increases soil acidity"]', 1,
 'Cowpea (and other legumes) host Rhizobium bacteria that fix atmospheric nitrogen into the soil, naturally enriching soil fertility for subsequent crops.', 'medium'),

('b8000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which type of rice cultivation requires fields to be flooded with standing water?',
 '["Upland rice","Lowland/paddy rice","Dry rice","Highland rice"]', 1,
 'Lowland (paddy) rice is grown in flooded fields where water stands 10–15 cm deep. This flooding suppresses weeds and creates the anaerobic conditions rice thrives in.', 'easy'),

('b8000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'In yam production, why are mounds constructed before planting?',
 '["To retain water","To improve drainage and aeration for tuber development","To prevent pests","To reduce weed growth"]', 1,
 'High mounds (60–100 cm) provide deep, loose soil for yam tubers to expand without restriction. They also improve drainage and aeration essential for tuber development.', 'medium'),

('b8000004-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Growing two or more crops simultaneously on the same piece of land is known as:',
 '["Crop rotation","Monoculture","Intercropping","Mixed farming"]', 2,
 'Intercropping is the simultaneous growing of two or more crops on the same land. It maximizes land use, reduces pest pressure, and provides income diversification.', 'easy'),

-- Crop Diseases and Pests (b8000006)
('b8000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Black pod disease of cocoa is caused by:',
 '["A bacterium","A virus","A fungus","A nematode"]', 2,
 'Black pod disease is caused by the fungus Phytophthora palmivora. It is the most economically devastating disease of cocoa in West Africa.', 'medium'),

('b8000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Cassava Mosaic Virus is transmitted from plant to plant mainly by:',
 '["Aphids","Whiteflies","Beetles","Thrips"]', 1,
 'Cassava Mosaic Virus (CMV) is primarily transmitted by the whitefly (Bemisia tabaci), which feeds on infected plants and carries the virus to healthy ones.', 'medium'),

('b8000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Integrated Pest Management (IPM) is described as:',
 '["Using only chemical pesticides","Combining cultural, biological, and chemical controls","Eliminating all pests completely","Using only biological methods"]', 1,
 'IPM combines cultural, biological, and chemical pest control in a coordinated way. Pesticides are used only when pest populations exceed economic thresholds, minimizing environmental impact.', 'medium'),

('b8000006-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Striga (witchweed) is classified as a:',
 '["Bacterial disease","Insect pest","Parasitic weed","Fungal disease"]', 2,
 'Striga hermonthica is a parasitic weed that attaches to roots of cereals like maize and sorghum, extracting water and nutrients and severely reducing yields.', 'medium'),

-- Weed Control (b8000007)
('b8000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Spear grass (Imperata cylindrica) is classified as:',
 '["An annual broadleaf weed","A perennial grass weed","An annual sedge","A biennial weed"]', 1,
 'Imperata cylindrica (spear grass) is a perennial grass weed with deep rhizomes, making it very difficult to eradicate. It is one of the most serious weeds in West African agriculture.', 'medium'),

('b8000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Glyphosate (Roundup) is an example of a:',
 '["Selective pre-emergence herbicide","Non-selective post-emergence herbicide","Selective post-emergence herbicide","Fungicide"]', 1,
 'Glyphosate is a non-selective, post-emergence herbicide that kills all vegetation. It is applied before planting or between crop rows while protecting crops from spray drift.', 'medium'),

('b8000007-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The critical weed period for most crops is approximately:',
 '["0–2 weeks after planting","3–6 weeks after planting","7–12 weeks after planting","After flowering"]', 1,
 'The critical weed period is the first 3–6 weeks after planting. Keeping the crop weed-free during this period prevents the most significant yield losses.', 'hard'),

-- Farm Tools and Machinery (b8000008)
('b8000008-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'A mouldboard plough is used primarily for:',
 '["Harvesting crops","Turning over soil to bury crop residues","Planting seeds in rows","Levelling the soil surface"]', 1,
 'A mouldboard plough cuts and turns over slices of soil (furrow slices), burying crop residues and weeds, and exposing fresh soil. It is used for primary tillage.', 'easy'),

('b8000008-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'A combine harvester performs which of the following operations simultaneously?',
 '["Planting and fertilizing","Cutting, threshing, and cleaning grain","Ploughing and harrowing","Spraying and harvesting"]', 1,
 'A combine harvester combines three operations: cutting the crop, threshing (separating grain from straw), and cleaning/winnowing the grain — all in one pass through the field.', 'easy'),

('b8000008-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which source of farm power is most common in subsistence farming in West Africa?',
 '["Electrical power","Mechanical power","Human (animate) power","Solar power"]', 2,
 'Human power (using hand tools like hoes, cutlasses, and shovels) is the most common source of power in smallholder/subsistence farming in West Africa.', 'easy'),

-- Animal Husbandry (b8000009)
('b8000009-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which livestock management system involves animals being confined indoors year-round with feed brought to them?',
 '["Extensive system","Nomadic system","Semi-intensive system","Intensive (zero-grazing) system"]', 3,
 'The intensive or zero-grazing system confines animals indoors at all times. Feed, water, and veterinary care come to the animals, allowing high stocking densities and production.', 'medium'),

('b8000009-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The gestation period of cattle is approximately:',
 '["114 days","150 days","280 days","365 days"]', 2,
 'Cattle have a gestation period of approximately 280 days (9 months), similar to humans. This relatively long gestation limits reproductive rates in cattle.', 'medium'),

('b8000009-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The Ndama breed of cattle is particularly valued in the humid tropics because it is:',
 '["A high milk producer","Trypanotolerant (resistant to sleeping sickness)","Very large in body size","Easy to confine"]', 1,
 'The Ndama is a West African breed known for its tolerance to trypanosomiasis (sleeping sickness), transmitted by tsetse fly. This makes it valuable in tsetse-infested humid zones.', 'hard'),

('b8000009-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'What is the advantage of artificial insemination (AI) over natural mating in cattle production?',
 '["It requires no specialist knowledge","One superior bull can sire thousands of calves","It is cheaper than natural mating","Animals reproduce faster"]', 1,
 'AI allows the semen of one genetically superior bull to be collected, stored in liquid nitrogen, and used to inseminate thousands of cows worldwide — rapidly improving herd genetics.', 'medium'),

-- Poultry Production (b8000010)
('b8000010-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The battery cage system in poultry production is used mainly for:',
 '["Broiler production","Layer (egg) production","Turkey rearing","Duck farming"]', 1,
 'Battery cages house individual hens in small individual cages arranged in rows and tiers. This system is standard in commercial egg (layer) production for easy egg collection and management.', 'easy'),

('b8000010-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'When day-old chicks are huddling together directly under the brooding lamp, this indicates:',
 '["The temperature is too hot","The temperature is correct","There is a draught","The temperature is too cold"]', 3,
 'Chicks huddling under the heat source indicates the brooder temperature is too cold. Correct temperature (35°C in week 1) causes chicks to spread evenly throughout the brooder.', 'medium'),

('b8000010-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which disease of poultry causes twisting of the neck (torticollis) and is controlled by vaccination?',
 '["Coccidiosis","Marek''s disease","Newcastle disease","Fowl pox"]', 2,
 'Newcastle disease (caused by Paramyxovirus) causes nervous symptoms including neck twisting, gasping, and paralysis. Vaccination on days 7–10 and 14–16 provides protection.', 'medium'),

('b8000010-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Layers require approximately how many hours of light per day to maintain optimal egg production?',
 '["8 hours","12 hours","16 hours","20 hours"]', 2,
 'Layers need approximately 16 hours of light per day to stimulate the pituitary gland and maintain high egg production. Shorter days reduce production unless supplementary lighting is used.', 'hard'),

-- Animal Nutrition (b8000011)
('b8000011-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Ruminant animals differ from monogastric animals in that they have:',
 '["A longer intestine","A four-chambered stomach","Two hearts","A gizzard"]', 1,
 'Ruminants (cattle, sheep, goats) have a four-compartment stomach: rumen, reticulum, omasum, and abomasum. The rumen contains microbes that digest fibrous plant material.', 'easy'),

('b8000011-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Silage is made by:',
 '["Drying forage in the sun","Fermenting green forage anaerobically","Boiling forage with water","Mixing forage with urea"]', 1,
 'Silage is made by packing green forage tightly in a silo (or pit) to exclude air, then sealing it. Anaerobic fermentation produces lactic acid which preserves the feed.', 'medium'),

('b8000011-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Calcium deficiency in laying hens results in:',
 '["Reduced fertility","Thin or soft egg shells","Blindness","Feather pecking"]', 1,
 'Calcium is essential for eggshell formation. Deficiency causes thin, soft, or shell-less eggs. Limestone grit and oyster shells are added to layer feed to prevent this.', 'medium'),

-- Animal Diseases (b8000012)
('b8000012-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Trypanosomiasis in cattle is transmitted by:',
 '["Mosquitoes","Ticks","Tsetse flies","Lice"]', 2,
 'Trypanosomiasis (African sleeping sickness) is transmitted by the tsetse fly (Glossina spp.), which inoculates Trypanosoma parasites when it bites. It causes anaemia, weight loss, and death.', 'easy'),

('b8000012-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Brucellosis in cattle is a zoonotic disease because:',
 '["It is caused by ticks","It can be transmitted to humans","It only affects females","It is caused by a virus"]', 1,
 'Brucellosis is zoonotic — it can spread from infected cattle to humans through contact with infected animals or consumption of unpasteurized milk, causing undulant fever in people.', 'medium'),

('b8000012-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 '"Bottle jaw" in sheep and goats is a clinical sign of:',
 '["Vitamin deficiency","Bloodsucking internal parasite infestation","Respiratory disease","Foot rot"]', 1,
 'Bottle jaw (submandibular oedema) is a sign of severe anaemia caused by bloodsucking stomach worms like Haemonchus contortus. Plasma proteins are lost, causing fluid accumulation under the jaw.', 'hard'),

-- Aquaculture (b8000013)
('b8000013-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which fish species is most commonly farmed in Nigeria and Ghana due to its fast growth and hardiness?',
 '["Tilapia","Salmon","Catfish (Clarias gariepinus)","Carp"]', 2,
 'African catfish (Clarias gariepinus) is the most farmed fish in Nigeria and Ghana. It can breathe air, tolerates poor water quality, and grows rapidly to marketable size.', 'easy'),

('b8000013-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'In fish pond management, liming before stocking is done to:',
 '["Add nutrients for fish","Kill pathogens and raise pH","Grow algae","Reduce water temperature"]', 1,
 'Agricultural lime (CaCO₃) is applied to the dry pond bottom before refilling. It raises pH, kills pathogens, parasites and predatory insects, and improves overall pond fertility.', 'medium'),

('b8000013-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Feed Conversion Ratio (FCR) in fish farming refers to:',
 '["The cost of feed per kilogram of fish","The amount of feed needed to produce 1 kg of fish","The percentage of feed eaten by fish","The protein content of fish feed"]', 1,
 'FCR = kg of feed given ÷ kg of fish produced. A lower FCR (e.g., 1.2) means the fish converts feed more efficiently. Good catfish FCR is 1.2–1.5.', 'hard'),

-- Agricultural Economics (b8000014)
('b8000014-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'In farm economics, costs that do not change regardless of how much is produced are called:',
 '["Variable costs","Marginal costs","Fixed costs","Overhead expenditure"]', 2,
 'Fixed costs (overheads) remain constant regardless of output level — examples include rent, loan repayments, machinery depreciation, and permanent staff salaries.', 'easy'),

('b8000014-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Gross Margin in farm accounting is calculated as:',
 '["Total revenue minus total costs","Gross revenue minus variable costs","Total income minus fixed costs","Net income minus taxes"]', 1,
 'Gross Margin = Gross Revenue - Variable Costs. It measures the profitability of a farm enterprise before deducting fixed costs, and is used to compare different enterprises.', 'medium'),

('b8000014-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which of the following is a factor of agricultural production?',
 '["Market price","Government policy","Labour","Consumer preference"]', 2,
 'The four factors of production are Land, Labour, Capital, and Management (Entrepreneurship). Labour (human effort) is rewarded with wages.', 'easy'),

-- Land Tenure (b8000016)
('b8000016-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'In Ghana, the "abusa" sharecropping system means the tenant farmer gives the landowner:',
 '["Half of the produce","One third of the produce","One quarter of the produce","Two thirds of the produce"]', 1,
 'In the abusa system, the tenant receives two-thirds of the produce and gives one-third to the landowner. The abunu system gives half to each party.', 'medium'),

('b8000016-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'A major disadvantage of communal land tenure is that:',
 '["It prevents land sales","It provides land for community members","Individual farmers lack title deeds to use as loan collateral","Land is well managed by the community"]', 2,
 'Under communal tenure, individuals have use rights but not ownership. Without formal title deeds, farmers cannot use land as collateral for loans from banks, limiting investment.', 'medium'),

-- Irrigation (b8000017)
('b8000017-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which irrigation method has the highest water use efficiency at 90–95%?',
 '["Flood irrigation","Furrow irrigation","Sprinkler irrigation","Drip irrigation"]', 3,
 'Drip (trickle) irrigation delivers water slowly and directly to the root zone through emitters, with virtually no evaporation or runoff losses. Efficiency is 90–95%.', 'medium'),

('b8000017-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Salinization of irrigated soil is caused by:',
 '["Excessive rainfall","Accumulation of salts as irrigation water evaporates","Addition of too much fertilizer","Over-tillage of the soil"]', 1,
 'When irrigation water evaporates, it leaves dissolved salts behind in the soil. Over time, salts accumulate to toxic levels — a major problem in arid irrigation zones.', 'hard'),

-- Biotechnology (b8000018)
('b8000018-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Tissue culture in plant propagation involves growing plant cells or tissues in:',
 '["Ordinary farm soil","Sterile nutrient medium under controlled conditions","Open air nursery beds","Flooded rice paddies"]', 1,
 'Tissue culture (micropropagation) grows plant cells, tissues, or organs in sterile agar medium under controlled temperature and light. It produces disease-free planting material rapidly.', 'easy'),

('b8000018-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Bt maize is a genetically modified crop that is resistant to insect pests because it contains a gene from:',
 '["Another maize variety","Bacillus thuringiensis bacteria","A wild relative of maize","A herbicide-resistant plant"]', 1,
 'Bt maize contains a gene from the soil bacterium Bacillus thuringiensis that produces a protein toxic to certain insects (stem borers). This reduces pesticide use and increases yield.', 'medium'),

-- Agricultural Extension (b8000020)
('b8000020-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'The 5 stages of the technology adoption process in the correct order are:',
 '["Trial, Awareness, Interest, Evaluation, Adoption","Awareness, Interest, Evaluation, Trial, Adoption","Interest, Awareness, Trial, Evaluation, Adoption","Adoption, Evaluation, Trial, Interest, Awareness"]', 1,
 'The adoption process moves from Awareness → Interest → Evaluation → Trial → Adoption. Farmers first learn about a technology, then seek information before testing and finally accepting it.', 'medium'),

('b8000020-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Farmers who are the first 2.5% to adopt a new agricultural technology are called:',
 '["Early adopters","Innovators","Early majority","Laggards"]', 1,
 'Innovators (2.5%) are the first to adopt new technologies. They are risk-takers, educated, and often have access to more resources. Early adopters (13.5%) follow them.', 'medium'),

('b8000020-0000-0000-0000-000000000001', 'a1000000-0000-0000-0000-000000000008',
 'Which extension method reaches the largest number of farmers at the lowest cost per person?',
 '["Farm visits","Group demonstrations","Radio/mass media","Office calls"]', 2,
 'Mass media methods (radio, TV, newspapers) reach large numbers of farmers simultaneously at very low per-person cost. Radio is especially effective in rural West Africa due to widespread access.', 'easy');
