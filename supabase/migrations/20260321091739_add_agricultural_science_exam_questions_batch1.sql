/*
  # Add Agricultural Science Exam Questions - Batch 1
  
  Adds 60 new WASSCE-standard multiple choice questions for Agricultural Science
  covering Crop Production, Soil Science, Animal Husbandry, Pests, Farm Economics and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Introduction to Agriculture (b0000001-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000001',
 'Agriculture is defined as:',
 '["Only crop farming","The science and practice of farming including crop cultivation, animal rearing and forestry","Only animal rearing","Only food processing"]', 1,
 'Agriculture encompasses all activities related to crop production, animal husbandry, forestry, and food processing.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000001',
 'Subsistence farming involves:',
 '["Growing crops for sale only","Growing crops mainly to feed the farmer''s family","Large-scale commercial production","Using only modern technology"]', 1,
 'Subsistence farming: crops are grown mainly to feed the farmer''s family with little or no surplus for sale.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000001',
 'The main purpose of agriculture is to:',
 '["Produce forest products","Provide food and raw materials for human needs","Provide employment only","Generate foreign exchange only"]', 1,
 'Agriculture''s primary purpose is providing food and raw materials (cotton, rubber, etc.) for human needs.', 'easy'),

-- Types of Farming Systems (b0000001-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000002',
 'Mixed farming refers to:',
 '["Farming only one crop","Combining crop production and animal rearing on the same farm","Growing two types of crops only","Farming on different types of land"]', 1,
 'Mixed farming integrates crop production and livestock rearing on the same farm, allowing synergies.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000002',
 'Monoculture is the practice of:',
 '["Growing many different crops","Growing only one type of crop on a large area","Rotating crops annually","Growing crops in a greenhouse"]', 1,
 'Monoculture: growing a single crop species over a large area — common in commercial farming.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000002',
 'Crop rotation helps to:',
 '["Reduce crop yield","Maintain soil fertility and reduce pest build-up","Increase the need for fertilisers","Cause soil erosion"]', 1,
 'Crop rotation prevents nutrient depletion, breaks pest/disease cycles, and maintains soil health.', 'easy'),

-- Soil Science and Management (b0000001-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'The most fertile soil layer is the:',
 '["Subsoil","Parent material","Topsoil","Bedrock"]', 2,
 'The topsoil (A horizon) is the uppermost and most fertile layer, rich in humus and nutrients.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'Loam soil is considered ideal for farming because it:',
 '["Has the highest clay content","Contains a balance of sand, silt and clay with good water retention and drainage","Is pure sand which drains quickly","Has very high acidity"]', 1,
 'Loam soil balances drainage and water retention, is well-aerated, and has good nutrient-holding capacity.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'Humus in soil is:',
 '["Inorganic minerals","Decomposed organic matter that improves soil fertility","Sand particles","Water in the soil"]', 1,
 'Humus is decomposed organic matter that improves soil structure, water retention, and fertility.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'The pH of an acidic soil is:',
 '["Greater than 7","Equal to 7","Less than 7","Always 6"]', 2,
 'Acidic soils have pH less than 7. pH 7 is neutral; above 7 is alkaline.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'Liming of acidic soil is done to:',
 '["Increase soil acidity","Reduce soil pH","Increase soil pH (reduce acidity)","Add nitrogen to soil"]', 2,
 'Agricultural lime (calcium carbonate) is applied to acidic soils to raise pH and neutralise acidity.', 'medium'),

-- Crop Production (b0000001-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'The practice of growing two or more crops on the same piece of land at the same time is:',
 '["Crop rotation","Monoculture","Intercropping","Strip cropping"]', 2,
 'Intercropping involves growing two or more crops simultaneously on the same land.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'Maize is classified as a:',
 '["Legume","Cereal crop","Root and tuber crop","Vegetable"]', 1,
 'Maize (corn) is a cereal crop — a grass grown for its edible grain/seed.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'Cassava is an important crop in West Africa primarily because:',
 '["It has very high protein content","It is drought-resistant and provides carbohydrate calories","It only grows in forests","It requires heavy rainfall"]', 1,
 'Cassava is a major food security crop — drought-tolerant and a key source of calories (carbohydrates).', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'The process of land preparation that involves turning over the soil is called:',
 '["Harrowing","Ploughing","Ridging","Broadcasting"]', 1,
 'Ploughing (tilling) breaks up soil, buries weeds, and prepares land for planting.', 'easy'),

-- Plant Nutrition and Fertilizers (b0000001-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000005',
 'The three major macronutrients required by plants are:',
 '["Carbon, Hydrogen, Oxygen","Nitrogen, Phosphorus, Potassium (NPK)","Iron, Copper, Zinc","Calcium, Magnesium, Sulphur"]', 1,
 'NPK — Nitrogen, Phosphorus, Potassium — are the three primary macronutrients for plant growth.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000005',
 'Nitrogen is important for plant growth because it:',
 '["Strengthens roots","Is essential for protein synthesis and leaf (chlorophyll) production","Provides energy directly","Hardens the cell wall"]', 1,
 'Nitrogen is a key component of proteins, enzymes, and chlorophyll — vital for vegetative growth.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000005',
 'Organic fertilisers (manure and compost) differ from inorganic fertilisers in that they:',
 '["Act faster","Provide fewer nutrients","Improve soil structure and add humus in addition to nutrients","Are more expensive"]', 2,
 'Organic fertilisers improve soil structure, add organic matter, and support soil microorganisms.', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000005',
 'Green manuring involves:',
 '["Applying animal waste to fields","Ploughing in a green crop to improve soil fertility","Spraying crops with fertiliser","Watering crops with diluted fertiliser"]', 1,
 'Green manuring: growing a crop (usually a legume) and incorporating it into the soil to add organic matter.', 'medium'),

-- Pests, Diseases, and Weed Control (b0000001-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000006',
 'A pesticide used specifically to kill insects is called an:',
 '["Herbicide","Fungicide","Insecticide","Rodenticide"]', 2,
 'Insecticides are chemicals specifically designed to kill insects that damage crops.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000006',
 'Biological control of pests involves:',
 '["Using chemical sprays","Using natural predators or parasites to control pest populations","Burning infected crops","Deep ploughing only"]', 1,
 'Biological control uses natural enemies (predators, parasites, pathogens) to reduce pest populations.', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000006',
 'Weeds compete with crops for:',
 '["Only sunlight","Only water","Nutrients, water, light, and space","Only soil"]', 2,
 'Weeds compete with crops for all resources: light, water, nutrients, and growing space.', 'easy'),

-- Irrigation and Water Management (b0000001-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000007',
 'Drip irrigation is considered the most efficient irrigation method because:',
 '["It is the cheapest to install","Water is delivered directly to the plant roots, minimising waste","It requires no electricity","It works best in flooded fields"]', 1,
 'Drip irrigation delivers water slowly to the root zone, minimising evaporation and water waste.', 'medium'),

-- Agricultural Tools and Machinery (b0000001-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000008',
 'A harrow is used in farming for:',
 '["Planting seeds","Breaking up clods and levelling soil after ploughing","Harvesting crops","Applying fertiliser"]', 1,
 'A harrow breaks up soil clods, levels the field surface, and incorporates crop residues after ploughing.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000008',
 'A cutlass (machete) is used in West African farming mainly for:',
 '["Deep ploughing","Clearing bush, harvesting, and weeding","Irrigating crops","Spraying pesticides"]', 1,
 'The cutlass is the most common hand tool in West African farming — used for land clearing and weeding.', 'easy'),

-- Animal Husbandry (b0000001-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000009',
 'Ruminants are animals that:',
 '["Only eat grains","Chew the cud — regurgitate and re-chew food","Have a single-chambered stomach","Cannot digest grass"]', 1,
 'Ruminants (cattle, sheep, goats) have a multi-chambered stomach and chew the cud for digestion.', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000009',
 'The gestation period of a cow is approximately:',
 '["3 months","6 months","9 months","12 months"]', 2,
 'The gestation period of cattle (cows) is approximately 9 months (about 280 days).', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000009',
 'Castration of male farm animals is done mainly to:',
 '["Improve milk production","Control breeding and improve meat quality","Increase disease resistance","Prevent weight gain"]', 1,
 'Castration removes the testes — controlling unwanted breeding and improving docility/meat quality.', 'medium'),

-- Poultry Farming (b0000001-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000010',
 'Broilers are poultry birds bred for:',
 '["Egg production","Meat production","Both meat and eggs","Ornamental purposes"]', 1,
 'Broilers are specifically bred for rapid growth and meat production.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000010',
 'Newcastle disease in poultry is caused by a:',
 '["Bacterium","Fungus","Virus","Parasite"]', 2,
 'Newcastle disease (fowl pest) is a highly contagious viral disease affecting poultry.', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000010',
 'The optimum temperature for incubating chicken eggs is approximately:',
 '["25°C","37.5°C","42°C","30°C"]', 1,
 'Chicken eggs are incubated at approximately 37-38°C (37.5°C) for 21 days.', 'hard'),

-- Fish Farming (b0000001-0000-0000-0000-000000000011)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000011',
 'Aquaculture refers to:',
 '["Deep sea fishing","The farming of fish, shellfish, and aquatic plants in controlled environments","River fishing","Ocean pollution control"]', 1,
 'Aquaculture is the controlled cultivation of aquatic organisms (fish, prawns, seaweed) in ponds, tanks, or cages.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000011',
 'Tilapia is widely farmed in West Africa because it:',
 '["Is difficult to breed","Grows fast, tolerates poor water quality, and accepts various feeds","Only lives in saltwater","Requires very expensive feed"]', 1,
 'Tilapia is popular in aquaculture — it grows rapidly, survives in poor conditions, and is a good food fish.', 'easy'),

-- Agricultural Economics (b0000001-0000-0000-0000-000000000012)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000012',
 'The law of diminishing returns in agriculture states that:',
 '["Yield always increases with more input","Beyond a certain point, adding more of one input gives progressively smaller increases in output","More land always gives more yield","Fertilisers always double yield"]', 1,
 'As you add more of one factor (e.g., fertiliser) while others stay fixed, returns eventually decrease.', 'hard'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000012',
 'A cooperative society in agriculture helps farmers by:',
 '["Competing against individual farmers","Pooling resources for bulk buying, credit, and marketing","Taking land from farmers","Controlling government policy"]', 1,
 'Agricultural cooperatives enable farmers to pool resources, access credit, and negotiate better prices.', 'easy'),

-- Farm Records and Management (b0000001-0000-0000-0000-000000000013)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000013',
 'Farm records are important because they:',
 '["Only satisfy government requirements","Help monitor farm performance, plan future activities, and secure loans","Are required only for large farms","Replace the need for a manager"]', 1,
 'Farm records track expenses, income, production data, and help in planning and accessing credit.', 'easy'),

-- Forestry and Agro-forestry (b0000001-0000-0000-0000-000000000014)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000014',
 'Agroforestry is the practice of:',
 '["Growing only trees on farmland","Integrating trees with crops and/or livestock on the same land","Cutting all trees from farmland","Only planting forest trees"]', 1,
 'Agroforestry combines trees with crops/livestock — providing shade, windbreaks, and additional income.', 'medium'),

-- Soil Erosion and Conservation (b0000001-0000-0000-0000-000000000015)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000015',
 'Contour farming (contour ploughing) helps to:',
 '["Increase water runoff","Reduce soil erosion by slowing water flow across slopes","Remove nutrients from the soil","Increase the gradient of slopes"]', 1,
 'Contour ploughing creates ridges along contours — slowing water flow and reducing erosion on slopes.', 'medium'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000015',
 'The most effective way to conserve soil on steep slopes is:',
 '["Monoculture","Terracing and planting cover crops","Deep ploughing","Burning vegetation"]', 1,
 'Terracing creates flat steps on slopes, while cover crops protect bare soil — both reduce erosion.', 'medium'),

-- Plant Propagation (b0000001-0000-0000-0000-000000000016)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000016',
 'Vegetative propagation of crops involves:',
 '["Using seeds only","Using plant parts (cuttings, suckers, tubers) other than seeds","Cross-pollination","Sexual reproduction only"]', 1,
 'Vegetative propagation uses non-seed plant parts — cuttings, tubers, runners — to produce new plants.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000016',
 'Budding and grafting are methods of:',
 '["Seed propagation","Vegetative propagation joining two plants","Chemical fertilisation","Pest control"]', 1,
 'Budding and grafting are vegetative propagation methods where a bud/shoot is joined to a rootstock.', 'medium'),

-- Post-harvest Technology (b0000001-0000-0000-0000-000000000017)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000017',
 'The main cause of post-harvest losses in West Africa is:',
 '["Too much production","Inadequate storage, pests, and poor handling","Lack of farmland","Too many buyers"]', 1,
 'Post-harvest losses result from poor storage, insect pests, moulds, and inadequate market infrastructure.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000017',
 'Sun drying of crops is used mainly to:',
 '["Improve crop flavour","Reduce moisture content and preserve crops","Add nutrients to the crop","Remove pests"]', 1,
 'Drying reduces moisture content, inhibiting mould growth and spoilage for longer storage.', 'easy'),

-- Environmental Impacts and Sustainability (b0000001-0000-0000-0000-000000000020)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000020',
 'Sustainable agriculture aims to:',
 '["Maximise yield at any cost","Meet current food needs without compromising the ability of future generations to meet theirs","Use only organic methods","Eliminate all chemical use"]', 1,
 'Sustainable agriculture balances productivity with environmental stewardship for future generations.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000020',
 'Bush burning in farming is harmful because it:',
 '["Improves soil fertility","Destroys soil organisms, organic matter, and causes erosion","Kills pests only","Has no negative effects"]', 1,
 'Bush burning destroys beneficial soil organisms, organic matter, and exposes soil to erosion.', 'easy'),

-- More Crop Production
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'Legumes are important in crop rotation because they:',
 '["Produce the highest yields","Fix nitrogen from the atmosphere into the soil","Repel all pests","Have deep roots only"]', 1,
 'Legumes (beans, groundnuts) host nitrogen-fixing bacteria that enrich soil with nitrogen.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000004',
 'The best time to apply fertiliser to crops is:',
 '["Before planting only","At the time of maximum nutrient demand during active growth","After harvesting","Only during dry season"]', 1,
 'Fertiliser should be applied when crops have the highest demand — during active vegetative growth.', 'medium'),

-- More Soil
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'Which type of soil has the largest particle size?',
 '["Clay","Silt","Sand","Loam"]', 2,
 'Sand has the largest particles; silt has medium; clay has the smallest (finest) particles.', 'easy'),

('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000003',
 'Earthworms benefit the soil by:',
 '["Eating all plant roots","Burrowing — improving aeration and drainage, and mixing organic matter","Causing soil compaction","Removing nutrients"]', 1,
 'Earthworms improve soil structure through burrowing, mixing organic matter, and enhancing drainage.', 'easy'),

-- More Animal Husbandry
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000009',
 'Vaccination of livestock is important to:',
 '["Improve milk quality","Prevent and control infectious diseases","Increase weight rapidly","Reduce feed consumption"]', 1,
 'Vaccination provides immunity against specific diseases, protecting herd health.', 'easy'),

-- More Pests and Diseases
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000006',
 'Striga (witchweed) is a parasitic weed that mainly affects:',
 '["Legumes","Maize, sorghum and millet (cereal crops)","Vegetables","Root crops"]', 1,
 'Striga is a major parasitic weed problem in West African cereal crops, especially maize and sorghum.', 'hard'),

-- Biotechnology (b0000001-0000-0000-0000-000000000019)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000019',
 'Genetically Modified Organisms (GMOs) in agriculture are created to:',
 '["Reduce crop yields","Improve crop traits such as disease resistance, yield, or nutrient content","Remove all chemicals from farming","Make crops grow only in greenhouses"]', 1,
 'GMOs are engineered to have improved traits — disease resistance, drought tolerance, higher yield, etc.', 'medium'),

-- Extension and Cooperation (b0000001-0000-0000-0000-000000000018)
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000018',
 'Agricultural extension services provide farmers with:',
 '["Free land","Education, training, and advice on improved farming practices","Government subsidies only","Free seeds only"]', 1,
 'Extension services educate farmers about modern techniques, pest management, and market information.', 'easy'),

-- More Economics
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000012',
 'Capital in farm management refers to:',
 '["Only land","Money, equipment, and other resources invested in the farm","The farmer''s labour","The land only"]', 1,
 'Capital includes all financial and physical resources invested: money, tools, buildings, livestock.', 'medium'),

-- More Forestry
('a1000000-0000-0000-0000-000000000008', 'b0000001-0000-0000-0000-000000000014',
 'Deforestation leads to all the following EXCEPT:',
 '["Soil erosion","Increased biodiversity","Loss of habitat","Climate change"]', 1,
 'Deforestation causes soil erosion, habitat loss, and climate change — it reduces biodiversity, not increases it.', 'medium');
