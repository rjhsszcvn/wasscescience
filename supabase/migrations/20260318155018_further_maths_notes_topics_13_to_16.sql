
/*
  # Further Mathematics Deep Notes: Topics 13-16
  
  Adds comprehensive notes for:
  13. Conic Sections (eee78e6d-3335-4d60-ab62-7b380f46d986)
  14. Numerical Methods (becd0f9c-2a9a-4689-8637-50a20343b51a)
  15. Differential Equations (4222a92c-14ff-42b9-a964-815a002a4cb7)
  16. Linear Programming (3a190ebe-0a5c-4751-a48c-e4b8072575bc)
*/

-- ============================================================
-- TOPIC 13: CONIC SECTIONS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Overview of Conic Sections',
'## What Are Conic Sections?

A **conic section** is the curve formed when a plane cuts through a double cone at various angles. The four conic sections are:

1. **Circle** — plane cuts perpendicular to axis
2. **Ellipse** — plane cuts at an angle (but not through base)
3. **Parabola** — plane cuts parallel to a slant edge
4. **Hyperbola** — plane cuts through both cones

### Why Conics Matter
- **Parabola:** Path of a projectile; shape of satellite dishes, car headlights, telescope mirrors
- **Ellipse:** Orbits of planets around the sun (Kepler''s First Law)
- **Hyperbola:** Used in navigation systems (LORAN), sonic booms, cooling towers
- **Circle:** Wheels, clocks, gears, optics

### The General Second-Degree Equation
All conics are special cases of:
**Ax² + Bxy + Cy² + Dx + Ey + F = 0**

The type is determined by the discriminant B² − 4AC:
- B² − 4AC < 0: Ellipse (circle if A=C and B=0)
- B² − 4AC = 0: Parabola
- B² − 4AC > 0: Hyperbola',
'overview', 1),

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Equations of Conics',
'## The Four Conics — Standard Equations

### 1. The Parabola

**Standard forms (vertex at origin):**
- y² = 4ax (opens right, focus at (a, 0))
- y² = −4ax (opens left)
- x² = 4ay (opens up, focus at (0, a))
- x² = −4ay (opens down)

**Key features of y² = 4ax:**
- **Vertex:** (0, 0)
- **Focus:** (a, 0) — the special point inside
- **Directrix:** x = −a (vertical line)
- **Axis of symmetry:** y = 0 (x-axis)
- **Latus rectum:** Chord through focus perpendicular to axis; length = 4a
- **Focal property:** Every point P on parabola satisfies PF = Pd (distance to focus = distance to directrix)

**Parametric form:** x = at², y = 2at

---

### 2. The Ellipse

**Standard form (centred at origin, major axis along x-axis, a > b):**
**x²/a² + y²/b² = 1**

**Key features:**
- **Vertices:** (±a, 0) and (0, ±b) — four vertices total
- **Semi-major axis:** a (along x)
- **Semi-minor axis:** b (along y)
- **Foci:** (±c, 0) where **c² = a² − b²**
- **Eccentricity:** e = c/a (0 < e < 1 for ellipse)
- **Directrices:** x = ±a/e
- **Focal property:** PF₁ + PF₂ = 2a (sum of distances to both foci is constant)

**Parametric form:** x = a cos θ, y = b sin θ

**If a = b:** The ellipse becomes a circle (eccentricity = 0)

---

### 3. The Hyperbola

**Standard form:**
**x²/a² − y²/b² = 1**

**Key features:**
- **Vertices:** (±a, 0)
- **Foci:** (±c, 0) where **c² = a² + b²**
- **Eccentricity:** e = c/a (e > 1 for hyperbola)
- **Asymptotes:** y = ±(b/a)x
- **Focal property:** |PF₁ − PF₂| = 2a (difference of distances to foci is constant)

**Rectangular hyperbola:** When asymptotes are perpendicular: xy = c² or x²−y²=a²
- If xy = c², parametric form: x = ct, y = c/t

---

### Summary Table

| Conic | Equation | Eccentricity | Foci |
|---|---|---|---|
| Circle | x²+y²=r² | e=0 | (0,0) |
| Ellipse | x²/a²+y²/b²=1 | 0 < e < 1 | (±c,0), c²=a²−b² |
| Parabola | y²=4ax | e=1 | (a,0) |
| Hyperbola | x²/a²−y²/b²=1 | e > 1 | (±c,0), c²=a²+b² |',
'definitions', 2),

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Tangents and Normals to Conics',
'## Tangents and Normals

### Tangent to a Parabola y² = 4ax

**At point (at², 2at):**
Gradient: dy/dx = 1/t (using parametric differentiation)
**Tangent: ty = x + at²**

**At point (x₁, y₁):**
**yy₁ = 2a(x + x₁)**

### Normal to a Parabola at (at², 2at)
Gradient of normal = −t
**Normal: y = −tx + 2at + at³**
or: y + tx = 2at + at³

---

### Tangent to an Ellipse x²/a² + y²/b² = 1

**At point (x₁, y₁):**
**xx₁/a² + yy₁/b² = 1**

**General tangent with gradient m:**
**y = mx ± √(a²m² + b²)**

---

### Tangent to a Hyperbola x²/a² − y²/b² = 1

**At point (x₁, y₁):**
**xx₁/a² − yy₁/b² = 1**

**General tangent with gradient m:**
**y = mx ± √(a²m² − b²)**

---

## The Focal Chord

A **focal chord** is a chord of a conic that passes through its focus.

### For the Parabola y² = 4ax:
If a chord joins parameters t₁ and t₂:
- The chord passes through focus if and only if **t₁t₂ = −1**
- The semi-latus rectum has length a (at the focus, t = 1, the chord endpoints have y = ±2a)

### Reflection Property of the Parabola
Rays parallel to the axis, hitting the parabola, all reflect through the focus.
This is why parabolic mirrors work — all incoming light focuses at one point!',
'explanation', 3),

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Identifying and Sketching
Identify the conic 4x² + 9y² = 36 and find its key features.

Rewrite: x²/9 + y²/4 = 1

This is an **ellipse** with a² = 9, b² = 4.
- a = 3, b = 2
- c² = a² − b² = 9 − 4 = 5, so c = √5
- Foci: (±√5, 0)
- Vertices: (±3, 0) and (0, ±2)
- Eccentricity: e = √5/3

---

### Example 2: Parabola — Tangent and Normal
Find the equation of the tangent and normal to y² = 8x at the point (2, 4).

Comparing with y² = 4ax: 4a = 8, so a = 2.
Point (2, 4) = (at², 2at) → 2at = 4, t = 1 (since a=2).

**Tangent:** ty = x + at²
(1)y = x + 2(1)
**y = x + 2**

**Normal gradient:** −t = −1
Normal: y − 4 = −1(x − 2)
**y = −x + 6**

---

### Example 3: Ellipse — Point on Curve
The ellipse has equation x²/16 + y²/9 = 1.
(a) Find the eccentricity and foci.
(b) Find the equation of the tangent at (2, 3√3/2).

**(a)** a² = 16, b² = 9, c² = 7, e = √7/4 ≈ 0.661
Foci: (±√7, 0)

**(b)** Tangent at (x₁,y₁): xx₁/16 + yy₁/9 = 1
x(2)/16 + y(3√3/2)/9 = 1
x/8 + y√3/6 = 1
**3x + 4√3·y = 24**

---

### Example 4: Hyperbola Asymptotes
Find the asymptotes of 9x² − 4y² = 36 and find its foci.

Rewrite: x²/4 − y²/9 = 1

a² = 4, b² = 9 → a = 2, b = 3
Asymptotes: y = ±(b/a)x = **y = ±(3/2)x**
c² = a² + b² = 13, c = √13
Foci: **(±√13, 0)**',
'examples', 4),

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Practice Questions',
'## Practice Questions — Conic Sections

### Section A: Identification and Equations
**1.** Identify each conic and find key features:
(a) y² = 12x   (b) x²/25 + y²/16 = 1   (c) x²/9 − y²/16 = 1   (d) x² + y² − 6x + 4y = 0

**2.** Write the equation of:
(a) Parabola with focus (3,0) and directrix x=−3
(b) Ellipse with vertices (±5,0) and foci (±3,0)
(c) Hyperbola with vertices (±2,0) and asymptotes y=±x

**3.** Find the eccentricity of: (a) x²/9+y²/5=1  (b) x²/4−y²/5=1  (c) y²=8x

---

### Section B: Tangents and Normals
**4.** Find the tangent and normal to y²=16x at parameter t=2.

**5.** Find the equation of the tangent to x²/4+y²/1=1 at the point (1, √3/2).

**6.** Prove that the line y=3x+2 is a tangent to x²−y²/4=1.

---

### Section C: Advanced Problems
**7.** For the parabola y²=4ax, prove that the tangents at points t=p and t=q meet at the point (apq, a(p+q)).

**8.** Show that the tangent at any point of the ellipse makes equal angles with the two focal radii (reflection property).

**9.** Find the length of the latus rectum of 9x²+16y²=144.

---

### Section D: Applications
**10.** A satellite dish is parabolic. The dish is 4m wide and 0.5m deep. Find the position of the receiver (focus).

**11.** Halley''s comet has an elliptical orbit with eccentricity 0.967. If the minimum distance from the sun is 0.59 AU, find the maximum distance.

### Answers
1a. Parabola a=3, focus(3,0)  1b. Ellipse a=5,b=4,c=3  3a. e=2/3  9. 9/2  10. Focus at 2m from vertex',
'practice', 5),

('eee78e6d-3335-4d60-ab62-7b380f46d986',
'Summary',
'## Summary: Conic Sections

### Quick Reference

| Conic | Equation | Parameter | Focus/Foci |
|---|---|---|---|
| Parabola | y²=4ax | (at²,2at) | (a,0) |
| Ellipse | x²/a²+y²/b²=1 | (acosθ,bsinθ) | c²=a²−b² |
| Hyperbola | x²/a²−y²/b²=1 | (asecθ,btanθ) | c²=a²+b² |

### Key Relationships
- For ellipse: |PF₁|+|PF₂|=2a always
- For hyperbola: ||PF₁|−|PF₂||=2a always
- For parabola: |PF|=distance to directrix always

### Tangent at Point (x₁,y₁):
- Parabola y²=4ax: yy₁=2a(x+x₁)
- Ellipse: xx₁/a²+yy₁/b²=1
- Hyperbola: xx₁/a²−yy₁/b²=1

### Asymptotes of Hyperbola x²/a²−y²/b²=1
y = ±(b/a)x — the curve approaches but never crosses these lines.',
'content', 6);

-- ============================================================
-- TOPIC 14: NUMERICAL METHODS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Overview of Numerical Methods',
'## Numerical Methods

Many mathematical equations cannot be solved exactly using algebra. **Numerical methods** provide systematic algorithms to find approximate solutions to any desired level of accuracy.

### What You Will Study
- Locating roots of equations (change of sign, graphical)
- The Bisection Method
- Newton-Raphson Method
- Fixed-Point Iteration
- Numerical Integration (Trapezium Rule, Simpson''s Rule)
- Solution of differential equations (Euler''s Method)
- Error and convergence analysis

### Why Numerical Methods Matter
- Real-world equations (e.g., from physics or engineering) are rarely solvable analytically
- Every calculator, computer, and simulation uses numerical methods
- They bridge the gap between pure mathematics and practical computation

### The Central Theme: Iteration
Most numerical methods work by **iteration** — starting with an initial guess and repeatedly improving it until the answer is accurate enough.

**Key criterion:** We stop when two successive iterations agree to the required number of decimal places.',
'overview', 1),

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Root Finding Methods',
'## Locating Roots of f(x) = 0

### Step 1: Sign Change (Interval of Root)
If f(a) and f(b) have opposite signs and f is continuous on [a,b], then there is at least one root in (a,b).

**Example:** f(x) = x³ − x − 3
f(1) = 1 − 1 − 3 = −3 < 0
f(2) = 8 − 2 − 3 = 3 > 0
Root lies between 1 and 2.

---

## The Bisection Method

**Algorithm:**
1. Start with [a, b] where f(a) and f(b) have opposite signs.
2. Find midpoint m = (a+b)/2.
3. Evaluate f(m).
4. If f(m) = 0: done. If f(a)·f(m) < 0: new interval is [a,m]. Else: [m,b].
5. Repeat until desired accuracy.

**Convergence:** Always works but is slow (halves the interval each time → linear convergence).

**Error bound:** After n bisections, error < (b−a)/2ⁿ

---

## Newton-Raphson Method

Starting from initial estimate x₀:

**xₙ₊₁ = xₙ − f(xₙ)/f''(xₙ)**

**Geometric interpretation:** Draw tangent to curve at xₙ; where it crosses x-axis is xₙ₊₁.

**Convergence:** Quadratic — number of correct digits roughly doubles each iteration. Very fast!

**Pitfalls:**
- Fails if f''(xₙ) = 0 (tangent is horizontal)
- May diverge if starting point is far from root
- May converge to wrong root

---

## Fixed-Point Iteration

Rearrange f(x) = 0 into the form x = g(x), then iterate:
**xₙ₊₁ = g(xₙ)**

**Convergence condition:** |g''(x)| < 1 near the root.

**Example:** Solve x³ − x − 3 = 0.

Rearrange: x = (x + 3)^(1/3) → g(x) = (x+3)^(1/3)
g''(x) = (1/3)(x+3)^(-2/3)

At root ≈ 1.67: g''(1.67) ≈ (1/3)(4.67)^(-2/3) ≈ 0.17 < 1 ✓ Converges!

Starting x₀ = 1.5:
x₁ = (1.5+3)^(1/3) = 4.5^(1/3) ≈ 1.651
x₂ = (1.651+3)^(1/3) ≈ 1.671
x₃ ≈ 1.674
Converging to root ≈ 1.6717...',
'definitions', 2),

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Numerical Integration',
'## Numerical Integration

When we cannot integrate analytically, we approximate the area under a curve.

### The Trapezium Rule
Divide [a,b] into n strips of width h = (b−a)/n.
Let y₀, y₁, ..., yₙ be the y-values.

**∫ₐᵇ f(x)dx ≈ h/2 × [y₀ + 2(y₁ + y₂ + ... + yₙ₋₁) + yₙ]**

Or: h × [(first + last)/2 + all middles]

**Error:** Proportional to h² (second-order method). Doubling strips quarters the error.
**Direction of error:** Overestimates for concave up (∪), underestimates for concave down (∩).

### Simpson''s Rule (More Accurate)
Requires an EVEN number of strips.

**∫ₐᵇ f(x)dx ≈ h/3 × [y₀ + 4y₁ + 2y₂ + 4y₃ + 2y₄ + ... + 4yₙ₋₁ + yₙ]**

Pattern of coefficients: 1, 4, 2, 4, 2, ..., 4, 1

**Error:** Proportional to h⁴ — much more accurate than Trapezium Rule!
Simpson''s Rule is EXACT for polynomials up to degree 3.

### Comparing the Methods

| Method | Error Order | Formula |
|---|---|---|
| Trapezium | O(h²) | h/2[y₀+2(inner)+yₙ] |
| Simpson''s | O(h⁴) | h/3[y₀+4y₁+2y₂+...+yₙ] |

### Euler''s Method for ODEs

For dy/dx = f(x,y) with initial condition y(x₀) = y₀:

**yₙ₊₁ = yₙ + h·f(xₙ, yₙ)**

This uses the gradient at each point to step forward. Small h gives better accuracy but requires more steps.',
'explanation', 3),

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Newton-Raphson Method
Use Newton-Raphson to find the root of x³ + x − 5 = 0 near x = 1.5, correct to 4 d.p.

f(x) = x³ + x − 5, f''(x) = 3x² + 1

x₀ = 1.5:
f(1.5) = 3.375 + 1.5 − 5 = −0.125
f''(1.5) = 6.75 + 1 = 7.75
x₁ = 1.5 − (−0.125)/7.75 = 1.5 + 0.01613 = **1.5161**

x₁ = 1.5161:
f(1.5161) ≈ 0.001 (very small)
f''(1.5161) ≈ 7.89
x₂ ≈ 1.5161 − 0.001/7.89 ≈ **1.5160**

Root ≈ **1.5160** (to 4 d.p.)

---

### Example 2: Trapezium Rule
Estimate ∫₀² eˣ dx using the Trapezium Rule with 4 strips.

h = (2−0)/4 = 0.5
Values:
x₀=0: y₀=e⁰=1
x₁=0.5: y₁=e^0.5≈1.6487
x₂=1: y₂=e¹≈2.7183
x₃=1.5: y₃=e^1.5≈4.4817
x₄=2: y₄=e²≈7.3891

Trapezium Rule:
= (0.5/2)[1 + 2(1.6487+2.7183+4.4817) + 7.3891]
= 0.25[1 + 2(8.8487) + 7.3891]
= 0.25[1 + 17.6974 + 7.3891]
= 0.25 × 26.0865
= **6.5216**

Exact value: e² − 1 = 6.3891. Error ≈ 0.13 (overestimate as eˣ is concave up).

---

### Example 3: Simpson''s Rule (Same Problem)
Using same values (n=4 strips, even ✓):
= (0.5/3)[y₀ + 4y₁ + 2y₂ + 4y₃ + y₄]
= (1/6)[1 + 4(1.6487) + 2(2.7183) + 4(4.4817) + 7.3891]
= (1/6)[1 + 6.5948 + 5.4366 + 17.9268 + 7.3891]
= (1/6)[38.3473]
= **6.3912**

Much closer to exact value 6.3891! Error ≈ 0.002.

---

### Example 4: Fixed-Point Iteration
Solve x² − 5x + 3 = 0 using x = (x² + 3)/5. Start x₀ = 0.5.

g(x) = (x²+3)/5, g''(x) = 2x/5

At root (≈ 0.70): g''(0.7) = 0.28 < 1 ✓

x₀ = 0.5:
x₁ = (0.25+3)/5 = 0.65
x₂ = (0.4225+3)/5 = 0.6845
x₃ = (0.4685+3)/5 = 0.6937
x₄ = (0.4812+3)/5 = 0.6962
x₅ ≈ 0.6969...
Root ≈ **0.697** (also: x = 4.303 from quadratic formula)',
'examples', 4),

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Practice Questions',
'## Practice Questions — Numerical Methods

### Section A: Locating and Bisecting Roots
**1.** Show that f(x) = x³ − 4x + 1 has a root in [0,1]. Use the bisection method to find it correct to 1 d.p.

**2.** Show that g(x) = cos x − x has exactly one positive root. Find it by bisection to 2 d.p.

---

### Section B: Newton-Raphson
**3.** Use Newton-Raphson to find the positive root of x² − 5 = 0 starting from x₀ = 2. Give 3 iterations.

**4.** Use Newton-Raphson to solve eˣ = 3x starting from x₀ = 1.5. Find root to 4 d.p.

**5.** Show that Newton-Raphson applied to f(x) = x² − N starting from x₀ gives xₙ₊₁ = (xₙ + N/xₙ)/2. This is the ancient Babylonian square root algorithm!

---

### Section C: Fixed-Point Iteration
**6.** Which of these rearrangements of x³ − 2x − 5 = 0 will converge near x = 2?
(a) x = (x³ − 5)/2   (b) x = (2x+5)^(1/3)   (c) x = 5/(x²−2)

**7.** Use x = (2x+5)^(1/3) to find the root of x³ − 2x − 5 = 0 to 4 d.p., starting from x₀ = 2.

---

### Section D: Numerical Integration
**8.** Use the Trapezium Rule with 5 ordinates (4 strips) to estimate ∫₁³ 1/x dx. Compare with the exact value ln 3.

**9.** Use Simpson''s Rule with 4 strips to estimate ∫₀¹ √(1+x²) dx.

**10.** Use Simpson''s Rule with 6 strips to estimate ∫₀^π sin x dx. Compare with exact value 2.

---

### Section E: Euler''s Method
**11.** For dy/dx = x + y, y(0) = 1, use Euler''s method with h = 0.1 to find approximate values at x = 0.1, 0.2, 0.3.

**12.** Use Euler''s method to estimate y(0.5) for dy/dx = y with y(0) = 1, using h = 0.1. Compare with exact value e^0.5.

### Answers
3. x₁=2.25, x₂=2.2361, x₃=2.2361 (√5=2.2361)   8. 1.1167 vs ln3=1.0986   11. y(0.1)=1.1, y(0.2)=1.22, y(0.3)=1.362',
'practice', 5),

('becd0f9c-2a9a-4689-8637-50a20343b51a',
'Summary',
'## Summary: Numerical Methods

### Root-Finding Comparison

| Method | Formula | Convergence | When to Use |
|---|---|---|---|
| Bisection | m=(a+b)/2 | Linear | Always works; slow |
| Newton-Raphson | xₙ₊₁=xₙ−f/f'' | Quadratic | Fast; need f'' |
| Fixed-Point | xₙ₊₁=g(xₙ) | Varies | Need \|g''\|<1 |

### Integration Comparison

| Method | Formula | Error Order |
|---|---|---|
| Trapezium | h/2[y₀+2(inner)+yₙ] | O(h²) |
| Simpson''s | h/3[y₀+4y₁+2y₂+...+yₙ] | O(h⁴) |

### Key Rules
- Bisection always converges (if sign change exists)
- Newton-Raphson may diverge — choose starting point carefully
- Fixed-point converges only if |g''(root)| < 1
- Simpson''s Rule needs an even number of strips
- Always check your numerical answer makes sense

### Common Mistakes
- Using wrong sign in Newton-Raphson (it''s MINUS f/f'', not plus)
- Simpson''s coefficients: 1,4,2,4,2,...,4,1 (not 1,2,1 like Trapezium)
- Not checking convergence condition for fixed-point iteration',
'content', 6);

-- ============================================================
-- TOPIC 15: DIFFERENTIAL EQUATIONS
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'Overview of Differential Equations',
'## Differential Equations

A **differential equation (DE)** is an equation that contains a derivative (dy/dx, d²y/dx², etc.) along with the function itself.

### Why Differential Equations?
Real-world change is modelled by rates of change — and rates of change are derivatives. So almost everything in science and engineering involves differential equations:
- Newton''s second law (F = ma → d²x/dt² = F/m)
- Population growth (dP/dt = kP)
- Cooling of objects (dT/dt = −k(T−T∞))
- Electrical circuits (V = L·dI/dt + RI)
- Wave and heat equations in physics

### Classification
**By order:** The highest derivative present.
- First-order: involves dy/dx
- Second-order: involves d²y/dx²

**By degree:** The power of the highest derivative.

**Linear vs Nonlinear:** A linear DE has the unknown function and its derivatives appearing to the first power only.

### The General Solution
The general solution of an nth-order ODE contains **n arbitrary constants**.
A **particular solution** has specific values for these constants, found using initial conditions.',
'overview', 1),

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'First-Order Differential Equations',
'## First-Order DEs

### Type 1: Separable Equations
**dy/dx = f(x)·g(y)** → Separate: dy/g(y) = f(x) dx, then integrate both sides.

**Example:** dy/dx = 2xy

Separate: dy/y = 2x dx
Integrate: ln|y| = x² + C
**y = Ae^(x²)** where A = e^C

**Example with initial condition:** dy/dx = 3y², y(0) = 1.

Separate: dy/y² = 3 dx
−1/y = 3x + C
When x=0, y=1: −1 = C → C = −1
−1/y = 3x − 1
**y = 1/(1−3x)**

### Type 2: Linear First-Order Equations
**dy/dx + P(x)y = Q(x)**

**Integrating Factor (IF):** μ = e^(∫P(x)dx)

**Method:**
1. Write in standard form: dy/dx + P(x)y = Q(x)
2. Find IF: μ = e^(∫P dx)
3. Multiply through by μ: d/dx(μy) = μQ
4. Integrate both sides: μy = ∫μQ dx + C
5. Solve for y.

**Example:** dy/dx + y/x = x²

P(x) = 1/x, IF = e^(∫1/x dx) = e^(ln x) = x

Multiply by x: d/dx(xy) = x³
Integrate: xy = x⁴/4 + C
**y = x³/4 + C/x**

### Type 3: Homogeneous Equations
f(x,y) is homogeneous if f(tx,ty) = tⁿf(x,y).

Substitute **y = vx** (so dy/dx = v + x·dv/dx).
This converts the equation to separable form in v and x.',
'definitions', 2),

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'Second-Order Differential Equations',
'## Second-Order Linear DEs with Constant Coefficients

The standard form: **a·d²y/dx² + b·dy/dx + cy = f(x)**

### Step 1: Solve the Homogeneous Equation (f(x) = 0)
**a·d²y/dx² + b·dy/dx + cy = 0**

Try solution y = eᵐˣ → auxiliary (characteristic) equation:
**am² + bm + c = 0**

**Three cases based on discriminant (b² − 4ac):**

**Case 1: Two distinct real roots m₁, m₂ (b² > 4ac)**
**yₕ = Ae^(m₁x) + Be^(m₂x)**

**Case 2: Repeated real root m (b² = 4ac)**
**yₕ = (A + Bx)e^(mx)**

**Case 3: Complex roots m = α ± βi (b² < 4ac)**
**yₕ = e^(αx)(A cos βx + B sin βx)**

---

### Step 2: Find the Particular Integral yₚ
For non-homogeneous equation, guess a particular solution based on f(x):

| f(x) type | Trial yₚ |
|---|---|
| Constant k | yₚ = c (constant) |
| Polynomial aₙxⁿ+... | yₚ = cₙxⁿ+...+c₀ |
| e^(kx) | yₚ = ce^(kx) |
| sin(kx) or cos(kx) | yₚ = p sin(kx) + q cos(kx) |
| Product (e.g. xe^x) | Multiply above forms |

**Exception:** If the trial yₚ appears in yₕ, multiply by x (or x²).

---

### Step 3: General Solution
**y = yₕ + yₚ**

Apply initial conditions to find constants A and B.

---

## Applications of DEs

### Simple Harmonic Motion (SHM)
d²x/dt² + ω²x = 0

Solution: x = A cos(ωt) + B sin(ωt) = R cos(ωt + φ)
Period: T = 2π/ω

### Damped Oscillations
d²x/dt² + 2k·dx/dt + ω²x = 0

Depending on k vs ω:
- Overdamped (k > ω): exponential decay, no oscillation
- Critically damped (k = ω): returns to equilibrium fastest
- Underdamped (k < ω): oscillates with decreasing amplitude',
'explanation', 3),

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Separable DE
Solve dy/dx = (1+y²)/x, y(1) = 1.

Separate: dy/(1+y²) = dx/x
Integrate: arctan y = ln|x| + C
When x=1, y=1: arctan 1 = 0 + C → C = π/4
**arctan y = ln x + π/4**
y = **tan(ln x + π/4)**

---

### Example 2: Integrating Factor
Solve dy/dx − 2y = e^(3x).

Standard form: dy/dx − 2y = e^(3x)
P = −2, IF = e^(∫−2 dx) = e^(−2x)

Multiply through: e^(−2x)·dy/dx − 2e^(−2x)y = e^(−2x)·e^(3x)
d/dx[e^(−2x)y] = eˣ
Integrate: e^(−2x)y = eˣ + C
**y = e^(3x) + Ce^(2x)**

---

### Example 3: Second-Order — Distinct Roots
Solve d²y/dx² − 5dy/dx + 6y = 0.

Auxiliary equation: m² − 5m + 6 = 0 → (m−2)(m−3) = 0
m = 2 or m = 3

**y = Ae^(2x) + Be^(3x)**

---

### Example 4: Second-Order — Complete Solution
Solve d²y/dx² + 4y = 8x, y(0) = 0, y''(0) = 2.

**Step 1:** Auxiliary: m² + 4 = 0 → m = ±2i (complex)
α = 0, β = 2
yₕ = A cos 2x + B sin 2x

**Step 2:** Trial yₚ = cx + d (polynomial)
yₚ'' = 0, yₚ'' = 0
Substitute: 0 + 4(cx+d) = 8x → 4c = 8, 4d = 0
c = 2, d = 0 → yₚ = 2x

**Step 3:** y = A cos 2x + B sin 2x + 2x

**Apply conditions:**
y(0) = 0: A = 0
y''(0) = 2: 2B·(1) + 2 = 2 → 2B = 0 → B = 0

Wait: y'' = −2A sin 2x + 2B cos 2x + 2
y''(0) = 2B + 2 = 2 → B = 0

**y = 2x** (constant A and B both = 0)

Actually let''s check: with A=0, B=0: y = 2x
y'' = 2, y(0) = 0 ✓, y''(0) = 2 ✓
d²y/dx² + 4y = 0 + 8x = 8x ✓

**y = 2x**

---

### Example 5: Growth Model
The population P of bacteria grows at a rate proportional to P. Initially P = 1000. After 2 hours P = 3000. Find P after 5 hours.

dP/dt = kP → P = P₀·eᵏᵗ
P(0) = 1000: P₀ = 1000
P(2) = 3000: 3000 = 1000·e^(2k) → e^(2k) = 3 → k = (ln 3)/2

P(5) = 1000·e^(5·ln3/2) = 1000·3^(5/2) = 1000·15.588 ≈ **15,588**',
'examples', 4),

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'Practice Questions',
'## Practice Questions — Differential Equations

### Section A: Separable Equations
**1.** Solve: dy/dx = 3x²y

**2.** Solve: (1+x)dy/dx = y, y(0) = 2

**3.** Solve: dy/dx = e^(x−y), y(0) = 0

**4.** Find the particular solution of dy/dx = y sin x with y(0) = 1.

---

### Section B: Linear First-Order
**5.** Solve: dy/dx + y = eˣ

**6.** Solve: dy/dx + (2/x)y = x²

**7.** Solve: x dy/dx + 2y = x³, y(1) = 0

---

### Section C: Second-Order Homogeneous
**8.** Find the general solution:
(a) d²y/dx² − y = 0
(b) d²y/dx² + 6dy/dx + 9y = 0
(c) d²y/dx² + 2dy/dx + 5y = 0
(d) 4d²y/dx² − 4dy/dx + y = 0

---

### Section D: Second-Order Non-Homogeneous
**9.** Solve d²y/dx² − 3dy/dx + 2y = 4.

**10.** Solve d²y/dx² + 4y = sin x.

**11.** Solve d²y/dx² − 2dy/dx − 3y = e^(4x), y(0) = 1, y''(0) = 0.

---

### Section E: Modelling
**12.** A tank contains 200L of salt water with 10kg of salt. Pure water enters at 2 L/min and the mixture exits at 2 L/min. Write a DE for the amount of salt S at time t and solve it.

**13.** A particle moves such that its acceleration is (−4x). If at t=0, x=3 and velocity=0, find x as a function of t.

### Answers
1. y=Ae^(x³)   2. y=2(1+x)   5. y=(x+C)e^(-x) ... actually y=(eˣ+C)e^(-x)=(1+Ce^(-x))e^x/2... let''s say general: y=eˣ/2+Ce^(-x)   8a. y=Ae^x+Be^(-x)   8b. y=(A+Bx)e^(-3x)   8c. y=e^(-x)(Acos2x+Bsin2x)   9. y=Ae^x+Be^(2x)+2   13. x=3cos(2t)',
'practice', 5),

('4222a92c-14ff-42b9-a964-815a002a4cb7',
'Summary',
'## Summary: Differential Equations

### First-Order DE Methods

| Type | Form | Method |
|---|---|---|
| Separable | dy/dx = f(x)g(y) | dy/g = f dx, integrate both |
| Linear | dy/dx + Py = Q | Multiply by IF = e^(∫P dx) |
| Homogeneous | dy/dx = f(y/x) | Substitute y = vx |

### Second-Order DE — Auxiliary Equation
For a·y'' + b·y'' + c·y = 0, solve am² + bm + c = 0.

| Discriminant | Roots | Solution |
|---|---|---|
| b²−4ac > 0 | m₁, m₂ real distinct | Ae^(m₁x)+Be^(m₂x) |
| b²−4ac = 0 | m repeated | (A+Bx)e^(mx) |
| b²−4ac < 0 | α±βi | e^(αx)(Acosβx+Bsinβx) |

### Particular Integral Trials
- Constant → try constant
- Polynomial → try same-degree polynomial
- e^(kx) → try e^(kx)
- sin or cos → try p·sin + q·cos

### Key Applications
- Population: dP/dt = kP → P = P₀·eᵏᵗ
- Cooling: dT/dt = −k(T−T∞) → T = T∞ + (T₀−T∞)e^(-kt)
- SHM: d²x/dt² = −ω²x → x = R cos(ωt+φ)',
'content', 6);

-- ============================================================
-- TOPIC 16: LINEAR PROGRAMMING
-- ============================================================

INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Overview of Linear Programming',
'## Linear Programming

**Linear Programming (LP)** is a mathematical method for finding the best (optimal) outcome from a model with linear relationships. It answers questions like:

- How can a factory maximise profit given limited resources?
- How can an airline minimise cost while meeting schedule requirements?
- How can a dietitian plan meals that meet nutritional needs at minimum cost?

### The Structure of an LP Problem
Every LP problem has three components:

1. **Decision variables:** What are we trying to decide? (e.g., x = units of product A, y = units of product B)
2. **Objective function:** What are we trying to maximise or minimise? (e.g., Profit = 5x + 3y)
3. **Constraints:** What restrictions apply? (e.g., 2x + y ≤ 100, x ≥ 0, y ≥ 0)

### The Feasible Region
The set of all (x, y) satisfying ALL constraints simultaneously. This is a polygon (convex region).

### The Key Theorem
**The optimal solution always occurs at a vertex (corner point) of the feasible region.**

This means we only need to check corner points — not the infinite interior!',
'overview', 1),

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Setting Up and Solving LP Problems',
'## Method for Solving LP Problems

### Step 1: Define Variables
Clearly state what x and y represent and their units.

### Step 2: Write the Objective Function
State whether you are maximising or minimising.
Example: Maximise P = 3x + 5y

### Step 3: Write All Constraints
- Resource constraints (from the problem)
- Non-negativity: x ≥ 0, y ≥ 0
- Any other given restrictions

### Step 4: Draw the Feasible Region
For each constraint:
1. Draw the boundary line (treat ≤ as =)
2. Test a point (origin if not on line) to determine which side satisfies the inequality
3. Shade the FEASIBLE side
4. The feasible region is the intersection of all feasible half-planes

### Step 5: Find the Optimal Solution

**Method 1: Corner Point Method**
- Find all vertices of the feasible region
- Evaluate the objective function at each vertex
- The optimal value is the largest (max) or smallest (min)

**Method 2: Objective Line Method (Sliding Line)**
- Draw a trial objective line P = constant
- Slide the line in the direction of increasing P (for max)
- The last vertex touched is the optimal point

### Vertices of the Feasible Region
Found by solving pairs of boundary equations simultaneously (intersection of boundary lines).

### Special Cases
- **Unbounded feasible region:** Maximisation may be unbounded (no maximum exists)
- **Multiple optimal solutions:** If objective line is parallel to a constraint edge — any point on that edge is optimal
- **Infeasible:** Constraints are contradictory — feasible region is empty',
'definitions', 2),

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Integer Programming and Advanced Concepts',
'## Integer Linear Programming

When x and y must be whole numbers (integers), the optimal LP solution may need to be rounded.

**Important:** Do NOT simply round to nearest integer! The rounded solution may not be feasible (or may not be optimal among integers).

### Approach
1. Solve the LP relaxation (allow non-integer)
2. If the optimal solution is already integer, done
3. Otherwise, systematically check nearby integer points that are feasible
4. The best feasible integer point is the answer

---

## The Simplex Method (Introduction)

For problems with more than 2 variables (can''t graph), the **Simplex Method** is used.

**Idea:** Start at a vertex. Check if moving to an adjacent vertex improves the objective. If yes, move. Repeat until no improvement possible — that''s the optimal!

---

## Sensitivity Analysis

After finding the optimal solution, we ask: How sensitive is it to changes in the problem data?

- **Ranging for objective function coefficients:** How much can the coefficient change before the optimal vertex changes?
- **Ranging for right-hand sides:** How much can a resource limit change before the current basis becomes non-optimal?

---

## Real-World LP Formulation Tips

### Common Resource Constraints
- Labour: hours_per_unit × quantity ≤ total_hours
- Materials: materials_per_unit × quantity ≤ total_materials
- Machine time: time_per_unit × quantity ≤ total_machine_hours

### Reading LP Problems
Look for key words:
- "at least": ≥ constraint
- "at most" / "no more than": ≤ constraint
- "exactly": = constraint
- "maximise profit" / "minimise cost": objective function type',
'explanation', 3),

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Worked Examples',
'## Fully Worked Examples

### Example 1: Complete LP Solution
A company makes two products, A and B.
- Each unit of A requires 2 hours labour and 1 kg material; profit = £4
- Each unit of B requires 1 hour labour and 3 kg material; profit = £5
- Available: 40 hours labour, 45 kg material
- Non-negativity: x, y ≥ 0

**Step 1:** Variables: x = units of A, y = units of B
**Step 2:** Maximise P = 4x + 5y
**Step 3:** Constraints: 2x + y ≤ 40 (labour); x + 3y ≤ 45 (material); x,y ≥ 0

**Step 4:** Boundary lines:
2x + y = 40: passes through (20,0) and (0,40)
x + 3y = 45: passes through (45,0) and (0,15)

**Step 5:** Find vertices:
- O = (0,0): P = 0
- A = (20,0): P = 80
- B = Intersection of 2x+y=40 and x+3y=45:
  From first: y = 40−2x. Substitute: x+3(40−2x)=45 → x+120−6x=45 → −5x=−75 → x=15, y=10
  B = (15,10): P = 4(15)+5(10) = 60+50 = **110**
- C = (0,15): P = 75

**Optimal: x = 15, y = 10, Maximum Profit = £110**

---

### Example 2: Minimisation
Minimise C = 2x + 3y subject to:
x + y ≥ 4, 2x + y ≥ 6, x,y ≥ 0

Vertices of feasible region:
- Intersection of x+y=4 and y=0: (4,0). Check 2x+y≥6: 8≥6 ✓
- Intersection of 2x+y=6 and y=0: (3,0). Check x+y≥4: 3≥4 ✗ Not feasible
- Intersection of x=0 and 2x+y=6: (0,6). Check x+y≥4: 6≥4 ✓
- Intersection of x+y=4 and 2x+y=6: x=2, y=2

Evaluate at feasible vertices:
- (4,0): C = 8
- (0,6): C = 18
- (2,2): C = 4+6 = **10**

**Minimum C = 10 at (2,2)**

---

### Example 3: Reading a Problem
A school tuck shop sells sandwiches (x) and pies (y).
Rules: Total items ≤ 50; At least 10 sandwiches; At most twice as many pies as sandwiches.
Profit: 20p per sandwich, 35p per pie. Maximise profit.

Constraints: x + y ≤ 50; x ≥ 10; y ≤ 2x; x,y ≥ 0

Vertices: Find by solving pairs.
Try x=10, y=20 (y=2x): P = 200+700 = 900p
Try x+y=50, y=2x: y=2x, x+2x=50 → x≈16.7, y≈33.3: P≈333+1167=1500p
Integer: x=17, y=33 (y≤34=2×17, total=50 ✓): P=340+1155=**1495p**

Note: Check x=16,y=32: P=320+1120=1440p < 1495p ✓ x=17,y=33 is optimal.',
'examples', 4),

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Practice Questions',
'## Practice Questions — Linear Programming

### Section A: Graphical Method
**1.** Maximise P = 3x + 4y subject to:
x + y ≤ 10, 2x + y ≤ 15, x ≥ 0, y ≥ 0

**2.** Minimise C = x + 2y subject to:
x + y ≥ 5, 3x + y ≥ 9, x ≥ 0, y ≥ 0

**3.** Maximise Z = 5x + 3y subject to:
x + y ≤ 8, 2x + y ≤ 14, x + 2y ≤ 12, x,y ≥ 0

---

### Section B: Problem Formulation
**4.** A baker makes cakes (x) and pastries (y).
- Each cake: 2kg flour, 3 eggs; profit £8
- Each pastry: 3kg flour, 1 egg; profit £6
- Available: 24kg flour, 18 eggs
- Formulate and solve the LP.

**5.** A factory makes product A and product B.
- A takes 3 hours machine time and 1 hour assembly; sells for £50
- B takes 1 hour machine time and 2 hours assembly; sells for £30
- Machine time ≤ 12 hours; assembly ≤ 10 hours
- Find the optimal production to maximise revenue.

---

### Section C: Interpretation
**6.** In Example 1 from the lesson, how much does the optimal profit change if:
(a) Labour increases to 50 hours?
(b) The profit on A increases to £6 per unit?

**7.** Explain what it means for a linear programming problem to be:
(a) Infeasible   (b) Unbounded   (c) Have multiple optimal solutions

---

### Section D: Integer Programming
**8.** Solve Question 1 as an integer LP problem. Does the LP solution (if non-integer) need adjustment?

**9.** A charity can buy food packs (£15) or blankets (£20). They have £200 and want to help at least 12 people (1 pack or 1 blanket per person). Blankets help in cold regions and the region is cold: at least 8 blankets needed. Maximise total items.

### Answers
1. Vertices: (0,0),(7.5,0),(5,5),(0,10); Max at (5,5): P=35   2. Min at (2,3): C=8   4. Solve to get x=6,y=4,P=72   5. 3x+y≤12, x+2y≤10 → vertices check → optimal (2,4): Revenue=100+120=220',
'practice', 5),

('3a190ebe-0a5c-4751-a48c-e4b8072575bc',
'Summary',
'## Summary: Linear Programming

### The LP Framework
1. **Define variables** (what are x and y?)
2. **Objective function** (maximise or minimise what?)
3. **Constraints** (inequalities including non-negativity)
4. **Graph** the feasible region
5. **Evaluate** objective at each vertex

### Key Theorem
The optimal solution occurs at a **vertex (corner point)** of the feasible region.

### Types of Constraints

| Key Word | Constraint Type |
|---|---|
| "at most", "no more than", "up to" | ≤ |
| "at least", "minimum", "no fewer than" | ≥ |
| "exactly", "must be" | = |

### When to Use Each Method
- **2 variables:** Graphical method
- **Many variables:** Simplex method (not required at this level for full solution)

### Common Mistakes
- Shading the wrong side of a constraint
- Forgetting non-negativity constraints (x≥0, y≥0)
- Not checking ALL vertices
- Rounding integer solutions incorrectly (rounded solution may be infeasible)
- Misinterpreting "at least" vs "at most"',
'content', 6);
