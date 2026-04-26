
/*
  # Physics Notes — Topics 6 to 10
  
  Adds comprehensive, Aki Ola-style notes for:
  6. Magnetism and Electromagnetism
  7. Work, Energy and Power
  8. Pressure and Fluids
  9. Radioactivity and Nuclear Physics
  10. Motion and Graphs
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';

  -- =============================================
  -- TOPIC 6: MAGNETISM AND ELECTROMAGNETISM
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Magnetism and Electromagnetism';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Magnets and Magnetic Fields', $CONTENT$
MAGNETISM AND ELECTROMAGNETISM — WASSCE PHYSICS

MAGNETS:
A magnet is a material that attracts magnetic materials (iron, nickel, cobalt, and their alloys).
Permanent magnets: Retain magnetism indefinitely (bar magnet, horseshoe magnet, compass needle).
Temporary magnets: Are magnetic only while in a magnetic field (soft iron in a solenoid).

POLES OF A MAGNET:
Every magnet has a north-seeking pole (N) and a south-seeking pole (S).
LIKE poles REPEL; UNLIKE poles ATTRACT.
You can NEVER isolate a single pole — cutting a magnet always creates two new magnets with two poles each.

MAGNETIC FIELD:
The region around a magnet where a magnetic force can be detected.
Represented by field lines (lines of force):
- Direction: from N pole to S pole (OUTSIDE the magnet); from S to N inside.
- Closer field lines → stronger field.
- Field lines NEVER cross each other.
- Neutral point: where two magnetic fields cancel; field strength = 0.

MAGNETIC MATERIALS:
Ferromagnetic: Strongly attracted to magnets; can be magnetised (iron, nickel, cobalt, steel).
Paramagnetic: Weakly attracted to magnets.
Diamagnetic: Weakly repelled by magnets.

METHODS OF MAGNETISATION:
1. Stroking with a magnet: Stroke the steel bar in one direction with one pole of a magnet repeatedly. Simple but weak magnet produced.
2. Electrical method: Place bar inside a solenoid (coil of wire) carrying direct current (DC). More uniform, stronger magnet. Reversing current reverses polarity.

METHODS OF DEMAGNETISATION:
1. Heating: Heating above the Curie temperature (768°C for iron) — random thermal motion disrupts domain alignment.
2. Mechanical shock (hammering, dropping): Vibration disrupts domain alignment.
3. Alternating current (AC): Pass AC through a solenoid around the magnet, then slowly withdraw it — domains are continuously reversed until randomly oriented.

DOMAIN THEORY:
Magnetic materials consist of tiny regions called MAGNETIC DOMAINS, each of which acts as a tiny magnet.
Unmagnetised: Domains are randomly oriented → magnetic effects cancel.
Magnetised: Domains are aligned in one direction → net magnetic field.
Magnets can become weaker if dropped or heated (domains become misaligned).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Electromagnetism: Current and Magnetic Field', $CONTENT$
ELECTROMAGNETISM

MAGNETIC EFFECT OF ELECTRIC CURRENT:
An electric current creates a magnetic field around it. (Discovered by Oersted, 1820)

STRAIGHT WIRE:
Field forms CONCENTRIC CIRCLES around the wire.
Direction: Right-hand rule — if thumb points in direction of current, fingers curl in direction of field (right-hand grip rule).
Or: Corkscrew/clock rule — looking along the current direction, field is anticlockwise.

SOLENOID (Coil):
A cylindrical coil of wire carrying current acts like a bar magnet — has a N pole and S pole.
Field INSIDE: uniform, parallel lines → very strong uniform field.
Field OUTSIDE: similar to a bar magnet.
N pole identification: Looking at end where current flows anticlockwise → that end is N pole. (or Right Hand Rule: curl fingers in direction of current flow, thumb points to N pole)
Increasing current, number of turns, or inserting iron core → increases field strength.

ELECTROMAGNET:
A solenoid with a soft iron core. When current flows, it acts as a magnet; when current stops, it loses magnetism (soft iron doesn't retain magnetism well — temporary magnet).
Uses: Electric bells, relays, scrap yard cranes, loudspeakers, MRI scanners, motors.

FORCE ON A CURRENT-CARRYING CONDUCTOR IN A MAGNETIC FIELD:
F = BIL
where F = force (N), B = magnetic flux density (T, Tesla), I = current (A), L = length of conductor in field (m)
Direction: Fleming's Left-Hand Rule (for motors):
- Forefinger → magnetic Field direction (N to S)
- seCond/Middle finger → Current direction (conventional)
- Thumb → Motion/Thrust direction (force on wire)

THE MOTOR EFFECT:
A current-carrying conductor in a magnetic field experiences a force.
Applications: DC motor, galvanometer, loudspeaker.

DC ELECTRIC MOTOR:
A current-carrying coil in a magnetic field rotates.
Components: coil (armature), permanent magnet, commutator (split-ring — reverses current every half turn to keep rotation in same direction), brushes (carbon contacts that rub on commutator).
Energy conversion: Electrical energy → Kinetic (mechanical) energy.
Increasing motor speed: increase current, stronger magnet, more turns on coil.

LOUDSPEAKER:
A coil attached to a paper cone sits in a magnetic field. Alternating current through the coil causes it to vibrate back and forth (alternating forces), which vibrates the cone → creates sound waves.

THE GALVANOMETER:
A sensitive current-detecting instrument. A coil in a magnetic field deflects when current flows through it. Deflection proportional to current.
Converted to: Ammeter (low resistance shunt in parallel) or Voltmeter (high resistance multiplier in series).
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Electromagnetic Induction, Transformers, and Applications', $CONTENT$
ELECTROMAGNETIC INDUCTION

FARADAY'S LAW:
"When the magnetic flux through a conductor changes, an electromotive force (EMF) is induced in the conductor. The magnitude of the induced EMF is proportional to the rate of change of magnetic flux."

EMF = −N × ΔΦ/Δt (Faraday-Lenz law; N = number of turns; Φ = magnetic flux)
Or simply: EMF induced ∝ rate of change of flux linkage.

Ways to induce EMF:
1. Moving a conductor through a magnetic field.
2. Moving a magnet into/out of a coil.
3. Changing the current (and hence field) in a nearby coil (mutual inductance).
4. Rotating a coil in a magnetic field (AC generator).

LENZ'S LAW:
"The direction of the induced current is such that its magnetic effect OPPOSES the change that caused it."
This is a consequence of conservation of energy — you must do work to overcome the opposing force.
Example: When a magnet is pushed into a coil, the induced current creates a N pole facing the approaching magnet → repels it. Work done against this force = electrical energy generated.

FLEMING'S RIGHT-HAND RULE (for generators):
- Forefinger → magnetic Field
- seCond/Middle finger → induced Current
- Thumb → Motion of conductor

AC GENERATOR (Alternator):
A coil rotates in a magnetic field → continuously changing flux → sinusoidal EMF induced.
Components: coil, permanent magnet (or electromagnet), slip rings (allow continuous rotation), brushes.
The EMF varies sinusoidally: e = E₀ sin(2πft) where E₀ = peak EMF, f = frequency of rotation.
Output: Alternating current (AC).

DC GENERATOR:
Same as AC generator but uses COMMUTATOR instead of slip rings → current always flows in one direction (pulsed DC).

TRANSFORMERS:
A transformer changes the voltage of AC electricity.
Primary coil (n_p turns) → iron core → Secondary coil (n_s turns).
Transformer equation: V_p/V_s = n_p/n_s = I_s/I_p
Step-up transformer: n_s > n_p → V_s > V_p (increases voltage, decreases current).
Step-down transformer: n_s < n_p → V_s < V_p (decreases voltage, increases current).
Ideal transformer: Power in = Power out: V_p I_p = V_s I_s (100% efficient).

POWER TRANSMISSION:
Electricity is transmitted at HIGH VOLTAGE (low current) over long distances to reduce power loss.
Power loss in cables: P_loss = I²R. Smaller I → much smaller P_loss (quadratic relationship!).
Step up at power station (11 kV → 400 kV+) → transmit over pylons → step down at local substations (400 kV → 230 V for homes).
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Magnetism and Electromagnetism', $CONTENT$
WORKED EXAMPLES — MAGNETISM AND ELECTROMAGNETISM

EXAMPLE 1 — Force on a Conductor:
A straight wire of length 25 cm carries a current of 8 A. It is placed perpendicular to a magnetic field of flux density 0.3 T.
Calculate the force on the wire.

SOLUTION:
F = BIL = 0.3 × 8 × 0.25 = 0.6 N

EXAMPLE 2 — Transformer Calculation:
A transformer has 500 turns on its primary coil and 50 turns on its secondary.
The primary voltage is 240 V. Calculate:
(a) The secondary voltage.
(b) The secondary current if the primary current is 0.5 A.
(c) Is this a step-up or step-down transformer?

SOLUTION:
(a) V_s/V_p = n_s/n_p → V_s = V_p × (n_s/n_p) = 240 × (50/500) = 24 V

(b) V_p I_p = V_s I_s (ideal transformer)
    I_s = (V_p × I_p)/V_s = (240 × 0.5)/24 = 5 A

(c) V_s (24 V) < V_p (240 V) → Step-DOWN transformer. Voltage decreased; current increased.

EXAMPLE 3 — Power Transmission:
Explain why electrical energy is transmitted at high voltage. 
If 1000 kW is transmitted at 100 V, and the cable resistance is 0.1 Ω, calculate the power loss.
Compare with transmitting the same power at 10,000 V.

SOLUTION:
At 100 V: I = P/V = 1,000,000/100 = 10,000 A
P_loss = I²R = (10,000)² × 0.1 = 10,000,000 W = 10,000 kW (MORE power lost than transmitted!)

At 10,000 V: I = P/V = 1,000,000/10,000 = 100 A
P_loss = I²R = (100)² × 0.1 = 1000 W = 1 kW (only 0.1% power loss)

Conclusion: High voltage transmission reduces current → dramatically reduces power loss (which is ∝ I²).

EXAMPLE 4 — Electromagnetic Induction:
A coil of 200 turns has its magnetic flux change from 0.04 Wb to 0.01 Wb in 0.5 seconds.
Calculate the induced EMF.

SOLUTION:
ΔΦ = 0.04 − 0.01 = 0.03 Wb; Δt = 0.5 s; N = 200
EMF = N × ΔΦ/Δt = 200 × 0.03/0.5 = 200 × 0.06 = 12 V

EXAMPLE 5 — Lenz's Law Application:
When a magnet is pushed into a coil:
(a) What happens to the flux through the coil?
(b) What does Lenz's Law predict about the direction of induced current?
(c) How does this relate to energy conservation?

SOLUTION:
(a) As the magnet is pushed in, the magnetic flux through the coil INCREASES.
(b) Lenz's Law: The induced current opposes the change (the increase in flux). The induced current creates a magnetic field that OPPOSES the increasing flux. Looking at the end the magnet enters, the induced current flows anticlockwise → creates a N pole facing the approaching N pole of the magnet → repels it.
(c) Energy conservation: The person pushing the magnet must do work against this repulsive force. This mechanical work is converted into electrical energy (the induced current). Without this opposition (without Lenz's Law), energy would be created from nothing — violating conservation of energy.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Magnetism', $CONTENT$
WASSCE PAST QUESTIONS — MAGNETISM AND ELECTROMAGNETISM

QUESTION 1 (WASSCE 2020, Q5a):
(a) State Faraday's Law of electromagnetic induction.
(b) List THREE ways of increasing the induced EMF in a generator.

ANSWERS:
(a) Faraday's Law: The magnitude of the induced EMF in a circuit is directly proportional to the rate of change of magnetic flux linkage through the circuit.
EMF = −N(ΔΦ/Δt)

(b) Ways to increase induced EMF:
1. Increase the speed of rotation of the coil (or magnet).
2. Increase the number of turns (N) in the coil.
3. Increase the strength of the magnetic field (stronger/bigger magnets).
4. Use an iron core in the coil (concentrates field lines).
(Any three)

QUESTION 2 (WASSCE 2019, Q4c):
A transformer is connected to a 240 V AC supply. It has 1200 turns on the primary and 60 turns on the secondary.
(a) Calculate the secondary voltage.
(b) If the secondary current is 4 A, find the primary current (assume 100% efficiency).

ANSWERS:
(a) V_s = V_p × (n_s/n_p) = 240 × (60/1200) = 240 × 0.05 = 12 V

(b) V_p I_p = V_s I_s (energy conservation in ideal transformer)
    I_p = (V_s × I_s)/V_p = (12 × 4)/240 = 48/240 = 0.2 A

QUESTION 3 (WASSCE 2021, Q2a):
(a) State Fleming's Left-Hand Rule and explain what it is used for.
(b) A straight conductor of length 40 cm is placed at right angles to a magnetic field of 0.5 T. If the current through it is 12 A, calculate the force on the conductor.

ANSWERS:
(a) Fleming's Left-Hand Rule: Hold the left hand with the first finger (forefinger), second finger (middle finger), and thumb mutually at right angles.
- First finger points in the direction of the magnetic Field (N to S)
- Second finger points in the direction of conventional Current
- Thumb points in the direction of the thrust/Motion of the conductor (the force).
Used for: Determining the direction of the force on a current-carrying conductor in a magnetic field (the motor effect); applies to DC electric motors.

(b) F = BIL = 0.5 × 12 × 0.40 = 2.4 N

QUESTION 4 (WASSCE 2022, Q2b):
Explain how an AC generator works. State ONE difference between an AC generator and a DC generator.

ANSWER:
AC Generator: A coil of wire rotates between the poles of a permanent magnet. As the coil rotates, the magnetic flux through it continuously changes → an EMF is induced (Faraday's Law). The direction of the induced current alternates (reverses) every half rotation → alternating current (AC). The current is drawn from the coil via slip rings and brushes (slip rings allow the coil to rotate continuously while maintaining electrical contact).

The EMF varies sinusoidally — it reaches a maximum when the coil plane is parallel to the field (maximum rate of flux change) and is zero when the coil is perpendicular to the field (no change in flux at that instant).

Difference: A DC generator uses a COMMUTATOR (split-ring) instead of slip rings. The commutator reverses the connection every half turn, so the current always flows in the same direction (pulsed DC) through the external circuit. An AC generator uses slip rings → continuous AC.

PRACTICE QUESTIONS:
1. State the difference between a permanent magnet and an electromagnet.
2. What is the purpose of the commutator in a DC motor?

ANSWERS:
1. A permanent magnet retains its magnetism indefinitely without any external power source. An electromagnet is magnetic only while electric current flows through its coil; when current stops, it loses its magnetism. Electromagnets are made with soft iron cores and can be controlled (switched on/off), whereas permanent magnets cannot.
2. The commutator (split-ring) reverses the direction of current through the coil every half turn. This ensures the force on the coil always acts in the same rotational direction, maintaining continuous rotation of the motor. Without it, the coil would oscillate back and forth rather than spinning continuously.
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 7: WORK, ENERGY AND POWER
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Work, Energy and Power';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Work and Energy', $CONTENT$
WORK, ENERGY AND POWER — WASSCE PHYSICS

WORK:
Work is done when a force causes a displacement in the direction of the force.
W = Fd cos θ
where W = work (Joules, J), F = force (N), d = displacement (m), θ = angle between force and displacement.

When force and displacement are in the same direction (θ = 0°): W = Fd (cos 0° = 1)
When force is perpendicular to displacement (θ = 90°): W = 0 (e.g., carrying a box horizontally — no work done against gravity)

1 Joule = 1 Newton × 1 metre = work done when a force of 1 N moves its point of application 1 m in its own direction.

ENERGY:
The capacity to do work. Measured in Joules (J).
Energy is CONSERVED — it cannot be created or destroyed, only converted from one form to another.

FORMS OF ENERGY:
- Kinetic energy (KE): Energy of motion
- Gravitational potential energy (GPE): Energy due to position in a gravitational field
- Elastic potential energy (EPE): Energy stored in stretched/compressed springs
- Chemical energy: Energy stored in chemical bonds (food, fuel, batteries)
- Nuclear energy: Energy stored in atomic nuclei
- Heat/Thermal energy: Internal energy of particles
- Light/Electromagnetic energy: Energy of electromagnetic radiation
- Sound energy: Energy of mechanical waves
- Electrical energy: Energy of moving charges

LAW OF CONSERVATION OF ENERGY:
"Energy cannot be created or destroyed; it can only be changed from one form to another. The total energy of an isolated system remains constant."

KINETIC ENERGY (KE):
KE = ½mv²
where m = mass (kg), v = speed (m/s). Unit: Joules (J).
KE depends on SPEED SQUARED — doubling speed quadruples KE.

GRAVITATIONAL POTENTIAL ENERGY (GPE):
GPE = mgh
where m = mass (kg), g = gravitational field strength (m/s²), h = height above reference level (m).
Choosing the reference level (where h = 0) is arbitrary — only CHANGES in GPE are meaningful.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Power, Efficiency, and Energy Conversion', $CONTENT$
POWER AND EFFICIENCY

POWER:
The rate of doing work (or rate of energy transfer).
P = W/t = Energy/time
Unit: Watt (W). 1 W = 1 J/s.
Also: P = Fv (power = force × velocity, when force and velocity are in the same direction)

Horsepower: 1 hp ≈ 746 W (old unit, still used for car engines).
Kilowatt (kW) = 1000 W; Megawatt (MW) = 10⁶ W; Gigawatt (GW) = 10⁹ W.

EFFICIENCY:
Efficiency = (Useful energy output / Total energy input) × 100%
OR: Efficiency = (Useful power output / Total power input) × 100%

In any real machine, some energy is wasted (mainly as heat due to friction).
No machine is 100% efficient.
The wasted energy is not "destroyed" — it is converted to less useful forms (heat, sound).

ENERGY CONSERVATION IN MECHANICS:
When no friction/air resistance:
Total mechanical energy = KE + GPE = constant
½mv₁² + mgh₁ = ½mv₂² + mgh₂

Example: A ball thrown upward.
At launch: KE = ½mv², GPE = 0 (taking launch point as reference).
At maximum height: KE = 0 (momentarily stationary), GPE = mgh (maximum).
½mv² = mgh → v² = 2gh → h = v²/(2g)

When friction is present:
Initial energy = Final energy + Energy lost to friction/heat
½mu² + mgh₁ = ½mv² + mgh₂ + W_friction

SIMPLE MACHINES:
Machines make work easier by changing the magnitude or direction of a force.
They do NOT save energy — you trade force for distance.

Mechanical Advantage (MA) = Load/Effort = Force output/Force input
Velocity Ratio (VR) = Distance moved by effort/Distance moved by load
Efficiency = MA/VR × 100% (= Useful work output/Work input × 100%)

TYPES OF SIMPLE MACHINES:
1. LEVER: A rigid bar that pivots at a FULCRUM.
   3 classes:
   - Class 1: Fulcrum between effort and load (e.g., see-saw, scissors, crowbar). MA can be >1 or <1.
   - Class 2: Load between fulcrum and effort (e.g., wheelbarrow, nutcracker). MA always >1.
   - Class 3: Effort between fulcrum and load (e.g., tweezers, elbow joint). MA always <1 but VR < 1 (large movement of load for small effort movement).
   
   For Class 1 and 2 levers: Effort × Effort arm = Load × Load arm (moments principle)

2. PULLEY SYSTEMS:
   Single fixed pulley: VR = 1, MA = 1 (changes direction only).
   Block and tackle: VR = number of rope sections supporting the load.
   MA = Load/Effort; Efficiency = MA/VR × 100%.

3. INCLINED PLANE (ramp): VR = Length of slope/Height of slope = 1/sin θ.
   MA > 1 — easier to push a load up a ramp than lift it straight up.

4. SCREW: VR = 2πr/p (where p = pitch of screw, r = radius of handle).
   Very large MA achieved (e.g., car jack, clamps).

5. WHEEL AND AXLE: VR = R/r (R = radius of wheel, r = radius of axle).
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Energy Sources: Renewable and Non-Renewable', $CONTENT$
ENERGY SOURCES

NON-RENEWABLE ENERGY SOURCES:
These are formed over millions of years and cannot be replenished on human timescales.
Once used, they are gone.

FOSSIL FUELS: Coal, oil, natural gas.
- Coal: Burned in power stations → heat → steam → turbines → generators → electricity.
- Oil: Refined into petrol, diesel, kerosene, etc. Used in transport engines.
- Natural gas: Burned for heating and electricity generation.
Environmental problems: CO₂ → greenhouse effect/climate change; SO₂ → acid rain; NOₓ → smog; ash and particulates → air pollution. Limited supply.

NUCLEAR FUEL (Uranium, Plutonium):
Nuclear fission releases enormous energy from very small masses of fuel.
No CO₂ produced during operation.
Problems: Radioactive waste (hazardous for thousands of years); risk of accidents (Chernobyl, Fukushima); expensive to build and decommission.

RENEWABLE ENERGY SOURCES:
These are replenished naturally and will not run out.

1. SOLAR ENERGY:
Photovoltaic (PV) cells: Convert light directly into electricity (silicon semiconductors).
Solar thermal panels: Absorb infrared radiation to heat water.
Advantages: Clean, quiet, no fuel cost. Disadvantages: Intermittent (needs sunlight), low energy density, large area needed.

2. WIND ENERGY:
Wind turbines: Wind rotates blades → drives generator → electricity.
Advantages: Clean, no fuel cost. Disadvantages: Intermittent (needs wind), visual/noise impact, kills birds.

3. HYDROELECTRIC POWER:
Dams create a reservoir of water. Water falls through penstocks → turbines → generators.
Advantages: Reliable, controllable, no emissions. Disadvantages: Flooding of valleys, ecosystem damage, high construction cost.

4. TIDAL ENERGY:
Tidal barrages or tidal stream generators use the movement of tides to drive turbines.

5. GEOTHERMAL ENERGY:
Heat from Earth's interior (volcanoes, hot springs) → steam → turbines → electricity.

6. BIOMASS:
Burning organic material (wood, crop waste, biogas from anaerobic digestion).
Can be carbon-neutral if managed sustainably.

7. WAVE ENERGY:
Sea waves drive oscillating water column devices or mechanical systems.

ENERGY EFFICIENCY IN PRACTICE:
Energy consumption: measured in kilowatt-hours (kWh).
1 kWh = 3.6 MJ = energy used by a 1 kW device in 1 hour.

Energy ratings: A+++ to G (EU ratings) — A+++ is most efficient.
Improving efficiency: LED lighting, insulation, double glazing, hybrid cars, condensing boilers.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Work, Energy and Power', $CONTENT$
WORKED EXAMPLES — WORK, ENERGY AND POWER

EXAMPLE 1 — Work:
A worker pushes a 200 N box horizontally across a floor for 10 m.
(a) Calculate the work done if the push is horizontal.
(b) Calculate the work done if the push is at 30° to the horizontal.

SOLUTION:
(a) W = Fd cos θ = 200 × 10 × cos 0° = 200 × 10 × 1 = 2000 J = 2 kJ

(b) W = Fd cos θ = 200 × 10 × cos 30° = 200 × 10 × 0.866 = 1732 J ≈ 1.73 kJ

EXAMPLE 2 — Conservation of Energy:
A ball of mass 0.5 kg is dropped from a height of 20 m. (g = 10 m/s²)
(a) Calculate the GPE at the top.
(b) Calculate the speed when it reaches the ground (ignoring air resistance).

SOLUTION:
(a) GPE = mgh = 0.5 × 10 × 20 = 100 J

(b) At ground level: all GPE converted to KE (energy conserved, no friction).
    KE = ½mv² = GPE = 100 J
    ½ × 0.5 × v² = 100
    v² = 100/(0.25) = 400
    v = 20 m/s

EXAMPLE 3 — Power:
A pump raises 500 litres of water per minute to a height of 15 m. (g = 10 m/s², density of water = 1000 kg/m³)
(a) Calculate the mass of water raised per minute.
(b) Calculate the useful power output.

SOLUTION:
(a) Volume = 500 L = 0.5 m³; mass = 1000 × 0.5 = 500 kg
(b) Work done per minute = mgh = 500 × 10 × 15 = 75,000 J
    Power = W/t = 75,000/60 = 1250 W = 1.25 kW

EXAMPLE 4 — Efficiency:
A pulley system uses an effort of 40 N to raise a load of 100 N. The effort moves 60 cm while the load moves 20 cm.
Calculate: (a) MA (b) VR (c) efficiency.

SOLUTION:
(a) MA = Load/Effort = 100/40 = 2.5
(b) VR = Effort distance/Load distance = 60/20 = 3
(c) Efficiency = MA/VR × 100% = 2.5/3 × 100% = 83.3%
OR: Efficiency = Useful work out/Work in × 100% = (100 × 0.2)/(40 × 0.6) × 100% = 20/24 × 100% = 83.3% ✓

EXAMPLE 5 — Energy Conversion:
A car of mass 1200 kg travelling at 30 m/s is brought to rest on a level road by brakes.
Calculate: (a) Initial KE (b) Work done by brakes (c) Why doesn't the car gain height?

SOLUTION:
(a) KE = ½mv² = ½ × 1200 × 900 = 540,000 J = 540 kJ

(b) Work done by brakes = Change in KE = 540,000 − 0 = 540,000 J = 540 kJ
(The brakes convert all kinetic energy to heat — this is why brake discs get hot when braking.)

(c) On a level road, there is no change in height → no change in GPE. All KE is converted to heat energy by the friction in the brakes. The car doesn't gain height because there is no mechanism to convert the KE to GPE — it goes straight to heat.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Work, Energy and Power', $CONTENT$
WASSCE PAST QUESTIONS — WORK, ENERGY AND POWER

QUESTION 1 (WASSCE 2020, Q1a):
(a) Define work and state its SI unit.
(b) A man lifts a load of 500 N through a height of 2.5 m in 10 seconds. Calculate his power.

ANSWERS:
(a) Work is done when a force moves its point of application in the direction of the force.
    W = Fd cos θ (when θ is angle between force and displacement)
    SI unit: Joule (J). 1 J = 1 N·m.

(b) Work done = F × d = 500 × 2.5 = 1250 J (force and displacement in same direction: θ = 0°)
    Power = W/t = 1250/10 = 125 W

QUESTION 2 (WASSCE 2019, Q3c):
A ball is thrown vertically upward with an initial speed of 20 m/s. (g = 10 m/s²)
(a) Calculate the maximum height reached.
(b) Using energy conservation, verify your answer.

ANSWERS:
(a) Using v² = u² − 2gh: At max height, v = 0.
    0 = 20² − 2 × 10 × h
    20h = 400
    h = 20 m

(b) Energy method:
    Initial KE = ½mv² = ½m(400) = 200m J
    At max height: all KE → GPE; KE = 0.
    GPE = mgh = m × 10 × h = 10mh
    Conservation: 200m = 10mh (cancel m)
    h = 200/10 = 20 m ✓

QUESTION 3 (WASSCE 2021, Q4c):
(a) Define efficiency.
(b) An electric motor lifts a mass of 80 kg to a height of 6 m in 20 s. The power input to the motor is 350 W. Calculate: (i) useful work output (ii) efficiency.

ANSWERS:
(a) Efficiency = (Useful energy/power output ÷ Total energy/power input) × 100%.
It represents the fraction of input energy that is converted to useful output energy.

(b) (i) Useful work output = mgh = 80 × 10 × 6 = 4800 J
    (ii) Total energy input = P × t = 350 × 20 = 7000 J
    Efficiency = (4800/7000) × 100% = 68.6%

QUESTION 4 (WASSCE 2022, Q5c):
Compare renewable and non-renewable energy sources. Give TWO advantages of renewable energy.

ANSWER:
Non-renewable energy sources (fossil fuels, nuclear): Formed over millions of years; finite supply; will eventually run out; burning fossil fuels releases CO₂ (greenhouse effect), SO₂ (acid rain).

Renewable energy sources (solar, wind, hydro, tidal, geothermal, biomass): Replenished naturally; will not run out; generally produce less/no pollution.

Advantages of renewable energy:
1. Sustainable — they are continuously replenished by natural processes and will not run out.
2. Environmentally friendly — solar, wind, hydro produce no CO₂ or air pollution during operation → reduces greenhouse effect and air pollution.
3. Free fuel — no cost for the energy source (wind, sunlight, flowing water are free).
(Any two)

PRACTICE QUESTIONS:
1. What is the kinetic energy of a 1500 kg car travelling at 20 m/s?
2. State the principle of conservation of energy.

ANSWERS:
1. KE = ½mv² = ½ × 1500 × 400 = 300,000 J = 300 kJ
2. Energy cannot be created or destroyed. It can only be transformed from one form to another. The total energy in an isolated system remains constant.
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 8: PRESSURE AND FLUIDS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Pressure and Fluids';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Pressure in Solids and Fluids', $CONTENT$
PRESSURE AND FLUIDS — WASSCE PHYSICS

PRESSURE IN SOLIDS:
Pressure is the force exerted per unit area.
P = F/A
where P = pressure (Pascals, Pa), F = force (N), A = area (m²)
1 Pa = 1 N/m²

For the same force: smaller area → greater pressure.
Examples:
- Sharp knife cuts better (small area → high pressure).
- Snowshoes: large area → low pressure → don't sink into snow.
- Tractor tyres: wide tyres → large area → low pressure → don't sink into soft soil.
- High-heeled shoes vs flat shoes: stiletto heel exerts much more pressure.

PRESSURE IN LIQUIDS:
Pressure in a liquid at depth h:
P = ρgh
where ρ = density of liquid (kg/m³), g = gravitational field strength (m/s²), h = depth (m)

Key properties of liquid pressure:
1. Increases with DEPTH (more liquid above → more weight → more pressure).
2. Acts equally in ALL DIRECTIONS at any given point.
3. Does NOT depend on the shape of the container.
4. Depends on the DENSITY of the liquid — denser liquid → more pressure at same depth.
5. Pressure at the same horizontal level is the SAME throughout a connected liquid.

ATMOSPHERIC PRESSURE:
The weight of the air column above us creates atmospheric pressure.
Standard atmospheric pressure: P₀ = 101,325 Pa ≈ 101 kPa ≈ 1 atm.
Altitude increases → less air above → lower atmospheric pressure.
Measured using a barometer.
Standard atmosphere = 760 mm Hg = 76 cm Hg.

ABSOLUTE vs GAUGE PRESSURE:
Absolute pressure = Gauge pressure + Atmospheric pressure
P_absolute = P_gauge + P_atmosphere
Gauge pressure: measured relative to atmospheric pressure (what a tyre gauge reads).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Pascal''s Principle, Archimedes'' Principle, and Flotation', $CONTENT$
PASCAL'S PRINCIPLE AND ARCHIMEDES' PRINCIPLE

PASCAL'S PRINCIPLE:
"Pressure applied to an enclosed fluid is transmitted equally and undiminished in all directions throughout the fluid."

Application — HYDRAULIC SYSTEMS:
Pressure = F₁/A₁ = F₂/A₂
F₂ = F₁ × (A₂/A₁)

If A₂ >> A₁ → F₂ >> F₁ (large force from small force).

HYDRAULIC PRESS/JACK:
Small force applied to small piston → pressure transmitted → large force at large piston.
Used in car brakes, hydraulic lifts, car jacks, dental chairs, aircraft controls.

Example: Small piston area = 5 cm², large piston area = 100 cm². Force applied = 50 N.
Pressure = 50/5 = 10 Pa. Force at large piston = 10 × 100 = 1000 N. (Mechanical advantage = 20)

Note: Although force is multiplied, work is NOT: the large piston moves a shorter distance. W_in = W_out (conservation of energy).

ARCHIMEDES' PRINCIPLE:
"When a body is wholly or partially immersed in a fluid, it experiences an upthrust (buoyant force) equal to the weight of the fluid displaced."

Upthrust (U) = Weight of fluid displaced
U = ρ_fluid × g × V_submerged
where V_submerged = volume of object below surface.

APPARENT WEIGHT:
An object immersed in a fluid appears lighter.
Apparent weight = Actual weight − Upthrust (buoyancy)

DETERMINING DENSITY USING ARCHIMEDES' PRINCIPLE:
Density of object = (Weight in air) / (Weight in air − Weight in fluid) × ρ_fluid

LAWS OF FLOTATION:
1. A floating body displaces its own WEIGHT of fluid (not its own volume).
2. A body floats when the upthrust ≥ its weight.
3. A body sinks when its weight > maximum upthrust (upthrust when fully submerged = weight of its own volume of fluid).

CONDITIONS FOR FLOATING:
Body floats if: ρ_object ≤ ρ_fluid
Body sinks if: ρ_object > ρ_fluid

A ship is made of steel (dense) but floats because its hull traps air → overall density (steel + air) is less than water.

SUBMARINES:
Control depth using ballast tanks. Fill tanks with water → denser → sinks. Pump out water → less dense → rises.

HYDROMETERS:
Float to measure the density of liquids. Mark at the bottom → floats high → low density liquid. Mark at top → floats low → high density liquid.
Used to measure: Battery acid concentration, alcohol content, salt content, milk quality.

CAPILLARY ACTION:
The rise or fall of a liquid in a narrow tube due to surface tension and adhesive forces.
Water rises in narrow glass tubes (adhesive forces between water and glass > cohesive forces within water).
Mercury falls in glass tubes (cohesive forces > adhesive forces).
Applications: water rises in plant stems (transpiration pull aided by capillarity), ink rises in a fountain pen, damp rising in walls.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Gas Pressure and the Gas Laws', $CONTENT$
GAS PRESSURE AND GAS LAWS

GAS PRESSURE:
Caused by the continuous random bombardment of the container walls by gas molecules.
Increased by: more molecules (more gas), faster molecules (higher temperature).

BOYLE'S LAW:
"At constant temperature, the pressure of a fixed mass of gas is inversely proportional to its volume."
P ∝ 1/V (at constant T and mass)
P₁V₁ = P₂V₂ (at constant temperature)

CHARLES'S LAW:
"At constant pressure, the volume of a fixed mass of gas is directly proportional to its absolute temperature (in Kelvin)."
V ∝ T (at constant P and mass)
V₁/T₁ = V₂/T₂ (at constant pressure) — must use KELVIN temperature!

GAY-LUSSAC'S LAW (Pressure Law):
"At constant volume, the pressure of a fixed mass of gas is directly proportional to its absolute temperature."
P ∝ T (at constant V and mass)
P₁/T₁ = P₂/T₂ (at constant volume) — must use KELVIN!

COMBINED GAS LAW:
P₁V₁/T₁ = P₂V₂/T₂
(applies when none of P, V, T is constant)

IDEAL GAS EQUATION:
PV = nRT
where n = number of moles, R = universal gas constant = 8.314 J/mol/K

ABSOLUTE ZERO:
At 0 K (−273°C): All molecular kinetic energy ceases; minimum possible temperature; pressure and volume of an ideal gas would be zero.
Real gases liquefy before reaching 0 K.

BAROMETER:
Measures atmospheric pressure.
Mercury barometer (Torricelli): A glass tube filled with mercury, inverted in a trough of mercury. Mercury column is supported by atmospheric pressure.
At sea level: mercury column height ≈ 760 mm = 76 cm.
P_atmosphere = ρgh = 13,600 × 10 × 0.76 = 103,360 Pa ≈ 101,325 Pa ✓

MANOMETER:
Measures the pressure of a gas by comparing it to atmospheric pressure.
Open manometer: one end open to atmosphere.
If gas pressure > atmospheric: liquid level on gas side is LOWER.
If gas pressure < atmospheric: liquid level on gas side is HIGHER.

PRESSURE GAUGES:
Bourdon gauge: Measures gauge pressure. Curved metal tube straightens under pressure → pointer moves.
Tyres, gas cylinders, water mains — all use Bourdon gauges.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Pressure and Fluids', $CONTENT$
WORKED EXAMPLES — PRESSURE AND FLUIDS

EXAMPLE 1 — Pressure:
A box exerts a force of 600 N on the floor. Its base area is 0.3 m².
(a) Calculate the pressure.
(b) If the box is tilted to rest on a smaller face of area 0.1 m², what is the new pressure?

SOLUTION:
(a) P = F/A = 600/0.3 = 2000 Pa = 2 kPa

(b) P = F/A = 600/0.1 = 6000 Pa = 6 kPa
(Same force, smaller area → 3× greater pressure)

EXAMPLE 2 — Liquid Pressure:
Calculate the pressure at a depth of 8 m in seawater. Density of seawater = 1025 kg/m³. (g = 10 m/s²)

SOLUTION:
P = ρgh = 1025 × 10 × 8 = 82,000 Pa = 82 kPa

Total absolute pressure = gauge pressure + atmospheric pressure = 82,000 + 101,325 = 183,325 Pa ≈ 183 kPa

EXAMPLE 3 — Archimedes' Principle:
A metal block weighs 50 N in air and 35 N when fully submerged in water.
(a) Calculate the upthrust.
(b) Calculate the volume of the block. (ρ_water = 1000 kg/m³, g = 10 m/s²)
(c) Calculate the density of the metal.

SOLUTION:
(a) Upthrust = Weight in air − Apparent weight in water = 50 − 35 = 15 N

(b) Upthrust = ρ_water × g × V
    15 = 1000 × 10 × V
    V = 15/10,000 = 1.5 × 10⁻³ m³ = 1500 cm³

(c) Mass of block = Weight/g = 50/10 = 5 kg
    Density = m/V = 5/(1.5 × 10⁻³) = 3333 kg/m³

EXAMPLE 4 — Hydraulic System:
A hydraulic jack has a small piston of area 2 cm² and a large piston of area 50 cm².
An effort of 100 N is applied to the small piston.
(a) Calculate the pressure transmitted.
(b) Calculate the force on the large piston.

SOLUTION:
(a) P = F/A = 100/(2 × 10⁻⁴) = 500,000 Pa = 500 kPa

(b) F_large = P × A_large = 500,000 × (50 × 10⁻⁴) = 500,000 × 5 × 10⁻³ = 2500 N
    OR: F₂ = F₁ × A₂/A₁ = 100 × 50/2 = 2500 N. MA = 2500/100 = 25.

EXAMPLE 5 — Gas Laws:
A gas occupies 2.0 L at 300 K and 100 kPa.
What volume will it occupy at 400 K and 150 kPa?

SOLUTION:
Using combined gas law: P₁V₁/T₁ = P₂V₂/T₂
V₂ = P₁V₁T₂/(T₁P₂) = (100 × 2.0 × 400)/(300 × 150) = 80,000/45,000 = 1.78 L
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Pressure and Fluids', $CONTENT$
WASSCE PAST QUESTIONS — PRESSURE AND FLUIDS

QUESTION 1 (WASSCE 2020, Q3a):
(a) State Archimedes' Principle.
(b) A block of wood of volume 200 cm³ floats with 60% of its volume submerged in water. Calculate: (i) the upthrust on the wood, (ii) the density of the wood. (ρ_water = 1000 kg/m³, g = 10 m/s²)

ANSWERS:
(a) Archimedes' Principle: When a body is wholly or partially immersed in a fluid, it experiences an upthrust (buoyant force) equal to the weight of fluid displaced by the body.

(b) (i) Volume submerged = 60% × 200 = 120 cm³ = 120 × 10⁻⁶ m³
    Weight of water displaced = ρ_w × g × V_sub = 1000 × 10 × 120 × 10⁻⁶ = 1.2 N
    Upthrust = 1.2 N

    (ii) Since the wood floats: Upthrust = Weight of wood
    Mass of wood = 1.2/10 = 0.12 kg
    Density of wood = m/V = 0.12/(200 × 10⁻⁶) = 600 kg/m³

QUESTION 2 (WASSCE 2019, Q2c):
State FOUR properties of pressure in liquids.

ANSWER:
1. Pressure in a liquid increases with depth (P = ρgh).
2. At any given depth, pressure acts equally in all directions.
3. Pressure does not depend on the shape of the container (Pascal's law).
4. At the same horizontal level, pressure is the same throughout a connected fluid.
5. Pressure depends on the density of the liquid — denser liquid → higher pressure at same depth.
(Any FOUR)

QUESTION 3 (WASSCE 2021, Q1c):
(a) State Boyle's Law.
(b) A gas has a volume of 6.0 L at a pressure of 100 kPa. What is the pressure if the volume is reduced to 2.0 L at constant temperature?

ANSWERS:
(a) Boyle's Law: At constant temperature, the pressure of a fixed mass of gas is inversely proportional to its volume. P ∝ 1/V, or P₁V₁ = P₂V₂.

(b) P₁V₁ = P₂V₂ (constant temperature)
    100 × 6.0 = P₂ × 2.0
    P₂ = 600/2.0 = 300 kPa

QUESTION 4 (WASSCE 2022, Q4a):
(a) A hydraulic brake system has a master cylinder piston of area 5 cm² and brake cylinder pistons of area 20 cm² each. A force of 200 N is applied to the master cylinder. Calculate the force on each brake piston.
(b) State ONE application of Pascal's Principle.

ANSWERS:
(a) Pressure in hydraulic system = F/A = 200/(5 × 10⁻⁴) = 400,000 Pa
    Force on each brake piston = P × A = 400,000 × (20 × 10⁻⁴) = 800 N
    OR: F₂ = F₁ × A₂/A₁ = 200 × (20/5) = 200 × 4 = 800 N

(b) Applications of Pascal's Principle: Hydraulic car brakes, hydraulic jack/lift, hydraulic press, dentist's chair mechanism, aircraft control systems, power steering.

PRACTICE QUESTIONS:
1. Why do deep-sea divers need pressure suits?
2. Why does a needle sink in water even though its density is less than steel might suggest?

ANSWERS:
1. Deep-sea divers need pressure suits because water pressure increases with depth (P = ρgh). At great depths, the pressure is so high it would crush the human body and make breathing impossible without a pressurised suit that maintains internal pressure close to surface atmospheric pressure.
2. A steel needle sinks because (a) its density (7800 kg/m³) is much greater than water (1000 kg/m³) — the weight of water it displaces is much less than its weight, so the upthrust is insufficient to support it. (Steel needles can float if placed very carefully due to surface tension, but with normal placement they sink.) The question might be about a wooden needle — wood (density ~600 kg/m³) floats because its density is less than water.
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 9: RADIOACTIVITY AND NUCLEAR PHYSICS (Physics version)
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Radioactivity and Nuclear Physics';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: The Atom and Radioactivity', $CONTENT$
RADIOACTIVITY AND NUCLEAR PHYSICS — WASSCE PHYSICS

THE NUCLEAR MODEL OF THE ATOM:
At the centre: tiny, dense, positive NUCLEUS containing protons and neutrons.
Around the nucleus: electrons orbit in shells/energy levels.

SUBATOMIC PARTICLES:
Proton: Relative mass = 1; relative charge = +1; found in nucleus.
Neutron: Relative mass = 1; relative charge = 0; found in nucleus.
Electron: Relative mass = 1/1836 (≈ 0); relative charge = −1; found in shells around nucleus.

Atomic (proton) number (Z): Number of protons in nucleus. Determines what element it is.
Mass number (A): Total number of protons + neutrons in nucleus.
Number of neutrons = A − Z

Notation: ₍Z₎ᴬX (e.g., ₆¹²C = carbon-12; has 6 protons, 6 neutrons)

ISOTOPES:
Atoms of the SAME element (same Z) but with different numbers of neutrons (different A).
Same chemical properties (same number of electrons/protons) but different physical properties (different mass).
Examples: ₁H (protium, no neutrons), ₁²H (deuterium, 1 neutron), ₁³H (tritium, 2 neutrons).

RADIOACTIVITY:
The spontaneous emission of radiation from the nuclei of unstable atoms.
Spontaneous: Does NOT depend on temperature, pressure, or chemical state.
Random: Cannot predict which specific nucleus will decay next; only probabilities can be given.

TYPES OF RADIATION:
Alpha (α): Helium nucleus (₂⁴He); charge +2; mass 4.
Beta (β⁻): High-energy electron; charge −1; mass ≈ 0. (From nucleus: neutron → proton + electron)
Gamma (γ): High-frequency electromagnetic radiation; no charge; no mass.

PENETRATING POWER (increasing order):
Alpha (least): stopped by paper, skin, few cm of air.
Beta (medium): stopped by a few mm of aluminium.
Gamma (most): requires several cm of lead or metres of concrete to significantly reduce.

IONISING ABILITY (decreasing order: most first):
Alpha > Beta > Gamma
Alpha is most ionising (it interacts strongly with air molecules despite low penetration).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Radioactive Decay, Half-Life, and Nuclear Equations', $CONTENT$
RADIOACTIVE DECAY AND HALF-LIFE

ALPHA (α) DECAY:
Nucleus loses a helium nucleus (₂⁴He).
Mass number decreases by 4; atomic number decreases by 2.
Example: ₉₂²³⁸U → ₉₀²³⁴Th + ₂⁴He

BETA MINUS (β⁻) DECAY:
A neutron in the nucleus converts to a proton, emitting an electron (beta particle) and an antineutrino.
Mass number unchanged; atomic number increases by 1.
Example: ₆²³C → ₇²³N + ₋₁⁰e

BETA PLUS (β⁺) DECAY (Positron emission):
A proton converts to a neutron, emitting a positron (same mass as electron but +1 charge).
Mass number unchanged; atomic number decreases by 1.

GAMMA (γ) EMISSION:
Usually accompanies α or β decay. Nucleus releases excess energy as a gamma photon.
No change in mass number or atomic number.

NUCLEAR EQUATION RULES:
Top numbers (mass numbers) must balance on both sides.
Bottom numbers (atomic numbers) must balance on both sides.

HALF-LIFE (t₁/₂):
The time taken for HALF the radioactive nuclei in a sample to decay.
Equivalently: time for activity to drop to half its initial value.
The half-life is CONSTANT and characteristic for each isotope.
DOES NOT change with temperature, pressure, or chemical form.

After n half-lives: N = N₀ × (1/2)ⁿ and A = A₀ × (1/2)ⁿ
(N = number of nuclei remaining; A = activity; subscript 0 = initial value)

ACTIVITY:
Activity = number of nuclear decays per second.
Unit: Becquerel (Bq). 1 Bq = 1 decay per second.
Activity is proportional to the number of undecayed nuclei.

DECAY CURVE:
An exponential decrease curve. Activity vs time is a smooth exponential curve.
Time axis can be marked in multiples of t₁/₂.
The curve NEVER reaches zero in theory.

BACKGROUND RADIATION:
Always present. Sources: cosmic rays, radon gas, rocks (granite), food and drink (⁴⁰K), medical X-rays, fallout from nuclear weapons tests.
Must be subtracted from measured count rate to get corrected count rate.
Average UK background: ~2.7 mSv/year; higher in granite areas (e.g., Cornwall, Ghana's basement complex).

NUCLEAR FISSION:
A heavy nucleus (e.g., ²³⁵U) absorbs a neutron → splits into two smaller nuclei + 2-3 neutrons + gamma rays + enormous energy.
Chain reaction: Neutrons from one fission trigger further fissions.
Controlled chain reaction → nuclear reactor (electricity generation).
Uncontrolled → nuclear bomb.

NUCLEAR FUSION:
Two light nuclei fuse to form a heavier nucleus + energy.
E.g., ₁²H + ₁³H → ₂⁴He + ₀¹n + energy
Requires extremely high temperatures (~10⁷ to 10⁸ K) to overcome nuclear repulsion.
Powers the Sun and all stars. Potential future energy source (ITER project).
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Uses, Hazards, and Safety of Radioactivity', $CONTENT$
USES OF RADIOACTIVITY

MEDICAL USES:
1. Diagnosis — Tracers: Radioactive isotopes (e.g., ¹³¹I, ⁹⁹ᵐTc) are injected/swallowed. γ cameras detect radiation from outside. Used for imaging thyroid, kidneys, bones, detecting tumours. Short half-life chosen → minimise long-term radiation exposure.

2. Radiotherapy: γ rays from cobalt-60 or high-energy X-rays aimed at tumours to destroy cancer cells. The tumour region receives much higher dose than surrounding tissue.

3. Sterilisation: γ rays kill bacteria on surgical instruments, syringes, dressings — without heating (important for heat-sensitive items).

4. Blood irradiation: γ rays used to irradiate blood before transfusion to prevent graft-versus-host disease.

INDUSTRIAL USES:
1. Thickness gauges: β source on one side of material; detector on other. If material is too thick → less radiation reaches detector → machine adjusts thickness. Used for paper, metal sheets, plastic film.

2. Leak detection: Radioactive tracer added to fluid in a pipe. Radiation detector above ground finds the leak (higher count rate above the leak).

3. Smoke detectors: α emitter (²⁴¹Am) ionises air between two plates → small steady current flows. Smoke particles absorb α radiation → current drops → alarm sounds.

4. Non-destructive testing: γ or X-rays find cracks and defects in metal welds and structures (like X-raying luggage at airports).

5. Food irradiation: γ rays kill bacteria, insects, moulds in food → extends shelf life (strawberries, spices, herbs).

SCIENTIFIC USES:
1. Carbon-14 dating: ¹⁴C has t₁/₂ = 5730 years. All living things contain ¹⁴C (absorbed from atmosphere). On death, no new ¹⁴C taken up; existing ¹⁴C decays. Measure remaining ¹⁴C activity → age. Range: up to ~50,000 years.

2. Uranium-lead dating: ²³⁸U → ²⁰⁶Pb (t₁/₂ = 4.5 billion years). Dates rocks and Earth's age.

3. Agricultural research: Radiolabelled compounds trace nutrient uptake in plants.

RADIATION HAZARDS:
Ionising radiation damages living cells:
- Breaks chemical bonds in DNA → mutations → cancer.
- Destroys cells → radiation sickness (nausea, hair loss, bleeding, death).
- α most dangerous if INHALED or INGESTED (high ionisation, all damage inside body).
- γ and X-rays dangerous externally (penetrate deeply).

SAFETY PRECAUTIONS:
- Minimise exposure TIME (less time = less dose).
- Maximise DISTANCE from source (intensity falls as 1/r²).
- Use SHIELDING (lead for γ, aluminium for β, paper for α).
- Wear personal dosimeters (to monitor exposure).
- Use forceps/tongs to handle sources (never bare hands).
- Store sources in lead-lined containers.
- Medical workers wear lead aprons; control rooms behind thick concrete.

DOSE AND DOSE RATE:
Dose: Total energy absorbed per kg of body tissue. Unit: Gray (Gy). 1 Gy = 1 J/kg.
Effective dose: Accounts for different biological effects of different types of radiation. Unit: Sievert (Sv).
Dose rate: Dose per unit time (Sv/hr or mSv/year).
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Radioactivity Calculations', $CONTENT$
WORKED EXAMPLES — RADIOACTIVITY AND NUCLEAR PHYSICS

EXAMPLE 1 — Nuclear Equations:
Write nuclear equations for:
(a) Alpha decay of uranium-238 (₉₂²³⁸U).
(b) Beta decay of carbon-14 (₆¹⁴C).

SOLUTION:
(a) Alpha decay: mass decreases by 4, atomic number decreases by 2.
    ₉₂²³⁸U → ₉₀²³⁴Th + ₂⁴He
    Check: 238 = 234 + 4 ✓; 92 = 90 + 2 ✓

(b) Beta decay: mass unchanged, atomic number increases by 1.
    ₆¹⁴C → ₇¹⁴N + ₋₁⁰e
    Check: 14 = 14 + 0 ✓; 6 = 7 + (−1) ✓

EXAMPLE 2 — Half-Life Calculation (type 1):
A radioactive sample has a half-life of 20 minutes.
The initial activity is 1600 Bq.
(a) What is the activity after 1 hour?
(b) What fraction of the original nuclei remain after 1 hour?

SOLUTION:
1 hour = 60 minutes; number of half-lives = 60/20 = 3

(a) Activity after 3 half-lives = 1600 × (1/2)³ = 1600/8 = 200 Bq

(b) Fraction remaining = (1/2)³ = 1/8 (12.5% of original nuclei remain)

EXAMPLE 3 — Half-Life from Graph:
From a radioactive decay graph, the count rate drops from 800 to 100 in 21 days.
Find the half-life.

SOLUTION:
Ratio: 100/800 = 1/8 = (1/2)³ → 3 half-lives in 21 days.
Half-life = 21/3 = 7 days.

EXAMPLE 4 — Identifying Unknown Product:
In a nuclear equation: ₈₈²²⁶Ra → X + ₂⁴He
Identify X.

SOLUTION:
Mass number of X: 226 − 4 = 222
Atomic number of X: 88 − 2 = 86
Z = 86 → Radon (Rn)
X = ₈₆²²²Rn (Radon-222)

EXAMPLE 5 — Isotope Properties:
Two isotopes of carbon are ₆¹²C and ₆¹⁴C.
(a) How do they differ?
(b) Why do they have the same chemical properties?
(c) Why is ₆¹⁴C radioactive but ₆¹²C is not?

SOLUTION:
(a) ₆¹²C has 6 neutrons; ₆¹⁴C has 8 neutrons. Same proton number (6), different mass numbers (12 vs 14), different neutron numbers.

(b) They have the same chemical properties because chemical behaviour depends on the number of electrons (and hence protons), which is the same for both (6). The extra neutrons in ¹⁴C don't affect electron arrangement or bonding.

(c) ₆¹²C has a stable neutron-to-proton ratio (1:1). ₆¹⁴C has a higher n:p ratio (8:6 = 1.33:1) which makes it unstable → it undergoes β⁻ decay (a neutron converts to a proton) to restore a more stable ratio → becomes ₇¹⁴N.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Radioactivity', $CONTENT$
WASSCE PAST QUESTIONS — RADIOACTIVITY AND NUCLEAR PHYSICS

QUESTION 1 (WASSCE 2020, Q4c):
(a) Define the term half-life.
(b) A radioactive substance has a half-life of 30 minutes. Its initial count rate is 4800 counts/minute.
    (i) What is the count rate after 2 hours?
    (ii) How much time has passed if the count rate is 300 counts/minute?

ANSWERS:
(a) Half-life: The time taken for the activity (or number of undecayed nuclei) of a radioactive sample to decrease to half its initial value.

(b) (i) 2 hours = 120 minutes; Number of half-lives = 120/30 = 4
    Count rate = 4800 × (1/2)⁴ = 4800/16 = 300 counts/min

    (ii) 4800 → 2400 → 1200 → 600 → 300 (4 half-lives)
    Time = 4 × 30 = 120 minutes = 2 hours.
    (Note: answers to (i) and (ii) are the same in this question!)

QUESTION 2 (WASSCE 2019, Q5c):
(a) State TWO differences between alpha and gamma radiation.
(b) Explain why alpha particles are more ionising than gamma rays but less penetrating.

ANSWERS:
(a) Differences:
1. Alpha particles are positively charged (+2); gamma rays have no charge (they are electromagnetic radiation).
2. Alpha particles have a mass of 4 u; gamma rays have no mass.
3. Alpha particles are stopped by paper; gamma rays require centimetres of lead.
4. Alpha particles travel at ~5% speed of light; gamma rays travel at speed of light.
(Any two)

(b) Alpha particles are MORE IONISING because they interact strongly with air molecules — their large charge (+2) and relatively slow speed allow them to pull electrons from many atoms as they pass, ionising them. They deposit all their energy in a short distance.

Alpha particles are LESS PENETRATING because they rapidly lose energy through ionisation of surrounding matter (giving up energy in many small collisions) and are quickly stopped. Gamma rays, being uncharged electromagnetic radiation, rarely interact with atoms and travel through large thicknesses of material before being absorbed.

QUESTION 3 (WASSCE 2021, Q3b):
(a) Complete the nuclear equation: ₉₂²³⁸U → ₉₀²³⁴Th + ___
(b) Complete: ₂₇⁶⁰Co → ₂₈⁶⁰Ni + ___ (this is the type of decay of the medical isotope used in cancer treatment)

ANSWERS:
(a) ₉₂²³⁸U → ₉₀²³⁴Th + ₂⁴He (alpha particle)
    Mass: 238 = 234 + 4 ✓; Atomic number: 92 = 90 + 2 ✓

(b) ₂₇⁶⁰Co → ₂₈⁶⁰Ni + ₋₁⁰e (beta particle)
    Mass: 60 = 60 + 0 ✓; Atomic number: 27 = 28 + (−1) ✓

QUESTION 4 (WASSCE 2022, Q1a):
State THREE uses of radioactive isotopes and name an appropriate isotope for each use.

ANSWER:
1. Medical diagnosis/tracing: Technetium-99m (⁹⁹ᵐTc) — short t₁/₂ (6 hours), γ emitter — used to image organs with a gamma camera.
2. Cancer treatment: Cobalt-60 (⁶⁰Co) — γ emitter — used in radiotherapy to destroy tumour cells.
3. Carbon dating: Carbon-14 (¹⁴C) — t₁/₂ = 5730 years — used to determine the age of organic materials up to ~50,000 years old.
4. Smoke detectors: Americium-241 (²⁴¹Am) — α emitter — ionises air in the detector; smoke triggers alarm.
5. Thickness control in manufacturing: Strontium-90 (⁹⁰Sr) — β emitter — used to monitor and control thickness of paper, metal, plastic.
(Any three with named isotopes)

PRACTICE QUESTIONS:
1. What is the difference between nuclear fission and nuclear fusion?
2. State TWO safety precautions when handling radioactive sources in the laboratory.

ANSWERS:
1. Nuclear fission: A heavy nucleus (e.g., ²³⁵U) splits into two smaller nuclei when struck by a neutron, releasing energy and more neutrons (chain reaction). Used in nuclear reactors.
Nuclear fusion: Two light nuclei (e.g., hydrogen isotopes) combine to form a heavier nucleus, releasing even more energy per unit mass. Requires extreme temperatures. Powers the Sun.
Key difference: Fission = splitting; Fusion = combining.

2. Safety precautions:
i. Never point the source at people; always point toward a safe direction or into lead-lined containers.
ii. Use forceps or tongs — never hold sources with bare hands (avoid skin contamination).
iii. Minimise time of exposure.
iv. Keep maximum safe distance from the source.
(Any two)
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 10: MOTION AND GRAPHS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Motion and Graphs';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Motion and Kinematics', $CONTENT$
MOTION AND GRAPHS — WASSCE PHYSICS

KINEMATICS: The study of motion WITHOUT considering the causes (forces).

KEY DEFINITIONS:
Distance: The total path length travelled. Scalar quantity. Unit: metres (m).
Displacement: The change in position from start to finish; straight-line, directional. Vector quantity. Unit: metres (m).

Speed: The distance travelled per unit time. Scalar: magnitude only.
Average speed = Total distance / Total time
Unit: metres per second (m/s or ms⁻¹).

Velocity: The rate of change of displacement. Vector: magnitude AND direction.
Average velocity = Displacement / Time = Δs/Δt
Unit: m/s.

Note: A car going around a circular track at constant SPEED has changing VELOCITY (direction changes continuously).

Acceleration: The rate of change of velocity.
a = Δv/Δt = (v − u)/t
Unit: m/s² (or ms⁻²)
Positive acceleration: velocity increasing (in positive direction) or decelerating in negative direction.
Deceleration (retardation): Negative acceleration — velocity decreasing in magnitude.

EQUATIONS OF MOTION (Uniform acceleration only — SUVAT equations):
These equations apply ONLY when acceleration is CONSTANT (uniform):
v = u + at          ... (1)
s = ut + ½at²       ... (2)
v² = u² + 2as       ... (3)
s = (u + v)t/2      ... (4)

where: s = displacement (m), u = initial velocity (m/s), v = final velocity (m/s), a = acceleration (m/s²), t = time (s)

SIGN CONVENTION:
Choose a positive direction (usually upward or direction of initial motion).
Velocities in opposite direction are NEGATIVE.
Deceleration is a NEGATIVE acceleration.

FREE FALL:
An object falling under gravity ONLY (no air resistance).
Acceleration = g = 10 m/s² (or 9.8 m/s²) downward.
Taking upward as positive: a = −10 m/s² (for falling objects, taking up as +ve).
Objects of DIFFERENT MASSES fall at the SAME rate (in vacuum) — Galileo's discovery.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Distance-Time and Velocity-Time Graphs', $CONTENT$
MOTION GRAPHS

DISTANCE-TIME (d-t) GRAPHS:
The GRADIENT (slope) = speed.
- Horizontal line: object is STATIONARY (speed = 0).
- Straight line with positive gradient: constant speed (uniform motion).
- Steeper gradient → greater speed.
- Curved line (gradient increasing): accelerating.
- Curved line (gradient decreasing): decelerating.
- Cannot show negative distance (distance never decreases).

DISPLACEMENT-TIME (s-t) GRAPHS:
The GRADIENT = velocity (including direction).
- Horizontal line: stationary.
- Straight line with positive gradient: constant velocity in positive direction.
- Straight line with negative gradient: constant velocity in negative direction (returning to start).
- Curve with increasing gradient: accelerating.
- Curve with decreasing gradient: decelerating.
- Object can return below start (negative displacement = behind starting point).

VELOCITY-TIME (v-t) GRAPHS:
The GRADIENT = acceleration (positive or negative).
The AREA UNDER THE GRAPH = displacement (distance if velocity always positive).

- Horizontal line: constant velocity (zero acceleration).
- Positive gradient: constant acceleration (uniform acceleration).
- Negative gradient: deceleration (constant retardation).
- Steeper gradient → greater acceleration/deceleration.
- Line above t-axis: moving in positive direction.
- Line below t-axis: moving in negative direction.
- Area above t-axis = displacement in positive direction.
- Area below t-axis = displacement in negative direction.

CALCULATING AREA (displacement) from v-t graph:
Rectangle: Area = base × height = t × v
Triangle: Area = ½ × base × height = ½ × t × v
Trapezium: Area = ½ × (sum of parallel sides) × height

ACCELERATION-TIME (a-t) GRAPHS:
- Horizontal line at a ≠ 0: constant (uniform) acceleration.
- Horizontal line at a = 0: constant velocity.
- Area under a-t graph = change in velocity.

READING SUVAT FROM V-T GRAPH:
u = initial velocity (y-intercept at t = 0).
v = final velocity (y-value at end time).
a = gradient of the line (Δv/Δt).
t = time interval (x-axis difference).
s = area under the graph.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Projectile Motion Overview and Ticker Tape Analysis', $CONTENT$
PROJECTILE MOTION (BRIEF OVERVIEW)

A projectile is an object given an initial velocity then allowed to move freely under gravity only.
Horizontal and vertical motions are INDEPENDENT.
Horizontal: Constant velocity (no air resistance → no horizontal force).
Vertical: Constant acceleration downward at g = 10 m/s².

Horizontal range, maximum height, time of flight: see Projectiles and Circular Motion topic for full treatment.

TICKER TAPE (OR TICKER TIMER):
A device that marks equally-spaced time intervals (dots) on a paper tape as it is pulled through.
AC mains ticker timer: makes 50 dots per second (one dot every 0.02 s).
DC spark timer: similar but uses spark.

USING TICKER TAPE TO ANALYSE MOTION:
1. Label dots or groups of dots.
2. Measure distances between dots or groups.
3. If spacing is EQUAL: constant velocity (uniform motion).
4. If spacing is INCREASING: accelerating.
5. If spacing is DECREASING: decelerating.

Calculating velocity:
v = distance between dots / time between dots

Calculating acceleration:
Use s = ut + ½at² applied to successive equal time intervals.
Or: a = (v − u)/t using two measured velocities.

RELATIVE VELOCITY:
The velocity of object A relative to object B = velocity of A − velocity of B (vector subtraction).
Two cars moving in same direction at 80 km/h and 50 km/h: relative velocity = 30 km/h.
Two cars moving toward each other at 80 km/h and 50 km/h: relative velocity = 130 km/h.

TERMINAL VELOCITY (from v-t graph perspective):
Initial steep gradient → gradually decreasing gradient → eventually horizontal (constant velocity = terminal velocity).
This is a CURVED v-t graph (not straight line) because acceleration decreases as drag increases.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Motion and Graphs', $CONTENT$
WORKED EXAMPLES — MOTION AND GRAPHS

EXAMPLE 1 — SUVAT Equations:
A car accelerates uniformly from 10 m/s to 30 m/s in 4 seconds.
(a) Calculate the acceleration.
(b) Calculate the distance covered during this time.

SOLUTION:
(a) a = (v − u)/t = (30 − 10)/4 = 20/4 = 5 m/s²

(b) Method 1: s = ut + ½at² = 10(4) + ½(5)(16) = 40 + 40 = 80 m
    Method 2: s = (u + v)t/2 = (10 + 30) × 4/2 = 40 × 2 = 80 m ✓

EXAMPLE 2 — Free Fall:
A ball is dropped from a cliff and takes 4 seconds to reach the bottom.
(a) Calculate the velocity just before hitting the ground.
(b) Calculate the height of the cliff. (g = 10 m/s²)

SOLUTION:
u = 0 (dropped from rest); a = g = 10 m/s²; t = 4 s
(a) v = u + at = 0 + 10 × 4 = 40 m/s

(b) s = ut + ½at² = 0 + ½ × 10 × 16 = 80 m
    OR: v² = u² + 2as → 1600 = 0 + 2(10)s → s = 80 m ✓

EXAMPLE 3 — Reading a v-t Graph:
A v-t graph shows a vehicle starting from rest, accelerating uniformly to 24 m/s in 8 seconds, maintaining 24 m/s for 12 seconds, then decelerating uniformly to rest in 6 seconds.
Calculate: (a) acceleration (b) deceleration (c) total distance.

SOLUTION:
(a) Acceleration = gradient during first phase = (24 − 0)/8 = 3 m/s²

(b) Deceleration = gradient during last phase = (24 − 0)/6 = 4 m/s² (magnitude; negative acceleration)

(c) Area under graph = total distance:
    Triangle (0 to 8s): ½ × 8 × 24 = 96 m
    Rectangle (8s to 20s): 12 × 24 = 288 m
    Triangle (20s to 26s): ½ × 6 × 24 = 72 m
    Total distance = 96 + 288 + 72 = 456 m

EXAMPLE 4 — d-t Graph Interpretation:
A distance-time graph shows a horizontal line for the first 3 seconds, then a straight line rising steeply for the next 5 seconds.
Describe the motion.

SOLUTION:
- First 3 seconds: Distance constant (horizontal line) → Object is STATIONARY (speed = 0).
- Next 5 seconds: Distance increases uniformly (straight line with positive gradient) → Object moves at CONSTANT SPEED in a straight line.

EXAMPLE 5 — Combining SUVAT:
A stone is thrown vertically upward at 20 m/s. (g = 10 m/s², taking upward as +ve)
(a) How long to reach maximum height?
(b) What is the maximum height?
(c) What is the velocity after 3 seconds? (interpret sign)

SOLUTION:
(a) At max height, v = 0. v = u + at: 0 = 20 + (−10)t → t = 2 s

(b) s = ut + ½at² = 20(2) + ½(−10)(4) = 40 − 20 = 20 m

(c) v = u + at = 20 + (−10)(3) = 20 − 30 = −10 m/s
    Negative sign means moving DOWNWARD (falling back). Speed = 10 m/s downward.
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Motion and Graphs', $CONTENT$
WASSCE PAST QUESTIONS — MOTION AND GRAPHS

QUESTION 1 (WASSCE 2020, Q2c):
(a) Distinguish between speed and velocity.
(b) A car starts from rest and reaches a velocity of 30 m/s in 10 seconds. It then travels at this velocity for 20 seconds before decelerating uniformly to rest in 15 seconds.
    (i) Draw a velocity-time graph.
    (ii) Calculate the total distance.

ANSWERS:
(a) Speed: Scalar quantity — just the magnitude of how fast an object moves; speed = distance/time. No direction specified.
Velocity: Vector quantity — speed in a specified direction; velocity = displacement/time. Both magnitude and direction must be given.

(b) (i) V-T Graph: Start at (0,0); straight line up to (10, 30); horizontal line from (10,30) to (30,30); straight line down to (45, 0).

(ii) Total distance = area under v-t graph:
    Phase 1 (0−10s): Triangle = ½ × 10 × 30 = 150 m
    Phase 2 (10−30s): Rectangle = 20 × 30 = 600 m
    Phase 3 (30−45s): Triangle = ½ × 15 × 30 = 225 m
    Total = 150 + 600 + 225 = 975 m

QUESTION 2 (WASSCE 2019, Q1c):
(a) State the equations of motion under uniform acceleration (SUVAT).
(b) A ball is thrown vertically upward with initial velocity of 25 m/s. (g = 10 m/s²)
    Find: (i) maximum height reached (ii) time of flight (total time before returning to start).

ANSWERS:
(a) Four equations of motion:
    v = u + at; s = ut + ½at²; v² = u² + 2as; s = (u+v)t/2

(b) Taking upward as positive, a = −10 m/s²:
    (i) At max height: v = 0.
        v² = u² + 2as: 0 = 625 + 2(−10)s → s = 625/20 = 31.25 m

    (ii) Time to reach max height: v = u + at: 0 = 25 − 10t → t = 2.5 s
    By symmetry (same time to come down): Total time = 2 × 2.5 = 5 s
    OR: s = 0 (returns to start): 0 = 25t − 5t² → t(25 − 5t) = 0 → t = 0 or t = 5 s ✓

QUESTION 3 (WASSCE 2021, Q2b):
What does each of the following represent on a velocity-time graph?
(a) The gradient of the line.
(b) The area under the graph.
(c) A horizontal straight line.
(d) A line with a negative gradient.

ANSWERS:
(a) Gradient of v-t graph = ACCELERATION (rate of change of velocity). Units: m/s².
(b) Area under v-t graph = DISPLACEMENT (or distance, if velocity is always positive). Units: metres.
(c) Horizontal straight line = CONSTANT VELOCITY (zero acceleration); the object moves at steady speed.
(d) Line with negative gradient = DECELERATION (the object is slowing down; acceleration is negative).

QUESTION 4 (WASSCE 2022, Q3c):
A motorcycle accelerates uniformly from 5 m/s to 25 m/s over a distance of 120 m.
Calculate: (a) the acceleration (b) the time taken.

ANSWERS:
(a) v² = u² + 2as: 625 = 25 + 2a(120)
    600 = 240a → a = 2.5 m/s²

(b) v = u + at: 25 = 5 + 2.5t → 2.5t = 20 → t = 8 s
    Check: s = (u+v)t/2 = (5+25)(8)/2 = 30 × 4 = 120 m ✓

PRACTICE QUESTIONS:
1. A stone is dropped from a height of 80 m. How long does it take to reach the ground? (g = 10 m/s²)
2. On a d-t graph, what does a steeper slope mean?

ANSWERS:
1. s = ut + ½at²; 80 = 0 + ½(10)t²; 80 = 5t²; t² = 16; t = 4 s
2. A steeper slope on a d-t graph means a GREATER SPEED (the object is covering more distance per unit time).
$CONTENT$, 'practice', 5);

END $$;
