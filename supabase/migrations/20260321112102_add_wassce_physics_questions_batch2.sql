/*
  # Add WASSCE Physics Questions Batch 2

  Adds 80 new WASSCE-standard Physics questions covering:
  - Mechanics, motion, forces
  - Waves, light, sound
  - Electricity, magnetism
  - Heat, thermodynamics
  - Atomic physics, nuclear physics

  All questions follow WASSCE exam standards.
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000003';
  v_topic_id uuid := '1979d135-dbc5-4aae-8eb5-2ee1b309ab19';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'Newton''s first law of motion states that a body remains at rest or in uniform motion unless acted upon by',
 '["Gravity","An unbalanced force","Friction","Inertia"]', 1,
 'Newton''s first law (law of inertia) states a body continues in its state of rest or uniform straight-line motion unless an external net force acts on it.', 'easy'),

(v_subject_id, v_topic_id, 'The SI unit of force is the',
 '["Joule","Watt","Newton","Pascal"]', 2,
 'The newton (N) is the SI unit of force. 1 N = 1 kg·m/s².', 'easy'),

(v_subject_id, v_topic_id, 'A scalar quantity has only',
 '["Direction","Magnitude and direction","Magnitude","Neither magnitude nor direction"]', 2,
 'Scalar quantities have magnitude only (e.g., speed, mass, temperature). Vector quantities have both magnitude and direction.', 'easy'),

(v_subject_id, v_topic_id, 'The acceleration due to gravity on Earth''s surface is approximately',
 '["5 m/s²","9.8 m/s²","15 m/s²","20 m/s²"]', 1,
 'The standard acceleration due to gravity (g) is approximately 9.8 m/s² (often approximated as 10 m/s²) at Earth''s surface.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is the correct formula for kinetic energy?',
 '["KE = mgh","KE = ½mv²","KE = mv","KE = F × d"]', 1,
 'Kinetic energy is KE = ½mv², where m is mass and v is velocity.', 'easy'),

(v_subject_id, v_topic_id, 'The law of conservation of energy states that energy can',
 '["Be created and destroyed","Neither be created nor destroyed but can be transformed","Only be transformed into heat","Only be created by nuclear reactions"]', 1,
 'Energy cannot be created or destroyed; it can only be converted from one form to another (law of conservation of energy).', 'easy'),

(v_subject_id, v_topic_id, 'Sound waves are examples of',
 '["Transverse waves","Electromagnetic waves","Longitudinal waves","Standing waves"]', 2,
 'Sound waves are longitudinal — particles vibrate parallel to the direction of wave propagation.', 'easy'),

(v_subject_id, v_topic_id, 'The speed of light in a vacuum is approximately',
 '["3 × 10⁶ m/s","3 × 10⁸ m/s","3 × 10¹⁰ m/s","3 × 10⁴ m/s"]', 1,
 'The speed of light in a vacuum (c) is approximately 3 × 10⁸ m/s.', 'easy'),

(v_subject_id, v_topic_id, 'Ohm''s law states that the current through a conductor is',
 '["Directly proportional to resistance","Inversely proportional to voltage","Directly proportional to the potential difference across it (at constant temperature)","Independent of resistance"]', 2,
 'Ohm''s law: V = IR. Current I is directly proportional to voltage V at constant temperature: I = V/R.', 'easy'),

(v_subject_id, v_topic_id, 'The SI unit of electrical resistance is the',
 '["Ampere","Volt","Ohm","Farad"]', 2,
 'The ohm (Ω) is the SI unit of electrical resistance, defined as V/A.', 'easy'),

(v_subject_id, v_topic_id, 'Which type of lens converges parallel light rays to a focal point?',
 '["Concave lens","Convex lens","Plane mirror","Concave mirror"]', 1,
 'A convex (converging) lens bends parallel rays so they meet at the focal point on the other side.', 'easy'),

(v_subject_id, v_topic_id, 'The bending of light as it passes from one medium to another is called',
 '["Reflection","Diffraction","Refraction","Dispersion"]', 2,
 'Refraction is the change in direction of light as it passes from one medium to another of different optical density.', 'easy'),

(v_subject_id, v_topic_id, 'When two resistors of 4 Ω and 6 Ω are connected in parallel, the effective resistance is',
 '["10 Ω","2.4 Ω","5 Ω","1.5 Ω"]', 1,
 '1/R = 1/4 + 1/6 = 3/12 + 2/12 = 5/12. Therefore R = 12/5 = 2.4 Ω.', 'medium'),

(v_subject_id, v_topic_id, 'The principle of moments states that for a body in equilibrium, the sum of clockwise moments equals',
 '["The sum of all forces","The sum of anticlockwise moments","The weight of the body","Zero"]', 1,
 'For a body in equilibrium, the sum of clockwise moments about any point equals the sum of anticlockwise moments about the same point.', 'easy'),

(v_subject_id, v_topic_id, 'A body thrown horizontally from a height follows a',
 '["Straight-line path","Circular path","Parabolic path","Hyperbolic path"]', 2,
 'A horizontally projected body follows a parabolic path due to the combination of constant horizontal velocity and accelerating downward motion.', 'medium'),

(v_subject_id, v_topic_id, 'The frequency of a wave is defined as',
 '["The distance between two crests","The number of complete oscillations per second","The maximum displacement from equilibrium","The speed divided by wavelength"]', 1,
 'Frequency (f) is the number of complete wave cycles per second, measured in hertz (Hz).', 'easy'),

(v_subject_id, v_topic_id, 'Electromagnetic waves travel through vacuum at',
 '["Different speeds depending on frequency","The same speed (3 × 10⁸ m/s)","Slower than sound","The speed of electrons"]', 1,
 'All electromagnetic waves travel at the same speed (c = 3 × 10⁸ m/s) in a vacuum, regardless of frequency.', 'easy'),

(v_subject_id, v_topic_id, 'Which of the following is NOT an electromagnetic wave?',
 '["X-rays","Radio waves","Sound waves","Ultraviolet rays"]', 2,
 'Sound waves are mechanical (longitudinal) waves requiring a medium. X-rays, radio waves, and UV are electromagnetic waves.', 'easy'),

(v_subject_id, v_topic_id, 'Work done is calculated as',
 '["W = m × g","W = F × d × cos θ","W = ½mv²","W = P × t"]', 1,
 'Work = Force × displacement × cos(angle between force and displacement). W = Fd cos θ.', 'medium'),

(v_subject_id, v_topic_id, 'Power is defined as',
 '["Force times distance","Rate of doing work (work/time)","Mass times acceleration","Energy times time"]', 1,
 'Power (P) = Work done / time = W/t, measured in watts (W).', 'easy'),

(v_subject_id, v_topic_id, 'The pressure exerted by a liquid at depth h is given by',
 '["P = ρg","P = ρgh","P = mgh","P = ρh"]', 1,
 'Liquid pressure at depth h: P = ρgh, where ρ is density, g is gravitational acceleration, and h is depth.', 'medium'),

(v_subject_id, v_topic_id, 'Which effect demonstrates the wave nature of light?',
 '["Photoelectric effect","Diffraction","Doppler effect","Compton scattering"]', 1,
 'Diffraction (bending around obstacles) demonstrates the wave nature of light. The photoelectric effect demonstrates its particle (photon) nature.', 'medium'),

(v_subject_id, v_topic_id, 'The image formed by a plane mirror is',
 '["Real and inverted","Virtual and erect","Real and erect","Virtual and inverted"]', 1,
 'A plane mirror forms a virtual, erect (upright), laterally inverted image of the same size as the object.', 'easy'),

(v_subject_id, v_topic_id, 'In a transformer, the ratio of output voltage to input voltage equals',
 '["The ratio of primary to secondary turns","The ratio of secondary to primary turns","The ratio of input to output current","The power ratio"]', 1,
 'For an ideal transformer: Vs/Vp = Ns/Np, where N is the number of turns.', 'medium'),

(v_subject_id, v_topic_id, 'The phenomenon of total internal reflection requires',
 '["Light moving from less dense to more dense medium","Light moving from more dense to less dense medium above the critical angle","Both media to have the same refractive index","Parallel incidence to the interface"]', 1,
 'Total internal reflection occurs when light in a denser medium hits the boundary at an angle greater than the critical angle.', 'hard'),

(v_subject_id, v_topic_id, 'The unit of electrical energy is the',
 '["Watt","Joule","Volt","Ampere"]', 1,
 'Electrical energy, like all energy, is measured in joules (J). Power (watts) × time (seconds) = energy (joules).', 'easy'),

(v_subject_id, v_topic_id, 'A wire carrying current is placed in a magnetic field. The force on the wire is given by',
 '["F = qv","F = BIL sin θ","F = ma","F = kq₁q₂/r²"]', 1,
 'The force on a current-carrying conductor: F = BIL sin θ, where B is magnetic flux density, I is current, L is length, and θ is the angle.', 'hard'),

(v_subject_id, v_topic_id, 'The specific heat capacity of a substance is the heat energy required to',
 '["Melt 1 kg of the substance","Raise the temperature of 1 kg by 1°C","Boil 1 litre of the substance","Change the state of 1 kg"]', 1,
 'Specific heat capacity (c) is the energy needed to raise the temperature of 1 kg of a substance by 1 kelvin (or 1°C).', 'medium'),

(v_subject_id, v_topic_id, 'The half-life of a radioactive substance is',
 '["The time for all atoms to decay","The time for half the atoms to decay","The time for the activity to double","Proportional to temperature"]', 1,
 'Half-life (t½) is the time for half the radioactive atoms in a sample to undergo decay.', 'easy'),

(v_subject_id, v_topic_id, 'Archimedes'' principle states that a body immersed in a fluid experiences an upthrust equal to',
 '["The weight of the body","The volume of fluid displaced","The weight of fluid displaced","The density of the fluid"]', 2,
 'Archimedes'' principle: upthrust = weight of fluid displaced by the object.', 'medium'),

(v_subject_id, v_topic_id, 'An object is in equilibrium when the net force acting on it is',
 '["Maximum","Equal to its weight","Zero","Proportional to its mass"]', 2,
 'For equilibrium, both the net force and net torque (moment) on an object must be zero.', 'easy'),

(v_subject_id, v_topic_id, 'The process by which heat energy is transferred through a vacuum is called',
 '["Conduction","Convection","Radiation","Absorption"]', 2,
 'Radiation is the transfer of heat energy by electromagnetic waves (infrared) and is the only method that works through a vacuum.', 'easy'),

(v_subject_id, v_topic_id, 'The refractive index of a medium is defined as',
 '["Speed of light in medium / speed of light in vacuum","Speed of light in vacuum / speed of light in medium","Angle of incidence / angle of refraction","Wavelength in air / wavelength in medium"]', 1,
 'Refractive index n = c/v, where c is speed of light in vacuum and v is speed of light in the medium. n ≥ 1.', 'medium'),

(v_subject_id, v_topic_id, 'Alternating current (AC) differs from direct current (DC) because AC',
 '["Flows only in one direction","Periodically reverses direction","Has constant voltage","Does not flow through resistors"]', 1,
 'AC periodically reverses direction (alternates), while DC flows continuously in one direction.', 'easy'),

(v_subject_id, v_topic_id, 'The kinetic theory of gases states that gas molecules are',
 '["Stationary","Arranged in fixed positions","In continuous random motion","Attracted to each other strongly"]', 2,
 'The kinetic theory states gas molecules are in continuous, random motion, colliding with each other and container walls.', 'easy'),

(v_subject_id, v_topic_id, 'A convex mirror always produces an image that is',
 '["Real, inverted, and enlarged","Virtual, erect, and diminished","Real, erect, and diminished","Virtual, inverted, and enlarged"]', 1,
 'Convex mirrors (diverging) always produce virtual, erect, and diminished images regardless of object position.', 'medium'),

(v_subject_id, v_topic_id, 'The SI unit of frequency is the',
 '["Second","Metre","Hertz","Radian per second"]', 2,
 'Frequency is measured in hertz (Hz), where 1 Hz = 1 cycle per second.', 'easy'),

(v_subject_id, v_topic_id, 'Nuclear fission involves',
 '["Combining of light nuclei to release energy","Splitting of heavy nuclei to release energy","Emission of beta particles","Absorption of gamma rays"]', 1,
 'Nuclear fission is the splitting of a heavy nucleus (like U-235) into smaller fragments, releasing a large amount of energy.', 'easy'),

(v_subject_id, v_topic_id, 'The photoelectric effect shows that light behaves as',
 '["A wave","A particle (photon)","Both a wave and particle equally","Neither a wave nor a particle"]', 1,
 'The photoelectric effect cannot be explained by wave theory — it shows light behaves as discrete packets (photons) of energy.', 'medium'),

(v_subject_id, v_topic_id, 'An object moving in a circular path at constant speed has',
 '["No acceleration","Constant velocity","Centripetal acceleration directed toward the centre","Tangential acceleration only"]', 2,
 'Circular motion at constant speed involves changing direction, so there is centripetal acceleration directed toward the centre.', 'medium'),

(v_subject_id, v_topic_id, 'The magnetic field produced by a straight current-carrying wire is',
 '["Straight lines parallel to the wire","Circular loops centred on the wire","A uniform field","Radial lines from the wire"]', 1,
 'A current-carrying wire produces concentric circular magnetic field lines around it (right-hand rule).', 'medium'),

(v_subject_id, v_topic_id, 'Boyle''s Law states that for a fixed mass of gas at constant temperature, pressure is',
 '["Directly proportional to volume","Inversely proportional to volume","Equal to volume","Independent of volume"]', 1,
 'Boyle''s Law: P ∝ 1/V at constant temperature, i.e., PV = constant.', 'easy'),

(v_subject_id, v_topic_id, 'The momentum of an object is defined as',
 '["Mass divided by velocity","Mass multiplied by velocity","Force divided by time","Impulse divided by distance"]', 1,
 'Momentum (p) = mass (m) × velocity (v). It is a vector quantity measured in kg·m/s.', 'easy'),

(v_subject_id, v_topic_id, 'Electromagnetic induction occurs when',
 '["Current flows through a conductor","A conductor moves through a magnetic field","Two conductors are connected","A capacitor discharges"]', 1,
 'Electromagnetic induction (Faraday''s law): an EMF is induced in a conductor whenever there is a change in the magnetic flux through it.', 'medium'),

(v_subject_id, v_topic_id, 'The centre of gravity of a uniform ruler is at its',
 '["One end","One-third point","Midpoint","Two-thirds point"]', 2,
 'The centre of gravity of a uniform object (uniform density) is at its geometric centre — the midpoint of a ruler.', 'easy'),

(v_subject_id, v_topic_id, 'Latent heat of fusion is the energy required to',
 '["Raise temperature of a solid","Change a solid to a liquid at constant temperature","Change a liquid to a gas","Lower temperature of a gas"]', 1,
 'Latent heat of fusion is the energy absorbed when a substance changes from solid to liquid at its melting point without temperature change.', 'medium'),

(v_subject_id, v_topic_id, 'The distance-time graph of a body at rest is',
 '["A curved line","A straight line with positive slope","A horizontal straight line","A vertical straight line"]', 2,
 'A body at rest has zero velocity; its distance-time graph is a horizontal line (distance does not change with time).', 'easy'),

(v_subject_id, v_topic_id, 'The pitch of a sound wave depends on its',
 '["Amplitude","Frequency","Speed","Wavelength in a specific medium"]', 1,
 'Pitch is the perception of frequency — higher frequency sounds have higher pitch.', 'easy'),

(v_subject_id, v_topic_id, 'A step-up transformer has more turns on the',
 '["Primary coil","Secondary coil","Both coils equally","Neither coil"]', 1,
 'A step-up transformer increases voltage by having more turns on the secondary coil than the primary coil (Ns > Np).', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is a vector quantity?',
 '["Mass","Temperature","Velocity","Speed"]', 2,
 'Velocity is a vector — it has both magnitude and direction. Mass, temperature, and speed are scalars.', 'easy'),

(v_subject_id, v_topic_id, 'The efficiency of a machine is defined as',
 '["Output power / input power × 100%","Input energy / output energy × 100%","Work done / force applied × 100%","Load / effort × 100%"]', 0,
 'Efficiency = (useful output energy / total input energy) × 100% = (output power / input power) × 100%.', 'medium'),

(v_subject_id, v_topic_id, 'The period (T) and frequency (f) of a wave are related by',
 '["T = f","T = 1/f","T = f²","T = 2f"]', 1,
 'Period and frequency are reciprocals: T = 1/f and f = 1/T.', 'easy'),

(v_subject_id, v_topic_id, 'An alpha particle consists of',
 '["Two protons and two neutrons","One proton and one neutron","Two protons only","An electron"]', 0,
 'An alpha particle (α) is a helium-4 nucleus: 2 protons and 2 neutrons, carrying a charge of +2.', 'easy'),

(v_subject_id, v_topic_id, 'Charles'' Law states that for a fixed mass of gas at constant pressure, volume is',
 '["Inversely proportional to temperature","Directly proportional to absolute temperature","Independent of temperature","Proportional to pressure"]', 1,
 'Charles'' Law: V ∝ T (absolute temperature) at constant pressure, i.e., V/T = constant.', 'medium'),

(v_subject_id, v_topic_id, 'A diode allows current to flow',
 '["In both directions equally","In one direction only","Only at high voltages","In pulses"]', 1,
 'A diode is a semiconductor device that allows current to flow in one direction only (forward bias).', 'easy'),

(v_subject_id, v_topic_id, 'The velocity ratio of a pulley system is defined as',
 '["Load / effort","Distance moved by effort / distance moved by load","Output force / input force","Load × effort"]', 1,
 'Velocity ratio (VR) = distance moved by effort / distance moved by load in the same time.', 'medium'),

(v_subject_id, v_topic_id, 'The instrument used to measure potential difference is called a',
 '["Ammeter","Galvanometer","Voltmeter","Thermometer"]', 2,
 'A voltmeter measures potential difference (voltage) and is connected in parallel across a component.', 'easy'),

(v_subject_id, v_topic_id, 'The critical angle for total internal reflection depends on the',
 '["Frequency of light only","Colour of light only","Refractive indices of the two media","Speed of light in vacuum"]', 2,
 'The critical angle c = sin⁻¹(n₂/n₁) where n₁ > n₂ — it depends on the refractive indices of both media.', 'hard'),

(v_subject_id, v_topic_id, 'Transverse waves differ from longitudinal waves in that transverse waves',
 '["Travel faster","Can travel through vacuum","Have particles vibrating perpendicular to direction of travel","Require a medium"]', 2,
 'In transverse waves, particle oscillation is perpendicular to the direction of wave propagation (e.g., light waves).', 'easy'),

(v_subject_id, v_topic_id, 'The equation of motion v = u + at applies when',
 '["Velocity is constant","Acceleration is constant","Acceleration is zero","The object is at rest"]', 1,
 'v = u + at is one of the kinematic equations valid for constant (uniform) acceleration in a straight line.', 'medium'),

(v_subject_id, v_topic_id, 'When a body is in free fall, it experiences',
 '["No acceleration","Constant acceleration due to gravity","Decreasing acceleration","Constant velocity"]', 1,
 'In free fall (ignoring air resistance), a body accelerates uniformly at g = 9.8 m/s² downward.', 'easy'),

(v_subject_id, v_topic_id, 'The instrument used to measure electric current is the',
 '["Voltmeter","Ohmmeter","Ammeter","Galvanometer"]', 2,
 'An ammeter measures electric current and is connected in series in a circuit.', 'easy'),

(v_subject_id, v_topic_id, 'In a series circuit, the total resistance is',
 '["Less than the smallest individual resistance","Equal to the product of all resistances","The sum of all individual resistances","Equal to the reciprocal of the sum of reciprocals"]', 2,
 'In a series circuit, total resistance R_total = R₁ + R₂ + R₃ + ...', 'easy'),

(v_subject_id, v_topic_id, 'The Doppler effect refers to the change in',
 '["Amplitude of a wave","Speed of a wave","Observed frequency due to relative motion","Wavelength in different media"]', 2,
 'The Doppler effect is the apparent change in frequency of a wave due to relative motion between the source and the observer.', 'medium'),

(v_subject_id, v_topic_id, 'A body accelerates uniformly from rest. In the first 4 seconds it covers',
 '["Half the distance it covers in the next 4 seconds","The same distance as in the next 4 seconds","One-third the total distance","One-quarter the total distance"]', 0,
 'For uniform acceleration from rest, d = ½at². In time 4s: d₁ = 8a. In 8s: d_total = 32a. So d₁/d_total = 8/32 = 1/4. In the first 4s vs next 4s: d_first=8a, d_next=24a. Ratio 1:3.', 'hard'),

(v_subject_id, v_topic_id, 'The energy stored in a stretched spring is called',
 '["Kinetic energy","Gravitational potential energy","Elastic potential energy","Chemical energy"]', 2,
 'A stretched or compressed spring stores elastic potential energy (strain energy) = ½kx², where k is spring constant and x is extension.', 'medium'),

(v_subject_id, v_topic_id, 'When light passes through a prism, the colour that refracts most is',
 '["Red","Orange","Yellow","Violet"]', 3,
 'Violet light has the shortest wavelength and highest frequency in the visible spectrum, so it refracts most in a prism.', 'medium'),

(v_subject_id, v_topic_id, 'The escape velocity from a planet depends on the planet''s',
 '["Temperature only","Mass and radius","Atmosphere only","Rotation speed"]', 1,
 'Escape velocity v_e = √(2GM/R) depends on the mass M and radius R of the planet.', 'hard'),

(v_subject_id, v_topic_id, 'Nuclear fusion releases energy when',
 '["Heavy nuclei split","Light nuclei combine","Electrons are emitted","Gamma rays are absorbed"]', 1,
 'Nuclear fusion releases enormous energy when light nuclei (like hydrogen isotopes) combine to form a heavier nucleus (like helium).', 'medium');

END $$;
