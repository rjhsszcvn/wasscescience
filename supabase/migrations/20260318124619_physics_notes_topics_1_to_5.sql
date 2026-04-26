
/*
  # Physics Notes — Topics 1 to 5
  
  Adds comprehensive, Aki Ola-style notes for:
  1. Mechanics: Newton's Laws of Motion
  2. Electricity: Current, Voltage and Resistance
  3. Waves and Sound
  4. Heat and Temperature
  5. Light and Optics
  
  Each topic: 5 sections with deep explanations, definitions, worked examples, WASSCE past questions.
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';

  -- =============================================
  -- TOPIC 1: MECHANICS: NEWTON'S LAWS OF MOTION
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Mechanics: Newton''s Laws of Motion';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Forces and Newton''s Laws', $CONTENT$
MECHANICS: NEWTON'S LAWS OF MOTION — WASSCE PHYSICS

Mechanics is the branch of Physics that studies how forces affect the motion of objects. Newton's three laws of motion form the foundation of classical mechanics.

FUNDAMENTAL CONCEPTS:

MASS vs WEIGHT:
Mass: The amount of matter in an object. Measured in kilograms (kg). Scalar quantity. Does NOT change with location.
Weight: The gravitational force acting on an object. W = mg. Measured in Newtons (N). Vector quantity. Changes with location (different on the Moon).

g = gravitational field strength = 10 m/s² (or 9.8 m/s²) on Earth's surface.
On the Moon: g ≈ 1.6 m/s² (about 1/6 of Earth's value).

TYPES OF FORCES:
Contact forces: Applied force, friction, normal reaction, tension, compression.
Non-contact forces: Gravity, magnetic force, electrostatic force.

FRICTION:
The force that opposes relative motion between surfaces in contact.
Static friction: acts when surfaces are stationary relative to each other; keeps object still.
Kinetic (sliding) friction: acts when surfaces slide against each other; always opposes motion.
Friction depends on: surface roughness and normal reaction (NOT on area of contact or speed).

Coefficient of friction (μ): F_friction = μN (where N = normal reaction force)
μ is always between 0 (perfectly smooth) and 1+ (very rough surfaces).

Advantages of friction: walking, braking, writing, clutches.
Disadvantages: wear and tear, heat generation, energy loss in machines.

INERTIA:
The tendency of an object to resist changes in its state of motion.
A body at rest tends to stay at rest; a body in motion tends to stay in motion unless acted on by an external force.
Inertia is directly related to mass — greater mass = greater inertia.
Examples: passengers thrown forward when a bus brakes; coins on cardboard (pull cardboard fast → coins stay).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Newton''s Three Laws: Definitions and Explanations', $CONTENT$
NEWTON'S THREE LAWS OF MOTION

NEWTON'S FIRST LAW (Law of Inertia):
"An object will remain at rest or continue to move in a straight line at constant speed unless acted upon by an external resultant (unbalanced) force."

Key implications:
- If resultant force = 0, acceleration = 0 (object either stationary OR moving at constant velocity)
- To change velocity (speed up, slow down, or change direction), a resultant force is required.
- This is why passengers lurch forward when a car suddenly brakes — the body continues forward due to inertia.
- A book on a table: weight (down) balanced by normal reaction (up) → resultant = 0 → no acceleration.

NEWTON'S SECOND LAW (Law of Acceleration):
"The acceleration of an object is directly proportional to the resultant force acting on it and inversely proportional to its mass. The acceleration is in the direction of the resultant force."

F = ma
where:
F = resultant (net) force in Newtons (N)
m = mass in kilograms (kg)
a = acceleration in m/s²

1 Newton is defined as the force needed to give a mass of 1 kg an acceleration of 1 m/s².

Alternative formulation using momentum:
F = Δp/Δt (force = rate of change of momentum)
where p = mv (momentum, in kg·m/s)

Impulse = FΔt = Δp (change in momentum)
Unit of impulse: N·s (Newton-second) = kg·m/s

NEWTON'S THIRD LAW (Law of Action-Reaction):
"For every action force, there is an equal and opposite reaction force acting on a DIFFERENT object."

Key points:
- Action and reaction forces are EQUAL in magnitude, OPPOSITE in direction.
- They act on DIFFERENT objects — they are NOT the same force pair!
- They act simultaneously (at the same time).

Examples:
1. Rocket propulsion: Rocket pushes exhaust gases backwards (action); gases push rocket forwards (reaction).
2. Walking: Foot pushes backward on ground (action); ground pushes foot forward (reaction).
3. Swimming: Swimmer pushes water backward; water pushes swimmer forward.
4. Gun recoil: Bullet propelled forward (action); gun kicks backward (reaction).
5. A book on table: Book pushes DOWN on table (weight/action); table pushes UP on book (normal reaction).

COMMON MISCONCEPTION:
Weight and normal reaction on a book on a table are NOT a Newton's 3rd law pair — they act on the SAME object (the book). The actual 3rd law pairs are:
- Earth pulls book down WITH gravity / Book pulls Earth up with equal gravity (on different objects)
- Book pushes table down / Table pushes book up (normal reaction pair)

FREE BODY DIAGRAMS:
A free body diagram shows all forces acting ON a single object as arrows from the object's centre.
Steps to draw: (1) Identify the object; (2) Draw the object; (3) Identify all forces on it; (4) Draw arrows showing direction and label each force.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Deep Explanation: Momentum, Impulse, and Applications', $CONTENT$
MOMENTUM AND IMPULSE

LINEAR MOMENTUM:
p = mv
Direction: same as velocity.
Unit: kg·m/s or N·s

LAW OF CONSERVATION OF MOMENTUM:
"The total momentum of a system of objects remains constant provided no external resultant force acts on the system."

For two objects colliding:
Total momentum before = Total momentum after
m₁u₁ + m₂u₂ = m₁v₁ + m₂v₂

TYPES OF COLLISIONS:
1. Perfectly Elastic: Both momentum AND kinetic energy conserved; objects bounce apart.
   Example: Billiard balls colliding (approximately elastic).

2. Inelastic: Momentum conserved; kinetic energy is NOT conserved (some converted to heat, sound, deformation).
   Example: Clay balls sticking together.

3. Perfectly Inelastic: Objects STICK TOGETHER after collision; maximum kinetic energy lost.
   m₁u₁ + m₂u₂ = (m₁ + m₂)v (combined mass moves together with velocity v)

IMPULSE-MOMENTUM THEOREM:
Impulse = Change in momentum
FΔt = mv − mu = Δp

Applications:
- Crash helmets and car airbags: increase the time of impact (Δt increases) → force is smaller → less injury
- Cricket/baseball players drawing hand back when catching: increases Δt → reduces force on hand
- Jumping into a swimming pool vs onto concrete: longer stopping time in water → smaller force

NEWTON'S LAW OF GRAVITATION:
F = Gm₁m₂/r²
G = 6.67 × 10⁻¹¹ N·m²/kg² (gravitational constant)
r = distance between centres of masses

Weight: W = mg (approximation near Earth's surface where g ≈ GM_Earth/R_Earth²)

EQUATIONS OF MOTION (For uniform acceleration):
v = u + at
s = ut + ½at²
v² = u² + 2as
s = (u + v)t/2

where:
u = initial velocity (m/s)
v = final velocity (m/s)
a = acceleration (m/s²)
t = time (s)
s = displacement (m)

SIGN CONVENTION: Choose a positive direction (usually upward or direction of motion). Velocities and accelerations in the opposite direction are negative.

TERMINAL VELOCITY:
When an object falls through a fluid (air or liquid):
1. Initially, gravity > drag → object accelerates.
2. As speed increases, drag force increases.
3. Eventually, drag = gravity → resultant force = 0 → constant velocity (terminal velocity).
4. Terminal velocity is reached when driving force = resistive force.
For a parachutist: terminal velocity ~55 m/s without parachute, ~5 m/s with parachute.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Newton''s Laws Problems', $CONTENT$
WORKED EXAMPLES — NEWTON'S LAWS OF MOTION

EXAMPLE 1 — Newton's Second Law:
A car of mass 1200 kg accelerates from rest to 30 m/s in 12 seconds.
(a) Calculate the acceleration.
(b) Calculate the net driving force.

SOLUTION:
(a) a = (v − u)/t = (30 − 0)/12 = 2.5 m/s²

(b) F = ma = 1200 × 2.5 = 3000 N

EXAMPLE 2 — Conservation of Momentum:
A 2 kg ball moving at 5 m/s collides with a stationary 3 kg ball. After the collision, the 2 kg ball moves at 1 m/s in the same direction.
Find the velocity of the 3 kg ball after collision.

SOLUTION:
Before: p_total = (2 × 5) + (3 × 0) = 10 kg·m/s
After: p_total = (2 × 1) + (3 × v) = 2 + 3v

Conservation: 10 = 2 + 3v
3v = 8
v = 8/3 ≈ 2.67 m/s (in the original direction)

EXAMPLE 3 — Impulse:
A force of 200 N is applied to a 5 kg object for 0.8 seconds.
(a) Calculate the impulse.
(b) Calculate the change in velocity (initial velocity = 0).

SOLUTION:
(a) Impulse = FΔt = 200 × 0.8 = 160 N·s

(b) Impulse = Δ(mv) = mΔv
    160 = 5 × Δv
    Δv = 32 m/s

EXAMPLE 4 — Weight and Mass:
An astronaut has a mass of 80 kg.
(a) Calculate their weight on Earth (g = 10 m/s²).
(b) Calculate their weight on the Moon (g_Moon = 1.6 m/s²).
(c) What is their mass on the Moon?

SOLUTION:
(a) W_Earth = mg = 80 × 10 = 800 N
(b) W_Moon = mg_Moon = 80 × 1.6 = 128 N
(c) Mass is constant regardless of location = 80 kg (mass does NOT change!)

EXAMPLE 5 — Newton's Third Law:
Explain why a rocket can travel through space where there is no air to push against.

SOLUTION:
The rocket works by Newton's Third Law. The rocket engines expel hot exhaust gases backward at high speed (ACTION). By Newton's Third Law, the gases exert an equal and opposite force on the rocket — pushing the rocket FORWARD (REACTION).

This does NOT require air or any external medium. The reaction force comes from the ejected mass of gas, not from anything in the environment. This is why rockets work perfectly in the vacuum of space.

EXAMPLE 6 — Friction:
A box of mass 10 kg is on a horizontal floor. The coefficient of kinetic friction is 0.3.
(a) Calculate the normal reaction.
(b) Calculate the friction force opposing motion.
(g = 10 m/s²)

SOLUTION:
(a) On a horizontal surface: N = mg = 10 × 10 = 100 N

(b) F_friction = μN = 0.3 × 100 = 30 N
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Newton''s Laws', $CONTENT$
WASSCE PAST QUESTIONS — NEWTON'S LAWS OF MOTION

QUESTION 1 (WASSCE 2020, Q2a):
(a) State Newton's Second Law of Motion.
(b) A resultant force of 24 N acts on a body of mass 6 kg. Calculate the acceleration produced.

ANSWERS:
(a) Newton's Second Law states: The acceleration of an object is directly proportional to the resultant force acting on it and inversely proportional to its mass, in the direction of the force.
Mathematically: F = ma

(b) F = ma → a = F/m = 24/6 = 4 m/s²
The acceleration is 4 m/s² in the direction of the force.

QUESTION 2 (WASSCE 2019, Q1b):
A 500 g ball moving east at 8 m/s collides head-on with a 1.5 kg ball moving west at 4 m/s.
If they stick together after collision, find the velocity of the combined mass.

ANSWER:
Taking east as positive:
m₁ = 0.5 kg, u₁ = +8 m/s (east)
m₂ = 1.5 kg, u₂ = −4 m/s (west)

Before: p_total = (0.5 × 8) + (1.5 × −4) = 4 − 6 = −2 kg·m/s

After: p_total = (0.5 + 1.5)v = 2v

Conservation: 2v = −2
v = −1 m/s

The combined mass moves at 1 m/s towards the WEST (negative direction).

QUESTION 3 (WASSCE 2021, Q4b):
(a) Distinguish between mass and weight.
(b) State the SI unit of each.

ANSWERS:
(a) Mass is the amount of matter in an object. It is a scalar quantity and does not change with location.
Weight is the gravitational force acting on an object (W = mg). It is a vector quantity and changes with location (different on Moon, Mars, etc.).

(b) Mass: kilogram (kg)
    Weight: Newton (N)

QUESTION 4 (WASSCE 2022, Q3a):
Explain briefly what is meant by:
(a) inertia
(b) terminal velocity

Give an example of each.

ANSWERS:
(a) Inertia: The tendency of a body to resist changes to its state of rest or uniform motion. It depends on mass — greater mass = greater inertia.
Example: When a bus suddenly stops, passengers tend to continue moving forward (their bodies resist the change from motion to rest).

(b) Terminal velocity: The constant maximum velocity reached by a falling object when the drag force (air resistance) exactly balances the weight of the object. At terminal velocity, resultant force = 0 and acceleration = 0.
Example: A parachutist falls with terminal velocity of about 5 m/s when the parachute is open.

QUESTION 5 (WASSCE 2018, Q2b):
A car of mass 800 kg travelling at 30 m/s is brought to rest by brakes over a distance of 45 m.
(a) Calculate the deceleration.
(b) Calculate the braking force.

ANSWERS:
(a) Using v² = u² + 2as:
    0² = 30² + 2a(45)
    0 = 900 + 90a
    a = −900/90 = −10 m/s²
    Deceleration = 10 m/s²

(b) F = ma = 800 × 10 = 8000 N (braking force opposing motion)

PRACTICE QUESTIONS:
1. A 3 kg object is acted on by forces of 15 N east and 9 N west. Find the resultant acceleration.
2. Explain why it is safer to have collapsible front sections (crumple zones) in cars.

ANSWERS:
1. Resultant force = 15 − 9 = 6 N (east); a = F/m = 6/3 = 2 m/s² east
2. Crumple zones increase the time of impact during a collision. By impulse-momentum theorem (FΔt = Δp), a longer collision time means the same change in momentum is achieved with a smaller force. This smaller force reduces injury to passengers.
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 2: ELECTRICITY
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Electricity: Current, Voltage and Resistance';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Electric Charge and Current', $CONTENT$
ELECTRICITY: CURRENT, VOLTAGE AND RESISTANCE — WASSCE PHYSICS

ELECTRIC CHARGE:
All matter is made of atoms. Atoms contain protons (positive charge), neutrons (no charge), and electrons (negative charge).
Charge (Q) is measured in Coulombs (C).
Charge on one electron = −1.6 × 10⁻¹⁹ C
Charge on one proton = +1.6 × 10⁻¹⁹ C

Conductors: Materials that allow charge (electrons) to flow freely. Metals (copper, aluminium, silver, gold). Free electrons in metallic lattice are free to move.
Insulators: Materials that resist electron flow. Glass, rubber, plastic, wood, dry air. Electrons tightly bound to atoms.
Semiconductors: Conduct under certain conditions. Silicon, germanium. Basis of all electronic devices.

STATIC ELECTRICITY:
When insulators are rubbed together, electrons transfer between them. One gains electrons (becomes negatively charged), the other loses electrons (becomes positively charged).
LIKE charges repel; UNLIKE charges attract.

ELECTRIC CURRENT (I):
The rate of flow of electric charge.
I = Q/t
where I = current (Amperes, A), Q = charge (Coulombs, C), t = time (seconds, s)

Conventional current direction: from positive terminal to negative terminal (opposite to electron flow).
Electron flow: from negative to positive.

In metals, current is carried by ELECTRONS (negative charge carriers).
In electrolytes, current is carried by IONS.
In semiconductors, current is carried by electrons AND holes.

POTENTIAL DIFFERENCE (VOLTAGE) (V):
The work done per unit charge in moving charge between two points.
V = W/Q
where V = voltage (Volts, V), W = work done (Joules, J), Q = charge (Coulombs, C)

1 Volt = 1 Joule per Coulomb (1 V = 1 J/C)

ELECTROMOTIVE FORCE (EMF):
The energy provided per unit charge by a source of electrical energy (battery, generator).
EMF (ε) is measured in Volts (V).
EMF is the total energy provided per Coulomb; potential difference is the energy transferred per Coulomb between two points (may be less than EMF due to internal resistance).

ELECTRICAL RESISTANCE (R):
The opposition to the flow of electric current.
Resistance is measured in Ohms (Ω).

OHM'S LAW: V = IR (V = voltage, I = current, R = resistance)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Ohm''s Law, Resistors in Circuits, and Power', $CONTENT$
OHM'S LAW AND CIRCUIT ANALYSIS

OHM'S LAW:
"The current through a conductor is directly proportional to the potential difference across it, provided the temperature (and other physical conditions) remain constant."
V = IR → I = V/R → R = V/I

Ohmic conductors: Follow Ohm's Law (constant resistance). Metallic conductors at constant temperature.
Non-ohmic conductors: Do NOT follow Ohm's Law; resistance changes. Filament bulbs, diodes, thermistors.

RESISTANCE DEPENDS ON:
1. Length (L): Resistance ∝ Length. Longer wire = more resistance (more collisions).
2. Cross-sectional area (A): Resistance ∝ 1/Area. Thicker wire = less resistance.
3. Material (resistivity ρ): R = ρL/A (resistivity is a material property, measured in Ω·m)
4. Temperature: For metallic conductors, resistance INCREASES with temperature (electrons collide more with vibrating ions). For semiconductors and thermistors, resistance DECREASES with temperature.

RESISTORS IN SERIES:
R_total = R₁ + R₂ + R₃ + ...
- Same current through all resistors
- Voltage divides across resistors
- Total voltage = sum of individual voltages: V = V₁ + V₂ + V₃

RESISTORS IN PARALLEL:
1/R_total = 1/R₁ + 1/R₂ + 1/R₃ + ...
- Same voltage across all resistors
- Current divides through resistors
- Total current = sum of branch currents: I = I₁ + I₂ + I₃
- R_total is ALWAYS LESS than the smallest individual resistor

For two resistors in parallel only:
R_total = (R₁ × R₂)/(R₁ + R₂)  [Product over Sum shortcut]

ELECTRICAL POWER:
P = IV = I²R = V²/R
where P = power (Watts, W), I = current (A), V = voltage (V), R = resistance (Ω)

ELECTRICAL ENERGY:
E = Pt = IVt = I²Rt
where E = energy (Joules, J), t = time (s)

KILOWATT-HOUR (kWh):
Practical unit of electrical energy used by electricity companies.
1 kWh = energy used by a 1 kW device in 1 hour = 3,600,000 J = 3.6 MJ
Cost of electricity = Power (kW) × Time (hours) × Cost per kWh

INTERNAL RESISTANCE:
Real batteries have internal resistance (r) that reduces the terminal voltage.
EMF: ε = V + Ir (total EMF = terminal voltage + voltage drop across internal resistance)
Terminal voltage: V = ε − Ir
Short-circuit current (maximum): I_max = ε/r (when external resistance = 0)

KIRCHHOFF'S LAWS:
1st Law (Junction/Current Law): The sum of currents entering a junction = sum of currents leaving. (Conservation of charge)
∑I_in = ∑I_out

2nd Law (Loop/Voltage Law): In a closed loop, the algebraic sum of all EMFs equals the algebraic sum of all potential drops. (Conservation of energy)
∑EMF = ∑IR (around any closed loop)
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Electrical Measurements and Household Electricity', $CONTENT$
MEASURING INSTRUMENTS AND HOUSEHOLD ELECTRICITY

AMMETER:
Measures current. Connected in SERIES with the component.
Ideal ammeter has ZERO resistance (so it doesn't alter the circuit).
Symbol: A in circle.

VOLTMETER:
Measures potential difference. Connected in PARALLEL with the component.
Ideal voltmeter has INFINITE resistance (so no current is diverted through it).
Symbol: V in circle.

GALVANOMETER:
Sensitive instrument that detects very small currents. Can be converted to:
- Ammeter: add a LOW-resistance shunt resistor in PARALLEL.
- Voltmeter: add a HIGH-resistance multiplier resistor in SERIES.

WHEATSTONE BRIDGE:
A circuit for precise measurement of unknown resistance.
When the bridge is balanced: R₁/R₂ = R₃/R_x
At balance, no current flows through the galvanometer.

HOUSEHOLD ELECTRICITY:
Mains supply in Ghana/West Africa: 230 V AC, 50 Hz (alternating current).
AC = Alternating Current: current direction reverses 50 times per second (50 Hz).
DC = Direct Current: current flows in one direction only (batteries).

HOUSEHOLD WIRING — THREE WIRES:
1. LIVE wire (brown/red): carries high voltage (~230 V). Dangerous!
2. NEUTRAL wire (blue/black): completes the circuit; near 0 V.
3. EARTH wire (green/yellow): safety wire; connected to ground.

FUSES:
A thin wire that melts when current exceeds a safe value, breaking the circuit.
Always connected in the LIVE wire.
Choose a fuse rating just ABOVE the normal operating current.
If appliance uses 2 A normally → use 3 A fuse (not 13 A — which would allow dangerously high current before blowing).

Example: Kettle (2000 W, 230 V):
Normal current = P/V = 2000/230 ≈ 8.7 A → use 13 A fuse.

CIRCUIT BREAKERS:
Electromagnetic switches that trip (open) when current is too high. Can be reset (unlike fuses which must be replaced). Faster and more reliable than fuses.

EARTH WIRE AND SAFETY:
Metal-cased appliances are earthed. If the live wire accidentally touches the metal case → large current flows through earth wire → fuse blows → circuit breaks → user safe. Without earth wire, touching the case causes electric shock (current flows through body to ground).

DOUBLE INSULATION:
Some appliances (e.g., electric drills, hair dryers) have plastic cases. No earth wire needed because the plastic case cannot become live. Marked with double-square symbol.

EFFECTS OF ELECTRIC CURRENT:
1. Heating effect: Resistance heats up (electric fires, kettles, bulbs, toasters).
2. Magnetic effect: Current creates a magnetic field (electromagnets, motors, generators).
3. Chemical effect: Electrolysis — electric current decomposes solutions (electroplating, refining metals, producing chemicals).
4. Physiological effect: Electric shock — muscle spasm, heart fibrillation; can be fatal.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Electricity Calculations', $CONTENT$
WORKED EXAMPLES — ELECTRICITY

EXAMPLE 1 — Ohm's Law:
A resistor has a voltage of 12 V across it and a current of 0.4 A through it.
(a) Calculate its resistance.
(b) Calculate the power dissipated.

SOLUTION:
(a) R = V/I = 12/0.4 = 30 Ω

(b) P = IV = 0.4 × 12 = 4.8 W (OR P = I²R = 0.16 × 30 = 4.8 W ✓)

EXAMPLE 2 — Series and Parallel Circuits:
Three resistors R₁ = 4 Ω, R₂ = 6 Ω, R₃ = 12 Ω are connected in parallel across a 12 V supply.
(a) Calculate the total resistance.
(b) Calculate the total current from the supply.
(c) Calculate the current through each resistor.

SOLUTION:
(a) 1/R_total = 1/4 + 1/6 + 1/12 = 3/12 + 2/12 + 1/12 = 6/12 = 1/2
    R_total = 2 Ω

(b) I_total = V/R_total = 12/2 = 6 A

(c) Since all in parallel, same voltage (12 V) across each:
    I₁ = 12/4 = 3 A; I₂ = 12/6 = 2 A; I₃ = 12/12 = 1 A
    Check: 3 + 2 + 1 = 6 A ✓

EXAMPLE 3 — Internal Resistance:
A battery with EMF 12 V and internal resistance 0.5 Ω is connected to an external resistor of 3.5 Ω.
(a) Calculate the current in the circuit.
(b) Calculate the terminal voltage of the battery.

SOLUTION:
(a) Total resistance = R_external + r = 3.5 + 0.5 = 4 Ω
    I = EMF/R_total = 12/4 = 3 A

(b) Terminal voltage V = EMF − Ir = 12 − (3 × 0.5) = 12 − 1.5 = 10.5 V
    OR: V = IR_external = 3 × 3.5 = 10.5 V ✓

EXAMPLE 4 — Electrical Energy and Cost:
A 2000 W electric iron is used for 45 minutes. Electricity costs GHS 0.50 per kWh.
(a) Calculate energy used in kWh.
(b) Calculate the cost.

SOLUTION:
(a) Energy = Power × Time = 2.0 kW × (45/60) h = 2.0 × 0.75 = 1.5 kWh

(b) Cost = 1.5 × 0.50 = GHS 0.75

EXAMPLE 5 — Fuse Selection:
A hair dryer is rated 1150 W at 230 V. What fuse should be used?

SOLUTION:
Normal current = P/V = 1150/230 = 5 A
Available fuses: 3 A, 5 A, 13 A.
Choose 5 A fuse — it equals the normal operating current; any excess will blow the fuse.
(Do NOT choose 3 A — it would blow during normal operation.)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Electricity', $CONTENT$
WASSCE PAST QUESTIONS — ELECTRICITY

QUESTION 1 (WASSCE 2020, Q3b):
Three resistors of 2 Ω, 4 Ω, and 12 Ω are connected in series to a 36 V battery.
(a) Calculate the total resistance.
(b) Calculate the current in the circuit.
(c) Calculate the voltage across the 4 Ω resistor.

ANSWERS:
(a) R_total = 2 + 4 + 12 = 18 Ω

(b) I = V/R = 36/18 = 2 A (same current throughout series circuit)

(c) V₄ = IR = 2 × 4 = 8 V

QUESTION 2 (WASSCE 2019, Q4a):
(a) State Ohm's Law.
(b) Describe an experiment to verify Ohm's Law for a metallic conductor.

ANSWERS:
(a) Ohm's Law: The current through a metallic conductor is directly proportional to the potential difference across it, provided the temperature and other physical conditions remain constant.
V = IR (I ∝ V)

(b) Experiment to verify Ohm's Law:
Apparatus: Battery, variable resistor (rheostat), ammeter (in series), voltmeter (in parallel with the resistor under test), connecting wires.
Method:
1. Connect circuit: ammeter in series with the resistor; voltmeter in parallel across it.
2. Use the rheostat to vary the current.
3. For each setting, record current (I) from ammeter and voltage (V) from voltmeter.
4. Tabulate values of V and I.
5. Plot a graph of V (y-axis) against I (x-axis).
Result: If the graph is a straight line through the origin, V ∝ I → Ohm's Law is verified.
The gradient of the graph = resistance R.

QUESTION 3 (WASSCE 2021, Q2c):
An electric kettle has a power rating of 3000 W and is used on a 240 V supply.
(a) Calculate the current drawn.
(b) What fuse (3 A, 5 A, or 13 A) should be used? Explain.
(c) Calculate the cost of running the kettle for 30 minutes if electricity costs 0.40 GHS per kWh.

ANSWERS:
(a) I = P/V = 3000/240 = 12.5 A

(b) Use 13 A fuse. The normal current is 12.5 A; the 5 A fuse would blow during normal operation. The 13 A fuse is the smallest rating above 12.5 A, providing protection while allowing normal operation.

(c) Energy = P × t = 3.0 kW × (30/60) h = 3.0 × 0.5 = 1.5 kWh
    Cost = 1.5 × 0.40 = GHS 0.60

QUESTION 4 (WASSCE 2022, Q1c):
Explain the purpose of (i) the fuse and (ii) the earth wire in household circuits.

ANSWERS:
(i) Fuse: The fuse is a thin wire of low melting point connected in the live wire. If the current exceeds a safe value (due to a fault or overload), the fuse wire melts due to heating (I²R heating) and breaks the circuit, preventing fire or damage to the appliance and wiring.

(ii) Earth wire: The earth wire connects the metal casing of an appliance to the ground. If a live wire accidentally touches the metal case, a large current flows through the earth wire (path of least resistance) → fuse blows → circuit breaks → user safe from electric shock. Without earth wire, the casing would be at mains voltage and touching it would cause a fatal shock.

PRACTICE QUESTIONS:
1. Two resistors 6 Ω and 3 Ω are in parallel. What is their combined resistance?
2. Define the coulomb.

ANSWERS:
1. R = (6 × 3)/(6 + 3) = 18/9 = 2 Ω
2. One coulomb is the amount of electric charge that passes a point in a circuit when a current of 1 ampere flows for 1 second. (Q = It, so 1 C = 1 A × 1 s)
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 3: WAVES AND SOUND
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Waves and Sound';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Wave Properties and Types', $CONTENT$
WAVES AND SOUND — WASSCE PHYSICS

A WAVE is a disturbance that transfers energy from one place to another WITHOUT transferring matter.

TYPES OF WAVES:

1. TRANSVERSE WAVES:
The oscillation (vibration) is PERPENDICULAR (at right angles) to the direction of energy transfer.
Examples: Light (electromagnetic waves), water waves, waves on a string/rope, secondary (S) seismic waves.
Key property: Can be polarised.

2. LONGITUDINAL WAVES:
The oscillation is PARALLEL (along the same line) to the direction of energy transfer.
Consist of compressions (regions of high pressure/density) and rarefactions (regions of low pressure/density).
Examples: Sound waves, primary (P) seismic waves, compression waves in a slinky spring.
Key property: Cannot be polarised.

WAVE PROPERTIES — KEY DEFINITIONS:

WAVELENGTH (λ): The distance between two successive points that are in phase (e.g., crest to crest, or compression to compression). Unit: metres (m).

AMPLITUDE (A): The maximum displacement of a particle from its equilibrium (rest) position. Determines energy carried by the wave; higher amplitude = more energy.

FREQUENCY (f): The number of complete oscillations (cycles) per second. Unit: Hertz (Hz). 1 Hz = 1 cycle/second.

PERIOD (T): The time for one complete oscillation. T = 1/f. Unit: seconds (s).

WAVE SPEED (v): The speed at which the wave pattern (energy) moves through a medium.
Wave equation: v = fλ
where v = speed (m/s), f = frequency (Hz), λ = wavelength (m)

PHASE:
Two points are "in phase" if they are doing exactly the same thing at the same time (same displacement and moving in the same direction). They are separated by a whole number of wavelengths.
Two points are "in antiphase" (180° out of phase) if they have equal and opposite displacements.

ELECTROMAGNETIC SPECTRUM (in order of increasing frequency / decreasing wavelength):
Radio waves → Microwaves → Infrared → Visible light → Ultraviolet → X-rays → Gamma rays

All electromagnetic waves:
- Travel at the speed of light in vacuum: c = 3 × 10⁸ m/s
- Are transverse waves
- Need no medium (can travel through vacuum)
- Obey wave equation: c = fλ

SOUND WAVES:
- Longitudinal waves produced by vibrating objects.
- Require a medium to travel (cannot travel through vacuum).
- Speed in air ≈ 340 m/s (at 20°C); faster in liquids and solids.
- Speed in steel ≈ 5000 m/s; in water ≈ 1500 m/s.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Wave Behaviour: Reflection, Refraction, Diffraction, and Interference', $CONTENT$
WAVE BEHAVIOURS

REFLECTION:
When a wave hits a boundary and bounces back.
Laws of reflection: (1) Angle of incidence = Angle of reflection. (2) Incident ray, reflected ray, and normal are all in the same plane.
Echo: Reflection of sound. Heard when reflected sound returns at least 0.1 s after original sound (so the reflecting surface must be >17 m away).
Reverberation: Multiple reflections of sound in a room — makes sound last longer (e.g., in a cathedral).

REFRACTION:
When a wave changes speed (and usually direction) as it crosses a boundary between two media.
The frequency DOES NOT change; wavelength and speed change proportionally.
When light enters a denser medium (e.g., air → glass): slows down, bends towards normal.
When light enters a less dense medium (e.g., glass → air): speeds up, bends away from normal.
n = sin i / sin r = v₁/v₂ = λ₁/λ₂ (Snell's Law — for light)

DIFFRACTION:
The spreading of waves as they pass through a gap or around an obstacle.
Significant when the gap size ≈ wavelength.
Wide gap: little diffraction. Narrow gap (≈ λ): maximum diffraction (waves spread into semicircles).
Examples: Sound diffracts around corners (you can hear around corners). Long-wave radio diffracts around hills. Light diffracts through narrow slits.

INTERFERENCE:
When two waves meet and their displacements combine (superposition).
Constructive interference: Both waves in phase → displacements add → larger amplitude (bright fringe in light, louder sound).
Destructive interference: Waves in antiphase → displacements cancel → zero/minimum amplitude (dark fringe in light, silence in sound).
Condition for constructive: path difference = 0, λ, 2λ, ...
Condition for destructive: path difference = λ/2, 3λ/2, ...

Young's Double Slit experiment confirms light is a wave by producing an interference pattern.

SUPERPOSITION PRINCIPLE:
When two waves occupy the same region, the resulting displacement at any point is the VECTOR SUM of the individual displacements.

STANDING (STATIONARY) WAVES:
Formed by two waves of equal frequency and amplitude travelling in opposite directions.
Nodes: points of zero displacement (always destructive interference).
Antinodes: points of maximum displacement (always constructive interference).
No energy transfer (energy stored in the wave pattern).
Examples: Guitar/violin strings, sound in organ pipes, microwaves in a microwave oven.

For a string fixed at both ends: Fundamental (1st harmonic): λ = 2L; f₁ = v/2L
2nd harmonic: λ = L; f₂ = 2f₁, etc.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Sound: Properties, Speed, and Applications', $CONTENT$
SOUND IN DETAIL

PRODUCTION OF SOUND:
Sound is produced by vibrating objects — vocal cords, guitar strings, speaker cones, tuning forks.
The vibrating surface creates compressions and rarefactions in the surrounding air → sound wave.

PROPERTIES OF SOUND:

Pitch: Related to frequency. Higher frequency = higher pitch. Human hearing: 20 Hz to 20,000 Hz (20 kHz).
Infrasound: below 20 Hz (earthquakes, elephants, whales).
Ultrasound: above 20,000 Hz (bats, dolphins, medical ultrasound).

Loudness: Related to amplitude (and intensity). Higher amplitude → greater energy → louder sound.
Measured in decibels (dB). 0 dB = threshold of hearing; 120 dB = pain threshold.

Timbre (Quality): The characteristic sound of a musical instrument. Determined by the mix of fundamental frequency and overtones/harmonics.

SPEED OF SOUND:
In air: approximately 340 m/s at 20°C (increases with temperature; increases with humidity).
In water: ~1500 m/s.
In steel: ~5000 m/s.
Sound travels faster in denser/stiffer materials: solids > liquids > gases.
(NOTE: Light is an EM wave — travels at 3 × 10⁸ m/s in vacuum; much faster than sound. Hence thunder is heard AFTER lightning is seen.)

MEASURING SPEED OF SOUND (echo method):
A person stands near a wall. Fires a starter gun. Measures time t between bang and echo.
Speed = 2d/t (where d = distance to wall; factor of 2 because sound travels there AND back).

APPLICATIONS OF SOUND:

SONAR (Sound Navigation and Ranging):
Ships and submarines use ultrasound pulses to measure ocean depth or detect objects.
Depth = (v × t)/2 (where t = time for pulse to return, v = speed of sound in water ≈ 1500 m/s)

MEDICAL ULTRASOUND:
Ultrasound waves (>20 kHz) are sent into the body. Reflected at tissue boundaries. Processed to create images of internal organs, foetuses, blood flow.
Safe (no ionising radiation), unlike X-rays.

SONAR USED BY ANIMALS:
Bats: Emit ultrasound pulses. Echo timing and frequency shift (Doppler effect) tells bat the distance, speed, and size of prey. Called echolocation.
Dolphins: Use similar echolocation for navigation and hunting.

RESONANCE:
When an object is driven at its natural frequency by an external force, it vibrates with maximum amplitude.
Examples: Soldiers break step on bridges (resonance could cause bridge oscillation/collapse); 
Tuning a radio selects resonant frequency of circuit to match broadcast frequency;
Microwave ovens use resonant frequency of water molecules.
Tacoma Narrows Bridge (1940) collapsed due to wind-induced resonance.

DOPPLER EFFECT:
When a source of sound moves relative to an observer, the observed frequency changes.
Source moving TOWARD observer: observed frequency is HIGHER than emitted frequency (sound compressed → shorter λ → higher f).
Source moving AWAY from observer: observed frequency is LOWER.
Examples: Ambulance siren changes pitch as it passes; radar speed guns; red-shift of stars (light Doppler effect).
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Waves and Sound', $CONTENT$
WORKED EXAMPLES — WAVES AND SOUND

EXAMPLE 1 — Wave Equation:
A sound wave has a frequency of 440 Hz and travels at 340 m/s.
(a) Calculate the wavelength.
(b) Calculate the period.

SOLUTION:
(a) v = fλ → λ = v/f = 340/440 = 0.773 m ≈ 0.77 m

(b) T = 1/f = 1/440 = 0.00227 s ≈ 2.27 × 10⁻³ s (2.27 milliseconds)

EXAMPLE 2 — Echo Calculation:
A sound source fires a pulse. The echo is heard 0.4 seconds later. If the speed of sound in air is 340 m/s, how far away is the reflecting surface?

SOLUTION:
Total distance = speed × time = 340 × 0.4 = 136 m
Distance to surface = 136/2 = 68 m (sound travels there and back)

EXAMPLE 3 — Sonar Depth:
A ship uses sonar to measure ocean depth. A pulse is emitted and the echo received 0.6 seconds later. Speed of sound in water = 1500 m/s.
Calculate the ocean depth.

SOLUTION:
Total distance = v × t = 1500 × 0.6 = 900 m
Ocean depth = 900/2 = 450 m

EXAMPLE 4 — Electromagnetic Spectrum:
A radio station broadcasts at a frequency of 90.5 MHz (FM radio).
(a) Calculate the wavelength. (Speed of EM waves = 3 × 10⁸ m/s)
(b) State one difference between radio waves and X-rays.

SOLUTION:
(a) f = 90.5 MHz = 90.5 × 10⁶ Hz
    λ = c/f = (3 × 10⁸)/(90.5 × 10⁶) = 3.31 m

(b) Radio waves have MUCH LOWER frequency (and longer wavelength) than X-rays.
    X-rays have higher energy and are ionising (can damage living cells); radio waves are non-ionising.
    X-rays can penetrate body tissue; radio waves are used for communication.

EXAMPLE 5 — Standing Waves:
A string of length 0.8 m is fixed at both ends and vibrates in its fundamental mode.
(a) What is the wavelength of the standing wave?
(b) If the wave speed on the string is 120 m/s, what is the fundamental frequency?

SOLUTION:
(a) In fundamental mode (1st harmonic): L = λ/2 → λ = 2L = 2 × 0.8 = 1.6 m

(b) f = v/λ = 120/1.6 = 75 Hz
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Waves and Sound', $CONTENT$
WASSCE PAST QUESTIONS — WAVES AND SOUND

QUESTION 1 (WASSCE 2020, Q1b):
(a) Distinguish between transverse and longitudinal waves. Give one example of each.
(b) A sound wave has a frequency of 250 Hz and wavelength of 1.32 m. Calculate the speed of sound.

ANSWERS:
(a) Transverse wave: The particles vibrate perpendicular to the direction of wave propagation. Example: Light waves (or water waves, waves on a string).
Longitudinal wave: The particles vibrate parallel to the direction of wave propagation; consists of compressions and rarefactions. Example: Sound waves.

(b) v = fλ = 250 × 1.32 = 330 m/s

QUESTION 2 (WASSCE 2019, Q3b):
(a) Define: (i) wavelength (ii) amplitude of a wave.
(b) State TWO differences between sound waves and light waves.

ANSWERS:
(a) (i) Wavelength: The distance between two consecutive points that are in phase (e.g., crest to crest, or compression to compression). Measured in metres.
(ii) Amplitude: The maximum displacement of a particle from its equilibrium (rest) position. Determines the energy/loudness of the wave.

(b) Differences:
i. Sound waves are longitudinal; light waves are transverse.
ii. Sound requires a medium to travel; light can travel through a vacuum.
iii. Speed of sound ≈ 340 m/s in air; speed of light = 3 × 10⁸ m/s (much faster).
iv. Sound cannot be polarised; light can be polarised.
(Any two)

QUESTION 3 (WASSCE 2021, Q5a):
(a) What is an echo?
(b) A student claps her hands near a cliff. She hears the echo 1.2 seconds later. If the speed of sound is 340 m/s, how far is she from the cliff?

ANSWERS:
(a) An echo is the reflection of a sound wave from a hard surface, heard as a distinct repetition of the original sound. To hear an echo, the reflected sound must return at least 0.1 seconds after the original (so the reflecting surface must be at least 17 m away).

(b) Total distance = v × t = 340 × 1.2 = 408 m
    Distance to cliff = 408/2 = 204 m

QUESTION 4 (WASSCE 2022, Q4b):
Explain what is meant by resonance. Give TWO practical examples.

ANSWER:
Resonance occurs when an object is driven at its natural (resonant) frequency by an external periodic force, causing the object to vibrate with maximum amplitude. Energy is efficiently transferred to the object at this frequency.

Examples:
1. A tuning fork causing another tuning fork of the same frequency to vibrate (acoustic resonance).
2. A radio receiver circuit tuned to resonate at the frequency of a radio station.
3. Microwave ovens using the resonant frequency of water molecules to heat food.
4. Soldiers breaking step when marching over bridges (to avoid resonance causing dangerous vibrations).
(Any two)

PRACTICE QUESTIONS:
1. Name the wave property that determines: (a) pitch of a sound (b) loudness of a sound
2. Why can sound NOT travel through a vacuum?

ANSWERS:
1. (a) Pitch is determined by FREQUENCY. Higher frequency → higher pitch.
   (b) Loudness is determined by AMPLITUDE. Higher amplitude → louder sound.
2. Sound is a mechanical/longitudinal wave that requires a medium (particles) to propagate. In a vacuum, there are no particles to compress and rarefy, so the disturbance cannot propagate. (This is different from light, which is an electromagnetic wave that can travel through vacuum.)
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 4: HEAT AND TEMPERATURE
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Heat and Temperature';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Heat, Temperature, and Thermal Energy', $CONTENT$
HEAT AND TEMPERATURE — WASSCE PHYSICS

DISTINCTION BETWEEN HEAT AND TEMPERATURE:

HEAT (Thermal Energy):
A form of energy transferred between objects because of a temperature difference.
Symbol: Q. Unit: Joules (J).
Heat flows from a hotter body to a colder body.
Heat is energy IN TRANSIT — it is not stored; once transferred, it becomes internal energy.

TEMPERATURE:
A measure of the average kinetic energy of the particles in a substance.
Symbol: T (or θ). Units: Celsius (°C) or Kelvin (K).
Determines the DIRECTION of heat flow (from high temperature to low temperature).

TEMPERATURE SCALES:
Celsius (°C): water freezes at 0°C, boils at 100°C at standard pressure.
Kelvin (K): Absolute temperature scale. 0 K = absolute zero (no thermal motion).
Conversion: T(K) = θ(°C) + 273 (or +273.15 more precisely)
0°C = 273 K; 100°C = 373 K; −273°C = 0 K (absolute zero)

INTERNAL ENERGY:
The total kinetic and potential energy of all the particles in a substance.
When a substance is heated (and no change of state occurs): particles move faster → average kinetic energy increases → temperature rises.
When a substance undergoes a change of state: energy breaks/forms intermolecular bonds (potential energy changes) → temperature does NOT change (latent heat).

THERMAL EQUILIBRIUM:
When two objects at different temperatures are in contact, heat flows until both reach the same temperature — thermal equilibrium. No net heat flow at equilibrium.

THERMOMETERS AND THEIR THERMOMETRIC PROPERTIES:
A thermometric property is one that changes measurably and reproducibly with temperature.

Liquid-in-glass thermometer: Volume of liquid (mercury or alcohol) changes with temperature.
Mercury: range −39°C to 357°C; easy to read (opaque); TOXIC.
Alcohol: range −115°C to 78°C; coloured for visibility; non-toxic; low boiling point (so range limited).

Properties of a good thermometric substance:
1. Measurable property changes uniformly with temperature.
2. Sensitive (large change for small temperature change).
3. Does not react with its surroundings.
4. Has a wide range.
5. Responds quickly to temperature changes.

Other thermometers: thermocouple (wide range, fast), resistance thermometer (precise), pyrometer (for very high temperatures, non-contact).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Specific Heat Capacity and Latent Heat', $CONTENT$
SPECIFIC HEAT CAPACITY

DEFINITION:
The specific heat capacity (c) of a substance is the amount of heat energy required to raise the temperature of 1 kg of the substance by 1°C (or 1 K), WITHOUT changing state.

FORMULA:
Q = mcΔθ
where:
Q = heat energy (Joules, J)
m = mass (kg)
c = specific heat capacity (J/kg/°C or J/kg/K)
Δθ = temperature change (°C or K)

KEY VALUES:
Water: c = 4200 J/kg/°C (very high — water is an excellent heat store)
Aluminium: c = 900 J/kg/°C
Iron/Steel: c = 450 J/kg/°C
Copper: c = 390 J/kg/°C
Lead: c = 130 J/kg/°C
Glass: c ≈ 670 J/kg/°C

WHY WATER HAS HIGH SPECIFIC HEAT CAPACITY:
Water molecules are held together by strong hydrogen bonds. Breaking and reforming these bonds requires significant energy, so a lot of heat is needed to change water's temperature.
This makes water: ideal as a coolant (car radiators, industrial cooling); important for climate regulation (oceans moderate coastal temperatures); essential for life.

EXPERIMENT TO MEASURE SPECIFIC HEAT CAPACITY (METHOD OF MIXTURES):
Hot liquid is mixed with cold water in a well-insulated container.
Heat lost by hot liquid = Heat gained by cold water (assuming no heat loss to surroundings)
m₁c₁Δθ₁ = m₂c₂Δθ₂

CALORIMETRY — ELECTRICAL METHOD:
Heat a known mass of liquid with an electric heater.
Q_supplied = Pt = IVt (electrical energy input)
Q = mcΔθ (heat gained by substance)
Equating: Pt = mcΔθ → c = Pt/(mΔθ)

LATENT HEAT

CHANGE OF STATE:
Melting: solid → liquid (heat is absorbed; temperature stays constant during melting)
Boiling/Vaporisation: liquid → gas (heat is absorbed; temperature stays constant during boiling)
Condensation: gas → liquid (heat is released; temperature stays constant)
Freezing/Solidification: liquid → solid (heat is released; temperature stays constant)

WHY TEMPERATURE STAYS CONSTANT DURING CHANGE OF STATE:
The energy (latent heat) is used to break intermolecular bonds (increase potential energy), NOT to increase kinetic energy. Since temperature is a measure of average kinetic energy → temperature doesn't change.

SPECIFIC LATENT HEAT (L):
The heat energy required to change the state of 1 kg of a substance WITHOUT changing its temperature.
Q = mL
where L = specific latent heat (J/kg), m = mass (kg)

Specific latent heat of fusion (L_f): Solid ↔ Liquid change.
Water: L_f = 336,000 J/kg = 336 kJ/kg

Specific latent heat of vaporisation (L_v): Liquid ↔ Gas change.
Water: L_v = 2,260,000 J/kg = 2260 kJ/kg (much larger than L_f, because molecules must completely separate)

WHY L_v > L_f:
During melting, molecules only partially separate (still close). During vaporisation, molecules completely separate and overcome all intermolecular attraction — requires much more energy.

COOLING CURVE:
Temperature (°C) vs Time (min) graph for a substance cooling from gas to solid.
Shows plateaus (flat regions) at boiling point and melting point where latent heat is being released at constant temperature.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Heat Transfer: Conduction, Convection, Radiation', $CONTENT$
HEAT TRANSFER MECHANISMS

CONDUCTION:
Heat transfer through a material by particle-to-particle vibration, WITHOUT bulk movement of material.

HOW IT WORKS IN METALS:
1. Particles at the hot end vibrate more vigorously.
2. These particles pass kinetic energy to neighbouring particles by collisions.
3. The disturbance passes from hot region to cold region.
4. In metals: free electrons also carry energy efficiently (main mechanism in metals → metals are good conductors).

Good conductors: Metals — silver (best), copper, aluminium, iron.
Poor conductors (insulators): Wood, glass, air, wool, foam, plastics.
Why air is a good insulator: Air has very few particles that can transfer energy; they are widely spaced (poor contact between molecules).

Factors affecting rate of conduction:
- Temperature difference (greater ΔT → faster conduction)
- Cross-sectional area (greater area → faster)
- Length (shorter → faster)
- Material (thermal conductivity)

APPLICATIONS:
Good conductors: Cooking pots (copper/aluminium bottoms), heat sinks, radiators.
Good insulators: Clothing (traps air), double-glazed windows (air gap), cavity wall insulation, thermos flask (vacuum + silver lining).

CONVECTION:
Heat transfer by the bulk movement of a fluid (liquid or gas).

HOW IT WORKS:
1. Fluid near heat source becomes warmer.
2. Warmer fluid expands → becomes less dense → RISES.
3. Cooler, denser fluid sinks to replace it.
4. A CONVECTION CURRENT is established (circulation of fluid).
5. Convection requires gravity (buoyancy force drives the convection).

Natural convection: Driven by density differences.
Forced convection: Fan or pump forces fluid to move (fan heater, car cooling system).

Applications: Sea breeze and land breeze, hot water central heating, air conditioning, refrigerators (cooling coils at top → cold air sinks).

RADIATION (Thermal/Infrared Radiation):
Heat transfer by electromagnetic waves (infrared radiation), requiring NO medium.

PROPERTIES:
- Can travel through vacuum (how the Sun warms Earth).
- Travels at speed of light (3 × 10⁸ m/s).
- All objects emit and absorb thermal radiation.
- Hotter objects emit MORE radiation and at shorter wavelengths.

EMISSION AND ABSORPTION:
Best emitters and absorbers: Dull, BLACK surfaces (matt black).
Best reflectors (worst emitters/absorbers): Shiny, polished SILVER/WHITE surfaces.
Leslie cube demonstrates this: matt black side emits most; shiny side emits least.

APPLICATIONS:
- Solar panels: black surface to maximise absorption.
- Thermos flask: silver/mirrored surfaces inside to minimise radiation losses.
- White/light-coloured clothing in hot climates: reflects more radiation.
- Greenhouse effect: glass allows short-wave solar radiation in; traps long-wave infrared reradiated by ground.

STEFAN-BOLTZMANN LAW (for reference):
P ∝ T⁴ (power radiated per unit area is proportional to the 4th power of absolute temperature)
Explains why hotter objects radiate MUCH more energy.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Heat and Temperature', $CONTENT$
WORKED EXAMPLES — HEAT AND TEMPERATURE

EXAMPLE 1 — Specific Heat Capacity:
How much heat is needed to raise the temperature of 2.5 kg of water from 20°C to 80°C?
(c_water = 4200 J/kg/°C)

SOLUTION:
Q = mcΔθ = 2.5 × 4200 × (80 − 20)
Q = 2.5 × 4200 × 60
Q = 630,000 J = 630 kJ

EXAMPLE 2 — Method of Mixtures:
200 g of copper at 100°C is placed in 300 g of water at 20°C.
Find the final equilibrium temperature. (c_Cu = 390 J/kg/°C, c_water = 4200 J/kg/°C)

SOLUTION:
Let final temperature = θ°C
Heat lost by copper = Heat gained by water
m_Cu × c_Cu × (100 − θ) = m_w × c_w × (θ − 20)
0.2 × 390 × (100 − θ) = 0.3 × 4200 × (θ − 20)
78(100 − θ) = 1260(θ − 20)
7800 − 78θ = 1260θ − 25200
7800 + 25200 = 1260θ + 78θ
33000 = 1338θ
θ = 33000/1338 = 24.7°C ≈ 24.7°C

EXAMPLE 3 — Latent Heat:
How much heat energy is needed to convert 0.5 kg of ice at 0°C to water at 0°C?
(L_f of water = 336,000 J/kg)

SOLUTION:
Q = mL_f = 0.5 × 336,000 = 168,000 J = 168 kJ

EXAMPLE 4 — Combined (Heating ice to steam):
Calculate the total heat needed to convert 200 g of ice at −10°C to steam at 100°C.
(c_ice = 2100 J/kg/°C, L_f = 336,000 J/kg, c_water = 4200 J/kg/°C, L_v = 2,260,000 J/kg)

SOLUTION:
m = 0.2 kg
Step 1: Heat ice from −10°C to 0°C: Q₁ = mcΔθ = 0.2 × 2100 × 10 = 4,200 J
Step 2: Melt ice at 0°C: Q₂ = mL_f = 0.2 × 336,000 = 67,200 J
Step 3: Heat water from 0°C to 100°C: Q₃ = mcΔθ = 0.2 × 4200 × 100 = 84,000 J
Step 4: Vaporise water at 100°C: Q₄ = mL_v = 0.2 × 2,260,000 = 452,000 J

Total Q = 4200 + 67200 + 84000 + 452000 = 607,400 J ≈ 607 kJ

EXAMPLE 5 — Electrical Heating:
A 2 kW heater is used to heat 3 kg of aluminium from 25°C to 125°C.
(a) Calculate heat needed. (c_Al = 900 J/kg/°C)
(b) Calculate time needed (assuming 100% efficiency).

SOLUTION:
(a) Q = mcΔθ = 3 × 900 × 100 = 270,000 J = 270 kJ

(b) P = Q/t → t = Q/P = 270,000/2000 = 135 s = 2 minutes 15 seconds
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Heat and Temperature', $CONTENT$
WASSCE PAST QUESTIONS — HEAT AND TEMPERATURE

QUESTION 1 (WASSCE 2020, Q4b):
(a) Distinguish between specific heat capacity and specific latent heat.
(b) How much heat is required to melt 0.4 kg of ice at 0°C to water at 0°C?
    (Specific latent heat of fusion of ice = 3.36 × 10⁵ J/kg)

ANSWERS:
(a) Specific heat capacity (c): The heat energy required to raise the temperature of 1 kg of a substance by 1°C (or 1 K) without a change of state. Formula: Q = mcΔθ. Units: J/kg/°C.
Specific latent heat (L): The heat energy required to change the state of 1 kg of a substance at constant temperature (no temperature change). Formula: Q = mL. Units: J/kg.

(b) Q = mL = 0.4 × 3.36 × 10⁵ = 1.344 × 10⁵ J = 134,400 J = 134.4 kJ

QUESTION 2 (WASSCE 2019, Q2a):
State and explain THREE methods of heat transfer, giving ONE practical example of each.

ANSWER:
1. Conduction: Transfer of heat through a material by vibration of particles from particle to particle (and free electrons in metals), without bulk movement. Example: A metal spoon placed in hot soup becomes hot at the handle end. (Or: cooking pot getting hot on a stove)

2. Convection: Transfer of heat by the actual movement of a heated fluid (liquid or gas). Warm fluid rises (less dense), cool fluid sinks (denser), creating convection currents. Example: Hot water radiators — water heated at the bottom rises, cooler water descends; the room is warmed by air convection currents. (Or: sea/land breezes)

3. Radiation: Transfer of heat energy by electromagnetic waves (infrared radiation), requiring no medium. Example: The Sun warms the Earth through the vacuum of space. (Or: feeling heat from a fire without touching it)

QUESTION 3 (WASSCE 2021, Q3a):
500 g of water at 80°C is mixed with 300 g of water at 20°C in an insulated container.
Find the final temperature of the mixture. (c_water = 4200 J/kg/°C)

ANSWER:
Heat lost by hot water = Heat gained by cold water
m₁c(θ₁ − θ_f) = m₂c(θ_f − θ₂)
0.5 × 4200 × (80 − θ_f) = 0.3 × 4200 × (θ_f − 20)
(Cancel 4200 from both sides)
0.5(80 − θ_f) = 0.3(θ_f − 20)
40 − 0.5θ_f = 0.3θ_f − 6
40 + 6 = 0.3θ_f + 0.5θ_f
46 = 0.8θ_f
θ_f = 46/0.8 = 57.5°C

QUESTION 4 (WASSCE 2022, Q5b):
Explain why:
(a) A thermos flask keeps liquids hot for long periods.
(b) Burns from steam are more severe than burns from boiling water at the same temperature.

ANSWERS:
(a) A thermos flask has: (1) A vacuum between the double glass walls — eliminates heat loss by conduction and convection (no medium for these). (2) Silvered/mirrored inner surfaces — minimise heat loss/gain by radiation (silver reflects radiation). (3) Insulating stopper — prevents heat loss by conduction through the opening. All three mechanisms of heat transfer are minimised, so the liquid stays hot for a long time.

(b) Steam at 100°C causes more severe burns than boiling water at 100°C because when steam condenses on the skin, it releases its LATENT HEAT OF VAPORISATION (L_v = 2,260,000 J/kg) in addition to the heat that boiling water at 100°C would release on cooling. The latent heat alone represents a massive extra energy transfer to the skin, causing much deeper and more extensive burns.

PRACTICE QUESTIONS:
1. Convert: (a) 27°C to Kelvin (b) 500 K to °C
2. Why is water used as a coolant in car engines?

ANSWERS:
1. (a) 27 + 273 = 300 K  (b) 500 − 273 = 227°C
2. Water has a very high specific heat capacity (4200 J/kg/°C) — it can absorb a large amount of heat with only a small rise in temperature. This makes it very effective at absorbing heat from the engine without boiling quickly. It is also cheap, abundant, and a liquid at engine operating temperatures.
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 5: LIGHT AND OPTICS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Light and Optics';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Properties of Light and Reflection', $CONTENT$
LIGHT AND OPTICS — WASSCE PHYSICS

Light is a form of electromagnetic radiation that the human eye can detect. In the electromagnetic spectrum, visible light occupies wavelengths from about 400 nm (violet) to 700 nm (red).

PROPERTIES OF LIGHT:
- Travels in straight lines (rectilinear propagation) → explains shadows, eclipses, pinhole camera.
- Is a transverse electromagnetic wave.
- Travels at c = 3 × 10⁸ m/s in vacuum (fastest speed possible).
- Can travel through vacuum (unlike sound).
- Can be reflected, refracted, diffracted, and can interfere.

SHADOW FORMATION:
Because light travels in straight lines, objects block light and form shadows.
Umbra: region of total shadow (no direct light).
Penumbra: region of partial shadow (partial direct light).
Formed clearly when light source is point-like; fuzzy penumbra with extended sources.

ECLIPSES:
Solar eclipse: Moon passes between Earth and Sun → Moon's shadow falls on Earth → observers in umbra see total solar eclipse.
Lunar eclipse: Earth passes between Moon and Sun → Earth's shadow falls on Moon.

PINHOLE CAMERA (Camera Obscura):
A tiny hole admits light from a scene into a dark box.
An inverted (upside down) and reversed image forms on the opposite wall.
Image properties: Inverted, diminished, real.
Smaller hole → sharper image (but dimmer).
The image height/object height = image distance/object distance (magnification).

REFLECTION OF LIGHT:
LAWS OF REFLECTION:
1. The angle of incidence (i) equals the angle of reflection (r). (i = r)
2. The incident ray, reflected ray, and the normal to the surface at the point of incidence all lie in the same plane.
(Angles measured from the NORMAL, not the surface.)

TYPES OF REFLECTION:
Specular/Regular reflection: From smooth, flat surfaces. Parallel rays remain parallel after reflection. Clear images formed (mirrors).
Diffuse/Irregular reflection: From rough surfaces. Parallel rays reflected in many directions. NO clear image — just scattered light. (How we see non-luminous objects: they diffuse-reflect ambient light.)

PLANE MIRRORS — IMAGE PROPERTIES:
- Image is VIRTUAL (cannot be formed on a screen).
- Image is UPRIGHT (same orientation as object).
- Image is LATERALLY INVERTED (left-right reversed).
- Image is the SAME SIZE as the object.
- Image distance behind mirror = Object distance in front of mirror.
- Image is as far BEHIND the mirror as the object is in front.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Refraction, Total Internal Reflection, and Lenses', $CONTENT$
REFRACTION OF LIGHT

DEFINITION:
Refraction is the change in speed (and usually direction) of light as it crosses a boundary between two different optical media.

When light enters a denser medium (e.g., air → glass or air → water):
- Speed DECREASES
- Wavelength DECREASES (frequency stays the same)
- Ray bends TOWARD the normal (angle of refraction < angle of incidence)

When light enters a less dense medium (e.g., glass → air):
- Speed INCREASES
- Wavelength INCREASES
- Ray bends AWAY from the normal

SNELL'S LAW:
n₁ sin θ₁ = n₂ sin θ₂
where n = refractive index, θ = angle to normal

For air to medium: n = sin i / sin r (where n = refractive index of medium)
Refractive index (n): n = speed in vacuum / speed in medium = c/v
n_air ≈ 1.0; n_water ≈ 1.33; n_glass ≈ 1.5; n_diamond ≈ 2.4

TOTAL INTERNAL REFLECTION (TIR):
Occurs when light travels from a denser medium to a less dense medium AND the angle of incidence exceeds the critical angle.
At exactly the critical angle: refracted ray travels along the boundary (r = 90°).
Above the critical angle: ALL light is reflected back into the denser medium.

Critical angle (C): sin C = 1/n (where n is the refractive index of the denser medium)

Applications of TIR:
1. Optical fibres: Light undergoes TIR repeatedly as it travels along a glass fibre. Used in telecommunications (internet cables), medical endoscopes (viewing inside the body), and decorative lighting.
2. Diamonds: High refractive index (n ≈ 2.4) → small critical angle (25°) → most light undergoes TIR inside → diamonds sparkle brilliantly.
3. Prisms in binoculars: 45°-45°-90° prisms use TIR to redirect light path and invert image without silvering.
4. Cats' eyes in roads: Retroreflectors (using TIR prisms) reflect car headlights back to drivers.

LENSES:
A lens is a piece of transparent material shaped to converge or diverge light.

CONVEX (CONVERGING) LENS:
Thicker in the middle than at edges.
Converges parallel rays to a focal point (F) on the far side.
Focal length (f): Distance from lens to focal point.
Produces real images (except when object is within focal length → virtual, magnified image).
Power of lens (P) = 1/f (unit: Dioptres, D). More curved → shorter f → higher power.

CONCAVE (DIVERGING) LENS:
Thinner in middle than at edges.
Diverges parallel rays; they appear to come from a focal point (F) on the same side as the incoming light.
ALWAYS produces virtual, diminished, upright images.

LENS FORMULA:
1/v − 1/u = 1/f (real is positive convention) OR 1/f = 1/v + 1/u (other sign conventions)
Magnification (m) = v/u (ratio of image distance to object distance)

USES OF LENSES:
Convex lenses: Camera (real, diminished, inverted image on film/sensor), projector (real, magnified, inverted image on screen), magnifying glass (virtual, magnified, upright image), telescope (objective lens), human eye (cornea + crystalline lens).
Concave lenses: Correcting short-sightedness (myopia) — diverge rays before they enter the eye.

EYE DEFECTS:
Short-sightedness (myopia): Eyeball too long; far objects focused in front of retina → blurred. Corrected with CONCAVE (diverging) lens.
Long-sightedness (hyperopia): Eyeball too short; near objects focused behind retina → blurred. Corrected with CONVEX (converging) lens.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Curved Mirrors and Dispersion of Light', $CONTENT$
CURVED MIRRORS

CONCAVE (CONVERGING) MIRROR:
The reflecting surface curves INWARD (like the inside of a bowl/spoon).
Focal point (F): Point where parallel rays converge after reflection.
Centre of curvature (C): Centre of the sphere of which the mirror is a section. C = 2F.
Focal length (f) = R/2 (where R = radius of curvature).

Images formed by concave mirror:
Object at infinity: Image at F; real, point/diminished.
Object beyond C: Image between F and C; real, inverted, diminished.
Object at C: Image at C; real, inverted, same size.
Object between C and F: Image beyond C; real, inverted, magnified.
Object at F: Image at infinity (rays parallel; no image).
Object within F (between F and mirror): Image is VIRTUAL, UPRIGHT, MAGNIFIED (behind mirror).

Uses: Shaving/makeup mirrors (magnified upright image), headlamps/torches (object at F → parallel beam), solar furnace, satellite dishes.

CONVEX (DIVERGING) MIRROR:
The reflecting surface curves OUTWARD (like the outside of a sphere/spoon).
ALWAYS produces virtual, upright, diminished images.
Wider field of view than plane mirrors.
Uses: Car rear-view mirrors (see wide area), security/shop mirrors, road junction mirrors.

MIRROR FORMULA:
1/v + 1/u = 1/f = 2/R
(using sign convention: real is positive for mirrors)
Magnification = −v/u

DISPERSION OF LIGHT:
White light is split into its component colours (ROYGBIV spectrum) when passing through a prism.
ORDER OF COLOURS: Red, Orange, Yellow, Green, Blue, Indigo, Violet (ROYGBIV)
Red has lowest frequency (longest wavelength); Violet has highest frequency (shortest wavelength).
Red is deviated LEAST; Violet is deviated MOST (because higher frequency light is refracted more in glass).

The refractive index of glass varies with frequency — Violet light slows down more in glass than red light. This is called dispersion.

Rainbow formation: Sunlight enters water droplets, is refracted, undergoes TIR inside the droplet, then refracts again on exit → white light is split into colours. Red appears at top (least refracted), violet at bottom.

COLOUR MIXING:
Primary colours of LIGHT (additive mixing): Red + Green + Blue = White
Red + Green = Yellow; Red + Blue = Magenta; Green + Blue = Cyan
All three together = White.

Primary colours of PIGMENT (subtractive mixing): Cyan + Magenta + Yellow = Black
These are different from light primaries!

TRANSPARENT vs OPAQUE vs TRANSLUCENT:
Transparent: Light passes through clearly (glass, water) — objects clearly visible.
Translucent: Light passes through but is scattered (frosted glass) — objects blurry.
Opaque: No light passes through (wood, metal) — blocks light completely.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Light and Optics', $CONTENT$
WORKED EXAMPLES — LIGHT AND OPTICS

EXAMPLE 1 — Snell's Law:
A ray of light passes from air into glass. The angle of incidence is 45° and the angle of refraction is 28°.
(a) Calculate the refractive index of the glass.
(b) Calculate the speed of light in the glass. (c = 3 × 10⁸ m/s)

SOLUTION:
(a) n = sin i / sin r = sin 45° / sin 28° = 0.707 / 0.469 = 1.51

(b) n = c/v → v = c/n = (3 × 10⁸)/1.51 = 1.99 × 10⁸ m/s ≈ 2.0 × 10⁸ m/s

EXAMPLE 2 — Critical Angle:
The refractive index of glass is 1.5.
(a) Calculate the critical angle for glass-air interface.
(b) What happens to a ray hitting this boundary at 45°?

SOLUTION:
(a) sin C = 1/n = 1/1.5 = 0.667
    C = sin⁻¹(0.667) = 41.8°

(b) Since 45° > 41.8° (critical angle), the ray undergoes TOTAL INTERNAL REFLECTION — no light crosses into the air; all light is reflected back into the glass.

EXAMPLE 3 — Concave Mirror:
An object is placed 30 cm in front of a concave mirror with focal length 10 cm.
(a) Find the image distance.
(b) Calculate the magnification.
(c) Describe the image.

SOLUTION:
Using 1/v + 1/u = 1/f (with real positive convention: u = +30, f = +10):
1/v + 1/30 = 1/10
1/v = 1/10 − 1/30 = 3/30 − 1/30 = 2/30
v = 15 cm (positive → real image, on same side as object for mirror)

(b) m = −v/u = −15/30 = −0.5 (negative → inverted; |m| < 1 → diminished)

(c) Image is REAL, INVERTED, DIMINISHED, formed 15 cm in front of the mirror.

EXAMPLE 4 — Convex Lens:
An object 4 cm tall is placed 20 cm from a convex lens of focal length 12 cm.
Find: (a) image distance (b) image height (c) nature of image.

SOLUTION:
1/f = 1/v + 1/u (taking u negative in Cartesian convention, or using 1/v = 1/f + 1/u with real positive):
Using 1/v = 1/f − 1/u (with u = −20, f = +12 in standard sign convention):
1/v = 1/12 + 1/20 = 5/60 + 3/60 = 8/60
v = 60/8 = 7.5 cm ... 

Let me use the standard formula: 1/v - 1/u = 1/f with u = -20 cm (object on left), f = +12 cm:
1/v = 1/f + 1/u = 1/12 + 1/(−20) = 5/60 − 3/60 = 2/60... 

Using product/sum approach: v = uf/(u−f) = (20×12)/(20−12) = 240/8 = 30 cm (real image)

(b) m = v/u = 30/20 = 1.5; Image height = 1.5 × 4 = 6 cm

(c) Image is REAL, INVERTED, MAGNIFIED (1.5×), 30 cm on the opposite side of the lens.

EXAMPLE 5 — Optical Fibre:
Explain why optical fibres are used for telecommunications rather than copper wire.

SOLUTION:
Optical fibres carry information as pulses of light, which undergo total internal reflection as they travel along the fibre.
Advantages:
1. Much higher data carrying capacity (bandwidth) — light has very high frequency.
2. Lower signal loss over long distances — light doesn't lose energy as quickly as electrical signals.
3. No interference from electromagnetic fields.
4. Lighter and more flexible than copper cables.
5. More secure (light cannot easily be intercepted).
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Light and Optics', $CONTENT$
WASSCE PAST QUESTIONS — LIGHT AND OPTICS

QUESTION 1 (WASSCE 2020, Q2b):
(a) State the laws of refraction (Snell's Law).
(b) A ray of light travels from water (n = 1.33) to air. What is the critical angle?

ANSWERS:
(a) Laws of refraction (Snell's Law):
1. The incident ray, refracted ray, and normal all lie in the same plane.
2. The ratio of sin(angle of incidence) to sin(angle of refraction) is constant for a given pair of media: n₁ sin θ₁ = n₂ sin θ₂. For a ray going from medium 1 to medium 2, n₁ sin i = n₂ sin r.

(b) For water-air interface (n_water = 1.33, n_air = 1.00):
sin C = n_air/n_water = 1.00/1.33 = 0.752
C = sin⁻¹(0.752) = 48.8° ≈ 48.8°

QUESTION 2 (WASSCE 2019, Q5b):
State FOUR properties of the image formed in a plane mirror.

ANSWER:
Images in a plane mirror are:
1. VIRTUAL — cannot be formed on a screen; appears to be behind the mirror.
2. UPRIGHT — the same way up as the object.
3. LATERALLY INVERTED — left and right are swapped.
4. SAME SIZE as the object (magnification = 1).
5. As far BEHIND the mirror as the object is in FRONT. (image distance = object distance)
(Any FOUR)

QUESTION 3 (WASSCE 2021, Q1b):
(a) What is total internal reflection?
(b) State TWO conditions necessary for TIR to occur.
(c) Give TWO applications of TIR.

ANSWERS:
(a) Total internal reflection occurs when light travelling from a denser medium to a less dense medium hits the boundary at an angle greater than the critical angle, and ALL the light is reflected back into the denser medium (none is transmitted).

(b) Conditions for TIR:
1. Light must be travelling from a denser medium to a less dense medium (e.g., glass to air, water to air).
2. The angle of incidence must be greater than (or equal to) the critical angle for that interface.

(c) Applications of TIR:
1. Optical fibres — used in telecommunications (internet cables) and medical endoscopes.
2. Diamonds — TIR creates the brilliant sparkle.
3. Periscopes and binoculars (prisms using TIR to redirect light).
(Any two)

QUESTION 4 (WASSCE 2022, Q3b):
Describe the visible spectrum. Which colour: (a) has the highest frequency (b) is deviated the most by a prism?

ANSWER:
The visible spectrum is the range of colours of visible light arranged in order of frequency/wavelength. White light is a mixture of all visible colours. When white light passes through a prism, it is dispersed into: Red, Orange, Yellow, Green, Blue, Indigo, Violet (ROYGBIV).

(a) VIOLET has the highest frequency (and shortest wavelength, ~400 nm) in the visible spectrum.
(b) VIOLET is deviated the most by a prism — because it has the highest frequency, it slows down more in glass (higher refractive index) and is therefore bent more than red light.
RED has the lowest frequency and is deviated least.

PRACTICE QUESTIONS:
1. What is the refractive index of a medium if the critical angle is 37°?
2. What type of lens corrects (a) myopia (b) hyperopia?

ANSWERS:
1. sin C = 1/n → sin 37° = 1/n → 0.602 = 1/n → n = 1/0.602 = 1.66
2. (a) Myopia (short-sightedness): CONCAVE (diverging) lens
   (b) Hyperopia (long-sightedness): CONVEX (converging) lens
$CONTENT$, 'practice', 5);

END $$;
