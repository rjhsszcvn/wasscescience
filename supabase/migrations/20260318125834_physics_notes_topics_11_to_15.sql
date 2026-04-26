
/*
  # Physics Notes — Topics 11 to 15
  
  Adds comprehensive Aki Ola-style notes for:
  11. Scalars and Vectors
  12. Projectiles and Circular Motion
  13. Simple Harmonic Motion
  14. Thermodynamics and Gas Laws
  15. Electromagnetic Induction
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';

  -- =============================================
  -- TOPIC 11: SCALARS AND VECTORS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Scalars and Vectors';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Scalar and Vector Quantities', $CONTENT$
SCALARS AND VECTORS — WASSCE PHYSICS

SCALAR QUANTITY:
A quantity that has magnitude (size) ONLY. No direction needed to fully describe it.
Examples: mass, speed, distance, time, energy, power, temperature, pressure, frequency, density, volume, work.
Scalars can be added by simple arithmetic (3 kg + 5 kg = 8 kg).

VECTOR QUANTITY:
A quantity that has both magnitude AND direction. Direction is essential for a complete description.
Examples: displacement, velocity, acceleration, force, weight, momentum, impulse, electric field, gravitational field.
Vectors must be combined using vector addition (head-to-tail or parallelogram rule).

KEY DISTINCTION:
Speed = 50 km/h (scalar — no direction)
Velocity = 50 km/h north (vector — direction specified)
Distance = 100 m (scalar — total path)
Displacement = 60 m east (vector — start to finish, straight line)

VECTOR NOTATION:
Vectors represented by: arrows (length = magnitude, direction = direction), bold type (F), or underline (F̲) or with arrow above (→F).
The magnitude of vector F is written as |F| or just F.

REPRESENTING VECTORS:
Graphically: Draw an arrow with length proportional to magnitude, pointing in the correct direction.
Must always include a scale (e.g., 1 cm = 10 N) to determine magnitude.

ADDITION OF VECTORS — THREE METHODS:

1. TRIANGLE RULE (HEAD-TO-TAIL METHOD):
Draw the first vector from any start point.
Draw the second vector starting from the HEAD of the first.
The RESULTANT (sum) is drawn from the TAIL of the first to the HEAD of the second.
Works for any number of vectors: chain them head-to-tail, resultant connects start to end.

2. PARALLELOGRAM RULE:
For two vectors meeting at a point:
Draw both vectors from the SAME starting point.
Complete the parallelogram using these two as adjacent sides.
The DIAGONAL from the starting point is the resultant.
R² = P² + Q² + 2PQ cos θ (where θ is angle between P and Q)

3. COMPONENT METHOD (most powerful):
Resolve each vector into horizontal (x) and vertical (y) components.
Sum all x-components: Rₓ = ΣFₓ
Sum all y-components: Rᵧ = ΣFᵧ
Resultant magnitude: R = √(Rₓ² + Rᵧ²)
Resultant direction: θ = tan⁻¹(Rᵧ/Rₓ)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Resolution of Vectors and Resultant Forces', $CONTENT$
RESOLUTION OF VECTORS

Any vector can be split into two perpendicular components (usually horizontal and vertical).
This is the REVERSE of vector addition — splitting one vector into two components.

For a vector F at angle θ to the horizontal:
Horizontal component: Fₓ = F cos θ
Vertical component: Fᵧ = F sin θ

Check: F = √(Fₓ² + Fᵧ²) (Pythagoras theorem to verify)
θ = tan⁻¹(Fᵧ/Fₓ)

INCLINED PLANE — RESOLVING GRAVITY:
Weight (W = mg) acts VERTICALLY DOWNWARD.
On a slope at angle θ to horizontal:
Component along the slope (down the slope): W sin θ = mg sin θ
Component perpendicular to slope (into slope): W cos θ = mg cos θ
Normal reaction N = mg cos θ (balances perpendicular component).
Friction force F_friction = μN = μmg cos θ (up the slope for sliding object).

NET FORCE ON INCLINED PLANE (without friction):
Resultant acceleration along slope = g sin θ (down the slope).

EQUILIBRIUM OF FORCES:
An object is in equilibrium when the RESULTANT FORCE is ZERO.
Conditions for equilibrium:
1. Algebraic sum of all forces = 0 (translational equilibrium).
   ΣFₓ = 0 AND ΣFᵧ = 0
2. Algebraic sum of all moments about any point = 0 (rotational equilibrium).
   ΣClockwise moments = ΣAnticlockwise moments

TRIANGLE OF FORCES:
If three concurrent forces are in equilibrium, they can be represented as the three sides of a closed triangle (drawn head-to-tail). The triangle closes because the resultant is zero.

LAMI'S THEOREM:
If THREE concurrent forces are in equilibrium:
F₁/sin α₁ = F₂/sin α₂ = F₃/sin α₃
where α₁ is the angle OPPOSITE to force F₁ (between the other two forces), etc.

SUBTRACTION OF VECTORS:
A − B = A + (−B), where −B has the same magnitude as B but opposite direction.
Useful for: finding change in velocity (Δv = v₂ − v₁), relative velocity.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Applications and Problem-Solving Strategies', $CONTENT$
APPLICATIONS OF VECTORS

RESULTANT OF PERPENDICULAR VECTORS:
When two vectors are at RIGHT ANGLES (90°):
R = √(A² + B²) (Pythagoras theorem)
θ = tan⁻¹(B/A) (direction from the larger/reference vector)

Example: A boat travels east at 4 m/s; river current flows north at 3 m/s.
Resultant speed = √(4² + 3²) = √25 = 5 m/s
Direction: θ = tan⁻¹(3/4) = 36.9° north of east.

BOAT/SWIMMING IN A CURRENT:
To cross a river straight (perpendicular to bank): Aim upstream at angle such that horizontal component of boat velocity cancels river current.
If boat speed = b, river speed = r: angle to bank = sin⁻¹(r/b).
Time to cross = width/component of velocity perpendicular to bank.

PROJECTILE MOTION (from vector perspective):
Initial velocity u is a vector: resolve into uₓ = u cos θ (horizontal) and uᵧ = u sin θ (vertical).
These components are independent — horizontal is constant, vertical is uniformly decelerated.

FORCE TRIANGLES (STATICS):
Three forces in equilibrium → they form a closed triangle.
Scale drawing → measure unknown forces.
OR use sine rule: F₁/sin α₁ = F₂/sin α₂ = F₃/sin α₃

FRICTION ON AN INCLINED PLANE:
Forces on a block of mass m on rough slope at angle θ, in equilibrium:
Weight: W = mg (vertically down)
Normal reaction: N = mg cos θ (perpendicular to slope, away from slope)
Friction: f = mg sin θ (up the slope, opposing downward sliding)

If block is ABOUT TO SLIDE: f = μₛN = μₛmg cos θ = mg sin θ → μₛ = tan θ.
Therefore: angle of friction = arctan(μₛ) = the angle at which block just begins to slide.

COMMON MISTAKES:
1. Adding vectors as scalars: 3 N + 4 N ≠ always 7 N (only if parallel and same direction). Could be anywhere from 1 N to 7 N depending on the angle between them.
2. Using wrong trigonometry: Always check which side is opposite and adjacent to the angle θ.
3. Forgetting direction in vector answers: Always specify direction (angle and reference direction).
4. Using degrees vs radians: Stick to degrees for WASSCE unless told otherwise.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Scalars and Vectors', $CONTENT$
WORKED EXAMPLES — SCALARS AND VECTORS

EXAMPLE 1 — Resultant of Two Vectors:
Two forces of 6 N (east) and 8 N (north) act on an object.
(a) Calculate the resultant force.
(b) Find the direction of the resultant (angle from east).

SOLUTION:
(a) Since forces are perpendicular (east and north = 90° angle):
    R = √(6² + 8²) = √(36 + 64) = √100 = 10 N

(b) θ = tan⁻¹(8/6) = tan⁻¹(1.333) = 53.1° north of east

EXAMPLE 2 — Resolution of a Vector:
A force of 50 N acts at 30° above the horizontal.
(a) Calculate the horizontal component.
(b) Calculate the vertical component.

SOLUTION:
(a) Fₓ = F cos θ = 50 × cos 30° = 50 × 0.866 = 43.3 N (horizontal)
(b) Fᵧ = F sin θ = 50 × sin 30° = 50 × 0.5 = 25 N (vertical)

Check: √(43.3² + 25²) = √(1875 + 625) = √2500 = 50 N ✓

EXAMPLE 3 — Inclined Plane:
A 5 kg box rests on a frictionless slope inclined at 20° to the horizontal.
(a) What is the normal reaction force?
(b) What is the component of weight along the slope (causing acceleration)?
(g = 10 m/s²)

SOLUTION:
W = mg = 5 × 10 = 50 N
(a) N = W cos θ = 50 × cos 20° = 50 × 0.940 = 47 N

(b) F_along slope = W sin θ = 50 × sin 20° = 50 × 0.342 = 17.1 N (down the slope)
    Acceleration = F/m = 17.1/5 = 3.42 m/s² down the slope (= g sin 20°)

EXAMPLE 4 — Lami's Theorem:
Three forces in equilibrium: 30 N, 40 N, and F.
The angles between them are: between 30 N and 40 N = 140°; between 40 N and F = 120°; between F and 30 N = 100°.
Find F.

SOLUTION:
Using Lami's Theorem (angle OPPOSITE to each force):
The angle opposite to F = angle between 30 N and 40 N = 140°
The angle opposite to 30 N = 120°
The angle opposite to 40 N = 100°

F/sin 140° = 30/sin 120° = 40/sin 100°
F = 30 × sin 140°/sin 120° = 30 × 0.643/0.866 = 22.3 N

Verification: 40/sin 100° = 40/0.985 = 40.6; 30/sin 120° = 30/0.866 = 34.6... 
(Use: F/sin 140° = 40/sin 100°: F = 40 × sin 140°/sin 100° = 40 × 0.643/0.985 = 26.1 N)

EXAMPLE 5 — Boat and River Current:
A boat can travel at 5 m/s in still water. A river flows at 3 m/s east.
The boat heads north.
(a) What is the actual velocity of the boat?
(b) At what angle does it travel relative to north?

SOLUTION:
(a) Actual speed = √(5² + 3²) = √(25 + 9) = √34 = 5.83 m/s

(b) θ = tan⁻¹(3/5) = tan⁻¹(0.6) = 31° east of north
(The boat goes somewhat east of north due to the river current carrying it east.)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Scalars and Vectors', $CONTENT$
WASSCE PAST QUESTIONS — SCALARS AND VECTORS

QUESTION 1 (WASSCE 2020, Q1c):
(a) Define: (i) scalar quantity (ii) vector quantity.
(b) Give TWO examples of each.

ANSWERS:
(a) (i) Scalar quantity: A physical quantity that has magnitude only and no direction. It is fully described by a number and its unit.
(ii) Vector quantity: A physical quantity that has both magnitude AND direction. A complete description requires both the size and the direction.

(b) Scalars: mass, speed, distance, time, temperature, energy, work, power (any two).
    Vectors: velocity, displacement, force, acceleration, weight, momentum, impulse (any two).

QUESTION 2 (WASSCE 2019, Q2b):
Two forces of 12 N and 5 N act on a body at right angles to each other.
(a) Calculate the resultant force.
(b) Find the angle the resultant makes with the 12 N force.

ANSWERS:
(a) R = √(12² + 5²) = √(144 + 25) = √169 = 13 N

(b) θ = tan⁻¹(5/12) = tan⁻¹(0.417) = 22.6° (the angle between the resultant and the 12 N force)

QUESTION 3 (WASSCE 2021, Q4a):
A force of 100 N acts at 60° to the horizontal.
(a) Calculate the horizontal and vertical components.
(b) Why is it important to resolve forces into components?

ANSWERS:
(a) Horizontal: Fₓ = 100 cos 60° = 100 × 0.5 = 50 N
    Vertical: Fᵧ = 100 sin 60° = 100 × 0.866 = 86.6 N

(b) Resolving forces into perpendicular components (horizontal and vertical) allows us to analyse complex force systems by working in each direction independently. We can then apply Newton's laws separately in each direction (ΣFₓ = maₓ and ΣFᵧ = maᵧ), making problems much easier to solve than trying to deal with the original angled forces directly.

QUESTION 4 (WASSCE 2022, Q2a):
State THREE differences between scalar quantities and vector quantities. Give one example of each.

ANSWER:
1. Scalars have magnitude only; vectors have both magnitude AND direction.
2. Scalars are added by simple arithmetic; vectors require vector addition (which accounts for direction).
3. Scalars cannot be negative (or negative simply means less quantity); for vectors, negative indicates direction (opposite to positive direction).
Example of scalar: speed (e.g., 60 km/h — no direction).
Example of vector: velocity (e.g., 60 km/h due north — direction specified).

PRACTICE QUESTIONS:
1. Forces of 8 N north and 6 N east act on an object. Find the resultant.
2. Resolve a 20 N force at 45° into horizontal and vertical components.

ANSWERS:
1. R = √(8² + 6²) = √(64 + 36) = √100 = 10 N; θ = tan⁻¹(6/8) = 36.9° east of north
2. Horizontal = 20 cos 45° = 20 × 0.707 = 14.1 N; Vertical = 20 sin 45° = 14.1 N (equal, because 45°)
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 12: PROJECTILES AND CIRCULAR MOTION
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Projectiles and Circular Motion';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Projectile Motion', $CONTENT$
PROJECTILES AND CIRCULAR MOTION — WASSCE PHYSICS

PROJECTILE MOTION:
A projectile is any object launched into the air and then subject ONLY to gravity (no thrust, no air resistance).
Key principle: Horizontal and vertical motions are COMPLETELY INDEPENDENT.

HORIZONTAL MOTION:
No force acts horizontally (assuming no air resistance) → no horizontal acceleration.
Horizontal velocity: uₓ = u cos θ (constant throughout flight)
Horizontal displacement: x = uₓ t = u cos θ × t

VERTICAL MOTION:
Gravity acts downward: a = −g (taking upward as positive).
Vertical velocity: uᵧ = u sin θ (initial upward component)
At any time t: vᵧ = uᵧ − gt = u sin θ − gt
Vertical displacement: y = uᵧt − ½gt²

TRAJECTORY:
The path of a projectile is a PARABOLA.
(Combining x = uₓt and y = uᵧt − ½gt²: eliminating t gives y = x tan θ − gx²/(2u²cos²θ) — equation of parabola)

HORIZONTAL PROJECTILE (launched horizontally, θ = 0°):
Initial horizontal velocity: uₓ = u; Initial vertical velocity: uᵧ = 0
At time t: x = ut; y = ½gt² (downward, taking down as positive)
Time to fall height h: t = √(2h/g)
Horizontal range: x = u√(2h/g)

KEY FORMULAE FOR A PROJECTILE LAUNCHED AT ANGLE θ WITH SPEED u:

TIME OF FLIGHT (T):
Total time in air = 2 × time to reach maximum height
T = 2u sin θ / g

MAXIMUM HEIGHT (H):
H = u² sin²θ / (2g)

HORIZONTAL RANGE (R):
R = u² sin(2θ) / g = 2u² sin θ cos θ / g

MAXIMUM RANGE:
Occurs at θ = 45° (where sin 2θ = sin 90° = 1 → R_max = u²/g)
Two angles give the same range: θ and (90° − θ). E.g., 30° and 60° give equal ranges.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Circular Motion: Velocity, Acceleration, and Centripetal Force', $CONTENT$
CIRCULAR MOTION

An object moving in a circle at CONSTANT SPEED is NOT in uniform motion — its DIRECTION constantly changes → velocity constantly changes → it IS accelerating.

ANGULAR VELOCITY (ω):
ω = angle turned through / time = Δθ/Δt
Unit: radians per second (rad/s).
For one full revolution: θ = 2π radians; T = period (seconds).
ω = 2π/T = 2πf (where f = frequency in Hz)

Relationship between linear (v) and angular (ω) velocity:
v = ωr (where r = radius of circle)

CENTRIPETAL ACCELERATION:
The acceleration of an object in circular motion is directed toward the CENTRE of the circle.
a = v²/r = ω²r

CENTRIPETAL FORCE:
The force required to keep an object moving in a circle. Directed toward the CENTRE.
F_c = mv²/r = mω²r = mωv

IMPORTANT: Centripetal force is NOT a new type of force — it is the name given to whatever force is providing the centre-directed force. It can be:
- Tension in a string (for whirling a ball on a string)
- Gravity (for planetary orbits, satellites)
- Normal reaction component (for car on a banked curve, roller coaster at top)
- Friction (for a car rounding a flat bend)
- Magnetic force (for charged particles in a magnetic field)

CENTRIFUGAL FORCE:
A fictitious/pseudo force felt in a rotating reference frame. It is NOT a real force.
In a rotating car, passengers feel thrown outward — this is due to their INERTIA (they tend to continue in a straight line), NOT a real outward force.

EXAMPLES OF CIRCULAR MOTION:

1. CAR ON A FLAT CURVE:
Centripetal force = Friction force: F_c = mv²/r = μmg
Maximum speed for safe cornering: v_max = √(μgr)
Larger radius → higher safe speed (why motorway curves are gentler than town bends).

2. CAR ON BANKED CURVE:
Banking provides component of normal reaction toward the centre.
At the design speed: N sin θ = mv²/r; N cos θ = mg → tan θ = v²/(rg)

3. SATELLITE IN ORBIT:
Gravity provides centripetal force: GMm/r² = mv²/r → v = √(GM/r)
Further from Earth → lower orbital speed (but longer orbital period).
Geostationary orbit: T = 24 hours; r ≈ 42,000 km from Earth's centre; stays above same point on equator.

4. VERTICAL CIRCULAR MOTION:
At TOP of loop: W + N = mv²/r; minimum speed (N = 0): v_min = √(gr)
At BOTTOM of loop: N − W = mv²/r; N = mg + mv²/r (heavier feeling)

FREQUENCY AND PERIOD:
f = 1/T; ω = 2πf = 2π/T
rpm (revolutions per minute) to rad/s: ω = rpm × 2π/60
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Deep Explanation: Projectile and Circular Motion Problems', $CONTENT$
DEEP EXPLANATION: SOLVING PROJECTILE PROBLEMS

STRATEGY FOR PROJECTILE PROBLEMS:
1. Identify initial conditions: speed u, angle θ.
2. Resolve into components: uₓ = u cos θ; uᵧ = u sin θ.
3. Write horizontal and vertical equations separately.
4. Horizontal: x = uₓt (no acceleration).
5. Vertical: use SUVAT with a = −g (taking up as +ve).
6. Use given conditions (e.g., height = 0 for landing, x = range, vᵧ = 0 at top) to find unknowns.

COMMON PROJECTILE SITUATIONS:
(a) Object thrown horizontally from height h:
    Time to land: h = ½gt² → t = √(2h/g)
    Range: x = ut (where u = horizontal speed)
    Speed on landing: vₓ = u; vᵧ = gt; v = √(u² + (gt)²); direction = arctan(vᵧ/vₓ) below horizontal.

(b) Object thrown at angle θ from ground level:
    T = 2u sinθ/g; H = u²sin²θ/(2g); R = u²sin2θ/g

DEEP EXPLANATION: CIRCULAR MOTION

WHY CENTRIPETAL ACCELERATION IS TOWARD CENTRE:
As the velocity vector rotates (direction changes), the change in velocity (Δv) points toward the centre.
Mathematically: The rate of change of a vector of constant magnitude rotating at ω is: |Δv/Δt| = v × ω = v²/r (since ω = v/r).

WHY OBJECTS IN CIRCULAR MOTION ARE NOT "THROWN OUTWARD":
A common misconception! In reality:
- In circular motion, the object is ALWAYS being pulled inward (centripetal force).
- When the string breaks, the object moves in a STRAIGHT LINE (tangent to the circle) — not outward. This is Newton's First Law (inertia).
- The apparent "outward throw" is felt in the rotating frame of reference (non-inertial frame).

SATELLITES AND ORBITAL MECHANICS:
Orbital speed: v = √(GM/r) — decreases with altitude.
Orbital period: T = 2πr/v = 2π√(r³/GM) — increases with altitude.
As r increases, T increases BUT v decreases.
Geostationary satellites (T = 24 h) orbit at ~36,000 km above equator → used for communications/TV.
Polar orbit satellites (low altitude) → orbit much faster, better resolution imaging.

CONICAL PENDULUM:
A pendulum swinging in a horizontal circle.
The string makes angle θ with vertical.
Vertical: T cos θ = mg
Horizontal (centripetal): T sin θ = mω²r (where r = L sin θ; L = string length)
Result: ω² = g/(L cos θ); T = 2π√(L cos θ/g)
The period is SHORTER than a simple pendulum of the same length (because cos θ < 1).
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Projectiles and Circular Motion', $CONTENT$
WORKED EXAMPLES — PROJECTILES AND CIRCULAR MOTION

EXAMPLE 1 — Horizontal Projectile:
A stone is thrown horizontally at 15 m/s from the edge of a cliff 45 m high. (g = 10 m/s²)
(a) How long does it take to reach the ground?
(b) How far from the base of the cliff does it land?

SOLUTION:
(a) Vertical: 45 = ½gt² = 5t²
    t² = 9 → t = 3 s

(b) Horizontal: x = uₓt = 15 × 3 = 45 m from the base.

EXAMPLE 2 — Projectile at an Angle:
A ball is projected at 20 m/s at 30° to the horizontal. (g = 10 m/s²)
Find: (a) time of flight (b) maximum height (c) horizontal range.

SOLUTION:
uₓ = 20 cos 30° = 17.32 m/s; uᵧ = 20 sin 30° = 10 m/s

(a) T = 2uᵧ/g = 2 × 10/10 = 2 s

(b) H = uᵧ²/(2g) = 100/20 = 5 m

(c) R = uₓ × T = 17.32 × 2 = 34.64 m ≈ 34.6 m
    OR: R = u²sin2θ/g = 400 × sin60°/10 = 400 × 0.866/10 = 34.6 m ✓

EXAMPLE 3 — Circular Motion (Conical):
A 200 g ball on a 1 m string is swung in a horizontal circle. If the string makes 30° with the vertical:
(a) Find the tension in the string. (b) Find the speed of the ball. (c) Find the period. (g = 10 m/s²)

SOLUTION:
m = 0.2 kg; L = 1 m; r = L sin30° = 0.5 m
(a) Vertical: T cos30° = mg → T = mg/cos30° = 0.2 × 10/0.866 = 2.31 N

(b) Horizontal: T sin30° = mv²/r
    2.31 × 0.5 = 0.2 × v²/0.5
    1.155 = 0.4v²
    v² = 2.887 → v = 1.70 m/s

(c) ω = v/r = 1.70/0.5 = 3.4 rad/s; T = 2π/ω = 2π/3.4 = 1.85 s

EXAMPLE 4 — Car on Circular Bend:
A car of mass 1200 kg travels around a circular bend of radius 80 m at 20 m/s.
(a) Calculate the centripetal force.
(b) What provides this force?
(c) What is the minimum coefficient of friction needed? (g = 10 m/s²)

SOLUTION:
(a) F_c = mv²/r = 1200 × 400/80 = 6000 N

(b) On a flat road, the centripetal force is provided by the FRICTION between the tyres and the road surface.

(c) F_friction = μmg (maximum static friction)
    μmg ≥ mv²/r → μ ≥ v²/(rg) = 400/(80 × 10) = 0.5
    Minimum μ = 0.5

EXAMPLE 5 — Vertical Circle:
A ball on a string of length 1.5 m is swung in a vertical circle. (g = 10 m/s²)
What is the minimum speed at the TOP to maintain circular motion?

SOLUTION:
At the top, for minimum speed, tension T = 0.
Then: Weight alone provides centripetal force: mg = mv²_min/r
v²_min = gr = 10 × 1.5 = 15 m²/s²
v_min = √15 = 3.87 m/s
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Projectiles and Circular Motion', $CONTENT$
WASSCE PAST QUESTIONS — PROJECTILES AND CIRCULAR MOTION

QUESTION 1 (WASSCE 2020, Q3c):
A ball is thrown horizontally with a speed of 10 m/s from the top of a building 20 m high.
(a) How long does the ball take to reach the ground? (g = 10 m/s²)
(b) What is the horizontal distance from the building when it hits the ground?
(c) Calculate the vertical velocity just before impact.

ANSWERS:
(a) Vertical free fall from height h = 20 m:
    h = ½gt² → 20 = 5t² → t² = 4 → t = 2 s

(b) x = uₓt = 10 × 2 = 20 m from the base of the building.

(c) vᵧ = gt = 10 × 2 = 20 m/s (downward)

QUESTION 2 (WASSCE 2019, Q4b):
(a) What is centripetal acceleration? In which direction does it act?
(b) A 500 g stone is being swung in a horizontal circle of radius 0.8 m at 6 m/s.
    Calculate: (i) centripetal acceleration (ii) centripetal force.

ANSWERS:
(a) Centripetal acceleration is the acceleration of an object moving in a circular path. It is always directed toward the CENTRE of the circle (inward). It arises from the continuous change in direction of the velocity vector. a_c = v²/r = ω²r.

(b) (i) a_c = v²/r = 36/0.8 = 45 m/s²

    (ii) F_c = ma = 0.5 × 45 = 22.5 N (toward the centre)

QUESTION 3 (WASSCE 2021, Q5c):
A projectile is launched at an angle of 60° to the horizontal with a speed of 40 m/s. (g = 10 m/s²)
Calculate: (a) the horizontal range (b) the maximum height (c) the time of flight.

ANSWERS:
uₓ = 40 cos60° = 20 m/s; uᵧ = 40 sin60° = 34.64 m/s

(a) R = u²sin2θ/g = (40)² × sin120°/10 = 1600 × 0.866/10 = 138.6 m

(b) H = uᵧ²/(2g) = (34.64)²/(20) = 1200/20 = 60 m
    OR: H = u²sin²θ/(2g) = 1600 × (0.866)²/20 = 1600 × 0.75/20 = 60 m ✓

(c) T = 2uᵧ/g = 2 × 34.64/10 = 6.93 s ≈ 6.9 s

QUESTION 4 (WASSCE 2022, Q4c):
Explain why a car driver feels pushed outward when going around a bend, even though the centripetal force acts inward.

ANSWER:
The driver feels pushed outward due to INERTIA (Newton's First Law). The driver's body tends to continue in a straight line (tangent to the bend), while the car is being pushed inward (centripetal force from friction on the tyres).

From the driver's (non-inertial, rotating) frame of reference, this appears as an outward force (called centrifugal force), but this is a fictitious/pseudo force that only appears in rotating frames.

In reality, there is no outward force — it is just the driver's inertia causing their body to resist the inward centripetal acceleration. The seatbelt and door provide the centripetal force keeping the driver moving in the circular path.

PRACTICE QUESTIONS:
1. At what angle should a projectile be launched for maximum range?
2. Calculate the centripetal acceleration of the Moon. (Orbital radius = 3.84 × 10⁸ m, period = 27.3 days)

ANSWERS:
1. Maximum range is achieved at θ = 45° (because R = u²sin2θ/g; sin2θ is maximum when 2θ = 90°, i.e., θ = 45°).
2. ω = 2π/T = 2π/(27.3 × 24 × 3600) = 2.66 × 10⁻⁶ rad/s
   a = ω²r = (2.66 × 10⁻⁶)² × 3.84 × 10⁸ = 7.07 × 10⁻¹² × 3.84 × 10⁸ = 2.72 × 10⁻³ m/s² ≈ 0.0027 m/s²
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 13: SIMPLE HARMONIC MOTION
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Simple Harmonic Motion';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Simple Harmonic Motion', $CONTENT$
SIMPLE HARMONIC MOTION (SHM) — WASSCE PHYSICS

DEFINITION OF SHM:
Simple Harmonic Motion (SHM) is a type of oscillatory motion in which:
1. The restoring force is proportional to the displacement from the equilibrium position.
2. The restoring force is always directed toward the equilibrium position.

Mathematically: F = −kx (or a = −ω²x)
where F = restoring force, k = spring constant (or force constant), x = displacement, ω = angular frequency.
The negative sign shows the force is opposite to displacement (restoring).

EXAMPLES OF SHM:
1. Simple pendulum: restoring force = mg sin θ ≈ mg θ (for small angles, sin θ ≈ θ)
2. Mass on a spring: restoring force = kx (Hooke's Law)
3. Oscillating ruler vibrating off edge of desk (small amplitude)
4. Atoms vibrating in a solid
5. Air particles vibrating in a sound wave (approximately SHM)

KEY TERMS:
Displacement (x): The distance of the oscillating particle from its equilibrium position at any time. Can be positive or negative. Symbol: x. Unit: metres.

Amplitude (A): The maximum displacement from equilibrium. Always positive. Symbol: A. Unit: metres.

Period (T): The time for ONE COMPLETE oscillation. Unit: seconds.

Frequency (f): Number of complete oscillations per second. f = 1/T. Unit: Hz.

Angular frequency (ω): ω = 2πf = 2π/T. Unit: rad/s.

Phase: Describes where in the oscillation cycle the object is at any given time.

ENERGY IN SHM:
Total mechanical energy = KE + PE = constant (½kA² = ½mω²A²)
At equilibrium (x = 0): KE is MAXIMUM, PE is ZERO.
At maximum displacement (x = ±A): KE is ZERO, PE is MAXIMUM.
The total energy is proportional to A² (amplitude squared).

EQUATIONS:
x = A cos(ωt + φ) or x = A sin(ωt + φ) (depending on starting conditions)
v = −Aω sin(ωt) (when x = A cos(ωt))
v_max = Aω (maximum speed, at x = 0)
a = −Aω² cos(ωt) = −ω²x
a_max = Aω² (maximum acceleration, at x = ±A)
$CONTENT$, 'overview', 1),

  (v_topic_id, 'Simple Pendulum and Mass-Spring System', $CONTENT$
THE SIMPLE PENDULUM

A simple pendulum consists of a point mass (bob) suspended by a light, inextensible string from a fixed point.
When displaced from equilibrium and released, it oscillates.

For SMALL ANGLES (θ < 15° or about 10°):
The motion is (approximately) SHM.

Period of a simple pendulum:
T = 2π√(L/g)
where L = length of pendulum (from pivot to centre of bob), g = gravitational field strength.

KEY OBSERVATIONS:
1. Period is INDEPENDENT of amplitude (for small amplitudes) — isochronous.
2. Period is INDEPENDENT of mass of the bob.
3. Period INCREASES with increasing length (T ∝ √L).
4. Period DECREASES with increasing g (T ∝ 1/√g) — swings faster on Earth than on Moon.

This makes the simple pendulum useful as a CLOCK (pendulum clock: Galileo, Huygens).
Also used to measure g: g = 4π²L/T²

EXPERIMENT TO MEASURE g WITH A PENDULUM:
1. Set up pendulum of known length L.
2. Time 20 complete oscillations; divide by 20 to get period T.
3. Repeat for different lengths.
4. Plot graph of T² vs L → straight line through origin with gradient 4π²/g.
5. From gradient: g = 4π²/gradient.

MASS-SPRING SYSTEM:

Period of a mass-spring system:
T = 2π√(m/k)
where m = mass on spring, k = spring constant (in N/m).

KEY OBSERVATIONS:
1. Period INCREASES with increasing mass (T ∝ √m).
2. Period DECREASES with increasing spring constant k (stiffer spring → shorter period).
3. Period is INDEPENDENT of amplitude.
4. Works the same vertically or horizontally (gravity only sets the new equilibrium, doesn't affect T).

HOOKE'S LAW:
F = kx (force ∝ extension/compression)
k = spring constant (N/m). Also called force constant or stiffness.
Spring constant found from: k = F/x = mg/x (from static equilibrium: weight = spring force).

NATURAL FREQUENCY AND RESONANCE:
Natural frequency f₀ = 1/(2π) × √(k/m) for spring-mass; f₀ = 1/(2π) × √(g/L) for pendulum.
When driven at natural frequency → RESONANCE → maximum amplitude.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Damping, Resonance, and Energy in SHM', $CONTENT$
DAMPING AND RESONANCE

DAMPING:
In a real oscillation, energy is gradually lost (to friction, air resistance) → amplitude decreases over time.

Types of damping:
1. LIGHT (under) DAMPING: Oscillations continue but with decreasing amplitude. Common in springs, pendulums. Amplitude decays exponentially.

2. CRITICAL DAMPING: Just enough damping to return to equilibrium in the shortest possible time WITHOUT oscillating. Used in: car suspension (shock absorbers), pointer instruments (galvanometers), car door hinges.

3. HEAVY (OVER) DAMPING: Too much damping → very slow return to equilibrium; no oscillations.

4. FORCED OSCILLATIONS:
When a periodic external force drives a system at a particular frequency.
If driving frequency ≠ natural frequency: small amplitude, energy transferred inefficiently.
If driving frequency = natural frequency: RESONANCE occurs → large amplitude.

RESONANCE:
The phenomenon where the amplitude of oscillation is maximum when the driving frequency matches the natural frequency of the system.

Desirable resonance: Microwave oven (resonant frequency of water molecules), radio/TV tuning circuits, musical instruments (amplify sound), swing.

Undesirable resonance: 
- Tacoma Narrows Bridge (1940): Wind oscillations matched bridge's natural frequency → collapse.
- Car engine at certain speeds → vibration of bodywork.
- Buildings in earthquakes.
- Resonance in aeroplane wings.

AMPLITUDE-FREQUENCY GRAPH (resonance curve):
For a lightly damped system: narrow, tall peak at resonant frequency f₀.
For a heavily damped system: broad, lower peak; shifted slightly left of f₀.
At frequencies far from resonance: amplitude is small.

ENERGY-DISPLACEMENT GRAPH in SHM:
PE = ½kx² (parabolic — maximum at x = ±A, zero at x = 0)
KE = ½k(A² − x²) (inverted parabola — maximum at x = 0, zero at x = ±A)
Total E = ½kA² = constant (horizontal line above PE and KE parabolas)

At x = 0 (equilibrium): KE = ½kA² (maximum KE); PE = 0
At x = ±A (amplitude): KE = 0; PE = ½kA² (maximum PE)
At x = A/2: PE = ½k(A/2)² = ½kA²/4 = E/4; KE = E − E/4 = 3E/4
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Simple Harmonic Motion', $CONTENT$
WORKED EXAMPLES — SIMPLE HARMONIC MOTION

EXAMPLE 1 — Simple Pendulum:
A pendulum has a length of 0.4 m.
(a) Calculate its period. (g = 10 m/s²)
(b) Calculate its frequency.
(c) How would the period change if the length were doubled?

SOLUTION:
(a) T = 2π√(L/g) = 2π√(0.4/10) = 2π√0.04 = 2π × 0.2 = 1.257 s ≈ 1.26 s

(b) f = 1/T = 1/1.257 = 0.795 Hz ≈ 0.8 Hz

(c) T ∝ √L. If L doubles: T_new = T × √2 = 1.257 × 1.414 = 1.78 s (increases by factor of √2 ≈ 1.41)

EXAMPLE 2 — Measuring g with a Pendulum:
A pendulum of length 1.0 m has a period of 2.0 s.
(a) Calculate g from these measurements.
(b) If the period was measured for 20 oscillations and the total time was 40 s, what is the percentage uncertainty in T?
(Assume stopwatch has reading uncertainty of ±0.2 s)

SOLUTION:
(a) T = 2π√(L/g) → T² = 4π²L/g → g = 4π²L/T² = 4π² × 1.0/4.0 = 9.87 m/s² ≈ 9.9 m/s²

(b) T = 40/20 = 2.0 s
    Uncertainty in total time = ±0.2 s (one reading uncertainty)
    Uncertainty in T = 0.2/20 = 0.01 s (timing 20 oscillations reduces uncertainty)
    % uncertainty = (0.01/2.0) × 100% = 0.5% (small — shows why timing many oscillations is better)

EXAMPLE 3 — Mass-Spring System:
A spring of constant 200 N/m has a 0.5 kg mass attached.
(a) Calculate the natural frequency.
(b) If the amplitude is 0.03 m, calculate the maximum KE.
(c) Calculate the maximum speed.

SOLUTION:
(a) ω = √(k/m) = √(200/0.5) = √400 = 20 rad/s
    f = ω/(2π) = 20/(2π) = 3.18 Hz
    T = 1/f = 0.314 s OR T = 2π√(m/k) = 2π√(0.5/200) = 2π × 0.05 = 0.314 s ✓

(b) Max KE = Total energy = ½kA² = ½ × 200 × (0.03)² = 100 × 9 × 10⁻⁴ = 0.09 J

(c) Max KE = ½mv²_max: 0.09 = ½ × 0.5 × v²_max → v²_max = 0.36 → v_max = 0.6 m/s
    OR: v_max = Aω = 0.03 × 20 = 0.6 m/s ✓

EXAMPLE 4 — Energy Distribution:
In SHM with amplitude A = 0.1 m and k = 500 N/m:
(a) Find total energy.
(b) Find KE and PE when x = 0.06 m.

SOLUTION:
(a) Total E = ½kA² = ½ × 500 × 0.01 = 2.5 J

(b) PE = ½kx² = ½ × 500 × (0.06)² = 250 × 0.0036 = 0.9 J
    KE = Total E − PE = 2.5 − 0.9 = 1.6 J
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Simple Harmonic Motion', $CONTENT$
WASSCE PAST QUESTIONS — SIMPLE HARMONIC MOTION

QUESTION 1 (WASSCE 2020, Q5b):
(a) What is Simple Harmonic Motion? State the conditions for SHM.
(b) A pendulum of length 90 cm oscillates on the surface of a planet where g = 5 m/s².
    Calculate its period.

ANSWERS:
(a) Simple Harmonic Motion: Periodic oscillatory motion in which the acceleration (restoring force) is always proportional to and in the opposite direction to the displacement from the equilibrium position.
Conditions: (1) The restoring force is proportional to displacement: F ∝ −x.
(2) The restoring force is always directed toward the equilibrium position.
Mathematically: a = −ω²x (the negative sign indicates the force is restorative).

(b) T = 2π√(L/g) = 2π√(0.90/5) = 2π√0.18 = 2π × 0.424 = 2.665 s ≈ 2.7 s

QUESTION 2 (WASSCE 2019, Q3b):
A spring has a spring constant of 50 N/m. A 200 g mass is attached.
(a) Calculate the period of oscillation.
(b) If the amplitude is doubled, what happens to: (i) the period (ii) the maximum speed?

ANSWERS:
(a) T = 2π√(m/k) = 2π√(0.2/50) = 2π√(0.004) = 2π × 0.0632 = 0.397 s ≈ 0.4 s

(b) (i) Period is UNCHANGED. The period of a spring-mass SHM is T = 2π√(m/k), which does NOT depend on amplitude. Doubling amplitude does NOT change the period.

(ii) Maximum speed DOUBLES. v_max = Aω. If A doubles (and ω is unchanged), then v_max doubles.
(This makes sense: the oscillation covers twice the distance in the same period, so speed must double.)

QUESTION 3 (WASSCE 2021, Q2c):
Explain what is meant by resonance and give TWO practical examples — one desirable and one undesirable.

ANSWER:
Resonance occurs when a system is driven at its natural (resonant) frequency by an external periodic force. At this frequency, energy is transferred most efficiently, causing the system to oscillate with MAXIMUM AMPLITUDE.

Desirable: Musical instruments — the body of a guitar resonates at the frequency of the vibrating string, greatly amplifying the sound.
(OR: Radio tuning — the LC circuit resonates at the station's frequency, selecting that signal.)

Undesirable: Tacoma Narrows Bridge collapse (1940) — periodic wind gusts drove the bridge at its natural frequency, causing resonant oscillations of increasing amplitude until the bridge collapsed.
(OR: Excessive vibration in car bodies at certain engine speeds; resonance in buildings during earthquakes.)

QUESTION 4 (WASSCE 2022, Q1d):
(a) State the conditions under which the motion of a simple pendulum is SHM.
(b) A 1.0 m pendulum is taken to the Moon where g = 1.6 m/s².
    Compare its period to its period on Earth (g = 10 m/s²).

ANSWERS:
(a) The simple pendulum approximates SHM when: (1) The angle of displacement is small (less than ~15°); (2) The string remains taut throughout the motion; (3) The mass of the string is negligible compared to the bob. Under these conditions, the restoring force (mg sin θ ≈ mgθ) is proportional to displacement.

(b) On Earth: T_E = 2π√(1.0/10) = 2π × 0.3162 = 1.987 s ≈ 2.0 s
    On Moon: T_M = 2π√(1.0/1.6) = 2π × 0.7906 = 4.97 s ≈ 5.0 s
    The period on the Moon is 2.5 times longer (slower oscillation).
    (Because T ∝ 1/√g and g_Moon = g_Earth/6.25, T_Moon = T_Earth × √6.25 = 2.0 × 2.5 = 5.0 s ✓)

PRACTICE QUESTIONS:
1. What is critical damping and where is it used?
2. A mass of 100 g on a spring oscillates with period 0.5 s. Find the spring constant.

ANSWERS:
1. Critical damping is the minimum amount of damping that prevents oscillation — the system returns to equilibrium as quickly as possible without overshooting. Used in car suspension (shock absorbers), galvanometer needles (so the needle comes to rest quickly without oscillating), and door closers.
2. T = 2π√(m/k) → T² = 4π²m/k → k = 4π²m/T² = 4π² × 0.1/0.25 = 4 × 9.87 × 0.1/0.25 = 15.8 N/m
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 14: THERMODYNAMICS AND GAS LAWS
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Thermodynamics and Gas Laws';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Thermodynamics and the Laws of Gases', $CONTENT$
THERMODYNAMICS AND GAS LAWS — WASSCE PHYSICS

THERMODYNAMICS:
The branch of Physics that deals with the relationship between heat, temperature, and other forms of energy.

KINETIC THEORY OF GASES:
Assumptions of the ideal gas model:
1. Gas consists of a large number of tiny molecules (atoms) that are in constant RANDOM motion.
2. The molecules themselves have NEGLIGIBLE VOLUME compared to the container volume.
3. Collisions between molecules, and between molecules and walls, are PERFECTLY ELASTIC (no kinetic energy lost).
4. There are NO intermolecular forces except during collisions.
5. The time of collisions is NEGLIGIBLE compared to the time between collisions.
6. The pressure of a gas is due to the BOMBARDMENT of container walls by gas molecules.

TEMPERATURE AND KINETIC ENERGY:
Temperature is a measure of the average KINETIC ENERGY of the gas molecules.
At absolute zero (0 K, −273°C): Molecular kinetic energy is minimum (theoretically zero for ideal gas).
Higher temperature → molecules move faster → more energetic collisions → higher pressure.

Average kinetic energy per molecule: KE = (3/2)kT
where k = Boltzmann constant = 1.38 × 10⁻²³ J/K, T = absolute temperature (Kelvin).

For 1 mole of gas: Total KE = (3/2)RT
where R = molar gas constant = 8.314 J/mol/K, N_A = Avogadro's number = 6.022 × 10²³ mol⁻¹.

IDEAL GAS:
A hypothetical gas that perfectly obeys all kinetic theory assumptions and all three gas laws.
Real gases behave like ideal gases at LOW PRESSURE and HIGH TEMPERATURE.

INTERNAL ENERGY:
For an ideal monatomic gas: Internal energy U = (3/2)nRT (entirely kinetic — no potential energy because no intermolecular forces).
For real gases: Also includes potential energy of intermolecular bonds.
$CONTENT$, 'overview', 1),

  (v_topic_id, 'The Three Gas Laws and Ideal Gas Equation', $CONTENT$
THE THREE EXPERIMENTAL GAS LAWS

BOYLE'S LAW (1662):
"At constant temperature, the pressure of a fixed mass of gas is inversely proportional to its volume."
P ∝ 1/V (at constant T, constant mass)
P₁V₁ = P₂V₂

Explanation (kinetic theory): Reducing volume → molecules have less space → hit walls more often per second → higher pressure. At constant T, speed is unchanged.

Experiment: Compress a trapped column of air using a piston; measure P and V at each setting.
Graph: P vs 1/V → straight line through origin; P vs V → hyperbola (inverse relationship).

CHARLES'S LAW (1787):
"At constant pressure, the volume of a fixed mass of gas is directly proportional to its absolute (Kelvin) temperature."
V ∝ T (at constant P, constant mass)
V₁/T₁ = V₂/T₂ (temperatures in KELVIN!)

Explanation (kinetic theory): Increasing temperature → molecules move faster → hit walls harder and more often → if P is to stay constant, the volume must INCREASE (walls pushed out).

Graph: V vs T (Kelvin) → straight line through the origin.
V vs θ (Celsius) → straight line that extrapolates to V = 0 at θ = −273°C (= 0 K).

PRESSURE LAW / GAY-LUSSAC'S LAW:
"At constant volume, the pressure of a fixed mass of gas is directly proportional to its absolute temperature."
P ∝ T (at constant V, constant mass)
P₁/T₁ = P₂/T₂ (temperatures in KELVIN!)

Explanation: Heating at constant volume → molecules move faster → hit walls harder and more often → pressure rises.

Graph: P vs T (Kelvin) → straight line through origin.
P vs θ (Celsius) → straight line extrapolating to P = 0 at −273°C.

COMBINED GAS LAW:
P₁V₁/T₁ = P₂V₂/T₂
(When none of the three variables is constant)

IDEAL GAS EQUATION:
PV = nRT
where: P = pressure (Pa), V = volume (m³), n = number of moles, R = 8.314 J/mol/K, T = temperature (K)

Alternatively: PV = NkT
where N = number of molecules, k = 1.38 × 10⁻²³ J/K (Boltzmann constant).
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Laws of Thermodynamics', $CONTENT$
LAWS OF THERMODYNAMICS

ZEROTH LAW OF THERMODYNAMICS:
"If two objects are each in thermal equilibrium with a third object (thermometer), they are in thermal equilibrium with each other."
This is the basis for temperature measurement — it defines what temperature means.

FIRST LAW OF THERMODYNAMICS (Law of Conservation of Energy):
"The increase in internal energy of a system equals the heat supplied to the system plus the work done on the system."
ΔU = Q + W (or ΔU = Q − W depending on sign convention)
where:
ΔU = increase in internal energy
Q = heat added to the system (positive = heat absorbed; negative = heat released)
W = work done ON the system (positive = work done on gas; in some conventions, W = work done BY gas)

Applications of First Law:
- Isothermal process (constant temperature): ΔU = 0 (for ideal gas) → Q = −W (heat added = work done BY gas)
- Adiabatic process (no heat exchange): Q = 0 → ΔU = W (work done ON gas = increase in internal energy)
- Isochoric process (constant volume): W = 0 → ΔU = Q (all heat goes into internal energy)
- Isobaric process (constant pressure): Both Q and W are non-zero.

SECOND LAW OF THERMODYNAMICS:
Several equivalent statements:
a) "Heat cannot spontaneously flow from a colder body to a hotter body."
b) "No heat engine can be 100% efficient — some energy is always lost as heat to the environment."
c) "The entropy (disorder) of an isolated system tends to increase."

This explains why:
- Engines cannot convert all heat to work.
- Refrigerators need a power supply to pump heat from cold to hot.
- Natural processes (mixing, diffusion, heat flow) are irreversible.

HEAT ENGINES:
Convert heat (Q_h) from a hot source into work (W) + waste heat (Q_c) to cold sink.
Efficiency: η = W/Q_h = (Q_h − Q_c)/Q_h = 1 − Q_c/Q_h
Maximum (Carnot) efficiency: η_max = 1 − T_c/T_h (Kelvin temperatures)

REFRIGERATORS AND HEAT PUMPS:
Work input (W) is used to transfer heat from cold (Q_c) to hot (Q_h).
Q_h = Q_c + W (heat rejected to hot sink = heat absorbed from cold + work input).

ENTROPY:
A measure of the disorder/randomness of a system.
Natural processes: entropy increases (disorder increases).
Examples: Heat spreading from hot to cold; gas expanding into vacuum; mixing of fluids.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Thermodynamics and Gas Laws', $CONTENT$
WORKED EXAMPLES — THERMODYNAMICS AND GAS LAWS

EXAMPLE 1 — Combined Gas Law:
A gas has a volume of 4.0 L at 27°C and 100 kPa.
What volume will it occupy at 127°C and 200 kPa?

SOLUTION:
MUST convert temperatures to Kelvin:
T₁ = 27 + 273 = 300 K; T₂ = 127 + 273 = 400 K

P₁V₁/T₁ = P₂V₂/T₂
V₂ = P₁V₁T₂/(T₁P₂) = (100 × 4.0 × 400)/(300 × 200) = 160,000/60,000 = 2.67 L

EXAMPLE 2 — Ideal Gas Equation:
Calculate the number of moles of gas in a container of volume 10 L at 25°C and pressure 202 kPa.
(R = 8.314 J/mol/K)

SOLUTION:
V = 10 L = 0.01 m³; T = 25 + 273 = 298 K; P = 202,000 Pa
PV = nRT → n = PV/(RT) = (202,000 × 0.01)/(8.314 × 298) = 2020/2477.6 = 0.815 mol

EXAMPLE 3 — Kinetic Theory:
Using kinetic theory, explain why:
(a) Gas pressure increases when the temperature is raised at constant volume.
(b) Gas pressure increases when volume is decreased at constant temperature.

SOLUTION:
(a) At constant volume, increasing temperature increases the average kinetic energy (and speed) of the gas molecules. The molecules now hit the container walls with GREATER FORCE and MORE FREQUENTLY. Since pressure = force/area, and the area is unchanged, the pressure increases.

(b) At constant temperature, the average speed of molecules is unchanged. Decreasing volume means the molecules have LESS SPACE to travel between collisions with the walls. They hit the walls MORE FREQUENTLY per unit time (shorter distances between collisions). Since force per collision is unchanged (same speed) but frequency increases, pressure = force/area × number of collisions increases → higher pressure.

EXAMPLE 4 — First Law:
A gas is compressed and 500 J of work is done on it. The gas loses 200 J of heat to the surroundings.
Calculate the change in internal energy.

SOLUTION:
Using ΔU = Q + W (sign convention: Q positive = heat added TO gas; W positive = work done ON gas)
Q = −200 J (heat lost FROM gas)
W = +500 J (work done ON gas)
ΔU = −200 + 500 = +300 J

The internal energy INCREASES by 300 J (the gas heats up, even though it lost some heat, because more work was done on it).

EXAMPLE 5 — Heat Engine Efficiency:
A heat engine takes in 8000 J of heat from a hot source and exhausts 5000 J to the cold sink.
(a) Calculate the work output.
(b) Calculate the efficiency.
(c) If the hot source is at 600 K, what is the minimum temperature of the cold sink? (Carnot)

SOLUTION:
(a) W = Q_h − Q_c = 8000 − 5000 = 3000 J

(b) η = W/Q_h = 3000/8000 = 0.375 = 37.5%

(c) Carnot efficiency: η_max = 1 − T_c/T_h
    0.375 = 1 − T_c/600 → T_c/600 = 0.625 → T_c = 375 K
    (This is the MAXIMUM temperature for the cold sink; a higher cold temperature would give lower efficiency.)
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Thermodynamics', $CONTENT$
WASSCE PAST QUESTIONS — THERMODYNAMICS AND GAS LAWS

QUESTION 1 (WASSCE 2020, Q1b):
(a) State Boyle's Law and Charles's Law.
(b) A gas has volume 800 cm³ at 27°C and 120 kPa. Find its volume at 57°C and 80 kPa.

ANSWERS:
(a) Boyle's Law: At constant temperature, the volume of a fixed mass of gas is inversely proportional to its pressure. P ∝ 1/V; P₁V₁ = P₂V₂.
Charles's Law: At constant pressure, the volume of a fixed mass of gas is directly proportional to its absolute temperature. V ∝ T; V₁/T₁ = V₂/T₂.

(b) T₁ = 27 + 273 = 300 K; T₂ = 57 + 273 = 330 K
    P₁V₁/T₁ = P₂V₂/T₂
    V₂ = P₁V₁T₂/(T₁P₂) = (120 × 800 × 330)/(300 × 80) = 31,680,000/24,000 = 1320 cm³

QUESTION 2 (WASSCE 2019, Q1a):
State the basic assumptions of the Kinetic Theory of gases (any THREE).

ANSWER:
1. Gas consists of a very large number of tiny particles (atoms/molecules) in constant, random motion.
2. The particles have negligible size (volume) compared to the total volume of the gas.
3. Collisions between particles, and between particles and container walls, are perfectly elastic (no kinetic energy is lost).
4. There are no intermolecular forces between particles except during brief collisions.
5. The average kinetic energy of the particles is proportional to the absolute temperature.
6. The duration of each collision is much shorter than the time between collisions.
(Any THREE)

QUESTION 3 (WASSCE 2021, Q5a):
(a) State the First Law of Thermodynamics.
(b) In a thermodynamic process, 400 J of heat is added to a gas and the gas does 150 J of work.
    Find the change in the internal energy of the gas.

ANSWERS:
(a) First Law of Thermodynamics: The total increase in internal energy of a system equals the heat energy added to the system minus the work done by the system. 
ΔU = Q − W_by (where W_by = work done by gas)

(b) Q = +400 J (heat added); W_by = +150 J (work done by gas)
    ΔU = Q − W_by = 400 − 150 = +250 J
    The internal energy increases by 250 J.

QUESTION 4 (WASSCE 2022, Q4d):
Explain the second law of thermodynamics and state its significance for heat engines.

ANSWER:
The Second Law of Thermodynamics states that: Heat cannot spontaneously flow from a colder body to a hotter body. Equivalently, no process can be 100% efficient in converting heat to work.

Significance for heat engines: No heat engine can convert ALL the heat it receives from the hot source into useful work. Some energy MUST always be rejected as waste heat to a cold sink. This sets an UPPER LIMIT (Carnot efficiency) on the efficiency of any heat engine: η_max = 1 − T_c/T_h. Engineers strive to maximise efficiency by making T_h as large as possible and T_c as small as possible, but 100% efficiency is physically impossible (it would require T_c = 0 K = absolute zero, which cannot be reached).

PRACTICE QUESTIONS:
1. A gas at 100°C and 2 atm is cooled to 0°C at constant volume. Find the new pressure.
2. Convert 350 K to Celsius.

ANSWERS:
1. P₁/T₁ = P₂/T₂ (constant volume): T₁ = 373 K, T₂ = 273 K
   P₂ = P₁ × T₂/T₁ = 2 × 273/373 = 1.46 atm
2. θ = T − 273 = 350 − 273 = 77°C
$CONTENT$, 'practice', 5);

  -- =============================================
  -- TOPIC 15: ELECTROMAGNETIC INDUCTION
  -- =============================================
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Electromagnetic Induction';

  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
  (v_topic_id, 'Overview: Electromagnetic Induction', $CONTENT$
ELECTROMAGNETIC INDUCTION — WASSCE PHYSICS

(Note: This topic extends and deepens the introduction in the Magnetism topic. Ensure you have read the Magnetism and Electromagnetism topic first.)

MAGNETIC FLUX (Φ):
The total amount of magnetic field passing through a surface.
Φ = BA cos θ
where B = magnetic flux density (Tesla, T), A = area of surface (m²), θ = angle between B and the normal to the surface.
Unit: Weber (Wb). 1 Wb = 1 T·m².

Maximum flux: when surface is perpendicular to field (θ = 0°, cos 0° = 1): Φ = BA.
Zero flux: when surface is parallel to field (θ = 90°, cos 90° = 0): Φ = 0.

FLUX LINKAGE:
For a coil of N turns: Flux linkage = NΦ = NBA cos θ.
Unit: Weber-turns (Wb) or just Wb.

FARADAY'S LAW OF ELECTROMAGNETIC INDUCTION:
"The magnitude of the induced EMF in a circuit is directly proportional to the rate of change of flux linkage through the circuit."

EMF = −N ΔΦ/Δt = −N Δ(BA cos θ)/Δt

The NEGATIVE sign (Lenz's Law): The induced EMF opposes the change causing it.

LENZ'S LAW:
"The direction of the induced current is such that it opposes the change in flux that caused it."

Practical consequence: Work must be done to move the magnet/conductor → electromagnetic induction is a way of converting mechanical energy to electrical energy.

FACTORS AFFECTING INDUCED EMF:
1. Rate of change of flux: Faster motion → larger EMF (more ΔΦ/Δt).
2. Number of turns (N): More turns → larger EMF (multiplying effect).
3. Strength of magnetic field: Stronger field → larger flux → larger change.
4. Area of coil.
5. Angle of coil relative to field.

HOW TO INDUCE AN EMF:
- Move a magnet into or out of a coil.
- Move a coil toward or away from a magnet.
- Rotate a coil in a magnetic field (AC generator).
- Change the current in a nearby coil (mutual inductance/transformer).
$CONTENT$, 'overview', 1),

  (v_topic_id, 'AC Generator, DC Generator, and Back-EMF', $CONTENT$
GENERATORS IN DETAIL

AC GENERATOR (ALTERNATOR):
Working principle: A rectangular coil of N turns rotates in a uniform magnetic field at constant angular velocity ω.
The flux linkage changes sinusoidally: NΦ = NBA cos(ωt)
The induced EMF: e = NBaAω sin(ωt) = E₀ sin(ωt)
where E₀ = peak EMF = NBAω.

E₀ increases if: N (turns), B (field strength), A (coil area), or ω (speed of rotation) is increased.

The EMF is ZERO when: coil is perpendicular to field (plane of coil parallel to B) — flux is maximum but rate of change is zero at this instant.
The EMF is MAXIMUM when: coil is parallel to field (plane of coil perpendicular to B) — flux is zero but rate of change is maximum.

Slip rings: allow continuous rotation while maintaining contact.
Output: sinusoidal AC, frequency f = ω/(2π) = rotational speed (Hz).

DC GENERATOR:
Same as AC generator but uses a COMMUTATOR (split ring) instead of slip rings.
The commutator reverses the electrical connections every half rotation.
Output: pulsating DC (always same polarity but varying magnitude).
Used in older car charging systems; mostly replaced by alternators now.

BACK-EMF IN MOTORS:
When an electric motor rotates, it also acts as a generator — it produces a back-EMF (ε_back) that opposes the supply voltage.
Net current: I = (V − ε_back)/R
When motor is stalling (not rotating): ε_back = 0; I = V/R (maximum current → can burn out motor).
When motor runs faster: ε_back increases; I decreases; motor draws less current.
Power: P_input = VI; P_mechanical = ε_back × I; P_heat = I²R.

SELF-INDUCTION:
When the current in a coil changes, the changing magnetic field induces an EMF back in the same coil (self-induced EMF or back-EMF in inductor).
Self-inductance (L): e = −L × ΔI/Δt. Unit: Henry (H).
Inductor opposes changes in current: resists switching on (builds up slowly) and switching off (spark/surge).

MUTUAL INDUCTION (TRANSFORMER PRINCIPLE):
Changing current in one coil induces an EMF in a nearby coil.
Mutual inductance M: e₂ = −M × ΔI₁/Δt.
Transformer uses this: iron core channels flux from primary to secondary coil.

EDDY CURRENTS:
When a solid conductor moves through a magnetic field, induced EMFs drive currents (eddy currents) through the conductor in closed loops. These currents: (1) Dissipate energy as heat (wasted in motors); (2) Create opposing magnetic force (braking effect).

Reducing eddy currents: Laminate the core (stack thin sheets separated by insulation) — currents cannot form large loops.
Using eddy currents: Induction heating (induction cookers); eddy current braking in trains.
$CONTENT$, 'definitions', 2),

  (v_topic_id, 'Transformer Calculations and Power Transmission', $CONTENT$
TRANSFORMERS IN DETAIL

IDEAL TRANSFORMER:
Primary coil: n_p turns, voltage V_p, current I_p.
Secondary coil: n_s turns, voltage V_s, current I_s.

Voltage equation (from Faraday's Law applied to both coils with same core flux):
V_s/V_p = n_s/n_p (turns ratio = voltage ratio)

Current equation (from energy conservation, ideal: P_in = P_out):
V_p I_p = V_s I_s → I_s/I_p = V_p/V_s = n_p/n_s

Step-UP transformer: n_s > n_p → V_s > V_p; I_s < I_p.
Step-DOWN transformer: n_s < n_p → V_s < V_p; I_s > I_p.

REAL TRANSFORMER LOSSES:
1. Resistive (copper) losses: Current in windings heats the wire (I²R heating). Minimised by using thick copper wire for high-current secondary.
2. Core (iron) losses:
   a. Eddy current losses: Induced currents in core → heat. Minimised by laminating core.
   b. Hysteresis losses: Energy lost in repeatedly magnetising and demagnetising iron core. Minimised by using silicon steel core.
3. Flux leakage: Not all flux from primary threads through secondary. Minimised by tight winding and toroidal core.

Real efficiency: η = P_out/P_in = V_s I_s/(V_p I_p) × 100%
Modern large transformers: efficiency > 99%.

AC vs DC IN TRANSFORMERS:
Transformers ONLY work with AC (alternating current). With DC, the flux doesn't change → no induced EMF.
That's why mains electricity is AC — so that it can be transformed to high voltage for transmission.

NATIONAL GRID — POWER TRANSMISSION:
Power station generates electricity at ~25 kV.
Step-UP transformer (e.g., 25 kV → 400 kV) for transmission.
High-voltage, low-current transmission over pylons (minimises I²R losses in cables).
Multiple step-down transformers along the route.
Final step-down to 230 V (or 110 V) for homes and businesses.

Example: Power station generates 100 MW.
At 400 kV: I = P/V = 10⁸/400,000 = 250 A.
Resistance of cables = 10 Ω.
P_loss = I²R = 250² × 10 = 625,000 W = 625 kW (only 0.625% of 100 MW → very efficient)

At 400 V (hypothetical): I = 10⁸/400 = 250,000 A.
P_loss = (250,000)² × 10 = 6.25 × 10¹¹ W — more power lost in cables than generated (impossible!).
This shows WHY high voltage is essential.
$CONTENT$, 'explanation', 3),

  (v_topic_id, 'Worked Examples: Electromagnetic Induction', $CONTENT$
WORKED EXAMPLES — ELECTROMAGNETIC INDUCTION

EXAMPLE 1 — Induced EMF:
A coil of 200 turns has its flux changed from 5 × 10⁻³ Wb to 1 × 10⁻³ Wb in 0.1 seconds.
Calculate the induced EMF.

SOLUTION:
ΔΦ = 5 × 10⁻³ − 1 × 10⁻³ = 4 × 10⁻³ Wb (decrease in flux)
Δt = 0.1 s; N = 200
|EMF| = N × ΔΦ/Δt = 200 × (4 × 10⁻³)/0.1 = 200 × 0.04 = 8 V

EXAMPLE 2 — Transformer:
A transformer steps down from 11,000 V to 220 V.
(a) Find the turns ratio n_p:n_s.
(b) If the secondary current is 100 A, find the primary current (ideal transformer).
(c) If the transformer is only 95% efficient and the secondary current is still 100 A, find the primary current.

SOLUTION:
(a) n_p/n_s = V_p/V_s = 11,000/220 = 50:1

(b) Ideal: V_p I_p = V_s I_s
    I_p = V_s I_s/V_p = 220 × 100/11,000 = 22,000/11,000 = 2 A

(c) Real transformer (95% efficiency):
    P_out = V_s I_s = 220 × 100 = 22,000 W
    P_in = P_out/η = 22,000/0.95 = 23,158 W
    I_p = P_in/V_p = 23,158/11,000 = 2.105 A ≈ 2.1 A (slightly more than ideal due to losses)

EXAMPLE 3 — Generator EMF:
An AC generator coil has 80 turns, area 0.05 m², and rotates at 50 rev/s in a field of B = 0.2 T.
(a) Calculate the peak EMF.
(b) Calculate the frequency of the output.

SOLUTION:
(a) ω = 2πf = 2π × 50 = 314 rad/s
    E₀ = NBAω = 80 × 0.2 × 0.05 × 314 = 80 × 0.2 × 15.7 = 251 V ≈ 251 V

(b) Frequency = rotational speed = 50 Hz

EXAMPLE 4 — Back-EMF:
A DC motor has resistance 2 Ω and is connected to a 12 V supply.
(a) What is the current when the motor is stalled (not rotating)?
(b) When running normally, the current is 1.5 A. Find the back-EMF.
(c) Calculate the efficiency at normal running.

SOLUTION:
(a) Stalled: ε_back = 0. I = V/R = 12/2 = 6 A (dangerously high — motor would overheat quickly)

(b) At normal running: I = (V − ε_back)/R
    1.5 = (12 − ε_back)/2
    12 − ε_back = 3
    ε_back = 9 V

(c) Power input = VI = 12 × 1.5 = 18 W
    Power wasted in resistance = I²R = 1.5² × 2 = 4.5 W
    Mechanical power output = 18 − 4.5 = 13.5 W
    Efficiency = 13.5/18 = 0.75 = 75%
$CONTENT$, 'examples', 4),

  (v_topic_id, 'WASSCE Past Questions: Electromagnetic Induction', $CONTENT$
WASSCE PAST QUESTIONS — ELECTROMAGNETIC INDUCTION

QUESTION 1 (WASSCE 2020, Q4a):
(a) State Faraday's Law and Lenz's Law of electromagnetic induction.
(b) A coil of 500 turns experiences a change in flux from 2 × 10⁻³ Wb to 8 × 10⁻³ Wb in 0.2 s.
    Calculate the induced EMF.

ANSWERS:
(a) Faraday's Law: The induced EMF in a circuit is proportional to the rate of change of magnetic flux linkage: EMF = −N ΔΦ/Δt.
Lenz's Law: The direction of the induced current is such that its magnetic effect opposes the change that caused it (i.e., opposes the change in flux).

(b) ΔΦ = 8 × 10⁻³ − 2 × 10⁻³ = 6 × 10⁻³ Wb
    EMF = N ΔΦ/Δt = 500 × (6 × 10⁻³)/0.2 = 500 × 0.03 = 15 V

QUESTION 2 (WASSCE 2019, Q5a):
(a) A transformer has 2000 turns in the primary and 100 turns in the secondary.
    If the primary voltage is 240 V, find the secondary voltage.
(b) If the secondary current is 8 A, find the primary current (assume ideal transformer).

ANSWERS:
(a) V_s/V_p = n_s/n_p → V_s = V_p × n_s/n_p = 240 × 100/2000 = 12 V

(b) V_p I_p = V_s I_s → I_p = V_s I_s/V_p = 12 × 8/240 = 96/240 = 0.4 A

QUESTION 3 (WASSCE 2021, Q3d):
Explain why electricity is transmitted at high voltage over long distances. Calculate the power loss if 1 MW is transmitted at 200 kV through cables of resistance 50 Ω.

ANSWER:
Electricity is transmitted at high voltage to reduce the current (I = P/V, so higher voltage → lower current for same power). Power loss in cables = I²R. Since power loss depends on the SQUARE of current, reducing current dramatically reduces power loss. At high voltage, the same power can be transmitted with a tiny fraction of the energy wasted in heating the cables.

P_loss calculation:
I = P/V = 1,000,000/200,000 = 5 A
P_loss = I²R = 25 × 50 = 1250 W = 1.25 kW
(Only 0.125% of 1 MW is wasted — very efficient.)

QUESTION 4 (WASSCE 2022, Q2c):
(a) What are eddy currents?
(b) State ONE useful application and ONE disadvantage of eddy currents.
(c) How are eddy current losses minimised in transformer cores?

ANSWERS:
(a) Eddy currents are induced electric currents that flow in closed loops within solid conducting materials when they are subjected to a changing magnetic field. They are called "eddy" currents because they circulate like eddies in water.

(b) Useful application: Induction cookers — eddy currents induced in a metal pan heat the pan directly and efficiently. Also: eddy current braking in trains (electromagnetic brakes — no mechanical wear).
Disadvantage: Heat generated in transformer cores and motor armatures wastes energy and causes overheating.

(c) Eddy current losses are minimised by LAMINATING the core — stacking many thin sheets of electrical steel, separated by thin layers of insulating material (varnish, oxide layer). The insulation breaks up the possible paths for eddy currents, so the induced currents cannot flow in large loops across the whole core → much smaller currents → much less I²R heating.

PRACTICE QUESTIONS:
1. Why do transformers only work with AC, not DC?
2. A generator coil has 100 turns, area 0.02 m², in a 0.5 T field rotating at 60 rev/s. Find the peak EMF.

ANSWERS:
1. Transformers require a CHANGING magnetic flux to induce an EMF (Faraday's Law). AC current in the primary coil creates a continuously changing magnetic flux in the core. DC current creates a static (constant) flux → no change in flux → no induced EMF in the secondary. Without EMF induction, no voltage transformation occurs.
2. E₀ = NBAω = 100 × 0.5 × 0.02 × (2π × 60) = 100 × 0.5 × 0.02 × 376.99 = 377 V ≈ 377 V
$CONTENT$, 'practice', 5);

END $$;
