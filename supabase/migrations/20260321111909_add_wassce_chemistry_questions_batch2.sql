/*
  # Add WASSCE Chemistry Questions Batch 2

  Adds 80 new WASSCE-standard Chemistry questions covering:
  - Atomic structure, periodic table, bonding
  - Acids, bases, salts, electrochemistry
  - Organic chemistry, rates of reaction, equilibrium
  - Redox reactions, gas laws, environmental chemistry
  
  All questions follow WASSCE exam standards.
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000004';
  v_topic_id uuid := '144844fc-8bb9-47c0-8e4c-942bf828a13b';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'The number of protons in an atom is called its',
 '["Mass number","Atomic number","Neutron number","Isotope number"]', 1,
 'The atomic number (proton number) is the number of protons in the nucleus of an atom and determines the element.', 'easy'),

(v_subject_id, v_topic_id, 'Which subatomic particle has negligible mass and a negative charge?',
 '["Proton","Neutron","Electron","Positron"]', 2,
 'Electrons have negligible mass (1/1836 of a proton) and carry a negative charge of -1.', 'easy'),

(v_subject_id, v_topic_id, 'Isotopes of an element differ in their number of',
 '["Protons","Electrons","Neutrons","Protons and electrons"]', 2,
 'Isotopes have the same atomic number (protons) but different mass numbers due to different numbers of neutrons.', 'easy'),

(v_subject_id, v_topic_id, 'The pH of a neutral solution at 25°C is',
 '["0","7","14","1"]', 1,
 'A neutral solution has equal concentrations of H⁺ and OH⁻ ions, giving pH = 7 at 25°C.', 'easy'),

(v_subject_id, v_topic_id, 'Which type of bond results from the sharing of electron pairs between atoms?',
 '["Ionic bond","Covalent bond","Metallic bond","Hydrogen bond"]', 1,
 'Covalent bonds form when atoms share electron pairs, commonly between non-metal atoms.', 'easy'),

(v_subject_id, v_topic_id, 'The process of electrolysis involves decomposition of a substance by',
 '["Heat","Light","Electricity","Pressure"]', 2,
 'Electrolysis uses electrical energy to break down ionic compounds (electrolytes) into their constituent elements.', 'easy'),

(v_subject_id, v_topic_id, 'In the electrolysis of dilute sulphuric acid, which gas is produced at the cathode?',
 '["Oxygen","Chlorine","Hydrogen","Sulphur dioxide"]', 2,
 'At the cathode (negative electrode), H⁺ ions are reduced to produce hydrogen gas: 2H⁺ + 2e⁻ → H₂', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a strong acid?',
 '["Ethanoic acid","Carbonic acid","Hydrochloric acid","Citric acid"]', 2,
 'Hydrochloric acid (HCl) is a strong acid that fully ionises in water. Ethanoic and carbonic acids are weak acids.', 'easy'),

(v_subject_id, v_topic_id, 'The molar mass of water (H₂O) is',
 '["16 g/mol","18 g/mol","20 g/mol","34 g/mol"]', 1,
 'H₂O has molar mass = (2 × 1) + 16 = 18 g/mol.', 'easy'),

(v_subject_id, v_topic_id, 'An oxidising agent in a reaction',
 '["Loses electrons","Gains electrons","Gains protons","Loses protons"]', 1,
 'An oxidising agent accepts (gains) electrons from another substance — it is itself reduced in the process.', 'medium'),

(v_subject_id, v_topic_id, 'Which law states that gases at the same temperature and pressure contain equal numbers of molecules?',
 '["Boyle''s Law","Charles'' Law","Avogadro''s Law","Dalton''s Law"]', 2,
 'Avogadro''s Law states that equal volumes of all gases at the same temperature and pressure contain the same number of molecules.', 'medium'),

(v_subject_id, v_topic_id, 'The reaction between an acid and a base is called',
 '["Oxidation","Neutralisation","Precipitation","Reduction"]', 1,
 'Neutralisation is the reaction between an acid and a base producing a salt and water: acid + base → salt + water.', 'easy'),

(v_subject_id, v_topic_id, 'Carbon-14 dating is used to determine',
 '["Temperature of ancient rocks","Age of organic materials","Chemical composition of minerals","Pressure of ancient atmosphere"]', 1,
 'Carbon-14 is a radioactive isotope with a known half-life; its ratio to carbon-12 in organic materials is used to estimate age.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is NOT a property of metals?',
 '["Electrical conductivity","Malleability","Brittleness","Lustrous surface"]', 2,
 'Metals are malleable, ductile, conductive, and lustrous. Brittleness is a property of non-metals and ceramics, not typical metals.', 'easy'),

(v_subject_id, v_topic_id, 'The formula for glucose is',
 '["C₆H₁₂O₆","C₁₂H₂₂O₁₁","CH₂O","C₂H₅OH"]', 0,
 'Glucose has the molecular formula C₆H₁₂O₆ — a simple sugar (monosaccharide).', 'easy'),

(v_subject_id, v_topic_id, 'A catalyst increases the rate of a reaction by',
 '["Increasing the activation energy","Decreasing the activation energy","Supplying more reactants","Increasing the temperature"]', 1,
 'A catalyst provides an alternative reaction pathway with a lower activation energy, increasing the reaction rate without being consumed.', 'medium'),

(v_subject_id, v_topic_id, 'Which gas turns limewater milky?',
 '["Oxygen","Nitrogen","Carbon dioxide","Hydrogen"]', 2,
 'Carbon dioxide reacts with calcium hydroxide (limewater) to form a white precipitate of calcium carbonate: CO₂ + Ca(OH)₂ → CaCO₃ + H₂O.', 'easy'),

(v_subject_id, v_topic_id, 'The IUPAC name for CH₃CH₂OH is',
 '["Methanol","Ethanol","Propanol","Butanol"]', 1,
 'CH₃CH₂OH is ethanol — a two-carbon alcohol. The IUPAC name uses the ethane prefix with the -ol suffix.', 'easy'),

(v_subject_id, v_topic_id, 'Which element has the highest electronegativity?',
 '["Oxygen","Nitrogen","Chlorine","Fluorine"]', 3,
 'Fluorine has the highest electronegativity (3.98 on the Pauling scale) of all elements.', 'medium'),

(v_subject_id, v_topic_id, 'The noble gases are found in Group',
 '["I","VII","VIII (18)","IV"]', 2,
 'Noble gases (He, Ne, Ar, Kr, Xe, Rn) are in Group VIII (Group 18 in modern IUPAC notation).', 'easy'),

(v_subject_id, v_topic_id, 'Which type of reaction involves a substance combining with oxygen?',
 '["Reduction","Oxidation","Decomposition","Displacement"]', 1,
 'Oxidation originally meant combining with oxygen; in broader terms it means loss of electrons.', 'easy'),

(v_subject_id, v_topic_id, 'The empirical formula of a compound with 40% C, 6.7% H, and 53.3% O is',
 '["CH₂O","C₂H₄O₂","C₃H₆O₃","CHO"]', 0,
 'Dividing each percentage by atomic mass: C=40/12=3.33, H=6.7/1=6.7, O=53.3/16=3.33. Ratio 1:2:1 gives CH₂O.', 'hard'),

(v_subject_id, v_topic_id, 'Avogadro''s number (constant) is approximately',
 '["6.02 × 10²³","3.01 × 10²³","1.20 × 10²⁴","6.02 × 10²²"]', 0,
 'Avogadro''s constant is 6.02 × 10²³ — the number of particles in one mole of a substance.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a polymer?',
 '["Glucose","Sucrose","Starch","Fructose"]', 2,
 'Starch is a polysaccharide (polymer of glucose). Glucose, sucrose, and fructose are monomers or disaccharides.', 'easy'),

(v_subject_id, v_topic_id, 'The type of isomerism shown by compounds with the same molecular formula but different structural arrangements is',
 '["Geometric isomerism","Optical isomerism","Structural isomerism","Conformational isomerism"]', 2,
 'Structural (constitutional) isomers have the same molecular formula but differ in how atoms are connected.', 'hard'),

(v_subject_id, v_topic_id, 'Le Chatelier''s principle states that a system at equilibrium will',
 '["React to completion when disturbed","Shift to oppose any imposed change","Remain unchanged when disturbed","Increase product concentration always"]', 1,
 'Le Chatelier''s principle: if a system at equilibrium is disturbed, it shifts in the direction that minimises the disturbance.', 'medium'),

(v_subject_id, v_topic_id, 'The reaction CH₄ + 2O₂ → CO₂ + 2H₂O is an example of',
 '["Neutralisation","Combustion","Displacement","Fermentation"]', 1,
 'This is the combustion of methane (natural gas) — burning a hydrocarbon in excess oxygen.', 'easy'),

(v_subject_id, v_topic_id, 'Which metal is extracted by the Bayer process?',
 '["Iron","Aluminium","Copper","Zinc"]', 1,
 'The Bayer process extracts aluminium oxide (alumina) from bauxite ore, which is then electrolysed to produce aluminium.', 'hard'),

(v_subject_id, v_topic_id, 'The standard state of bromine at room temperature is',
 '["Solid","Gas","Liquid","Plasma"]', 2,
 'Bromine is one of only two elements that are liquid at room temperature (the other being mercury).', 'medium'),

(v_subject_id, v_topic_id, 'Which ion is formed when sodium loses an electron?',
 '["Na⁻","Na²⁺","Na⁺","Na²⁻"]', 2,
 'Sodium (Group I) loses one electron to form Na⁺ with an electronic configuration of the noble gas neon.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which iron corrodes in the presence of water and oxygen is called',
 '["Tarnishing","Rusting","Reduction","Calcination"]', 1,
 'Rusting is the electrochemical corrosion of iron forming hydrated iron(III) oxide (Fe₂O₃·nH₂O) in the presence of water and oxygen.', 'easy'),

(v_subject_id, v_topic_id, 'Alloys are mixtures of',
 '["Two or more metals only","A metal with one or more other elements","Two non-metals","An acid and a base"]', 1,
 'Alloys are solid mixtures of a metal with one or more other elements (metals or non-metals) to improve properties.', 'easy'),

(v_subject_id, v_topic_id, 'The IUPAC name of NaCl is',
 '["Sodium oxide","Sodium chloride","Sodium hypochlorite","Sodium chlorate"]', 1,
 'NaCl is sodium chloride — formed from Na⁺ and Cl⁻ ions in an ionic compound.', 'easy'),

(v_subject_id, v_topic_id, 'Which of these is the test for hydrogen gas?',
 '["Relights a glowing splint","Burns with a squeaky pop","Turns limewater milky","Bleaches damp litmus paper"]', 1,
 'Hydrogen burns with a squeaky pop when a burning splint is introduced to a test tube of hydrogen gas.', 'easy'),

(v_subject_id, v_topic_id, 'The reaction rate increases with temperature because',
 '["Reactant concentration decreases","Molecules have more kinetic energy and collide more frequently","Activation energy increases","Products decompose more slowly"]', 1,
 'Higher temperature gives molecules more kinetic energy, increasing the frequency and energy of collisions, and more collisions exceed the activation energy.', 'medium'),

(v_subject_id, v_topic_id, 'Which process is used industrially to manufacture ammonia?',
 '["Contact process","Haber process","Ostwald process","Solvay process"]', 1,
 'The Haber process synthesises ammonia from nitrogen and hydrogen: N₂ + 3H₂ ⇌ 2NH₃, using iron catalyst at ~450°C and 200 atm.', 'medium'),

(v_subject_id, v_topic_id, 'In organic chemistry, a functional group that contains C=O in the middle of a chain is called a',
 '["Aldehyde","Ester","Ketone","Carboxyl"]', 2,
 'A ketone has the carbonyl group (C=O) flanked by two carbon atoms (not at the end of the chain).', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following elements is in Period 3 and Group II?',
 '["Sodium","Magnesium","Calcium","Potassium"]', 1,
 'Magnesium (Mg, Z=12) is in Period 3 and Group II (alkaline earth metals).', 'medium'),

(v_subject_id, v_topic_id, 'The process of obtaining pure copper from impure copper by electrolysis is called',
 '["Electroplating","Electrolytic purification (electrorefining)","Anodising","Galvanising"]', 1,
 'Electrorefining uses electrolysis to purify metals — impure copper is the anode and pure copper is deposited at the cathode.', 'hard'),

(v_subject_id, v_topic_id, 'Cracking of petroleum produces',
 '["Longer chain alkanes","Shorter chain alkenes and alkanes","Only alkenes","Only hydrogen"]', 1,
 'Cracking breaks down long-chain hydrocarbons into shorter, more useful alkanes and alkenes (including petrol fractions).', 'medium'),

(v_subject_id, v_topic_id, 'The bond formed between two atoms when one atom donates both electrons is called a',
 '["Ionic bond","Covalent bond","Coordinate (dative) bond","Metallic bond"]', 2,
 'A coordinate (dative covalent) bond is a covalent bond where both shared electrons come from the same atom.', 'hard'),

(v_subject_id, v_topic_id, 'Which of the following gases is a greenhouse gas?',
 '["Nitrogen","Argon","Methane","Neon"]', 2,
 'Methane (CH₄) is a potent greenhouse gas that absorbs infrared radiation and contributes to global warming.', 'easy'),

(v_subject_id, v_topic_id, 'An aldehyde can be distinguished from a ketone using',
 '["Litmus paper","Fehling''s solution","Universal indicator","Limewater"]', 1,
 'Fehling''s solution (and Tollens'' reagent) gives a positive result with aldehydes (reducing agents) but not with ketones.', 'hard'),

(v_subject_id, v_topic_id, 'The number of moles in 44 g of CO₂ is',
 '["1 mol","2 mol","0.5 mol","4 mol"]', 0,
 'Molar mass of CO₂ = 12 + (2×16) = 44 g/mol. Therefore 44 g ÷ 44 g/mol = 1 mol.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is an example of a physical change?',
 '["Burning wood","Rusting of iron","Dissolving salt in water","Souring of milk"]', 2,
 'Dissolving salt in water is a physical change — no new substance is formed and the change is reversible.', 'easy'),

(v_subject_id, v_topic_id, 'Soap is produced by the reaction of fat/oil with',
 '["Dilute acid","Alkali (e.g. NaOH)","Salt solution","Alcohol"]', 1,
 'Saponification is the reaction of fat or oil with a strong alkali (NaOH or KOH) to produce soap and glycerol.', 'medium'),

(v_subject_id, v_topic_id, 'The atomic mass unit (amu) is defined relative to',
 '["Hydrogen-1","Carbon-12","Oxygen-16","Nitrogen-14"]', 1,
 'The unified atomic mass unit is defined as 1/12 of the mass of a carbon-12 atom.', 'hard'),

(v_subject_id, v_topic_id, 'In a redox reaction, the species that is oxidised',
 '["Gains electrons","Loses electrons","Gains protons","Loses protons"]', 1,
 'Oxidation is the loss of electrons; the species that loses electrons is oxidised (OIL — Oxidation Is Loss).', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is the correct test for oxygen gas?',
 '["Burns with squeaky pop","Bleaches damp litmus","Relights a glowing splint","Turns limewater milky"]', 2,
 'Oxygen relights a glowing splint — it supports combustion.', 'easy'),

(v_subject_id, v_topic_id, 'The oxidation state of sulphur in H₂SO₄ is',
 '["+2","+4","+6","+8"]', 2,
 'In H₂SO₄: H is +1 (×2) and O is -2 (×4). So S = +6 to balance: 2(+1) + S + 4(-2) = 0 → S = +6.', 'hard'),

(v_subject_id, v_topic_id, 'Which gas is produced when zinc reacts with dilute hydrochloric acid?',
 '["Oxygen","Chlorine","Hydrogen","Zinc chloride gas"]', 2,
 'Zn + 2HCl → ZnCl₂ + H₂↑. Zinc displaces hydrogen from dilute acid, producing hydrogen gas.', 'easy'),

(v_subject_id, v_topic_id, 'The boiling point of ethanol (78°C) is higher than methane (-161°C) mainly because',
 '["Ethanol has a higher molecular mass","Ethanol has hydrogen bonds between molecules","Ethanol is more flammable","Methanol has no electrons"]', 1,
 'Ethanol forms intermolecular hydrogen bonds (O-H···O) which require more energy to overcome than van der Waals forces in methane.', 'hard'),

(v_subject_id, v_topic_id, 'The Contact process is used to manufacture',
 '["Ammonia","Nitric acid","Sulphuric acid","Hydrochloric acid"]', 2,
 'The Contact process converts SO₂ to SO₃ using a vanadium(V) oxide catalyst, which is then reacted with water to form H₂SO₄.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a characteristic of ionic compounds?',
 '["Low melting points","Poor electrical conductivity in solution","High melting points and conduct electricity when molten or dissolved","Insoluble in water"]', 2,
 'Ionic compounds have high melting points (strong electrostatic forces) and conduct electricity when molten or in solution.', 'medium'),

(v_subject_id, v_topic_id, 'The molecular formula of ethanoic acid (acetic acid) is',
 '["CH₃OH","CH₃COOH","HCOOH","C₂H₅OH"]', 1,
 'Ethanoic acid (acetic acid) has the molecular formula CH₃COOH — it contains the carboxyl functional group (-COOH).', 'easy'),

(v_subject_id, v_topic_id, 'The half-life of a radioactive isotope is the time taken for',
 '["All atoms to decay","Half the atoms to decay","The activity to become zero","The mass to halve then double"]', 1,
 'Half-life is the time required for half of the radioactive nuclei in a sample to undergo decay.', 'easy'),

(v_subject_id, v_topic_id, 'Which type of organic reaction involves addition of a halogen across a C=C double bond?',
 '["Substitution","Elimination","Addition","Oxidation"]', 2,
 'Alkenes undergo addition reactions — halogens add across the double bond: CH₂=CH₂ + Br₂ → CH₂BrCH₂Br.', 'medium'),

(v_subject_id, v_topic_id, 'Water is described as a polar molecule because',
 '["It contains oxygen","The O-H bond is polar and the molecule is bent","It forms hydrogen bonds","It is a liquid"]', 1,
 'Water''s bent geometry (104.5°) and polar O-H bonds result in an asymmetric charge distribution making it a polar molecule.', 'hard'),

(v_subject_id, v_topic_id, 'The Periodic Table is arranged in order of increasing',
 '["Atomic mass","Atomic radius","Atomic number","Electronegativity"]', 2,
 'The modern Periodic Table arranges elements in order of increasing atomic number (number of protons).', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is a diatomic molecule?',
 '["Argon","Ozone","Nitrogen","Phosphorus"]', 2,
 'Nitrogen exists as N₂ — a diatomic molecule. Argon is monatomic, ozone is O₃, and phosphorus is P₄.', 'easy'),

(v_subject_id, v_topic_id, 'The process of making an anhydrous salt from its hydrated form by gentle heating is called',
 '["Calcination","Dehydration","Roasting","Efflorescence"]', 1,
 'Dehydration removes water of crystallisation from a hydrated salt by heating, producing the anhydrous form.', 'medium'),

(v_subject_id, v_topic_id, 'In chromatography, the stationary phase is',
 '["The solvent","The paper or silica","The substance being separated","The carrier gas"]', 1,
 'The stationary phase (paper, silica gel) does not move; the mobile phase (solvent) moves through it carrying the components.', 'medium'),

(v_subject_id, v_topic_id, 'The correct definition of a mole is',
 '["6.02 × 10²³ molecules of a substance","The mass of a substance in grams","The amount of substance containing as many particles as there are atoms in 12 g of C-12","The volume of a gas at STP"]', 2,
 'A mole is the amount of substance containing 6.02 × 10²³ particles (Avogadro''s number) — defined relative to 12 g of C-12.', 'medium'),

(v_subject_id, v_topic_id, 'Stainless steel is an alloy mainly of iron and',
 '["Copper","Chromium","Nickel and chromium","Zinc"]', 2,
 'Stainless steel is an alloy of iron with chromium (at least 10.5%) and often nickel, providing corrosion resistance.', 'medium'),

(v_subject_id, v_topic_id, 'The term ''saponification'' refers to',
 '["Making aspirin","Making soap from fats and alkali","Fermentation of sugars","Cracking of petroleum"]', 1,
 'Saponification is the hydrolysis of esters (fats/oils) with a strong alkali to form soap (fatty acid salts) and glycerol.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is produced at the anode during electrolysis of concentrated NaCl solution?',
 '["Hydrogen","Oxygen","Chlorine","Sodium"]', 2,
 'At the anode (positive electrode) of concentrated NaCl solution, Cl⁻ ions are oxidised: 2Cl⁻ → Cl₂ + 2e⁻.', 'medium'),

(v_subject_id, v_topic_id, 'The general formula for alkenes is',
 '["CₙH₂ₙ₊₂","CₙH₂ₙ","CₙH₂ₙ₋₂","CₙHₙ"]', 1,
 'Alkenes have one C=C double bond giving general formula CₙH₂ₙ (e.g. ethene C₂H₄, propene C₃H₆).', 'medium'),

(v_subject_id, v_topic_id, 'Galvanising is the process of coating iron with',
 '["Tin","Nickel","Zinc","Copper"]', 2,
 'Galvanising involves coating iron or steel with a layer of zinc to prevent rusting — zinc acts as a sacrificial anode.', 'easy'),

(v_subject_id, v_topic_id, 'The IUPAC name of CH₃COCH₃ is',
 '["Propan-1-ol","Propanal","Propan-2-one (acetone)","Propanoic acid"]', 2,
 'CH₃COCH₃ has the carbonyl group at position 2, so it is propan-2-one (commonly called acetone).', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following statements about enzymes is correct?',
 '["They are consumed in reactions","They lower the activation energy","They increase the activation energy","They change the energy of products"]', 1,
 'Enzymes are biological catalysts that lower the activation energy of reactions without being consumed.', 'medium'),

(v_subject_id, v_topic_id, 'The reaction of an alcohol with a carboxylic acid produces',
 '["An aldehyde","An ester","A ketone","An amine"]', 1,
 'Esterification: alcohol + carboxylic acid → ester + water (e.g., ethanol + ethanoic acid → ethyl ethanoate + water).', 'medium'),

(v_subject_id, v_topic_id, 'Brass is an alloy of',
 '["Iron and carbon","Copper and zinc","Copper and tin","Aluminium and copper"]', 1,
 'Brass is an alloy of copper (60-90%) and zinc (10-40%), used for musical instruments and fittings.', 'easy'),

(v_subject_id, v_topic_id, 'A buffer solution resists changes in',
 '["Temperature","Pressure","pH","Colour"]', 2,
 'A buffer solution maintains a relatively constant pH when small amounts of acid or base are added.', 'hard'),

(v_subject_id, v_topic_id, 'In the flame test, sodium compounds produce a',
 '["Brick-red flame","Lilac flame","Yellow flame","Green flame"]', 2,
 'Sodium compounds give an intense yellow/golden flame in the flame test due to electron excitation.', 'easy'),

(v_subject_id, v_topic_id, 'The reagent used to test for starch is',
 '["Benedict''s solution","Iodine solution","Fehling''s solution","Litmus"]', 1,
 'Iodine solution turns blue-black in the presence of starch — used as a test for starch in food or biological samples.', 'easy');

END $$;
