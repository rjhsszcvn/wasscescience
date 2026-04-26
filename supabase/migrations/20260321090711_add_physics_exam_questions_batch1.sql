/*
  # Add Physics Exam Questions - Batch 1
  
  Adds 80 new WASSCE-standard multiple choice questions for Physics
  covering Mechanics, Electricity, Waves, Optics, Heat, Nuclear Physics and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Mechanics: Newton's Laws (b1000003-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'A force of 20 N acts on a mass of 4 kg. What is the acceleration?',
 '["2 m/s²","5 m/s²","80 m/s²","0.2 m/s²"]', 1,
 'F = ma, so a = F/m = 20/4 = 5 m/s².', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'Newton''s Third Law states:',
 '["An object at rest stays at rest unless acted on by a force","Force equals mass times acceleration","For every action there is an equal and opposite reaction","Momentum is conserved in all collisions"]', 2,
 'Newton''s Third Law: action and reaction are equal in magnitude and opposite in direction.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'The SI unit of force is:',
 '["Joule","Watt","Newton","Pascal"]', 2,
 'Force is measured in Newtons (N), named after Isaac Newton.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'A body of mass 5 kg moving at 10 m/s has momentum of:',
 '["2 kg m/s","50 kg m/s","0.5 kg m/s","15 kg m/s"]', 1,
 'Momentum p = mv = 5 × 10 = 50 kg m/s.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'The coefficient of friction between two surfaces depends on:',
 '["The area of contact","The weight of the object","The nature of the surfaces in contact","The speed of motion"]', 2,
 'The coefficient of friction depends on the materials and roughness of the surfaces.', 'medium'),

-- Work, Energy and Power (b1000003-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000007',
 'A 10 kg object is lifted 3 m above the ground. What is its potential energy? (g = 10 m/s²)',
 '["30 J","300 J","3 J","13 J"]', 1,
 'PE = mgh = 10 × 10 × 3 = 300 J.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000007',
 'A machine does 600 J of work in 30 seconds. Its power is:',
 '["18000 W","20 W","570 W","0.05 W"]', 1,
 'Power = Work/Time = 600/30 = 20 W.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000007',
 'Work is done when:',
 '["A force is applied to an object","A force causes displacement in the direction of force","An object moves at constant velocity","A force acts perpendicular to motion"]', 1,
 'Work = Force × displacement in direction of force. No displacement = no work done.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000007',
 'Which energy conversion occurs in a hydroelectric power station?',
 '["Chemical to Electrical","Nuclear to Thermal","Potential to Kinetic to Electrical","Solar to Electrical"]', 2,
 'Water at height (PE) flows down (KE) and drives turbines to generate electricity.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000007',
 'An electric iron rated 1000 W is used for 2 hours. The electrical energy consumed is:',
 '["2000 J","500 J","7,200,000 J","1000 J"]', 2,
 'Energy = Power × Time = 1000 W × 7200 s = 7,200,000 J (or 2 kWh).', 'medium'),

-- Electricity (b1000003-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'Ohm''s Law states that the current through a conductor is:',
 '["Directly proportional to resistance","Inversely proportional to voltage","Directly proportional to voltage at constant resistance","Equal to the resistance times the power"]', 2,
 'Ohm''s Law: V = IR, so at constant R, I is proportional to V.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'Three resistors of 2 Ω, 3 Ω and 6 Ω are connected in parallel. Their combined resistance is:',
 '["11 Ω","1 Ω","0.5 Ω","3.67 Ω"]', 1,
 '1/R = 1/2 + 1/3 + 1/6 = 3/6 + 2/6 + 1/6 = 6/6 = 1. So R = 1 Ω.', 'hard'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'What is the resistance of a conductor if a voltage of 12 V drives a current of 3 A?',
 '["4 Ω","36 Ω","0.25 Ω","9 Ω"]', 0,
 'R = V/I = 12/3 = 4 Ω.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'Which device converts chemical energy directly to electrical energy?',
 '["Motor","Generator","Electric cell","Transformer"]', 2,
 'An electric cell (battery) converts chemical energy to electrical energy.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'Two resistors of 6 Ω and 3 Ω are connected in series. Their total resistance is:',
 '["2 Ω","9 Ω","18 Ω","0.5 Ω"]', 1,
 'Series resistance: R_total = R1 + R2 = 6 + 3 = 9 Ω.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'An electric charge of 10 C flows through a circuit in 5 seconds. The current is:',
 '["50 A","2 A","0.5 A","15 A"]', 1,
 'I = Q/t = 10/5 = 2 A.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000002',
 'A fuse in an electrical circuit is designed to:',
 '["Increase current flow","Store electrical energy","Protect the circuit by melting when current is too high","Convert AC to DC"]', 2,
 'A fuse melts and breaks the circuit when current exceeds a safe level, protecting devices.', 'easy'),

-- Waves and Sound (b1000003-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'The speed of sound in air at room temperature is approximately:',
 '["300 m/s","340 m/s","1500 m/s","3 × 10⁸ m/s"]', 1,
 'Sound travels at approximately 340 m/s in air at room temperature.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'A wave has frequency 50 Hz and wavelength 2 m. Its speed is:',
 '["25 m/s","100 m/s","52 m/s","48 m/s"]', 1,
 'v = fλ = 50 × 2 = 100 m/s.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'Sound cannot travel through:',
 '["Water","Steel","A vacuum","Air"]', 2,
 'Sound requires a medium to travel — it cannot propagate through a vacuum.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'The pitch of a sound depends on its:',
 '["Amplitude","Frequency","Wavelength in solid","Speed"]', 1,
 'Higher frequency produces higher pitch; lower frequency produces lower pitch.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'Electromagnetic waves differ from sound waves because they:',
 '["Travel faster","Carry energy","Can travel through a vacuum","Have higher frequency"]', 2,
 'Electromagnetic waves (light, radio, etc.) can travel through vacuum; sound cannot.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000003',
 'The phenomenon of sound bouncing back from a surface is called:',
 '["Diffraction","Refraction","Echo (reflection)","Resonance"]', 2,
 'An echo is the reflection of sound from a surface.', 'easy'),

-- Light and Optics (b1000003-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'The speed of light in a vacuum is:',
 '["3 × 10⁶ m/s","3 × 10⁸ m/s","3 × 10¹⁰ m/s","340 m/s"]', 1,
 'Light travels at 3 × 10⁸ m/s (300,000 km/s) in a vacuum.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'A concave mirror forms a virtual image when the object is:',
 '["Beyond the centre of curvature","Between F and the mirror","At the focus","At the centre of curvature"]', 1,
 'A concave mirror forms a virtual, upright, magnified image when object is between F and the mirror.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'The critical angle for total internal reflection is the angle of incidence at which the angle of refraction is:',
 '["0°","45°","90°","180°"]', 2,
 'At the critical angle, the refracted ray travels along the surface at 90° to the normal.', 'hard'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'A ray of light travels from glass to air. It will be refracted:',
 '["Toward the normal","Away from the normal","Along the surface","Not at all"]', 1,
 'When light moves from a denser to a less dense medium, it bends away from the normal.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'The image formed by a plane mirror is:',
 '["Real, inverted, magnified","Virtual, upright, same size","Real, upright, same size","Virtual, inverted, smaller"]', 1,
 'A plane mirror forms a virtual, upright image the same size as the object.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000005',
 'Which phenomenon explains the formation of a rainbow?',
 '["Reflection","Diffraction","Dispersion of light","Interference"]', 2,
 'Rainbows are formed by dispersion — white light split into its component colours by water droplets.', 'medium'),

-- Heat and Temperature (b1000003-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000004',
 'The SI unit of temperature is:',
 '["Celsius","Fahrenheit","Kelvin","Joule"]', 2,
 'The SI unit of temperature is Kelvin (K).', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000004',
 'Convert 100°C to Kelvin:',
 '["273 K","373 K","100 K","173 K"]', 1,
 'K = °C + 273 = 100 + 273 = 373 K.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000004',
 'The process of heat transfer through a solid without the movement of matter is called:',
 '["Convection","Radiation","Conduction","Evaporation"]', 2,
 'Conduction is heat transfer through a solid by vibration of particles without bulk movement.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000004',
 'Which surface is the best absorber of heat radiation?',
 '["Shiny white","Dull black","Polished silver","Smooth yellow"]', 1,
 'Dark, dull surfaces are the best absorbers (and emitters) of heat radiation.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000004',
 'The specific heat capacity of water is 4200 J/kg°C. The heat needed to raise 2 kg of water by 5°C is:',
 '["420 J","42,000 J","8400 J","21,000 J"]', 1,
 'Q = mcΔT = 2 × 4200 × 5 = 42,000 J.', 'medium'),

-- Magnetism (b1000003-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000006',
 'Like magnetic poles:',
 '["Attract each other","Repel each other","Have no effect on each other","Cancel out"]', 1,
 'Like poles repel; unlike poles attract — a fundamental law of magnetism.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000006',
 'The right-hand grip rule is used to find:',
 '["The direction of current in a wire","The direction of the magnetic field around a current-carrying conductor","The force on a conductor in a field","The magnitude of the magnetic force"]', 1,
 'Right-hand grip rule: thumb points in direction of current, fingers curl in direction of magnetic field.', 'medium'),

-- Pressure and Fluids (b1000003-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000008',
 'Pressure is defined as:',
 '["Force × Area","Force / Area","Mass / Volume","Weight × Height"]', 1,
 'Pressure = Force ÷ Area. SI unit is Pascal (Pa) = N/m².', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000008',
 'Archimedes'' principle states that the upthrust on an object equals:',
 '["The weight of the object","The volume of fluid displaced","The weight of fluid displaced","The mass of the object"]', 2,
 'Upthrust = weight of fluid displaced by the object.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000008',
 'A hydraulic press works on the principle that:',
 '["Pressure in a fluid decreases with depth","Pressure applied to a confined fluid is transmitted equally","Hot fluids rise","Buoyancy equals weight"]', 1,
 'Pascal''s principle: pressure applied to a confined fluid is transmitted equally in all directions.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000008',
 'Atmospheric pressure at sea level is approximately:',
 '["100 Pa","1000 Pa","101,325 Pa","10 Pa"]', 2,
 'Standard atmospheric pressure is 101,325 Pa (approximately 1 atm).', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000008',
 'An object floats when:',
 '["Its density is less than the liquid","Its weight is less than gravity","Its volume equals the liquid volume","Its mass is zero"]', 0,
 'An object floats when its average density is less than the density of the liquid.', 'medium'),

-- Radioactivity (b1000003-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000009',
 'Which type of radiation has the greatest penetrating power?',
 '["Alpha (α)","Beta (β)","Gamma (γ)","X-rays"]', 2,
 'Gamma rays are electromagnetic radiation with the highest penetrating power.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000009',
 'An alpha particle consists of:',
 '["2 protons and 2 neutrons","1 proton and 1 neutron","2 electrons","1 proton only"]', 0,
 'An alpha particle is a helium nucleus: 2 protons and 2 neutrons.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000009',
 'The half-life of a radioactive element is the time for:',
 '["All atoms to decay","Half the atoms to decay","The activity to double","The element to become stable"]', 1,
 'Half-life is the time taken for half the radioactive atoms in a sample to decay.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000009',
 'Which radiation is deflected by a magnetic field?',
 '["Gamma rays only","Alpha and beta only","All three (alpha, beta, gamma)","None of them"]', 1,
 'Charged particles (alpha and beta) are deflected by magnetic fields; gamma is not (uncharged).', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000009',
 'Nuclear fission involves:',
 '["Joining light nuclei to form heavier ones","Splitting a heavy nucleus into smaller ones","Emitting beta particles","Absorbing neutrons without change"]', 1,
 'Fission: heavy nucleus splits into smaller nuclei, releasing large amounts of energy.', 'medium'),

-- Motion and Graphs (b1000003-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000010',
 'On a velocity-time graph, the area under the curve represents:',
 '["Acceleration","Displacement","Speed","Force"]', 1,
 'Area under a velocity-time graph = distance (displacement) travelled.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000010',
 'A car accelerates uniformly from 0 to 30 m/s in 10 s. Its acceleration is:',
 '["300 m/s²","3 m/s²","0.33 m/s²","30 m/s²"]', 1,
 'a = (v-u)/t = (30-0)/10 = 3 m/s².', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000010',
 'A body starting from rest with acceleration 4 m/s² travels in 5 s a distance of:',
 '["20 m","50 m","100 m","10 m"]', 1,
 's = ut + ½at² = 0 + ½ × 4 × 25 = 50 m.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000010',
 'On a distance-time graph, the gradient represents:',
 '["Acceleration","Force","Speed","Power"]', 2,
 'Gradient of a distance-time graph = speed (rate of change of distance).', 'easy'),

-- Scalars and Vectors (1979d135-dbc5-4aae-8eb5-2ee1b309ab19)
('a1000000-0000-0000-0000-000000000003', '1979d135-dbc5-4aae-8eb5-2ee1b309ab19',
 'Which of the following is a vector quantity?',
 '["Speed","Temperature","Mass","Velocity"]', 3,
 'Velocity has both magnitude and direction — it is a vector quantity.', 'easy'),

('a1000000-0000-0000-0000-000000000003', '1979d135-dbc5-4aae-8eb5-2ee1b309ab19',
 'Two forces of 3 N and 4 N act at right angles. Their resultant is:',
 '["7 N","1 N","5 N","12 N"]', 2,
 'By Pythagoras: R = √(3² + 4²) = √25 = 5 N.', 'medium'),

('a1000000-0000-0000-0000-000000000003', '1979d135-dbc5-4aae-8eb5-2ee1b309ab19',
 'Which of the following is a scalar quantity?',
 '["Force","Displacement","Acceleration","Distance"]', 3,
 'Distance has magnitude only (no direction) — it is a scalar quantity.', 'easy'),

-- Electromagnetic Induction (28cefe4d-d92b-4cc9-845b-c4c7d8ef68ed)
('a1000000-0000-0000-0000-000000000003', '28cefe4d-d92b-4cc9-845b-c4c7d8ef68ed',
 'Faraday''s law states that the induced EMF is proportional to:',
 '["The strength of the magnet","The rate of change of magnetic flux","The resistance of the coil","The temperature of the conductor"]', 1,
 'Faraday''s law: EMF = -dΦ/dt. EMF is proportional to rate of change of magnetic flux.', 'hard'),

('a1000000-0000-0000-0000-000000000003', '28cefe4d-d92b-4cc9-845b-c4c7d8ef68ed',
 'A transformer steps up voltage from 240 V to 4800 V. If the primary has 200 turns, the secondary has:',
 '["10 turns","4000 turns","100 turns","1000 turns"]', 1,
 'Vs/Vp = Ns/Np → 4800/240 = Ns/200 → Ns = 4000 turns.', 'hard'),

('a1000000-0000-0000-0000-000000000003', '28cefe4d-d92b-4cc9-845b-c4c7d8ef68ed',
 'Lenz''s Law states that the induced current always acts to:',
 '["Increase the change causing it","Oppose the change causing it","Stay in the same direction","Flow in the direction of motion"]', 1,
 'Lenz''s Law: the induced current creates a magnetic field that opposes the change in flux.', 'hard'),

-- Measurement and Units (f5090f2b-3ebc-4802-ba5b-6ad964f9b8b3)
('a1000000-0000-0000-0000-000000000003', 'f5090f2b-3ebc-4802-ba5b-6ad964f9b8b3',
 'The instrument used to measure small lengths to 0.01 mm accuracy is:',
 '["Ruler","Vernier caliper","Micrometer screw gauge","Metre rule"]', 2,
 'A micrometer screw gauge can measure lengths to 0.01 mm (or better).', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'f5090f2b-3ebc-4802-ba5b-6ad964f9b8b3',
 'Which of the following is a base SI unit?',
 '["Newton","Joule","Kilogram","Watt"]', 2,
 'Kilogram (kg) is a base SI unit for mass. Newton and Joule are derived units.', 'easy'),

-- Thermodynamics and Gas Laws (76279e4c-bc0d-43ab-964b-322cf65f4047)
('a1000000-0000-0000-0000-000000000003', '76279e4c-bc0d-43ab-964b-322cf65f4047',
 'Boyle''s Law states that at constant temperature, pressure and volume are:',
 '["Directly proportional","Inversely proportional","Equal","Independent"]', 1,
 'Boyle''s Law: PV = constant at constant temperature, so P ∝ 1/V.', 'easy'),

('a1000000-0000-0000-0000-000000000003', '76279e4c-bc0d-43ab-964b-322cf65f4047',
 'A gas at 27°C has volume 2 L. At 127°C (constant pressure), its volume becomes:',
 '["4 L","2.67 L","1.5 L","8 L"]', 1,
 'Charles''s Law: V1/T1 = V2/T2. 2/300 = V2/400 → V2 = 2.67 L.', 'hard'),

('a1000000-0000-0000-0000-000000000003', '76279e4c-bc0d-43ab-964b-322cf65f4047',
 'The First Law of Thermodynamics states that:',
 '["Heat always flows from cold to hot","Energy cannot be created or destroyed","Entropy always increases","Absolute zero cannot be reached"]', 1,
 'First Law of Thermodynamics: energy is conserved — it can be converted but not created or destroyed.', 'medium'),

-- Projectiles and Circular Motion (bae9b48e-6c39-4657-b072-17d22950860b)
('a1000000-0000-0000-0000-000000000003', 'bae9b48e-6c39-4657-b072-17d22950860b',
 'At the highest point of a projectile''s path, the vertical velocity is:',
 '["Maximum","Zero","Equal to horizontal velocity","Negative"]', 1,
 'At maximum height, the vertical component of velocity is zero.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'bae9b48e-6c39-4657-b072-17d22950860b',
 'The centripetal force on an object in circular motion is directed:',
 '["Outward from the centre","Tangentially","Toward the centre","Upward"]', 2,
 'Centripetal force always points toward the centre of the circular path.', 'easy'),

-- Gravitational Fields (3f66969a-1887-4b5e-9440-076d7d1c9bf8)
('a1000000-0000-0000-0000-000000000003', '3f66969a-1887-4b5e-9440-076d7d1c9bf8',
 'The value of gravitational field strength g at the Earth''s surface is approximately:',
 '["9.8 N/kg","9.8 kg/N","9.8 m/s","9.8 Pa"]', 0,
 'g = 9.8 N/kg (or m/s²) at the Earth''s surface.', 'easy'),

('a1000000-0000-0000-0000-000000000003', '3f66969a-1887-4b5e-9440-076d7d1c9bf8',
 'According to Newton''s law of gravitation, force between two masses is:',
 '["Proportional to sum of the masses","Inversely proportional to the square of their distance","Proportional to the difference of masses","Independent of distance"]', 1,
 'F = Gm₁m₂/r². Force is inversely proportional to square of the distance.', 'medium'),

-- Simple Harmonic Motion (dc88497d-1e9e-4b12-ab01-64d4567aa998)
('a1000000-0000-0000-0000-000000000003', 'dc88497d-1e9e-4b12-ab01-64d4567aa998',
 'In simple harmonic motion, the restoring force is:',
 '["Constant","Proportional to velocity","Proportional to displacement from equilibrium","Proportional to acceleration squared"]', 2,
 'In SHM, F = -kx. The restoring force is proportional to displacement from equilibrium.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'dc88497d-1e9e-4b12-ab01-64d4567aa998',
 'The period of a simple pendulum depends on:',
 '["The mass of the bob","The amplitude of swing","The length of the pendulum","The material of the string"]', 2,
 'T = 2π√(L/g). Period depends on length L and g, not mass or amplitude (for small angles).', 'medium'),

-- Atomic Structure (f39595a0-a31f-461f-9821-9fd6991f1c02)
('a1000000-0000-0000-0000-000000000003', 'f39595a0-a31f-461f-9821-9fd6991f1c02',
 'Which particle in an atom has negligible mass?',
 '["Proton","Neutron","Electron","Nucleus"]', 2,
 'Electrons have negligible mass (about 1/1836 of a proton) and orbit outside the nucleus.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'f39595a0-a31f-461f-9821-9fd6991f1c02',
 'Carbon-14 has atomic number 6. How many neutrons does it have?',
 '["6","8","14","2"]', 1,
 'Neutrons = Mass number - Atomic number = 14 - 6 = 8 neutrons.', 'medium'),

-- Equilibrium of Forces (5b3feaba-e860-4fb3-9ad2-7f2a32c065c9)
('a1000000-0000-0000-0000-000000000003', '5b3feaba-e860-4fb3-9ad2-7f2a32c065c9',
 'For a body to be in equilibrium, the sum of all forces acting on it must be:',
 '["Maximum","Minimum","Zero","Equal to weight"]', 2,
 'For equilibrium: ΣF = 0 (no net force) and Στ = 0 (no net torque).', 'easy'),

('a1000000-0000-0000-0000-000000000003', '5b3feaba-e860-4fb3-9ad2-7f2a32c065c9',
 'The principle of moments states that for equilibrium:',
 '["Total upward force = total downward force","Sum of clockwise moments = sum of anticlockwise moments","All forces are equal","Centre of gravity is at the base"]', 1,
 'The principle of moments: clockwise moments = anticlockwise moments about any pivot point.', 'medium'),

-- Electronics (aeb8e349-c996-4347-b14b-8afaf326c3cb)
('a1000000-0000-0000-0000-000000000003', 'aeb8e349-c996-4347-b14b-8afaf326c3cb',
 'A diode allows current to flow:',
 '["In both directions","Only in one direction","Only in AC circuits","Only when heated"]', 1,
 'A diode is a semiconductor device that allows current to flow in only one direction.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'aeb8e349-c996-4347-b14b-8afaf326c3cb',
 'The output of an AND gate is HIGH only when:',
 '["Any input is HIGH","All inputs are HIGH","All inputs are LOW","One input is HIGH and other LOW"]', 1,
 'AND gate: output is 1 only when ALL inputs are 1.', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'aeb8e349-c996-4347-b14b-8afaf326c3cb',
 'A transistor can be used as:',
 '["Only a switch","Only an amplifier","Both a switch and an amplifier","A resistor"]', 2,
 'Transistors can function as both electronic switches and signal amplifiers.', 'medium'),

-- More mechanics
('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'The unit of power is the:',
 '["Joule","Newton","Watt","Pascal"]', 2,
 'Power is measured in Watts (W) = Joules per second (J/s).', 'easy'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'A body is said to be in free fall when:',
 '["It is thrown horizontally","Only gravity acts on it","Air resistance equals gravity","It moves at constant velocity"]', 1,
 'Free fall: only gravitational force acts on the body (no air resistance).', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'Impulse is equal to:',
 '["Force × distance","Change in momentum","Mass × acceleration","Force / time"]', 1,
 'Impulse = Force × time = change in momentum.', 'medium'),

('a1000000-0000-0000-0000-000000000003', 'b1000003-0000-0000-0000-000000000001',
 'The law of conservation of momentum states that:',
 '["Momentum always increases","Total momentum before = total momentum after a collision","Momentum is always zero","Energy and momentum are the same"]', 1,
 'In a closed system, total momentum is conserved — it remains constant before and after collision.', 'medium');
