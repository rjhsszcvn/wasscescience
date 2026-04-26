/*
  # Expand notes for Surds, Fractions/Decimals/Percentages, Quadratic Equations

  Adds a comprehensive 5th "examples" section to each thin topic with
  WASSCE-style past questions and full worked solutions.
*/

DO $$
DECLARE
  tid UUID;
BEGIN

  -- SURDS AND RATIONAL NUMBERS
  SELECT id INTO tid FROM topics WHERE name = 'Surds and Rational Numbers';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Surds',
    $CONTENT$## WASSCE Examination Questions — Surds

### Question 1
Simplify: (sqrt(6) + sqrt(2)) / (sqrt(6) - sqrt(2))

**Solution:**
Multiply numerator and denominator by the conjugate (sqrt(6) + sqrt(2)):
= (sqrt(6) + sqrt(2))^2 / (6 - 2)
= (6 + 2sqrt(12) + 2) / 4
sqrt(12) = 2sqrt(3)
= (8 + 4sqrt(3)) / 4
= **2 + sqrt(3)**

### Question 2
Given that sqrt(3) = 1.732 and sqrt(2) = 1.414, find the value of 1/(sqrt(3) - sqrt(2)) correct to 2 decimal places.

**Solution:**
Rationalize: multiply by (sqrt(3) + sqrt(2)) / (sqrt(3) + sqrt(2))
= (sqrt(3) + sqrt(2)) / (3 - 2)
= sqrt(3) + sqrt(2)
= 1.732 + 1.414 = **3.15**

### Question 3
If p = sqrt(5) + sqrt(3) and q = sqrt(5) - sqrt(3), find:
(a) p + q
(b) pq
(c) p^2 + q^2

**Solution:**
(a) p + q = 2sqrt(5) = **2sqrt(5)**
(b) pq = (sqrt(5))^2 - (sqrt(3))^2 = 5 - 3 = **2**
(c) p^2 = 8 + 2sqrt(15), q^2 = 8 - 2sqrt(15)
p^2 + q^2 = **16**

### Question 4 — Rationalization
Express 1/(3 + sqrt(5)) in the form a + bsqrt(5). Find a and b.

**Solution:**
Multiply by (3 - sqrt(5))/(3 - sqrt(5)):
= (3 - sqrt(5)) / (9 - 5)
= (3 - sqrt(5)) / 4

So **a = 3/4, b = -1/4**

### Question 5 — Rational and Irrational Numbers
Classify each as rational or irrational:
(a) sqrt(16) — **Rational** (= 4)
(b) sqrt(7) — **Irrational**
(c) 22/7 — **Rational** (fraction of two integers)
(d) pi — **Irrational**
(e) 0.333... = 1/3 — **Rational** (repeating decimal)

### Key Rules to Remember
- Always simplify surds by finding perfect square factors: sqrt(72) = sqrt(36 x 2) = 6sqrt(2)
- Like surds can be added: 3sqrt(5) + 7sqrt(5) = 10sqrt(5)
- To rationalize a binomial denominator, multiply by the **conjugate** (change the sign)
- Use difference of two squares: (a + b)(a - b) = a^2 - b^2 to eliminate surds$CONTENT$,
    'examples', 5);

  -- FRACTIONS, DECIMALS AND PERCENTAGES
  SELECT id INTO tid FROM topics WHERE name = 'Fractions, Decimals and Percentages';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Fractions and Percentages',
    $CONTENT$## WASSCE Examination Questions — Fractions, Decimals and Percentages

### Question 1 — Profit and Loss
A trader bought goods for GHC 15,000 and sold them for GHC 18,750. What percentage profit did he make?

**Solution:**
Profit = 18,750 - 15,000 = GHC 3,750
Percentage Profit = (3750 / 15000) x 100 = **25%**

### Question 2 — Mixed Numbers
Simplify: (2 1/3 + 1 1/4) / (3 1/2 - 1 3/4)

**Solution:**
Numerator: 7/3 + 5/4 = 28/12 + 15/12 = 43/12
Denominator: 7/2 - 7/4 = 14/4 - 7/4 = 7/4
Result = (43/12) x (4/7) = 172/84 = **43/21** = 2 and 1/21

### Question 3 — Equations with Percentages
If 30% of x is equal to 45% of 60, find x.

**Solution:**
0.30x = 0.45 x 60
0.30x = 27
x = 27 / 0.30 = **90**

### Question 4 — Reverse Percentage
A house was sold for GHC 84,000 at a loss of 16%. Find the cost price.

**Solution:**
Selling price = 84% of cost price
84% of CP = 84,000
CP = 84,000 / 0.84 = **GHC 100,000**

### Question 5 — Ratio Division
Divide GHC 7,200 in the ratio 2:3:4

**Solution:**
Total parts = 2 + 3 + 4 = 9
Each part = 7200 / 9 = GHC 800
Shares: 2 x 800 = GHC 1,600 | 3 x 800 = GHC 2,400 | 4 x 800 = **GHC 3,200**

### Question 6 — Fractions in Context
A student scored 45 out of 60 in a test. Express this as a percentage.

**Solution:**
Percentage = (45 / 60) x 100 = 75 x 1 = **75%**

### WASSCE Tips
- Mixed numbers MUST be converted to improper fractions before operations
- For profit/loss: always calculate as a percentage of the **cost price**
- For percentage questions, identify whether they ask for the original or new value
- Reverse percentage: divide by the decimal equivalent (e.g., 84% = divide by 0.84)$CONTENT$,
    'examples', 5);

  -- QUADRATIC EQUATIONS AND FUNCTIONS
  SELECT id INTO tid FROM topics WHERE name = 'Quadratic Equations and Functions';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Quadratics',
    $CONTENT$## WASSCE Examination Questions — Quadratic Equations

### Question 1
Solve the equation 6x^2 - 7x - 3 = 0

**Solution using quadratic formula:**
a = 6, b = -7, c = -3
Discriminant D = 49 + 72 = 121 = 11^2
x = (7 + 11) / 12 = 18/12 = 3/2
x = (7 - 11) / 12 = -4/12 = -1/3
**x = 3/2 or x = -1/3**

### Question 2 — Word Problem
The sum of a number and its square is 42. Find the possible values of the number.

**Solution:**
Let number = n
n + n^2 = 42
n^2 + n - 42 = 0
(n + 7)(n - 6) = 0
**n = -7 or n = 6**

### Question 3 — Area Problem
A rectangular room is 4m longer than it is wide. If its area is 96 square metres, find its dimensions.

**Solution:**
Let width = w, then length = w + 4
w(w + 4) = 96
w^2 + 4w - 96 = 0
(w + 12)(w - 8) = 0
w = 8 (width must be positive)
**Width = 8m, Length = 12m**

### Question 4 — Minimum/Maximum Values
Find the minimum value of y = x^2 - 4x + 7 and the value of x at which it occurs.

**Solution:**
Complete the square:
y = (x - 2)^2 - 4 + 7 = (x - 2)^2 + 3
Minimum value = **3** when x = **2**

### Question 5 — Forming a Quadratic
The roots of a quadratic equation are 2/3 and -5. Form the equation.

**Solution:**
Sum of roots = 2/3 + (-5) = -13/3
Product of roots = (2/3) x (-5) = -10/3
Equation: x^2 - (sum)x + product = 0
x^2 + (13/3)x - 10/3 = 0
Multiply through by 3: **3x^2 + 13x - 10 = 0**

### Question 6 — Nature of Roots
Find the values of k for which x^2 + kx + 9 = 0 has equal roots.

**Solution:**
Equal roots: discriminant = 0
k^2 - 4(1)(9) = 0
k^2 = 36
**k = +6 or k = -6**

### Exam Technique
- Try factorization first — it is the quickest method when it works
- Use the quadratic formula when factorization is not obvious
- Always check your roots by substituting back into the original equation
- For word problems, define your variable clearly before forming the equation$CONTENT$,
    'examples', 5);

END $$;
