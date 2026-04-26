
/*
  # Further Mathematics Deep Notes: Topics 5-8
  
  Adds comprehensive Aki Ola-style deep notes for:
  5. Vectors in 3D (b1000007-0000-0000-0000-000000000005)
  6. Permutations and Combinations (b1000007-0000-0000-0000-000000000006)
  7. Binomial Theorem (b1000007-0000-0000-0000-000000000007)
  8. Probability and Statistics (b1000007-0000-0000-0000-000000000008)
*/

-- ============================================================
-- TOPIC 5: VECTORS IN 3D
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000005',
'Overview of 3D Vectors',
'## Vectors in Three Dimensions

A vector is a quantity that has both **magnitude** (size) and **direction**. In 3D space, we extend the familiar 2D vectors to include a third component along the z-axis.

### From 2D to 3D
In 2D: **v** = (x, y) = xi + yj
In 3D: **v** = (x, y, z) = xi + yj + zk

where **i**, **j**, **k** are unit vectors along the x, y, and z axes respectively.

### Why 3D Vectors?
- **Physics:** Force, velocity, momentum, and electric fields all exist in 3D space
- **Engineering:** Structural analysis, robotics, flight dynamics
- **Computer graphics:** Every 3D model uses vector mathematics
- **Geometry:** Lines and planes in space require 3D vectors

### The Coordinate System
The 3D Cartesian coordinate system uses three mutually perpendicular axes. The **right-hand rule** determines orientation:
- Point fingers along x-axis
- Curl them toward y-axis
- Thumb points in z-direction',
'overview', 1),

('b1000007-0000-0000-0000-000000000005',
'Definitions and Key Terms',
'## Key Definitions

### Vector Notation
A vector from point A to point B is written as **AB** or **$\vec{AB}$**.
Position vector of point P = **OP** = **p**.

### Column Vector Form
**v** = [x; y; z] (column vector notation)

### Unit Vectors
**i** = [1;0;0], **j** = [0;1;0], **k** = [0;0;1]

So any vector **v** = x**i** + y**j** + z**k** = [x;y;z]

### Magnitude (Length)
|**v**| = √(x² + y² + z²)

**Example:** **v** = 2**i** − 3**j** + 6**k** → |**v**| = √(4 + 9 + 36) = √49 = 7

### Unit Vector
A unit vector in the direction of **v** is: **v̂** = **v**/|**v**|

### Position Vectors
If A has position vector **a** and B has position vector **b**, then:
**AB** = **b** − **a** (direction: from A to B)

### Midpoint
Midpoint M of AB has position vector: **m** = (**a** + **b**)/2

### Section Formula
Point dividing AB in ratio m:n (internally):
**p** = (n**a** + m**b**) / (m + n)',
'definitions', 2),

('b1000007-0000-0000-0000-000000000005',
'Vector Operations and Products',
'## Vector Operations

### Addition and Subtraction
**a** + **b** = [a₁+b₁; a₂+b₂; a₃+b₃]
**a** − **b** = [a₁−b₁; a₂−b₂; a₃−b₃]

### Scalar Multiplication
k**a** = [ka₁; ka₂; ka₃]

---

## The Scalar (Dot) Product

**a · b = |a||b| cos θ**

Or in component form:
**a · b = a₁b₁ + a₂b₂ + a₃b₃**

### Key Properties
- a · b = b · a (commutative)
- a · a = |a|² 
- **If a · b = 0 and a ≠ 0 and b ≠ 0, then a ⊥ b** (perpendicular)
- i·i = j·j = k·k = 1
- i·j = j·k = k·i = 0

### Finding the Angle Between Two Vectors
cos θ = (a · b) / (|a| |b|)

**Example:** a = 2i + j − 2k, b = 3i − 4k
a · b = (2)(3) + (1)(0) + (−2)(−4) = 6 + 0 + 8 = 14
|a| = √(4+1+4) = 3, |b| = √(9+0+16) = 5
cos θ = 14/(3×5) = 14/15
θ = arccos(14/15) ≈ 21.0°

---

## The Vector (Cross) Product

**a × b** produces a vector perpendicular to BOTH a and b.

**a × b = |a||b| sin θ n̂**

where n̂ is a unit vector perpendicular to both, direction given by right-hand rule.

### Component Formula (Determinant Method):
```
a × b = |i   j   k |
        |a₁  a₂  a₃|
        |b₁  b₂  b₃|
```
= (a₂b₃ − a₃b₂)**i** − (a₁b₃ − a₃b₁)**j** + (a₁b₂ − a₂b₁)**k**

### Key Properties
- a × b = −b × a (anti-commutative)
- a × a = 0
- **If a × b = 0 and a ≠ 0, b ≠ 0, then a ∥ b** (parallel)
- i×j = k, j×k = i, k×i = j (cyclic)
- |a × b| = |a||b| sin θ = **area of parallelogram** formed by a and b

---

## Equations of Lines in 3D

### Vector Equation of a Line
Through point with position vector **a**, in direction **d**:
**r** = **a** + t**d** (t is a parameter)

### Cartesian Equation
(x − a₁)/d₁ = (y − a₂)/d₂ = (z − a₃)/d₃ = t

**Example:** Line through (1, 2, 3) with direction (2, −1, 4):
**r** = (i + 2j + 3k) + t(2i − j + 4k)
Cartesian: (x−1)/2 = (y−2)/(−1) = (z−3)/4

### Angle Between Two Lines
cos θ = |**d₁** · **d₂**| / (|**d₁**| |**d₂**|)

### Intersecting, Parallel, or Skew?
- **Parallel:** direction vectors are parallel (d₁ × d₂ = 0)
- **Intersecting:** find common point (solve simultaneously)
- **Skew:** not parallel, not intersecting (most common in 3D)

---

## Equations of Planes

### Vector Equation
**r** · **n** = **a** · **n** (n is the normal vector to the plane)

### Cartesian Form
If normal n = (A, B, C) and passes through (x₀, y₀, z₀):
**Ax + By + Cz = d** where d = Ax₀ + By₀ + Cz₀

### Distance from Point to Plane
Distance from point P (position **p**) to plane **r**·**n** = d:
**dist = |(**p** · **n̂** − d/|**n**|)|**

Or more simply: dist = |Ax₀ + By₀ + Cz₀ − d| / √(A²+B²+C²)',
'explanation', 3),

('b1000007-0000-0000-0000-000000000005',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Dot Product and Angle
Find the angle between a = i + 2j − 2k and b = 2i − j + 2k.

a · b = (1)(2) + (2)(−1) + (−2)(2) = 2 − 2 − 4 = −4
|a| = √(1+4+4) = 3, |b| = √(4+1+4) = 3
cos θ = −4/(3×3) = −4/9
**θ = arccos(−4/9) ≈ 116.4°**

---

### Example 2: Cross Product
Find a × b where a = 2i − j + 3k and b = i + 2j − k.

a × b = |i  j  k; 2 −1 3; 1 2 −1|
= [(−1)(−1)−(3)(2)]i − [(2)(−1)−(3)(1)]j + [(2)(2)−(−1)(1)]k
= [1−6]i − [−2−3]j + [4+1]k
= **−5i + 5j + 5k**

**Verification (perpendicularity):**
(−5i+5j+5k)·(2i−j+3k) = −10−5+15 = 0 ✓
(−5i+5j+5k)·(i+2j−k) = −5+10−5 = 0 ✓

---

### Example 3: Line Through Two Points
Find the vector equation of the line through A(1,0,2) and B(3,−1,5).

Direction: **AB** = B − A = (3−1)i + (−1−0)j + (5−2)k = 2i − j + 3k

**r** = (i + 2k) + t(2i − j + 3k), t ∈ ℝ

Or: (x−1)/2 = y/(−1) = (z−2)/3

---

### Example 4: Intersection of Line and Plane
Find where the line **r** = (1+2t)i + (3−t)j + (2+4t)k meets the plane 2x + y − z = 4.

Substitute into plane equation:
2(1+2t) + (3−t) − (2+4t) = 4
2 + 4t + 3 − t − 2 − 4t = 4
3 − t = 4
t = −1

Point: (1+2(−1), 3−(−1), 2+4(−1)) = **(-1, 4, -2)** ✓

---

### Example 5: Area of Triangle
Find the area of triangle ABC with A(1,0,0), B(0,1,0), C(0,0,1).

**AB** = −i + j, **AC** = −i + k

**AB × AC** = |i j k; −1 1 0; −1 0 1|
= [(1)(1)−(0)(0)]i − [(−1)(1)−(0)(−1)]j + [(−1)(0)−(1)(−1)]k
= i − (−1)j + 1k = i + j + k

|**AB × AC**| = √(1+1+1) = √3
Area = (1/2)|**AB × AC**| = **√3/2 sq units**',
'examples', 4),

('b1000007-0000-0000-0000-000000000005',
'Practice Questions',
'## Practice Questions — Vectors in 3D

### Section A: Basic Operations
**1.** Given a = 3i − j + 2k and b = i + 4j − k, find:
(a) a + b  (b) a − 2b  (c) |a|  (d) unit vector in direction of b

**2.** Find the position vector of the point P that divides AB in ratio 2:3, where A = (1,2,3) and B = (6,7,8).

---

### Section B: Scalar Product
**3.** Find a · b where a = 2i − 3j + k and b = i + j + 2k.

**4.** Find the angle between u = i + j + k and v = 2i − j + 3k.

**5.** Show that p = 3i − j + 2k and q = 2i + 4j + k are perpendicular.

---

### Section C: Cross Product
**6.** Find a × b where a = i − j + k and b = 2i + j − k.

**7.** Find a unit vector perpendicular to both p = 2i + j and q = i + 2j + k.

**8.** Find the area of the parallelogram with adjacent sides a = 3i + 2j − k and b = i − j + 2k.

---

### Section D: Lines and Planes
**9.** Find the vector equation of the line through (2,−1,3) in direction (1,2,−1).

**10.** Find the Cartesian equation of the line through A(1,2,3) and B(3,5,7).

**11.** Find the equation of the plane through (1,2,3) with normal vector 2i − j + 3k.

**12.** Find the distance from point (3,1,2) to the plane 2x + 2y − z = 5.

---

### Section E: Intersection Problems
**13.** Determine whether the lines r₁ = (i + j) + s(2i − j) and r₂ = (3i − j) + t(i + j) intersect, and if so find the point of intersection.

**14.** Find the angle between the planes 2x + y − 2z = 4 and x − 2y + 2z = 1.

**15.** A line has equation r = (2i + j − k) + t(i − 2j + 2k). Find the point where this line meets the plane 3x − y + 2z = 7.

### Answers
1d. (i+4j−k)/√18   2. (3,4,5)   3. −3   5. 6−4+2=0 ✓   8. √179   12. 3/3=1',
'practice', 5),

('b1000007-0000-0000-0000-000000000005',
'Summary and Key Formulas',
'## Summary: Vectors in 3D

### Key Operations

| Operation | Formula |
|---|---|
| Magnitude | \|v\| = √(x²+y²+z²) |
| Unit vector | v̂ = v/\|v\| |
| Dot product | a·b = a₁b₁+a₂b₂+a₃b₃ = \|a\|\|b\|cosθ |
| Cross product | a×b = det[i j k; a₁ a₂ a₃; b₁ b₂ b₃] |
| Cross product magnitude | \|a×b\| = \|a\|\|b\|sinθ |

### Geometric Meanings

| Result | Geometric Meaning |
|---|---|
| a·b = 0 | a ⊥ b (perpendicular) |
| a×b = 0 | a ∥ b (parallel) |
| \|a×b\| | Area of parallelogram |
| (1/2)\|a×b\| | Area of triangle |

### Line and Plane Equations
- **Line:** r = a + td
- **Plane:** r·n = a·n or Ax+By+Cz = d
- **Angle between lines:** cos θ = |d₁·d₂|/(|d₁||d₂|)
- **Angle between planes:** same formula using normals

### Remember
- Dot product → scalar; Cross product → vector
- Cross product is anti-commutative: a×b = −b×a
- i×j = k, j×k = i, k×i = j (right-hand cyclic rule)',
'content', 6);

-- ============================================================
-- TOPIC 6: PERMUTATIONS AND COMBINATIONS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000006',
'Overview of Counting Principles',
'## Permutations and Combinations

Permutations and combinations are the foundation of **combinatorics** — the mathematics of counting. These tools answer questions like:

- How many ways can 5 students sit in a row?
- How many ways can a committee of 3 be chosen from 10 people?
- How many different 4-digit PIN codes are possible?

### The Key Distinction
- **Permutation:** Order MATTERS (arrangement)
- **Combination:** Order does NOT matter (selection)

Think of it this way:
- {A, B, C} and {C, A, B} are the SAME combination but DIFFERENT permutations
- Arranging books on a shelf = permutation
- Choosing books for a reading list = combination

### The Multiplication Principle
If task A can be done in m ways and task B can be done in n ways independently, then both together can be done in **m × n** ways.

**Example:** 3 shirts and 4 trousers → 3×4 = 12 outfits

### The Addition Principle
If task A can be done in m ways OR task B in n ways (not both), then the total is **m + n** ways.',
'overview', 1),

('b1000007-0000-0000-0000-000000000006',
'Factorials, Permutations, and Combinations',
'## Factorials

**n! = n × (n−1) × (n−2) × ... × 2 × 1**

By definition: **0! = 1**

Examples:
- 5! = 5×4×3×2×1 = 120
- 7! = 5040
- 10! = 3,628,800

### Why 0! = 1?
Because there is exactly ONE way to arrange zero objects (do nothing).

---

## Permutations

**ⁿPᵣ = n! / (n−r)!**

This counts the number of ways to choose r items from n and ARRANGE them.

**Example:** How many ways can 3 students be chosen from 8 and seated in a row?
⁸P₃ = 8!/(8−3)! = 8!/5! = 8×7×6 = **336 ways**

### All n Objects
If all n objects are arranged: ⁿPₙ = n! arrangements.
**Example:** 4 books in a row: 4! = 24 ways.

### Permutations with Repetition
If object i appears nᵢ times, number of distinct arrangements:
**n! / (n₁! × n₂! × ... × nₖ!)**

**Example:** Arrangements of MISSISSIPPI (11 letters: M×1, I×4, S×4, P×2):
11! / (1! × 4! × 4! × 2!) = 39,916,800 / 1,152 = **34,650**

---

## Combinations

**ⁿCᵣ = C(n,r) = (n choose r) = n! / [r!(n−r)!]**

This counts the number of ways to CHOOSE r items from n (order irrelevant).

**Example:** Choose 3 students from 8:
⁸C₃ = 8!/(3!×5!) = (8×7×6)/(3×2×1) = 336/6 = **56 ways**

### Key Properties
- ⁿC₀ = 1 (one way to choose nothing)
- ⁿC₁ = n
- ⁿCₙ = 1
- **ⁿCᵣ = ⁿCₙ₋ᵣ** (crucial! Choosing r to include = choosing n−r to exclude)
- ⁿCᵣ = ⁿ⁻¹Cᵣ₋₁ + ⁿ⁻¹Cᵣ (Pascal''s Triangle relationship)

### Relationship Between P and C
**ⁿPᵣ = r! × ⁿCᵣ**

Makes sense: Take any combination → multiply by r! arrangements of those items → permutation.',
'definitions', 2),

('b1000007-0000-0000-0000-000000000006',
'Special Cases and Problem Types',
'## Special Problem Types

### 1. Circular Arrangements
When n objects are arranged in a circle (one arrangement can be rotated to another):
**Number of circular arrangements = (n−1)!**

**Why?** Fix one object in place (removes rotational duplicates), arrange the remaining n−1 objects.

**Example:** 6 people seated around a circular table: (6−1)! = 5! = **120 ways**

If there is a fixed point (like a head of table), treat it like a line arrangement: n!

### Circular with Restriction (Necklace/Key Ring)
If flipping is also equivalent (necklace), divide by 2:
**(n−1)! / 2**

### 2. Objects That Must Be Together
Treat the group as a single "super-object", then:
- Arrange the (n − group_size + 1) entities
- Arrange the group internally

**Example:** 7 people in a row; 3 must sit together.
Bundle the 3 as one unit → 5 entities → 5! arrangements
The 3 can arrange among themselves: 3! = 6
Total = 5! × 3! = 120 × 6 = **720**

### 3. Objects That Must Be Apart
Total arrangements − arrangements where they ARE together.

**Example:** 6 people in a row; A and B must not sit next to each other.
Total: 6! = 720
Together: treat A+B as unit → 5! × 2! = 120 × 2 = 240
**Apart = 720 − 240 = 480**

### 4. Selecting with Conditions
Use combinations with careful separation:

**Example:** Committee of 5 from 7 men and 4 women; must include at least 2 women.
- Exactly 2 women: C(4,2)×C(7,3) = 6×35 = 210
- Exactly 3 women: C(4,3)×C(7,2) = 4×21 = 84
- Exactly 4 women: C(4,4)×C(7,1) = 1×7 = 7
Total = 210 + 84 + 7 = **301**

(Alternative: Total − none − exactly 1 woman)
Total = C(11,5) = 462
None: C(7,5) = 21
Exactly 1: C(4,1)×C(7,4) = 4×35 = 140
**462 − 21 − 140 = 301 ✓**

### 5. Selections from Groups (At Most / At Least)
Use complementary counting: subtract unwanted cases from total.',
'explanation', 3),

('b1000007-0000-0000-0000-000000000006',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Permutations with Repeated Letters
Find the number of distinct arrangements of the letters of CALCULATOR.

CALCULATOR: C(2), A(2), L(2), U(1), T(1), O(1), R(1) → 10 letters total
= 10! / (2! × 2! × 2! × 1! × 1! × 1! × 1!)
= 3,628,800 / 8
= **453,600**

---

### Example 2: Circular Arrangements with Restriction
8 people sit at a circular table. Two people (P and Q) must sit opposite each other. How many arrangements?

Fix Q at any seat (circular, so fix one). P must sit directly opposite Q (one position). Remaining 6 people fill 6 seats: 6! = 720.
**Total = 720 arrangements**

---

### Example 3: Choosing a Team
From a squad of 15 (8 forwards, 7 defenders), select a team of 11 with exactly 6 forwards and 5 defenders. How many ways?

C(8,6) × C(7,5) = 28 × 21 = **588 ways**

---

### Example 4: Poker Hand Type
Find the number of 5-card hands from a 52-card deck that contain exactly 3 aces.

Choose 3 aces from 4: C(4,3) = 4
Choose remaining 2 cards from 48 non-aces: C(48,2) = 1128
Total = 4 × 1128 = **4,512 hands**

---

### Example 5: Mixed Problem
Find the number of 4-digit numbers greater than 4000 that can be formed using digits 1, 2, 3, 4, 5 without repetition.

First digit must be 4 or 5 (to be ≥ 4000): 2 choices
Remaining 3 digits from 4 remaining digits: P(4,3) = 4×3×2 = 24
Total = 2 × 24 = **48 numbers**',
'examples', 4),

('b1000007-0000-0000-0000-000000000006',
'Practice Questions',
'## Practice Questions — Permutations and Combinations

### Section A: Factorials and Basic Counting
**1.** Evaluate: (a) 8!/5!  (b) 10!/(7!×3!)  (c) ⁹P₄  (d) ⁹C₄

**2.** In how many ways can 5 different books be arranged on a shelf?

**3.** How many 3-letter "words" (arrangements) can be formed from the letters A, B, C, D, E (no repetition)?

**4.** A team of 4 is chosen from 9 players. How many ways can this be done?

---

### Section B: Special Arrangements
**5.** In how many ways can 8 people sit in a circle?

**6.** Find the number of ways 5 keys can be arranged on a key ring.

**7.** Find the number of distinct arrangements of the letters MISSISSIPPI.

**8.** Find the number of arrangements of the letters ENGINEERING.

---

### Section C: Restricted Arrangements
**9.** 6 people in a row: A and B must be at the ends. How many arrangements?

**10.** 8 people in a row: 3 particular people must always be together. How many?

**11.** 5 boys and 4 girls in a row: girls must occupy alternate positions. How many?

---

### Section D: Combinations with Conditions
**12.** A committee of 6 is selected from 10 men and 8 women. How many ways if:
(a) No restriction
(b) At least 3 women
(c) Exactly 2 men

**13.** From the letters A, B, C, D, E, F, how many 3-letter selections contain at least one vowel (A, E)?

**14.** In a class of 30 students, how many ways can a president, vice-president, and secretary be chosen if one particular student can only be president?

---

### Section E: Challenge
**15.** In how many ways can the letters of ARRANGE be permuted so that the two R''s are never adjacent?

**16.** Find the number of ways to seat 4 couples at a circular table such that each couple sits together.

### Answers
1a. 336   1b. 120   1c. 3024   1d. 126   2. 120   3. 60   4. 126   5. 5040   7. 34,650   9. 48   15. 900   16. 384',
'practice', 5),

('b1000007-0000-0000-0000-000000000006',
'Summary and Key Formulas',
'## Summary: Permutations and Combinations

### Core Formulas

| Formula | Name | When to Use |
|---|---|---|
| n! | Factorial | Total arrangements of n distinct items |
| ⁿPᵣ = n!/(n−r)! | Permutation | Choose r from n, ORDER matters |
| ⁿCᵣ = n!/[r!(n−r)!] | Combination | Choose r from n, order doesn''t matter |
| (n−1)! | Circular | n items in circle, rotations same |
| n!/(n₁!n₂!...) | Multi-set | n items with repetitions n₁, n₂,... |

### Decision Checklist

Ask yourself these questions:
1. Does order matter? → Yes: Permutation; No: Combination
2. Are items arranged in a circle? → Use (n−1)!
3. Are some items identical? → Divide by the factorials of each repeated item
4. Are there restrictions? → Handle with cases or complementary counting

### Common Mistakes
- Confusing ⁿPᵣ and ⁿCᵣ (always ask "does order matter?")
- Forgetting that 0! = 1
- In circular problems, forgetting to fix one element
- Not accounting for internal arrangements when grouping objects together
- Using addition when multiplication is needed (and vice versa)',
'content', 6);

-- ============================================================
-- TOPIC 7: BINOMIAL THEOREM
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000007',
'Overview of Binomial Theorem',
'## The Binomial Theorem

The Binomial Theorem provides a formula for expanding expressions of the form **(a + b)ⁿ** without multiplying out every bracket.

### The Pattern from Pascal''s Triangle
(a + b)⁰ = 1
(a + b)¹ = a + b
(a + b)² = a² + 2ab + b²
(a + b)³ = a³ + 3a²b + 3ab² + b³
(a + b)⁴ = a⁴ + 4a³b + 6a²b² + 4ab³ + b⁴

The coefficients follow **Pascal''s Triangle**:
```
       1
      1 1
     1 2 1
    1 3 3 1
   1 4 6 4 1
  1 5 10 10 5 1
```

Each number is the sum of the two numbers directly above it.

### The General Formula
**(a + b)ⁿ = Σₖ₌₀ⁿ C(n,k) aⁿ⁻ᵏ bᵏ**

Or written out:
= C(n,0)aⁿ + C(n,1)aⁿ⁻¹b + C(n,2)aⁿ⁻²b² + ... + C(n,n)bⁿ

### Why This Matters
- Expanding complex algebraic expressions quickly
- Finding specific terms without full expansion
- Approximations in calculus and physics
- Probability distributions (Binomial distribution)',
'overview', 1),

('b1000007-0000-0000-0000-000000000007',
'The General Term and Special Cases',
'## Key Results

### The General Term (r+1)th term
**(r+1)th term = T_{r+1} = C(n,r) · aⁿ⁻ʳ · bʳ**

This is the formula for finding ANY specific term in the expansion of (a+b)ⁿ.

**Note:** The exponent of b always equals r (the "bottom" of the C(n,r)).

### Number of Terms
The expansion of (a+b)ⁿ has **(n+1) terms**.

---

## Important Special Cases

### (1 + x)ⁿ
**(1 + x)ⁿ = 1 + nx + [n(n−1)/2!]x² + [n(n−1)(n−2)/3!]x³ + ...**

This is valid for ALL values of n (not just positive integers) when |x| < 1.

### Binomial Series (Infinite Expansion)
When n is not a positive integer and |x| < 1:
**(1 + x)ⁿ = 1 + nx + n(n−1)x²/2! + n(n−1)(n−2)x³/3! + ...**

This infinite series is used for approximations.

**Examples of series:**
- (1+x)^(−1) = 1 − x + x² − x³ + ... |x| < 1
- (1+x)^(1/2) = 1 + x/2 − x²/8 + x³/16 − ... |x| < 1
- (1−x)^(−1) = 1 + x + x² + x³ + ... |x| < 1

### Pascal''s Triangle Properties
- Each row sums to 2ⁿ: Σ C(n,k) = 2ⁿ
- Alternating sum: C(n,0) − C(n,1) + C(n,2) − ... = 0
- Sum of even-indexed terms = sum of odd-indexed terms = 2ⁿ⁻¹',
'definitions', 2),

('b1000007-0000-0000-0000-000000000007',
'Expanding and Finding Terms',
'## How to Use the Binomial Theorem

### Expanding (a + b)ⁿ: Step-by-Step

**Example:** Expand (2x + 3)⁴ fully.

Here a = 2x, b = 3, n = 4.

T_{r+1} = C(4,r) · (2x)^(4−r) · 3^r

r=0: C(4,0)(2x)⁴(3)⁰ = 1 · 16x⁴ · 1 = 16x⁴
r=1: C(4,1)(2x)³(3)¹ = 4 · 8x³ · 3 = 96x³
r=2: C(4,2)(2x)²(3)² = 6 · 4x² · 9 = 216x²
r=3: C(4,3)(2x)¹(3)³ = 4 · 2x · 27 = 216x
r=4: C(4,4)(2x)⁰(3)⁴ = 1 · 1 · 81 = 81

**(2x + 3)⁴ = 16x⁴ + 96x³ + 216x² + 216x + 81**

---

### Finding a Specific Term

**Example:** Find the term containing x⁵ in (x + 2)⁸.

T_{r+1} = C(8,r) · x^(8−r) · 2^r

We need x⁵: 8 − r = 5 → r = 3

T₄ = C(8,3) · x⁵ · 2³ = 56 · x⁵ · 8 = **448x⁵**

---

### Finding the Coefficient of x^k

**Example:** Find the coefficient of x³ in (3 − 2x)⁵.

T_{r+1} = C(5,r) · (3)^(5−r) · (−2x)^r

We need x³: r = 3

T₄ = C(5,3) · 3² · (−2)³ · x³
= 10 · 9 · (−8) · x³
= **−720x³**

Coefficient is −720.

---

### Approximation Using Binomial Expansion

**Example:** Find the value of (1.02)⁵ correct to 4 decimal places.

(1.02)⁵ = (1 + 0.02)⁵

= 1 + 5(0.02) + 10(0.02)² + 10(0.02)³ + 5(0.02)⁴ + (0.02)⁵
= 1 + 0.1 + 10(0.0004) + 10(0.000008) + 5(0.00000016) + ...
= 1 + 0.1 + 0.004 + 0.00008 + 0.0000008 + ...
= 1.1040808 ≈ **1.1041**

---

### General Binomial Series for Approximations

Find the first three terms of (1 − 3x)^(−2) and state the range of validity.

Using (1+u)ⁿ with u = −3x, n = −2:

= 1 + (−2)(−3x) + (−2)(−3)/(2!)(−3x)² + ...
= 1 + 6x + (3)(9x²) + ...
= **1 + 6x + 27x²** + ...

Valid for |−3x| < 1, i.e. **|x| < 1/3**',
'explanation', 3),

('b1000007-0000-0000-0000-000000000007',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Full Expansion
Expand (x − 1/x)⁶.

Here a = x, b = −1/x, n = 6.

T_{r+1} = C(6,r) · x^(6−r) · (−1/x)^r = C(6,r) · (−1)^r · x^(6−r) · x^(−r) = C(6,r)(−1)^r x^(6−2r)

r=0: C(6,0)(1)x⁶ = x⁶
r=1: C(6,1)(−1)x⁴ = −6x⁴
r=2: C(6,2)(1)x² = 15x²
r=3: C(6,3)(−1)x⁰ = −20
r=4: C(6,4)(1)x⁻² = 15x⁻² = 15/x²
r=5: C(6,5)(−1)x⁻⁴ = −6/x⁴
r=6: C(6,6)(1)x⁻⁶ = 1/x⁶

**(x − 1/x)⁶ = x⁶ − 6x⁴ + 15x² − 20 + 15/x² − 6/x⁴ + 1/x⁶**

---

### Example 2: Find Constant Term
Find the constant term (term independent of x) in (2x + 1/x²)⁹.

T_{r+1} = C(9,r) · (2x)^(9−r) · (1/x²)^r = C(9,r) · 2^(9−r) · x^(9−r) · x^(−2r)
= C(9,r) · 2^(9−r) · x^(9−3r)

For constant term: 9 − 3r = 0 → r = 3

T₄ = C(9,3) · 2⁶ · x⁰ = 84 · 64 = **5376**

---

### Example 3: Finding n
If the coefficient of x² in (1 + x)ⁿ is 45, find n.

Coefficient of x² = C(n,2) = n(n−1)/2 = 45
n(n−1) = 90 = 10 × 9
**n = 10**

---

### Example 4: Approximation
Use the first four terms of (1 + x)^(1/3) to find ∛(1.09) correct to 5 d.p.

(1 + x)^(1/3) ≈ 1 + (1/3)x + (1/3)(−2/3)x²/2! + (1/3)(−2/3)(−5/3)x³/3!
= 1 + x/3 − x²/9 + 5x³/81

Let x = 0.09:
= 1 + 0.09/3 − 0.0081/9 + 5(0.000729)/81
= 1 + 0.03 − 0.0009 + 0.000045
= **1.029145** ≈ 1.02915

Check: ∛1.09 ≈ 1.02914 ✓',
'examples', 4),

('b1000007-0000-0000-0000-000000000007',
'Practice Questions',
'## Practice Questions — Binomial Theorem

### Section A: Expansions
**1.** Expand fully: (a + b)⁵

**2.** Expand (2x − 3)⁴ fully.

**3.** Expand (1 + x/2)⁶ and simplify.

**4.** Expand (x − 2/x)⁵ and find the constant term.

---

### Section B: Finding Specific Terms
**5.** Find the 4th term of (3x + 2)⁷.

**6.** Find the coefficient of x⁴ in (2x − 1)⁶.

**7.** Find the term independent of x in (x + 3/x)⁶.

**8.** Find the coefficient of x³ in (1 + 2x)(1 − x)⁶.

---

### Section C: Binomial Series
**9.** Expand (1 + x)^(−3) up to the term in x³. State the range of validity.

**10.** Expand (1 − 2x)^(1/2) up to the term in x³.

**11.** Find the first three terms of (4 + x)^(1/2) in ascending powers of x.

**12.** Use the binomial expansion of (1 + x)^(−1) to show that 1/(1+x) ≈ 1 − x + x² for small x. State the range of validity.

---

### Section D: Applications
**13.** Use a binomial expansion to find (0.99)⁸ correct to 6 decimal places.

**14.** Find the value of (2.01)⁵ correct to 4 d.p. using the binomial theorem.

**15.** If the coefficient of x² in (1 + ax)⁵ is 60, find the value of a.

---

### Section E: Challenge
**16.** Prove that C(n,0) + C(n,1) + C(n,2) + ... + C(n,n) = 2ⁿ.

**17.** Show that C(n,r) + C(n,r+1) = C(n+1,r+1) (Pascal''s identity).

### Answers
2. 16x⁴−96x³+216x²−216x+81   5. C(7,3)(3x)⁴(2)³ = 35·81x⁴·8 = 22,680x⁴   6. 240   7. 729   13. 0.923116   15. a = ±2√3',
'practice', 5),

('b1000007-0000-0000-0000-000000000007',
'Summary and Key Formulas',
'## Summary: Binomial Theorem

### Core Formulas

| Expression | Formula |
|---|---|
| (a+b)ⁿ expansion | Σᵣ₌₀ⁿ C(n,r)aⁿ⁻ʳbʳ |
| (r+1)th term | T_{r+1} = C(n,r)aⁿ⁻ʳbʳ |
| (1+x)ⁿ series | 1+nx+n(n−1)x²/2!+... |
| Validity of series | \|x\| < 1 (for non-integer n) |

### Quick Reference Table for (1+x)ⁿ
- n = 2: 1 + 2x + x²
- n = −1: 1 − x + x² − x³ + ...
- n = 1/2: 1 + x/2 − x²/8 + x³/16 − ...
- n = −2: 1 − 2x + 3x² − 4x³ + ...

### Strategy for Finding Specific Terms
1. Write the general term: T_{r+1} = C(n,r)aⁿ⁻ʳbʳ
2. Identify what power you need
3. Set the exponent equal to that power
4. Solve for r
5. Substitute r back to find the term

### Common Mistakes
- Forgetting to apply the exponent to the WHOLE bracket (e.g., (2x)³ = 8x³, not 2x³)
- Getting the sign wrong when b is negative
- Forgetting that |x| < 1 is required for infinite binomial series
- Off-by-one: The rth term has r−1 as the exponent of b (T₁ has b⁰, T₂ has b¹, ...)',
'content', 6);

-- ============================================================
-- TOPIC 8: PROBABILITY AND STATISTICS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000008',
'Overview of Probability',
'## Probability and Statistics in Further Mathematics

This topic covers advanced probability theory and statistical concepts beyond basic probability.

### What You Will Learn
- Probability axioms and rules
- Conditional probability and independence
- Bayes'' Theorem
- Probability distributions (discrete and continuous)
- Expected value and variance
- The Normal distribution
- Hypothesis testing concepts

### Why Probability Matters
From weather forecasting to insurance pricing, from medical testing to AI algorithms — probability is the mathematics of uncertainty. It tells us how likely events are and how to reason rationally under incomplete information.

### The Probability Scale
P(event) is always between 0 and 1:
- P = 0: Impossible event
- P = 1: Certain event
- P = 0.5: Equally likely to happen or not happen

### Sample Space and Events
- **Sample Space (S or Ω):** The set of all possible outcomes
- **Event:** A subset of the sample space
- **Complementary Event (A''):** The event that A does NOT happen; P(A'') = 1 − P(A)',
'overview', 1),

('b1000007-0000-0000-0000-000000000008',
'Probability Rules and Theorems',
'## Fundamental Probability Rules

### Addition Rule
**P(A ∪ B) = P(A) + P(B) − P(A ∩ B)**

For **mutually exclusive** events (A ∩ B = ∅):
**P(A ∪ B) = P(A) + P(B)**

### Multiplication Rule
**P(A ∩ B) = P(A) × P(B|A)**

For **independent** events (knowing A happened doesn''t change P(B)):
**P(A ∩ B) = P(A) × P(B)**

---

## Conditional Probability
**P(A|B) = P(A ∩ B) / P(B)** (probability of A GIVEN B has occurred)

**Example:** In a class, 40% are boys, 30% are girls who play sport, 50% of boys play sport. 
P(plays sport | boy) = 0.5
P(plays sport | girl) = 0.3

---

## Bayes'' Theorem
**P(A|B) = P(B|A) × P(A) / P(B)**

More generally (Total Probability Theorem):
P(B) = P(B|A)P(A) + P(B|A'')P(A'')

**Example:** A factory has Machine A (60% of production, 2% defective) and Machine B (40%, 5% defective). An item is found defective. What is the probability it came from Machine A?

P(defective) = P(def|A)P(A) + P(def|B)P(B)
= (0.02)(0.6) + (0.05)(0.4) = 0.012 + 0.020 = 0.032

P(A|defective) = P(def|A)P(A) / P(defective)
= (0.02 × 0.6) / 0.032 = 0.012/0.032 = **0.375**

---

## Discrete Probability Distributions

### Binomial Distribution
X ~ B(n, p): X = number of successes in n independent trials, each with probability p.

**P(X = r) = C(n,r) · pʳ · (1−p)^(n−r)**

Mean: **μ = np**
Variance: **σ² = np(1−p)**

**Conditions for Binomial:**
1. Fixed number of trials n
2. Each trial has same probability p of success
3. Trials are independent
4. Only two outcomes (success/failure)

---

### Poisson Distribution
X ~ Po(λ): Models number of events in a fixed interval.

**P(X = r) = e^(−λ) · λʳ / r!**

Mean: **μ = λ**, Variance: **σ² = λ**

Use when: events occur randomly and independently, at a constant average rate.

---

## The Normal Distribution

X ~ N(μ, σ²): The "bell curve"

**Properties:**
- Symmetrical about the mean μ
- Mean = Median = Mode = μ
- Standard deviation σ controls the spread
- Total area under curve = 1
- 68% of data within 1σ of mean
- 95% within 2σ
- 99.7% within 3σ

**Standardising:** Z = (X − μ) / σ, where Z ~ N(0,1)

Then use Z-tables to find probabilities.',
'definitions', 2),

('b1000007-0000-0000-0000-000000000008',
'Distributions and Expected Value',
'## Expected Value and Variance

### Expected Value (Mean)
For a discrete random variable X:
**E(X) = Σ x · P(X = x)**

**Example:** A biased coin gives H with P=0.6, T with P=0.4.
Win £3 on H, lose £2 on T.
E(winnings) = 3(0.6) + (−2)(0.4) = 1.8 − 0.8 = **£1.00 per game**

### Variance
**Var(X) = E(X²) − [E(X)]²**

where E(X²) = Σ x² · P(X = x)

### Standard Deviation
σ = √Var(X)

### Properties
- E(aX + b) = aE(X) + b
- Var(aX + b) = a²Var(X)
- E(X + Y) = E(X) + E(Y) (always)
- Var(X + Y) = Var(X) + Var(Y) (only if X and Y are independent)

---

## Working with the Normal Distribution

### The Standard Normal Z ~ N(0,1)
**P(Z < z) = Φ(z)** (read from Z-tables)

### Converting to Z-scores
If X ~ N(μ, σ²), then Z = (X−μ)/σ ~ N(0,1)

**Example:** X ~ N(50, 16). Find P(X > 54).
Z = (54 − 50)/4 = 1
P(X > 54) = P(Z > 1) = 1 − Φ(1) = 1 − 0.8413 = **0.1587**

### Symmetry Properties
- P(Z > z) = P(Z < −z) = 1 − Φ(z)
- P(−a < Z < a) = 2Φ(a) − 1
- P(a < Z < b) = Φ(b) − Φ(a)

### Finding a Percentile
If P(X < x) = 0.95, then (x − μ)/σ = 1.645 (from tables)
So x = μ + 1.645σ',
'explanation', 3),

('b1000007-0000-0000-0000-000000000008',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Conditional Probability
In a survey: P(owns car) = 0.7, P(owns bike | owns car) = 0.4, P(owns bike | no car) = 0.8.
Find: (a) P(owns bike)   (b) P(owns car | owns bike)

**(a)** Using total probability:
P(bike) = P(bike|car)P(car) + P(bike|no car)P(no car)
= (0.4)(0.7) + (0.8)(0.3)
= 0.28 + 0.24 = **0.52**

**(b)** Bayes'' Theorem:
P(car|bike) = P(bike|car)P(car) / P(bike)
= (0.4 × 0.7) / 0.52
= 0.28/0.52 = **7/13 ≈ 0.538**

---

### Example 2: Binomial Distribution
A multiple choice test has 20 questions, each with 4 options. A student guesses all. Find the probability of getting exactly 5 correct.

X ~ B(20, 0.25)
P(X = 5) = C(20,5) · (0.25)⁵ · (0.75)¹⁵
= 15504 · (0.25)⁵ · (0.75)¹⁵
= 15504 × 0.000977 × 0.01336
= **0.2023**

---

### Example 3: Expected Value Table
X is a random variable with the distribution:

| x | 1 | 2 | 3 | 4 |
|---|---|---|---|---|
| P(X=x) | 0.1 | 0.3 | 0.4 | 0.2 |

E(X) = 1(0.1) + 2(0.3) + 3(0.4) + 4(0.2) = 0.1 + 0.6 + 1.2 + 0.8 = **2.7**
E(X²) = 1(0.1) + 4(0.3) + 9(0.4) + 16(0.2) = 0.1 + 1.2 + 3.6 + 3.2 = 8.1
Var(X) = 8.1 − (2.7)² = 8.1 − 7.29 = **0.81**

---

### Example 4: Normal Distribution
The heights of students are normally distributed with mean 168 cm and standard deviation 8 cm.
Find: (a) P(H > 180)   (b) P(160 < H < 175)

X ~ N(168, 64)

**(a)** Z = (180−168)/8 = 1.5
P(H > 180) = P(Z > 1.5) = 1 − Φ(1.5) = 1 − 0.9332 = **0.0668**

**(b)** Z₁ = (160−168)/8 = −1, Z₂ = (175−168)/8 = 0.875
P(160 < H < 175) = Φ(0.875) − Φ(−1) = Φ(0.875) − (1−Φ(1))
= 0.8092 − (1−0.8413) = 0.8092 − 0.1587 = **0.6505**',
'examples', 4),

('b1000007-0000-0000-0000-000000000008',
'Practice Questions',
'## Practice Questions — Probability and Statistics

### Section A: Basic Probability
**1.** Two dice are rolled. Find: (a) P(sum = 7)  (b) P(sum > 9)  (c) P(both even)

**2.** A card is drawn from a 52-card deck. Find: (a) P(heart or face card)  (b) P(ace | red card)

**3.** Events A and B: P(A) = 0.4, P(B) = 0.5, P(A∩B) = 0.2. Find P(A∪B) and check if A and B are independent.

---

### Section B: Conditional Probability and Bayes
**4.** P(A) = 0.3, P(B|A) = 0.6, P(B|A'') = 0.2. Find P(A|B).

**5.** 3 boxes: Box 1 has 3 red, 2 blue; Box 2 has 2 red, 3 blue; Box 3 has 1 red, 4 blue. A box is chosen at random and a ball drawn. It is red. What is the probability it came from Box 1?

**6.** In a class, 60% are girls. 30% of girls wear glasses, 20% of boys wear glasses. A student chosen at random wears glasses. What is the probability they are a girl?

---

### Section C: Distributions
**7.** X ~ B(10, 0.3). Find: (a) P(X=3)  (b) P(X≥2)  (c) E(X)  (d) Var(X)

**8.** X ~ Po(4). Find: (a) P(X=2)  (b) P(X<3)  (c) E(X)

**9.** Construct a probability distribution for X = number of heads in 3 fair coin tosses. Find E(X) and Var(X).

---

### Section D: Normal Distribution
**10.** X ~ N(100, 225). Find: (a) P(X < 110)  (b) P(85 < X < 115)  (c) P(X > 130)

**11.** X ~ N(μ, 16). Given P(X < 30) = 0.8413, find μ.

**12.** IQ scores are N(100, 225). What IQ score marks the top 5% of the population?

---

### Section E: Expected Value
**13.** A game costs £2 to play. Win £5 with probability 0.3, win £1 with probability 0.4, win nothing with probability 0.3. Is the game fair? Find E(profit).

**14.** X and Y are independent: E(X) = 3, Var(X) = 4; E(Y) = 5, Var(Y) = 9. Find E(2X+Y) and Var(2X+Y).

### Answers
1a. 1/6   1c. 1/4   3. P(A∪B)=0.7; not independent since 0.4×0.5≠0.2   7a. ≈0.267   10a. 0.7475   12. ≈124.7',
'practice', 5),

('b1000007-0000-0000-0000-000000000008',
'Summary and Key Formulas',
'## Summary: Probability and Statistics

### Key Probability Formulas

| Rule | Formula |
|---|---|
| Complement | P(A'') = 1 − P(A) |
| Addition | P(A∪B) = P(A)+P(B)−P(A∩B) |
| Conditional | P(A\|B) = P(A∩B)/P(B) |
| Multiplication | P(A∩B) = P(A)·P(B\|A) |
| Independence | P(A∩B) = P(A)·P(B) |
| Bayes | P(A\|B) = P(B\|A)P(A)/P(B) |

### Distribution Summary

| Distribution | Mean | Variance |
|---|---|---|
| Binomial B(n,p) | np | np(1−p) |
| Poisson Po(λ) | λ | λ |
| Normal N(μ,σ²) | μ | σ² |

### Normal Distribution Key Values
Z-values for common probabilities:
- P(Z < 1.645) = 0.95
- P(Z < 1.960) = 0.975
- P(Z < 2.326) = 0.99
- P(Z < 2.576) = 0.995

### Common Mistakes
- Not checking conditions for Binomial (fixed n, constant p, independence, two outcomes)
- Confusing P(A|B) with P(B|A) — these are very different!
- Forgetting to standardise before using normal tables
- Not using 1 − Φ(z) for upper tail probabilities
- Forgetting that Var(aX) = a²Var(X), not aVar(X)',
'content', 6);
