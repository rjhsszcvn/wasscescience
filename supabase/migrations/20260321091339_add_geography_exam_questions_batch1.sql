/*
  # Add Geography Exam Questions - Batch 1
  
  Adds 75 new WASSCE-standard multiple choice questions for Geography
  covering Physical Geography, Climate, Population, Map Reading, West Africa and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Plate Tectonics and Earthquakes (b1000006-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000001',
 'The theory that explains the movement of continents is called:',
 '["The Big Bang Theory","Plate Tectonics Theory","Wegener''s Drift","Continental Evolution"]', 1,
 'Plate Tectonics Theory explains that the Earth''s lithosphere is divided into moving plates.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000001',
 'At a convergent plate boundary, oceanic plate meets continental plate — what happens?',
 '["The oceanic plate rises over the continental plate","The oceanic plate is subducted under the continental plate","Both plates are destroyed equally","A rift valley is formed"]', 1,
 'Denser oceanic plate subducts under lighter continental plate — creating trenches and volcanoes.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000001',
 'The point within the Earth''s crust where an earthquake originates is the:',
 '["Epicentre","Focus (hypocentre)","Fault line","Seismic zone"]', 1,
 'The focus (hypocentre) is the actual point of origin of an earthquake within the Earth.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000001',
 'Fold mountains are formed at:',
 '["Divergent plate boundaries","Constructive plate boundaries","Convergent plate boundaries","Transform fault boundaries"]', 2,
 'Fold mountains (e.g., Himalayas, Alps) form where plates converge and sedimentary rocks are folded upward.', 'medium'),

-- Climate and Weather (b1000006-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'The instrument used to measure humidity is a:',
 '["Barometer","Hygrometer","Thermometer","Anemometer"]', 1,
 'A hygrometer measures the moisture content (humidity) of the air.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'The Inter-Tropical Convergence Zone (ITCZ) is associated with:',
 '["Dry, cold weather","Heavy rainfall where trade winds converge","Very low temperatures","Strong winds and no rain"]', 1,
 'The ITCZ is a zone near the equator where northeast and southeast trade winds converge, causing heavy rainfall.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'Which West African country has a savanna climate?',
 '["Ghana (Northern Region)","All coastal countries","Only island nations","None of the above"]', 0,
 'Northern Ghana, Burkina Faso, and other interior West African regions have savanna (tropical wet and dry) climates.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'Temperature generally decreases with increasing altitude at a rate of approximately:',
 '["1°C per 100 m","6.5°C per 1000 m","10°C per 100 m","0.5°C per 1000 m"]', 1,
 'The environmental lapse rate is approximately 6.5°C per 1000 m increase in altitude.', 'hard'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'The Harmattan wind in West Africa blows from the:',
 '["Southwest","North-Northeast (from Sahara)","East","Ocean to the land"]', 1,
 'The Harmattan is a dry, dusty wind that blows from the northeast/north-northeast from the Sahara Desert.', 'easy'),

-- Population and Settlement (b1000006-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000003',
 'Population density is calculated as:',
 '["Total population × area","Total population ÷ area","Area ÷ total population","Birth rate - death rate"]', 1,
 'Population density = Total population ÷ Total area (measured in persons per km²).', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000003',
 'A population pyramid with a wide base and narrow top indicates:',
 '["An ageing population","A rapidly growing population with high birth and death rates","A declining population","A stable population"]', 1,
 'Wide base = many young people (high birth rate); narrow top = few elderly (high death rate) = growing population.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000003',
 'Push factors in rural-urban migration include:',
 '["Better healthcare in cities","Unemployment and drought in rural areas","Higher wages in cities","Better education in cities"]', 1,
 'Push factors drive people away from rural areas: poor employment, drought, poverty.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000003',
 'The natural increase rate of a population is calculated as:',
 '["Birth rate - Death rate","Immigration rate - Emigration rate","Total population / area","Birth rate + Death rate"]', 0,
 'Natural increase rate = Crude birth rate - Crude death rate (per 1000 population).', 'easy'),

-- Map Reading and Scale (b1000006-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000004',
 'A map scale of 1:50,000 means:',
 '["1 cm on the map represents 50,000 km on the ground","1 cm on the map represents 50,000 cm (500 m) on the ground","1 m on the map represents 50,000 m","1 km on map = 50,000 km on ground"]', 1,
 '1:50,000 means 1 unit on the map = 50,000 same units on the ground. 1 cm = 50,000 cm = 500 m.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000004',
 'Contour lines on a topographic map connect:',
 '["Points of equal temperature","Points of equal altitude above sea level","Points of equal population","Points of equal rainfall"]', 1,
 'Contour lines join points of equal elevation (height above sea level).', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000004',
 'Grid references on a map use coordinates measured from:',
 '["The North Pole","The equator","A grid origin point (easting and northing)","Sea level"]', 2,
 'Grid references use a system of eastings (horizontal) and northings (vertical) measured from a grid origin.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000004',
 'Closely spaced contour lines indicate:',
 '["Gentle slopes","Flat land","Steep slopes","A river valley"]', 2,
 'Closely spaced contours = rapid change in elevation = steep slope.', 'easy'),

-- Rivers and Drainage (b1000006-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000005',
 'A meander is a feature found in the ______ course of a river.',
 '["Upper","Middle to lower","Source","Waterfall zone"]', 1,
 'Meanders (bends) form in the middle to lower course where gradient is gentle and lateral erosion dominates.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000005',
 'The process by which rocks and sediments are carried by a river is called:',
 '["Erosion","Deposition","Transportation","Weathering"]', 2,
 'Transportation is the movement of eroded material downstream by the river.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000005',
 'An ox-bow lake is formed when:',
 '["A river floods its banks","A meander neck is cut off and isolated","A glacier melts","A river reaches the sea"]', 1,
 'Ox-bow lakes form when a river cuts through the neck of a meander, isolating the bend as a lake.', 'medium'),

-- Agriculture in West Africa (b1000006-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000006',
 'The major cash crop of Ghana is:',
 '["Coffee","Cocoa","Cotton","Groundnuts"]', 1,
 'Ghana is one of the world''s leading cocoa producers — cocoa is its major cash crop.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000006',
 'Shifting cultivation involves:',
 '["Farming the same land continuously","Clearing land, farming it for a few years, then moving to new land","Growing only one crop","Irrigated farming only"]', 1,
 'Shifting cultivation: farmers clear forest, farm until soil fertility decreases, then move to new area.', 'easy'),

-- Natural Resources and Industry (b1000006-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000007',
 'Nigeria is the leading producer of which mineral resource in West Africa?',
 '["Gold","Cocoa","Crude oil (petroleum)","Diamonds"]', 2,
 'Nigeria is West Africa''s largest oil producer and one of the top oil producers in Africa.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000007',
 'Renewable energy sources include:',
 '["Coal and oil","Nuclear and coal","Solar, wind and hydroelectric","Natural gas and oil"]', 2,
 'Renewable energy (solar, wind, hydro) comes from naturally replenished sources.', 'easy'),

-- Vegetation and Soils (b1000006-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000008',
 'The tropical rainforest in West Africa is found mainly along the:',
 '["Northern savanna belt","Sahara Desert","Coastal and forest belt (south)","High plateaus"]', 2,
 'Tropical rainforest occurs in the wetter, southern coastal belt of West Africa.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000008',
 'Laterite soils found in tropical regions are:',
 '["Very fertile, dark and rich in humus","Iron and aluminium rich, often infertile","Sandy and porous","Deep, dark and waterlogged"]', 1,
 'Laterite soils are heavily leached tropical soils rich in iron oxides — often poor in nutrients.', 'hard'),

-- Transport and Trade (b1000006-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000009',
 'ECOWAS is a regional organisation in West Africa whose main aim is to:',
 '["Control military operations","Promote economic integration and trade","Manage natural resources only","Resolve political conflicts only"]', 1,
 'ECOWAS (Economic Community of West African States) promotes economic integration, trade, and development.', 'easy'),

-- Environmental Issues (b1000006-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000010',
 'Desertification in West Africa is mainly caused by:',
 '["Excessive rainfall","Overgrazing, deforestation and drought","Too much vegetation cover","Ocean currents"]', 1,
 'Desertification results from overgrazing, cutting trees, and drought — turning land into desert.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000010',
 'The greenhouse effect is caused by gases that:',
 '["Absorb and re-emit infrared radiation, warming the Earth","Cool the Earth by reflecting sunlight","Destroy the ozone layer","Create acid rain"]', 0,
 'Greenhouse gases (CO₂, CH₄, H₂O) trap heat by absorbing outgoing infrared radiation.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000010',
 'Deforestation increases the risk of:',
 '["Soil erosion, flooding, and climate change","More rainfall","Improved soil fertility","Decreased temperatures"]', 0,
 'Removing trees exposes soil to erosion, reduces interception of rainfall causing floods, and releases CO₂.', 'easy'),

-- Coastal Landforms (f9a60b97-3c53-48ae-8e96-a7fe70c36fae)
('a1000000-0000-0000-0000-000000000006', 'f9a60b97-3c53-48ae-8e96-a7fe70c36fae',
 'A spit is a coastal landform that is:',
 '["An island connected to the mainland","A ridge of sand or shingle extending into the sea from the coast","A cliff eroded by waves","A bay with calm water"]', 1,
 'A spit is a narrow strip of sand or shingle that extends from the shore into the sea.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'f9a60b97-3c53-48ae-8e96-a7fe70c36fae',
 'Wave-cut platforms are formed by:',
 '["Deposition at the coast","Erosion at the base of cliffs causing retreat","Volcanic activity","River deposition at the sea"]', 1,
 'Waves erode the base of cliffs — as the cliff retreats, a flat wave-cut platform is left behind.', 'medium'),

-- Rocks and Minerals (5911328f-7e93-4461-bdce-db253723e5b6)
('a1000000-0000-0000-0000-000000000006', '5911328f-7e93-4461-bdce-db253723e5b6',
 'Igneous rocks are formed by:',
 '["Compression of sediments","Cooling and solidification of magma or lava","Metamorphism of other rocks","Wind erosion"]', 1,
 'Igneous rocks (granite, basalt) form when molten rock (magma/lava) cools and solidifies.', 'easy'),

('a1000000-0000-0000-0000-000000000006', '5911328f-7e93-4461-bdce-db253723e5b6',
 'Which rock type is formed from sediments deposited in layers?',
 '["Igneous","Metamorphic","Sedimentary","Plutonic"]', 2,
 'Sedimentary rocks (sandstone, limestone) form from layers of deposited sediment that are compacted.', 'easy'),

('a1000000-0000-0000-0000-000000000006', '5911328f-7e93-4461-bdce-db253723e5b6',
 'Metamorphic rocks are formed by:',
 '["Cooling of magma","Deposition of sediments","Heat and pressure transforming existing rocks","Chemical weathering"]', 2,
 'Metamorphic rocks form when existing rocks are transformed by intense heat and/or pressure.', 'easy'),

-- Landforms and Denudation (0dc5fe6f-51fa-4cd0-a6ae-6d8bdd016826)
('a1000000-0000-0000-0000-000000000006', '0dc5fe6f-51fa-4cd0-a6ae-6d8bdd016826',
 'Chemical weathering in tropical areas is mainly caused by:',
 '["Frost action","Heavy rainfall dissolving and decomposing rocks","Wind abrasion","Temperature change only"]', 1,
 'In tropical areas, heavy rainfall causes chemical weathering — decomposition of minerals in rocks.', 'medium'),

('a1000000-0000-0000-0000-000000000006', '0dc5fe6f-51fa-4cd0-a6ae-6d8bdd016826',
 'Mass movement (landslide) is most likely to occur when:',
 '["The ground is very dry","Heavy rain saturates a steep slope","Temperatures are very low","Wind speeds are high"]', 1,
 'Saturation of slope material reduces cohesion and increases weight — triggering mass movement.', 'medium'),

-- Economic Geography (172520ad-3ee7-42c5-9977-fe1dd94c94c1)
('a1000000-0000-0000-0000-000000000006', '172520ad-3ee7-42c5-9977-fe1dd94c94c1',
 'GDP (Gross Domestic Product) measures:',
 '["The total population of a country","The total value of goods and services produced in a country","The military strength of a country","Total imports minus exports"]', 1,
 'GDP is the total monetary value of all finished goods and services produced within a country in a year.', 'easy'),

('a1000000-0000-0000-0000-000000000006', '172520ad-3ee7-42c5-9977-fe1dd94c94c1',
 'The Human Development Index (HDI) measures:',
 '["Only GDP","Life expectancy, education, and income per capita","Military spending","Agricultural output only"]', 1,
 'HDI is a composite measure of life expectancy, education level, and income/standard of living.', 'medium'),

-- Globalisation and Development (f3f367f8-df74-4bec-a1c7-586ea0bc5b7f)
('a1000000-0000-0000-0000-000000000006', 'f3f367f8-df74-4bec-a1c7-586ea0bc5b7f',
 'Globalisation refers to:',
 '["The growth of one country''s economy","Increasing interconnection of economies, cultures and people worldwide","The movement of people only","Only trade between African nations"]', 1,
 'Globalisation is the increasing integration and interdependence of world economies and cultures.', 'easy'),

-- Urbanisation (1a8f34f2-5524-49e9-b273-495e9dc0d80e)
('a1000000-0000-0000-0000-000000000006', '1a8f34f2-5524-49e9-b273-495e9dc0d80e',
 'Urban primacy occurs when:',
 '["A country has many cities of equal size","One very large city dominates a country''s urban system","All cities are growing at the same rate","A country is fully urbanised"]', 1,
 'Urban primacy: one dominant primate city is far larger than all other cities in the country.', 'hard'),

('a1000000-0000-0000-0000-000000000006', '1a8f34f2-5524-49e9-b273-495e9dc0d80e',
 'Shanty towns in West African cities are characterised by:',
 '["Well-planned housing with utilities","Informal settlements with poor housing and inadequate services","Rich residential areas","Industrial zones"]', 1,
 'Shanty towns (informal settlements) lack basic services like clean water, sanitation, and proper housing.', 'easy'),

-- West Africa Physical Geography (4ca65b1b-ee48-490b-8a64-80f0cdb5825e)
('a1000000-0000-0000-0000-000000000006', '4ca65b1b-ee48-490b-8a64-80f0cdb5825e',
 'The Niger River is the largest river in:',
 '["East Africa","Southern Africa","West Africa","Central Africa"]', 2,
 'The Niger River is the largest river in West Africa, flowing through Guinea, Mali, Niger, Benin, and Nigeria.', 'easy'),

('a1000000-0000-0000-0000-000000000006', '4ca65b1b-ee48-490b-8a64-80f0cdb5825e',
 'Lake Volta in Ghana is notable because it is:',
 '["The largest natural lake in West Africa","One of the world''s largest man-made lakes","The source of the Niger River","A saltwater lake"]', 1,
 'Lake Volta is one of the largest man-made reservoirs in the world, created by the Akosombo Dam.', 'easy'),

-- West Africa Human Geography (0d402e91-42e0-48fa-a7b1-3587d9cba308)
('a1000000-0000-0000-0000-000000000006', '0d402e91-42e0-48fa-a7b1-3587d9cba308',
 'The most populous country in West Africa is:',
 '["Ghana","Senegal","Nigeria","Cote d''Ivoire"]', 2,
 'Nigeria has the largest population in West Africa (and Africa as a whole) with over 200 million people.', 'easy'),

('a1000000-0000-0000-0000-000000000006', '0d402e91-42e0-48fa-a7b1-3587d9cba308',
 'The majority of West Africa''s population is engaged in:',
 '["Industry","Services","Agriculture","Mining"]', 2,
 'Agriculture is the primary occupation for the majority of West Africa''s population.', 'easy'),

-- Desert Landforms (fc558da0-5fcf-4705-8254-de9351640490)
('a1000000-0000-0000-0000-000000000006', 'fc558da0-5fcf-4705-8254-de9351640490',
 'A wadi in a desert is:',
 '["A sand dune","A dry river valley that floods seasonally","An oasis","A rocky plateau"]', 1,
 'A wadi is a dry riverbed or valley in a desert that temporarily fills with water after rainfall.', 'medium'),

-- Statistical Methods (f9267cb0-2501-41b1-a128-c98e44c6bfea)
('a1000000-0000-0000-0000-000000000006', 'f9267cb0-2501-41b1-a128-c98e44c6bfea',
 'A bar graph is most suitable for showing:',
 '["Continuous data over time","Discrete categories for comparison","The relationship between two variables","Proportions of a whole"]', 1,
 'Bar graphs display and compare discrete categories of data.', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'f9267cb0-2501-41b1-a128-c98e44c6bfea',
 'A pie chart is used to show:',
 '["Changes over time","The relationship between variables","Proportions/percentages of a whole","Population distribution across a map"]', 2,
 'Pie charts show how a whole is divided into parts/proportions.', 'easy'),

-- More Climate
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'The dry season in Ghana is associated with the:',
 '["Harmattan","Monsoon","Southwest monsoon","Ocean breeze"]', 0,
 'The Harmattan brings dry, dusty conditions to Ghana during the dry season (Nov-March).', 'easy'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000002',
 'Global warming is primarily caused by increased levels of:',
 '["Oxygen","Nitrogen","Carbon dioxide and other greenhouse gases","Argon"]', 2,
 'Rising CO₂ from fossil fuel burning is the main driver of current global warming.', 'easy'),

-- More Population
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000003',
 'The demographic transition model shows that as countries develop:',
 '["Birth and death rates both increase","Birth rates fall after death rates fall — population growth slows","Both rates stay high","Death rates increase with industrialisation"]', 1,
 'The demographic transition model: death rates fall first (better healthcare), then birth rates fall — growth slows.', 'hard'),

-- More Rivers
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000005',
 'A delta forms at the mouth of a river when:',
 '["The river erodes the sea floor","Sediment is deposited faster than it can be removed by sea currents","The river freezes","The river changes direction"]', 1,
 'Deltas form at river mouths where sediment deposition exceeds removal by sea currents.', 'medium'),

('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000005',
 'Hydraulic action is a river erosion process that involves:',
 '["Rocks scraping the riverbed","Water pressure breaking apart rocks","Chemical dissolving of limestone","Rocks hitting each other"]', 1,
 'Hydraulic action: the force of water pressure and air trapped in cracks breaks apart rocks.', 'medium'),

-- More Maps
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000004',
 'The bearing from North to East is:',
 '["090°","045°","180°","270°"]', 0,
 'Bearings are measured clockwise from North. East = 090°.', 'easy'),

-- More Plate Tectonics
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000001',
 'The Ring of Fire refers to:',
 '["A volcanic zone around the Pacific Ocean","The Sahara Desert","The equatorial rainforest belt","The Antarctic ice cap"]', 0,
 'The Ring of Fire is a zone of intense volcanic and seismic activity around the Pacific Ocean plate boundaries.', 'easy'),

-- More Vegetation
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000008',
 'The savanna vegetation zone is characterised by:',
 '["Dense tropical forest","Grasses with scattered trees, dry season dominant","Desert with no plants","Temperate forests"]', 1,
 'Savanna has tall grasses, scattered trees (like baobab and acacia), and a pronounced dry season.', 'easy'),

-- More Agriculture
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000006',
 'The Green Revolution refers to:',
 '["Planting more trees","Introduction of high-yielding crop varieties and modern farming techniques","Organic farming only","Reversing desertification"]', 1,
 'The Green Revolution introduced high-yielding seeds, irrigation, and fertilisers to boost food production.', 'medium'),

-- More Urbanisation
('a1000000-0000-0000-0000-000000000006', '1a8f34f2-5524-49e9-b273-495e9dc0d80e',
 'Accra is the capital and largest city of:',
 '["Nigeria","Senegal","Ghana","Cote d''Ivoire"]', 2,
 'Accra is the capital city and largest urban centre of Ghana.', 'easy'),

-- More Environmental Issues
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000010',
 'El Niño events cause:',
 '["Cooler than normal Pacific Ocean temperatures","Disruption of normal weather patterns globally","Only local African weather changes","An increase in Atlantic hurricanes only"]', 1,
 'El Niño is an unusual warming of Pacific Ocean waters that disrupts global weather patterns.', 'hard'),

-- More Natural Resources
('a1000000-0000-0000-0000-000000000006', 'b1000006-0000-0000-0000-000000000007',
 'Ghana is a major producer of which mineral?',
 '["Oil","Gold","Copper","Iron ore"]', 1,
 'Ghana has significant gold deposits and is one of Africa''s top gold producers.', 'easy'),

-- More Economic Geography
('a1000000-0000-0000-0000-000000000006', '172520ad-3ee7-42c5-9977-fe1dd94c94c1',
 'The term "brain drain" refers to:',
 '["Flooding of agricultural land","Emigration of skilled workers from developing countries","Overcrowding of schools","Mental health issues"]', 1,
 'Brain drain is the emigration of educated/skilled professionals from developing to developed countries.', 'medium'),

-- More Landforms
('a1000000-0000-0000-0000-000000000006', '0dc5fe6f-51fa-4cd0-a6ae-6d8bdd016826',
 'An escarpment is:',
 '["A flat plain","A long, steep slope or cliff at the edge of a plateau","An underground cave","A river flood plain"]', 1,
 'An escarpment (scarp) is a long, steep slope or cliff separating two relatively level areas.', 'medium');
