/*
  # Comprehensive Mathematics Notes - Topics 16 to 20 (v2)

  Upgrades the following Mathematics topics with deeply detailed notes:
  16. Variation (Direct, Inverse, Joint)
  17. Construction and Loci
  18. Binary Operations and Logical Reasoning
  19. Bearing and Distances
  20. Transformation Geometry
*/

UPDATE topics SET content = $notes$# Variation (Direct, Inverse, Joint)

## 1. Introduction to Variation

**Variation** describes how one quantity changes in relation to another. There are three main types:
- **Direct variation** (direct proportion)
- **Inverse variation** (indirect/inverse proportion)
- **Joint variation** (combination)

The **constant of variation (k)** is determined from given values.

---

## 2. Direct Variation

**y varies directly as x:** y = kx

- As x increases, y increases proportionally.
- As x decreases, y decreases proportionally.
- Graph: straight line through the origin.

**Notation:** y ∝ x (read: "y is proportional to x")

**Key property:** y/x = k (constant ratio)

**Higher-power direct variation:**
- y ∝ x² → y = kx²
- y ∝ x³ → y = kx³
- y ∝ √x → y = k√x

**Example 1:** y is directly proportional to x. When x = 4, y = 20. Find y when x = 7.
- k = y/x = 20/4 = 5
- y = 5x
- When x = 7: y = 5(7) = **35**

**Example 2:** y ∝ x². When x = 3, y = 36. Find y when x = 5.
- 36 = k(9) → k = 4
- y = 4x²
- When x = 5: y = 4(25) = **100**

**Example 3:** y varies directly as the square root of x. When x = 9, y = 6. Find x when y = 10.
- 6 = k√9 = 3k → k = 2
- y = 2√x
- 10 = 2√x → √x = 5 → x = **25**

---

## 3. Inverse Variation

**y varies inversely as x:** y = k/x, i.e., xy = k

- As x increases, y decreases proportionally.
- Graph: rectangular hyperbola.

**Notation:** y ∝ 1/x

**Key property:** xy = k (constant product)

**Higher-power inverse variation:**
- y ∝ 1/x² → y = k/x²
- y ∝ 1/√x → y = k/√x

**Example 1:** y is inversely proportional to x. When x = 6, y = 8. Find y when x = 12.
- k = xy = 48
- When x = 12: y = 48/12 = **4**

**Example 2:** y ∝ 1/x². When x = 2, y = 25. Find y when x = 5.
- k = 25 × 4 = 100
- When x = 5: y = 100/25 = **4**

**Example 3:** The time T to fill a tank varies inversely with the number of pipes N. 4 pipes fill it in 6 hours. How long with 8 pipes?
- k = NT = 24
- T = 24/8 = **3 hours**

---

## 4. Joint Variation

**y varies jointly as x and z:** y = kxz

**Combination:** y varies directly as some variables and inversely as others.

**Example:** y ∝ xz/w² → y = kxz/w²

**Example 1:** y varies jointly as x and the square of z. When x = 2 and z = 3, y = 72. Find y when x = 5 and z = 2.
- 72 = k(2)(9) = 18k → k = 4
- y = 4xz²
- y = 4(5)(4) = **80**

**Example 2:** P varies directly as Q and inversely as the square root of R. P = 12 when Q = 4 and R = 9. Find P when Q = 8 and R = 16.
- 12 = k(4)/√9 = 4k/3 → k = 9
- P = 9Q/√R
- P = 9(8)/√16 = 72/4 = **18**

---

## 5. Partial Variation

y is the sum of two parts, one constant and one varying.

**y = a + bx** (one constant, one in direct proportion)

**y = a + b/x** (one constant, one in inverse proportion)

**Example:** C partly constant and partly varies with n. C = 80 when n = 3 and C = 110 when n = 8. Find C when n = 12.
- 80 = a + 3b ... (i)
- 110 = a + 8b ... (ii)
- (ii) - (i): 5b = 30 → b = 6
- a = 80 - 18 = 62
- C = 62 + 6n
- When n = 12: C = 62 + 72 = **134**

---

## 6. Graphical Representation

| Type | Graph Shape |
|------|------------|
| Direct (y=kx) | Straight line through origin |
| Direct (y=kx²) | Parabola through origin |
| Inverse (y=k/x) | Rectangular hyperbola |
| Partial (y=a+bx) | Straight line not through origin |

---

## 7. Real-World Applications

- **Speed and time** (fixed distance): inverse variation
- **Pressure and volume** of gas: inverse (Boyle law)
- **Electrical resistance and current**: inverse (Ohm law)
- **Cost and quantity**: direct variation
- **Gravitational force and distance**: inverse square

---

## Summary Table

| Type | Equation | Constant k |
|------|----------|-----------|
| Direct (y ∝ x) | y = kx | k = y/x |
| Direct (y ∝ xn) | y = kxn | From given values |
| Inverse (y ∝ 1/x) | y = k/x | k = xy |
| Joint (y ∝ xz) | y = kxz | From given values |
| Partial | y = a + bx | Solve simultaneous |
$notes$ WHERE id = '8a29a189-176a-4e3b-88b4-3b1c05592ab7';

UPDATE topics SET content = $notes$# Construction and Loci

## PART A: GEOMETRIC CONSTRUCTION

### 1. Instruments and Accuracy

Use only:
- **Ruler (straight edge)** — for drawing straight lines
- **Compass** — for drawing arcs and circles
- **Protractor** — for measuring angles (NOT for constructing standard angles)
- **Set square** — for right angles

All construction lines (arcs, construction marks) must be left visible.

---

### 2. Bisecting a Line Segment

**To bisect line AB (find midpoint and draw perpendicular bisector):**
1. Open compass to more than half of AB.
2. Draw arcs above and below from A.
3. With same radius, draw arcs from B (same size).
4. The two arcs intersect at P and Q.
5. Join P and Q — this is the perpendicular bisector and passes through midpoint M.

---

### 3. Bisecting an Angle

**To bisect angle ABC:**
1. Place compass at B, draw an arc cutting BA at P and BC at Q.
2. Place compass at P (same radius), draw arc inside the angle.
3. Place compass at Q (same radius), draw arc intersecting the first.
4. The intersection R gives the bisector BR.

---

### 4. Constructing Standard Angles

#### 60 Degrees
1. Draw base line. Mark point A.
2. Draw arc from A cutting base at B.
3. With same radius, draw arc from B cutting first arc at C.
4. Angle CAB = 60 degrees.

#### 90 Degrees (Perpendicular at a point)
1. Draw base line. Mark point P.
2. Draw arc from P on both sides to mark A and B.
3. Bisect AB (perpendicular bisector method) through P.
4. Angle = 90 degrees.

#### 30 Degrees
1. Construct 60 degrees.
2. Bisect → 30 degrees.

#### 45 Degrees
1. Construct 90 degrees.
2. Bisect → 45 degrees.

#### 120 Degrees
1. Construct 60 degrees.
2. Extend to get supplementary angle: 180 - 60 = 120 degrees.

#### Combinations
- 75° = 45° + 30°
- 105° = 60° + 45°
- 150° = 90° + 60°

---

### 5. Constructing Triangles

**Given three sides (SSS):**
1. Draw base AB.
2. Set compass to length AC; arc from A.
3. Set compass to length BC; arc from B.
4. Intersection is C. Join AC and BC.

**Given two sides and included angle (SAS):**
1. Draw base AB.
2. Construct required angle at A.
3. Mark off AC on the angle arm.
4. Join BC.

**Given two angles and one side (AAS or ASA):**
1. Draw the base.
2. Construct the two angles.
3. Arms of angles meet at third vertex.

---

### 6. Special Constructions

**Perpendicular from external point to a line:**
1. From the external point P, draw arcs cutting the line at A and B.
2. Bisect AB to get the perpendicular.

**Perpendicular at a point on a line:**
1. Mark point P on the line.
2. Draw arc from P to mark A and B equidistant on line.
3. Bisect AB.

---

## PART B: LOCI

### 7. What is a Locus?

A **locus** (plural: loci) is the set of all points satisfying a given geometric condition. It can be a point, line, curve, or region.

---

### 8. Standard Loci

| Condition | Locus |
|-----------|-------|
| Fixed distance from a point | Circle (centre at point, radius = distance) |
| Fixed distance from a line | Two parallel lines equidistant from the given line |
| Equidistant from two points | Perpendicular bisector of the segment joining the two points |
| Equidistant from two intersecting lines | Angle bisectors of the two lines |
| Fixed angle subtended at a line | Arc of a circle |

---

### 9. Combining Loci

The locus satisfying two conditions simultaneously is the **intersection** of the two individual loci.

**Example:** Find locus of points equidistant from A and B, and also 4 cm from A.
- Condition 1: Perpendicular bisector of AB
- Condition 2: Circle of radius 4 cm centred at A
- Intersection: The points where the perpendicular bisector crosses the circle (usually 2 points)

---

### 10. Locus Problems (WASSCE Style)

**Problem 1:** P is a point within 3 cm of a point O, and also within 5 cm of a line l. Describe the region.
- Within 3 cm of O: interior of circle radius 3, centre O
- Within 5 cm of l: region between two lines parallel to l at distance 5 cm
- Region: **intersection of the disk and the band**

**Problem 2:** A goat is tethered at A with a rope of 6 m. It cannot go within 3 m of a fence. Describe the available grazing area.
- Locus 1: Circle of radius 6 m centred at A
- Locus 2: Region at least 3 m from fence
- Grazing area: **part of the circle that is at least 3 m from fence**

---

### 11. Loci on a Coordinate Grid

- Locus of points distance r from origin: x² + y² = r²
- Locus equidistant from two points: perpendicular bisector of the segment
- Locus equidistant from x-axis and y-axis: lines y = x and y = -x

---

## Summary

| Construction | Method |
|-------------|--------|
| 60 degrees | Equilateral triangle method |
| 90 degrees | Perpendicular bisector at a point |
| 45 degrees | Bisect 90 degrees |
| Bisect line | Equal arcs from both endpoints |
| Bisect angle | Equal arcs from both sides |

| Condition | Locus Type |
|-----------|-----------|
| Equidistant from 2 points | Perpendicular bisector |
| Fixed distance from a point | Circle |
| Fixed distance from a line | Parallel lines |
| Equidistant from 2 lines | Angle bisector |
$notes$ WHERE id = 'f09042df-d7a9-46d8-98e9-1a82b5bd8892';

UPDATE topics SET content = $notes$# Binary Operations and Logical Reasoning

## PART A: BINARY OPERATIONS

### 1. What is a Binary Operation?

A **binary operation** combines two elements of a set to produce another element.

**Notation:** a * b (where * is any defined operation symbol)

**Closure:** A set S is **closed** under operation * if for all a, b in S: a * b is also in S.

---

### 2. Properties of Binary Operations

| Property | Definition |
|----------|-----------|
| Closure | a * b is in S for all a, b in S |
| Commutativity | a * b = b * a |
| Associativity | (a*b)*c = a*(b*c) |
| Identity element | a * e = e * a = a |
| Inverse element | a * (a-inverse) = e |
| Distributivity | a*(b+c) = (a*b)+(a*c) |

---

### 3. Checking Properties

**Commutativity check:** Verify a * b = b * a for all values, or find a counterexample.

**Associativity check:** Verify (a*b)*c = a*(b*c)

**Example:** Operation * on real numbers defined by a * b = 2a + 3b.
- Is it commutative? a*b = 2a+3b, but b*a = 2b+3a. These differ unless a = b.
- **Not commutative.**
- Identity e would need: 2a + 3e = a → 3e = -a → e depends on a.
- **No identity element.**

---

### 4. Finding the Identity Element

Set a * e = a, then solve for e.

**Example 1:** a * b = a + b + 2. Find identity.
- a * e = a + e + 2 = a → e = -2
- Check: e * a = -2 + a + 2 = a
- **Identity element = -2**

**Example 2:** a * b = 2ab. Find identity.
- 2ae = a → e = 1/2
- **Identity element = 1/2**

---

### 5. Finding the Inverse

Once identity e is known: a * (a-inverse) = e, solve for a-inverse.

**Example:** a * b = a + b + 2 (identity e = -2). Find inverse of a.
- a + x + 2 = -2 → x = -a - 4
- Inverse of 3: -3 - 4 = **-7**
- Check: 3 * (-7) = 3 + (-7) + 2 = -2 = e ✓

---

### 6. Cayley (Composition) Tables

A **Cayley table** shows results of all combinations of elements.

**Example:** S = {0, 1, 2} under (a + b) mod 3:

| * | 0 | 1 | 2 |
|---|---|---|---|
| 0 | 0 | 1 | 2 |
| 1 | 1 | 2 | 0 |
| 2 | 2 | 0 | 1 |

- All entries in {0,1,2} → **Closed**
- Symmetric about diagonal → **Commutative**
- Row/column of 0 duplicates top/left → **Identity = 0**

---

### 7. Evaluation of Defined Operations

**Example:** a * b = a² - b + 3ab. Find 2 * (-1).
- = 4 - (-1) + 3(2)(-1) = 4 + 1 - 6 = **-1**

---

## PART B: LOGICAL REASONING

### 8. Statements and Connectives

A **proposition** is a sentence that is either TRUE or FALSE.

| Symbol | Name | Meaning |
|--------|------|---------|
| ~p | Negation | not p |
| p ^ q | Conjunction | p and q |
| p v q | Disjunction | p or q |
| p → q | Implication | if p then q |
| p ↔ q | Biconditional | p if and only if q |

---

### 9. Truth Tables

| p | q | ~p | p^q | pvq | p→q | p↔q |
|---|---|----|-----|-----|-----|-----|
| T | T | F | T | T | T | T |
| T | F | F | F | T | F | F |
| F | T | T | F | T | T | F |
| F | F | T | F | F | T | T |

**Key rules:**
- p ^ q is TRUE only when BOTH are true
- p v q is FALSE only when BOTH are false
- p → q is FALSE only when p is TRUE and q is FALSE
- p ↔ q is TRUE only when both have same truth value

---

### 10. Logical Equivalence

Two statements are **logically equivalent** if they have the same truth values in all cases.

**Important equivalences:**
- p → q is equivalent to ~p v q
- ~(p ^ q) is equivalent to ~p v ~q (De Morgan law)
- ~(p v q) is equivalent to ~p ^ ~q (De Morgan law)
- Contrapositive: p → q is equivalent to ~q → ~p

---

### 11. Converse, Inverse, Contrapositive

For the statement "If p, then q" (p → q):

| Name | Form | Equivalent to original? |
|------|------|------------------------|
| Original | p → q | Yes |
| Converse | q → p | NOT always |
| Inverse | ~p → ~q | NOT always |
| Contrapositive | ~q → ~p | Always YES |

**Example:** "If it rains, then the ground is wet."
- Converse: "If the ground is wet, then it rains." (not necessarily true)
- Contrapositive: "If the ground is not wet, then it did not rain." (always equivalent)

---

### 12. Valid Arguments

**Modus Ponens:**
- If p → q and p is true, then q is true.

**Modus Tollens:**
- If p → q and ~q is true, then ~p is true.

**Hypothetical Syllogism:**
- If p → q and q → r, then p → r.

---

## Summary Tables

### Binary Operations

| Property | Test |
|----------|------|
| Closure | All results stay in the set |
| Commutative | a*b = b*a |
| Associative | (a*b)*c = a*(b*c) |
| Identity | Solve a*e = a |
| Inverse | Solve a*x = e |

### Logic

| Connective | Symbol | True when |
|-----------|--------|-----------|
| NOT | ~p | p is false |
| AND | p^q | Both true |
| OR | pvq | At least one true |
| IF THEN | p→q | Not (T→F) |
| IFF | p↔q | Same truth value |
$notes$ WHERE id = 'd14e7064-c466-47c9-b093-5dc0355a6758';

UPDATE topics SET content = $notes$# Bearing and Distances

## 1. Introduction to Bearings

A **bearing** is a direction measured as an angle **clockwise from North**.

**Three-figure bearing:** Always written with 3 digits (e.g., 045°, 270°, 315°).

**Range:** 000° to 360°

| Direction | Bearing |
|-----------|--------|
| North | 000° |
| East | 090° |
| South | 180° |
| West | 270° |
| NE | 045° |
| SE | 135° |
| SW | 225° |
| NW | 315° |

---

## 2. Compass Points vs. Bearings

- N30°E → bearing 030°
- S45°W → bearing 225°
- N70°W → bearing 290°

**Conversion rules:**
- N_°E → bearing = _°
- S_°E → bearing = 180° - _°
- S_°W → bearing = 180° + _°
- N_°W → bearing = 360° - _°

---

## 3. Back Bearing (Reverse Bearing)

If bearing from A to B = θ, then bearing from B to A:
- If θ < 180°: Back bearing = θ + 180°
- If θ ≥ 180°: Back bearing = θ - 180°

**Example:** Bearing from A to B = 065°. Bearing from B to A = 065° + 180° = **245°**

---

## 4. Calculating Distances and Positions

When working with bearing problems, use:
- **Right-angled trigonometry** (SOHCAHTOA) for simple cases
- **Sine Rule** and **Cosine Rule** for non-right-angled triangles

### Setting Up the Diagram

1. Always draw North lines at relevant points (North lines are parallel)
2. Mark the angle from North (clockwise)
3. Label distances and unknown sides
4. Identify which triangle rule to apply

---

## 5. Worked Examples — Straight-Line Bearing

**Example 1:** A ship sails from port P on a bearing of 040° for 50 km. How far North and East?
- North component = 50 cos 40° = 50 × 0.766 = **38.3 km** North
- East component = 50 sin 40° = 50 × 0.643 = **32.1 km** East

**Example 2:** A plane flies 100 km due East and then 80 km due North. Find:
(a) the distance from start to finish
(b) the bearing of the final position from the start

(a) Distance = √(100² + 80²) = √16400 ≈ **128.1 km**

(b) tan θ = 100/80 → θ = 51.3° from North
Bearing = **051°**

---

## 6. Multi-Stage Journey Problems

**Example:** A hiker walks 6 km on bearing 030°, then 8 km on bearing 150°.

1. Resolve into N-S and E-W components:
   - Leg 1 (030°, 6 km): North = 6cos30° = 5.196, East = 6sin30° = 3
   - Leg 2 (150°, 8 km): North = -8cos30° = -6.928, East = 8sin30° = 4
   - Total North = 5.196 - 6.928 = -1.732 (South); Total East = 7

2. Distance = √(1.732² + 7²) = √52 ≈ **7.21 km**

3. Bearing: tan α = 7/1.732 → α ≈ 76° from South → Bearing ≈ **180° - 76° = 104°**

---

## 7. Using the Cosine Rule with Bearings

**Example:** From O, A is on bearing 050° at distance 10 km. B is on bearing 130° at distance 8 km. Find AB.

- Angle AOB = 130° - 50° = 80°
- AB² = 10² + 8² - 2(10)(8)cos80° = 100 + 64 - 27.78 = 136.22
- AB ≈ **11.67 km**

---

## 8. Angle of Elevation with Bearings

**Example:** From point A, a hill on bearing 035° appears at an angle of elevation of 25°. A is 500 m from the base of the hill.
- Height = 500 × tan 25° = 500 × 0.4663 ≈ **233 m**

---

## 9. Key Relationships for Bearings

**North lines at different points are parallel**, so:
- Co-interior angles add to 180°
- Alternate angles are equal

These help find angles inside bearing triangles.

---

## 10. Scale Diagrams

For some problems, a **scale drawing** is required:

1. Choose a suitable scale (e.g., 1 cm = 10 km)
2. Draw accurate North lines (vertical, parallel)
3. Measure angles from North clockwise
4. Measure distances using ruler
5. Measure final distance on diagram and convert back

---

## Summary

| Concept | Rule |
|---------|------|
| Bearing | Clockwise from North, 3 digits |
| Back bearing | Add or subtract 180° |
| N-S component | distance × cos(angle from North) |
| E-W component | distance × sin(angle from North) |
| Two-leg journey | Add components, then Pythagoras |
| Non-right triangle | Cosine rule or sine rule |
| Height + bearing | SOHCAHTOA |
$notes$ WHERE id = '070d2bf3-3eb3-45d2-b9c3-0476f6632897';

UPDATE topics SET content = $notes$# Transformation Geometry

## 1. Introduction to Transformations

A **geometric transformation** maps a shape to a new position, size, or orientation.

The **original shape** is called the **object** and the result is the **image**.

**Types of transformations:**

| Transformation | Properties Preserved | Changes |
|---------------|---------------------|---------|
| Translation | Shape, size, orientation | Position |
| Reflection | Shape, size | Orientation (flipped) |
| Rotation | Shape, size | Orientation (turned) |
| Enlargement | Shape, angles | Size (scaled) |

**Isometric transformations** (preserve shape and size): Translation, Reflection, Rotation.

---

## 2. Translation

A **translation** moves every point the same distance in the same direction.

**Translation vector:** T = (a, b) moves each point right by a and up by b.

Object point P(x, y) maps to image P_new(x+a, y+b).

**Example:** Translate A(1,2), B(3,2), C(2,4) by vector (3, -1).
- A maps to (4, 1)
- B maps to (6, 1)
- C maps to (5, 3)

**Properties:**
- Congruent to object
- All points move by same vector
- Orientation unchanged

---

## 3. Reflection

A **reflection** flips the shape across a **mirror line**.

**Key lines of reflection and their rules:**

| Mirror Line | Rule |
|-------------|------|
| x-axis | (x, y) → (x, -y) |
| y-axis | (x, y) → (-x, y) |
| y = x | (x, y) → (y, x) |
| y = -x | (x, y) → (-y, -x) |
| x = k | (x, y) → (2k-x, y) |
| y = k | (x, y) → (x, 2k-y) |

**Properties of reflected image:**
- Congruent to object
- Laterally inverted (mirror image)
- Object and image are equidistant from the mirror line
- Mirror line is the perpendicular bisector of each object-image segment

**Example 1:** Reflect A(3, 5) in the x-axis → A maps to (3, -5)

**Example 2:** Reflect B(2, 4) in the line y = x → B maps to (4, 2)

**Example 3:** Reflect C(1, 3) in the line x = 2 → C maps to (2(2)-1, 3) = (3, 3)

---

## 4. Rotation

A **rotation** turns the shape about a fixed point called the **centre of rotation**.

**Defined by:** Centre, angle, and direction (clockwise or anti-clockwise).

**Standard rotation rules about the origin:**

| Rotation | Rule |
|----------|------|
| 90° anti-clockwise | (x, y) → (-y, x) |
| 180° (either direction) | (x, y) → (-x, -y) |
| 270° anti-clockwise | (x, y) → (y, -x) |
| 90° clockwise | (x, y) → (y, -x) |
| 270° clockwise | (x, y) → (-y, x) |

**Properties:**
- Congruent to object
- Same orientation (not flipped, unless 180°)
- Centre of rotation is equidistant from each object and image point

**Example:** Rotate A(3, 1) by 90° anti-clockwise about origin.
- A maps to (-1, 3)

**Rotation about non-origin centre:**
1. Translate so centre goes to origin
2. Apply rotation formula
3. Translate back

**Finding Centre of Rotation:**
- Draw perpendicular bisectors of AA' and BB'
- They intersect at the centre

---

## 5. Enlargement

An **enlargement** scales the shape by a **scale factor** from a **centre of enlargement**.

**Scale factor k:** Image length = k × Object length

| Scale Factor | Effect |
|-------------|--------|
| k > 1 | Enlargement (image bigger) |
| 0 < k < 1 | Reduction (image smaller) |
| k = 1 | No change |
| k < 0 | Image on opposite side of centre, inverted |

**If centre is origin O:**
P(x, y) maps to P_new(kx, ky)

**General centre C(a, b):**
x_new = a + k(x - a)
y_new = b + k(y - b)

**Example 1:** Enlarge A(2,1), B(4,1), C(3,3) by scale factor 2 from origin.
- A maps to (4,2), B to (8,2), C to (6,6)

**Example 2:** Enlarge A(1,2) by scale factor 3 from centre C(0,1).
- x_new = 0 + 3(1-0) = 3
- y_new = 1 + 3(2-1) = 4
- A maps to (3, 4)

**Properties of Enlargement:**
- Image is similar (not congruent unless k=1)
- Angles are preserved
- All lengths multiplied by |k|
- Area multiplied by k²
- Centre, object, and image are collinear

---

## 6. Area and Length Ratios Under Transformation

For an enlargement with scale factor k:
- **Linear scale factor** = k
- **Area scale factor** = k²
- **Volume scale factor** = k³

**Example:** If k = 3 and object area = 5 cm², image area = 9 × 5 = 45 cm²

---

## 7. Composite Transformations

A **composite transformation** applies two or more transformations in sequence.

**Order matters!** Applying T1 then T2 may differ from T2 then T1.

**Example:** Reflect in y-axis, then rotate 90° anti-clockwise about origin.
- P(3, 1) → reflect in y-axis → (-3, 1) → rotate 90° ACW → (-1, -3)

---

## 8. Inverse Transformations

| Transformation | Inverse |
|---------------|---------|
| Translation (a, b) | Translation (-a, -b) |
| Reflection | Same reflection (self-inverse) |
| Rotation by θ | Rotation by -θ |
| Enlargement by k | Enlargement by 1/k |

---

## 9. Identifying Transformations

To identify which transformation maps object to image:

**Translation:** All points moved by same vector. No rotation or flip.

**Reflection:** Image is flipped. Find mirror line as perpendicular bisector of each object-image pair.

**Rotation:** Not flipped, shape turned. Perpendicular bisectors of AA' and BB' meet at centre.

**Enlargement:** Image is similar but different size. Lines joining corresponding vertices meet at centre of enlargement.

---

## 10. Exam-Style Problems

**Problem 1:** Triangle with vertices (1,1), (3,1), (2,3). After reflection in y = -x:
- Rule: (x,y) → (-y,-x)
- (1,1) → (-1,-1), (3,1) → (-1,-3), (2,3) → (-3,-2)

**Problem 2:** A shape has area 9 cm² and is enlarged by scale factor 2. Image area = 4 × 9 = **36 cm²**

**Problem 3:** Describe the transformation that maps (2,3) to (3,-2).
- Apply rule (x,y) → (y,-x): (2,3) → (3,-2) ✓
- This is **rotation of 90° clockwise about the origin**

---

## Summary Table

| Transformation | Defining information | Rule at origin |
|---------------|---------------------|----------------|
| Translation | Vector (a, b) | (x+a, y+b) |
| Reflection in x-axis | Mirror: x-axis | (x, -y) |
| Reflection in y-axis | Mirror: y-axis | (-x, y) |
| Reflection in y = x | Mirror: y = x | (y, x) |
| Rotation 90° ACW | Centre, angle | (-y, x) |
| Rotation 180° | Centre | (-x, -y) |
| Rotation 90° CW | Centre, angle | (y, -x) |
| Enlargement | Centre, scale factor k | (kx, ky) |
$notes$ WHERE id = 'be4ac0b9-9854-4e1f-a7c3-6785aca9e7f0';
