
/*
  # Further Mathematics Deep Notes: Topics 17-20
  
  Adds comprehensive notes for:
  17. Mechanics: Statics (3046e2b5-d099-498e-80fb-d66c22719d7b)
  18. Mechanics: Dynamics (873bc2e9-32ca-4bec-a761-e72d4ef2159e)
  19. Mathematical Proof and Induction (74aa3cb8-da39-489f-ae9a-5eb96d467ea6)
  20. Hyperbolic Functions (521c6875-580f-47f4-8624-278af1f5a656)
*/

-- ============================================================
-- TOPIC 17: MECHANICS: STATICS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Overview of Statics',
'## Mechanics: Statics

**Statics** is the branch of mechanics that deals with objects at rest or in equilibrium. When all forces and moments on a body sum to zero, the body is in static equilibrium.

### What You Will Study
- Forces and their representation
- Resultant forces and components
- Conditions for equilibrium
- Moments and couples
- Centre of mass
- Friction
- Connected bodies and frameworks

### Key Assumption: Particle vs Rigid Body
- **Particle:** A point mass — forces act at a single point
- **Rigid body:** Has shape and extent — forces can create rotation; moments matter

### Why Statics Matters
- Engineering: designing bridges, buildings, cranes
- Biology: biomechanics — why can we lift heavy loads?
- Architecture: load distribution in structures
- Everyday: Why does a shelf not fall? How do scales work?

### The Golden Rules of Equilibrium
For a body in equilibrium:
1. **ΣF = 0** (vector sum of all forces = zero)
2. **ΣM = 0** (sum of all moments about any point = zero)',
'overview', 1),

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Forces, Moments, and Equilibrium',
'## Forces

### Types of Forces
- **Weight (W = mg):** Acts downward at centre of mass
- **Normal Reaction (N):** Perpendicular to surface, from surface on body
- **Tension (T):** Force in a string/cable (pulls toward anchor)
- **Thrust:** Compressive force (pushes away)
- **Friction (F):** Parallel to surface, opposing motion or tendency to move

### Resolving Forces
Any force F at angle θ to horizontal has:
- Horizontal component: F cos θ
- Vertical component: F sin θ

### Resultant
R = √(Fₓ² + Fy²), direction: tan α = Fy/Fₓ

---

## Moments

The **moment of a force** F about a point O is:
**M = F × d**

where d is the **perpendicular distance** from O to the line of action of F.

**Clockwise moments are negative (usually); anticlockwise are positive** (or vice versa — be consistent!).

### Principle of Moments
For equilibrium: **Sum of clockwise moments = Sum of anticlockwise moments**

Or: Σ(anticlockwise moments) − Σ(clockwise moments) = 0

---

## Conditions for Equilibrium

### For a Particle (or force system without rotation):
**ΣFₓ = 0** and **ΣFy = 0**

### For a Rigid Body:
**ΣFₓ = 0**, **ΣFy = 0**, AND **ΣM = 0** (about any point)

### Choosing the Moment Point
Choose the point that eliminates the most unknowns. Taking moments about the point of application of an unknown force removes that force from the moment equation.

---

## Friction

### Friction Force
When a body is on the verge of sliding, friction is at its maximum:
**F_max = μN**

where μ = coefficient of friction and N = normal reaction.

**For equilibrium:** F ≤ μN (friction is only as large as needed, up to maximum)

### Angle of Friction
The angle of friction λ satisfies tan λ = μ.
The resultant of F and N makes angle λ with N.

### Types of Friction Problems
1. **Will it slip?** Find F needed, check if F ≤ μN
2. **Find limiting equilibrium:** Set F = μN
3. **On an inclined plane:** For object to remain still, angle of incline ≤ λ (angle of friction)',
'definitions', 2),

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Centre of Mass and Connected Bodies',
'## Centre of Mass

### For a System of Particles
x̄ = (m₁x₁ + m₂x₂ + ... + mₙxₙ) / (m₁ + m₂ + ... + mₙ)
ȳ = (m₁y₁ + m₂y₂ + ... + mₙyₙ) / M

### For Standard Shapes (Uniform bodies)

| Shape | Centre of Mass |
|---|---|
| Rectangle (w×h) | (w/2, h/2) from corner |
| Triangle (base b, height h) | h/3 from base |
| Semicircle radius r | 4r/(3π) from diameter |
| Hemisphere radius r | 3r/8 from flat face |
| Cone height h | h/4 from base |
| Sector angle 2α, radius r | 2r sinα/(3α) from centre |

### Composite Bodies
For a composite shape, treat each part separately:
1. Find area/mass and centre of mass of each part
2. Use the weighted average formula

For a shape with a hole: treat the hole as negative mass.

---

## Frameworks and Connected Bodies

### Rods in Equilibrium
A **framework** is a structure made of light rods (members) connected at joints (nodes).

**Types of members:**
- **Strut:** Under compression (rod being pushed together)
- **Tie:** Under tension (rod being pulled apart)

### Lami''s Theorem
For three concurrent forces in equilibrium:
**F₁/sin α₁ = F₂/sin α₂ = F₃/sin α₃**

where α₁ is the angle OPPOSITE to F₁ (between the other two forces), etc.

This is extremely useful for three-force problems!

### The Triangle of Forces
If three forces keep a body in equilibrium, they can be represented as the sides of a triangle (magnitude and direction). This is just the vector form of ΣF = 0.',
'explanation', 3),

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Beam in Equilibrium
A uniform beam AB of mass 10 kg and length 6m rests on two supports at A and at C, where AC = 4m. A load of 50 N is placed at B. Find the reactions at A and C.

Weight of beam: W = 10 × 10 = 100 N at midpoint (3m from A).
Load at B: 50 N at 6m from A.
Let R_A and R_C be reactions at A and C.

**ΣFy = 0:** R_A + R_C = 100 + 50 = 150 N ...(1)

**Take moments about A (eliminates R_A):**
R_C × 4 = 100 × 3 + 50 × 6
4R_C = 300 + 300 = 600
**R_C = 150 N**

From (1): R_A = 150 − 150 = **0 N**

Interesting! The reaction at A is zero — the beam just barely rests on A.

---

### Example 2: Friction on Incline
A block of mass 5 kg rests on a rough inclined plane (angle 30°). Coefficient of friction = 0.4. Find whether the block slides.

Forces: Weight = 50 N, Normal N, Friction F.
Resolving perpendicular to plane: N = 50 cos 30° = 43.3 N
Resolving parallel (down the plane): F needed = 50 sin 30° = 25 N

Maximum friction: F_max = μN = 0.4 × 43.3 = 17.3 N

Since 25 > 17.3, friction cannot prevent sliding.
**The block slides down the incline.**

---

### Example 3: Lami''s Theorem
A sign of weight 50 N hangs from two wires making angles 40° and 60° with the vertical. Find tensions T₁ and T₂.

The three forces (T₁, T₂, 50 N) are in equilibrium.
The angle between T₁ and the weight = 180° − 40° = 140°
The angle between T₂ and the weight = 180° − 60° = 120°
The angle between T₁ and T₂ = 360° − 140° − 120° = 100°

By Lami''s: 50/sin 100° = T₁/sin 120° = T₂/sin 140°

T₁ = 50 sin 120°/sin 100° = 50 × 0.866/0.985 = **43.9 N**
T₂ = 50 sin 140°/sin 100° = 50 × 0.643/0.985 = **32.6 N**

---

### Example 4: Centre of Mass
An L-shaped body is made from two rectangles:
- Rectangle 1: 6cm × 2cm (mass 12g, CM at (1,3))
- Rectangle 2: 4cm × 2cm (mass 8g, CM at (4,1))

x̄ = (12×1 + 8×4)/(12+8) = (12+32)/20 = 44/20 = **2.2 cm**
ȳ = (12×3 + 8×1)/(12+8) = (36+8)/20 = 44/20 = **2.2 cm**',
'examples', 4),

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Practice Questions',
'## Practice Questions — Statics

### Section A: Forces and Equilibrium
**1.** Three forces act on a particle: F₁=10N East, F₂=8N North, F₃. For equilibrium, find F₃.

**2.** A particle of mass 3kg is suspended by two strings making 30° and 60° with the horizontal. Find the tension in each string.

**3.** A ladder of length 5m and mass 20kg leans against a smooth wall at 70° to the horizontal. Find the reactions at the wall and ground.

---

### Section B: Moments
**4.** A see-saw of length 4m is balanced at its midpoint. Child A (40kg) sits 1.5m from centre. Where must Child B (30kg) sit?

**5.** A beam AB is 8m long with mass 12kg. It is supported at A and B. A load of 100N is placed 3m from A. Find the reactions.

**6.** A plank of mass 5kg and length 2m overhangs a table by 0.8m. What maximum load can be placed at the end without toppling?

---

### Section C: Friction
**7.** A box of mass 8kg sits on a rough floor (μ=0.3). What horizontal force is needed to start it moving?

**8.** A block on a rough incline is about to slip when the angle is 35°. Find μ.

**9.** A 50kg crate is on a rough floor (μ=0.25). A rope pulls at 20° above horizontal. Find the minimum tension to move the crate.

---

### Section D: Centre of Mass
**10.** Find the centre of mass of: masses 2kg, 5kg, 3kg at positions (1,2), (3,0), (5,4).

**11.** A uniform square plate of side 4cm has a circular hole of radius 1cm cut from its centre. Find the centre of mass (it should remain at centre — why?).

**12.** A T-shaped plate: vertical rectangle 2cm × 6cm, horizontal rectangle 6cm × 2cm at top. Find the CM.

### Answers
1. 10√2 N at 225°   2. T₁=30N, T₂=30√3N (using Lami)   4. 2m from centre   7. 23.5N   10. (3.2, 1.6)',
'practice', 5),

('3046e2b5-d099-498e-80fb-d66c22719d7b',
'Summary',
'## Summary: Statics

### Equilibrium Conditions

| Body Type | Conditions |
|---|---|
| Particle | ΣFx=0, ΣFy=0 |
| Rigid Body | ΣFx=0, ΣFy=0, ΣM=0 |
| Three forces | Concurrent; use triangle/Lami |

### Moment Formula
M = F × d (perpendicular distance from pivot to line of action)

### Friction
- F ≤ μN always
- At limiting equilibrium: F = μN
- Angle of friction: tan λ = μ

### Centre of Mass
x̄ = Σ(mᵢxᵢ)/Σmᵢ, ȳ = Σ(mᵢyᵢ)/Σmᵢ

### Lami''s Theorem (3 concurrent forces)
F₁/sin α₁ = F₂/sin α₂ = F₃/sin α₃

### Strategy for Moment Problems
- Take moments about the point of application of an unknown force to eliminate it
- Check: Sum of upward forces = Sum of downward forces (ΣFy=0)',
'content', 6);

-- ============================================================
-- TOPIC 18: MECHANICS: DYNAMICS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Overview of Dynamics',
'## Mechanics: Dynamics

**Dynamics** is the study of objects in motion and the forces that cause that motion. It is built on Newton''s Laws of Motion.

### Newton''s Three Laws
1. **First Law (Inertia):** A body remains at rest or in uniform motion unless acted on by a resultant force.
2. **Second Law (F = ma):** The resultant force equals mass times acceleration. **F = ma**
3. **Third Law (Action-Reaction):** For every force, there is an equal and opposite reaction.

### What You Will Study
- Kinematics: equations of motion (SUVAT)
- Newton''s Laws application
- Connected bodies (Atwood''s machine, pulleys)
- Impulse and momentum
- Work, energy, and power
- Circular motion
- Variable forces (using calculus)
- Projectile motion',
'overview', 1),

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Kinematics and Newton''s Laws',
'## Kinematics: Equations of Motion

For **constant acceleration** along a straight line:

**SUVAT Equations:**
- v = u + at
- s = ut + ½at²
- v² = u² + 2as
- s = ½(u+v)t

where: s=displacement, u=initial velocity, v=final velocity, a=acceleration, t=time

**Sign convention:** Choose positive direction; forces/velocities in that direction are positive.

---

## Newton''s Second Law: F = ma

**Net Force = Mass × Acceleration**

Always apply F = ma in the **direction of motion** (along the direction of acceleration).

### Common Setup: Incline
For a mass m on smooth incline at angle θ, pulled up by force P:
- Along incline: P − mg sin θ = ma
- Perpendicular: N − mg cos θ = 0 → N = mg cos θ

### Rough Surface
For mass m sliding on rough surface (μ):
- F = ma along motion: Applied force − Friction = ma
- Friction = μN = μmg (on horizontal surface)

---

## Connected Bodies (Pulleys)

### Atwood''s Machine
Masses m₁ and m₂ (m₁ > m₂) connected over a pulley.

For the system (taking down as positive for m₁):
(m₁ − m₂)g = (m₁ + m₂)a
**a = (m₁ − m₂)g/(m₁ + m₂)**

Tension: T = 2m₁m₂g/(m₁ + m₂)

---

## Impulse and Momentum

**Momentum:** p = mv (kg·m/s)

**Impulse:** J = Ft = Δp = mv − mu

**Conservation of Momentum** (no external forces):
m₁u₁ + m₂u₂ = m₁v₁ + m₂v₂

### Newton''s Law of Restitution
For a collision between two bodies:
**e = (v₂ − v₁)/(u₁ − u₂)**

where e = coefficient of restitution (0 ≤ e ≤ 1):
- e = 1: perfectly elastic (kinetic energy conserved)
- e = 0: perfectly inelastic (bodies stick together)

---

## Work, Energy, and Power

**Work done** by force F moving through distance s at angle θ:
**W = Fs cos θ**

**Kinetic Energy:** KE = ½mv²

**Potential Energy:** PE = mgh

**Conservation of Energy:**
KE + PE = constant (no friction)
or: Loss in PE = Gain in KE + Work done against friction

**Power:** P = Fv = Work done per unit time (Watts)

### Equation of Power
At terminal velocity (constant speed v), driving force = resistance:
P = Fv',
'definitions', 2),

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Circular Motion and Variable Forces',
'## Circular Motion

### Uniform Circular Motion
An object moving in a circle at constant speed still **accelerates** toward the centre (centripetal acceleration).

**Centripetal acceleration:** a = v²/r = rω²

**Centripetal force:** F = mv²/r = mrω²

where r = radius, v = speed, ω = angular velocity (rad/s)

### Angular Velocity
ω = 2π/T = 2πf (where T = period, f = frequency)

### In a Horizontal Circle
The centripetal force is provided by different forces depending on context:
- Object on string: tension provides centripetal force
- Object on banked road: component of normal force provides centripetal force
- Object in conical pendulum: horizontal component of tension

### In a Vertical Circle
The speed and tension vary around the loop.

At **top** of loop (speed v_top, radius r):
mg + T_top = mv_top²/r → T_top = m(v_top²/r − g)

At **bottom** (speed v_bottom):
T_bottom − mg = mv_bottom²/r → T_bottom = m(v_bottom²/r + g)

**Minimum speed at top for complete circle:** v_min = √(rg) (when T = 0)

Using energy: v_bottom² = v_top² + 4gr
Minimum speed at bottom: v_bottom,min = √(5gr)

---

## Variable Forces (Calculus Methods)

When force is not constant, use integration:

**v = ds/dt** and **a = dv/dt = v·dv/ds** (chain rule!)

From F = ma:
**F = m·dv/dt** or **F = mv·dv/ds**

**Impulse (variable force):** J = ∫F dt

**Work done (variable force):** W = ∫F ds

### Projectile Motion
Horizontal: x = u cos α · t (no force horizontally)
Vertical: y = u sin α · t − ½gt²

**Range:** R = u² sin 2α / g
**Maximum height:** H = u² sin²α / (2g)
**Time of flight:** T = 2u sin α / g

Maximum range when α = 45°.',
'explanation', 3),

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Connected Bodies on Incline
Masses A(3kg) and B(2kg) are connected by a string over a smooth pulley. A is on a rough incline at 30° (μ=0.2); B hangs freely. Find acceleration and tension.

Take down for B and up the incline for A as positive.

Forces on B: 2g − T = 2a ...(1)
Forces on A along incline: T − 3g sin 30° − μ × 3g cos 30° = 3a
Normal on A: N = 3g cos 30° = 3×10×(√3/2) = 25.98 N
Friction on A = 0.2 × 25.98 = 5.196 N
T − 15 − 5.196 = 3a → T − 20.196 = 3a ...(2)

Add (1) and (2): 2g − T + T − 20.196 = 5a
20 − 20.196 = 5a → a = −0.039 m/s²

Negative! This means our assumed direction is wrong — A slides DOWN and B goes UP.

Recalculate with friction reversed: 2g − T = 2a, T − 3g sin30° + μN = 3a
20 − T = 2a, T − 15 + 5.196 = 3a
20 − T = 2a, T − 9.804 = 3a
Add: 10.196 = 5a → **a = 2.04 m/s²**
T = 20 − 2(2.04) = **15.92 N**

---

### Example 2: Circular Motion — Vertical
A stone on a string of length 0.8m is swung in a vertical circle. Find minimum speed at bottom for complete circles.

At top, minimum condition: T = 0, so centripetal force = mg alone:
mg = mv_top²/r → v_top,min = √(rg) = √(0.8×10) = √8 m/s

Using energy (bottom to top, height = 2r = 1.6m):
½mv_bottom² = ½mv_top² + mg(2r)
v_bottom,min = √(v_top² + 4gr) = √(8 + 4×10×0.8) = √(8+32) = √40 = **6.32 m/s**

---

### Example 3: Impulse and Collision
Ball A (0.5kg) moving at 6m/s collides with ball B (0.3kg) at rest. e=0.6. Find velocities after.

Conservation of momentum: 0.5(6) + 0.3(0) = 0.5v_A + 0.3v_B
3 = 0.5v_A + 0.3v_B ...(1)

Newton''s law of restitution: e = (v_B − v_A)/(u_A − u_B)
0.6 = (v_B − v_A)/6 → v_B − v_A = 3.6 ...(2)

From (2): v_B = v_A + 3.6
Substitute in (1): 3 = 0.5v_A + 0.3(v_A+3.6) = 0.8v_A + 1.08
0.8v_A = 1.92 → **v_A = 2.4 m/s**
**v_B = 6.0 m/s**

---

### Example 4: Variable Force
A particle of mass 2kg has force F = (6t − 4) N at time t. Initial velocity = 3 m/s. Find velocity at t = 4s.

F = ma = 2a → a = (6t−4)/2 = 3t − 2

v = ∫a dt = ∫(3t−2) dt = (3t²/2) − 2t + C
At t=0, v=3: C = 3
v = **(3t²/2) − 2t + 3**

At t=4: v = 3(16)/2 − 8 + 3 = 24 − 8 + 3 = **19 m/s**',
'examples', 4),

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Practice Questions',
'## Practice Questions — Dynamics

### Section A: SUVAT and Newton''s Laws
**1.** A car accelerates uniformly from 0 to 90 km/h in 8 seconds. Find: (a) acceleration  (b) distance covered

**2.** A 5kg block on a rough floor (μ=0.3) is pushed by 20N horizontally. Find acceleration.

**3.** A 2kg particle on a smooth incline at 25° is released from rest. Find: (a) acceleration  (b) speed after 3s  (c) distance in 3s

---

### Section B: Connected Bodies
**4.** Masses 4kg and 3kg hang over a smooth pulley. Find: (a) acceleration  (b) tension  (c) distance moved in 2s

**5.** A 5kg block on a smooth table is connected by string over edge to a 2kg hanging mass. Find acceleration and tension.

---

### Section C: Momentum and Impulse
**6.** A 0.4kg ball is kicked at 15 m/s from rest. Contact time = 0.01s. Find average force.

**7.** Ball A (2kg, 5m/s) collides with ball B (3kg, 2m/s, opposite direction). They stick together. Find final velocity.

**8.** Ball P (1kg, 6m/s) hits ball Q (2kg at rest), e=0.5. Find velocities after collision.

---

### Section D: Energy and Power
**9.** A 70kg cyclist (total 90kg with bike) rides at constant 15 m/s on level road. Resistance = 20N. Find the power output.

**10.** A 500kg car descends a slope of angle 5° for 200m. Resistance = 300N. Find speed at bottom if starting from rest. (g=10)

**11.** A particle moves from rest under force F=(3x²+2)N. Mass=1kg. Find speed when x=3.

---

### Section E: Circular Motion
**12.** A 0.5kg ball on a string of length 0.6m swings in a horizontal circle (conical pendulum). The string makes 30° with vertical. Find: (a) speed  (b) tension  (c) period

**13.** A car travels over a bridge (radius 40m) at the top of a hill. Find maximum speed before it leaves the road.

**14.** At the bottom of a circular arc (radius 5m), a 60kg person has speed 8m/s. Find normal reaction.

### Answers
1a. 3.125 m/s²  1b. 100m  4a. g/7≈1.43m/s²  4b. 24g/7≈34.3N  7. −0.8m/s (in direction of A)  12a. v=√(g×0.6×tan30°/1)=√3.46≈1.86m/s  13. v=√(40g)=20m/s  14. N=m(v²/r+g)=60(64/5+10)=60(12.8+10)=1368N',
'practice', 5),

('873bc2e9-32ca-4bec-a761-e72d4ef2159e',
'Summary',
'## Summary: Dynamics

### SUVAT Equations (Constant Acceleration)
v = u + at
s = ut + ½at²
v² = u² + 2as
s = (u+v)t/2

### Newton''s Second Law
F_net = ma (along direction of acceleration)

### Impulse and Momentum
Impulse J = Ft = mv − mu
Conservation: m₁u₁ + m₂u₂ = m₁v₁ + m₂v₂
Restitution: e = (v₂−v₁)/(u₁−u₂)

### Energy
KE = ½mv²
PE = mgh
Work-Energy Theorem: Net work = ΔKE
Power = Fv

### Circular Motion
Centripetal force = mv²/r = mrω²
At top of vertical circle: T + mg = mv²/r (T can be 0)
At bottom: T − mg = mv²/r

### Projectile Motion
Range = u²sin2α/g (maximum when α=45°)
Max height = u²sin²α/(2g)

### Strategy
1. Draw a force diagram
2. Choose positive direction
3. Apply F=ma along each axis
4. Solve equations simultaneously
5. Check units and sign of answer',
'content', 6);

-- ============================================================
-- TOPIC 19: MATHEMATICAL PROOF AND INDUCTION
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Overview of Mathematical Proof',
'## Mathematical Proof and Induction

A **mathematical proof** is a logical argument that establishes a statement is true beyond all doubt, for ALL cases (not just checked cases). This distinguishes mathematics from experimental science.

### Types of Proof
1. **Direct Proof:** Start with assumptions, reach conclusion through logical steps
2. **Proof by Contradiction:** Assume the opposite is true, derive a contradiction
3. **Proof by Contrapositive:** Prove "not Q implies not P" instead of "P implies Q"
4. **Proof by Mathematical Induction:** For statements about integers

### The Language of Proof
- **Theorem:** A major result that has been proved
- **Lemma:** A smaller result used to prove a theorem
- **Corollary:** A result that follows easily from a theorem
- **Conjecture:** A statement believed to be true but not yet proved
- **Axiom/Postulate:** A statement assumed to be true without proof

### Why Proof Matters
Without proof, mathematics is just pattern-recognition. A pattern that holds for 1,000,000 cases might fail at 1,000,001. Only proof gives certainty. One famous example: all primes except 2 are odd — is every odd number prime? No! 9 is odd and composite.

### The Standard of Proof
Every step must follow logically from previous steps. No intuition, "it seems obvious," or diagrams are acceptable as proof (though they aid understanding).',
'overview', 1),

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Methods of Proof',
'## Methods of Proof — In Detail

### Method 1: Direct Proof
State the hypothesis, then derive the conclusion using valid logic.

**Structure:**
- "Let..." (introduce variables)
- "We know that..." (state assumptions)
- "Therefore..." (derive conclusion)

**Example:** Prove that the sum of two odd numbers is even.
Let m and n be odd integers. Then m = 2a+1 and n = 2b+1 for some integers a,b.
m + n = (2a+1) + (2b+1) = 2a + 2b + 2 = 2(a+b+1).
Since a+b+1 is an integer, m+n is even. ✓

---

### Method 2: Proof by Contradiction
Assume the statement is FALSE. Derive something that contradicts a known truth. Conclude the original statement must be TRUE.

**Structure:**
- "Suppose for contradiction that..."
- [Derive contradiction]
- "This is a contradiction. Therefore..."

**Classic Example:** Prove √2 is irrational.

Suppose √2 is rational. Then √2 = p/q where p,q are integers with no common factor (in lowest terms).
Squaring: 2 = p²/q² → p² = 2q²
So p² is even → p is even → p = 2k for some integer k.
Then (2k)² = 2q² → 4k² = 2q² → q² = 2k²
So q² is even → q is even.
But then p and q are BOTH even, contradicting our assumption that p/q is in lowest terms.
**Contradiction! Therefore √2 is irrational. ✓**

---

### Method 3: Proof by Contrapositive
To prove "P → Q", instead prove "¬Q → ¬P" (if not Q, then not P).
Logically equivalent! Sometimes easier.

**Example:** Prove: If n² is even, then n is even.

Contrapositive: If n is odd, then n² is odd.

Let n = 2k+1. Then n² = (2k+1)² = 4k²+4k+1 = 2(2k²+2k)+1 which is odd. ✓

Therefore the original statement is true.

---

### Method 4: Mathematical Induction
Used for statements P(n) that hold for all positive integers n (or all n ≥ some starting value).

**Structure (MUST follow exactly):**

**Step 1 — Base Case:** Prove P(1) is true. (Or P(0), or whatever the starting value is)

**Step 2 — Inductive Step:** Assume P(k) is true for some arbitrary positive integer k. This assumption is called the **Induction Hypothesis (IH)**. Prove P(k+1) is true.

**Conclusion:** By the principle of mathematical induction, P(n) is true for all n ≥ 1 (or whatever the base case was).

### The Domino Analogy
Induction is like an infinite row of dominoes:
- Step 1: Knock the first domino
- Step 2: Each domino, if it falls, knocks the next
- Conclusion: ALL dominoes fall',
'definitions', 2),

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Induction — Common Types',
'## Types of Induction Proofs

### Type 1: Summation Formulas
**Prove:** Σᵣ₌₁ⁿ r = n(n+1)/2

**Proof:**
**Base Case (n=1):** LHS = 1; RHS = 1×2/2 = 1 ✓

**Inductive Step:** Assume true for n=k: Σᵣ₌₁ᵏ r = k(k+1)/2 [IH]
Need to prove: Σᵣ₌₁ᵏ⁺¹ r = (k+1)(k+2)/2

LHS = Σᵣ₌₁ᵏ r + (k+1)
= k(k+1)/2 + (k+1) [by IH]
= (k+1)[k/2 + 1]
= (k+1)(k+2)/2 ✓ [This equals RHS with n replaced by k+1]

**Conclusion:** By induction, the result holds for all n ≥ 1. ✓

---

### Type 2: Divisibility
**Prove:** 6ⁿ − 1 is divisible by 5 for all n ≥ 1.

**Base Case (n=1):** 6¹ − 1 = 5 = 5×1 ✓ (divisible by 5)

**Inductive Step:** Assume 6ᵏ − 1 = 5m for some integer m [IH]
Need to show: 6ᵏ⁺¹ − 1 is divisible by 5.

6ᵏ⁺¹ − 1 = 6 × 6ᵏ − 1
= 6 × (6ᵏ − 1) + 6 − 1 [Add and subtract 6]
= 6 × 5m + 5 [using IH]
= 5(6m + 1) which is divisible by 5. ✓

---

### Type 3: Inequalities
**Prove:** 2ⁿ > n² for all n ≥ 5.

**Base Case (n=5):** 2⁵ = 32 > 25 = 5² ✓

**Inductive Step:** Assume 2ᵏ > k² for some k ≥ 5 [IH]
Need: 2ᵏ⁺¹ > (k+1)²

2ᵏ⁺¹ = 2 × 2ᵏ > 2k² [by IH]
We need: 2k² ≥ (k+1)² = k² + 2k + 1
i.e., k² − 2k − 1 ≥ 0
i.e., (k−1)² ≥ 2, which holds for k ≥ 3 ≥ 5 − 2 + 1. ✓
So 2ᵏ⁺¹ > (k+1)² ✓

---

### Type 4: Matrix/De Moivre Induction
**Prove:** [cos θ −sin θ; sin θ cos θ]ⁿ = [cos nθ −sin nθ; sin nθ cos nθ]

**Base Case (n=1):** LHS = RHS trivially ✓

**Inductive Step:** Assume true for n=k.
Multiply both sides by [cos θ −sin θ; sin θ cos θ]:
[cos kθ cos θ − sin kθ sin θ  ...]
= [cos(kθ+θ) ...] = [cos(k+1)θ ...] ✓ (using compound angle formulas)',
'explanation', 3),

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Direct Proof
Prove that for any integer n, n(n+1) is even.

**Case 1:** n is even. Let n = 2k. Then n(n+1) = 2k(n+1) = 2[k(n+1)] which is even.
**Case 2:** n is odd. Let n = 2k+1. Then n+1 = 2k+2 = 2(k+1). So n(n+1) = n × 2(k+1) = 2[n(k+1)] which is even.

In either case, n(n+1) is even. ✓

**Alternatively:** Among any two consecutive integers n and n+1, one is even. An even number times anything is even. ✓

---

### Example 2: Proof by Contradiction
Prove there are infinitely many prime numbers.

Suppose there are finitely many primes: p₁, p₂, ..., pₙ.
Consider N = p₁ × p₂ × ... × pₙ + 1.
N is not divisible by any of p₁,...,pₙ (it leaves remainder 1 each time).
But N must have a prime factor. That prime factor is not in our list.
**Contradiction!** There are infinitely many primes. ✓

---

### Example 3: Induction — Summation
Prove: Σᵣ₌₁ⁿ r² = n(n+1)(2n+1)/6

**Base Case (n=1):** LHS = 1² = 1; RHS = 1×2×3/6 = 1 ✓

**Inductive Step:** Assume Σᵣ₌₁ᵏ r² = k(k+1)(2k+1)/6 [IH]
Show: Σᵣ₌₁ᵏ⁺¹ r² = (k+1)(k+2)(2k+3)/6

LHS = Σᵣ₌₁ᵏ r² + (k+1)²
= k(k+1)(2k+1)/6 + (k+1)²  [by IH]
= (k+1)[k(2k+1)/6 + (k+1)]
= (k+1)[(2k²+k+6k+6)/6]
= (k+1)(2k²+7k+6)/6
= **(k+1)(k+2)(2k+3)/6** ✓ (factorising: 2k²+7k+6=(2k+3)(k+2))

**Conclusion:** By induction, the formula holds for all positive integers n. ✓

---

### Example 4: Divisibility by Induction
Prove 7ⁿ − 1 is divisible by 6 for all n ≥ 1.

**Base Case (n=1):** 7¹ − 1 = 6 = 6×1 ✓

**Inductive Step:** Assume 7ᵏ − 1 = 6m [IH]
7ᵏ⁺¹ − 1 = 7 × 7ᵏ − 1 = 7(7ᵏ − 1) + 7 − 1 = 7(6m) + 6 = 6(7m + 1) ✓

Divisible by 6. **By induction, 7ⁿ − 1 is divisible by 6 for all n ≥ 1.** ✓',
'examples', 4),

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Practice Questions',
'## Practice Questions — Mathematical Proof and Induction

### Section A: Direct Proof
**1.** Prove that the product of two odd numbers is odd.

**2.** Prove that for any integer n, n³ − n is divisible by 6.

**3.** Prove that if n is even, then n² is divisible by 4.

**4.** Prove that the sum of interior angles of an n-sided polygon is (n−2)×180°.

---

### Section B: Proof by Contradiction
**5.** Prove that √3 is irrational.

**6.** Prove that if n² is odd, then n is odd.

**7.** Prove that there is no largest even integer.

---

### Section C: Mathematical Induction — Summations
Prove each by induction:

**8.** Σᵣ₌₁ⁿ r = n(n+1)/2

**9.** Σᵣ₌₁ⁿ (2r−1) = n²

**10.** Σᵣ₌₁ⁿ r(r+1) = n(n+1)(n+2)/3

**11.** Σᵣ₌₁ⁿ rˣ(aʳ⁻¹) — use your own: Σ r·2^(r-1) = 1 + (n−1)×2ⁿ

---

### Section D: Induction — Divisibility
**12.** Prove 4ⁿ − 1 is divisible by 3 for all n ≥ 1.

**13.** Prove 5ⁿ + 3 is divisible by 4 for all n ≥ 1.

**14.** Prove 3ⁿ + 2ⁿ is divisible by 5 for all odd n ≥ 1.

---

### Section E: Induction — Inequalities
**15.** Prove n! > 2ⁿ for all n ≥ 4.

**16.** Prove 3ⁿ > n³ for all n ≥ 4.

---

### Section F: De Moivre and Sequences
**17.** Prove by induction that (cos θ + i sin θ)ⁿ = cos nθ + i sin nθ for all n ≥ 1.

**18.** The sequence is defined by u₁ = 2, uₙ₊₁ = 2uₙ − 1. Prove uₙ = 2ⁿ⁻¹ + 1 by induction.

### Answers
All proofs require written solutions. Key strategies:
8. Base n=1: 1=1(2)/2=1 ✓; Assume Σᵏr=k(k+1)/2; Σᵏ⁺¹r = k(k+1)/2+(k+1)=(k+1)(k+2)/2 ✓
12. 4ⁿ−1=4×4ᵏ−1=4(4ᵏ−1)+3=4(3m)+3=3(4m+1) ✓',
'practice', 5),

('74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
'Summary',
'## Summary: Mathematical Proof and Induction

### Methods of Proof

| Method | When to Use | Structure |
|---|---|---|
| Direct | Statement follows straightforwardly | Assume hypothesis; derive conclusion |
| Contradiction | Hard to prove directly | Assume false; derive contradiction |
| Contrapositive | P→Q is hard; not-Q→not-P easier | Prove equivalent contrapositive |
| Induction | Statements about all integers | Base case + inductive step |

### Induction Template
**Claim:** P(n) is true for all n ≥ 1.

**Base case:** Show P(1) is true. [Write this out fully]

**Inductive hypothesis (IH):** Assume P(k) is true for some k ≥ 1, i.e., [write exactly what P(k) says].

**Inductive step:** We must show P(k+1) is true, i.e., [write what P(k+1) says].
[Starting from P(k), derive P(k+1). Reference the IH explicitly.]

**Conclusion:** By the principle of mathematical induction, P(n) is true for all n ≥ 1.

### Common Mistakes in Induction
- Not proving the BASE CASE (very common error!)
- Not stating the inductive hypothesis explicitly
- "Assuming what you want to prove" — you must START from P(k) and DERIVE P(k+1)
- Missing the factor of k+1 when factoring

### Famous Results Proved by Induction
- Sum formulas: Σr, Σr², Σr³
- De Moivre''s Theorem
- Binomial Theorem
- Divisibility results like n(n+1)(n+2) is divisible by 6',
'content', 6);

-- ============================================================
-- TOPIC 20: HYPERBOLIC FUNCTIONS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('521c6875-580f-47f4-8624-278af1f5a656',
'Overview of Hyperbolic Functions',
'## Hyperbolic Functions

**Hyperbolic functions** are analogues of the trigonometric functions, but defined using the exponential function rather than circles. They are deeply connected to the hyperbola.

### Why "Hyperbolic"?
The trigonometric functions are defined via the unit circle: x = cos θ, y = sin θ satisfies x² + y² = 1.
The hyperbolic functions are defined via the unit hyperbola: x = cosh t, y = sinh t satisfies x² − y² = 1.

### The Six Hyperbolic Functions:
- **sinh x** (hyperbolic sine): pronounced "shine" or "sinch"
- **cosh x** (hyperbolic cosine): pronounced "cosh"
- **tanh x** (hyperbolic tangent): pronounced "tanch" or "than"
- **cosech x** = 1/sinh x
- **sech x** = 1/cosh x
- **coth x** = cosh x/sinh x

### Where They Appear in Nature
- The catenary: the shape of a hanging chain is y = a cosh(x/a)
- Special relativity: velocity addition uses tanh
- Heat transfer and diffusion equations
- Engineering: hyperbolic cooling towers get their shape from the cosh function',
'overview', 1),

('521c6875-580f-47f4-8624-278af1f5a656',
'Definitions and Properties',
'## Definitions in Terms of eˣ

**sinh x = (eˣ − e⁻ˣ)/2**

**cosh x = (eˣ + e⁻ˣ)/2**

**tanh x = sinh x / cosh x = (eˣ − e⁻ˣ)/(eˣ + e⁻ˣ)**

From these: cosech x = 2/(eˣ−e⁻ˣ), sech x = 2/(eˣ+e⁻ˣ), coth x = (eˣ+e⁻ˣ)/(eˣ−e⁻ˣ)

---

## Key Properties and Identities

### The Fundamental Identity
**cosh²x − sinh²x = 1** (compare: sin²x + cos²x = 1)

This follows directly from:
(eˣ+e⁻ˣ)²/4 − (eˣ−e⁻ˣ)²/4 = [(e^(2x)+2+e^(-2x)) − (e^(2x)−2+e^(-2x))]/4 = 4/4 = 1 ✓

### Derived Identities (from cosh²x − sinh²x = 1)
- **1 − tanh²x = sech²x** (divide by cosh²x)
- **coth²x − 1 = cosech²x** (divide by sinh²x)

### Even/Odd Properties
- **cosh x is EVEN:** cosh(−x) = cosh x (like cos x)
- **sinh x is ODD:** sinh(−x) = −sinh x (like sin x)
- **tanh x is ODD:** tanh(−x) = −tanh x

### Compound Angle Formulas
- sinh(A±B) = sinh A cosh B ± cosh A sinh B
- cosh(A±B) = cosh A cosh B ± sinh A sinh B
- tanh(A±B) = (tanh A ± tanh B)/(1 ± tanh A tanh B)

### Double Angle Formulas
- sinh 2A = 2 sinh A cosh A
- cosh 2A = cosh²A + sinh²A = 2cosh²A − 1 = 1 + 2sinh²A

---

## Graphs of Hyperbolic Functions

| Function | Domain | Range | Key Feature |
|---|---|---|---|
| sinh x | ℝ | ℝ | Odd; through origin; steep S-shape |
| cosh x | ℝ | [1,∞) | Even; minimum of 1 at x=0 |
| tanh x | ℝ | (−1,1) | Odd; asymptotes y=±1 |',
'definitions', 2),

('521c6875-580f-47f4-8624-278af1f5a656',
'Calculus of Hyperbolic Functions',
'## Derivatives and Integrals

### Derivatives (Compare with trig!)

| Function | Derivative | Note |
|---|---|---|
| sinh x | cosh x | Same pattern as sin→cos |
| cosh x | sinh x | Same BUT no minus sign! |
| tanh x | sech²x | Compare: tan → sec² |
| cosech x | −cosech x coth x | |
| sech x | −sech x tanh x | |
| coth x | −cosech²x | |

**Key difference from trig:** d/dx(cosh x) = sinh x (positive!), not −sinh x.

### Integrals
- ∫ sinh x dx = cosh x + C
- ∫ cosh x dx = sinh x + C
- ∫ sech²x dx = tanh x + C
- ∫ tanh x dx = ln(cosh x) + C

---

## Inverse Hyperbolic Functions

### Definitions (Logarithmic Forms)
These are the really elegant results:

**arsinh x = ln(x + √(x²+1))** for all x ∈ ℝ

**arcosh x = ln(x + √(x²−1))** for x ≥ 1

**artanh x = (1/2)ln[(1+x)/(1−x)]** for |x| < 1

### Derivatives of Inverse Hyperbolic Functions
These give us important integral results:

| Function | Derivative |
|---|---|
| arsinh x | 1/√(x²+1) |
| arcosh x | 1/√(x²−1) |
| artanh x | 1/(1−x²) |

### Integration Results
- ∫ 1/√(x²+a²) dx = arsinh(x/a) + C = ln(x+√(x²+a²)) + C
- ∫ 1/√(x²−a²) dx = arcosh(x/a) + C = ln(x+√(x²−a²)) + C
- ∫ 1/(a²−x²) dx = (1/a)artanh(x/a) + C (|x| < a)

### Osborn''s Rule
To convert a trig identity to a hyperbolic one:
Replace: sin → sinh, cos → cosh
BUT: whenever you have a product of two sines, negate the result.

**Example:** cos²x + sin²x = 1 → cosh²x − sinh²x = 1 (negated because product of sines)',
'explanation', 3),

('521c6875-580f-47f4-8624-278af1f5a656',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Computing Values
Find (a) sinh(ln 2)  (b) cosh 0  (c) tanh(ln 3)

**(a)** sinh(ln 2) = (e^(ln2) − e^(-ln2))/2 = (2 − 1/2)/2 = (3/2)/2 = **3/4**

**(b)** cosh 0 = (e⁰ + e⁰)/2 = (1+1)/2 = **1**

**(c)** tanh(ln 3) = (e^(ln3) − e^(-ln3))/(e^(ln3) + e^(-ln3)) = (3 − 1/3)/(3 + 1/3) = (8/3)/(10/3) = **4/5**

---

### Example 2: Proving Identities
Prove: cosh 2x = 1 + 2sinh²x

**RHS** = 1 + 2[(eˣ−e⁻ˣ)/2]²
= 1 + 2(e²ˣ − 2 + e^(-2x))/4
= 1 + (e²ˣ − 2 + e^(-2x))/2
= (2 + e²ˣ − 2 + e^(-2x))/2
= (e²ˣ + e^(-2x))/2
= **cosh 2x = LHS ✓**

---

### Example 3: Solving a Hyperbolic Equation
Solve cosh x = 5/4.

(eˣ + e⁻ˣ)/2 = 5/4
eˣ + e⁻ˣ = 5/2

Multiply by eˣ: e²ˣ + 1 = (5/2)eˣ
e²ˣ − (5/2)eˣ + 1 = 0

Let u = eˣ: u² − (5/2)u + 1 = 0
2u² − 5u + 2 = 0
(2u−1)(u−2) = 0 → u = 1/2 or u = 2

eˣ = 1/2 → x = ln(1/2) = −ln 2
eˣ = 2 → x = ln 2

**x = ±ln 2** (consistent with cosh being even!)

---

### Example 4: Differentiation and Integration
**(a)** Find d/dx[x sinh x]
Using product rule: sinh x + x cosh x

**(b)** Find ∫₀^(ln2) cosh x dx
= [sinh x]₀^(ln2)
= sinh(ln 2) − sinh 0
= 3/4 − 0 = **3/4** (using Example 1a)

**(c)** Find ∫ 1/√(x²+9) dx
= arsinh(x/3) + C = **ln(x + √(x²+9)) + C**

---

### Example 5: Inverse Hyperbolic — Logarithm Form
Show that arsinh x = ln(x + √(x²+1)).

Let y = arsinh x → sinh y = x
(eʸ − e⁻ʸ)/2 = x → eʸ − e⁻ʸ = 2x
Multiply by eʸ: e²ʸ − 2xeʸ − 1 = 0
eʸ = (2x ± √(4x²+4))/2 = x ± √(x²+1)

Since eʸ > 0 and √(x²+1) > |x|, we must take the + sign:
eʸ = x + √(x²+1)
**y = ln(x + √(x²+1))** ✓',
'examples', 4),

('521c6875-580f-47f4-8624-278af1f5a656',
'Practice Questions',
'## Practice Questions — Hyperbolic Functions

### Section A: Basic Computation
**1.** Evaluate using the eˣ definition:
(a) sinh 0   (b) cosh(ln 3)   (c) tanh(ln 2)

**2.** If sinh x = 3/4, find cosh x and tanh x.

**3.** Find the exact value of: (a) arsinh(0)  (b) arcosh(1)  (c) artanh(0)

---

### Section B: Identities
**4.** Prove: (cosh x + sinh x)ⁿ = cosh nx + sinh nx for all positive integers n.

**5.** Prove: sinh(x+y) = sinh x cosh y + cosh x sinh y

**6.** Prove: tanh x = (e²ˣ − 1)/(e²ˣ + 1)

**7.** Use the identity cosh²x − sinh²x = 1 to show sech²x + tanh²x = 1.

---

### Section C: Differentiation
Differentiate:
**8.** y = sinh(3x)

**9.** y = cosh(x²)

**10.** y = tanh x / (1 + x²)

**11.** y = arsinh(2x)

**12.** y = artanh(sin x)

---

### Section D: Integration
**13.** ∫ sinh(4x) dx

**14.** ∫ sech²(3x) dx

**15.** ∫₀¹ cosh²x dx [Hint: use cosh 2x = 2cosh²x − 1]

**16.** ∫ 1/√(4x²+1) dx

**17.** ∫ 1/(9−x²) dx for |x| < 3

---

### Section E: Solving Equations
**18.** Solve sinh x = 2 (give exact answer using logarithm form).

**19.** Solve 3cosh x − 4sinh x = 1.

**20.** Solve tanh²x = 7/16.

---

### Section F: Applications
**21.** The curve y = cosh x is the shape of a hanging chain. Find the length of the chain from x=−2 to x=2. [Arc length = ∫√(1+(dy/dx)²) dx]

**22.** Show that cosh x ≥ 1 for all x, with equality at x = 0 only.

### Answers
1a. 0   1b. (3+1/3)/2=5/3   1c. (2−1/2)/(2+1/2)=3/5   2. cosh x=5/4, tanh x=3/5   8. 3cosh(3x)   11. 2/√(4x²+1)   13. cosh(4x)/4+C   18. x=ln(2+√5)   21. 2sinh(2)',
'practice', 5),

('521c6875-580f-47f4-8624-278af1f5a656',
'Summary',
'## Summary: Hyperbolic Functions

### Definitions (Most Important!)
- **sinh x = (eˣ − e⁻ˣ)/2**
- **cosh x = (eˣ + e⁻ˣ)/2**
- **tanh x = sinh x/cosh x**

### Key Identities
- **cosh²x − sinh²x = 1** (the "master identity")
- 1 − tanh²x = sech²x
- sinh 2x = 2 sinh x cosh x
- cosh 2x = cosh²x + sinh²x

### Derivatives
- d/dx(sinh x) = cosh x
- d/dx(cosh x) = sinh x (NOTE: positive! Different from trig)
- d/dx(tanh x) = sech²x

### Inverse Hyperbolic Logarithm Forms
- arsinh x = ln(x + √(x²+1))
- arcosh x = ln(x + √(x²−1)), x≥1
- artanh x = (1/2)ln[(1+x)/(1−x)], |x|<1

### Integration
- ∫ 1/√(x²+a²) dx = arsinh(x/a) + C
- ∫ 1/√(x²−a²) dx = arcosh(x/a) + C
- ∫ 1/(a²−x²) dx = (1/a)artanh(x/a) + C

### Osborn''s Rule (Trig → Hyperbolic)
Replace sin with sinh, cos with cosh, BUT negate any term with a product of two sinh functions (or equivalently, any occurrence of sin²).

### Key Difference from Trig
- d/dx(cosh x) = **+**sinh x (not −sinh x!)
- cosh²x − sinh²x = 1 (not +1)
- cosh x ≥ 1 always (not bounded between ±1 like cos)
- sinh x is unbounded (not bounded like sin)',
'content', 6);
