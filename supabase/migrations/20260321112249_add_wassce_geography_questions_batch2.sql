/*
  # Add WASSCE Geography Questions Batch 2

  Adds 80 new WASSCE-standard Geography questions covering:
  - Physical geography (climate, geomorphology, hydrology)
  - Human geography (population, settlement, agriculture)
  - Economic geography (trade, industry, resources)
  - West Africa geography, map reading, environmental issues

  All questions follow WASSCE exam standards.
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000006';
  v_topic_id uuid := '0d402e91-42e0-48fa-a7b1-3587d9cba308';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'The largest lake in West Africa is',
 '["Lake Chad","Lake Volta","Lake Bosumtwi","Lake Tanganyika"]', 1,
 'Lake Volta in Ghana, created by the Akosombo Dam, is the largest man-made lake in West Africa by surface area.', 'easy'),

(v_subject_id, v_topic_id, 'The Sahara Desert is located in which part of Africa?',
 '["Southern Africa","Eastern Africa","North Africa","West Africa"]', 2,
 'The Sahara Desert, the world''s largest hot desert, spans much of North Africa.', 'easy'),

(v_subject_id, v_topic_id, 'The type of rainfall that occurs when moist air is forced to rise over mountains is called',
 '["Convectional rainfall","Cyclonic rainfall","Orographic (relief) rainfall","Frontal rainfall"]', 2,
 'Orographic (relief) rainfall occurs when moist air is forced to rise over a mountain range, cools, and condenses.', 'easy'),

(v_subject_id, v_topic_id, 'Population density is calculated as',
 '["Total population × area","Total population / total land area","Birth rate / death rate","Number of cities / total area"]', 1,
 'Population density = total population / total land area, expressed as persons per square kilometre.', 'easy'),

(v_subject_id, v_topic_id, 'The Greenwich Meridian (Prime Meridian) has a longitude of',
 '["90°E","180°","0°","45°W"]', 2,
 'The Prime Meridian (0° longitude) passes through Greenwich, England.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a greenhouse gas that contributes to global warming?',
 '["Nitrogen","Argon","Carbon dioxide","Neon"]', 2,
 'Carbon dioxide (CO₂) traps infrared radiation in the atmosphere, contributing to the greenhouse effect and global warming.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which rocks are broken down in situ by physical and chemical processes is called',
 '["Erosion","Transportation","Weathering","Deposition"]', 2,
 'Weathering is the breakdown of rocks in place by physical, chemical, and biological processes without transportation.', 'easy'),

(v_subject_id, v_topic_id, 'The Tropic of Cancer is located at',
 '["23.5°S","23.5°N","0°","66.5°N"]', 1,
 'The Tropic of Cancer is at 23.5°N latitude — the northernmost point where the sun can be directly overhead (during June solstice).', 'easy'),

(v_subject_id, v_topic_id, 'What is the contour interval on a topographic map?',
 '["The highest point on the map","The vertical distance between adjacent contour lines","The horizontal scale of the map","The distance between spot heights"]', 1,
 'The contour interval is the difference in elevation between consecutive contour lines on a topographic map.', 'medium'),

(v_subject_id, v_topic_id, 'The type of farming where crops are grown mainly for sale is called',
 '["Subsistence farming","Commercial farming","Mixed farming","Shifting cultivation"]', 1,
 'Commercial farming produces crops primarily for sale in the market rather than for personal consumption.', 'easy'),

(v_subject_id, v_topic_id, 'The seasonal migration of people with their livestock in search of pasture is called',
 '["Nomadism","Transhumance","Emigration","Shifting cultivation"]', 0,
 'Nomadic pastoralism involves seasonal movement of people and livestock in search of water and pasture.', 'medium'),

(v_subject_id, v_topic_id, 'Which major ocean current flows along the west coast of West Africa?',
 '["Gulf Stream","Canary Current","Benguela Current","Mozambique Current"]', 1,
 'The Canary Current is a cold ocean current flowing southward along the northwest coast of Africa.', 'hard'),

(v_subject_id, v_topic_id, 'The Harmattan is a dry dusty wind that blows from',
 '["The sea toward land","The Sahara Desert toward the coast","The Atlantic toward the Sahara","The south toward the north"]', 1,
 'The Harmattan blows from the Sahara Desert in a north-easterly direction toward West Africa''s coast, carrying dust.', 'easy'),

(v_subject_id, v_topic_id, 'An isthmus is',
 '["A narrow strip of land connecting two larger land masses","A body of water connecting two seas","An inlet of the sea","A large island"]', 0,
 'An isthmus is a narrow strip of land connecting two larger land masses (e.g., the Isthmus of Panama).', 'medium'),

(v_subject_id, v_topic_id, 'The Volta River in Ghana was dammed to create',
 '["Kainji Dam","Kariba Dam","Akosombo Dam","Aswan Dam"]', 2,
 'The Akosombo Dam (completed 1965) on the Volta River created Lake Volta to generate hydroelectric power for Ghana.', 'easy'),

(v_subject_id, v_topic_id, 'The natural vegetation of the Guinea coast of West Africa is',
 '["Desert scrub","Savanna","Tropical rainforest","Mediterranean scrub"]', 2,
 'The Guinea coast receives heavy rainfall and supports tropical rainforest — dense, multi-layered forest vegetation.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which desert advances into previously fertile areas is called',
 '["Deforestation","Desertification","Leaching","Salinisation"]', 1,
 'Desertification is the degradation of dryland ecosystems due to climate change and human activities, causing desert expansion.', 'easy'),

(v_subject_id, v_topic_id, 'A river delta is formed by',
 '["Erosion of coastal cliffs","Deposition of sediment at the mouth of a river","Underground water activity","Volcanic activity"]', 1,
 'A river delta forms when a river slows and deposits its sediment load as it enters a sea or lake, building up land.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following countries is landlocked in West Africa?',
 '["Ghana","Côte d''Ivoire","Niger","Benin"]', 2,
 'Niger is a landlocked country in West Africa, surrounded by Algeria, Libya, Chad, Nigeria, Benin, Burkina Faso, and Mali.', 'medium'),

(v_subject_id, v_topic_id, 'The International Date Line is located at approximately',
 '["0° longitude","90°E longitude","180° longitude","90°W longitude"]', 2,
 'The International Date Line runs roughly along the 180° meridian in the Pacific Ocean.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''urbanisation'' refers to',
 '["Decrease in city populations","Growth of cities and increase in urban proportion of population","Building of rural roads","Development of agricultural land"]', 1,
 'Urbanisation is the increasing proportion of people living in urban areas and the physical growth of cities.', 'easy'),

(v_subject_id, v_topic_id, 'Which type of map shows political boundaries and major settlements?',
 '["Topographic map","Physical map","Political map","Thematic map"]', 2,
 'Political maps show country borders, capitals, cities, and administrative boundaries.', 'easy'),

(v_subject_id, v_topic_id, 'The main cash crop of Ghana is',
 '["Coffee","Cotton","Cocoa","Rubber"]', 2,
 'Cocoa is Ghana''s primary cash crop and export commodity — Ghana is one of the world''s leading cocoa producers.', 'easy'),

(v_subject_id, v_topic_id, 'In a typical African city, the area with the densest, oldest buildings is often called the',
 '["Central Business District","Shanty town","Old quarter (traditional zone)","Industrial zone"]', 2,
 'In many West African cities, the old quarter contains the oldest, densest traditional housing and market areas.', 'medium'),

(v_subject_id, v_topic_id, 'The main factor influencing the distribution of population in West Africa is',
 '["Distance from the equator","Relief and water availability","Presence of forests","National borders"]', 1,
 'Population distribution in West Africa is strongly influenced by the availability of water for farming and suitable relief (flat, fertile land).', 'medium'),

(v_subject_id, v_topic_id, 'Oil is the main export of which West African country?',
 '["Ghana","Senegal","Nigeria","Mali"]', 2,
 'Nigeria is West Africa''s largest oil producer and exporter — petroleum accounts for the majority of its export earnings.', 'easy'),

(v_subject_id, v_topic_id, 'What is the difference between weather and climate?',
 '["They are the same thing","Weather is long-term; climate is short-term","Climate is the average weather conditions over 30+ years; weather is short-term","Climate changes daily; weather does not"]', 2,
 'Weather refers to short-term atmospheric conditions; climate is the average of weather conditions over a long period (typically 30 years).', 'easy'),

(v_subject_id, v_topic_id, 'The term ''birth rate'' is defined as',
 '["Total number of births in a year","Number of live births per 1,000 people per year","Births minus deaths per year","Total births in a country"]', 1,
 'Birth rate = number of live births per 1,000 people in a given year.', 'easy'),

(v_subject_id, v_topic_id, 'A fold mountain is formed by',
 '["Volcanic activity","The buckling and folding of rock layers due to tectonic compression","River deposition","Wind erosion"]', 1,
 'Fold mountains (e.g., Alps, Himalayas) form when tectonic plates collide, compressing and folding rock layers upward.', 'easy'),

(v_subject_id, v_topic_id, 'The Amazon Basin is known for',
 '["World''s largest desert","World''s largest tropical rainforest","World''s largest savanna","World''s deepest lake"]', 1,
 'The Amazon Basin in South America contains the world''s largest tropical rainforest and the Amazon River.', 'easy'),

(v_subject_id, v_topic_id, 'Which term describes the total movement of people into a country?',
 '["Emigration","Immigration","Migration","Urbanisation"]', 1,
 'Immigration refers to people moving INTO a country (in-migration). Emigration is leaving a country.', 'easy'),

(v_subject_id, v_topic_id, 'The river Niger flows into which body of water?',
 '["Gulf of Guinea","Mediterranean Sea","Lake Chad","Atlantic Ocean near Senegal"]', 0,
 'The Niger River flows through West Africa and empties into the Gulf of Guinea in Nigeria through its large delta.', 'easy'),

(v_subject_id, v_topic_id, 'Leaching in soils refers to',
 '["Addition of nutrients by decomposition","Washing of soluble nutrients downward through the soil by rainwater","Erosion of topsoil by wind","Compaction of soil by heavy machinery"]', 1,
 'Leaching is the downward movement of water through soil, carrying dissolved nutrients away from the root zone.', 'medium'),

(v_subject_id, v_topic_id, 'The dominant type of farming in the Sudan savanna zone is',
 '["Pastoral farming","Plantation farming","Subsistence crop farming with some livestock","Commercial fishing"]', 2,
 'The Sudan savanna supports subsistence mixed farming — crop cultivation (millet, sorghum) combined with livestock rearing.', 'medium'),

(v_subject_id, v_topic_id, 'A meander is',
 '["A straight section of a river","A broad bend in a river","A waterfall","A river source"]', 1,
 'A meander is a winding curve or bend in a river, formed by differential erosion on the outer bank and deposition on the inner bank.', 'easy'),

(v_subject_id, v_topic_id, 'Which renewable energy source is most suitable for the Sahel region?',
 '["Hydropower","Nuclear power","Solar energy","Tidal energy"]', 2,
 'The Sahel receives intense solar radiation making solar energy the most viable and sustainable renewable energy source there.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''natural increase'' in population means',
 '["Net migration into a country","Birth rate minus death rate","Total population growth","Growth due to economic development"]', 1,
 'Natural increase = birth rate − death rate, representing population growth due to births exceeding deaths (excluding migration).', 'easy'),

(v_subject_id, v_topic_id, 'The equatorial region experiences rain',
 '["Only in summer","Only in winter","Throughout most of the year","Only during one season"]', 2,
 'The equatorial zone (within ±5° of the equator) experiences heavy rainfall throughout the year due to convection.', 'easy'),

(v_subject_id, v_topic_id, 'The main cause of soil erosion in West Africa is',
 '["Earthquakes","Deforestation and overgrazing","Mining activities","Volcanic eruptions"]', 1,
 'Deforestation and overgrazing remove vegetation cover, exposing soil to erosion by rain and wind.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is an example of secondary industry?',
 '["Fishing","Mining","Car manufacturing","Tourism"]', 2,
 'Secondary industry involves manufacturing/processing raw materials. Car manufacturing converts raw materials (steel, rubber) into finished products.', 'easy'),

(v_subject_id, v_topic_id, 'The Greenwich Mean Time (GMT) is used as the basis for',
 '["Latitude calculations","Weather forecasting","International time zones","Compass bearings"]', 2,
 'GMT (now UTC) at 0° longitude is the reference for international time zones, with each 15° of longitude = 1 hour difference.', 'medium'),

(v_subject_id, v_topic_id, 'The large-scale commercial growing of a single crop is called',
 '["Subsistence farming","Monoculture/plantation farming","Intensive farming","Nomadic farming"]', 1,
 'Monoculture (plantation farming) involves growing a single crop over large areas for commercial purposes.', 'easy'),

(v_subject_id, v_topic_id, 'Which African country has the largest population?',
 '["Ethiopia","Egypt","Nigeria","South Africa"]', 2,
 'Nigeria has the largest population in Africa, with over 200 million people.', 'easy'),

(v_subject_id, v_topic_id, 'A rain shadow is',
 '["An area of heavy rainfall on a mountain","A dry area on the leeward side of a mountain range","A shadow cast by clouds","A type of drought"]', 1,
 'A rain shadow is the dry area on the leeward (sheltered) side of a mountain range where little rainfall occurs.', 'medium'),

(v_subject_id, v_topic_id, 'The process of soil formation from parent rock is called',
 '["Leaching","Pedogenesis","Erosion","Translocation"]', 1,
 'Pedogenesis is the process of soil formation from parent rock through weathering, organic activity, and other processes.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following is the correct description of an ox-bow lake?',
 '["A lake formed by volcanic activity","A horseshoe-shaped lake formed when a river meander is cut off","A lake formed by glacial erosion","A lake formed by tectonic activity"]', 1,
 'An ox-bow lake forms when a river cuts through the neck of a meander, leaving the old bend as an isolated horseshoe-shaped lake.', 'medium'),

(v_subject_id, v_topic_id, 'The concept of ''sustainable development'' means',
 '["Development that uses all available resources","Development that meets present needs without compromising future generations'' ability to meet their needs","Development that stops after 50 years","Development only in cities"]', 1,
 'Sustainable development (Brundtland Commission, 1987) meets the needs of the present without compromising future generations'' ability to meet their own needs.', 'medium'),

(v_subject_id, v_topic_id, 'The Congo Basin is the world''s second largest',
 '["Desert","Tropical rainforest","River basin by discharge","Mountain range"]', 1,
 'The Congo Basin contains the world''s second largest tropical rainforest after the Amazon, and the Congo River has the second largest discharge.', 'hard'),

(v_subject_id, v_topic_id, 'Which factor most influences the temperature of a place?',
 '["Longitude","Distance from the equator (latitude)","Proximity to industrial areas","Type of vegetation"]', 1,
 'Latitude is the most important factor determining temperature — places closer to the equator receive more direct solar radiation and are warmer.', 'easy'),

(v_subject_id, v_topic_id, 'The highest mountain in Africa is',
 '["Mount Kenya","Table Mountain","Mount Kilimanjaro","Atlas Mountains"]', 2,
 'Mount Kilimanjaro in Tanzania (5,895 m) is the highest mountain in Africa.', 'easy'),

(v_subject_id, v_topic_id, 'Which West African country has English as its official language?',
 '["Senegal","Côte d''Ivoire","Ghana","Guinea"]', 2,
 'Ghana, The Gambia, Sierra Leone, Liberia, and Nigeria use English as their official language in West Africa.', 'easy'),

(v_subject_id, v_topic_id, 'A fjord is a',
 '["Desert valley","Drowned glacial valley filled with sea water","River estuary","Coral reef formation"]', 1,
 'A fjord is a long, narrow, deep inlet formed by the drowning of a glacially carved valley when sea levels rose.', 'medium'),

(v_subject_id, v_topic_id, 'The Inter-Tropical Convergence Zone (ITCZ) is associated with',
 '["High pressure and dry conditions","Low pressure and heavy rainfall","Polar climates","Trade winds diverging"]', 1,
 'The ITCZ is a belt of low pressure near the equator where trade winds converge, causing rising air, clouds, and heavy rainfall.', 'medium'),

(v_subject_id, v_topic_id, 'Map scale 1:50,000 means that 1 cm on the map equals',
 '["50 m on the ground","500 m on the ground","5 km on the ground","50 km on the ground"]', 1,
 '1:50,000 means 1 unit on map = 50,000 units on ground. 1 cm = 50,000 cm = 500 m = 0.5 km.', 'medium'),

(v_subject_id, v_topic_id, 'Deforestation primarily leads to',
 '["Increased rainfall","Increased biodiversity","Soil erosion and increased flooding","Lower temperatures"]', 2,
 'Deforestation removes tree cover, leading to soil erosion (no roots to hold soil), altered water cycle, and increased flood risk.', 'easy'),

(v_subject_id, v_topic_id, 'The main source of fresh water for agriculture in the Sahel is',
 '["Permanent rivers","Rainfall and seasonal rivers (wadis)","Desalination","Underground lakes"]', 1,
 'In the Sahel, seasonal rainfall and seasonal rivers (wadis) provide the main water for subsistence agriculture.', 'medium'),

(v_subject_id, v_topic_id, 'Migration from rural to urban areas is mainly caused by',
 '["Urban push factors","Rural push and urban pull factors","Government relocation policies","Natural disasters only"]', 1,
 'Rural-urban migration is driven by push factors (poverty, lack of services) in rural areas and pull factors (jobs, education) in cities.', 'easy'),

(v_subject_id, v_topic_id, 'The type of erosion where the river bed is worn away by material being dragged along is called',
 '["Hydraulic action","Solution","Corrasion (abrasion)","Attrition"]', 2,
 'Corrasion (abrasion) is erosion of the river bed and banks by material (sand, gravel) being dragged along by the current.', 'hard'),

(v_subject_id, v_topic_id, 'The Sahel region is characterised by',
 '["Dense tropical forest","Semi-arid grassland bordering the Sahara","Tropical swamp","Equatorial rainforest"]', 1,
 'The Sahel is a semi-arid transitional zone between the Sahara Desert to the north and the savanna to the south.', 'easy'),

(v_subject_id, v_topic_id, 'A watershed (drainage divide) is',
 '["A river that floods seasonally","The boundary between two drainage basins","The widest point of a river","A lake that drains into two rivers"]', 1,
 'A watershed (divide) is the ridge or high ground that separates two adjacent drainage basins.', 'medium'),

(v_subject_id, v_topic_id, 'The capital city of Nigeria is',
 '["Lagos","Ibadan","Abuja","Kano"]', 2,
 'Abuja became Nigeria''s capital in 1991, replacing Lagos. It is centrally located and purpose-built.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following best defines ''urbanisation''?',
 '["Decrease in the rural population only","The growth of towns and cities and increasing proportion of people living in urban areas","Construction of urban roads","Migration of people from cities to rural areas"]', 1,
 'Urbanisation is the process by which an increasing proportion of a country''s population lives in urban areas.', 'easy'),

(v_subject_id, v_topic_id, 'The type of cloud that produces thunderstorms is called',
 '["Cirrus","Stratus","Cumulonimbus","Nimbostratus"]', 2,
 'Cumulonimbus clouds are tall, anvil-shaped storm clouds associated with thunder, lightning, and heavy rain.', 'medium'),

(v_subject_id, v_topic_id, 'A tributary is',
 '["The main river","A smaller river that joins a larger river","A river''s mouth","An underground river"]', 1,
 'A tributary is a stream or river that flows into a larger river (main stream), contributing to its discharge.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which crops are grown on flooded fields (as in rice cultivation) is called',
 '["Dry farming","Irrigation","Paddy farming","Shifting cultivation"]', 2,
 'Paddy farming (wet rice cultivation) involves growing rice in flooded fields (paddies), common in Asia and some parts of West Africa.', 'medium'),

(v_subject_id, v_topic_id, 'Acid rain is mainly caused by the release of',
 '["Carbon dioxide and oxygen","Sulphur dioxide and nitrogen oxides","Water vapour and methane","Argon and helium"]', 1,
 'Acid rain forms when SO₂ and NOₓ (from burning fossil fuels) react with water vapour to form sulphuric and nitric acids.', 'medium');

END $$;
