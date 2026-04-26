/*
  # Comprehensive Mathematics Notes - Topics 1 to 5

  Upgrades the following Mathematics topics with deeply detailed, exam-ready notes:
  1. Algebra: Equations and Inequalities
  2. Geometry: Circles and Theorems
  3. Statistics and Probability
  4. Numbers: Indices and Logarithms
  5. Trigonometry

  Each topic now includes:
  - Full concept explanations with definitions
  - All key formulas with derivations
  - Worked examples (WASSCE-style)
  - Common mistakes and how to avoid them
  - Quick-reference summary tables
*/

UPDATE topics SET content = '# Algebra: Equations and Inequalities

## 1. Linear Equations

A **linear equation** has degree 1 (highest power of the variable is 1).

**Standard form:** ax + b = c

**Solving steps:**
1. Clear fractions by multiplying every term by the LCM of denominators
2. Expand brackets
3. Collect like terms (variables on one side, constants on the other)
4. Divide both sides by the coefficient of the variable

**Example 1:** Solve 3x - 7 = 11
- 3x = 11 + 7 = 18
- x = 6

**Example 2:** Solve (2x + 1)/3 - (x - 2)/4 = 2
- Multiply through by 12: 4(2x+1) - 3(x-2) = 24
- 8x + 4 - 3x + 6 = 24
- 5x + 10 = 24 → 5x = 14 → x = 2.8

---

## 2. Simultaneous Linear Equations

Two equations, two unknowns solved together.

### Method 1: Elimination
Make coefficients of one variable equal, then add or subtract equations.

**Example:** Solve 2x + 3y = 13 and 4x - y = 5
- Multiply second equation by 3: 12x - 3y = 15
- Add to first: 14x = 28 → x = 2
- Substitute: 2(2) + 3y = 13 → 3y = 9 → y = 3
- **Solution:** x = 2, y = 3

### Method 2: Substitution
Express one variable in terms of the other, substitute into the second equation.

**Example:** Solve x + 2y = 8 and 3x - y = 3
- From first: x = 8 - 2y
- Substitute: 3(8 - 2y) - y = 3 → 24 - 6y - y = 3 → -7y = -21 → y = 3
- x = 8 - 6 = 2

### Method 3: Graphical
Plot both lines; the intersection is the solution.

---

## 3. Quadratic Equations (Brief — see Topic 15 for full treatment)

**Standard form:** ax² + bx + c = 0

**Methods:**
1. **Factorisation:** Find two numbers that multiply to ac and add to b
2. **Completing the square:** ax² + bx = -c → x² + (b/a)x + (b/2a)² = -c/a + (b/2a)²
3. **Quadratic formula:** x = (-b ± √(b² - 4ac)) / 2a

**Discriminant (b² - 4ac):**
- > 0: two distinct real roots
- = 0: one repeated real root
- < 0: no real roots (complex roots)

---

## 4. Linear Inequalities

**Rules:**
- Add or subtract the same value to both sides ✓
- Multiply or divide both sides by a positive number ✓
- Multiply or divide both sides by a **negative number — REVERSE the inequality sign** ✗→✓

**Example 1:** Solve 3x - 5 > 7
- 3x > 12 → x > 4
- Number line: open circle at 4, arrow to the right

**Example 2:** Solve -2x + 3 ≤ 9
- -2x ≤ 6 → x ≥ -3 (sign reverses when dividing by -2)

**Example 3:** Solve -1 < 2x + 3 ≤ 7
- Subtract 3: -4 < 2x ≤ 4
- Divide by 2: -2 < x ≤ 2
- Solution set: {x: -2 < x ≤ 2}

---

## 5. Simultaneous Linear and Quadratic Inequalities

To find values satisfying both:
1. Solve each inequality separately
2. Find the intersection of the solution sets

**Example:** Find values of x satisfying both x > 1 and x < 5
- Solution: 1 < x < 5

---

## 6. Variation Equations (as Algebraic Equations)

**Direct:** y = kx → k = y/x (constant)
**Inverse:** y = k/x → k = xy (constant)
**Joint:** y = kxz

---

## 7. Simultaneous Equations with One Linear, One Quadratic

**Example:** Solve y = 2x + 1 and y = x² - 3x + 5
- Set equal: 2x + 1 = x² - 3x + 5
- x² - 5x + 4 = 0
- (x-1)(x-4) = 0 → x = 1 or x = 4
- y = 3 or y = 9

---

## 8. Word Problems Involving Equations

**Key strategy:**
1. Define variables clearly
2. Set up equation(s) from the problem
3. Solve and interpret results

**Example:** The sum of two numbers is 20. Their difference is 4. Find them.
- x + y = 20, x - y = 4
- Adding: 2x = 24 → x = 12, y = 8

---

## 9. Change of Subject of a Formula

**Example 1:** Make r the subject of A = πr²
- r² = A/π → r = √(A/π)

**Example 2:** Make u the subject of v² = u² + 2as
- u² = v² - 2as → u = √(v² - 2as)

**Example 3:** Make x the subject of y = (x + 2)/(x - 1)
- y(x-1) = x + 2
- yx - y = x + 2
- yx - x = y + 2
- x(y-1) = y + 2
- x = (y+2)/(y-1)

---

## 10. Common Mistakes to Avoid

| Mistake | Correct Approach |
|---------|-----------------|
| Not flipping inequality when dividing by negative | Always reverse sign |
| Arithmetic errors when eliminating | Check by substituting back |
| Wrong sign when transposing | Use balanced equation method |
| Forgetting ± in square root | Both positive and negative roots |

---

## Summary of Key Formulas

| Concept | Formula |
|---------|---------|
| Quadratic formula | x = (-b ± √(b²-4ac))/2a |
| Discriminant | Δ = b² - 4ac |
| Change of subject | Isolate target variable step by step |
| Linear inequality rule | Reverse sign when × or ÷ by negative |
' WHERE id = 'b1000001-0000-0000-0000-000000000001';

UPDATE topics SET content = '# Geometry: Circles and Theorems

## 1. Basic Circle Terminology

| Term | Definition |
|------|-----------|
| Centre | The fixed point equidistant from all points on the circle |
| Radius (r) | Distance from centre to any point on the circle |
| Diameter (d) | Longest chord; d = 2r |
| Chord | A line segment joining two points on the circle |
| Arc | Part of the circumference |
| Sector | Region bounded by two radii and an arc |
| Segment | Region bounded by a chord and an arc |
| Tangent | A line touching the circle at exactly one point |
| Secant | A line crossing the circle at two points |

---

## 2. Circle Theorems (ALL must be memorised)

### Theorem 1: Angle at Centre
**The angle subtended by an arc at the centre is twice the angle subtended at any point on the remaining circumference.**

∠AOB = 2 × ∠ACB (where O is centre, C is on the major arc)

**Example:** If ∠ACB = 35°, then ∠AOB = 70°

---

### Theorem 2: Angle in a Semicircle
**The angle in a semicircle is 90°.**

If AB is a diameter, then ∠ACB = 90° for any point C on the circle.

**WASSCE Tip:** Look for diameter + angle at circumference → it''s always 90°.

---

### Theorem 3: Angles in the Same Segment
**Angles subtended by the same arc at the circumference are equal.**

∠ACB = ∠ADB (both stand on arc AB, on the same side)

---

### Theorem 4: Cyclic Quadrilateral
**Opposite angles of a cyclic quadrilateral are supplementary (sum to 180°).**

∠A + ∠C = 180°
∠B + ∠D = 180°

**Example:** If ∠A = 110°, then ∠C = 70°

---

### Theorem 5: Exterior Angle of Cyclic Quadrilateral
**The exterior angle of a cyclic quadrilateral equals the interior opposite angle.**

---

### Theorem 6: Tangent-Radius Theorem
**The tangent to a circle at a point is perpendicular to the radius at that point.**

If PT is a tangent and OP is the radius at P, then ∠OPT = 90°

---

### Theorem 7: Tangents from External Point
**Two tangents drawn from an external point to a circle are equal in length.**

If PA and PB are tangents from P: PA = PB

Also: ∠OAP = ∠OBP = 90°, and OP bisects ∠APB

---

### Theorem 8: Alternate Segment Theorem (Tangent-Chord Angle)
**The angle between a tangent and a chord equals the angle in the alternate segment.**

If TPA is a tangent at P and PQ is a chord, then:
∠TPQ = ∠QRP (where R is in the alternate segment)

---

### Theorem 9: Chord Properties
- The perpendicular from the centre to a chord bisects the chord.
- Equal chords are equidistant from the centre.
- The perpendicular bisector of a chord passes through the centre.

---

### Theorem 10: Intersecting Chords
**When two chords AB and CD intersect at P inside the circle:**
PA × PB = PC × PD

**When two secants are drawn from an external point P:**
PA × PB = PC × PD

**Tangent-Secant relationship:**
PT² = PA × PB (where PT is tangent, PAB is secant)

---

## 3. Arc Length and Sector Area

**Arc Length:** L = (θ/360) × 2πr = θπr/180 (θ in degrees)

**Sector Area:** A = (θ/360) × πr²

**Segment Area:** Area of sector - Area of triangle
= (θ/360)πr² - (1/2)r²sinθ

**Example:** A sector of radius 7 cm has angle 120°. Find arc length and area.
- Arc = (120/360) × 2π(7) = (1/3)(14π) = 14π/3 ≈ 14.66 cm
- Area = (120/360) × π(7²) = (1/3)(49π) = 49π/3 ≈ 51.31 cm²

---

## 4. Angle Properties of Triangles (used with circle theorems)

- Sum of angles in triangle = 180°
- Isoceles triangle: base angles equal
- Exterior angle = sum of two non-adjacent interior angles

---

## 5. Angles in Polygons

**Sum of interior angles** = (n - 2) × 180° where n = number of sides

**Each interior angle of regular polygon** = (n-2) × 180° / n

**Each exterior angle of regular polygon** = 360° / n

| Polygon | Sides | Sum of Interior Angles | Each Interior Angle |
|---------|-------|----------------------|---------------------|
| Triangle | 3 | 180° | 60° |
| Quadrilateral | 4 | 360° | 90° |
| Pentagon | 5 | 540° | 108° |
| Hexagon | 6 | 720° | 120° |
| Octagon | 8 | 1080° | 135° |

---

## 6. Worked Exam-Style Examples

**Example 1:** O is the centre. ∠CAB = 25°. Find ∠COB.
- ∠CAB is angle at circumference, ∠COB is at centre (same arc CB)
- ∠COB = 2 × 25° = 50°

**Example 2:** ABCD is a cyclic quadrilateral. ∠DAB = 75°, ∠ABC = 110°. Find ∠BCD.
- ∠DAB + ∠BCD = 180° → ∠BCD = 105°

**Example 3:** PT is a tangent at T, PQ is a secant. PT = 6 cm, PQ = 9 cm. Find PX (where X is on the circle).
- PT² = PX × PQ → 36 = PX × 9 → PX = 4 cm

---

## 7. Common Mistakes

| Mistake | Correction |
|---------|-----------|
| Confusing angle at centre vs circumference | Centre = 2 × circumference angle |
| Forgetting tangent ⊥ radius | Always 90° at point of contact |
| Applying cyclic quad theorem to non-cyclic shapes | Check all 4 points lie on circle |
| Alternate segment theorem direction | Angle in segment = angle between tangent and chord |
' WHERE id = 'b1000001-0000-0000-0000-000000000002';

UPDATE topics SET content = '# Statistics and Probability

## PART A: STATISTICS

### 1. Types of Data

| Type | Description | Example |
|------|------------|---------|
| Discrete | Countable, exact values | Number of students, goals scored |
| Continuous | Measured, can take any value in a range | Height, weight, temperature |
| Qualitative | Non-numerical (categories) | Colour, gender, grade |
| Quantitative | Numerical | Marks scored, age |

---

### 2. Frequency Tables

**Ungrouped data:** List each value with its frequency.

**Grouped data:** Values are placed in class intervals.

**Cumulative frequency:** Running total of frequencies from the start.

**Example (Ungrouped):**
| Score | Frequency | Cumulative Freq |
|-------|-----------|----------------|
| 10 | 3 | 3 |
| 20 | 7 | 10 |
| 30 | 5 | 15 |
| 40 | 5 | 20 |

---

### 3. Measures of Central Tendency

#### Mean
**Ungrouped:** x̄ = Σx / n (sum of all values ÷ number of values)

**Grouped:** x̄ = Σ(fx) / Σf (where x = class midpoint, f = frequency)

**Example:** Find mean of 5, 8, 12, 7, 3
- x̄ = (5+8+12+7+3)/5 = 35/5 = 7

#### Median
The middle value when data is ordered.
- Odd n: median = ((n+1)/2)th value
- Even n: median = average of (n/2)th and (n/2 + 1)th values

**From grouped data (interpolation):**
Median = L + [(n/2 - F)/f] × h
where L = lower class boundary of median class, F = cumulative frequency before median class, f = frequency of median class, h = class width

#### Mode
The value that appears most often. For grouped data, it''s the modal class (class with highest frequency).

**Modal class midpoint** can be estimated using:
Mode ≈ L + [d₁/(d₁+d₂)] × h
where d₁ = excess frequency above previous class, d₂ = excess frequency above next class

---

### 4. Measures of Dispersion

#### Range
Range = Maximum value - Minimum value

#### Mean Deviation
MD = Σ|x - x̄| / n

#### Variance
σ² = Σ(x - x̄)² / n = Σx²/n - (x̄)²

#### Standard Deviation
σ = √variance = √[Σ(x - x̄)²/n]

**Example:** Data: 4, 6, 8, 10, 12. Find variance and SD.
- Mean = 40/5 = 8
- Deviations: -4, -2, 0, 2, 4
- Squared deviations: 16, 4, 0, 4, 16 → Sum = 40
- Variance = 40/5 = 8
- SD = √8 = 2√2 ≈ 2.83

#### Quartiles and Interquartile Range
- Q1 = Lower quartile (25th percentile)
- Q2 = Median (50th percentile)
- Q3 = Upper quartile (75th percentile)
- IQR = Q3 - Q1 (measures spread of middle 50%)
- Semi-IQR = IQR/2

---

### 5. Statistical Graphs

#### Histogram
- Used for continuous grouped data
- Y-axis: frequency density = frequency / class width
- Bars are adjacent (no gaps)

#### Frequency Polygon
- Connect midpoints of histogram bars
- Extend to midpoints of empty classes on each end

#### Cumulative Frequency Curve (Ogive)
- Plot cumulative frequency against upper class boundaries
- S-shaped curve
- Read off: median (at n/2), Q1 (at n/4), Q3 (at 3n/4)

#### Bar Chart
- Used for discrete or qualitative data
- Gaps between bars

#### Pie Chart
- Each sector angle = (frequency/total) × 360°

---

### 6. Interpreting Data

**Skewness:**
- Positively skewed: mode < median < mean (tail to the right)
- Negatively skewed: mean < median < mode (tail to the left)
- Symmetrical: mean = median = mode

---

## PART B: PROBABILITY

### 7. Basic Probability

**Definition:** P(E) = number of favourable outcomes / total possible outcomes

**Range:** 0 ≤ P(E) ≤ 1
- P(impossible event) = 0
- P(certain event) = 1
- P(E) + P(E'') = 1 → P(not E) = 1 - P(E)

---

### 8. Types of Events

| Type | Description |
|------|------------|
| Mutually exclusive | Cannot both happen: P(A ∩ B) = 0 |
| Independent | Occurrence of one does not affect the other |
| Exhaustive | At least one of them must occur |
| Complementary | P(A) + P(A'') = 1 |

---

### 9. Addition Rule

**For any events A and B:**
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)

**For mutually exclusive events:**
P(A ∪ B) = P(A) + P(B)

---

### 10. Multiplication Rule

**For independent events:**
P(A ∩ B) = P(A) × P(B)

**For dependent events:**
P(A ∩ B) = P(A) × P(B|A)

**Conditional Probability:**
P(B|A) = P(A ∩ B) / P(A)

---

### 11. Tree Diagrams

Used to list all outcomes of sequential events. Multiply probabilities along branches, add probabilities of branches meeting the required outcome.

**Example:** A bag has 3 red and 2 blue balls. Two drawn without replacement. Find P(both red).
- P(1st red) = 3/5
- P(2nd red | 1st red) = 2/4 = 1/2
- P(both red) = 3/5 × 1/2 = 3/10

---

### 12. Permutations and Combinations

**Factorial:** n! = n × (n-1) × (n-2) × ... × 1

**Permutations (order matters):**
ⁿPᵣ = n! / (n-r)!

**Combinations (order does not matter):**
ⁿCᵣ = n! / [r!(n-r)!]

**Example 1:** How many ways can 4 people be seated in a row from 6?
- ⁶P₄ = 6!/(6-4)! = 720/2 = 360

**Example 2:** How many ways to choose 3 from 8?
- ⁸C₃ = 8!/(3!×5!) = 56

---

### 13. Probability with Combinations

**Example:** Find P(choosing 2 red cards from a standard deck of 52)
- Favourable: ²⁶C₂ = 325
- Total: ⁵²C₂ = 1326
- P = 325/1326 = 25/102

---

### 14. Common Exam Patterns

- Find mean, median, mode from frequency table
- Construct and read cumulative frequency curve
- Calculate standard deviation from small data set
- Tree diagram for two-stage probability
- P(at least one) = 1 - P(none)

---

## Summary Tables

| Measure | Formula |
|---------|---------|
| Mean (ungrouped) | Σx/n |
| Mean (grouped) | Σfx/Σf |
| Variance | Σ(x-x̄)²/n |
| SD | √variance |
| P(E) | favourable/total |
| P(A or B) | P(A)+P(B)-P(A∩B) |
| P(A and B) independent | P(A)×P(B) |
| ⁿCᵣ | n!/[r!(n-r)!] |
| ⁿPᵣ | n!/(n-r)! |
' WHERE id = 'b1000001-0000-0000-0000-000000000003';

UPDATE topics SET content = '# Numbers: Indices and Logarithms

## PART A: INDICES (EXPONENTS)

### 1. Laws of Indices

For any base a (a ≠ 0) and integers m, n:

| Law | Statement | Example |
|-----|-----------|---------|
| Multiplication | aᵐ × aⁿ = aᵐ⁺ⁿ | 2³ × 2⁴ = 2⁷ = 128 |
| Division | aᵐ ÷ aⁿ = aᵐ⁻ⁿ | 3⁵ ÷ 3² = 3³ = 27 |
| Power of a power | (aᵐ)ⁿ = aᵐⁿ | (2³)² = 2⁶ = 64 |
| Power of product | (ab)ⁿ = aⁿbⁿ | (2×3)² = 4×9 = 36 |
| Power of fraction | (a/b)ⁿ = aⁿ/bⁿ | (2/3)³ = 8/27 |
| Zero exponent | a⁰ = 1 | 7⁰ = 1 |
| Negative exponent | a⁻ⁿ = 1/aⁿ | 2⁻³ = 1/8 |
| Fractional exponent | aᵐ/ⁿ = ⁿ√(aᵐ) | 8²/³ = (³√8)² = 4 |

---

### 2. Simplifying Expressions with Indices

**Example 1:** Simplify (2³ × 2⁵) / 2⁴
= 2⁽³⁺⁵⁾ / 2⁴ = 2⁸/2⁴ = 2⁴ = 16

**Example 2:** Simplify (27)²/³
= (3³)²/³ = 3² = 9

**Example 3:** Simplify (16x⁴)^(3/4)
= 16^(3/4) × x^(4×3/4) = (2⁴)^(3/4) × x³ = 2³ × x³ = 8x³

---

### 3. Solving Exponential Equations

**Strategy:** Express both sides as powers of the same base, then equate exponents.

**Example 1:** Solve 2^(x+1) = 16
- 2^(x+1) = 2⁴ → x+1 = 4 → x = 3

**Example 2:** Solve 9^x = 27
- (3²)^x = 3³ → 3^(2x) = 3³ → 2x = 3 → x = 3/2

**Example 3:** Solve 4^x - 5(2^x) + 4 = 0
- Let y = 2^x: y² - 5y + 4 = 0 → (y-1)(y-4) = 0
- y = 1: 2^x = 1 = 2⁰ → x = 0
- y = 4: 2^x = 4 = 2² → x = 2

---

### 4. Standard Form (Scientific Notation)

A number written as a × 10ⁿ where 1 ≤ a < 10 and n is an integer.

**Examples:**
- 45,000 = 4.5 × 10⁴
- 0.00037 = 3.7 × 10⁻⁴
- 6.02 × 10²³ (Avogadro''s number)

**Operations:**
- (3 × 10⁴) × (2 × 10³) = 6 × 10⁷
- (8 × 10⁵) ÷ (4 × 10²) = 2 × 10³

---

## PART B: LOGARITHMS

### 5. Definition and Relationship to Indices

**log_a(x) = y ⟺ aʸ = x**

The logarithm is the **exponent** to which the base must be raised to get x.

| Logarithm | Equivalent Index Form |
|-----------|----------------------|
| log₂(8) = 3 | 2³ = 8 |
| log₁₀(1000) = 3 | 10³ = 1000 |
| log₃(1/9) = -2 | 3⁻² = 1/9 |
| log_a(1) = 0 | a⁰ = 1 |
| log_a(a) = 1 | a¹ = a |

---

### 6. Laws of Logarithms

| Law | Formula | Example |
|-----|---------|---------|
| Product | log(AB) = log A + log B | log(4×25) = log 4 + log 25 |
| Quotient | log(A/B) = log A - log B | log(100/10) = log 100 - log 10 |
| Power | log(Aⁿ) = n × log A | log(8) = 3 log 2 |
| Base change | log_b(A) = log A / log b | log₂(7) = log 7/log 2 |

---

### 7. Common (Base 10) and Natural Logarithms

- **log** or **log₁₀**: common logarithm
- **ln** or **log_e**: natural logarithm, base e ≈ 2.718

**Using tables or calculator:**
- log 2 ≈ 0.3010
- log 3 ≈ 0.4771
- log 5 ≈ 0.6990
- log 7 ≈ 0.8451

---

### 8. Simplifying Logarithmic Expressions

**Example 1:** Simplify log 8 + log 125 - log 10 (all base 10)
= log(8 × 125 / 10) = log(1000) = log(10³) = 3

**Example 2:** Given log 2 = 0.3010, find log 32
= log(2⁵) = 5 × 0.3010 = 1.505

**Example 3:** Simplify 2log3 + log4 - log36
= log(3²) + log 4 - log 36 = log(9 × 4/36) = log 1 = 0

---

### 9. Solving Logarithmic Equations

**Example 1:** Solve log₂(x) = 5
- x = 2⁵ = 32

**Example 2:** Solve log(x) + log(x-3) = 1 (base 10)
- log[x(x-3)] = 1 → x(x-3) = 10
- x² - 3x - 10 = 0 → (x-5)(x+2) = 0
- x = 5 (reject x = -2 since log of negative undefined)

**Example 3:** Solve 3^(x+1) = 45 using logs
- (x+1)log 3 = log 45
- x+1 = log 45/log 3 = 1.6532/0.4771 ≈ 3.465
- x ≈ 2.465

---

### 10. Antilogarithms

If log x = n, then x = 10ⁿ (antilog of n)

**Example:** If log x = 2.7, then x = 10^2.7 ≈ 501.2

---

### 11. Logarithms in Real Life

- Measuring earthquake intensity (Richter scale)
- Sound intensity (decibels)
- pH scale (acidity)
- Compound interest calculations
- Population growth models

---

## Summary Table

| Concept | Formula/Rule |
|---------|-------------|
| aᵐ × aⁿ | aᵐ⁺ⁿ |
| aᵐ ÷ aⁿ | aᵐ⁻ⁿ |
| a⁰ | 1 |
| a⁻ⁿ | 1/aⁿ |
| aᵐ/ⁿ | ⁿ√(aᵐ) |
| log_a(x) = y | aʸ = x |
| log(AB) | log A + log B |
| log(A/B) | log A - log B |
| log(Aⁿ) | n·log A |
| Change of base | log_b A = log A/log b |
' WHERE id = 'b1000001-0000-0000-0000-000000000004';

UPDATE topics SET content = '# Trigonometry

## 1. Trigonometric Ratios in Right-Angled Triangles

For angle θ in a right-angled triangle:

| Ratio | Definition | Mnemonic |
|-------|-----------|---------|
| sin θ | Opposite / Hypotenuse | SOH |
| cos θ | Adjacent / Hypotenuse | CAH |
| tan θ | Opposite / Adjacent | TOA |

**Reciprocal ratios:**
- cosec θ = 1/sin θ
- sec θ = 1/cos θ
- cot θ = 1/tan θ = cos θ/sin θ

---

## 2. Special Angles — Exact Values (Must memorise)

| Angle | sin | cos | tan |
|-------|-----|-----|-----|
| 0° | 0 | 1 | 0 |
| 30° | 1/2 | √3/2 | 1/√3 |
| 45° | 1/√2 | 1/√2 | 1 |
| 60° | √3/2 | 1/2 | √3 |
| 90° | 1 | 0 | undefined |

**Memory trick for sin:** 0, 1/2, 1/√2, √3/2, 1 → think √0/2, √1/2, √2/2, √3/2, √4/2

---

## 3. CAST Rule — Signs in Four Quadrants

| Quadrant | Angles | Positive Ratios |
|----------|--------|----------------|
| 1st (A) | 0°–90° | All (sin, cos, tan) |
| 2nd (S) | 90°–180° | Sin only |
| 3rd (T) | 180°–270° | Tan only |
| 4th (C) | 270°–360° | Cos only |

**Example:** sin 150° = sin(180° - 30°) = sin 30° = 1/2 (2nd quadrant, sin positive)

**Example:** cos 240° = cos(180° + 60°) = -cos 60° = -1/2 (3rd quadrant, cos negative)

**Example:** tan 315° = tan(360° - 45°) = -tan 45° = -1 (4th quadrant, tan negative)

---

## 4. Complementary and Supplementary Angles

- sin(90° - θ) = cos θ
- cos(90° - θ) = sin θ
- tan(90° - θ) = cot θ
- sin(180° - θ) = sin θ
- cos(180° - θ) = -cos θ
- tan(180° - θ) = -tan θ

---

## 5. Trigonometric Identities

### Pythagorean Identities
- **sin²θ + cos²θ = 1** (most important)
- 1 + tan²θ = sec²θ
- 1 + cot²θ = cosec²θ

**Example:** If sin θ = 3/5, find cos θ and tan θ
- cos²θ = 1 - (3/5)² = 1 - 9/25 = 16/25 → cos θ = 4/5
- tan θ = sin θ/cos θ = (3/5)/(4/5) = 3/4

---

## 6. Graphs of Trigonometric Functions

### y = sin x
- Period: 360° (or 2π)
- Range: -1 ≤ y ≤ 1
- Zeros at: 0°, 180°, 360°
- Maximum: 1 at x = 90°
- Minimum: -1 at x = 270°

### y = cos x
- Period: 360°
- Range: -1 ≤ y ≤ 1
- Zeros at: 90°, 270°
- Maximum: 1 at x = 0° and 360°
- Minimum: -1 at x = 180°

### y = tan x
- Period: 180°
- Range: all real numbers
- Undefined at: 90°, 270°
- Zero at: 0°, 180°, 360°

### Transformations
**y = a sin(bx + c) + d**
- a = amplitude
- Period = 360°/b
- c = phase shift (horizontal)
- d = vertical shift

---

## 7. Sine Rule

**a/sin A = b/sin B = c/sin C**

(Or equivalently: sin A/a = sin B/b = sin C/c)

**Use the Sine Rule when you know:**
- Two angles and one side (AAS or ASA)
- Two sides and a non-included angle (SSA — ambiguous case)

**Example:** In triangle ABC, a = 7, A = 45°, B = 60°. Find b.
- b/sin 60° = 7/sin 45°
- b = 7 × sin 60° / sin 45° = 7 × (√3/2) / (1/√2) = 7√3/√2 × √2 = 7√6/2 ≈ 8.57

---

## 8. Cosine Rule

**a² = b² + c² - 2bc·cos A**

(Rearranged to find angle: cos A = (b² + c² - a²) / 2bc)

**Use the Cosine Rule when you know:**
- Three sides (SSS)
- Two sides and the included angle (SAS)

**Example:** Find side c if a = 8, b = 6, C = 50°.
- c² = 8² + 6² - 2(8)(6)cos 50°
- c² = 64 + 36 - 96(0.6428) = 100 - 61.71 = 38.29
- c ≈ 6.19

---

## 9. Area of Triangle Using Trigonometry

**Area = (1/2)ab·sin C**

where a and b are two sides and C is the included angle.

**Example:** Two sides are 10 and 7 with included angle 35°.
- Area = (1/2)(10)(7)sin 35° = 35 × 0.5736 ≈ 20.08 cm²

---

## 10. Angles of Elevation and Depression

- **Angle of elevation:** angle measured **upward** from horizontal to a line of sight
- **Angle of depression:** angle measured **downward** from horizontal to a line of sight

**They are equal (alternate angles when lines are parallel)**

**Example:** From a point 50 m from the base of a building, the angle of elevation of the top is 38°. Find the height.
- tan 38° = h/50 → h = 50 × tan 38° = 50 × 0.7813 ≈ 39.1 m

---

## 11. Bearings (with Trigonometry)

- Bearing is measured **clockwise from North** (000° to 360°)
- Always use 3 digits: N15°E = bearing of 015°

**Example:** A ship sails from A on a bearing of 070° for 80 km to B. How far East of A is B?
- East component = 80 × sin 70° = 80 × 0.9397 ≈ 75.2 km

---

## 12. Solving Trigonometric Equations

**Example 1:** Solve sin x = 0.5 for 0° ≤ x ≤ 360°
- sin⁻¹(0.5) = 30°
- sin positive in Q1 and Q2: x = 30° or x = 180° - 30° = 150°

**Example 2:** Solve cos x = -√3/2 for 0° ≤ x ≤ 360°
- cos⁻¹(√3/2) = 30°, but cos is negative in Q2 and Q3
- x = 180° - 30° = 150° or x = 180° + 30° = 210°

**Example 3:** Solve 2sin²x - sinx - 1 = 0 for 0° ≤ x ≤ 360°
- Let y = sin x: (2y + 1)(y - 1) = 0
- y = -1/2: x = 210° or 330°
- y = 1: x = 90°

---

## 13. 3-D Trigonometry

**General approach:**
1. Identify the triangle needed (look for right angles)
2. Draw it out separately
3. Apply appropriate rule (SOHCAHTOA, Sine Rule, Cosine Rule)

**Important:** The angle of a line with a plane = angle between the line and its projection onto the plane.

---

## Summary Formulas

| Formula | When to Use |
|---------|------------|
| SOH CAH TOA | Right-angled triangles |
| sin²θ + cos²θ = 1 | Proving identities |
| a/sin A = b/sin B | Two angles known |
| a² = b² + c² - 2bc cos A | Two sides and included angle |
| Area = ½ab sin C | Area with two sides + angle |
| CAST diagram | Signs in quadrants |
' WHERE id = 'b1000001-0000-0000-0000-000000000005';
