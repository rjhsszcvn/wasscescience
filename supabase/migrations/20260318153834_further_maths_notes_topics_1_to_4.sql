
/*
  # Further Mathematics Deep Notes: Topics 1-4
  
  Adds comprehensive Aki Ola-style deep notes for:
  1. Calculus: Differentiation (b1000007-0000-0000-0000-000000000001)
  2. Matrices and Determinants (b1000007-0000-0000-0000-000000000002)
  3. Complex Numbers (b1000007-0000-0000-0000-000000000003)
  4. Calculus: Integration (b1000007-0000-0000-0000-000000000004)
  
  Each topic gets 6 sections: Overview, Definitions, Core Explanation, Worked Examples, Practice Questions, Summary
*/

-- ============================================================
-- TOPIC 1: CALCULUS - DIFFERENTIATION
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000001',
'Overview of Differentiation',
'## What is Differentiation?

Differentiation is one of the two fundamental operations of calculus. It is the mathematical process of finding the **rate of change** of a function — how fast the function''s output changes as its input changes.

In Further Mathematics, differentiation goes beyond the basics. You will master:
- First principles and limits
- Differentiation of all standard functions
- Product, Quotient, and Chain Rules
- Implicit and parametric differentiation
- Higher-order derivatives
- Applications to curve sketching, optimization, and rates of change

### Why Differentiation Matters
Every time an engineer calculates how fast a bridge flexes, a physicist models a moving particle, or an economist finds the point of maximum profit — differentiation is the tool. It is the language of change.

### The Core Idea
If y = f(x), the **derivative** dy/dx tells you the slope of the curve at any point. Geometrically, it is the gradient of the tangent line to the curve at that point.

**Key intuition:** As the gap between two x-values shrinks to zero, the slope of the chord between them becomes the slope of the tangent — this is the derivative.',
'overview', 1),

('b1000007-0000-0000-0000-000000000001',
'Definitions and Key Terms',
'## Core Definitions

### The Derivative from First Principles
The derivative of f(x) is defined as the limit:

**f''(x) = lim[h→0] [f(x+h) - f(x)] / h**

This is called **differentiation from first principles** or the **limit definition**.

### Notation
There are several equivalent notations:
- dy/dx (Leibniz notation) — most common in applied problems
- f''(x) (prime notation) — most common in pure mathematics
- y'' — shorthand for dy/dx
- Df(x) — operator notation

### Important Terms

**Differentiable:** A function is differentiable at a point if the derivative exists there. The function must be continuous and have no sharp corners or cusps.

**Stationary Point:** A point where dy/dx = 0. The tangent is horizontal here.

**Local Maximum:** A stationary point where the function changes from increasing to decreasing (dy/dx goes from + to −).

**Local Minimum:** A stationary point where the function changes from decreasing to increasing (dy/dx goes from − to +).

**Point of Inflection:** Where the curve changes concavity (d²y/dx² changes sign).

**Gradient Function:** Another name for the derivative dy/dx — it gives the gradient of the curve at any value of x.

**Higher-Order Derivatives:**
- d²y/dx² = second derivative (rate of change of the rate of change)
- d³y/dx³ = third derivative, and so on',
'definitions', 2),

('b1000007-0000-0000-0000-000000000001',
'Differentiation Rules and Techniques',
'## Standard Derivatives (Memorise These)

| Function f(x) | Derivative f''(x) |
|---|---|
| xⁿ | nxⁿ⁻¹ |
| eˣ | eˣ |
| eᵃˣ | aeᵃˣ |
| ln x | 1/x |
| sin x | cos x |
| cos x | −sin x |
| tan x | sec²x |
| sec x | sec x tan x |
| cosec x | −cosec x cot x |
| cot x | −cosec²x |
| aˣ | aˣ ln a |

---

## The Four Fundamental Rules

### 1. Power Rule
If y = xⁿ, then dy/dx = nxⁿ⁻¹

**Examples:**
- y = x⁵ → dy/dx = 5x⁴
- y = x⁻³ → dy/dx = −3x⁻⁴ = −3/x⁴
- y = √x = x^(1/2) → dy/dx = (1/2)x^(-1/2) = 1/(2√x)
- y = 1/x² = x⁻² → dy/dx = −2x⁻³

### 2. Sum/Difference Rule
d/dx[f(x) ± g(x)] = f''(x) ± g''(x)

Differentiate term by term.

**Example:** y = 3x⁴ − 5x² + 7x − 2
dy/dx = 12x³ − 10x + 7

---

### 3. Product Rule
If y = u·v where u and v are both functions of x:

**dy/dx = u(dv/dx) + v(du/dx)**

Memory tip: "First times derivative of second, plus second times derivative of first"

**Example:** y = x² sin x
- Let u = x², so du/dx = 2x
- Let v = sin x, so dv/dx = cos x
- dy/dx = x²(cos x) + sin x(2x) = x² cos x + 2x sin x

---

### 4. Quotient Rule
If y = u/v:

**dy/dx = [v(du/dx) − u(dv/dx)] / v²**

Memory tip: "Bottom times derivative of top, minus top times derivative of bottom, all over bottom squared"

**Example:** y = sin x / x²
- u = sin x, du/dx = cos x
- v = x², dv/dx = 2x
- dy/dx = [x²(cos x) − sin x(2x)] / x⁴ = [x cos x − 2 sin x] / x³

---

### 5. Chain Rule (Composite Functions)
If y = f(g(x)), then:

**dy/dx = (dy/du) × (du/dx)**

where u = g(x) is the "inner function".

**Example 1:** y = (3x + 1)⁵
- Let u = 3x + 1, so y = u⁵
- dy/du = 5u⁴, du/dx = 3
- dy/dx = 5u⁴ × 3 = 15(3x+1)⁴

**Example 2:** y = sin(x²)
- Let u = x², y = sin u
- dy/du = cos u, du/dx = 2x
- dy/dx = 2x cos(x²)

**Example 3:** y = e^(3x²)
- dy/dx = 6x · e^(3x²)

---

## Implicit Differentiation

When x and y are mixed in an equation (not solved for y), differentiate both sides with respect to x. Remember: whenever you differentiate a term involving y, multiply by dy/dx.

**Example:** x² + y² = 25
Differentiate both sides:
2x + 2y(dy/dx) = 0
dy/dx = −x/y

**Example:** x³ + y³ = 3xy
3x² + 3y²(dy/dx) = 3y + 3x(dy/dx)
3y²(dy/dx) − 3x(dy/dx) = 3y − 3x²
dy/dx(3y² − 3x) = 3y − 3x²
**dy/dx = (y − x²)/(y² − x)**

---

## Parametric Differentiation

When x = f(t) and y = g(t), use:

**dy/dx = (dy/dt) ÷ (dx/dt)**

**Example:** x = t², y = 2t
- dx/dt = 2t, dy/dt = 2
- dy/dx = 2/(2t) = **1/t**

Second derivative: d²y/dx² = (d/dt)(dy/dx) ÷ (dx/dt) = (−1/t²) ÷ 2t = **−1/(2t³)**',
'explanation', 3),

('b1000007-0000-0000-0000-000000000001',
'Worked Examples',
'## Fully Worked Examples

### Example 1: First Principles
Find the derivative of f(x) = x² from first principles.

**Solution:**
f''(x) = lim[h→0] [(x+h)² − x²] / h
= lim[h→0] [x² + 2xh + h² − x²] / h
= lim[h→0] [2xh + h²] / h
= lim[h→0] [2x + h]
= **2x** ✓

---

### Example 2: Chain + Product Rule Combined
Differentiate y = x³ · e^(2x).

**Solution:**
Use Product Rule: u = x³, v = e^(2x)
- du/dx = 3x²
- dv/dx = 2e^(2x) (chain rule)
- dy/dx = x³(2e^(2x)) + e^(2x)(3x²)
= e^(2x)(2x³ + 3x²)
= **x²e^(2x)(2x + 3)**

---

### Example 3: Quotient Rule with Trig
Differentiate y = (1 + sin x) / cos x.

**Solution:**
u = 1 + sin x, v = cos x
- du/dx = cos x
- dv/dx = −sin x

dy/dx = [cos x · cos x − (1 + sin x)(−sin x)] / cos²x
= [cos²x + sin x + sin²x] / cos²x
= [1 + sin x] / cos²x  (using sin²x + cos²x = 1)
= **(1 + sin x)/cos²x**

---

### Example 4: Finding Stationary Points
Find the stationary points of y = x³ − 3x² − 9x + 5 and classify them.

**Solution:**
dy/dx = 3x² − 6x − 9

Set dy/dx = 0:
3x² − 6x − 9 = 0
x² − 2x − 3 = 0
(x − 3)(x + 1) = 0
x = 3 or x = −1

When x = 3: y = 27 − 27 − 27 + 5 = **−22**
When x = −1: y = −1 − 3 + 9 + 5 = **10**

**Second Derivative Test:**
d²y/dx² = 6x − 6

At x = 3: d²y/dx² = 12 > 0 → **Local Minimum** at (3, −22)
At x = −1: d²y/dx² = −12 < 0 → **Local Maximum** at (−1, 10)

---

### Example 5: Implicit Differentiation
Find dy/dx for the curve x²y + y³ = 8.

**Solution:**
Differentiate both sides w.r.t. x:
d/dx(x²y) + d/dx(y³) = 0

For x²y: use product rule → 2xy + x²(dy/dx)
For y³: chain rule → 3y²(dy/dx)

So: 2xy + x²(dy/dx) + 3y²(dy/dx) = 0
dy/dx(x² + 3y²) = −2xy
**dy/dx = −2xy / (x² + 3y²)**',
'examples', 4),

('b1000007-0000-0000-0000-000000000001',
'Practice Questions',
'## Practice Questions — Differentiation

### Section A: Standard Derivatives
Differentiate each of the following:

**1.** y = 5x⁴ − 3x³ + 2x − 7

**2.** y = √(3x) + 1/x²

**3.** y = 2 sin x − 3 cos x + tan x

**4.** y = eˣ ln x

**5.** f(x) = (x² + 1)⁶

---

### Section B: Product and Quotient Rules
**6.** y = x² cos x

**7.** y = (x³ + 1) ln x

**8.** y = (sin x)/(1 + x²)

**9.** y = (eˣ − 1)/(eˣ + 1)

**10.** y = x^(1/2) · tan x

---

### Section C: Chain Rule
**11.** y = (5x² − 2x + 1)⁴

**12.** y = √(1 + cos x)

**13.** y = ln(x² + 3)

**14.** y = e^(sin x)

**15.** y = tan(3x + 1)

---

### Section D: Implicit and Parametric
**16.** Find dy/dx if x³ + 2y³ = 3xy²

**17.** Find dy/dx if sin(xy) = x

**18.** For x = t³ + 1, y = t² − 3t, find dy/dx in terms of t.

**19.** For x = cos θ, y = sin 2θ, find dy/dx in terms of θ.

---

### Section E: Applications
**20.** Find the equation of the tangent to y = x³ − 2x + 1 at the point where x = 2.

**21.** The curve y = ax³ + bx has a stationary point at (1, −4). Find a and b.

**22.** A function is given by f(x) = (x − 1)²(x + 2). Find all stationary points and classify each.

---

### Answers (Check Your Work)
1. 20x³ − 9x² + 2
2. 3/(2√(3x)) − 2/x³
3. 2cos x + 3sin x + sec²x
4. eˣ ln x + eˣ/x
5. 12x(x²+1)⁵
6. 2x cos x − x² sin x
7. 3x² ln x + (x³+1)/x
8. [cos x(1+x²) − 2x sin x]/(1+x²)²
9. 2eˣ/(eˣ+1)²
10. (tan x)/(2√x) + √x · sec²x
11. 4(10x−2)(5x²−2x+1)³
12. −sin x / [2√(1+cos x)]
13. 2x/(x²+3)
14. cos x · e^(sinx)
15. 3sec²(3x+1)
18. dy/dx = (2t−3)/(3t²)
20. y = 10x − 17',
'practice', 5),

('b1000007-0000-0000-0000-000000000001',
'Summary and Key Formulas',
'## Summary: Differentiation at a Glance

### The Golden Rules

| Situation | Rule to Use |
|---|---|
| Simple power of x | Power Rule |
| Sum or difference | Differentiate term by term |
| Product of two functions | Product Rule |
| Fraction of two functions | Quotient Rule |
| Function of a function | Chain Rule |
| x and y mixed in equation | Implicit Differentiation |
| x = f(t), y = g(t) | Parametric Differentiation |

---

### Must-Know Formulas
- **Power Rule:** d/dx(xⁿ) = nxⁿ⁻¹
- **Product Rule:** d/dx(uv) = u·v'' + v·u''
- **Quotient Rule:** d/dx(u/v) = (v·u'' − u·v'') / v²
- **Chain Rule:** dy/dx = (dy/du)(du/dx)
- **Parametric:** dy/dx = (dy/dt)/(dx/dt)

---

### Common Mistakes to Avoid
- Forgetting to use the chain rule on composite functions
- Misapplying the quotient rule (wrong sign in numerator)
- Not multiplying by dy/dx when differentiating y-terms implicitly
- Confusing d/dx(eˣ) = eˣ with d/dx(xⁿ)

---

### Exam Tips
- Always show your working step-by-step
- When classifying stationary points, ALWAYS test with d²y/dx² or sign of dy/dx either side
- For implicit differentiation, collect dy/dx terms on one side before dividing
- Check your answer by considering if the gradient makes sense geometrically',
'content', 6);

-- ============================================================
-- TOPIC 2: MATRICES AND DETERMINANTS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000002',
'Overview of Matrices',
'## What is a Matrix?

A **matrix** is a rectangular array of numbers arranged in rows and columns. Matrices are among the most powerful tools in mathematics, used to solve systems of equations, represent transformations, model networks, and much more.

In Further Mathematics, you will master:
- Matrix operations: addition, subtraction, multiplication
- Determinants of 2×2 and 3×3 matrices
- Inverse matrices
- Solving simultaneous equations using matrices (Cramer''s Rule, matrix inverses)
- Eigenvalues and eigenvectors (introduction)
- Transformations using matrices

### Why Matrices Matter
From Google''s PageRank algorithm to computer graphics, from quantum mechanics to economic models — matrices are everywhere. Every 3D game you play uses matrix transformations to render the world.',
'overview', 1),

('b1000007-0000-0000-0000-000000000002',
'Definitions and Terminology',
'## Key Definitions

### Matrix Order
A matrix with m rows and n columns is an **m × n matrix** (read "m by n").

Example of a 2×3 matrix:
```
A = [1  2  3]
    [4  5  6]
```

### Special Matrices

**Square Matrix:** Same number of rows and columns (n×n)

**Zero Matrix (O):** All entries are 0. It is the additive identity.

**Identity Matrix (I):** Square matrix with 1s on the main diagonal and 0s elsewhere.
```
I₂ = [1  0]    I₃ = [1  0  0]
     [0  1]         [0  1  0]
                    [0  0  1]
```

**Diagonal Matrix:** Square matrix where all off-diagonal entries are 0.

**Symmetric Matrix:** A matrix where Aᵀ = A (i.e., aᵢⱼ = aⱼᵢ).

**Transpose (Aᵀ):** Obtained by swapping rows and columns.

**Singular Matrix:** A square matrix with determinant = 0. It has no inverse.

**Non-Singular Matrix:** det(A) ≠ 0. The inverse exists.

### Matrix Multiplication Condition
You can multiply A × B **only if** the number of columns in A equals the number of rows in B.
- If A is m×n and B is n×p, then AB is m×p.',
'definitions', 2),

('b1000007-0000-0000-0000-000000000002',
'Matrix Operations and Determinants',
'## Matrix Operations

### Addition and Subtraction
Matrices must have the **same order**. Add/subtract corresponding entries.

If A = [1 2; 3 4] and B = [5 6; 7 8]:
A + B = [6 8; 10 12]

### Scalar Multiplication
Multiply every entry by the scalar:
2A = [2 4; 6 8]

### Matrix Multiplication
Multiply **row by column**: The (i,j) entry of AB = dot product of row i of A with column j of B.

**Example:**
```
A = [1  2]   B = [5  6]
    [3  4]       [7  8]
```
AB = [(1×5 + 2×7)  (1×6 + 2×8)] = [19  22]
     [(3×5 + 4×7)  (3×6 + 4×8)]   [43  50]

**Important:** AB ≠ BA in general (matrices are NOT commutative under multiplication).

---

## Determinants

### 2×2 Determinant
For A = [a b; c d]:

**det(A) = |A| = ad − bc**

Example: A = [3 2; 1 4]
det(A) = 3×4 − 2×1 = 12 − 2 = **10**

### 3×3 Determinant (Cofactor Expansion)
For A = [a b c; d e f; g h i]:

det(A) = a(ei − fh) − b(di − fg) + c(dh − eg)

This is expansion along the first row. You can expand along any row or column using the checkerboard sign pattern:
```
[+  −  +]
[−  +  −]
[+  −  +]
```

**Example:**
```
A = [2  1  3]
    [1  4  2]
    [0  1  5]
```
det(A) = 2(4×5 − 2×1) − 1(1×5 − 2×0) + 3(1×1 − 4×0)
= 2(20 − 2) − 1(5 − 0) + 3(1 − 0)
= 2(18) − 5 + 3
= 36 − 5 + 3 = **34**

---

## The Inverse Matrix

### 2×2 Inverse
If A = [a b; c d] and det(A) ≠ 0:

**A⁻¹ = (1/det(A)) × [d  −b; −c  a]**

Simply: swap the diagonal elements, negate the off-diagonal elements, divide by the determinant.

**Example:** A = [3 1; 2 2]
det(A) = 6 − 2 = 4
A⁻¹ = (1/4)[2 −1; −2 3] = [1/2  −1/4; −1/2  3/4]

**Verification:** A × A⁻¹ = I ✓

### 3×3 Inverse
For 3×3 matrices, use the formula:
**A⁻¹ = (1/det(A)) × adj(A)**

where adj(A) is the **adjugate** (transpose of the cofactor matrix).

Steps:
1. Find all 9 cofactors (Cᵢⱼ = (−1)^(i+j) × Mᵢⱼ where Mᵢⱼ is the minor)
2. Form the cofactor matrix
3. Transpose to get the adjugate
4. Divide by det(A)

---

## Solving Systems Using Matrices

### Matrix Method
For AX = B, if A is invertible:
**X = A⁻¹B**

**Example:** Solve: 3x + y = 7, 2x + 2y = 6

In matrix form: [3 1; 2 2][x; y] = [7; 6]

A⁻¹ = (1/4)[2 −1; −2 3]

X = (1/4)[2 −1; −2 3][7; 6]
= (1/4)[14−6; −14+18]
= (1/4)[8; 4]
= **[2; 1]** → x = 2, y = 1 ✓

### Cramer''s Rule
For 2×2 system ax + by = e, cx + dy = f:
- D = det(A) = ad − bc
- Dₓ = ed − bf (replace x-column with constants)
- D_y = af − ce (replace y-column with constants)
- **x = Dₓ/D, y = D_y/D**',
'explanation', 3),

('b1000007-0000-0000-0000-000000000002',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Matrix Multiplication
If A = [2 3; 1 0] and B = [1 −1; 4 2], find AB and BA.

**AB:**
= [(2×1+3×4) (2×(−1)+3×2); (1×1+0×4) (1×(−1)+0×2)]
= [(2+12) (−2+6); (1+0) (−1+0)]
= **[14 4; 1 −1]**

**BA:**
= [(1×2+(−1)×1) (1×3+(−1)×0); (4×2+2×1) (4×3+2×0)]
= [(2−1) (3−0); (8+2) (12+0)]
= **[1 3; 10 12]**

Clearly AB ≠ BA, confirming matrix multiplication is **not commutative**.

---

### Example 2: 3×3 Determinant
Find det(A) where A = [1 2 0; 3 −1 4; 2 5 −3].

**Solution (expanding along row 1):**
det(A) = 1·|−1 4; 5 −3| − 2·|3 4; 2 −3| + 0·|3 −1; 2 5|

= 1·[(−1)(−3) − (4)(5)] − 2·[(3)(−3) − (4)(2)] + 0
= 1·[3 − 20] − 2·[−9 − 8]
= 1·(−17) − 2·(−17)
= −17 + 34
= **17**

---

### Example 3: Inverse and System Solution
Solve using inverse matrices: 2x − y = 5, x + 3y = −1

**Matrix form:** A = [2 −1; 1 3], B = [5; −1]

det(A) = 2×3 − (−1)×1 = 6 + 1 = 7

A⁻¹ = (1/7)[3 1; −1 2]

X = A⁻¹B = (1/7)[3 1; −1 2][5; −1]
= (1/7)[15+(−1); −5+(−2)]
= (1/7)[14; −7]
= **[2; −1]**

So **x = 2, y = −1** ✓

---

### Example 4: Transformation Matrix
The matrix M = [0 −1; 1 0] represents a rotation.
(a) Find M².
(b) What transformation does M² represent?

**Solution:**
M² = M × M = [0 −1; 1 0] × [0 −1; 1 0]
= [(0×0+(−1)×1) (0×(−1)+(−1)×0); (1×0+0×1) (1×(−1)+0×0)]
= [−1 0; 0 −1]

M² = −I, which represents a **rotation of 180°** about the origin (or equivalently, enlargement with scale factor −1).',
'examples', 4),

('b1000007-0000-0000-0000-000000000002',
'Practice Questions',
'## Practice Questions — Matrices and Determinants

### Section A: Basic Operations
**1.** If A = [3 1; 2 −1] and B = [0 4; 3 2], find:
(a) A + B   (b) A − B   (c) 3A − 2B

**2.** Find AB and BA where A = [1 2; 3 4] and B = [0 1; 1 0].

**3.** If A = [2 1; 3 4] and B = [1 0 2; 3 1 0], find AB.

---

### Section B: Determinants
**4.** Find the determinant of each matrix:
(a) [4 3; 1 2]   (b) [−2 5; 3 −1]   (c) [a b; c d]

**5.** Find det(A) where A = [2 1 0; 3 0 4; 1 2 1].

**6.** Find det(B) where B = [1 0 2; 3 −1 1; 2 4 0].

**7.** For what value of k is the matrix [k 2; 3 k] singular?

---

### Section C: Inverse Matrices
**8.** Find A⁻¹ for A = [5 2; 3 1].

**9.** Show that A = [2 3; 4 6] has no inverse.

**10.** If M = [cos θ −sin θ; sin θ cos θ], show that M⁻¹ = Mᵀ.

---

### Section D: Solving Systems
**11.** Use matrices to solve: 3x + 2y = 8, x − y = 1.

**12.** Use Cramer''s Rule to solve: 2x + 3y = 7, 5x − y = 1.

**13.** A system of equations is: x + 2y + z = 6; 2x − y + z = 3; x + y + 2z = 7. Find x, y, z.

---

### Section E: Challenge
**14.** Prove that det(AB) = det(A) × det(B) using 2×2 matrices.

**15.** If A = [3 1; 5 2], find A² − 5A + 2I.

### Answers
4a. 5   4b. −13   7. k = ±√6   8. [1 −2; −3 5]   11. x=2, y=1   12. x=1, y=5/3',
'practice', 5),

('b1000007-0000-0000-0000-000000000002',
'Summary and Key Formulas',
'## Summary: Matrices and Determinants

### Key Facts

| Property | Matrices |
|---|---|
| Addition | Same order; add entry by entry |
| Multiplication | Rows × Columns; AB ≠ BA generally |
| Identity | AI = IA = A |
| Inverse | AA⁻¹ = A⁻¹A = I |
| Zero Matrix | A + O = A |
| Transpose of product | (AB)ᵀ = BᵀAᵀ |
| det of product | det(AB) = det(A)·det(B) |
| det of inverse | det(A⁻¹) = 1/det(A) |

### 2×2 Inverse Formula
A = [a b; c d] → A⁻¹ = (1/(ad−bc)) [d −b; −c a]

### When Does a System Have No Solution?
When det(A) = 0, the matrix is singular — the system either has no solution or infinitely many solutions.

### Common Mistakes
- Multiplying matrices in wrong order (AB vs BA)
- Sign errors in 3×3 cofactor expansion (remember the checkerboard signs)
- Forgetting to check det ≠ 0 before computing inverse
- Putting constants in wrong column in Cramer''s Rule',
'content', 6);

-- ============================================================
-- TOPIC 3: COMPLEX NUMBERS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000003',
'Overview of Complex Numbers',
'## What Are Complex Numbers?

For centuries, mathematicians puzzled over equations like x² + 1 = 0. No real number satisfies this — but what if we invented a new kind of number that does?

Complex numbers are numbers of the form **a + bi**, where:
- a is the **real part**
- b is the **imaginary part**
- i is the **imaginary unit**, defined as **i = √(−1)**, so i² = −1

This simple idea unlocks an entire new dimension of mathematics.

### Why Complex Numbers Matter
- They solve ALL polynomial equations (Fundamental Theorem of Algebra)
- They are essential in electrical engineering (AC circuits use complex impedance)
- They model wave behaviour in physics and signal processing
- They enable the beautiful Mandelbrot set and fractal geometry
- They appear in Euler''s famous identity: **e^(iπ) + 1 = 0**

### The Complex Number System
The set of complex numbers ℂ contains:
- All real numbers (when b = 0)
- Pure imaginary numbers (when a = 0)
- Mixed complex numbers (when both a ≠ 0 and b ≠ 0)',
'overview', 1),

('b1000007-0000-0000-0000-000000000003',
'Definitions and Key Terms',
'## Definitions

### Standard Form
Every complex number z = a + bi where a, b ∈ ℝ.
- a = Re(z) = real part
- b = Im(z) = imaginary part

**Note:** i is NOT a variable — it is a fixed constant equal to √(−1).

### Powers of i — The Cycle
- i¹ = i
- i² = −1
- i³ = i² × i = −i
- i⁴ = 1
- i⁵ = i (cycle repeats every 4 powers)

To find iⁿ: divide n by 4 and look at the remainder.
i²⁵: 25 ÷ 4 = 6 remainder 1 → i²⁵ = i¹ = i

### Conjugate
The **complex conjugate** of z = a + bi is **z* = a − bi** (negate the imaginary part).

Properties:
- z + z* = 2a (always real)
- z × z* = a² + b² (always real, always ≥ 0)
- If z is a root of a polynomial with real coefficients, then z* is also a root.

### Modulus (Magnitude)
The **modulus** of z = a + bi is:
**|z| = √(a² + b²)**

This is the distance from the origin in the Argand diagram.

### Argument
The **argument** of z (written arg(z)) is the angle θ that z makes with the positive real axis:
**θ = arctan(b/a)** (adjust for the correct quadrant!)

The **principal argument** is the argument in the range (−π, π].

### Argand Diagram
A geometric representation of complex numbers where:
- The x-axis is the **real axis**
- The y-axis is the **imaginary axis**
- z = a + bi is plotted as the point (a, b)

### Polar Form
A complex number can be written in polar form:
**z = r(cos θ + i sin θ) = r·cis θ**

where r = |z| (modulus) and θ = arg(z).

### Euler''s Form
Using Euler''s formula: **eⁱᶿ = cos θ + i sin θ**
So: **z = reⁱᶿ**

This is the most compact form.',
'definitions', 2),

('b1000007-0000-0000-0000-000000000003',
'Operations with Complex Numbers',
'## Operations with Complex Numbers

### Addition and Subtraction
Add/subtract real and imaginary parts separately:
(a + bi) + (c + di) = (a+c) + (b+d)i
(a + bi) − (c + di) = (a−c) + (b−d)i

### Multiplication
Use FOIL and substitute i² = −1:
(a + bi)(c + di) = ac + adi + bci + bdi²
= ac + adi + bci − bd
= **(ac − bd) + (ad + bc)i**

### Division (Using the Conjugate)
To divide, multiply numerator and denominator by the conjugate of the denominator:

(a + bi)/(c + di) = [(a+bi)(c−di)] / [(c+di)(c−di)]
= [(ac+bd) + (bc−ad)i] / (c²+d²)
= **(ac+bd)/(c²+d²) + (bc−ad)i/(c²+d²)**

---

## De Moivre''s Theorem

For complex numbers in polar form, this is the most powerful theorem:

**[r(cos θ + i sin θ)]ⁿ = rⁿ(cos nθ + i sin nθ)**

Or: **(reⁱᶿ)ⁿ = rⁿeⁱⁿᶿ**

### Applications:
1. **Finding powers of complex numbers** — convert to polar, apply theorem
2. **Finding nth roots** — use the nth root formula
3. **Proving trigonometric identities**

---

## Nth Roots of Complex Numbers

The nth roots of z = r·cis θ are:

**zₖ = r^(1/n) · cis[(θ + 2kπ)/n]** for k = 0, 1, 2, ..., n−1

There are always exactly **n distinct roots**, equally spaced around a circle of radius r^(1/n).

---

## Loci in the Argand Diagram

Complex numbers can define geometric shapes:

| Condition | Shape | Description |
|---|---|---|
| \|z − a\| = r | Circle | Centre a, radius r |
| \|z − a\| = \|z − b\| | Line | Perp. bisector of AB |
| arg(z − a) = θ | Ray | From point a at angle θ |
| \|z − a\| < r | Disc | Interior of circle |',
'explanation', 3),

('b1000007-0000-0000-0000-000000000003',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Basic Operations
Let z₁ = 3 + 4i, z₂ = 1 − 2i. Find:
(a) z₁ + z₂ = (3+1) + (4+(−2))i = **4 + 2i**
(b) z₁ × z₂ = (3)(1) + (3)(−2i) + (4i)(1) + (4i)(−2i)
= 3 − 6i + 4i − 8i²
= 3 − 2i + 8 = **11 − 2i**
(c) z₁/z₂: Multiply by conjugate (1+2i)/(1+2i):
= (3+4i)(1+2i) / (1+4) = (3+6i+4i+8i²)/5
= (3+10i−8)/5 = (−5+10i)/5 = **−1 + 2i**

---

### Example 2: Modulus and Argument
Find the modulus and argument of z = −1 + √3 i.

**Modulus:** |z| = √(1 + 3) = √4 = **2**

**Argument:** The point is in the second quadrant (real part negative, imaginary part positive).
Basic angle = arctan(√3/1) = π/3
arg(z) = π − π/3 = **2π/3** (in second quadrant)

**Polar form:** z = 2[cos(2π/3) + i sin(2π/3)]

---

### Example 3: De Moivre''s Theorem — Power
Find (1 + i)⁸.

**Step 1:** Convert to polar form.
|1+i| = √2, arg(1+i) = π/4
So 1+i = √2 · cis(π/4)

**Step 2:** Apply De Moivre''s Theorem.
(1+i)⁸ = (√2)⁸ · cis(8 × π/4) = 16 · cis(2π) = 16(cos 2π + i sin 2π) = **16**

---

### Example 4: Cube Roots of Unity
Find the three cube roots of 1.

z³ = 1 = 1·cis(0). Using the root formula with r=1, θ=0, n=3:
zₖ = cis(2kπ/3) for k = 0, 1, 2.

- z₀ = cis(0) = **1**
- z₁ = cis(2π/3) = cos(2π/3) + i sin(2π/3) = **−1/2 + (√3/2)i**
- z₂ = cis(4π/3) = **−1/2 − (√3/2)i**

These three roots are often written as **1, ω, ω²** where ω = −1/2 + (√3/2)i.
Note: 1 + ω + ω² = 0 (they sum to zero — always true for nth roots of unity).

---

### Example 5: Proving Trigonometric Identity
Use De Moivre to show cos 3θ = 4cos³θ − 3cosθ.

(cos θ + i sin θ)³ = cos 3θ + i sin 3θ (De Moivre''s)

Expand left side by binomial:
= cos³θ + 3cos²θ(i sinθ) + 3cosθ(i sinθ)² + (i sinθ)³
= cos³θ + 3i cos²θ sinθ − 3cosθ sin²θ − i sin³θ

Real part: cos 3θ = cos³θ − 3cosθ sin²θ
= cos³θ − 3cosθ(1 − cos²θ)
= **4cos³θ − 3cosθ** ✓',
'examples', 4),

('b1000007-0000-0000-0000-000000000003',
'Practice Questions',
'## Practice Questions — Complex Numbers

### Section A: Basic Operations
Given z₁ = 2 + 3i and z₂ = 1 − i, find:

**1.** z₁ + z₂

**2.** z₁ − z₂

**3.** z₁ × z₂

**4.** z₁ / z₂

**5.** z₁² + z₂²

**6.** The conjugate of each and their product z₁ × z₁*

---

### Section B: Modulus, Argument, Polar Form
**7.** Find |z| and arg(z) for: (a) 3 + 4i  (b) −2 + 2i  (c) −√3 − i

**8.** Express z = 4 + 4i in polar form (r·cis θ).

**9.** Convert r = 3, θ = π/6 back to a + bi form.

---

### Section C: De Moivre''s Theorem
**10.** Find (1 + i√3)⁶ using De Moivre''s Theorem.

**11.** Find (√3 − i)⁴.

**12.** Show that (cos θ + i sin θ)⁻¹ = cos θ − i sin θ.

---

### Section D: Roots
**13.** Find all square roots of 5 + 12i.

**14.** Find the four 4th roots of 16.

**15.** Solve z⁴ + 4 = 0.

---

### Section E: Loci and Geometry
**16.** Describe and sketch the locus |z − 3 + 2i| = 4.

**17.** Describe the locus arg(z + 1) = π/4.

**18.** Find the locus of z when |z − 2| = |z + 2|.

---

### Section F: Trig Identities via De Moivre
**19.** Use De Moivre to prove sin 3θ = 3sinθ − 4sin³θ.

**20.** Express cos 4θ in terms of cos θ.

### Answers
1. 3+2i   2. 1+4i   3. 5+i   4. (−1+5i)/2   7a. 5, arctan(4/3)   7b. 2√2, 3π/4   8. 4√2·cis(π/4)   10. 64   13. ±(3+2i)',
'practice', 5),

('b1000007-0000-0000-0000-000000000003',
'Summary and Key Formulas',
'## Summary: Complex Numbers

### Essential Formulas

| Concept | Formula |
|---|---|
| Imaginary unit | i² = −1 |
| Standard form | z = a + bi |
| Conjugate | z* = a − bi |
| Modulus | \|z\| = √(a² + b²) |
| Argument | arg(z) = arctan(b/a) ± kπ |
| Polar form | z = r·cis θ |
| Multiplication in polar | r₁·cis θ₁ × r₂·cis θ₂ = r₁r₂·cis(θ₁+θ₂) |
| Division in polar | r₁/r₂ · cis(θ₁−θ₂) |
| De Moivre | zⁿ = rⁿ·cis(nθ) |
| nth roots | r^(1/n)·cis[(θ+2kπ)/n] |
| Euler''s formula | eⁱᶿ = cos θ + i sin θ |

### Key Properties
- **z + z* = 2 Re(z)** (always real)
- **z × z* = |z|²** (always non-negative real)
- **|z₁z₂| = |z₁||z₂|**
- **arg(z₁z₂) = arg(z₁) + arg(z₂)**

### Exam Tips
- Always state modulus and argument BEFORE applying De Moivre
- For arguments, always identify the correct quadrant — don''t just use arctan mechanically
- When finding roots, always check that you have found ALL n roots
- For loci questions, write the condition in geometric terms and sketch!',
'content', 6);

-- ============================================================
-- TOPIC 4: CALCULUS - INTEGRATION
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('b1000007-0000-0000-0000-000000000004',
'Overview of Integration',
'## What is Integration?

Integration is the reverse process of differentiation. If differentiation finds the rate of change, integration finds the **accumulated total** — areas, volumes, distances, and much more.

There are two kinds of integration:

### 1. Indefinite Integration
∫ f(x) dx = F(x) + C

This gives a **family of functions** (antiderivatives). The constant C is always included because differentiating any constant gives zero.

**Key relationship:** If d/dx[F(x)] = f(x), then ∫ f(x) dx = F(x) + C

### 2. Definite Integration
∫ₐᵇ f(x) dx = F(b) − F(a)

This gives a **specific number** — the signed area under the curve from x = a to x = b.

### Why Integration Matters
- Calculate areas and volumes (geometry, engineering)
- Find displacement from velocity, velocity from acceleration
- Compute work done by a force
- Probability density functions in statistics
- Fourier analysis and signal processing

**The Fundamental Theorem of Calculus** connects differentiation and integration, showing they are inverses of each other — one of the most profound results in all of mathematics.',
'overview', 1),

('b1000007-0000-0000-0000-000000000004',
'Standard Integrals and Basic Rules',
'## Standard Integrals — Memorise These

| f(x) | ∫ f(x) dx |
|---|---|
| xⁿ (n ≠ −1) | xⁿ⁺¹/(n+1) + C |
| 1/x | ln\|x\| + C |
| eˣ | eˣ + C |
| eᵃˣ | (1/a)eᵃˣ + C |
| sin x | −cos x + C |
| cos x | sin x + C |
| sec²x | tan x + C |
| cosec²x | −cot x + C |
| sec x tan x | sec x + C |
| cosec x cot x | −cosec x + C |
| 1/√(1−x²) | arcsin x + C |
| 1/(1+x²) | arctan x + C |
| aˣ | aˣ/ln a + C |

---

## Integration Techniques

### 1. Reverse Chain Rule (Inspection)
If you recognise that the integrand is of the form f''(g(x))·g''(x):
∫ f''(g(x)) · g''(x) dx = f(g(x)) + C

**Example:** ∫ 2x · e^(x²) dx = e^(x²) + C

A quick check: differentiate e^(x²) → 2x · e^(x²) ✓

### 2. Integration by Substitution
Used when the integrand contains a composite function.

**Steps:**
1. Choose u = g(x) (the inner function)
2. Find du/dx, then write dx = du/g''(x)
3. Substitute and integrate in terms of u
4. Substitute back in terms of x

### 3. Integration by Parts
Used for products of functions. Based on the product rule:

**∫ u dv = uv − ∫ v du**

**LIATE rule for choosing u:**
Logarithms > Inverse trig > Algebraic > Trig > Exponential
(Choose u as the type that comes first in the list)

### 4. Partial Fractions
Used when integrating rational functions (polynomial/polynomial).
Decompose into simpler fractions, then integrate each separately.

### 5. Trigonometric Substitutions
For integrals involving √(a²−x²), √(a²+x²), √(x²−a²), use:
- x = a sin θ, x = a tan θ, x = a sec θ respectively',
'definitions', 2),

('b1000007-0000-0000-0000-000000000004',
'Integration Techniques in Depth',
'## Integration by Substitution — Detailed

### Indefinite Example:
Find ∫ (2x+1)⁵ dx.

Let u = 2x + 1, so du/dx = 2, thus dx = du/2.
∫ (2x+1)⁵ dx = ∫ u⁵ · (du/2) = (1/2) · u⁶/6 + C = **(2x+1)⁶/12 + C**

**Check:** d/dx[(2x+1)⁶/12] = 6(2x+1)⁵ · 2 / 12 = (2x+1)⁵ ✓

### Definite Example:
Find ∫₀¹ x · √(1+x²) dx.

Let u = 1 + x², du/dx = 2x, dx = du/(2x).
Change limits: x=0 → u=1; x=1 → u=2.

∫₀¹ x · √u · du/(2x) = (1/2)∫₁² u^(1/2) du
= (1/2) · [u^(3/2)/(3/2)]₁²
= (1/3)[u^(3/2)]₁²
= (1/3)[2^(3/2) − 1]
= (1/3)[2√2 − 1]
= **(2√2 − 1)/3**

---

## Integration by Parts — Detailed

### Example 1:
Find ∫ x eˣ dx.

Choose u = x (Algebraic), dv = eˣ dx (Exponential)
Then du = dx, v = eˣ

∫ x eˣ dx = x eˣ − ∫ eˣ dx = **x eˣ − eˣ + C = eˣ(x−1) + C**

### Example 2: Repeated Application
Find ∫ x² sin x dx.

Let u = x², dv = sin x dx → du = 2x dx, v = −cos x
∫ x² sin x dx = −x² cos x + ∫ 2x cos x dx ...(*)

Now apply again for ∫ 2x cos x dx:
u = 2x, dv = cos x dx → du = 2dx, v = sin x
= 2x sin x − ∫ 2 sin x dx = 2x sin x + 2 cos x

Substituting back into (*):
**= −x² cos x + 2x sin x + 2 cos x + C**

### Example 3: Cyclic (Trig × Exponential)
Find ∫ eˣ sin x dx.

Let I = ∫ eˣ sin x dx.

u = sin x, dv = eˣ dx → v = eˣ, du = cos x dx
I = eˣ sin x − ∫ eˣ cos x dx ...(1)

Now find ∫ eˣ cos x dx:
u = cos x, dv = eˣ dx → v = eˣ, du = −sin x dx
∫ eˣ cos x dx = eˣ cos x + ∫ eˣ sin x dx = eˣ cos x + I ...(2)

Substitute (2) into (1):
I = eˣ sin x − eˣ cos x − I
2I = eˣ(sin x − cos x)
**I = eˣ(sin x − cos x)/2 + C**

---

## Partial Fractions

### Type 1: Distinct Linear Factors
∫ 1/[(x+1)(x+2)] dx

Decompose: 1/[(x+1)(x+2)] = A/(x+1) + B/(x+2)
Multiply through: 1 = A(x+2) + B(x+1)
x = −1: 1 = A(1) → A = 1
x = −2: 1 = B(−1) → B = −1

∫ [1/(x+1) − 1/(x+2)] dx = **ln|x+1| − ln|x+2| + C = ln|(x+1)/(x+2)| + C**

### Type 2: Repeated Factors
∫ (2x+1)/(x²(x+1)) dx → Decompose as A/x + B/x² + C/(x+1)

### Type 3: Irreducible Quadratic
∫ 1/(x²+4) dx = (1/2) arctan(x/2) + C

---

## Applications of Integration

### Area Between Curves
Area between y = f(x) and y = g(x) from a to b (where f(x) ≥ g(x)):
**A = ∫ₐᵇ [f(x) − g(x)] dx**

### Volume of Revolution (About x-axis)
**V = π ∫ₐᵇ y² dx**

### Volume of Revolution (About y-axis)
**V = π ∫_c^d x² dy**',
'explanation', 3),

('b1000007-0000-0000-0000-000000000004',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Area Under a Curve
Find the area enclosed by y = x² − 4 and the x-axis.

**Step 1:** Find where y = 0: x² − 4 = 0 → x = ±2

**Step 2:** Note that y = x² − 4 is below the x-axis between x = −2 and x = 2.

Area = ∫₋₂² |x² − 4| dx = −∫₋₂² (x² − 4) dx (since curve is below axis)
= −[x³/3 − 4x]₋₂²
= −[(8/3 − 8) − (−8/3 + 8)]
= −[(8/3 − 8) − (−8/3 + 8)]
= −[8/3 − 8 + 8/3 − 8]
= −[16/3 − 16]
= −[−32/3]
= **32/3 square units**

---

### Example 2: Volume of Revolution
The curve y = √x is rotated 360° about the x-axis from x = 0 to x = 4. Find the volume.

**V = π ∫₀⁴ y² dx = π ∫₀⁴ x dx = π [x²/2]₀⁴ = π(8) = 8π cubic units**

---

### Example 3: Area Between Two Curves
Find the area enclosed by y = x² and y = 2x + 3.

**Step 1:** Find intersections: x² = 2x + 3 → x² − 2x − 3 = 0 → (x−3)(x+1) = 0 → x = −1 or x = 3

**Step 2:** On [−1, 3], y = 2x + 3 is above y = x².

Area = ∫₋₁³ [(2x+3) − x²] dx
= [x² + 3x − x³/3]₋₁³
= [(9+9−9) − (1−3+1/3)]
= [9 − (−1 + 1/3)]
= [9 + 1 − 1/3]
= 10 − 1/3 = **32/3 square units**

---

### Example 4: Integration by Parts — Definite
Find ∫₁ᵉ ln x dx.

u = ln x, dv = dx → du = 1/x dx, v = x
= [x ln x]₁ᵉ − ∫₁ᵉ x · (1/x) dx
= [x ln x]₁ᵉ − ∫₁ᵉ 1 dx
= [x ln x − x]₁ᵉ
= (e·1 − e) − (1·0 − 1)
= 0 − (−1)
= **1**',
'examples', 4),

('b1000007-0000-0000-0000-000000000004',
'Practice Questions',
'## Practice Questions — Integration

### Section A: Standard Integrals
Find each integral:

**1.** ∫ (4x³ − 3x² + 2x − 1) dx

**2.** ∫ (1/x³ + √x) dx

**3.** ∫ (3 sin x + 4 cos x) dx

**4.** ∫ e^(5x) dx

**5.** ∫ (2/(1+x²)) dx

---

### Section B: Substitution
**6.** ∫ (3x+2)⁷ dx

**7.** ∫ x(x²+1)⁴ dx

**8.** ∫ cos x · e^(sinx) dx

**9.** ∫₀^(π/2) sin x cos x dx (use substitution u = sin x)

**10.** ∫ 1/(2x−1) dx

---

### Section C: Integration by Parts
**11.** ∫ x cos x dx

**12.** ∫ x² eˣ dx

**13.** ∫ x² ln x dx

**14.** ∫ eˣ cos x dx

**15.** ∫₀¹ x eˣ dx

---

### Section D: Partial Fractions
**16.** ∫ 1/[(x+1)(x−2)] dx

**17.** ∫ (3x+1)/[(x+1)(x+2)] dx

**18.** ∫ 1/(x²−4) dx

---

### Section E: Applications
**19.** Find the area between y = 6x − x² and the x-axis.

**20.** Find the area enclosed by y = x² and y = x + 2.

**21.** The region bounded by y = 1/x, x = 1, x = 4, and the x-axis is rotated about the x-axis. Find the volume.

**22.** Find the area enclosed by y = sin x and y = cos x between x = π/4 and x = 5π/4.

---

### Answers
1. x⁴ − x³ + x² − x + C
3. −3cos x + 4sin x + C
4. (1/5)e^(5x) + C
6. (3x+2)⁸/24 + C
9. 1/2
11. x sin x + cos x + C
15. 1 (exactly)
19. 36 sq units
20. 9/2 sq units',
'practice', 5),

('b1000007-0000-0000-0000-000000000004',
'Summary and Key Formulas',
'## Summary: Integration

### Integration Methods — When to Use Them

| Integrand Type | Method |
|---|---|
| Standard function | Direct lookup from table |
| Function of a linear function | Reverse chain rule |
| Composite function | Substitution |
| Product of two function types | Integration by Parts (LIATE) |
| Rational function | Partial Fractions |
| Contains √(a²−x²) | Trig substitution (x = a sin θ) |

### Definite Integration Tips
- Always check if the curve is below the x-axis (area = |integral|)
- For area between curves: ∫[top − bottom] dx
- For volume: V = π∫ y² dx (about x-axis)

### Integration by Parts — LIATE Reminder
L — Logarithms (choose as u first)
I — Inverse trig
A — Algebraic (polynomials)
T — Trigonometric
E — Exponential (choose as dv last)

### Common Mistakes
- Forgetting the +C in indefinite integrals
- Wrong sign in trig integrals (cos → −sin, not +sin)
- Not changing the limits in definite substitution
- Forgetting that area is always positive (use absolute value if needed)

### The Fundamental Theorem
**d/dx [∫ₐˣ f(t) dt] = f(x)**

This connects differentiation and integration and is one of the most powerful results in mathematics.',
'content', 6);
