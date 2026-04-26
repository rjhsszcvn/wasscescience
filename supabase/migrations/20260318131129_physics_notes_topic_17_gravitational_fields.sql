
/*
  # Physics Notes: Topic 17 - Gravitational Fields
  5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
  v_content text;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Gravitational Fields';
  
  IF v_topic_id IS NOT NULL THEN

    v_content := 'OVERVIEW: Gravitational Fields

Gravity is the most fundamental force in the universe -- it holds planets in orbit, keeps us on Earth, and governs the motion of stars and galaxies. Isaac Newton was the first to mathematically describe gravity with his Universal Law of Gravitation. For WASSCE, you need Newton''s law, the concept of gravitational field strength, orbital mechanics, and escape velocity.

WHAT IS A GRAVITATIONAL FIELD?
A gravitational field is a region of space where a mass experiences a gravitational force due to another mass. Every object with mass creates a gravitational field extending in all directions.

Gravitational field strength (g) = force per unit mass = F/m
Unit: N/kg (equivalent to m/s^2)
On Earth''s surface: g = 9.8 N/kg (taken as 10 N/kg in most WASSCE calculations)

GRAVITATIONAL FIELD LINES
- Uniform field (near Earth surface): parallel lines pointing vertically downward
- Radial field (around a sphere): lines converge toward the centre, closer together near the surface (showing stronger field)
Field lines always point in the direction a free mass would accelerate.

KEY FEATURES OF GRAVITATIONAL FIELDS
1. Always attractive -- gravity only pulls, never pushes. There is no negative gravitational charge.
2. Acts at a distance -- no physical contact required (action at a distance).
3. Infinite range -- extends to infinity, weakening with distance following the inverse square law.
4. Cannot be shielded -- unlike electric fields, gravitational fields cannot be blocked.
5. Proportional to mass -- more massive objects create stronger fields.

GRAVITATIONAL FIELD STRENGTH ON DIFFERENT BODIES
Earth:   g = 9.8 m/s^2
Moon:    g = 1.6 m/s^2 (about 1/6 of Earth)
Mars:    g = 3.7 m/s^2
Jupiter: g = 24.5 m/s^2 (about 2.5x Earth)
Sun:     g = 274 m/s^2 (about 28x Earth)

A person with mass 60 kg weighs 588 N on Earth but only 96 N on the Moon. Their mass stays 60 kg everywhere.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Overview: Gravitational Fields', v_content, 'overview', 1);

    v_content := 'KEY DEFINITIONS: Gravitational Fields

Gravitational Field: A region in space where a mass experiences a force due to the presence of another mass. The field exists whether or not a test mass is placed in it.

Gravitational Field Strength (g): The gravitational force per unit mass at a given point in the field.
Formula: g = F/m
Unit: N/kg (= m/s^2)
Value at Earth surface: 9.8 N/kg

Newton''s Law of Universal Gravitation: Every particle in the universe attracts every other particle with a force directly proportional to the product of their masses and inversely proportional to the square of the distance between their centres.
Formula: F = G x m1 x m2 / r^2
G = 6.67 x 10^-11 N m^2 kg^-2 (Universal Gravitational Constant)

Weight (W): The gravitational force acting on a mass in a gravitational field.
Formula: W = mg
Weight varies with location; mass is constant.

Mass: Amount of matter in an object. Scalar. Unit: kilogram (kg). Constant everywhere in the universe.

Gravitational Potential Energy (GPE): Energy stored by an object due to its position in a gravitational field.
Near Earth surface: GPE = mgh (where h = height above reference level)
In radial field: GPE = -G x m1 x m2 / r (negative because gravity is attractive; work must be done against gravity to increase r)

Gravitational Potential (V): Work done per unit mass in moving a test mass from infinity to that point.
V = -GM/r (always negative for bound systems)
Unit: J/kg

Orbital Velocity: Speed required for a circular orbit at radius r from the centre.
v = square root of (GM/r)
Derived by equating gravitational force to centripetal force: GMm/r^2 = mv^2/r

Escape Velocity: Minimum speed for an object to escape a gravitational field entirely (reach infinity with zero speed).
v_escape = square root of (2GM/r) = square root of (2gr) at the surface

Satellite: Any object in orbit around a larger body. Natural (Moon) or artificial (GPS, weather, communications).

Geostationary Orbit: An orbit where the satellite completes one orbit in exactly 24 hours, maintaining a fixed position above Earth''s equator. Height approximately 35,900 km above surface.

Inverse Square Law: Gravitational force decreases in proportion to the square of the distance.
Double distance: force becomes 1/4 as strong.
Triple distance: force becomes 1/9 as strong.

Kepler''s Third Law: For all satellites orbiting the same central body, the square of the orbital period is proportional to the cube of the orbital radius.
T^2 / r^3 = 4 pi^2 / (GM) = constant';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Key Definitions: Gravitational Field Terms', v_content, 'definitions', 2);

    v_content := 'DEEP EXPLANATION: Newton''s Law and Orbital Mechanics

NEWTON''S LAW OF UNIVERSAL GRAVITATION
F = G x m1 x m2 / r^2

G = 6.67 x 10^-11 N m^2 kg^-2
m1 and m2 = masses in kg
r = distance between centres in metres

THE INVERSE SQUARE LAW
If distance increases by factor k, force decreases by factor k^2.
- Distance doubles (k=2): force becomes F/4
- Distance triples (k=3): force becomes F/9
- Distance halves (k=0.5): force becomes 4F
This behaviour is called the inverse square law and applies to gravity, electric force, and light intensity.

DERIVING SURFACE GRAVITY FROM NEWTON''S LAW
At Earth''s surface, the gravitational force on mass m is:
F = G x M_Earth x m / R_Earth^2

But also F = mg, so:
mg = G x M_Earth x m / R_Earth^2
g = G x M_Earth / R_Earth^2

With M_Earth = 6.0 x 10^24 kg and R_Earth = 6.4 x 10^6 m:
g = (6.67 x 10^-11 x 6.0 x 10^24) / (6.4 x 10^6)^2
g = 4.0 x 10^14 / 4.1 x 10^13
g = approximately 9.8 m/s^2 (confirmed)

HOW g VARIES WITH HEIGHT ABOVE EARTH
g_h = G x M / (R + h)^2

At height h = R (one Earth radius above surface):
g = G x M / (2R)^2 = g_surface / 4 = 9.8/4 = 2.45 m/s^2

At height h = 2R:
g = g_surface / 9 = 1.09 m/s^2

CIRCULAR ORBITAL MOTION
For circular orbit, gravitational force = centripetal force:
G x M x m / r^2 = m x v^2 / r
G x M / r = v^2
v = square root of (G x M / r)

Important: Orbital speed DECREASES as radius increases. Low orbit satellites move faster than high orbit satellites.

ORBITAL PERIOD (KEPLER''S THIRD LAW)
Using v = 2 pi r / T:
2 pi r / T = square root of (GM/r)
Squaring and rearranging:
T^2 = (4 pi^2 / GM) x r^3

This is Kepler''s Third Law. The ratio T^2/r^3 is the same for all objects orbiting the same central body.

GEOSTATIONARY SATELLITES
Period = 24 hours = 86,400 seconds
From Kepler''s Third Law:
r^3 = GM x T^2 / (4 pi^2)
r^3 = (6.67e-11 x 6.0e24 x 86400^2) / (4 pi^2)
r = approximately 42,300 km from Earth''s centre
Height above surface = 42,300 - 6,400 = approximately 35,900 km

Uses: TV broadcasting, weather monitoring, GPS, telecommunications.
Advantage: Fixed antenna always points at satellite -- no tracking required.

ESCAPE VELOCITY
To escape Earth, kinetic energy must equal gravitational potential energy:
(1/2) x m x v^2 = G x M x m / R
v^2 = 2GM/R = 2gR
v_escape = square root of (2gR)
v_escape = square root of (2 x 9.8 x 6.4 x 10^6)
v_escape = square root of (1.254 x 10^8)
v_escape = approximately 11,200 m/s = 11.2 km/s = 40,300 km/h

This is why rockets need enormous thrust. Objects below this speed will always fall back to Earth (or orbit it). Objects above this speed escape entirely.

KEPLER''S THREE LAWS OF PLANETARY MOTION
1. Ellipse Law: All planets orbit the Sun in ellipses with the Sun at one focus.
2. Equal Areas Law: A line from planet to Sun sweeps equal areas in equal times. Planet moves faster when closer to Sun (conservation of angular momentum).
3. Period Law: T^2 is proportional to r^3 for all planets orbiting the same central body.

APPARENT WEIGHTLESSNESS IN ORBIT
Astronauts in orbiting spacecraft feel weightless not because gravity is zero but because they are in free fall. Both spacecraft and astronaut fall toward Earth at exactly the same rate. There is no contact force between astronaut and floor, so no sensation of weight. This is called APPARENT weightlessness. Gravity still acts at full strength.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Deep Explanation: Newton''s Law and Orbital Mechanics', v_content, 'explanation', 3);

    v_content := 'WORKED EXAMPLES: Gravitational Fields

EXAMPLE 1: Weight on Different Planets
Question: An astronaut has mass 80 kg. Calculate weight (a) on Earth (g=9.8 m/s^2) and (b) on the Moon (g=1.6 m/s^2). (c) What is the astronaut''s mass on the Moon?

Solution:
(a) W_Earth = mg = 80 x 9.8 = 784 N
(b) W_Moon = mg = 80 x 1.6 = 128 N
(c) Mass = 80 kg (mass never changes -- only weight changes)

---

EXAMPLE 2: Gravitational Force Between Two Masses
Question: Calculate the gravitational force between spheres of mass 5 kg and 8 kg with centres 0.20 m apart. G = 6.67 x 10^-11 N m^2 kg^-2.

Solution:
F = G x m1 x m2 / r^2
F = (6.67 x 10^-11 x 5 x 8) / (0.20)^2
F = (6.67 x 10^-11 x 40) / 0.04
F = 2.668 x 10^-9 / 0.04
F = 6.67 x 10^-8 N

This tiny force shows why everyday objects do not noticeably attract each other -- only astronomical masses (planets, stars) produce significant gravitational forces.

---

EXAMPLE 3: Orbital Speed of Satellite
Question: A satellite orbits Earth at height 400 km above surface. Calculate orbital speed.
Given: G = 6.67 x 10^-11, M_Earth = 6.0 x 10^24 kg, R_Earth = 6.4 x 10^6 m.

Solution:
r = R_Earth + h = 6.4 x 10^6 + 0.4 x 10^6 = 6.8 x 10^6 m

v = square root of (GM/r)
v = square root of [(6.67 x 10^-11 x 6.0 x 10^24) / (6.8 x 10^6)]
v = square root of [4.002 x 10^14 / 6.8 x 10^6]
v = square root of (5.885 x 10^7)
v = approximately 7,671 m/s = 7.7 km/s (about 27,700 km/h)

---

EXAMPLE 4: Kepler''s Third Law
Question: Planet X has orbital period 8 Earth years. Planet Y has period 1 Earth year at radius r_Y. Find ratio r_X / r_Y.

Solution:
Kepler''s Third Law: T^2 proportional to r^3
T_X^2 / T_Y^2 = r_X^3 / r_Y^3
(8)^2 / (1)^2 = (r_X / r_Y)^3
64 = (r_X / r_Y)^3
r_X / r_Y = cube root of 64 = 4

Planet X is 4 times farther from the Sun than Planet Y.

---

EXAMPLE 5: How g Varies with Height
Question: Calculate g at height equal to one Earth radius above the surface. Surface g = 9.8 m/s^2.

Solution:
At h = R, distance from centre = R + R = 2R
g_h = G x M / (2R)^2 = G x M / (4R^2) = (1/4) x g_surface
g_h = 9.8 / 4 = 2.45 m/s^2

At one Earth radius height, gravitational field strength is only 25% of its surface value.

---

EXAMPLE 6: Escape Velocity from Moon
Question: Calculate escape velocity from the Moon. g_Moon = 1.6 m/s^2, R_Moon = 1.74 x 10^6 m.

Solution:
v_escape = square root of (2 x g_Moon x R_Moon)
v_escape = square root of (2 x 1.6 x 1.74 x 10^6)
v_escape = square root of (5.568 x 10^6)
v_escape = approximately 2,360 m/s = 2.36 km/s

Much less than Earth''s 11.2 km/s -- explaining why the Moon has essentially no atmosphere. Gas molecules move fast enough to escape.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Worked Examples: Gravitational Field Problems', v_content, 'examples', 4);

    v_content := 'WASSCE PAST QUESTIONS AND PRACTICE: Gravitational Fields

WASSCE 2022
Question: (a) State Newton''s Law of Universal Gravitation. (b) Two identical spheres separated by 0.5 m exert a force of 2.67 x 10^-8 N on each other. Calculate the mass of each sphere. G = 6.67 x 10^-11 N m^2 kg^-2.

Model Answer:
(a) Every particle in the universe attracts every other particle with a force directly proportional to the product of their masses and inversely proportional to the square of the distance between their centres. F = Gm1m2/r^2.

(b) Since m1 = m2 = m: F = G x m^2 / r^2
2.67 x 10^-8 = (6.67 x 10^-11 x m^2) / (0.5)^2
2.67 x 10^-8 = (6.67 x 10^-11 x m^2) / 0.25
m^2 = (2.67 x 10^-8 x 0.25) / (6.67 x 10^-11)
m^2 = 6.675 x 10^-9 / 6.67 x 10^-11 = 100
m = 10 kg

---

WASSCE 2021
Question: A satellite orbits Earth with period T1 at radius r1. A second satellite orbits at radius 4r1. Find its period T2 in terms of T1.

Model Answer:
T^2 proportional to r^3 (Kepler''s Third Law)
T2^2 / T1^2 = (4r1)^3 / r1^3 = 64r1^3 / r1^3 = 64
T2^2 = 64 x T1^2
T2 = 8 x T1

---

WASSCE 2020
Question: Explain why astronauts in an orbiting space station appear weightless, even though gravity still acts on them.

Model Answer: The space station and the astronauts are both in free fall together -- they both accelerate toward Earth at exactly the same rate due to gravity. Because they fall together, there is no contact force (normal reaction) between the astronaut and the floor. Without a contact force, there is no sensation of weight. This is called apparent weightlessness. Gravity still acts -- the orbiting spacecraft is evidence of this.

---

WASSCE 2018
Question: (a) State the inverse square law for gravitational force. (b) The gravitational force between two objects is 40 N when their separation is 2 m. Calculate the force when their separation is 6 m.

Model Answer:
(a) The gravitational force between two masses is inversely proportional to the square of the distance between their centres.

(b) When distance triples (from 2 m to 6 m), force decreases by factor 3^2 = 9.
New force = 40 / 9 = 4.4 N

---

PRACTICE QUESTIONS

Q1: State TWO differences between mass and weight.
[Answer: (1) Mass is constant everywhere; weight varies with g at different locations. (2) Mass is a scalar measured in kg; weight is a vector force measured in N.]

Q2: A 5 kg object weighs 50 N on Earth. What is its weight on Mars where g = 3.7 m/s^2?
[Mass = 5 kg (constant); W_Mars = 5 x 3.7 = 18.5 N]

Q3: Two planets have the same mass. Planet B has twice the radius of Planet A. Compare their surface gravities.
[g = GM/R^2. For Planet B: g_B = GM/(2R)^2 = GM/(4R^2) = g_A/4. Planet B has one quarter the surface gravity.]

Q4: A geostationary satellite orbits at height 36,000 km. State THREE advantages for telecommunications use.
[Answer: (1) No tracking needed -- antenna points at fixed position; (2) Continuous coverage of same region; (3) 24-hour availability without gaps in communication]

Q5: Calculate the gravitational force between Earth (M = 6.0 x 10^24 kg) and the Moon (m = 7.3 x 10^22 kg) separated by 3.8 x 10^8 m. G = 6.67 x 10^-11 N m^2 kg^-2.
[F = (6.67e-11 x 6.0e24 x 7.3e22) / (3.8e8)^2
F = (6.67 x 6.0 x 7.3 x 10^-11+24+22) / (1.444 x 10^17)
F = 2.924 x 10^37 / 1.444 x 10^17 x 10^-35 (wrong approach -- let us recalculate)
Numerator: 6.67e-11 x 6.0e24 = 4.0e14; 4.0e14 x 7.3e22 = 2.92e37
Denominator: (3.8e8)^2 = 1.444e17
F = 2.92e37 / 1.444e17 = 2.02 x 10^20 N]';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'WASSCE Practice: Gravitational Fields', v_content, 'practice', 5);

  END IF;
END $$;
