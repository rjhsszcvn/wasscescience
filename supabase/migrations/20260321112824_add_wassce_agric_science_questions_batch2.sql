/*
  # Add WASSCE Agricultural Science Questions Batch 2

  Adds 70 new WASSCE-standard Agricultural Science questions covering:
  - Crop production, soil science
  - Animal husbandry, farm management
  - Agricultural economics, pest and disease control
  - Farm machinery, irrigation, post-harvest
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000008';
  v_topic_id uuid := 'b0000001-0000-0000-0000-000000000001';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'The process by which plants convert light energy into food is called',
 '["Respiration","Photosynthesis","Transpiration","Absorption"]', 1,
 'Photosynthesis converts light energy, CO2, and water into glucose (food) and oxygen in green plants.', 'easy'),

(v_subject_id, v_topic_id, 'Which soil type has the best water-holding capacity for crop production?',
 '["Sandy soil","Loamy soil","Clay soil","Gravelly soil"]', 1,
 'Loamy soil (mixture of sand, silt, and clay) has good water retention, drainage, and aeration - ideal for crops.', 'easy'),

(v_subject_id, v_topic_id, 'The science and art of cultivating field crops is called',
 '["Horticulture","Agronomy","Arboriculture","Silviculture"]', 1,
 'Agronomy is the science and practice of producing and managing field crops for food, fuel, and fibre.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a leguminous crop?',
 '["Maize","Groundnut","Cassava","Rice"]', 1,
 'Groundnut (peanut) is a leguminous crop that fixes atmospheric nitrogen through root nodule bacteria.', 'easy'),

(v_subject_id, v_topic_id, 'The practice of growing two or more crops simultaneously on the same piece of land is called',
 '["Monoculture","Crop rotation","Mixed cropping","Shifting cultivation"]', 2,
 'Mixed cropping (intercropping) involves growing two or more crops simultaneously on the same land.', 'easy'),

(v_subject_id, v_topic_id, 'Which macronutrient promotes vegetative growth (leaves and stems) in plants?',
 '["Phosphorus (P)","Potassium (K)","Nitrogen (N)","Calcium (Ca)"]', 2,
 'Nitrogen (N) promotes vegetative growth - it is a key component of chlorophyll and amino acids.', 'easy'),

(v_subject_id, v_topic_id, 'Organic matter in soil is derived from',
 '["Mineral weathering","Decomposed plant and animal remains","Chemical fertilisers","Irrigation water"]', 1,
 'Organic matter (humus) comes from the decomposition of dead plant and animal material by soil microorganisms.', 'easy'),

(v_subject_id, v_topic_id, 'The pH of a neutral soil is',
 '["Less than 7","7","Greater than 7","14"]', 1,
 'Neutral soil has a pH of 7. Most crops prefer slightly acidic to neutral soils (pH 6-7).', 'easy'),

(v_subject_id, v_topic_id, 'Which farming practice helps control weeds, improve soil aeration, and conserve moisture?',
 '["Ploughing","Mulching","Irrigation","Transplanting"]', 1,
 'Mulching involves covering soil with organic material to suppress weeds, retain moisture, and improve soil structure.', 'medium'),

(v_subject_id, v_topic_id, 'Which pest management approach uses natural enemies to control pests?',
 '["Chemical control","Biological control","Cultural control","Physical control"]', 1,
 'Biological control uses natural predators, parasites, or pathogens to manage pest populations.', 'easy'),

(v_subject_id, v_topic_id, 'The primary purpose of crop rotation is to',
 '["Increase labour","Break pest and disease cycles and improve soil fertility","Reduce rainfall","Increase soil erosion"]', 1,
 'Crop rotation breaks pest and disease cycles, reduces soil depletion, and can improve fertility by alternating nitrogen-fixing legumes.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is NOT a characteristic of sandy soil?',
 '["Large particles","Good drainage","Low water retention","High fertility"]', 3,
 'Sandy soil has large particles, drains rapidly, retains little water, and has low natural fertility.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''zero grazing'' in animal husbandry means',
 '["Animals are not grazed at all","Animals are confined and feed is brought to them","Animals graze freely","Animals are slaughtered"]', 1,
 'Zero grazing (cut-and-carry system) involves confining animals and bringing feed to them to prevent overgrazing.', 'medium'),

(v_subject_id, v_topic_id, 'Which disease is caused by a virus in plants?',
 '["Leaf rust","Cassava mosaic disease","Blight","Damping off"]', 1,
 'Cassava mosaic disease is caused by a virus transmitted by whiteflies. It causes mosaic patterns on leaves.', 'medium'),

(v_subject_id, v_topic_id, 'The removal of male flower buds from sucker plants in tobacco or banana is called',
 '["Pruning","Thinning","Topping","Deadheading"]', 2,
 'Topping (desuckering) removes male flower buds/apical parts to redirect nutrients to leaf/fruit development.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following is a method of vegetative propagation?',
 '["Pollination","Budding","Seed germination","Fertilisation"]', 1,
 'Budding is a vegetative (asexual) propagation method where a bud is grafted onto a rootstock plant.', 'easy'),

(v_subject_id, v_topic_id, 'The main function of phosphorus (P) in plant nutrition is',
 '["Leaf and stem growth","Root development and energy transfer","Fruit colour","Stem strength"]', 1,
 'Phosphorus promotes root development, energy transfer (ATP), and flowering/fruiting in plants.', 'medium'),

(v_subject_id, v_topic_id, 'Which farm animal is monogastric (single-stomached)?',
 '["Cattle","Sheep","Goat","Pig"]', 3,
 'Pigs (swine) are monogastric animals with a simple, single-chambered stomach.', 'easy'),

(v_subject_id, v_topic_id, 'Ruminant animals can digest cellulose because they have',
 '["Four-chambered stomachs and microorganisms","Sharp teeth","Acidic stomachs","Large livers"]', 0,
 'Ruminants (cattle, sheep, goats) have four stomach chambers; microorganisms in the rumen ferment and digest cellulose.', 'easy'),

(v_subject_id, v_topic_id, 'The production of honey by bees is studied under',
 '["Aviculture","Apiculture","Pisciculture","Sericulture"]', 1,
 'Apiculture is the science and practice of keeping bees for honey, wax, and pollination services.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a post-harvest loss prevention method?',
 '["Improper storage","Delayed harvesting","Proper drying and storage in silos","Harvesting at night"]', 2,
 'Proper drying to reduce moisture content and storage in clean, sealed silos prevents post-harvest losses from pests and moulds.', 'medium'),

(v_subject_id, v_topic_id, 'The water requirement of crops is supplied by which type of farming practice?',
 '["Pest control","Irrigation","Pruning","Tillage"]', 1,
 'Irrigation is the artificial application of water to soil to supplement rainfall and meet crop water requirements.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a major food crop in West Africa?',
 '["Wheat","Cassava","Barley","Oat"]', 1,
 'Cassava is one of the most important food crops in West Africa, providing carbohydrates for millions of people.', 'easy'),

(v_subject_id, v_topic_id, 'The nitrogen cycle in agriculture involves nitrogen being fixed by',
 '["Fungi","Rhizobium bacteria in legume root nodules","Earthworms","Algae only"]', 1,
 'Rhizobium bacteria in the root nodules of leguminous plants fix atmospheric nitrogen into forms plants can use.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following describes subsistence farming?',
 '["Growing crops for export only","Growing crops primarily to feed the farm family","Large-scale monoculture farming","Farming with heavy machinery"]', 1,
 'Subsistence farming produces food mainly for the farmer''s family with little or no surplus for sale.', 'easy'),

(v_subject_id, v_topic_id, 'The process of making a furrow in the soil for planting seeds is called',
 '["Harrowing","Furrowing/drilling","Ridging","Broadcasting"]', 1,
 'Drilling/furrowing makes narrow rows or furrows in the soil to place seeds at the correct depth and spacing.', 'medium'),

(v_subject_id, v_topic_id, 'Which soil horizon contains the most organic matter and is most fertile?',
 '["A horizon (topsoil)","B horizon (subsoil)","C horizon (parent material)","D horizon (bedrock)"]', 0,
 'The A horizon (topsoil) is the uppermost layer, richest in organic matter (humus) and most suitable for plant growth.', 'easy'),

(v_subject_id, v_topic_id, 'The instrument used to measure soil pH is called a',
 '["Thermometer","Hygrometer","pH meter/soil test kit","Anemometer"]', 2,
 'A pH meter or soil test kit is used to measure the acidity or alkalinity (pH) of soil.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a cash crop in West Africa?',
 '["Cassava","Cocoa","Yam","Maize"]', 1,
 'Cocoa is primarily grown for export (cash crop) in West Africa, especially in Ghana, Cote d''Ivoire, and Nigeria.', 'easy'),

(v_subject_id, v_topic_id, 'Afforestation refers to',
 '["Cutting down trees","Planting trees on land that has not previously been forested","Removing crop residues","Draining wetlands"]', 1,
 'Afforestation is the establishment of trees on land that has not recently been forested to prevent erosion and restore ecosystems.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is an insecticide?',
 '["Herbicide","DDT","Fungicide","Rodenticide"]', 1,
 'DDT (dichlorodiphenyltrichloroethane) is an insecticide. Herbicides kill weeds; fungicides kill fungi; rodenticides kill rodents.', 'medium'),

(v_subject_id, v_topic_id, 'The gestation period of a pig is approximately',
 '["3 months 3 weeks and 3 days","9 months","6 months","12 months"]', 0,
 'The gestation period of a pig is approximately 114 days = 3 months, 3 weeks, and 3 days.', 'medium'),

(v_subject_id, v_topic_id, 'Which breed of cattle is primarily kept for milk production?',
 '["Shorthorn","Friesian (Holstein)","Hereford","Angus"]', 1,
 'Friesian (Holstein) cattle are the world''s leading dairy breed, known for high milk production.', 'medium'),

(v_subject_id, v_topic_id, 'The practice of leaving land uncultivated for a period to restore fertility is called',
 '["Crop rotation","Fallowing","Mulching","Composting"]', 1,
 'Fallowing leaves land idle (uncultivated) for one or more growing seasons to allow natural nutrient replenishment.', 'easy'),

(v_subject_id, v_topic_id, 'Contour farming helps to',
 '["Increase soil erosion","Reduce soil erosion on slopes","Increase water runoff","Decrease crop yield"]', 1,
 'Contour farming involves planting across a slope following its contour lines to reduce water runoff and soil erosion.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a symptom of nitrogen deficiency in crops?',
 '["Purple-red coloration of leaves","Yellowing of older leaves (chlorosis)","Brown leaf tips","Stunted root growth only"]', 1,
 'Nitrogen deficiency causes yellowing (chlorosis) of older leaves first, as nitrogen is mobilised to newer growth.', 'medium'),

(v_subject_id, v_topic_id, 'The term ''F1 hybrid'' in crop breeding refers to',
 '["First generation offspring of two pure lines","A genetically modified crop","A crop grown without fertiliser","A crop variety from France"]', 0,
 'F1 hybrids are first-generation crosses of two pure-breeding parent lines, showing hybrid vigour (heterosis).', 'hard'),

(v_subject_id, v_topic_id, 'Which of these is a benefit of keeping animals on a farm?',
 '["Increased cost of production only","Provision of draft power, manure, and animal products","Reduced crop diversity","Increased pest problems"]', 1,
 'Farm animals provide draft power for cultivation, manure for soil fertility, and products (meat, milk, eggs, hide).', 'easy'),

(v_subject_id, v_topic_id, 'The main difference between organic and inorganic fertilisers is',
 '["Inorganic fertilisers improve soil structure","Organic fertilisers release nutrients slowly and improve soil structure","Organic fertilisers contain no nutrients","Inorganic fertilisers last longer in soil"]', 1,
 'Organic fertilisers (compost, manure) release nutrients slowly and improve soil structure; inorganic fertilisers release nutrients quickly.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a method of controlling soil erosion?',
 '["Overgrazing","Deforestation","Strip cropping and cover crops","Burning crop residues"]', 2,
 'Strip cropping and cover crops protect soil from erosion by maintaining vegetation cover and breaking water flow.', 'easy'),

(v_subject_id, v_topic_id, 'The main purpose of liming acidic soil is to',
 '["Increase soil acidity","Neutralise soil acidity and supply calcium","Remove organic matter","Reduce soil biodiversity"]', 1,
 'Lime (calcium carbonate) is applied to acidic soils to raise pH, neutralise acidity, and provide calcium for plant growth.', 'easy'),

(v_subject_id, v_topic_id, 'Which poultry disease is caused by Newcastle Disease Virus?',
 '["Coccidiosis","Newcastle disease","Fowl pox","Salmonellosis"]', 1,
 'Newcastle disease is a highly contagious viral disease of poultry that causes respiratory, nervous, and digestive symptoms.', 'medium'),

(v_subject_id, v_topic_id, 'The primary use of cassava in West Africa is',
 '["Animal feed only","Human food (carbohydrate source) and industrial starch","Export as luxury crop","Medicinal purposes only"]', 1,
 'Cassava is mainly consumed as a staple food (fufu, eba, tapioca) and used industrially for starch and flour production.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a benefit of composting?',
 '["Produces harmful gases","Converts organic waste into nutrient-rich fertiliser","Increases soil acidity rapidly","Kills all soil organisms"]', 1,
 'Composting breaks down organic waste into humus/compost - a nutrient-rich soil amendment that improves fertility and structure.', 'easy'),

(v_subject_id, v_topic_id, 'The practice of rearing fish in ponds or tanks is called',
 '["Aquaculture/pisciculture","Apiculture","Aviculture","Sericulture"]', 0,
 'Aquaculture (pisciculture) involves raising fish in controlled environments such as ponds, tanks, or cages.', 'easy'),

(v_subject_id, v_topic_id, 'An agricultural cooperative is',
 '["A government farm","A group of farmers pooling resources for mutual benefit","A type of pest control","An international farming standard"]', 1,
 'An agricultural cooperative is a jointly-owned enterprise where farmers pool resources to reduce costs and improve market access.', 'medium'),

(v_subject_id, v_topic_id, 'Slash and burn agriculture is characterised by',
 '["Heavy use of fertilisers","Clearing land by cutting and burning vegetation, then moving on","Year-round cultivation of the same crop","Use of heavy machinery"]', 1,
 'Slash and burn (swidden agriculture) clears forest by cutting and burning, grows crops briefly, then moves to new land.', 'easy'),

(v_subject_id, v_topic_id, 'Which of these farm tools is used for making ridges for planting?',
 '["Cutlass","Ridge plough (ridger)","Sickle","Hand fork"]', 1,
 'A ridger (ridge plough) is used to form raised ridges of soil in which crops like yam, cassava, and vegetables are planted.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''hardpan'' in soil science refers to',
 '["A very soft soil layer","A compacted, dense layer in the subsoil that restricts root growth and drainage","The surface mulch layer","Rock beneath the soil"]', 1,
 'A hardpan is a dense, compacted soil layer (often in the B horizon) that restricts root penetration and water movement.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following is a symptom of foot-and-mouth disease in cattle?',
 '["Increased milk production","Blisters in the mouth and on feet","Yellow skin discolouration","Respiratory problems only"]', 1,
 'Foot-and-mouth disease causes painful blisters (vesicles) on the tongue, gums, feet, and teats of affected animals.', 'medium'),

(v_subject_id, v_topic_id, 'Potassium (K) deficiency in plants results in',
 '["Yellowing of young leaves","Brown leaf margins and weak stems","Purple discolouration","Excessive leaf growth"]', 1,
 'Potassium deficiency causes scorching/browning of leaf margins (especially older leaves) and weak, easily lodging stems.', 'medium'),

(v_subject_id, v_topic_id, 'Which method of seed germination testing involves placing seeds on wet paper/cotton wool?',
 '["Flotation test","Rag doll test/blotter method","Tetrazolium test","X-ray test"]', 1,
 'The rag doll or blotter test places seeds between moist filter paper or cotton wool to assess germination percentage.', 'medium'),

(v_subject_id, v_topic_id, 'Which insect pest attacks stored grains in West Africa?',
 '["Aphid","Weevil (Sitophilus spp.)","Termite","Grasshopper"]', 1,
 'Weevils (Sitophilus granarius, S. oryzae) are major stored grain pests that bore into grains and cause significant losses.', 'medium'),

(v_subject_id, v_topic_id, 'Drip irrigation is advantageous because',
 '["It wastes large amounts of water","It delivers water directly to the root zone, minimising water loss","It is the cheapest system","It requires no management"]', 1,
 'Drip irrigation delivers water directly to the root zone through emitters, greatly reducing evaporation and water wastage.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following describes a pure stand?',
 '["Land with no crops","Growing a single crop species on a plot","Mixed cropping system","Forest land"]', 1,
 'A pure stand (monoculture) involves growing only one crop species on a plot in a given season.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''lodging'' in crop production refers to',
 '["Proper storage of harvested crops","Crops falling over due to weak stems or wind","Building farm structures","A disease of maize"]', 1,
 'Lodging occurs when crop stems collapse or fall over due to wind, rain, weak stem development, or overcrowding.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is an example of a pesticide that targets fungi?',
 '["Herbicide","Fungicide","Nematicide","Insecticide"]', 1,
 'Fungicides are pesticides used to kill or inhibit fungi and their spores that cause plant diseases.', 'easy'),

(v_subject_id, v_topic_id, 'The term ''debeaking'' in poultry management is done to prevent',
 '["Disease spread","Cannibalism and feather pecking","Low egg production","Respiratory problems"]', 1,
 'Debeaking (beak trimming) removes part of the beak to prevent cannibalism and feather pecking in confined poultry.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is the CORRECT definition of a weed?',
 '["Any plant with thorns","A plant growing where it is not wanted","A poisonous plant only","A plant that attracts pests"]', 1,
 'A weed is a plant growing in a place where it is not desired - it competes with crops for nutrients, water, light, and space.', 'easy'),

(v_subject_id, v_topic_id, 'The main economic advantage of using improved crop varieties is',
 '["Reduced labour requirements","Higher yields and disease resistance increasing farm income","Lower market prices","They require no inputs"]', 1,
 'Improved (HYV) varieties give higher yields, better disease/pest resistance, and improved quality, increasing farm profitability.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a function of crop insurance in agriculture?',
 '["Increases crop yield","Provides financial compensation for crop losses due to natural disasters","Replaces crop rotation","Eliminates the need for pesticides"]', 1,
 'Crop insurance compensates farmers for losses due to drought, floods, pests, or other insurable events, reducing financial risk.', 'medium'),

(v_subject_id, v_topic_id, 'The process of separating grain from the harvested plant by mechanical or manual means is called',
 '["Threshing","Milling","Winnowing","Sieving"]', 0,
 'Threshing separates the grain/seed from the rest of the harvested plant (straw, pods) by beating, rubbing, or using a machine.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following animals is a ruminant?',
 '["Rabbit","Pig","Goat","Poultry"]', 2,
 'Goats are ruminants with four-chambered stomachs that allow them to digest cellulose-rich plant material.', 'easy'),

(v_subject_id, v_topic_id, 'Conservation agriculture involves',
 '["Maximum tillage and crop residue removal","Minimum tillage, crop residue retention, and crop rotation","Burning fields before planting","Growing only one crop per year"]', 1,
 'Conservation agriculture uses minimum/zero tillage, retains crop residues on the soil surface, and practices crop rotation to conserve soil.', 'medium'),

(v_subject_id, v_topic_id, 'The concept of integrated pest management (IPM) means',
 '["Using only chemical pesticides","Combining multiple pest control methods to minimise economic damage while protecting the environment","Eliminating all pests","Using biological control only"]', 1,
 'IPM combines cultural, biological, and chemical methods to manage pests below economic threshold levels with minimal environmental impact.', 'medium');

END $$;
