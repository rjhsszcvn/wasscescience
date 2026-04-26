
/*
  # Massively expand Surds and Rational Numbers notes
  
  Replaces all 5 sections with deep, comprehensive Aki Ola-style content.
  Each section is 4x-6x longer with full explanations, examples, and practice.
*/

DO $$
DECLARE
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_topic_id FROM topics WHERE name = 'Surds and Rational Numbers' LIMIT 1;

  UPDATE topic_sections SET content = $CONTENT$
## What Are Surds?

A **surd** is an irrational number expressed as a root (square root, cube root, etc.) that cannot be simplified to a rational number. Surds are exact values — they cannot be written as a terminating or recurring decimal.

### Rational vs Irrational Numbers

**Rational numbers** can be written in the form p/q where p and q are integers and q ≠ 0.
Examples: 3, -5, 1/2, 0.75, 0.333...

**Irrational numbers** cannot be written as p/q.
Examples: √2, √3, √5, π, e

### Why Study Surds?

In WASSCE mathematics, surds appear in:
- Geometry (lengths of sides using Pythagoras)
- Trigonometry (exact values of sin 30°, cos 45°, etc.)
- Algebra (solving quadratic equations)
- Mensuration (areas and lengths involving diagonal measurements)

Surds give us **exact answers** rather than decimal approximations. This is crucial in mathematics where precision matters.

### Identifying Surds

√4 = 2 → **NOT a surd** (it simplifies to a whole number)
√9 = 3 → **NOT a surd**
√16 = 4 → **NOT a surd**
√2 ≈ 1.4142... → **IS a surd** (never-ending, non-repeating decimal)
√3 ≈ 1.7320... → **IS a surd**
√5 ≈ 2.2360... → **IS a surd**
√7 ≈ 2.6457... → **IS a surd**
³√8 = 2 → **NOT a surd** (cube root of 8 = 2)
³√5 ≈ 1.7099... → **IS a surd**

### Perfect Squares to Know

1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225

Any square root of these is NOT a surd. Memorise these for quick simplification.
$CONTENT$
  WHERE topic_id = v_topic_id AND order_index = 1;

  UPDATE topic_sections SET content = $CONTENT$
## Laws of Surds

These are the fundamental rules you MUST know for all surd calculations:

### Law 1: Product Rule
√(a × b) = √a × √b

**Examples:**
- √12 = √(4 × 3) = √4 × √3 = 2√3
- √50 = √(25 × 2) = √25 × √2 = 5√2
- √72 = √(36 × 2) = 6√2
- √48 = √(16 × 3) = 4√3
- √75 = √(25 × 3) = 5√3
- √200 = √(100 × 2) = 10√2

### Law 2: Quotient Rule
√(a/b) = √a / √b

**Examples:**
- √(9/4) = √9/√4 = 3/2
- √(25/16) = 5/4
- √(3/4) = √3/2

### Law 3: Adding and Subtracting Like Surds
a√n + b√n = (a + b)√n  [Only surds with the SAME root can be added/subtracted]
a√n - b√n = (a - b)√n

**Examples:**
- 3√2 + 5√2 = 8√2
- 7√3 - 2√3 = 5√3
- 4√5 + √5 = 5√5 (since √5 = 1√5)
- 2√3 + 5√2 = 2√3 + 5√2 (CANNOT be simplified — different surds)

### Law 4: Multiplication of Surds
√a × √a = a  [A surd multiplied by itself gives the number under the root]

**Examples:**
- √5 × √5 = 5
- √7 × √7 = 7
- 3√2 × 2√2 = 6 × 2 = 12
- (√3)² = 3

### Key Definitions

**Like surds:** Surds with the same irrational part (e.g., 3√2 and 7√2)
**Unlike surds:** Surds with different irrational parts (e.g., 3√2 and 5√3)
**Pure surd:** A surd with coefficient 1 (e.g., √5, √7)
**Mixed surd:** A surd with a rational coefficient (e.g., 3√5, 2√7)
**Conjugate surd:** The conjugate of (a + √b) is (a - √b) — used in rationalisation

### Simplifying Surds — The Method

**Step 1:** Find the largest perfect square factor of the number under the root.
**Step 2:** Split using the product rule.
**Step 3:** Simplify the perfect square part.

Example: Simplify √180
- Factors of 180 containing perfect squares: 4, 9, 36
- Largest: 36 → 180 = 36 × 5
- √180 = √(36 × 5) = √36 × √5 = 6√5
$CONTENT$
  WHERE topic_id = v_topic_id AND order_index = 2;

  UPDATE topic_sections SET content = $CONTENT$
## Worked Examples: Surds in Full Detail

### Example 1: Simplifying Surds
Simplify: (a) √98  (b) √162  (c) √288

**Solution:**

(a) √98
98 = 49 × 2 (49 is the largest perfect square factor)
√98 = √49 × √2 = **7√2**

(b) √162
162 = 81 × 2 (81 = 9² is the largest perfect square factor)
√162 = √81 × √2 = **9√2**

(c) √288
288 = 144 × 2 (144 = 12² is the largest perfect square factor)
√288 = √144 × √2 = **12√2**

---

### Example 2: Adding and Subtracting Surds
Simplify: (a) √12 + √27  (b) √50 - √18 + √8  (c) 3√45 - 2√20 + √5

**Solution:**

(a) √12 + √27
First simplify each: √12 = 2√3, √27 = 3√3
= 2√3 + 3√3 = **5√3**

(b) √50 - √18 + √8
√50 = 5√2, √18 = 3√2, √8 = 2√2
= 5√2 - 3√2 + 2√2 = **4√2**

(c) 3√45 - 2√20 + √5
3√45 = 3 × 3√5 = 9√5
2√20 = 2 × 2√5 = 4√5
= 9√5 - 4√5 + √5 = **6√5**

---

### Example 3: Multiplying Surds
Expand and simplify: (a) √3(√3 + √12)  (b) (2 + √3)(2 - √3)  (c) (3 + √5)²

**Solution:**

(a) √3(√3 + √12)
= √3 × √3 + √3 × √12
= 3 + √36
= 3 + 6 = **9**

(b) (2 + √3)(2 - √3)  [Difference of two squares: (a+b)(a-b) = a² - b²]
= 2² - (√3)²
= 4 - 3 = **1**

(c) (3 + √5)²  [Use (a+b)² = a² + 2ab + b²]
= 9 + 2(3)(√5) + (√5)²
= 9 + 6√5 + 5
= **14 + 6√5**

---

### Example 4: Rationalising the Denominator
Rationalise: (a) 4/√3  (b) 6/(2 + √3)  (c) (1 + √2)/(3 - √2)

**Key concept:** Multiply top and bottom by the surd (or conjugate) to eliminate the surd from the denominator.

**Solution:**

(a) 4/√3
Multiply by √3/√3:
= 4√3 / (√3 × √3) = 4√3/3 = **4√3/3**

(b) 6/(2 + √3)
Conjugate of (2 + √3) is (2 - √3)
= 6(2 - √3) / [(2 + √3)(2 - √3)]
= (12 - 6√3) / (4 - 3)
= (12 - 6√3) / 1 = **12 - 6√3**

(c) (1 + √2)/(3 - √2)
Conjugate of (3 - √2) is (3 + √2)
Numerator: (1 + √2)(3 + √2) = 3 + √2 + 3√2 + 2 = 5 + 4√2
Denominator: (3 - √2)(3 + √2) = 9 - 2 = 7
= **(5 + 4√2)/7**

---

### Example 5: Finding Unknown Values
If (a + b√3) = (4 + √3)(2 + √3), find a and b.

(4 + √3)(2 + √3) = 8 + 4√3 + 2√3 + (√3)²
= 8 + 6√3 + 3
= 11 + 6√3

Therefore: a = **11**, b = **6**
$CONTENT$
  WHERE topic_id = v_topic_id AND order_index = 3;

  UPDATE topic_sections SET content = $CONTENT$
## Common Mistakes and How to Avoid Them

### Mistake 1: Confusing Addition with Multiplication
**WRONG:** √2 + √3 = √5  ← NEVER do this!
**RIGHT:** √2 + √3 cannot be simplified (they are unlike surds)

**WRONG:** √(4 + 9) = √4 + √9 = 2 + 3 = 5  ← WRONG!
**RIGHT:** √(4 + 9) = √13 ≈ 3.6 (you cannot split addition under a root)

### Mistake 2: Forgetting to Fully Simplify
**WRONG:** √12 = √(4×3) = 2√3 ... stop there ← You must check if 2√3 can be simplified further. Here it cannot, so 2√3 is correct.
But: √72 — some students write √(4×18) = 2√18. This is NOT fully simplified because √18 = 3√2, so the answer should be 6√2.
**ALWAYS** use the LARGEST perfect square factor.

### Mistake 3: Rationalising Without the Conjugate
**WRONG:** 1/(2 + √3) × √3/√3 ← multiplying by the surd, not the conjugate
**RIGHT:** 1/(2 + √3) × (2 - √3)/(2 - √3) ← multiply by the conjugate

### Mistake 4: Wrong Expansion
**WRONG:** (3 + √2)² = 9 + 2 = 11
**RIGHT:** (3 + √2)² = 9 + 6√2 + 2 = 11 + 6√2
[Remember the middle term: 2 × 3 × √2 = 6√2]

### Mistake 5: Squaring a Fraction Wrong
**WRONG:** (2/√3)² = 4/3 ← Actually this one is right!
**WRONG:** (√5 / 3)² = 5/9 ← Also right.
**Watch out for:** (√5 + √3)² ≠ 5 + 3 = 8
**RIGHT:** (√5 + √3)² = 5 + 2√15 + 3 = 8 + 2√15

### Quick Mental Check Tips
- After simplifying a surd, the number under the root should have NO perfect square factors
- When rationalising, the denominator should end up as a rational number (no surds)
- Adding surds: they must have exactly the same irrational part
$CONTENT$
  WHERE topic_id = v_topic_id AND order_index = 4;

  UPDATE topic_sections SET content = $CONTENT$
## WASSCE Past Questions: Surds — Full Worked Solutions

### Question 1 (WASSCE 2019)
Simplify: (√3 + 2)(√3 - 1)

**Solution:**
Use FOIL (First, Outer, Inner, Last):
= √3 × √3 + √3 × (-1) + 2 × √3 + 2 × (-1)
= 3 - √3 + 2√3 - 2
= (3 - 2) + (-√3 + 2√3)
= 1 + √3
= **1 + √3**

---

### Question 2 (WASSCE 2018)
Express (3 - √2)/(2 + √2) in the form a + b√2, where a and b are rational numbers.

**Solution:**
Multiply by conjugate of denominator (2 - √2):
Numerator: (3 - √2)(2 - √2)
= 6 - 3√2 - 2√2 + (√2)²
= 6 - 5√2 + 2
= 8 - 5√2

Denominator: (2 + √2)(2 - √2)
= 4 - 2 = 2

So: (8 - 5√2)/2 = 4 - (5/2)√2

Therefore: a = **4**, b = **-5/2**

---

### Question 3 (WASSCE 2020)
If (√5 + √3)/(√5 - √3) = a + b√15, find the values of a and b.

**Solution:**
Multiply by conjugate (√5 + √3)/(√5 + √3):
Numerator: (√5 + √3)² = 5 + 2√15 + 3 = 8 + 2√15
Denominator: (√5)² - (√3)² = 5 - 3 = 2

= (8 + 2√15)/2 = 4 + √15

So: a + b√15 = 4 + √15
Therefore: **a = 4, b = 1**

---

### Question 4 (WASSCE 2017)
Given that √6/(√3 - √2) = a√2 + b√3, find a and b.

**Solution:**
Multiply numerator and denominator by (√3 + √2):
Numerator: √6(√3 + √2) = √18 + √12 = 3√2 + 2√3
Denominator: (√3)² - (√2)² = 3 - 2 = 1

So: √6/(√3 - √2) = 3√2 + 2√3

Therefore: **a = 3, b = 2**

---

### Question 5 (WASSCE 2016)
Simplify: √(1/2) + √(1/8) + √(1/18)

**Solution:**
√(1/2) = 1/√2 = √2/2
√(1/8) = 1/√8 = 1/(2√2) = √2/4
√(1/18) = 1/√18 = 1/(3√2) = √2/6

= √2/2 + √2/4 + √2/6
= √2(1/2 + 1/4 + 1/6)
LCM of 2, 4, 6 = 12
= √2(6/12 + 3/12 + 2/12)
= √2 × 11/12
= **11√2/12**

---

### Question 6 (WASSCE 2015, adapted)
Find the value of x if: √(x+1) + √(x-1) = 2√(x-1)

**Solution:**
√(x+1) = 2√(x-1) - √(x-1) = √(x-1)
Square both sides:
x + 1 = x - 1
This gives 1 = -1, which is impossible.

[Checking: this means there is no solution — an important result showing surds can lead to contradictions]

Alternative version: √(x+1) = √(x-1) + 2
Squaring: x + 1 = x - 1 + 4√(x-1) + 4
x + 1 = x + 3 + 4√(x-1)
-2 = 4√(x-1)
-1/2 = √(x-1) — impossible since square roots are non-negative.

**Exam Tip:** Always check for extraneous solutions when squaring both sides!

---

### Practice Problems (Try These Yourself)
1. Simplify: √300 + √75 - √48
2. Rationalise: 5/(3 - √2)
3. Expand and simplify: (4 + √5)(4 - √5)
4. If (2 + √3)/(2 - √3) = a + b√3, find a and b.
5. Express √(12/25) in simplest form.

**Answers:**
1. 2√3 + 5√3 - 4√3 = ... First: √300=10√3, √75=5√3, √48=4√3 → 10√3+5√3-4√3 = **11√3**
2. 5(3+√2)/((3-√2)(3+√2)) = 5(3+√2)/7 = **(15+5√2)/7**
3. 16 - 5 = **11**
4. Numerator: (2+√3)² = 4+4√3+3 = 7+4√3; Denominator: 4-3=1; So a=**7**, b=**4**
5. √12/√25 = 2√3/5 = **2√3/5**
$CONTENT$
  WHERE topic_id = v_topic_id AND order_index = 5;

END $$;
