
/*
  # Physics Notes: Topic 20 - Equilibrium of Forces
  5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
  v_content text;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Equilibrium of Forces';
  
  IF v_topic_id IS NOT NULL THEN

    v_content := 'OVERVIEW: Equilibrium of Forces

Equilibrium is the state where all forces and all turning effects on an object are perfectly balanced. The object is either at rest or moving at constant velocity. Understanding equilibrium is essential for engineering (bridge and building design, crane operation), medicine (biomechanics), and everyday life (why ladders lean safely, why tall trucks tip over on corners).

TYPES OF EQUILIBRIUM

Static Equilibrium: Object is completely at rest and remains at rest.
Examples: a book on a table, a bridge, a suspended lamp.

Dynamic Equilibrium: Object moves at constant velocity (no acceleration).
Examples: a skydiver at terminal velocity, a car at steady speed on a flat road.

Both types satisfy the same mathematical conditions. Newton''s First Law applies to both.

CONDITIONS FOR EQUILIBRIUM
For an object to be in equilibrium, TWO conditions must BOTH be satisfied:

CONDITION 1 -- Translational Equilibrium:
The vector sum of all forces equals zero: Sum of F = 0
Equivalently: Sum of horizontal forces = 0 AND Sum of vertical forces = 0
This means NO linear acceleration.

CONDITION 2 -- Rotational Equilibrium:
The sum of all moments (torques) about ANY point equals zero: Sum of M = 0
Equivalently: Sum of clockwise moments = Sum of anticlockwise moments (Principle of Moments)
This means NO angular acceleration (no spinning up or slowing down).

TYPES OF STABILITY

Stable Equilibrium: When displaced, the object RETURNS to original position.
- Centre of gravity (CG) is LOW
- Wide base of support
- When tilted, the line of action of weight falls INSIDE the base (restoring moment)
- Examples: toy with heavy rounded base, low-slung racing car, cone on flat base

Unstable Equilibrium: When displaced, the object moves FURTHER from original position.
- CG is HIGH
- Narrow or point base
- When tilted slightly, the line of action of weight falls OUTSIDE the base (toppling moment)
- Examples: pencil balanced on tip, cone balanced on apex

Neutral Equilibrium: When displaced, object stays in new position.
- CG stays at the same height regardless of position
- Examples: sphere on flat surface, cylinder lying on its side

ENGINEERING APPLICATIONS
- Racing cars: wide wheelbase and low chassis for low CG and wide base -- very stable
- Ships: ballast tanks in hull lower CG and prevent capsizing
- Cranes: heavy counterweights on opposite side to load maintain balance
- Double-decker buses: heavy engine and battery floor structure lower the CG
- Bottles and containers: wider base means harder to knock over';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Overview: Equilibrium of Forces', v_content, 'overview', 1);

    v_content := 'KEY DEFINITIONS: Moments and Equilibrium

Equilibrium: The state of a body where the net force AND net torque are both zero. The body is at rest or moving at constant velocity.

Moment (Torque): The turning effect of a force about a pivot point.
Formula: Moment = Force x Perpendicular distance from pivot to line of action
M = F x d (perpendicular)
SI unit: Newton-metre (N m)
Direction: Clockwise (CW) or Anticlockwise (ACW)

Principle of Moments: For a body in rotational equilibrium, the sum of clockwise moments about any point equals the sum of anticlockwise moments about that same point.
Sum of CW moments = Sum of ACW moments

Pivot (Fulcrum): The fixed point about which rotation occurs or tends to occur.

Perpendicular Distance: The SHORTEST distance from the pivot to the LINE OF ACTION of the force. NOT the distance to where the force is applied if the force acts at an angle.

Line of Action: The line along which a force acts, extended infinitely in both directions.

Couple: A pair of equal, opposite, parallel forces acting on a body at different points.
Net force of couple = 0 (no translation)
Torque of couple = Force x Perpendicular distance between the two forces
A couple produces pure rotation without translation.

Centre of Gravity (CG): The single point through which the TOTAL WEIGHT of an object can be considered to act. For a uniform symmetric object, CG is at the geometric centre.

Centre of Mass: The point where total mass appears to be concentrated. Equals CG for objects in uniform gravitational fields.

Resultant Force: The single force that has the same overall effect as all individual forces acting together.

Resolution of Forces: Breaking a force into components along two perpendicular directions.
Horizontal component: Fx = F cos theta
Vertical component:   Fy = F sin theta

Lami''s Theorem: For three concurrent coplanar forces in equilibrium:
F1 / sin(alpha) = F2 / sin(beta) = F3 / sin(gamma)
where alpha, beta, gamma are the angles OPPOSITE to forces F1, F2, F3 respectively.

Free Body Diagram (FBD): A diagram showing only the object of interest with ALL forces acting ON it drawn as labelled arrows.

Coplanar Forces: All forces lie in the same plane.

Concurrent Forces: Lines of action of all forces pass through one common point.

Mechanical Advantage (MA): MA = Load / Effort. For a lever: MA = effort arm length / load arm length.

Classes of Levers:
Class 1: Pivot between effort and load (scissors, seesaw, crow bar)
Class 2: Load between pivot and effort (wheelbarrow, bottle opener)
Class 3: Effort between pivot and load (tweezers, forearm, fishing rod)';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Key Definitions: Moments and Equilibrium', v_content, 'definitions', 2);

    v_content := 'DEEP EXPLANATION: Moments, Couples and Stability

THE MOMENT OF A FORCE -- IN DETAIL

M = F x d_perp

The perpendicular distance (d_perp) is the KEY. It is the shortest distance from the pivot to the line of action of the force.

If the force is at angle theta to the arm of length L:
M = F x L x sin(theta)

CRITICAL UNDERSTANDING: A force directed DIRECTLY toward or away from the pivot has ZERO moment, no matter how large the force or how long the arm. Only the component of force perpendicular to the arm causes rotation.

APPLYING THE PRINCIPLE OF MOMENTS
For any object in equilibrium, taking moments about ANY chosen point gives:
Sum of CW moments = Sum of ACW moments

Clever choice of pivot point: Choose a point where an unknown force acts. That unknown force then has zero moment (distance = 0) and drops out of the equation, making it easier to solve.

Example: Uniform plank, weight W, length L, supported at two points A and B.
If you take moments about A, the reaction at A drops out, and you can directly find the reaction at B.

THREE CLASSES OF LEVERS

Class 1 Lever (pivot between load and effort):
Examples: scissors, seesaw, crowbar, pliers.
Load and effort are on OPPOSITE SIDES of the pivot.
Can have MA > 1 or MA < 1 depending on arm lengths.

Class 2 Lever (load between pivot and effort):
Examples: wheelbarrow, nutcracker, bottle opener.
Load and effort are on the SAME SIDE; load is CLOSER to pivot.
MA is always > 1 (effort arm is longer than load arm). Good for lifting heavy loads with less effort.

Class 3 Lever (effort between load and pivot):
Examples: tweezers, fishing rod, human forearm lifting a weight (bicep inserts close to elbow joint).
Load and effort on SAME SIDE; effort is CLOSER to pivot.
MA < 1 (effort arm shorter than load arm). Trades force for range of motion and speed.

CENTRE OF GRAVITY -- FINDING IT EXPERIMENTALLY
For irregular flat objects:
1. Suspend object from one point. Hang a plumb line from the same point.
2. Mark the plumb line position on the object.
3. Repeat from a different point.
4. CG is where the two marked lines INTERSECT.

Why? When hanging from a point, the CG must be directly below that point (otherwise there would be an unbalanced moment causing rotation).

STABILITY AND CG
An object topples when: the vertical line through the CG falls OUTSIDE the base of support.
An object is stable when: the vertical line through the CG stays INSIDE the base.

Factors increasing stability:
1. LOWER CG: move heavy components to bottom (ballast, low engine placement)
2. WIDER BASE: increase separation of support points

Critical tipping angle: The angle at which the CG is directly above the edge of the base. Any more tipping and it falls.

RESOLVING FORCES FOR EQUILIBRIUM PROBLEMS
For any body in equilibrium, after drawing the free body diagram:

Step 1: Resolve ALL forces into horizontal (x) and vertical (y) components.
Step 2: Apply Sum Fx = 0 for horizontal equilibrium.
Step 3: Apply Sum Fy = 0 for vertical equilibrium.
Step 4: Apply Sum M = 0 (take moments about a convenient point).
Step 5: Solve the simultaneous equations.

COUPLES IN REAL LIFE
A couple produces pure rotation (no net force on the body''s centre of mass):
- Steering wheel: two hands push in opposite directions
- Turning a tap or faucet
- Torque wrench: provides controlled couple to tighten bolts
- DNA double helix: replication enzymes apply a couple to unwind it

Torque of couple = F x d
where d = perpendicular distance between the two parallel forces.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Deep Explanation: Moments, Couples and Stability', v_content, 'explanation', 3);

    v_content := 'WORKED EXAMPLES: Equilibrium of Forces

EXAMPLE 1: Simple Seesaw -- Principle of Moments
Question: A uniform seesaw of length 4 m is pivoted at its centre. Child A (weight 400 N) sits 1.5 m from the pivot on the left. Where must child B (weight 300 N) sit on the right to balance?

Solution:
For equilibrium: Sum of CW moments = Sum of ACW moments

ACW moment (left side): 400 x 1.5 = 600 N m
CW moment (right side): 300 x d = 300d N m

For balance: 300d = 600
d = 600 / 300 = 2.0 m from the pivot on the right side.

Verification: 400 x 1.5 = 600 N m; 300 x 2.0 = 600 N m. Balanced!

---

EXAMPLE 2: Beam with Multiple Forces
Question: A uniform beam AB of weight 200 N and length 6 m rests on two supports at A and B. A load of 500 N is placed 2 m from A. Calculate reactions R_A and R_B.

Solution:
IMPORTANT: Take moments about A first (this eliminates R_A from the equation).

Taking moments about A:
CW (load): 500 x 2 = 1000 N m
CW (beam weight at centre): 200 x 3 = 600 N m
ACW (R_B): R_B x 6

Sum M_A = 0: R_B x 6 = 1000 + 600 = 1600
R_B = 1600 / 6 = 266.7 N (approx 267 N)

Vertical equilibrium: R_A + R_B = 500 + 200 = 700 N
R_A = 700 - 267 = 433 N

Check (moments about B):
CW (R_A): 433 x 6 = 2598 N m
ACW (load): 500 x 4 = 2000 N m
ACW (beam weight): 200 x 3 = 600 N m
Total ACW = 2600 N m. Approximately balanced (small rounding error). Correct!

---

EXAMPLE 3: Finding Centre of Gravity
Question: A non-uniform plank of length 4 m and weight 150 N is balanced on a pivot placed 1.8 m from the left end, with a 100 N weight hanging 0.5 m from the left end. Find the distance of the CG from the left end.

Solution:
Let CG be at distance x from left end. Pivot is at 1.8 m from left end.
Distance from CG to pivot = x - 1.8 (positive if CG is to the right of pivot)
Distance from 100 N weight to pivot = 1.8 - 0.5 = 1.3 m (to the left = anticlockwise)

ACW moment: 100 x 1.3 = 130 N m
CW moment: 150 x (x - 1.8)

For balance: 150(x - 1.8) = 130
x - 1.8 = 130/150 = 0.867 m
x = 1.8 + 0.867 = 2.67 m from left end

---

EXAMPLE 4: Couple Calculation
Question: Two parallel forces of 40 N act in opposite directions on a door, 0.8 m apart. Calculate the torque of the couple.

Solution:
Torque of couple = F x d = 40 x 0.8 = 32 N m

The net force on the door = 0 (it does not translate), but it tends to rotate with torque 32 N m.

---

EXAMPLE 5: Equilibrium of Three Forces -- Lami''s Theorem
Question: A picture frame hangs from two wires. Wire 1 pulls at 120 degrees from the vertical (measuring the angle at the top), wire 2 at 120 degrees from the vertical on the other side. The frame weighs 50 N. Find the tension in each wire using symmetry.

Solution:
By symmetry, both tensions T are equal.
Vertical equilibrium: 2T cos(30 degrees) = 50 N
[The wire makes 30 degrees with the vertical since 90 - 60 = 30]
2T x 0.866 = 50
T = 50 / (2 x 0.866) = 50 / 1.732 = 28.9 N

Each wire has tension approximately 29 N.

---

EXAMPLE 6: Classes of Levers
Question: Identify the class of lever and find mechanical advantage for: A 1 m crowbar with pivot 10 cm from one end. Load of 500 N applied 10 cm from pivot. Effort applied 90 cm from pivot on the other side.

Solution:
Pivot is between load and effort -- CLASS 1 LEVER.

For balance: Load x load arm = Effort x effort arm
500 x 0.10 = Effort x 0.90
Effort = 50 / 0.90 = 55.6 N

Mechanical Advantage = Load / Effort = 500 / 55.6 = 9.0

This lever multiplies effort by 9 times -- a 55.6 N effort lifts a 500 N load!';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Worked Examples: Equilibrium Problems', v_content, 'examples', 4);

    v_content := 'WASSCE PAST QUESTIONS AND PRACTICE: Equilibrium of Forces

WASSCE 2022
Question: (a) State the TWO conditions necessary for a body to be in equilibrium. (b) A uniform rod AB of length 80 cm and mass 2 kg is pivoted at a point 30 cm from A. A mass of 5 kg hangs from A. Calculate the mass that must be placed at B for equilibrium. g = 10 m/s^2.

Model Answer:
(a) 1. The resultant force acting on the body must be zero (Sum F = 0). No linear acceleration.
    2. The resultant moment (torque) of all forces about any point must be zero (Sum M = 0). No angular acceleration.

(b) Weights and distances from pivot (30 cm from A):
- Mass at A (5 kg): W = 50 N at distance 30 cm from pivot (ACW moment = 50 x 30 = 1500 N cm)
- Beam weight (2 kg): W = 20 N at centre = 40 cm from A = 10 cm from pivot on B-side (CW moment = 20 x 10 = 200 N cm)
- Mass at B (m kg): W = 10m N at distance 50 cm from pivot on B-side (CW moment = 10m x 50 = 500m N cm)

Sum of CW = Sum of ACW:
200 + 500m = 1500
500m = 1300
m = 1300 / 500 = 2.6 kg

---

WASSCE 2021
Question: (a) Explain stable and unstable equilibrium in terms of centre of gravity. (b) Suggest TWO ways to increase the stability of a tall vehicle.

Model Answer:
(a) In stable equilibrium, the centre of gravity is low. When the object is displaced, the line of action of weight falls INSIDE the base of support, creating a RESTORING moment that returns the object to its original position.
In unstable equilibrium, the centre of gravity is high. When displaced slightly, the line of action of weight falls OUTSIDE the base, creating a TOPPLING moment that causes further rotation away from equilibrium.

(b) To increase stability: (1) Lower the centre of gravity -- carry heavy loads at floor level, lower the chassis. (2) Widen the wheelbase -- increase the track width so the base of support is larger.

---

WASSCE 2020
Question: A 6 m uniform beam weighing 400 N is supported at its ends. A load of 600 N is placed 2 m from the left support. Calculate the reactions at both supports.

Model Answer:
Taking moments about left support (call it A):
R_B x 6 = 600 x 2 + 400 x 3
R_B x 6 = 1200 + 1200 = 2400
R_B = 2400/6 = 400 N

Vertical equilibrium: R_A + 400 = 600 + 400
R_A = 1000 - 400 = 600 N

Check: moments about B: 600 x 4 + 400 x 3 = 2400 + 1200 = 3600; R_A x 6 = 600 x 6 = 3600. Correct!

---

WASSCE 2019
Question: A uniform plank of length 5 m and weight 300 N is placed on two supports, one at each end. A person of weight 700 N stands 1.5 m from the left end. Calculate (a) reaction at left support, (b) reaction at right support.

Model Answer:
Taking moments about left support (A):
R_B x 5 = 700 x 1.5 + 300 x 2.5
R_B x 5 = 1050 + 750 = 1800
R_B = 360 N

Vertical equilibrium: R_A + 360 = 700 + 300 = 1000
R_A = 1000 - 360 = 640 N

---

PRACTICE QUESTIONS

Q1: Calculate the moment of a 50 N force applied perpendicular to a wrench handle 0.3 m long.
[M = F x d = 50 x 0.3 = 15 N m]

Q2: A see-saw of length 3 m is pivoted at its centre. Child A (300 N) sits 1.2 m from pivot on left. Where must 200 N child B sit on right for balance?
[300 x 1.2 = 200 x d; d = 360/200 = 1.8 m from pivot]

Q3: State the difference between a couple and a single force.
[Answer: A single force has both a turning effect AND causes translation (changes the velocity of the centre of mass). A couple consists of two equal, opposite forces that produce only rotation -- the net force is zero so there is no translation of the centre of mass.]

Q4: A 2 m uniform rod balances on a pivot 0.8 m from one end. Calculate the ratio of the weights at each end if only these two weights maintain balance (ignore rod weight).
[Pivot divides rod into 0.8 m (left) and 1.2 m (right). W_left x 0.8 = W_right x 1.2. W_left/W_right = 1.2/0.8 = 1.5. Left weight is 1.5 times the right weight.]

Q5: Explain why a person is less likely to tip over when carrying a heavy backpack on both shoulders rather than a heavy bag in one hand.
[With a bag in one hand, the weight is far to one side of the vertical through the CG of the person + bag system. This shifts the combined CG sideways, and the person must lean to the opposite side to keep the CG over their feet. With a backpack on both shoulders, the weight is distributed symmetrically. The combined CG stays over the feet with no compensatory lean needed.]

Q6: Name the class of lever for each and state whether MA is greater or less than 1:
(a) Wheelbarrow (b) Scissors (c) Tweezers
[Answer: (a) Class 2, MA > 1 (load between pivot and effort, effort arm longer); (b) Class 1, MA can be >1 or <1 depending on design; (c) Class 3, MA < 1 (effort between pivot and load, effort arm shorter -- speed/range traded for force)]';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'WASSCE Practice: Equilibrium of Forces', v_content, 'practice', 5);

  END IF;
END $$;
