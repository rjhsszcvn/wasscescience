/*
  # Add Chemistry Exam Questions - Batch 1
  
  Adds 80 new WASSCE-standard multiple choice questions for Chemistry
  covering Atomic Structure, Bonding, Acids/Bases, Organic Chemistry, Electrochemistry and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Atomic Structure and Periodic Table (b1000004-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'The atomic number of an element is equal to:',
 '["Number of neutrons","Number of protons","Mass number","Number of electrons in the outer shell"]', 1,
 'Atomic number = number of protons in the nucleus of an atom.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'Elements in the same group of the periodic table have the same:',
 '["Atomic mass","Number of electron shells","Number of outer shell electrons","Melting point"]', 2,
 'Elements in the same group have the same number of valence (outer shell) electrons.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'An isotope of an element has the same number of:',
 '["Neutrons but different protons","Protons but different neutrons","Mass numbers","Electrons in outer shell only"]', 1,
 'Isotopes have the same atomic number (protons) but different mass numbers (different neutrons).', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'Which element has the electron configuration 2, 8, 2?',
 '["Magnesium","Calcium","Neon","Carbon"]', 0,
 'Electron configuration 2, 8, 2 has 12 electrons — this is Magnesium (Mg).', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'As you move across a period in the periodic table, atomic radius:',
 '["Increases","Decreases","Stays the same","First increases then decreases"]', 1,
 'Across a period, nuclear charge increases but electrons are added to the same shell — radius decreases.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'Noble gases are unreactive because they:',
 '["Have very small atoms","Have full outer electron shells","Are in Group I","Have many electrons"]', 1,
 'Noble gases have complete outer shells (8 electrons), making them chemically stable.', 'easy'),

-- Chemical Bonding (b1000004-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000002',
 'An ionic bond is formed by:',
 '["Sharing of electrons","Transfer of electrons","Sharing of protons","Transfer of neutrons"]', 1,
 'Ionic bonds form when one atom transfers electrons to another, creating oppositely charged ions.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000002',
 'Which type of bonding is present in a molecule of water (H₂O)?',
 '["Ionic","Metallic","Covalent","Hydrogen bond only"]', 2,
 'Water molecules are held together by covalent bonds (shared electrons between O and H atoms).', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000002',
 'A dative (coordinate) bond is one where:',
 '["Both atoms contribute one electron each","One atom provides both electrons in the bond","Electrons are transferred","Metallic bonds are formed"]', 1,
 'In a dative bond, one atom donates both electrons to the shared bond.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000002',
 'Which property is characteristic of ionic compounds?',
 '["Low melting points","Conductivity in solid state","Conductivity when molten or in solution","Insoluble in water"]', 2,
 'Ionic compounds conduct electricity when molten or dissolved in water (free ions present).', 'medium'),

-- Acids, Bases and Salts (b1000004-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'An acid is a substance that:',
 '["Accepts protons","Donates protons","Produces OH⁻ ions","Has pH above 7"]', 1,
 'According to Brønsted-Lowry theory, an acid is a proton (H⁺) donor.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'The pH of a neutral solution at 25°C is:',
 '["0","7","14","1"]', 1,
 'A neutral solution (like pure water) has pH = 7 at 25°C.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'Neutralisation is the reaction between:',
 '["Two acids","An acid and a base","Two bases","A metal and water"]', 1,
 'Neutralisation: acid + base → salt + water.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'Which indicator turns red in acidic solutions?',
 '["Universal indicator","Phenolphthalein","Litmus","Methyl orange in base"]', 2,
 'Litmus turns red in acidic solutions and blue in alkaline solutions.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'The reaction of an acid with a carbonate produces:',
 '["Salt and water only","Salt, water and carbon dioxide","Salt and hydrogen","Only carbon dioxide"]', 1,
 'Acid + Carbonate → Salt + Water + Carbon dioxide gas.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'A buffer solution resists changes in:',
 '["Temperature","Concentration","pH","Colour"]', 2,
 'A buffer solution maintains relatively constant pH when small amounts of acid or base are added.', 'medium'),

-- Organic Chemistry (b1000004-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'The general formula for alkanes is:',
 '["CₙH₂ₙ","CₙH₂ₙ₊₂","CₙH₂ₙ₋₂","CₙHₙ"]', 1,
 'Alkanes are saturated hydrocarbons with general formula CₙH₂ₙ₊₂.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'The functional group of alcohols is:',
 '["-COOH","-OH","-CHO","-CO-"]', 1,
 'Alcohols contain the hydroxyl functional group (-OH).', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'Ethanol undergoes oxidation to form:',
 '["Ethane","Ethene","Ethanoic acid","Methanol"]', 2,
 'Oxidation of ethanol (C₂H₅OH) produces ethanoic acid (CH₃COOH).', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'Alkenes are characterised by:',
 '["Single C-C bonds only","A carbon-carbon double bond","A carbon-carbon triple bond","A benzene ring"]', 1,
 'Alkenes contain at least one C=C double bond, making them unsaturated.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'The process of breaking down large hydrocarbons into smaller ones by heat is:',
 '["Polymerisation","Cracking","Fractional distillation","Hydrogenation"]', 1,
 'Cracking uses heat (and catalyst) to break large hydrocarbon molecules into smaller, more useful ones.', 'medium'),

-- Electrochemistry (b1000004-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000005',
 'During electrolysis, oxidation occurs at the:',
 '["Cathode","Anode","Electrolyte","Both electrodes"]', 1,
 'Oxidation (loss of electrons) occurs at the anode; reduction at the cathode.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000005',
 'In the electrolysis of dilute H₂SO₄, what is produced at the cathode?',
 '["Oxygen","Hydrogen","Sulphur dioxide","Water"]', 1,
 'At the cathode: 2H⁺ + 2e⁻ → H₂. Hydrogen gas is produced.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000005',
 'Faraday''s First Law of Electrolysis states that the mass of substance deposited is:',
 '["Proportional to the square of the current","Proportional to the quantity of charge passed","Inversely proportional to current","Independent of current"]', 1,
 'Faraday''s First Law: m ∝ Q, where Q is the charge (current × time).', 'hard'),

-- Rates of Reaction and Equilibrium (b1000004-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000006',
 'Which factor does NOT affect the rate of a chemical reaction?',
 '["Temperature","Concentration of reactants","Colour of reactants","Catalyst"]', 2,
 'The colour of reactants has no effect on reaction rate. Temperature, concentration, and catalysts do.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000006',
 'Le Chatelier''s principle states that if stress is applied to a system at equilibrium:',
 '["The reaction stops","The system shifts to oppose the stress","The system shifts to increase the stress","The equilibrium constant changes"]', 1,
 'Le Chatelier''s principle: the system shifts to counteract any applied stress.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000006',
 'A catalyst increases reaction rate by:',
 '["Increasing temperature","Providing an alternative reaction pathway with lower activation energy","Increasing concentration of reactants","Raising activation energy"]', 1,
 'A catalyst provides an alternative pathway with a lower activation energy, speeding up the reaction.', 'medium'),

-- Oxidation and Reduction (b1000004-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000007',
 'Oxidation in terms of electrons means:',
 '["Gain of electrons","Loss of electrons","Gain of protons","Loss of protons"]', 1,
 'OIL RIG: Oxidation Is Loss (of electrons), Reduction Is Gain.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000007',
 'In the reaction: Fe + CuSO₄ → FeSO₄ + Cu, iron is:',
 '["Reduced","Oxidised","Neither oxidised nor reduced","A catalyst"]', 1,
 'Iron loses electrons (Fe → Fe²⁺) — it is oxidised. Copper ions gain electrons — they are reduced.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000007',
 'The oxidising agent in a redox reaction is the substance that:',
 '["Loses electrons","Gains electrons","Donates electrons","Remains unchanged"]', 1,
 'The oxidising agent gains electrons (is itself reduced) while oxidising the other substance.', 'medium'),

-- Metals and Activity Series (b1000004-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000008',
 'Which metal is MOST reactive in the activity series?',
 '["Iron","Zinc","Potassium","Copper"]', 2,
 'Potassium is one of the most reactive metals, at the top of the activity series.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000008',
 'Gold does not corrode because:',
 '["It is too heavy","It is at the bottom of the activity series","It has no electrons","It only reacts with water"]', 1,
 'Gold is very unreactive (low in the activity series) and does not easily oxidise.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000008',
 'Zinc can displace copper from copper sulphate solution because:',
 '["Zinc is heavier","Zinc is more reactive than copper","Copper is more reactive","Zinc has a higher melting point"]', 1,
 'A more reactive metal can displace a less reactive metal from its salt solution.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000008',
 'Rusting of iron requires:',
 '["Oxygen only","Water only","Both oxygen and water","Acid only"]', 2,
 'Rusting requires both water and oxygen. This is an electrochemical process.', 'easy'),

-- Gas Laws and Mole Concept (b1000004-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000009',
 'One mole of any substance contains:',
 '["6.02 × 10²³ atoms/molecules","10²³ atoms","1000 atoms","The same mass"]', 0,
 'One mole contains Avogadro''s number: 6.02 × 10²³ particles.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000009',
 'At STP, one mole of any gas occupies:',
 '["1 litre","22.4 litres","44.8 litres","100 litres"]', 1,
 'At STP (0°C, 1 atm), one mole of ideal gas occupies 22.4 litres.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000009',
 'The relative molecular mass of H₂SO₄ is: (H=1, S=32, O=16)',
 '["49","97","98","64"]', 2,
 'H₂SO₄: (2×1) + 32 + (4×16) = 2 + 32 + 64 = 98.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000009',
 'How many moles are in 44 g of CO₂? (C=12, O=16)',
 '["0.5 mol","1 mol","2 mol","44 mol"]', 1,
 'Molar mass of CO₂ = 12 + 32 = 44 g/mol. Moles = 44/44 = 1 mol.', 'medium'),

-- Separation Techniques (b1000004-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000010',
 'Which technique is used to separate a mixture of salt and sand?',
 '["Filtration only","Dissolve in water, filter, then evaporate","Distillation","Chromatography"]', 1,
 'Dissolve in water (salt dissolves, sand doesn''t), filter to remove sand, then evaporate to get salt.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000010',
 'Distillation is used to separate:',
 '["Two solids","Two miscible liquids with different boiling points","Insoluble solid from liquid","Two immiscible liquids"]', 1,
 'Distillation separates miscible liquids with different boiling points by heating and condensing.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000010',
 'Paper chromatography separates mixtures based on differences in:',
 '["Boiling points","Solubility and rate of movement through a medium","Density","Electrical charge"]', 1,
 'Chromatography separates components based on their different affinities for the stationary and mobile phases.', 'medium'),

-- Energetics (f869ca49-3c11-4950-9203-1e5888621e2a)
('a1000000-0000-0000-0000-000000000004', 'f869ca49-3c11-4950-9203-1e5888621e2a',
 'An exothermic reaction is one that:',
 '["Absorbs heat from surroundings","Releases heat to surroundings","Has no energy change","Only occurs at high temperature"]', 1,
 'Exothermic reactions release energy to the surroundings — the products have less energy than reactants.', 'easy'),

('a1000000-0000-0000-0000-000000000004', 'f869ca49-3c11-4950-9203-1e5888621e2a',
 'The enthalpy change of combustion is always:',
 '["Positive","Negative","Zero","Variable"]', 1,
 'Combustion is always exothermic, so ΔH is always negative.', 'medium'),

-- Carbon Chemistry (144844fc-8bb9-47c0-8e4c-942bf828a13b)
('a1000000-0000-0000-0000-000000000004', '144844fc-8bb9-47c0-8e4c-942bf828a13b',
 'Which gas is produced when carbon burns in excess oxygen?',
 '["Carbon monoxide","Carbon dioxide","Carbon tetrachloride","Methane"]', 1,
 'Complete combustion of carbon: C + O₂ → CO₂ (carbon dioxide).', 'easy'),

('a1000000-0000-0000-0000-000000000004', '144844fc-8bb9-47c0-8e4c-942bf828a13b',
 'Fractional distillation of crude oil separates it into fractions based on:',
 '["Colour","Boiling point","Density","Molecular size"]', 1,
 'Fractional distillation separates crude oil into fractions — components with similar boiling points.', 'medium'),

-- Stoichiometry (66959836-84a9-4541-9e2b-10a6c319e11e)
('a1000000-0000-0000-0000-000000000004', '66959836-84a9-4541-9e2b-10a6c319e11e',
 'In the reaction: 2H₂ + O₂ → 2H₂O, how many moles of water are produced from 4 moles of H₂?',
 '["2 moles","4 moles","8 moles","1 mole"]', 1,
 'Ratio of H₂ to H₂O is 2:2 = 1:1. So 4 mol H₂ produces 4 mol H₂O.', 'medium'),

('a1000000-0000-0000-0000-000000000004', '66959836-84a9-4541-9e2b-10a6c319e11e',
 'The limiting reagent in a chemical reaction is:',
 '["The reagent present in excess","The reagent that is fully consumed first","The product formed","The catalyst used"]', 1,
 'The limiting reagent is the reactant that is used up first, limiting the amount of product formed.', 'medium'),

-- Sulphur and its compounds (fa265d8e-6b2b-4402-acbe-4507cf70dd83)
('a1000000-0000-0000-0000-000000000004', 'fa265d8e-6b2b-4402-acbe-4507cf70dd83',
 'Sulphuric acid (H₂SO₄) is manufactured industrially by the:',
 '["Haber process","Contact process","Ostwald process","Solvay process"]', 1,
 'The Contact process manufactures sulphuric acid: SO₂ is oxidised to SO₃ using a V₂O₅ catalyst.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'fa265d8e-6b2b-4402-acbe-4507cf70dd83',
 'Sulphur dioxide (SO₂) is used as:',
 '["A food preservative","A building material","A fuel","A fertiliser"]', 0,
 'SO₂ is used as a food preservative (E220) because of its antimicrobial properties.', 'medium'),

-- Nitrogen and its compounds (ba34338e-67c7-49c1-b4ee-f654613374a5)
('a1000000-0000-0000-0000-000000000004', 'ba34338e-67c7-49c1-b4ee-f654613374a5',
 'Ammonia (NH₃) is manufactured by the:',
 '["Contact process","Haber process","Ostwald process","Solvay process"]', 1,
 'The Haber process combines nitrogen and hydrogen at high pressure and temperature with an iron catalyst.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'ba34338e-67c7-49c1-b4ee-f654613374a5',
 'Which fertiliser contains both nitrogen and phosphorus?',
 '["Urea","NPK compound fertiliser","Ammonium nitrate","Superphosphate"]', 1,
 'NPK fertilisers contain nitrogen, phosphorus (phosphate), and potassium — essential plant nutrients.', 'easy'),

-- Environmental Chemistry (fb4c1f8a-5f72-4772-abaf-a03d827ca60e)
('a1000000-0000-0000-0000-000000000004', 'fb4c1f8a-5f72-4772-abaf-a03d827ca60e',
 'Acid rain is primarily caused by:',
 '["CO₂ emissions","SO₂ and NOₓ emissions","Ozone depletion","Methane from landfills"]', 1,
 'SO₂ and NOₓ react with water vapour in the atmosphere to form sulphuric and nitric acids.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'fb4c1f8a-5f72-4772-abaf-a03d827ca60e',
 'Ozone in the stratosphere protects the Earth by absorbing:',
 '["Infrared radiation","Ultraviolet radiation","Visible light","Radio waves"]', 1,
 'The ozone layer absorbs harmful UV radiation from the sun.', 'easy'),

-- Qualitative Analysis (1f6c2126-067a-48e7-8ad3-2e9389b45785)
('a1000000-0000-0000-0000-000000000004', '1f6c2126-067a-48e7-8ad3-2e9389b45785',
 'When dilute HCl is added to a carbonate, the gas produced is tested with:',
 '["Damp red litmus paper","Limewater (Ca(OH)₂)","Bromine water","Potassium permanganate"]', 1,
 'CO₂ turns limewater milky — this is the test for carbon dioxide.', 'easy'),

('a1000000-0000-0000-0000-000000000004', '1f6c2126-067a-48e7-8ad3-2e9389b45785',
 'The presence of Fe³⁺ ions in solution is confirmed by adding:',
 '["Dilute NaOH (gives brown precipitate)","Limewater","Litmus paper","Ammonia solution"]', 0,
 'Fe³⁺ + 3OH⁻ → Fe(OH)₃ — a rust-brown/reddish-brown precipitate confirms Fe³⁺.', 'hard'),

-- Nuclear Chemistry (41220cab-ed62-4596-a69e-b55bdcb5022f)
('a1000000-0000-0000-0000-000000000004', '41220cab-ed62-4596-a69e-b55bdcb5022f',
 'In nuclear fusion, energy is released by:',
 '["Splitting heavy nuclei","Combining light nuclei into heavier ones","Radioactive decay","Chemical reactions"]', 1,
 'Nuclear fusion joins light nuclei (like hydrogen) to form heavier nuclei, releasing enormous energy.', 'medium'),

-- Polymers (7cf28478-2682-427b-bfd7-8e2b06684fbd)
('a1000000-0000-0000-0000-000000000004', '7cf28478-2682-427b-bfd7-8e2b06684fbd',
 'Addition polymerisation occurs in molecules containing:',
 '["A double bond","A triple bond","An -OH group","An ionic bond"]', 0,
 'Addition polymerisation requires monomers with C=C double bonds, which open to form polymer chains.', 'medium'),

('a1000000-0000-0000-0000-000000000004', '7cf28478-2682-427b-bfd7-8e2b06684fbd',
 'Nylon is an example of:',
 '["An addition polymer","A condensation polymer","A natural polymer","A hydrocarbon polymer"]', 1,
 'Nylon is a condensation polymer (polyamide) formed by reaction between diamines and dicarboxylic acids.', 'medium'),

-- Industrial Chemistry (234e0257-007b-4f5c-b593-c86a211229c4)
('a1000000-0000-0000-0000-000000000004', '234e0257-007b-4f5c-b593-c86a211229c4',
 'The Haber process uses which catalyst?',
 '["Platinum","Vanadium pentoxide","Iron","Manganese dioxide"]', 2,
 'The Haber process uses an iron catalyst with potassium and aluminium oxide promoters.', 'medium'),

-- More Acids/Bases
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'A strong acid:',
 '["Partially dissociates in water","Completely dissociates in water","Has pH greater than 7","Does not react with metals"]', 1,
 'A strong acid fully dissociates (ionises) in aqueous solution.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000003',
 'The salt formed when HNO₃ reacts with Ca(OH)₂ is:',
 '["Calcium chloride","Calcium sulphate","Calcium nitrate","Calcium hydroxide"]', 2,
 'HNO₃ + Ca(OH)₂ → Ca(NO₃)₂ + H₂O. Calcium nitrate is the salt formed.', 'medium'),

-- More Organic
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'Isomers are compounds that:',
 '["Have the same molecular formula but different structural formulae","Have the same structure but different names","Are identical compounds","Have different molecular masses"]', 0,
 'Isomers have the same molecular formula but different structural arrangements.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000004',
 'Fermentation of glucose produces:',
 '["Methanol and CO₂","Ethanol and CO₂","Ethanoic acid and H₂","Ethene and water"]', 1,
 'C₆H₁₂O₆ → 2C₂H₅OH + 2CO₂ (yeast enzymes catalyse this fermentation process).', 'easy'),

-- More Atomic Structure
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'In going down Group I of the periodic table, the reactivity of metals:',
 '["Decreases","Increases","Stays the same","First increases then decreases"]', 1,
 'Down Group I, electrons are further from nucleus and more easily lost — reactivity increases.', 'medium'),

('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000001',
 'The mass number of an atom is the sum of:',
 '["Protons and electrons","Protons and neutrons","Neutrons and electrons","Electrons only"]', 1,
 'Mass number = number of protons + number of neutrons in the nucleus.', 'easy'),

-- More Bonding
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000002',
 'Which substance has a giant covalent structure?',
 '["Sodium chloride","Diamond","Copper","Ice"]', 1,
 'Diamond has a giant covalent lattice structure — each carbon is covalently bonded to four others.', 'hard'),

-- More Metals
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000008',
 'Which method is used to extract a very reactive metal like sodium?',
 '["Heating with carbon","Reduction with hydrogen","Electrolysis","Roasting the ore"]', 2,
 'Very reactive metals like sodium and aluminium are extracted by electrolysis of molten compounds.', 'hard'),

-- Rates of Reaction
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000006',
 'Increasing the surface area of a solid reactant will:',
 '["Decrease reaction rate","Increase reaction rate","Have no effect","Decrease product yield"]', 1,
 'Greater surface area exposes more particles for collision — this increases the reaction rate.', 'easy'),

-- More Separation
('a1000000-0000-0000-0000-000000000004', 'b1000004-0000-0000-0000-000000000010',
 'Which technique is used to separate immiscible liquids?',
 '["Distillation","Filtration","Separating funnel","Evaporation"]', 2,
 'A separating funnel is used to separate immiscible liquids — they form distinct layers.', 'easy');
