
/*
  # Further Mathematics Deep Notes: Topics 9-12
  
  Adds comprehensive notes for:
  9. Roots of Polynomial Equations (b1000007-0000-0000-0000-000000000009)
  10. Trigonometric Functions and Identities (b1000007-0000-0000-0000-000000000010)
  11. Sequences and Series FM (9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b)
  12. Coordinate Geometry FM (4960b050-6f4f-4626-9f93-b65e68dbc293)
*/

-- ============================================================
-- TOPIC 9: ROOTS OF POLYNOMIAL EQUATIONS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000009',
'Overview of Polynomial Equations',
'## Roots of Polynomial Equations

A **polynomial equation** of degree n has exactly **n roots** (counting multiplicity, and including complex roots) — this is the **Fundamental Theorem of Algebra**.

In Further Mathematics, we study the deep relationships between the roots and coefficients of polynomials without necessarily finding the roots explicitly.

### What You Will Learn
- Relationships between roots and coefficients (Vieta''s Formulas)
- Forming new equations from given roots
- Symmetric functions of roots
- Transforming roots
- Solving cubic and quartic equations

### Key Insight: Vieta''s Formulas
For ax² + bx + c = 0 with roots α, β:
- α + β = −b/a (sum of roots)
- αβ = c/a (product of roots)

This is just the beginning — these extend to polynomials of any degree!',
'overview', 1),

('b1000007-0000-0000-0000-000000000009',
'Vieta''s Formulas',
'## Vieta''s Formulas

### For a Quadratic: ax² + bx + c = 0 (roots α, β)
- **α + β = −b/a**
- **αβ = c/a**

### For a Cubic: ax³ + bx² + cx + d = 0 (roots α, β, γ)
- **α + β + γ = −b/a** (sum of roots)
- **αβ + βγ + γα = c/a** (sum of products of pairs)
- **αβγ = −d/a** (product of all roots)

### For a Quartic: ax⁴ + bx³ + cx² + dx + e = 0 (roots α, β, γ, δ)
- **α + β + γ + δ = −b/a**
- **αβ + αγ + αδ + βγ + βδ + γδ = c/a**
- **αβγ + αβδ + αγδ + βγδ = −d/a**
- **αβγδ = e/a**

### Memory Aid
The pattern: sum of roots = −(coefficient of second-highest term) / (leading coefficient)

The signs alternate: sum = −b/a, sum of pairs = +c/a, sum of triples = −d/a, product = +e/a (for even degree) or −e/a (for odd degree)',
'definitions', 2),

('b1000007-0000-0000-0000-000000000009',
'Symmetric Functions and Transformations',
'## Symmetric Functions of Roots

Any symmetric function of the roots can be expressed in terms of the elementary symmetric functions (given by Vieta''s formulas). Key identities:

### For quadratic roots α, β:
- α² + β² = (α+β)² − 2αβ
- α³ + β³ = (α+β)³ − 3αβ(α+β)
- α² β² = (αβ)²
- (α−β)² = (α+β)² − 4αβ
- α⁴ + β⁴ = (α²+β²)² − 2α²β²

### For cubic roots α, β, γ:
- α² + β² + γ² = (α+β+γ)² − 2(αβ+βγ+γα)
- α²β² + β²γ² + γ²α² = (αβ+βγ+γα)² − 2αβγ(α+β+γ)
- α³ + β³ + γ³ = (α+β+γ)³ − 3(α+β+γ)(αβ+βγ+γα) + 3αβγ
(This uses Newton''s identity for power sums)

---

## Forming New Equations — Transforming Roots

### Method
If α, β are roots of f(x) = 0, and we want the equation whose roots are some function g(α), g(β):

**Let y = g(x), express x = h(y), substitute into f(x) = 0.**

### Common Transformations

**Roots are 2α, 2β:** Replace x with x/2
**Roots are α+k, β+k:** Replace x with x−k  
**Roots are 1/α, 1/β:** Replace x with 1/x (then multiply through by highest power)
**Roots are α², β²:** Replace x with √x (then isolate the radical)

### Example: Finding Equation with Roots α+2, β+2
If α, β are roots of x² − 5x + 3 = 0, find equation with roots α+2, β+2.

Let y = x + 2, so x = y − 2.
Substitute: (y−2)² − 5(y−2) + 3 = 0
y² − 4y + 4 − 5y + 10 + 3 = 0
**y² − 9y + 17 = 0**',
'explanation', 3),

('b1000007-0000-0000-0000-000000000009',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Symmetric Functions of Quadratic Roots
The equation 2x² − 6x + 3 = 0 has roots α and β. Find:
(a) α + β   (b) αβ   (c) α² + β²   (d) α/β + β/α

**Solutions:**
(a) α + β = 6/2 = **3**
(b) αβ = 3/2 = **3/2**
(c) α² + β² = (α+β)² − 2αβ = 9 − 3 = **6**
(d) α/β + β/α = (α² + β²)/(αβ) = 6/(3/2) = **4**

---

### Example 2: Cubic Roots
x³ − 4x² + 5x − 2 = 0 has roots α, β, γ. Find:
(a) α+β+γ   (b) αβ+βγ+γα   (c) αβγ   (d) α²+β²+γ²

**Solutions:**
(a) α + β + γ = 4
(b) αβ + βγ + γα = 5
(c) αβγ = 2
(d) α²+β²+γ² = (α+β+γ)² − 2(αβ+βγ+γα) = 16 − 10 = **6**

---

### Example 3: Forming New Equation
The roots of x² + 3x + 1 = 0 are α and β. Find the equation with roots α² and β².

**Method:**
Let y = x², so x = √y. Substitute x = √y into x² + 3x + 1 = 0:
y + 3√y + 1 = 0
3√y = −y − 1
Square: 9y = (y+1)² = y² + 2y + 1
y² + 2y + 1 − 9y = 0
**y² − 7y + 1 = 0**

**Verification:** Roots of y² − 7y + 1 = 0:
Sum = 7 = α² + β² = (α+β)² − 2αβ = 9 − 2 = 7 ✓
Product = 1 = α²β² = (αβ)² = 1 ✓

---

### Example 4: Roots with Complex Numbers
Show that if α is a complex root of a real polynomial, then α* is also a root.

**Proof:** Let p(x) = aₙxⁿ + ... + a₀ with aᵢ ∈ ℝ.

If p(α) = 0, take conjugate of both sides:
p(α)* = 0* = 0
aₙ(α*)ⁿ + ... + a₀ = 0 (since aᵢ* = aᵢ for real coefficients)
So **p(α*) = 0** ✓

This means complex roots of real polynomials always come in conjugate pairs.',
'examples', 4),

('b1000007-0000-0000-0000-000000000009',
'Practice Questions',
'## Practice Questions — Roots of Polynomial Equations

### Section A: Vieta''s Formulas
**1.** The roots of 3x² − 7x + 2 = 0 are α and β. Find: (a) α+β  (b) αβ  (c) α²+β²  (d) (α−β)²  (e) 1/α + 1/β

**2.** The roots of x³ + 2x² − 5x + 1 = 0 are p, q, r. Find:
(a) p+q+r  (b) pq+qr+rp  (c) pqr  (d) p²+q²+r²

**3.** If α and β are roots of x² − kx + 4 = 0 and α² + β² = 10, find k.

---

### Section B: Symmetric Functions
**4.** Given roots α, β of 2x² + x − 3 = 0, find:
(a) α³ + β³   (b) α²β + αβ²   (c) (α+1)(β+1)

**5.** The roots of x² − 5x + 2 = 0 are α and β. Find the value of (α+1/β)(β+1/α).

---

### Section C: Forming New Equations
**6.** Given that α and β are roots of x² − 3x + 1 = 0, find the equation with roots:
(a) 2α and 2β
(b) α+2 and β+2
(c) 1/α and 1/β
(d) α² and β²

**7.** α, β, γ are roots of x³ − x + 2 = 0. Find the cubic whose roots are 2α, 2β, 2γ.

---

### Section D: Complex Roots
**8.** One root of x³ − 3x² + 4x − 2 = 0 is x = 1. Find the other roots.

**9.** The equation x⁴ − 2x³ + 6x² − 2x + 5 = 0 has a root 1+2i. Find all four roots.

**10.** Find all roots of x³ − 1 = 0 (cube roots of unity) and verify that their sum is zero.

### Answers
1a. 7/3  1b. 2/3  2d. 14  3. k = ±√18  8. x=1+i, x=1−i  9. 1+2i, 1−2i, 0+i, 0−i (need to verify)',
'practice', 5),

('b1000007-0000-0000-0000-000000000009',
'Summary and Key Formulas',
'## Summary: Roots of Polynomial Equations

### Vieta''s Formulas Quick Reference

| Polynomial | Root Sums |
|---|---|
| ax²+bx+c | α+β=−b/a; αβ=c/a |
| ax³+bx²+cx+d | Σα=−b/a; Σαβ=c/a; αβγ=−d/a |
| ax⁴+bx³+cx²+dx+e | Σα=−b/a; Σαβ=c/a; Σαβγ=−d/a; αβγδ=e/a |

### Key Identities
- α²+β² = (α+β)² − 2αβ
- α³+β³ = (α+β)³ − 3αβ(α+β)
- (α−β)² = (α+β)² − 4αβ
- For cubic: α²+β²+γ² = (Σα)² − 2Σαβ

### Transforming Roots
To get equation with roots f(α), f(β): set y = f(x), solve for x in terms of y, substitute back.

### Important Theorem
Complex roots of REAL polynomials always come in conjugate pairs α and α*.

### Exam Strategy
1. State Vieta''s formulas for given polynomial
2. Express required symmetric function using standard identities
3. Substitute numerical values
4. For new equations: use substitution method, not algebraic guessing',
'content', 6);

-- ============================================================
-- TOPIC 10: TRIGONOMETRIC FUNCTIONS AND IDENTITIES
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000010',
'Overview of Advanced Trigonometry',
'## Trigonometric Functions and Identities

At Further Mathematics level, trigonometry goes far beyond right triangles. You will study:
- The six trigonometric functions and their graphs
- All fundamental identities and how to prove them
- Double angle and half angle formulas
- The R-form (harmonic form): a sin x + b cos x = R sin(x + φ)
- Factor formulas (sum-to-product)
- General solutions of trig equations
- Inverse trigonometric functions

### The Power of Trigonometric Identities
An identity is an equation that is TRUE for all values of the variable (within the domain). Unlike equations, you don''t "solve" identities — you PROVE them by transforming one side into the other.

### The Fundamental Building Block
Everything in trigonometry flows from one identity:
**sin²θ + cos²θ = 1**

By dividing by sin²θ: 1 + cot²θ = cosec²θ
By dividing by cos²θ: tan²θ + 1 = sec²θ',
'overview', 1),

('b1000007-0000-0000-0000-000000000010',
'All Trigonometric Identities',
'## The Complete Identity Arsenal

### Pythagorean Identities (Fundamental)
- **sin²θ + cos²θ = 1**
- **1 + tan²θ = sec²θ**
- **1 + cot²θ = cosec²θ**

### Compound Angle Formulas
- **sin(A±B) = sin A cos B ± cos A sin B**
- **cos(A±B) = cos A cos B ∓ sin A sin B**
- **tan(A±B) = (tan A ± tan B)/(1 ∓ tan A tan B)**

### Double Angle Formulas
- **sin 2A = 2 sin A cos A**
- **cos 2A = cos²A − sin²A = 2cos²A − 1 = 1 − 2sin²A**
- **tan 2A = 2tan A/(1 − tan²A)**

### Half Angle Formulas (from double angle, let A = θ/2)
- sin²(θ/2) = (1 − cos θ)/2
- cos²(θ/2) = (1 + cos θ)/2
- tan(θ/2) = sin θ/(1 + cos θ) = (1 − cos θ)/sin θ

### Triple Angle Formulas
- sin 3A = 3 sin A − 4 sin³A
- cos 3A = 4 cos³A − 3 cos A
- tan 3A = (3tan A − tan³A)/(1 − 3tan²A)

### Factor (Sum-to-Product) Formulas
- sin P + sin Q = 2 sin[(P+Q)/2] cos[(P−Q)/2]
- sin P − sin Q = 2 cos[(P+Q)/2] sin[(P−Q)/2]
- cos P + cos Q = 2 cos[(P+Q)/2] cos[(P−Q)/2]
- cos P − cos Q = −2 sin[(P+Q)/2] sin[(P−Q)/2]

### Product-to-Sum Formulas
- 2 sin A cos B = sin(A+B) + sin(A−B)
- 2 cos A cos B = cos(A−B) + cos(A+B)
- 2 sin A sin B = cos(A−B) − cos(A+B)

### The Auxiliary (R-Form)
**a sin x + b cos x = R sin(x + φ)**

where R = √(a²+b²) and tan φ = b/a

Also: a sin x + b cos x = R cos(x − ψ)
where R = √(a²+b²) and tan ψ = a/b

### t-Substitution (Weierstrass)
Let t = tan(θ/2):
- sin θ = 2t/(1+t²)
- cos θ = (1−t²)/(1+t²)
- tan θ = 2t/(1−t²)',
'definitions', 2),

('b1000007-0000-0000-0000-000000000010',
'Proving Identities and Solving Equations',
'## Proving Trigonometric Identities

### Strategy for Proving Identities
1. Work on ONE side only (usually the more complex side)
2. Use known identities to transform it
3. Until it equals the other side
4. NEVER "cross-multiply" or move terms across the = sign

### Key Techniques
- Replace sin²x + cos²x = 1 (and its variants)
- Express everything in terms of sin and cos
- Factor and simplify
- Multiply by conjugate
- Use double angle formulas strategically

---

## General Solutions of Trig Equations

### General Solutions
For sin x = k (|k| ≤ 1):
**x = arcsin(k) + 360°n or x = 180° − arcsin(k) + 360°n (n ∈ ℤ)**

For cos x = k:
**x = ±arccos(k) + 360°n**

For tan x = k:
**x = arctan(k) + 180°n**

---

## The R-Form in Depth

### Finding Maximum/Minimum
a sin x + b cos x = R sin(x + φ)
- Maximum value = **R** (when sin(x+φ) = 1)
- Minimum value = **−R** (when sin(x+φ) = −1)
- Maximum occurs when x + φ = 90°, i.e., x = 90° − φ

### Solving Equations with R-Form
Example: 3 sin x + 4 cos x = 2
Step 1: R = √(9+16) = 5, tan φ = 4/3, φ = 53.13°
Step 2: 5 sin(x + 53.13°) = 2
Step 3: sin(x + 53.13°) = 0.4
x + 53.13° = 23.58° or 156.42° (within 0° to 360°+53.13°)
x = −29.55° (invalid) or 103.29°

---

## Inverse Trigonometric Functions

### Definitions (Restricted Domains for Inverse to Exist)
- arcsin: domain [−1,1], range [−π/2, π/2]
- arccos: domain [−1,1], range [0, π]
- arctan: domain ℝ, range (−π/2, π/2)

### Key Values
| x | arcsin(x) | arccos(x) | arctan(x) |
|---|---|---|---|
| 0 | 0 | π/2 | 0 |
| 1/2 | π/6 | π/3 | π/6 (tan π/6=1/√3) |
| √2/2 | π/4 | π/4 | π/4 |
| √3/2 | π/3 | π/6 | π/3 |
| 1 | π/2 | 0 | undefined |

### Derivatives
- d/dx(arcsin x) = 1/√(1−x²)
- d/dx(arccos x) = −1/√(1−x²)
- d/dx(arctan x) = 1/(1+x²)',
'explanation', 3),

('b1000007-0000-0000-0000-000000000010',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Proving an Identity
Prove: (1 − cos 2x) / sin 2x ≡ tan x

**LHS** = (1 − cos 2x) / sin 2x

Using cos 2x = 1 − 2sin²x and sin 2x = 2sin x cos x:
= (1 − (1 − 2sin²x)) / (2sin x cos x)
= (2sin²x) / (2sin x cos x)
= sin x / cos x
= **tan x = RHS ✓**

---

### Example 2: R-Form
Express 5 sin x − 12 cos x in the form R sin(x − α).

R sin(x − α) = R sin x cos α − R cos x sin α

Comparing: R cos α = 5, R sin α = 12
R = √(25+144) = √169 = **13**
tan α = 12/5, so α = arctan(12/5) ≈ **67.38°**

So 5 sin x − 12 cos x = **13 sin(x − 67.38°)**

Maximum value = 13, occurring when x = 90° + 67.38° = 157.38°

---

### Example 3: Factor Formula
Prove that sin 5x + sin 3x = 2 sin 4x cos x.

Using sum formula: sin P + sin Q = 2 sin[(P+Q)/2] cos[(P−Q)/2]
P = 5x, Q = 3x:
sin 5x + sin 3x = 2 sin[(5x+3x)/2] cos[(5x−3x)/2]
= 2 sin 4x cos x ✓

---

### Example 4: Solving with Double Angle
Solve cos 2x = sin x + 1 for 0° ≤ x ≤ 360°.

Use cos 2x = 1 − 2sin²x:
1 − 2sin²x = sin x + 1
−2sin²x − sin x = 0
sin x(−2sin x − 1) = 0
sin x = 0 or sin x = −1/2

sin x = 0: x = 0°, 180°, 360°
sin x = −1/2: x = 210°, 330°

**Solutions: x = 0°, 180°, 210°, 330°, 360°**

---

### Example 5: Compound Angle
Find the exact value of sin 75°.

sin 75° = sin(45° + 30°) = sin 45° cos 30° + cos 45° sin 30°
= (√2/2)(√3/2) + (√2/2)(1/2)
= √6/4 + √2/4
= **(√6 + √2)/4**',
'examples', 4),

('b1000007-0000-0000-0000-000000000010',
'Practice Questions',
'## Practice Questions — Trigonometric Functions and Identities

### Section A: Identity Proofs
Prove each identity:

**1.** sin²x / (1 − cos x) ≡ 1 + cos x

**2.** (sin x + cos x)² ≡ 1 + sin 2x

**3.** (1 − cos 2x)/(sin 2x) ≡ tan x

**4.** sec²x − 1 ≡ sin²x/cos²x

**5.** cos 4x ≡ 8cos⁴x − 8cos²x + 1

---

### Section B: Compound Angles
**6.** Find the exact value of: (a) cos 15°  (b) tan 75°  (c) sin 105°

**7.** If sin A = 3/5 and cos B = 5/13 (A, B acute), find sin(A+B) and cos(A+B).

**8.** Simplify sin(x + π/4) + sin(x − π/4).

---

### Section C: Double Angle
**9.** Find sin 2A, cos 2A, and tan 2A given that sin A = −4/5 (A in 3rd quadrant).

**10.** Solve cos 2x + 3cos x = 2 for 0 ≤ x ≤ 2π.

**11.** Show that 1/(1 + cos x) + 1/(1 − cos x) = 2cosec²x.

---

### Section D: R-Form
**12.** Express each in the form R sin(x + α):
(a) 3 sin x + 4 cos x   (b) 5 sin x − 12 cos x

**13.** Find the maximum and minimum values of 2 sin x + 3 cos x.

**14.** Solve 4 sin x + 3 cos x = 2 for 0° ≤ x ≤ 360°.

---

### Section E: General Solutions
**15.** Find the general solution of: (a) sin 2x = cos x  (b) tan(x+30°) = 2  (c) 2cos²x − cos x = 0

**16.** Solve 3 sin x − 2 = 0 and give solutions to 2 d.p. in [0°, 360°].

### Answers
6a. (√6+√2)/4   7. sin(A+B)=56/65, cos(A+B)=33/65   12a. 5sin(x+53.13°)   13. max=√13, min=−√13   16. 41.81° and 138.19°',
'practice', 5),

('b1000007-0000-0000-0000-000000000010',
'Summary and Key Formulas',
'## Summary: Trigonometric Functions and Identities

### Must-Know Identities

| Category | Identities |
|---|---|
| Pythagorean | sin²θ+cos²θ=1; tan²θ+1=sec²θ; cot²θ+1=cosec²θ |
| Compound | sin(A±B), cos(A±B), tan(A±B) |
| Double Angle | sin2A, cos2A (3 forms), tan2A |
| R-form | a sinx+b cosx = R sin(x+φ), R=√(a²+b²) |
| Factor | Sum-to-product for sin and cos |

### Proving Identities — Checklist
1. Choose ONE side (usually more complex)
2. Apply known identities
3. Simplify step by step
4. Never cross the = sign

### Solving Equations — General Process
1. Simplify using identities (avoid multiple angles)
2. Factorise if possible
3. Apply general solution formula
4. Filter solutions to given range

### Common Mistakes
- Using cos 2x = cos²x − sin²x when a different form would be easier
- Forgetting all solutions (sin x = k has two solutions per period)
- Sign errors in compound angle formulas
- Incorrect R-form calculation (forgetting which angle goes where)',
'content', 6);

-- ============================================================
-- TOPIC 11: SEQUENCES AND SERIES (FM)
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Overview of Advanced Sequences and Series',
'## Sequences and Series at Further Mathematics Level

A **sequence** is an ordered list of numbers following a pattern. A **series** is the sum of the terms of a sequence.

At WASSCE Further Mathematics level, you study:
- Arithmetic and Geometric Progressions (revision + deeper)
- The Sigma notation
- Power series and polynomial approximations
- Maclaurin and Taylor series
- Convergence and divergence
- The method of differences (telescoping)
- Partial sums and their formulas

### Why This Matters
Sequences and series are everywhere:
- Compound interest is a geometric series
- Taylor/Maclaurin series allow calculators to compute sin, cos, eˣ
- Series are fundamental to calculus, physics, and engineering

### Key Notations
- Σ (sigma) denotes summation
- Σₙ₌₁^N aₙ means sum a₁ + a₂ + ... + aₙ
- uₙ = general term formula (also written aₙ or Tₙ)',
'overview', 1),

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Arithmetic and Geometric Series — Advanced',
'## Arithmetic Progressions (AP)

General term: **uₙ = a + (n−1)d**
Sum of n terms: **Sₙ = n/2 [2a + (n−1)d] = n/2 (first + last)**

### Properties
- The sum of AP with odd number of terms: middle term × number of terms
- Arithmetic mean of a and b: (a+b)/2
- Three numbers in AP: (a−d), a, (a+d) — choose this form for problems

---

## Geometric Progressions (GP)

General term: **uₙ = arⁿ⁻¹**
Sum of n terms: **Sₙ = a(rⁿ − 1)/(r − 1) for r ≠ 1** (or a(1−rⁿ)/(1−r))

Sum to infinity (|r| < 1): **S∞ = a/(1−r)**

### Properties
- Geometric mean of a and b: √(ab)
- Three numbers in GP: a/r, a, ar — use this form for problems
- Condition for convergence: |r| < 1

---

## Standard Summation Formulas
These must be memorised:

- **Σ 1 = n** (sum of n ones)
- **Σ r = n(n+1)/2**
- **Σ r² = n(n+1)(2n+1)/6**
- **Σ r³ = [n(n+1)/2]²**

These can be combined to find sums of polynomials:
Σ(3r² − 2r + 1) = 3·Σr² − 2·Σr + Σ1

---

## Method of Differences (Telescoping)

If each term can be written as f(r) − f(r+1) or f(r+1) − f(r−1), then the sum telescopes (most terms cancel).

**Example:** Find Σ 1/[r(r+1)]

Note: 1/[r(r+1)] = 1/r − 1/(r+1)

Σᵣ₌₁ⁿ [1/r − 1/(r+1)] = (1 − 1/2) + (1/2 − 1/3) + ... + (1/n − 1/(n+1))
= 1 − 1/(n+1) = **n/(n+1)**',
'definitions', 2),

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Maclaurin and Taylor Series',
'## Maclaurin Series

A **Maclaurin series** is a power series expansion of f(x) about x = 0:

**f(x) = f(0) + f''(0)x + f''''(0)x²/2! + f''''''(0)x³/3! + ...**
**f(x) = Σₙ₌₀^∞ f^(n)(0) · xⁿ/n!**

### Standard Maclaurin Series (Must Know!)

**eˣ = 1 + x + x²/2! + x³/3! + x⁴/4! + ...** (all x)

**sin x = x − x³/3! + x⁵/5! − x⁷/7! + ...** (all x)

**cos x = 1 − x²/2! + x⁴/4! − x⁶/6! + ...** (all x)

**ln(1+x) = x − x²/2 + x³/3 − x⁴/4 + ...** (−1 < x ≤ 1)

**(1+x)ⁿ = 1 + nx + n(n−1)x²/2! + ...** (|x| < 1 for non-integer n)

**arctan x = x − x³/3 + x⁵/5 − x⁷/7 + ...** (|x| ≤ 1)

---

## Taylor Series

A **Taylor series** expands f(x) about x = a (not just about 0):

**f(x) = f(a) + f''(a)(x−a) + f''''(a)(x−a)²/2! + ...**

The Maclaurin series is the special case a = 0.

---

## Finding Maclaurin Series from First Principles

### Method:
1. Find f(0), f''(0), f''''(0), f''''''(0), ...
2. Substitute into the formula

**Example:** Find the Maclaurin series for f(x) = eˣ up to x⁴.

f(x) = eˣ → f(0) = 1
f''(x) = eˣ → f''(0) = 1
f''''(x) = eˣ → f''''(0) = 1
...

eˣ = 1 + x + x²/2! + x³/3! + x⁴/4! = 1 + x + x²/2 + x³/6 + x⁴/24 + ...

**Using Series to Evaluate Limits:**
lim[x→0] (sin x)/x: sin x ≈ x − x³/6 + ...
(sin x)/x ≈ 1 − x²/6 + ... → **1** as x→0',
'explanation', 3),

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Summation Formula
Find Σᵣ₌₁ⁿ r(r+1) and hence find Σᵣ₌₁^20 r(r+1).

Σ r(r+1) = Σ(r² + r) = Σr² + Σr
= n(n+1)(2n+1)/6 + n(n+1)/2
= n(n+1)[(2n+1)/6 + 1/2]
= n(n+1)[(2n+1 + 3)/6]
= n(n+1)(2n+4)/6
= **n(n+1)(n+2)/3**

When n = 20: 20 × 21 × 22 / 3 = **3080**

---

### Example 2: Method of Differences
Use partial fractions to find Σᵣ₌₁ⁿ 1/[(2r−1)(2r+1)].

1/[(2r−1)(2r+1)] = (1/2)[1/(2r−1) − 1/(2r+1)]

Σ = (1/2)[(1/1 − 1/3) + (1/3 − 1/5) + (1/5 − 1/7) + ... + (1/(2n−1) − 1/(2n+1))]
= (1/2)[1 − 1/(2n+1)]
= **(1/2) · 2n/(2n+1) = n/(2n+1)**

---

### Example 3: Maclaurin Series
Find the Maclaurin series for sin(2x) up to x⁵.

Using sin x = x − x³/6 + x⁵/120 − ...
Replace x with 2x:
sin(2x) = 2x − (2x)³/6 + (2x)⁵/120 − ...
= 2x − 8x³/6 + 32x⁵/120 − ...
= **2x − 4x³/3 + 4x⁵/15 − ...**

---

### Example 4: Using Series for Approximation
Use the Maclaurin series to find e^(0.1) correct to 5 d.p.

e^(0.1) = 1 + 0.1 + (0.1)²/2! + (0.1)³/3! + (0.1)⁴/4! + (0.1)⁵/5! + ...
= 1 + 0.1 + 0.005 + 0.000167 + 0.00000417 + 0.0000000833 + ...
= **1.10517** (to 5 d.p.) ✓

---

### Example 5: GP in Context
A ball is dropped from height 10m. Each bounce reaches 80% of previous height. Find:
(a) Total distance travelled before it comes to rest
(b) The height after 6th bounce

**(a)** Each "bounce" involves going up and coming down. The ball falls 10m, bounces to 8m (goes up+down=16m), bounces to 6.4m (12.8m), ...

Total distance = 10 + 2(8) + 2(6.4) + 2(5.12) + ...
= 10 + 2[8/(1−0.8)] (GP with a=8, r=0.8)
= 10 + 2(40) = **90m**

**(b)** Height after 6th bounce = 10 × (0.8)⁶ = 10 × 0.262144 ≈ **2.62m**',
'examples', 4),

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Practice Questions',
'## Practice Questions — Sequences and Series

### Section A: AP and GP
**1.** An AP has first term 3 and common difference 4. Find: (a) the 20th term  (b) S₂₀

**2.** A GP has first term 2 and common ratio 3. Find the term exceeding 10,000 and the sum to that term.

**3.** The sum to infinity of a GP is 12 and the first term is 4. Find the common ratio.

**4.** Three numbers are in AP. Their sum is 21 and their product is 280. Find the numbers.

---

### Section B: Summation Formulas
**5.** Find: (a) Σᵣ₌₁^15 r  (b) Σᵣ₌₁^10 r²  (c) Σᵣ₌₁^5 r³

**6.** Find Σᵣ₌₁ⁿ (2r − 1) [sum of first n odd numbers]. Simplify and comment on the result.

**7.** Find Σᵣ₌₁ⁿ r(2r+1).

**8.** Evaluate Σᵣ₌₃^12 r².

---

### Section C: Method of Differences
**9.** Show that r(r+1)(r+2) − (r−1)r(r+1) = 3r(r+1).
Hence find Σᵣ₌₁ⁿ r(r+1).

**10.** Find Σᵣ₌₁ⁿ 1/[(r+1)(r+2)] using the method of differences.

**11.** Find Σᵣ₌₁ⁿ r/(r+1)!.

---

### Section D: Maclaurin Series
**12.** Write down the Maclaurin series for cos x up to x⁶.

**13.** Find the Maclaurin series for ln(1+2x) up to x⁴.

**14.** Find the first four non-zero terms of the Maclaurin series for tan x.

**15.** Use the series for eˣ and cos x to find the series for eˣ cos x up to x⁴.

---

### Section E: Challenge
**16.** Prove that 1 + 2 + 3 + ... + n = n(n+1)/2 using mathematical induction.

**17.** A mortgage of £100,000 is taken out at 5% annual interest. Equal payments of £P are made at the end of each year. Write an expression for the amount owed after n years and find P if the mortgage is repaid in 20 years.

### Answers
1a. 79  1b. 820  3. r=2/3  4. 5,7,9 or 7,5,9  5a. 120  5b. 385  5c. 225  6. n² (sum of first n odd numbers is always n²)',
'practice', 5),

('9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
'Summary and Key Formulas',
'## Summary: Sequences and Series

### Core Formulas

| Type | General Term | Sum |
|---|---|---|
| AP | a+(n−1)d | n/2[2a+(n−1)d] |
| GP (finite) | arⁿ⁻¹ | a(rⁿ−1)/(r−1) |
| GP (infinite, \|r\|<1) | arⁿ⁻¹ | a/(1−r) |

### Standard Sums
- Σr = n(n+1)/2
- Σr² = n(n+1)(2n+1)/6
- Σr³ = [n(n+1)/2]²

### Key Series to Memorise
- eˣ = 1 + x + x²/2! + x³/3! + ... (all x)
- sin x = x − x³/3! + x⁵/5! − ... (all x)
- cos x = 1 − x²/2! + x⁴/4! − ... (all x)
- ln(1+x) = x − x²/2 + x³/3 − ... (|x| ≤ 1, x≠−1)

### Method of Differences Strategy
1. Express term as f(r) − f(r+1) or similar
2. Write out first few and last few terms
3. Identify what cancels
4. Write remaining terms as the sum

### Convergence
- GP: converges to S∞ = a/(1−r) if and only if |r| < 1
- A series diverges if its terms don''t approach zero',
'content', 6);

-- ============================================================
-- TOPIC 12: COORDINATE GEOMETRY (FM)
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'Overview of Advanced Coordinate Geometry',
'## Coordinate Geometry at Further Mathematics Level

This extends the basic coordinate geometry from WASSCE Mathematics to cover:
- The circle (equation, tangents, chords, intersections)
- Locus problems
- Parametric equations of curves
- Transformations in coordinate form
- The general second-degree conic (introduction)

### The Circle — Central Focus
A circle is the set of all points equidistant (distance = r) from a fixed point (the centre).

**Standard Form:** (x − a)² + (y − b)² = r²
where centre = (a, b) and radius = r

**General Form:** x² + y² + 2gx + 2fy + c = 0
Centre = (−g, −f), Radius = √(g²+f²−c)

### Why Coordinate Geometry Matters
- Bridge between algebra and geometry
- Foundation for calculus applications (area, arc length)
- Used in computer graphics, GPS, and physics',
'overview', 1),

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'The Circle — Equations and Properties',
'## The Circle

### Two Forms of the Circle Equation

**Standard (Centre-Radius) Form:**
**(x − h)² + (y − k)² = r²**
Centre: (h, k), Radius: r

**General Form:**
**x² + y² + 2gx + 2fy + c = 0**
Centre: (−g, −f), Radius: √(g² + f² − c)

**Converting:** Complete the square in x and y.

### Condition for a Real Circle
g² + f² − c > 0 (radius must be real and positive)
If g² + f² − c = 0: point circle (radius = 0)
If g² + f² − c < 0: no real circle

---

## Lines and Circles

### Does a Line Meet a Circle?
Substitute line equation into circle equation → quadratic in x (or y).
- 2 solutions → line is a **secant** (intersects at 2 points)
- 1 solution → line is a **tangent** (touches at 1 point)
- 0 real solutions → line **misses** the circle

### Using Discriminant
Line y = mx + c meets circle x² + y² = r²:
Condition for tangency: **c² = r²(1 + m²)**
or equivalently: distance from centre to line = radius

### Tangent to a Circle at a Point
The tangent at point P(x₁, y₁) on the circle x² + y² = r² is:
**xx₁ + yy₁ = r²**

For (x−h)² + (y−k)² = r², tangent at (x₁,y₁):
**(x−h)(x₁−h) + (y−k)(y₁−k) = r²**

### Distance from a Point to a Line
Distance from (x₀, y₀) to line ax + by + c = 0:
**d = |ax₀ + by₀ + c| / √(a²+b²)**

This equals r for tangency.

---

## Two Circles

### Relative Positions
Let d = distance between centres, r₁ and r₂ = radii:
- d > r₁ + r₂: Externally separate (0 common tangents... wait, actually 4)
- d = r₁ + r₂: Externally tangent (3 common tangents)
- |r₁ − r₂| < d < r₁ + r₂: Overlapping (2 common tangents)
- d = |r₁ − r₂|: Internally tangent (1 common tangent)
- d < |r₁ − r₂|: One inside other (0 tangents)

### Radical Axis
The locus of points having equal tangent lengths to two circles.
For x²+y²+2g₁x+2f₁y+c₁=0 and x²+y²+2g₂x+2f₂y+c₂=0:
Radical axis: 2(g₁−g₂)x + 2(f₁−f₂)y + (c₁−c₂) = 0

(Subtract one circle equation from the other!)',
'definitions', 2),

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'Locus Problems and Parametric Equations',
'## Locus Problems

A **locus** is the path traced by a point satisfying a given condition.

### Method for Finding a Locus
1. Let the moving point be P = (x, y)
2. Write down the given condition in terms of x and y
3. Simplify algebraically
4. The resulting equation IS the locus

**Example:** Find the locus of P such that PA:PB = 2:1 where A = (0,0), B = (3,0).

Let P = (x, y).
PA = √(x²+y²), PB = √((x−3)²+y²)
PA/PB = 2/1 → PA = 2PB
PA² = 4PB²
x² + y² = 4[(x−3)² + y²]
x² + y² = 4[x²−6x+9+y²]
x² + y² = 4x² − 24x + 36 + 4y²
0 = 3x² + 3y² − 24x + 36
x² + y² − 8x + 12 = 0
(x−4)² + y² = 4 → **Circle, centre (4,0), radius 2**

---

## Parametric Equations

Instead of relating x and y directly, both are expressed in terms of a parameter t:
x = f(t), y = g(t)

### Common Parametric Forms

**Straight line through (a,b) with direction (l,m):**
x = a + lt, y = b + mt

**Circle x² + y² = r²:**
x = r cos θ, y = r sin θ

**Parabola y² = 4ax:**
x = at², y = 2at

**Ellipse x²/a² + y²/b² = 1:**
x = a cos θ, y = b sin θ

**Hyperbola x²/a² − y²/b² = 1:**
x = a sec θ, y = b tan θ

### Eliminating the Parameter
Combine the parametric equations to find the Cartesian equation.

**Example:** x = 2t, y = t² − 1
From first: t = x/2
Substitute: y = (x/2)² − 1 = x²/4 − 1 → **x² = 4(y+1)** (parabola)

### Tangent to Parametric Curve
dy/dx = (dy/dt)/(dx/dt) (parametric differentiation)

Tangent line at parameter t: y − y(t) = [dy/dx] · [x − x(t)]',
'explanation', 3),

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Circle — General to Standard Form
Find the centre and radius of x² + y² − 6x + 4y − 3 = 0.

Complete the square:
(x² − 6x + 9) + (y² + 4y + 4) = 3 + 9 + 4
**(x−3)² + (y+2)² = 16**

Centre = **(3, −2)**, Radius = **4**

---

### Example 2: Tangent from External Point
Find the equations of tangents from P(7, 0) to the circle x² + y² = 25.

Tangent has form y = m(x−7). Substitute into x² + y² = 25:
x² + m²(x−7)² = 25
x²(1+m²) − 14m²x + 49m² − 25 = 0

For tangency, discriminant = 0:
(14m²)² − 4(1+m²)(49m²−25) = 0
196m⁴ − 4(49m² − 25 + 49m⁴ − 25m²) = 0
196m⁴ − 196m⁴ + 100m² + 100 − 4·24m² = 0
Wait: Let''s simplify properly.
d = 196m⁴ − 4(1+m²)(49m²−25)
= 196m⁴ − 4(49m²−25+49m⁴−25m²)
= 196m⁴ − 196m⁴ + 100m² + 100 − 96m²... 

Actually: distance from (7,0) to line y = mx − 7m (i.e. mx−y−7m=0) equals 5:
|m(7) − 0 − 7m|/√(m²+1) = 5 → |0|/√(m²+1) = 5
That gives 0 = 5 which is wrong. Let''s redo:
Line: y = m(x−7) → mx − y − 7m = 0
Distance from (0,0) to this line = 5:
|0 − 0 − 7m|/√(m²+1) = 5
7|m| = 5√(m²+1)
49m² = 25(m²+1) = 25m² + 25
24m² = 25
m² = 25/24
m = ±5/(2√6) = ±5√6/12

**Tangent equations: y = (5√6/12)(x−7) and y = −(5√6/12)(x−7)**

---

### Example 3: Parametric to Cartesian
A curve has parametric equations x = 3t², y = 6t.
(a) Find the Cartesian equation.
(b) Find the equation of the tangent at t = 2.

**(a)** From y = 6t: t = y/6. Substitute: x = 3(y/6)² = 3y²/36 = y²/12
**y² = 12x** (parabola)

**(b)** dx/dt = 6t, dy/dt = 6
dy/dx = 6/(6t) = 1/t = 1/2 at t = 2.
At t = 2: x = 12, y = 12.
Tangent: y − 12 = (1/2)(x − 12) → **y = x/2 + 6**

---

### Example 4: Locus Problem
P moves such that its distance from A(3,0) is twice its distance from the origin.
Find and describe the locus.

PA = 2·PO
PA² = 4·PO²
(x−3)² + y² = 4(x²+y²)
x²−6x+9+y² = 4x²+4y²
0 = 3x²+3y²+6x−9
x²+y²+2x−3 = 0
(x+1)²+y² = 4
**Circle, centre (−1,0), radius 2**',
'examples', 4),

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'Practice Questions',
'## Practice Questions — Coordinate Geometry (FM)

### Section A: The Circle
**1.** Write the equation of the circle with:
(a) Centre (2,−3), radius 5
(b) Centre (0,4), passing through (3,0)
(c) Diameter with endpoints (−1,2) and (5,6)

**2.** Find the centre and radius of:
(a) x²+y²−4x+6y−3=0
(b) x²+y²+x−2y−11/4=0

**3.** Show that the point (3,4) lies on the circle x²+y²=25 and find the tangent at this point.

**4.** Find the points of intersection of the circle x²+y²=25 and the line y=x+1.

---

### Section B: Tangents and Lines
**5.** Find the length of the tangent from (5,1) to x²+y²−2x+4y−4=0.

**6.** Show that y=2x−5 is a tangent to the circle x²+y²=5 and find the point of contact.

**7.** Find the equations of tangents to x²+y²=13 which are parallel to 2x+3y=0.

---

### Section C: Loci
**8.** Find the locus of a point P such that PA=PB where A=(2,3) and B=(4,−1).

**9.** Find the locus of P such that |PA|=3 where A=(1,2). Describe geometrically.

**10.** Find the locus of P(x,y) such that the gradient of AP is always 2, where A=(1,−1).

---

### Section D: Parametric Equations
**11.** A curve is given by x=t+1, y=t²−2t. Find: (a) Cartesian equation  (b) tangent at t=1

**12.** The curve x=2cosθ, y=3sinθ. Find: (a) Cartesian equation  (b) Describe the curve.

**13.** For x=t², y=2t, find the equation of the normal at the point where t=3.

---

### Section E: Challenge
**14.** Two circles C₁: x²+y²=4 and C₂: (x−3)²+y²=1. How many common tangents do they have? Find the external tangents.

**15.** Prove that the angle in a semicircle is 90° using coordinate geometry.

### Answers
1a. (x−2)²+(y+3)²=25  2a. Centre(2,−3), r=4  3. 3x+4y=25  4. (3,4) and (−4,3)  5. √8=2√2  12. x²/4+y²/9=1 (ellipse)',
'practice', 5),

('4960b050-6f4f-4626-9f93-b65e68dbc293',
'Summary and Key Formulas',
'## Summary: Coordinate Geometry (FM)

### Circle Formulas

| Form | Equation | Centre | Radius |
|---|---|---|---|
| Standard | (x−h)²+(y−k)²=r² | (h,k) | r |
| General | x²+y²+2gx+2fy+c=0 | (−g,−f) | √(g²+f²−c) |

### Key Results
- Tangent at (x₁,y₁) on x²+y²=r²: xx₁+yy₁=r²
- Distance from point to line ax+by+c=0: |ax₀+by₀+c|/√(a²+b²)
- Tangent length from external point (x₀,y₀) to x²+y²+2gx+2fy+c=0: √(x₀²+y₀²+2gx₀+2fy₀+c)

### Parametric Differentiation
dy/dx = (dy/dt) / (dx/dt)

### Common Parametric Curves
- Circle: x=r cosθ, y=r sinθ
- Parabola y²=4ax: x=at², y=2at
- Ellipse: x=a cosθ, y=b sinθ

### Locus Approach
1. Let P=(x,y)
2. Translate geometric condition into algebra
3. Simplify → equation of locus

### Common Mistakes
- Sign errors in centre from general form (centre is −g, −f not +g, +f)
- Forgetting to check discriminant when finding tangents
- Parametric: forgetting to change limits in definite integrals',
'content', 6);
