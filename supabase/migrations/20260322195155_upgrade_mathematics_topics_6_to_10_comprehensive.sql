/*
  # Comprehensive Mathematics Notes - Topics 6 to 10

  Upgrades the following Mathematics topics with deeply detailed, exam-ready notes:
  6. Mensuration
  7. Coordinate Geometry
  8. Sequences and Series
  9. Vectors
  10. Number Bases and Sets
*/

UPDATE topics SET content = '# Mensuration

## 1. Perimeter and Area of Plane Shapes

### Rectangle
- Perimeter = 2(l + w)
- Area = l × w

### Square
- Perimeter = 4l
- Area = l²

### Triangle
- Perimeter = a + b + c
- Area = (1/2) × base × height
- Area (Heron''s formula) = √[s(s-a)(s-b)(s-c)] where s = (a+b+c)/2
- Area = (1/2)ab sin C (two sides and included angle)

### Parallelogram
- Perimeter = 2(a + b)
- Area = base × height = ab sin θ

### Rhombus
- Area = (1/2) × d₁ × d₂ (diagonals)
- Area = l² sin θ

### Trapezium
- Area = (1/2)(a + b) × h where a, b are parallel sides

### Circle
- Circumference = 2πr = πd
- Area = πr²

### Sector
- Arc length = (θ/360°) × 2πr
- Area = (θ/360°) × πr²

### Segment
- Area = Area of sector - Area of triangle
= (θ/360°)πr² - (1/2)r² sin θ

---

## 2. Summary Table — Plane Shapes

| Shape | Area | Perimeter |
|-------|------|-----------|
| Rectangle (l×w) | lw | 2(l+w) |
| Square (side l) | l² | 4l |
| Triangle | ½bh | a+b+c |
| Parallelogram | bh | 2(a+b) |
| Trapezium | ½(a+b)h | sum of sides |
| Circle (radius r) | πr² | 2πr |
| Sector (angle θ) | (θ/360)πr² | 2r + arc |

---

## 3. Surface Area and Volume of Solids

### Cuboid (Rectangular Prism)
- Volume = l × w × h
- Surface Area = 2(lw + lh + wh)
- **Space diagonal** = √(l² + w² + h²)

### Cube (side a)
- Volume = a³
- Surface Area = 6a²
- Space diagonal = a√3

### Cylinder (radius r, height h)
- Volume = πr²h
- Curved Surface Area = 2πrh
- Total Surface Area = 2πr(r + h)

### Cone (radius r, height h, slant height l)
- l = √(r² + h²)
- Volume = (1/3)πr²h
- Curved Surface Area = πrl
- Total Surface Area = πr(r + l)

### Sphere (radius r)
- Volume = (4/3)πr³
- Surface Area = 4πr²

### Hemisphere (radius r)
- Volume = (2/3)πr³
- Curved Surface Area = 2πr²
- Total Surface Area = 3πr²

### Prism (any uniform cross-section)
- Volume = Area of cross-section × length
- Surface Area = 2 × base area + perimeter of base × length

### Pyramid
- Volume = (1/3) × base area × height

---

## 4. Worked Examples

**Example 1:** Find the volume and total surface area of a cylinder with r = 7 cm, h = 10 cm.
- Volume = π(7²)(10) = 490π ≈ 1539.4 cm³
- TSA = 2π(7)(7 + 10) = 2π(7)(17) = 238π ≈ 747.7 cm²

**Example 2:** A cone has base radius 6 cm and height 8 cm. Find its volume and slant height.
- l = √(6² + 8²) = √(100) = 10 cm
- Volume = (1/3)π(6²)(8) = (1/3)(36π)(8) = 96π ≈ 301.6 cm³

**Example 3:** Find the sector area with radius 12 cm and angle 75°.
- Area = (75/360) × π(12²) = (75/360) × 144π = 30π ≈ 94.2 cm²

---

## 5. Scale Drawings and Similar Figures

For **similar figures** with linear scale factor k:
- Area scale factor = k²
- Volume scale factor = k³

**Example:** Two similar cylinders have radii 3 cm and 9 cm. If smaller cylinder has volume 54π cm³, find volume of larger.
- Scale factor k = 9/3 = 3
- Volume ratio = 3³ = 27
- Larger volume = 27 × 54π = 1458π cm³

---

## 6. Compound Shapes

Break into simpler shapes, add or subtract as needed.

**Example:** Find area of a running track (rectangle with semicircles at ends, outer dimensions 100 m × 60 m).
- Rectangle: 100 × 60 = 6000 m²
- Two semicircles of diameter 60 m = one full circle of r = 30: π(30²) = 900π ≈ 2827 m²
- Total area ≈ 8827 m²

---

## 7. Volume of Water in Containers

Identify cross-sectional shape, calculate area, multiply by depth.

**Example:** A trough is shaped like a half-cylinder with radius 0.5 m and length 3 m. Find volume.
- Volume = (1/2)πr²l = (1/2)π(0.25)(3) = 3π/8 ≈ 1.18 m³

---

## Common Mistakes

| Mistake | Correction |
|---------|-----------|
| Using diameter instead of radius | Always check: r = d/2 |
| Forgetting π in circle formulas | Write formula first, substitute after |
| Wrong formula for cone CSA | CSA = πrl (slant height, not vertical) |
| Adding areas instead of multiplying for volume | Volume = area × depth/height |
' WHERE id = 'b1000001-0000-0000-0000-000000000006';

UPDATE topics SET content = '# Coordinate Geometry

## 1. The Cartesian Plane

The Cartesian plane has two perpendicular axes:
- x-axis (horizontal)
- y-axis (vertical)
- Origin O(0, 0) where they intersect
- Points written as (x, y)

**Quadrants:**
- Q1: (+, +)
- Q2: (-, +)
- Q3: (-, -)
- Q4: (+, -)

---

## 2. Distance Between Two Points

**Distance formula:** d = √[(x₂ - x₁)² + (y₂ - y₁)²]

**Example:** Find the distance between A(1, 2) and B(4, 6).
- d = √[(4-1)² + (6-2)²] = √[9 + 16] = √25 = 5 units

---

## 3. Midpoint of a Line Segment

**Midpoint M = ((x₁ + x₂)/2, (y₁ + y₂)/2)**

**Example:** Find the midpoint of A(2, 3) and B(8, 7).
- M = ((2+8)/2, (3+7)/2) = (5, 5)

---

## 4. Gradient (Slope) of a Line

**Gradient m = (y₂ - y₁)/(x₂ - x₁)**

- Positive gradient: line goes up from left to right
- Negative gradient: line goes down from left to right
- Zero gradient: horizontal line
- Undefined gradient: vertical line

**Example:** Find gradient of line through (1, 2) and (5, 10).
- m = (10 - 2)/(5 - 1) = 8/4 = 2

---

## 5. Equations of Straight Lines

### Slope-intercept form: y = mx + c
- m = gradient
- c = y-intercept

### Point-slope form: y - y₁ = m(x - x₁)

### Two-point form: (y - y₁)/(y₂ - y₁) = (x - x₁)/(x₂ - x₁)

### General form: ax + by + c = 0

**Example 1:** Find equation of line with gradient 3 passing through (2, 1).
- y - 1 = 3(x - 2) → y = 3x - 5

**Example 2:** Find equation of line through (1, 3) and (4, 9).
- m = (9-3)/(4-1) = 2
- y - 3 = 2(x - 1) → y = 2x + 1

---

## 6. Parallel and Perpendicular Lines

**Parallel lines:** Same gradient (m₁ = m₂)

**Perpendicular lines:** Gradients multiply to -1 (m₁ × m₂ = -1)
→ m₂ = -1/m₁ (negative reciprocal)

**Example:** Find equation of line through (3, 4) perpendicular to y = 2x + 1.
- Gradient of given line = 2
- Perpendicular gradient = -1/2
- y - 4 = -1/2(x - 3) → y = -x/2 + 3/2 + 4 → y = -x/2 + 11/2

---

## 7. Intersection of Two Lines

Solve the simultaneous equations formed by the two line equations.

**Example:** Find intersection of y = 2x + 1 and y = -x + 7.
- 2x + 1 = -x + 7 → 3x = 6 → x = 2
- y = 2(2) + 1 = 5
- Intersection: (2, 5)

---

## 8. Distance from a Point to a Line

**Formula:** d = |ax₁ + by₁ + c| / √(a² + b²)

where the line is ax + by + c = 0 and the point is (x₁, y₁).

**Example:** Find distance from (3, 2) to line 4x - 3y + 1 = 0.
- d = |4(3) - 3(2) + 1| / √(16 + 9) = |12 - 6 + 1| / 5 = 7/5 = 1.4 units

---

## 9. The Circle (Coordinate Geometry)

**Standard form:** (x - a)² + (y - b)² = r²

Centre: (a, b), Radius: r

**General form:** x² + y² + 2gx + 2fy + c = 0
- Centre: (-g, -f)
- Radius: √(g² + f² - c)

**Example:** Find centre and radius of x² + y² - 6x + 4y - 12 = 0
- Complete the square: (x-3)² + (y+2)² = 12 + 9 + 4 = 25
- Centre: (3, -2), Radius: 5

---

## 10. Gradient of Curves (Introduction)

The gradient of a curve at a point = gradient of the tangent at that point.

For y = axⁿ: dy/dx = naxⁿ⁻¹

**Example:** Find gradient of y = x² + 3x at x = 2.
- dy/dx = 2x + 3
- At x = 2: gradient = 2(2) + 3 = 7

---

## 11. Division of a Line Segment

A point P divides AB in ratio m:n:
**P = ((mx₂ + nx₁)/(m+n), (my₂ + ny₁)/(m+n))**

**Example:** P divides A(1, 2) and B(7, 8) in ratio 2:1.
- P = ((2×7 + 1×1)/3, (2×8 + 1×2)/3) = (15/3, 18/3) = (5, 6)

---

## 12. Locus in Coordinate Geometry

A locus is the set of all points satisfying a given condition.

Common loci:
- **Fixed distance from point** → Circle: (x-a)² + (y-b)² = r²
- **Equal distance from two points** → Perpendicular bisector of the segment
- **Fixed distance from a line** → Lines parallel to the given line

---

## Summary Formulas

| Formula | Use |
|---------|-----|
| d = √[(x₂-x₁)² + (y₂-y₁)²] | Distance between points |
| M = ((x₁+x₂)/2, (y₁+y₂)/2) | Midpoint |
| m = (y₂-y₁)/(x₂-x₁) | Gradient |
| y = mx + c | Equation of line |
| m₁ × m₂ = -1 | Perpendicular lines |
| (x-a)²+(y-b)²=r² | Circle equation |
' WHERE id = 'b1000001-0000-0000-0000-000000000007';

UPDATE topics SET content = '# Sequences and Series

## 1. Sequences

A **sequence** is an ordered list of numbers following a pattern. Each number is called a **term**.

**Notation:** u₁, u₂, u₃, ..., uₙ or T₁, T₂, T₃, ..., Tₙ

**General term (nth term):** Formula for the value of any term in position n.

---

## 2. Arithmetic Progressions (AP)

An **arithmetic progression** has a **constant difference** between consecutive terms.

**Common difference:** d = T₂ - T₁ = T₃ - T₂ = ... (constant)

### General Term (nth term)
**Tₙ = a + (n-1)d**

where:
- a = first term (T₁)
- d = common difference
- n = position number

**Example 1:** Find the 15th term of 3, 7, 11, 15, ...
- a = 3, d = 4
- T₁₅ = 3 + (14)(4) = 3 + 56 = 59

**Example 2:** The 5th term of an AP is 17 and the 8th term is 26. Find a and d.
- T₅ = a + 4d = 17 ... (i)
- T₈ = a + 7d = 26 ... (ii)
- (ii) - (i): 3d = 9 → d = 3
- Substitute: a = 17 - 12 = 5

---

### Sum of n Terms of AP
**Sₙ = n/2[2a + (n-1)d]**

Also: **Sₙ = n/2(first term + last term) = n/2(a + l)**

**Example:** Find sum of first 20 terms of 5, 8, 11, ...
- a = 5, d = 3, n = 20
- S₂₀ = 20/2[2(5) + 19(3)] = 10[10 + 57] = 10(67) = 670

---

## 3. Geometric Progressions (GP)

A **geometric progression** has a **constant ratio** between consecutive terms.

**Common ratio:** r = T₂/T₁ = T₃/T₂ (constant)

### General Term (nth term)
**Tₙ = arⁿ⁻¹**

where:
- a = first term
- r = common ratio

**Example 1:** Find the 7th term of 2, 6, 18, ...
- a = 2, r = 3
- T₇ = 2 × 3⁶ = 2 × 729 = 1458

**Example 2:** The 3rd term is 12 and the 6th term is 96. Find a and r.
- T₃ = ar² = 12 ... (i)
- T₆ = ar⁵ = 96 ... (ii)
- (ii)÷(i): r³ = 8 → r = 2
- a = 12/4 = 3

---

### Sum of n Terms of GP

**When r ≠ 1:**
**Sₙ = a(rⁿ - 1)/(r - 1)** (use when r > 1)
**Sₙ = a(1 - rⁿ)/(1 - r)** (use when r < 1)

**Example:** Find sum of first 8 terms of 3, 6, 12, ...
- a = 3, r = 2, n = 8
- S₈ = 3(2⁸ - 1)/(2 - 1) = 3(256 - 1) = 3(255) = 765

---

### Sum to Infinity of GP (|r| < 1)

**S∞ = a/(1 - r)**

This is valid only when -1 < r < 1.

**Example:** Find sum to infinity of 4, 2, 1, 1/2, ...
- a = 4, r = 1/2
- S∞ = 4/(1 - 1/2) = 4/(1/2) = 8

---

## 4. Other Sequences

### Fibonacci Sequence
1, 1, 2, 3, 5, 8, 13, 21, ...
Each term = sum of two preceding terms: Tₙ = Tₙ₋₁ + Tₙ₋₂

### Quadratic Sequences
Second differences are constant.

**Example:** 2, 5, 10, 17, 26, ...
- Differences: 3, 5, 7, 9 (not constant)
- Second differences: 2, 2, 2 (constant → quadratic)
- General term: Tₙ = n² + 1

---

## 5. Series and Sigma Notation

**Σ (sigma)** means "sum of"

**Σᵢ₌₁ⁿ i = n(n+1)/2** (sum of first n natural numbers)

**Σᵢ₌₁ⁿ i² = n(n+1)(2n+1)/6** (sum of squares)

**Σᵢ₌₁ⁿ i³ = [n(n+1)/2]²** (sum of cubes)

**Example:** Find Σᵢ₌₁²⁰ i = 20(21)/2 = 210

---

## 6. Applications of Sequences

### Simple Interest (AP application)
Amount after n years: Aₙ = P + Prt = P(1 + rt)

### Compound Interest (GP application)
Amount: A = P(1 + r)ⁿ

### Population Growth
If population grows at rate r per year: Pₙ = P₀(1 + r)ⁿ

---

## 7. Worked Problems

**Problem 1:** An AP has 10 terms. The first is 3 and the last is 30. Find the sum.
- S = n/2(a + l) = 10/2(3 + 30) = 5(33) = 165

**Problem 2:** Insert 3 geometric means between 2 and 162.
- The sequence is 2, _, _, _, 162 (5 terms total)
- a = 2, T₅ = 2r⁴ = 162 → r⁴ = 81 → r = 3
- Sequence: 2, 6, 18, 54, 162

**Problem 3:** A ball is dropped from 10 m. Each bounce reaches 80% of previous height. Find total distance.
- Going down: S∞ = 10/(1-0.8) = 50 m
- Going up: same series but starts at 8 m: 8/(0.2) = 40 m
- Total = 50 + 40 = 90 m

---

## Summary Table

| Type | nth Term | Sum of n Terms | Sum to Infinity |
|------|----------|---------------|-----------------|
| AP | a + (n-1)d | n/2[2a+(n-1)d] | N/A |
| GP | arⁿ⁻¹ | a(rⁿ-1)/(r-1) | a/(1-r) if |r|<1 |

---

## Common Mistakes

| Mistake | Correction |
|---------|-----------|
| Using n instead of (n-1) in nth term | Tₙ = a + (n-1)d, NOT a + nd |
| Wrong sign in GP formula | Use a(rⁿ-1)/(r-1) when r>1 |
| Applying S∞ when |r| ≥ 1 | Only valid for |r| < 1 |
| Forgetting sum to infinity for bouncing problems | Count both up and down |
' WHERE id = 'b1000001-0000-0000-0000-000000000008';

UPDATE topics SET content = '# Vectors

## 1. Introduction to Vectors

A **vector** has both **magnitude** (size) and **direction**.

A **scalar** has magnitude only (e.g., speed, mass, temperature).

**Notation:**
- Bold: **a**, **b**, or with arrow: a→
- Column vector: **a** = (x, y) or (x/y)
- |**a**| = magnitude of vector **a**

**Types:**
- **Position vector:** Vector from origin O to a point, e.g., OA→ = **a**
- **Free vector:** Can be placed anywhere (same direction and magnitude)
- **Equal vectors:** Same magnitude and direction
- **Negative vector:** -**a** has same magnitude but opposite direction
- **Zero vector:** Magnitude 0

---

## 2. Vector Representation in 2D

A vector from A(x₁, y₁) to B(x₂, y₂):
**AB→ = (x₂-x₁, y₂-y₁)**

**Magnitude:** |AB→| = √[(x₂-x₁)² + (y₂-y₁)²]

**Example:** A = (1, 3), B = (5, 7)
- AB→ = (4, 4)
- |AB→| = √(16 + 16) = √32 = 4√2

---

## 3. Vector Addition and Subtraction

**Addition (Triangle Law):** To add **a** + **b**, place the tail of **b** at the head of **a**. The result goes from tail of **a** to head of **b**.

**Parallelogram Law:** Place both vectors at same point; the diagonal = sum.

**Component addition:**
If **a** = (a₁, a₂) and **b** = (b₁, b₂):
- **a** + **b** = (a₁+b₁, a₂+b₂)
- **a** - **b** = (a₁-b₁, a₂-b₂)

**Example:** **a** = (3, 2), **b** = (-1, 4)
- **a** + **b** = (2, 6)
- **a** - **b** = (4, -2)

---

## 4. Scalar Multiplication

k**a** = (ka₁, ka₂)

- If k > 0: same direction
- If k < 0: opposite direction
- |k**a**| = |k| × |**a**|

**Example:** If **a** = (2, -3), find 4**a** and -2**a**.
- 4**a** = (8, -12)
- -2**a** = (-4, 6)

---

## 5. Unit Vectors

A **unit vector** has magnitude 1.

**Unit vector in direction of a:** â = **a** / |**a**|

**Standard unit vectors:**
- **i** = (1, 0) — unit vector in x-direction
- **j** = (0, 1) — unit vector in y-direction
- So (3, 4) = 3**i** + 4**j**

**Example:** Find unit vector in direction of **a** = (3, 4).
- |**a**| = √(9+16) = 5
- â = (3/5, 4/5)

---

## 6. Position Vectors

If O is the origin, OA→ = **a** (position vector of A)

**AB→ = OB→ - OA→ = b - a**

**Example:** A has position vector (2, 3), B has position vector (6, 7). Find AB→.
- AB→ = (6-2, 7-3) = (4, 4)

---

## 7. Section Formula (Dividing a Line Segment)

If P divides AB in ratio m:n:
**OP→ = (n·OA→ + m·OB→)/(m+n)**

**Midpoint M of AB:**
**OM→ = (OA→ + OB→)/2**

**Example:** A = (1, 2), B = (7, 8). P divides AB in 1:2.
- OP = (2×(1,2) + 1×(7,8))/3 = ((2+7)/3, (4+8)/3) = (3, 4)

---

## 8. Parallel Vectors

**a** and **b** are parallel if **b** = k**a** for some scalar k.

**Example:** Is (4, 6) parallel to (2, 3)?
- (4, 6) = 2(2, 3) → Yes, they are parallel (k = 2).

**Collinear points:** A, B, C are collinear if AB→ = k·AC→ for some scalar k.

---

## 9. Dot Product (Scalar Product)

**a · b = |a||b|cos θ**

**In component form:**
**a · b = a₁b₁ + a₂b₂**

**For perpendicular vectors:** a · b = 0

**Finding angle between vectors:**
cos θ = (a · b)/(|a||b|)

**Example:** Find angle between **a** = (3, 4) and **b** = (5, 0).
- a · b = 15 + 0 = 15
- |a| = 5, |b| = 5
- cos θ = 15/25 = 0.6 → θ = 53.13°

---

## 10. Vector Proof Techniques

**Proving midpoints, parallelograms, collinearity:**

**Example:** ABCD is a parallelogram if AB→ = DC→

**Proof that midpoints form a parallelogram:**
Let M, N be midpoints of AC and BD. Show MN→ = 0 for rhombus.

---

## 11. Vectors in 3D

**a** = (a₁, a₂, a₃) = a₁**i** + a₂**j** + a₃**k**

**|a|** = √(a₁² + a₂² + a₃²)

Operations work the same component-wise.

---

## 12. Applications of Vectors

**Velocity vectors:** The actual velocity = own velocity + wind/current velocity

**Example:** A boat travels at (4, 0) km/h relative to water. Current is (1, 2) km/h. Find actual velocity.
- Actual = (4+1, 0+2) = (5, 2) km/h
- Speed = √(25+4) = √29 ≈ 5.39 km/h

---

## Summary Table

| Operation | Formula |
|-----------|---------|
| Magnitude | |a| = √(a₁²+a₂²) |
| Unit vector | â = a/|a| |
| Addition | (a₁+b₁, a₂+b₂) |
| Scalar mult | (ka₁, ka₂) |
| Dot product | a₁b₁+a₂b₂ |
| Angle | cos θ = (a·b)/(|a||b|) |
| Section (m:n) | (n·a + m·b)/(m+n) |
| AB vector | b - a (position vectors) |
' WHERE id = 'b1000001-0000-0000-0000-000000000009';

UPDATE topics SET content = '# Number Bases and Sets

## PART A: NUMBER BASES

### 1. Place Value System

Our everyday number system is **base 10 (denary)**. Each position represents a power of 10.

For any base b, the digits used are 0 to (b-1).

| Base | Name | Digits Used |
|------|------|------------|
| 2 | Binary | 0, 1 |
| 5 | Quinary | 0-4 |
| 8 | Octal | 0-7 |
| 10 | Denary | 0-9 |
| 16 | Hexadecimal | 0-9, A-F |

---

### 2. Converting FROM Base 10 TO Another Base

**Method:** Repeatedly divide by the new base; remainders (bottom to top) give the answer.

**Example 1:** Convert 47 to base 2
- 47 ÷ 2 = 23 R **1**
- 23 ÷ 2 = 11 R **1**
- 11 ÷ 2 = 5 R **1**
- 5 ÷ 2 = 2 R **1**
- 2 ÷ 2 = 1 R **0**
- 1 ÷ 2 = 0 R **1**
- Read remainders bottom to top: **101111₂**

**Example 2:** Convert 185 to base 8
- 185 ÷ 8 = 23 R **1**
- 23 ÷ 8 = 2 R **7**
- 2 ÷ 8 = 0 R **2**
- Answer: **271₈**

---

### 3. Converting FROM Another Base TO Base 10

**Method:** Multiply each digit by its place value (base^position) and add.

**Example 1:** Convert 1011₂ to base 10
= 1×2³ + 0×2² + 1×2¹ + 1×2⁰
= 8 + 0 + 2 + 1 = **11**

**Example 2:** Convert 3214₅ to base 10
= 3×5³ + 2×5² + 1×5¹ + 4×5⁰
= 375 + 50 + 5 + 4 = **434**

---

### 4. Converting Between Non-Base-10 Bases

**Method:** Convert first to base 10, then to the target base.

**Example:** Convert 101₂ to base 5
- 101₂ to base 10: 4 + 0 + 1 = 5
- 5 to base 5: 5 ÷ 5 = 1 R 0, then 1 ÷ 5 = 0 R 1 → **10₅**

---

### 5. Arithmetic in Other Bases

#### Addition in Base 2
Rules: 0+0=0, 0+1=1, 1+0=1, 1+1=10 (write 0, carry 1), 1+1+1=11

**Example:** 1011₂ + 1101₂
```
  1011
+ 1101
------
 11000
```
= 11000₂ (check: 11 + 13 = 24 ✓)

#### Subtraction in Base 2
**Example:** 1101₂ - 1011₂
```
  1101
- 1011
------
  0010
```
= 10₂ (check: 13 - 11 = 2 ✓)

#### Multiplication in Base 2
Similar to base 10; products only 0 or 1.

---

### 6. Special Conversion Shortcut: Binary ↔ Octal
Group binary digits in sets of 3 from right:

**Example:** 101110₂ = 101 110 = 5 6₈ = **56₈**

---

## PART B: SETS

### 7. Basic Set Terminology

A **set** is a well-defined collection of distinct objects called **elements** or **members**.

**Notation:** A = {1, 2, 3, 4}

| Symbol | Meaning |
|--------|---------|
| ∈ | is an element of |
| ∉ | is not an element of |
| ⊂ | is a subset of |
| ⊄ | is not a subset of |
| ∩ | intersection |
| ∪ | union |
| A'' | complement of A |
| ∅ or {} | empty set |
| ε or U | universal set |
| n(A) | number of elements in A |

---

### 8. Types of Sets

- **Empty set (∅):** Contains no elements
- **Singleton:** Contains exactly one element
- **Finite set:** Has a countable number of elements
- **Infinite set:** Has uncountably many elements
- **Universal set (ε):** Contains all elements under consideration
- **Disjoint sets:** A ∩ B = ∅ (no common elements)
- **Equal sets:** A = B (same elements)
- **Equivalent sets:** n(A) = n(B) (same number of elements)

---

### 9. Subsets

B ⊆ A if every element of B is in A.

**Number of subsets** of a set with n elements = 2ⁿ

**Example:** A = {1, 2, 3}; subsets = 2³ = 8: ∅, {1}, {2}, {3}, {1,2}, {1,3}, {2,3}, {1,2,3}

---

### 10. Set Operations

#### Union (A ∪ B)
All elements in A OR B (or both).

#### Intersection (A ∩ B)
Elements in BOTH A AND B.

#### Complement (A'')
Elements in the universal set NOT in A.

#### Difference (A - B or A\B)
Elements in A but NOT in B.

**Example:** ε = {1-10}, A = {1,2,3,4,5}, B = {3,4,5,6,7}
- A ∪ B = {1,2,3,4,5,6,7}
- A ∩ B = {3,4,5}
- A'' = {6,7,8,9,10}
- A - B = {1,2}

---

### 11. Venn Diagrams

Circles within a rectangle (universal set) represent sets.
Overlapping regions show intersections.

**Key regions in two-set Venn diagram:**
- Only in A: A - B
- Only in B: B - A
- In both: A ∩ B
- In neither: (A ∪ B)''

---

### 12. De Morgan''s Laws

- **(A ∪ B)'' = A'' ∩ B''** (Complement of union = intersection of complements)
- **(A ∩ B)'' = A'' ∪ B''** (Complement of intersection = union of complements)

---

### 13. Set Formula for Two Sets

**n(A ∪ B) = n(A) + n(B) - n(A ∩ B)**

**For three sets:**
**n(A∪B∪C) = n(A)+n(B)+n(C) - n(A∩B) - n(B∩C) - n(A∩C) + n(A∩B∩C)**

---

### 14. Worked Problems

**Problem 1:** In a class of 40 students, 25 study Maths, 20 study Science, and 10 study both. How many study neither?
- n(M ∪ S) = 25 + 20 - 10 = 35
- Neither = 40 - 35 = **5**

**Problem 2:** In a survey of 100 people: 60 like tea, 50 like coffee, 30 like both. How many like at least one?
- n(T ∪ C) = 60 + 50 - 30 = **80**

**Problem 3:** In a group of 50, 20 like only A, 15 like only B, 10 like both A and B. How many like neither?
- n(A) = 30, n(B) = 25, n(A∩B) = 10
- n(A∪B) = 30+25-10 = 45
- Neither = 50 - 45 = **5**

---

## Summary Tables

| Concept | Formula/Rule |
|---------|-------------|
| Base n→10 | Multiply digits × base^position |
| Base 10→n | Divide repeatedly, read remainders upward |
| Subsets | 2ⁿ for n-element set |
| n(A∪B) | n(A)+n(B)-n(A∩B) |
| De Morgan''s | (A∪B)''=A''∩B'' |
| Binary addition | 1+1=10 (carry 1) |
' WHERE id = 'b1000001-0000-0000-0000-000000000010';
