/*
  # Comprehensive Mathematics Notes - Topics 11 to 15

  Upgrades the following Mathematics topics with deeply detailed, exam-ready notes:
  11. Surds and Rational Numbers
  12. Commercial Mathematics
  13. Fractions, Decimals and Percentages
  14. Linear Graphs and Relations
  15. Quadratic Equations and Functions
*/

UPDATE topics SET content = '# Surds and Rational Numbers

## 1. Rational and Irrational Numbers

### Rational Numbers
A **rational number** can be expressed as p/q where p and q are integers and q ≠ 0.

**Forms:** Integers, proper fractions, improper fractions, mixed numbers, terminating decimals, recurring decimals.

**Examples:** 3, -5, 2/3, 0.75, 0.333... (= 1/3), 2.142857... (= 15/7)

### Irrational Numbers
An **irrational number** cannot be expressed as a simple fraction. Its decimal expansion is non-terminating and non-recurring.

**Examples:** √2, √3, √5, π, e, ∛7

---

## 2. Surds

A **surd** is an irrational number expressed in root form: √n, ∛n, etc.

**√n is a surd when n is not a perfect square.**

**Examples:**
- √4 = 2 (NOT a surd — it''s rational)
- √9 = 3 (NOT a surd)
- √2 ≈ 1.41421... (surd)
- √50 = √(25×2) = 5√2 (surd in simplified form)

---

## 3. Simplifying Surds

**Rule:** √(a×b) = √a × √b

**Method:** Extract the largest perfect square factor.

| Surd | Simplified Form |
|------|----------------|
| √8 | √(4×2) = 2√2 |
| √18 | √(9×2) = 3√2 |
| √27 | √(9×3) = 3√3 |
| √48 | √(16×3) = 4√3 |
| √75 | √(25×3) = 5√3 |
| √200 | √(100×2) = 10√2 |

---

## 4. Operations with Surds

### Addition and Subtraction
Only **like surds** can be added or subtracted (same radicand after simplification).

**Example 1:** 3√2 + 5√2 = 8√2

**Example 2:** 4√3 - √3 = 3√3

**Example 3:** √12 + √27 = 2√3 + 3√3 = 5√3

**Example 4:** √50 - √18 + √8 = 5√2 - 3√2 + 2√2 = 4√2

### Multiplication
**√a × √b = √(ab)**

**(p√a)(q√b) = pq√(ab)**

**Example 1:** √6 × √8 = √48 = 4√3

**Example 2:** 3√5 × 2√5 = 6 × 5 = 30

**Example 3:** (2 + √3)(2 - √3) = 4 - 3 = 1 (difference of two squares)

### Division
**√a / √b = √(a/b)**

**Example:** √18/√6 = √3

---

## 5. Expanding Brackets with Surds

**(a + b)² = a² + 2ab + b²**
**(a + √b)² = a² + 2a√b + b**
**(a + √b)(a - √b) = a² - b**

**Example 1:** (3 + √2)² = 9 + 6√2 + 2 = 11 + 6√2

**Example 2:** (√5 + √3)(√5 - √3) = 5 - 3 = 2

**Example 3:** (2√3 + 1)(√3 - 2) = 2(3) - 4√3 + √3 - 2 = 6 - 3√3 - 2 = 4 - 3√3

---

## 6. Rationalising the Denominator

Eliminate surds from denominators by multiplying by the conjugate or the surd itself.

### Type 1: Single surd in denominator
Multiply numerator and denominator by the surd.

**Example:** 6/√3 = 6√3/(√3 × √3) = 6√3/3 = **2√3**

### Type 2: Binomial surd in denominator
Multiply by the **conjugate** (change the sign between the terms).

**Conjugate of (a + √b) is (a - √b)**

**Example 1:** 1/(2 + √3)
- Multiply by (2 - √3)/(2 - √3): = (2 - √3)/(4 - 3) = **2 - √3**

**Example 2:** (3 + √2)/(1 - √2)
- Multiply by (1 + √2)/(1 + √2)
- Numerator: (3 + √2)(1 + √2) = 3 + 3√2 + √2 + 2 = 5 + 4√2
- Denominator: 1 - 2 = -1
- Answer: **-(5 + 4√2) = -5 - 4√2**

---

## 7. Recurring Decimals to Fractions

**Method:** Let x = the decimal. Multiply by powers of 10 to eliminate the recurring part.

**Example 1:** Convert 0.333... to a fraction
- Let x = 0.333...
- 10x = 3.333... → 10x - x = 3 → 9x = 3 → x = **1/3**

**Example 2:** Convert 0.142857142857... to a fraction
- x = 0.142857... (period of 6 digits)
- 1000000x = 142857.142857...
- 999999x = 142857 → x = 142857/999999 = **1/7**

**Example 3:** Convert 0.136̄ (only the 6 recurs) to a fraction
- Let x = 0.1366...
- 10x = 1.366... and 100x = 13.666...
- 100x - 10x = 13.666... - 1.366... = 12.3
- 90x = 12.3 → x = 12.3/90 = 123/900 = **41/300**

---

## 8. Equations Involving Surds

**Method:** Isolate the surd, then square both sides. Always CHECK solutions (squaring can introduce extraneous roots).

**Example 1:** Solve √(2x + 3) = 5
- Square: 2x + 3 = 25 → 2x = 22 → x = 11
- Check: √(22+3) = √25 = 5 ✓

**Example 2:** Solve √(x + 2) = x - 4
- Square: x + 2 = x² - 8x + 16
- x² - 9x + 14 = 0 → (x-2)(x-7) = 0
- x = 2: √4 = 2, but 2-4 = -2 ✗ (reject)
- x = 7: √9 = 3, and 7-4 = 3 ✓
- Solution: **x = 7**

---

## Summary

| Operation | Rule |
|-----------|------|
| Simplify √n | Extract largest perfect square factor |
| Add surds | Only if same radicand |
| Multiply | √a × √b = √(ab) |
| Rationalise (surd) | Multiply by √n/√n |
| Rationalise (binomial) | Multiply by conjugate |
| Conjugate of (a+√b) | (a-√b) |
' WHERE id = 'a234e1fc-6855-493b-8095-6186898a08b0';

UPDATE topics SET content = '# Commercial Mathematics

## 1. Percentages, Profit and Loss

### Percentage
**Percentage = (Part / Whole) × 100**

To find a percentage of a number: Multiply by the fraction.
e.g., 35% of 80 = 35/100 × 80 = 28

### Profit and Loss
- **Profit = Selling Price (SP) - Cost Price (CP)**
- **Loss = CP - SP**
- **Profit % = (Profit/CP) × 100**
- **Loss % = (Loss/CP) × 100**
- **SP = CP × (1 + Profit%/100)**
- **SP = CP × (1 - Loss%/100)**

**Example 1:** Bought for ₵120, sold for ₵156. Find profit%.
- Profit = 36
- Profit% = (36/120) × 100 = **30%**

**Example 2:** A radio is sold at 12.5% loss. SP = ₵700. Find CP.
- CP × (1 - 0.125) = 700 → CP = 700/0.875 = **₵800**

---

## 2. Discount

**Discount = Marked Price (MP) - Selling Price (SP)**

**Discount% = (Discount/MP) × 100**

**SP = MP × (1 - Discount%/100)**

**Example:** A suit marked ₵350 is sold at 20% discount. Find SP.
- SP = 350 × 0.80 = **₵280**

---

## 3. Tax (VAT / Sales Tax)

**Amount after tax = Price × (1 + tax%/100)**

**Example:** An item costs ₵500 before 15% VAT. Find final price.
- Final price = 500 × 1.15 = **₵575**

---

## 4. Simple Interest

**I = PRT/100**

where:
- P = Principal (original amount)
- R = Rate per annum (%)
- T = Time (in years)
- I = Simple Interest

**Total Amount: A = P + I = P(1 + RT/100)**

**Example 1:** Find interest on ₵2000 at 8% per annum for 3 years.
- I = 2000 × 8 × 3 / 100 = **₵480**
- A = ₵2480

**Example 2:** At what rate will ₵600 earn ₵108 interest in 3 years?
- 108 = 600 × R × 3 / 100 → R = 10800/1800 = **6%**

---

## 5. Compound Interest

Interest is calculated on the accumulated amount each period.

**A = P(1 + r/n)^(nt)**

For annual compounding: **A = P(1 + r)ⁿ**

where r = rate as a decimal, n = number of times compounded per year, t = time in years.

**Compound Interest earned = A - P**

**Example 1:** ₵5000 invested at 10% p.a. compound for 3 years.
- A = 5000(1.10)³ = 5000 × 1.331 = **₵6655**
- CI = ₵1655

**Example 2:** At 12% p.a. compounded quarterly, find amount after 2 years on ₵8000.
- r = 0.12/4 = 0.03, n = 4×2 = 8
- A = 8000(1.03)⁸ = 8000 × 1.2668 = **₵10134.40**

---

## 6. Depreciation

Assets lose value over time.

**Reducing balance method:** Vₙ = V₀(1 - r)ⁿ

**Straight-line method:** Annual depreciation = (Cost - Scrap value) / Useful life

**Example:** A car bought for ₵30,000 depreciates at 20% p.a. Find value after 3 years.
- V₃ = 30000(1 - 0.20)³ = 30000(0.8)³ = 30000 × 0.512 = **₵15,360**

---

## 7. Hire Purchase

Buy now, pay in instalments (usually more expensive than outright purchase).

**HP price = Deposit + (Number of instalments × Amount per instalment)**

**Example:** TV costs ₵1200 cash. HP: 20% deposit, 12 monthly payments of ₵100.
- Deposit = 20% × 1200 = ₵240
- Total HP cost = 240 + 12×100 = 240 + 1200 = **₵1440**
- Extra cost = 1440 - 1200 = **₵240** more than cash

---

## 8. Currency Exchange

**Amount in new currency = Amount × Exchange rate**

**Example:** 1 GBP = 15.5 GHS. Convert £200 to cedis.
- 200 × 15.5 = **GHS 3100**

**Example:** Convert GHS 4650 to GBP.
- 4650 ÷ 15.5 = **£300**

---

## 9. Shares and Dividends

- **Shares:** Units of ownership in a company
- **Face value (par value):** Printed value of the share
- **Dividend:** Portion of profit paid to shareholders
- **Dividend per share = Total dividend / Number of shares**
- **Dividend yield = (Dividend/Market price) × 100%**

**Example:** A company declares 15% dividend on shares of face value ₵2. Find dividend on 500 shares.
- Dividend per share = 15% × ₵2 = ₵0.30
- Total dividend = 500 × 0.30 = **₵150**

---

## 10. Rates, Taxes and Utility Bills

**Rateable value × Rate in the cedis = Rates payable**

**Example:** Property rateable value ₵8000, rate = ₵0.25 per ₵1 of value.
- Rates = 8000 × 0.25 = **₵2000**

---

## 11. Wages, Salaries and Overtime

- **Wage:** Paid per hour or per day
- **Salary:** Fixed annual or monthly pay
- **Overtime:** Extra work; usually at higher rate (time-and-a-half = 1.5× normal rate)

**Example:** Worker earns ₵12/hour for 40 hours/week. Overtime at 1.5× for extra 8 hours.
- Normal: 40 × 12 = ₵480
- Overtime: 8 × 18 = ₵144
- Total: **₵624**

---

## 12. Insurance and Commission

**Commission = Percentage × Total sales**

**Example:** Sales rep earns 8% commission on sales of ₵15,000.
- Commission = 8% × 15000 = **₵1200**

**Insurance premium:** Annual payment for coverage
- If premium rate = 2% of insured value:
- Premium = 2% × ₵500,000 = ₵10,000/year

---

## Summary Formulas

| Concept | Formula |
|---------|---------|
| Profit% | (Profit/CP) × 100 |
| Discount% | (Discount/MP) × 100 |
| Simple Interest | PRT/100 |
| Compound Amount | P(1+r)ⁿ |
| Depreciation | V₀(1-r)ⁿ |
| SP after discount | MP(1 - d/100) |
| SP after profit% | CP(1 + p/100) |
' WHERE id = 'a7480e03-5aa0-4484-a02b-7182448e9431';

UPDATE topics SET content = '# Fractions, Decimals and Percentages

## 1. Types of Fractions

| Type | Description | Example |
|------|------------|---------|
| Proper | Numerator < denominator | 3/5 |
| Improper | Numerator ≥ denominator | 7/3 |
| Mixed | Whole number + fraction | 2⅓ |
| Equivalent | Same value, different form | 2/4 = 1/2 |

---

## 2. Simplifying Fractions

Divide both numerator and denominator by their **Highest Common Factor (HCF)**.

**Example:** Simplify 24/36.
- HCF(24, 36) = 12
- 24/36 = 2/3

---

## 3. Operations with Fractions

### Addition and Subtraction
Find the **Lowest Common Denominator (LCD)**, then add/subtract numerators.

**Example 1:** 1/3 + 1/4 = 4/12 + 3/12 = 7/12

**Example 2:** 5/6 - 2/9 = 15/18 - 4/18 = 11/18

**Example 3 (Mixed):** 3½ + 1¾ = 7/2 + 7/4 = 14/4 + 7/4 = 21/4 = 5¼

### Multiplication
Multiply numerators, multiply denominators, then simplify.

**Example:** (3/4) × (8/9) = 24/36 = 2/3

**Shortcut (cancelling before multiplying):** 3/4 × 8/9 = (3×8)/(4×9) → cancel 3 with 9, 8 with 4 → 2/3

### Division
Multiply by the **reciprocal** of the divisor.

**Example:** (3/4) ÷ (9/16) = (3/4) × (16/9) = 48/36 = 4/3 = 1⅓

---

## 4. Order of Operations (BODMAS / PEMDAS)

**B**rackets **O**rders (powers/roots) **D**ivision **M**ultiplication **A**ddition **S**ubtraction

**Example:** 2 + 3 × (4 - 1)² ÷ 9
= 2 + 3 × 3² ÷ 9
= 2 + 3 × 9 ÷ 9
= 2 + 27 ÷ 9
= 2 + 3
= 5

---

## 5. Decimals

### Place Value
- 3.142: 3 is units, 1 is tenths, 4 is hundredths, 2 is thousandths

### Converting Fractions to Decimals
Divide numerator by denominator.

**Example 1:** 3/4 = 3 ÷ 4 = 0.75 (terminating)

**Example 2:** 1/3 = 0.333... (recurring, written as 0.3̄)

**Example 3:** 5/6 = 0.8333... = 0.83̄

### Converting Decimals to Fractions
Put decimal over appropriate power of 10 and simplify.

**Example 1:** 0.35 = 35/100 = 7/20

**Example 2:** 2.75 = 275/100 = 11/4 = 2¾

---

## 6. Recurring Decimals

Notation: 0.3̄ means 0.333..., 0.1̄2̄ means 0.121212...

**Convert recurring decimal to fraction:**

**Example 1:** 0.7̄ → x = 0.777..., 10x = 7.777..., 9x = 7 → x = 7/9

**Example 2:** 0.1̄2̄ (12 recurs) → x = 0.1212..., 100x = 12.1212..., 99x = 12 → x = 12/99 = 4/33

**Example 3:** 0.36̄ (only 6 recurs) → 10x = 3.666..., 100x = 36.666..., 90x = 33, x = 33/90 = 11/30

---

## 7. Rounding and Approximation

### Decimal Places (d.p.)
Count digits after the decimal point. Round the last kept digit up if the next digit ≥ 5.

**Example:** Round 4.7852 to 2 d.p. → 4.79

### Significant Figures (s.f.)
Start counting from the first non-zero digit.

**Examples:**
- 3.705 to 3 s.f. → 3.71
- 0.00847 to 2 s.f. → 0.0085
- 5860 to 2 s.f. → 5900

---

## 8. Percentages

**Percentage means "out of 100"**

### Converting Between Forms

| Fraction | Decimal | Percentage |
|----------|---------|-----------|
| 1/2 | 0.5 | 50% |
| 1/4 | 0.25 | 25% |
| 3/4 | 0.75 | 75% |
| 1/5 | 0.2 | 20% |
| 1/8 | 0.125 | 12.5% |
| 1/3 | 0.333... | 33.3% |

### Percentage Calculations

**Find % of a number:** Multiply by the fraction
e.g., 35% of 140 = 35/100 × 140 = 49

**Express one quantity as % of another:**
= (Part/Whole) × 100
e.g., 24 as % of 60 = (24/60) × 100 = 40%

**Percentage increase/decrease:**
% change = (Change/Original) × 100

**Example:** Price rises from ₵80 to ₵92.
% increase = (12/80) × 100 = 15%

**Find original value after % change:**
Original = New value / (1 ± % as decimal)

**Example:** After 20% increase, price is ₵120. Find original.
Original = 120/1.2 = ₵100

---

## 9. Ratio and Proportion

**Ratio:** Comparison of two quantities in the same units.
a:b = a/b

**Simplest form:** Divide both by HCF.
e.g., 24:36 = 2:3

### Sharing in a Ratio
**Example:** Share ₵420 in ratio 2:3:7.
- Total parts = 12
- Share 1: 2/12 × 420 = ₵70
- Share 2: 3/12 × 420 = ₵105
- Share 3: 7/12 × 420 = ₵245

### Direct Proportion
y = kx (as x increases, y increases proportionally)
Use: y₁/x₁ = y₂/x₂

**Example:** 5 pens cost ₵15. Cost of 8 pens?
= 15/5 × 8 = ₵24

### Inverse Proportion
y = k/x (as x increases, y decreases)
Use: x₁y₁ = x₂y₂

**Example:** 6 workers complete a job in 10 days. How long for 15 workers?
= 6 × 10 / 15 = **4 days**

---

## 10. Estimation

Round numbers to 1 s.f. before calculating:

**Example:** Estimate 49.2 × 3.87 / 0.48
≈ 50 × 4 / 0.5 = 200/0.5 = **400** (exact ≈ 397.1)

---

## Summary

| Operation | Method |
|-----------|--------|
| Fraction + fraction | Common denominator |
| Fraction × fraction | Straight multiply and simplify |
| Fraction ÷ fraction | Multiply by reciprocal |
| Decimal to fraction | Over power of 10, simplify |
| % of number | × percent/100 |
| Number as % | (part/whole) × 100 |
| % change | (change/original) × 100 |
| Original after % change | New/(1 ± r) |
' WHERE id = '5de88b29-e90d-4243-b38d-66c48091f0ae';

UPDATE topics SET content = '# Linear Graphs and Relations

## 1. Introduction to Relations and Functions

### Relation
A **relation** is a set of ordered pairs (x, y) connecting two sets.

### Function
A **function** is a relation where each input (x-value) gives exactly one output (y-value).

**Vertical line test:** If any vertical line crosses the graph at more than one point, it is NOT a function.

### Types of Functions
- **One-to-one:** Each x maps to a unique y and vice versa
- **Many-to-one:** Multiple x-values can map to the same y
- **One-to-many:** NOT a function

### Domain and Range
- **Domain:** Set of all valid input values (x-values)
- **Range:** Set of all output values (y-values)

---

## 2. Linear Functions

A **linear function** has the form: **f(x) = mx + c** or **y = mx + c**

- m = **gradient** (slope) — how steep the line is
- c = **y-intercept** — where the line crosses the y-axis

---

## 3. Gradient of a Line

**m = (y₂ - y₁)/(x₂ - x₁) = rise/run**

| Gradient | Description |
|----------|-------------|
| m > 0 | Positive slope (going up left to right) |
| m < 0 | Negative slope (going down left to right) |
| m = 0 | Horizontal line |
| undefined | Vertical line |

**Example:** Line through (2, 1) and (5, 7):
m = (7-1)/(5-2) = 6/3 = **2**

---

## 4. Forms of Linear Equations

### Slope-Intercept Form
**y = mx + c**

Easily read off gradient (m) and y-intercept (c).

### General Form
**ax + by + c = 0**

Convert by rearranging: 2x + 3y - 6 = 0 → y = -2/3 x + 2

### Point-Slope Form
**y - y₁ = m(x - x₁)**

Use when you know gradient and one point.

---

## 5. Drawing a Straight Line Graph

**Step 1:** Identify at least two points (use x = 0 and y = 0 for intercepts, or choose any values).

**Step 2:** Plot the points on a grid.

**Step 3:** Join them with a straight line using a ruler.

**Example:** Draw y = 2x - 3
- x = 0: y = -3 → (0, -3)
- x = 3: y = 3 → (3, 3)
- x = -1: y = -5 → (-1, -5)
- Plot and join.

---

## 6. Finding Equations from Graphs

**Given gradient and y-intercept:** Substitute directly into y = mx + c.

**Given two points:**
1. Calculate m = (y₂-y₁)/(x₂-x₁)
2. Substitute one point into y = mx + c to find c.

**Example:** Line passes through (3, 5) and (7, 13).
- m = (13-5)/(7-3) = 8/4 = 2
- 5 = 2(3) + c → c = -1
- Equation: **y = 2x - 1**

---

## 7. Parallel and Perpendicular Lines (Review)

**Parallel:** Same gradient (m₁ = m₂)

**Perpendicular:** m₁ × m₂ = -1

**Example:** Find line through (1, 4) parallel to y = 3x - 2.
- m = 3 (same gradient)
- 4 = 3(1) + c → c = 1
- Equation: **y = 3x + 1**

---

## 8. Solving Simultaneous Linear Equations Graphically

Plot both lines; the **intersection point** is the solution.

**Example:** Solve y = x + 2 and y = -x + 6 graphically.
- Line 1 crosses (0,2) and (4,6)
- Line 2 crosses (0,6) and (6,0)
- Intersection at **(2, 4)**

---

## 9. Linear Inequalities and Regions

To graph a linear inequality:
1. Draw the boundary line (solid for ≤ or ≥, dashed for < or >)
2. Test a point (usually origin) to determine which side satisfies the inequality
3. Shade the required region

**Example:** Shade the region satisfying y ≤ 2x + 1.
- Draw y = 2x + 1 (solid line)
- Test (0,0): 0 ≤ 1 ✓ → shade the side containing origin

---

## 10. Gradient and Real-World Graphs

### Distance-Time Graphs
- Gradient = speed
- Horizontal line = stationary (not moving)
- Steeper gradient = faster speed
- Negative gradient = returning

### Speed-Time Graphs
- Gradient = acceleration
- Positive gradient = acceleration
- Negative gradient = deceleration
- Area under graph = distance (displacement)

### Conversion Graphs
Straight line through origin (or with offset). Use to convert currencies, units, etc.

---

## 11. Function Notation

**f(x):** Read as "f of x"

**f(3):** Substitute x = 3 into the function formula

**Example:** If f(x) = 3x - 2, find f(5) and f(-1).
- f(5) = 3(5) - 2 = 13
- f(-1) = 3(-1) - 2 = -5

### Composite Functions
**fg(x) means f(g(x)):** Apply g first, then f.

**Example:** f(x) = 2x + 1, g(x) = x².
- fg(3) = f(g(3)) = f(9) = 2(9)+1 = **19**
- gf(3) = g(f(3)) = g(7) = 7² = **49**

### Inverse Functions
**f⁻¹(x):** Reverse the function. To find it, swap x and y then solve for y.

**Example:** f(x) = 3x - 5. Find f⁻¹(x).
- y = 3x - 5 → x = 3y - 5 → y = (x+5)/3
- **f⁻¹(x) = (x+5)/3**

---

## 12. Piecewise Functions

Different rules apply to different parts of the domain.

**Example:**
f(x) = 2x + 1 for x < 0
f(x) = x² for x ≥ 0

- f(-3) = 2(-3)+1 = -5
- f(4) = 4² = 16

---

## Summary

| Concept | Key Point |
|---------|----------|
| Gradient | m = rise/run = (y₂-y₁)/(x₂-x₁) |
| y = mx + c | m = gradient, c = y-intercept |
| Parallel lines | Equal gradients |
| Perpendicular | m₁ × m₂ = -1 |
| f⁻¹(x) | Swap x and y, solve for y |
| fg(x) | Apply g first, then f |
| Distance-Time gradient | Speed |
| Speed-Time area | Distance |
' WHERE id = 'a1ddc835-a1ef-4db3-99be-194e1af0353e';

UPDATE topics SET content = '# Quadratic Equations and Functions

## 1. Introduction

A **quadratic equation** has the form **ax² + bx + c = 0** where a ≠ 0.

A **quadratic function** is f(x) = ax² + bx + c, whose graph is a **parabola**.

---

## 2. Methods of Solving Quadratic Equations

### Method 1: Factorisation
Factor the quadratic into two linear factors.

**Steps:**
1. Write in standard form ax² + bx + c = 0
2. Find two numbers that multiply to **ac** and add to **b**
3. Split the middle term and factor by grouping

**Example 1:** Solve x² + 5x + 6 = 0
- Need two numbers: multiply to 6, add to 5 → 2 and 3
- (x + 2)(x + 3) = 0 → x = -2 or x = -3

**Example 2:** Solve 2x² - x - 6 = 0
- ac = -12; numbers that multiply to -12 and add to -1: -4 and 3
- 2x² - 4x + 3x - 6 = 0 → 2x(x-2) + 3(x-2) = 0
- (2x+3)(x-2) = 0 → x = -3/2 or x = 2

---

### Method 2: Completing the Square

**Steps for x² + bx + c = 0:**
1. x² + bx = -c
2. Add (b/2)² to both sides
3. Write as (x + b/2)² = right side
4. Take square root, solve for x

**Example:** Solve x² - 6x + 2 = 0
- x² - 6x = -2
- x² - 6x + 9 = -2 + 9 = 7
- (x-3)² = 7 → x - 3 = ±√7
- **x = 3 ± √7**

**Completing the square also reveals vertex of parabola!**

---

### Method 3: Quadratic Formula

**x = (-b ± √(b² - 4ac)) / 2a**

**Example:** Solve 3x² + 5x - 2 = 0
- a=3, b=5, c=-2
- x = (-5 ± √(25 + 24)) / 6 = (-5 ± √49) / 6 = (-5 ± 7) / 6
- x = 2/6 = 1/3 or x = -12/6 = -2

---

## 3. The Discriminant

**Δ = b² - 4ac**

| Value of Δ | Nature of Roots |
|-----------|----------------|
| Δ > 0 | Two distinct real roots |
| Δ = 0 | One repeated (equal) real root |
| Δ < 0 | No real roots (complex/imaginary) |

**Example:** Determine nature of roots of 2x² + 3x + 5 = 0
- Δ = 9 - 40 = -31 < 0 → **No real roots**

**Example:** For what values of k does x² + kx + 9 = 0 have equal roots?
- Δ = k² - 36 = 0 → k² = 36 → **k = ±6**

---

## 4. Sum and Product of Roots

For ax² + bx + c = 0 with roots α and β:

**α + β = -b/a** (sum of roots)

**α × β = c/a** (product of roots)

**Forming an equation from roots:**
x² - (sum)x + (product) = 0

**Example:** Roots are 3 and -5. Form the equation.
- Sum = -2, Product = -15
- x² + 2x - 15 = 0

**Example:** If roots of x² - 5x + k = 0 are α and β, and α² + β² = 17, find k.
- α + β = 5, αβ = k
- α² + β² = (α+β)² - 2αβ = 25 - 2k = 17 → 2k = 8 → **k = 4**

---

## 5. The Parabola: Shape and Properties

For f(x) = ax² + bx + c:

| Property | Value |
|----------|-------|
| Shape | Opens up if a>0; opens down if a<0 |
| Vertex x-coordinate | x = -b/2a |
| Axis of symmetry | x = -b/2a |
| y-intercept | c (when x=0) |
| x-intercepts | Roots of ax²+bx+c=0 |
| Minimum (a>0) | At vertex |
| Maximum (a<0) | At vertex |

**Example:** f(x) = x² - 4x + 3
- a=1>0, opens upward
- Axis: x = 4/2 = 2
- Vertex: f(2) = 4 - 8 + 3 = -1 → vertex at (2, -1)
- y-intercept: (0, 3)
- x-intercepts: x² - 4x + 3 = 0 → (x-1)(x-3)=0 → x=1 or x=3

---

## 6. Vertex Form

**f(x) = a(x - h)² + k**

where (h, k) is the vertex.

**Obtained by completing the square.**

**Example:** Write f(x) = x² - 6x + 11 in vertex form.
- f(x) = (x² - 6x + 9) + 11 - 9
- f(x) = **(x - 3)² + 2**
- Vertex: (3, 2)

---

## 7. Graphs of Quadratic Functions

**Sketching a parabola:**
1. Find vertex (h, k)
2. Find y-intercept (set x=0)
3. Find x-intercepts (solve ax²+bx+c=0)
4. Note direction of opening (a>0 up, a<0 down)
5. Plot and draw smooth curve

---

## 8. Maximum and Minimum Values

**Minimum value** when a > 0: Minimum = k (y-coordinate of vertex)

**Maximum value** when a < 0: Maximum = k

**Example:** Find the minimum value of y = 2x² - 8x + 5.
- x at vertex = 8/(2×2) = 2
- Minimum y = 2(4) - 16 + 5 = **-3**

---

## 9. Quadratic Inequalities

**To solve ax² + bx + c > 0:**
1. Solve ax² + bx + c = 0 to find roots α and β (where α < β)
2. Sketch the parabola (note if a>0 or a<0)
3. Read off the required interval

**If a > 0:**
- ax² + bx + c > 0 → x < α or x > β
- ax² + bx + c < 0 → α < x < β

**If a < 0:** reverse the above.

**Example:** Solve x² - 5x + 6 < 0
- Roots: x=2 and x=3
- a>0, parabola opens upward
- f(x) < 0 between roots: **2 < x < 3**

---

## 10. Simultaneous: Linear and Quadratic

**Example:** Find intersections of y = x + 2 and y = x²
- x + 2 = x² → x² - x - 2 = 0 → (x-2)(x+1) = 0
- x = 2: y = 4 → (2, 4)
- x = -1: y = 1 → (-1, 1)

---

## 11. Applications

**Projectile motion:** h(t) = -4.9t² + v₀t + h₀

**Area problems:** Set up quadratic, solve.

**Example:** A rectangle has perimeter 28 cm. Find dimensions if area is 45 cm².
- 2(l + w) = 28 → l + w = 14 → l = 14 - w
- Area: w(14-w) = 45 → 14w - w² = 45
- w² - 14w + 45 = 0 → (w-5)(w-9) = 0 → w=5 or w=9
- Dimensions: **5 cm × 9 cm**

---

## Summary Table

| Method | When to Use |
|--------|------------|
| Factorisation | When factors are easy to spot |
| Completing square | When exact answer needed or for vertex form |
| Quadratic formula | Always works, especially complex roots |
| Discriminant | To determine nature of roots without solving |

| Property | Formula |
|----------|---------|
| Quadratic formula | (-b ± √(b²-4ac))/2a |
| Sum of roots | -b/a |
| Product of roots | c/a |
| Axis of symmetry | x = -b/2a |
| Discriminant | b² - 4ac |
' WHERE id = 'd8bf5bf6-525f-4a57-8f2e-1963651e5d7a';
