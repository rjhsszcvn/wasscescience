/*
  # Expand notes for Linear Graphs, Binary Operations, Variation

  Adds comprehensive 5th "examples" sections with WASSCE-style questions.
*/

DO $$
DECLARE
  tid UUID;
BEGIN

  -- LINEAR GRAPHS AND RELATIONS
  SELECT id INTO tid FROM topics WHERE name = 'Linear Graphs and Relations';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Linear Graphs',
    $CONTENT$## WASSCE Examination Questions — Linear Graphs and Relations

### Question 1 — Reading a Line
A line has equation 3x + 2y = 12. Find:
(a) The gradient
(b) The y-intercept
(c) The x-intercept

**Solution:**
Rearrange: 2y = -3x + 12, so y = (-3/2)x + 6
(a) Gradient = **-3/2**
(b) y-intercept = **6** (point (0, 6))
(c) x-intercept: set y = 0: 3x = 12, x = **4** (point (4, 0))

### Question 2 — Equation of a Line
Find the equation of the line passing through points (2, 1) and (5, 7).

**Solution:**
Gradient m = (7 - 1) / (5 - 2) = 6/3 = 2
Using point (2, 1): y - 1 = 2(x - 2)
y - 1 = 2x - 4
**y = 2x - 3**

### Question 3 — Parallel Lines
Find the equation of the line parallel to y = 3x - 4 that passes through (0, 2).

**Solution:**
Parallel lines have the same gradient: m = 3
Line through (0, 2) with gradient 3: **y = 3x + 2**

### Question 4 — Perpendicular Lines
Find the gradient of a line perpendicular to 2y = 6x + 5.

**Solution:**
Rearrange: y = 3x + 5/2, so gradient = 3
Perpendicular gradient = -1/3 (negative reciprocal)
**Gradient of perpendicular line = -1/3**

### Question 5 — Area Problem
A straight line passes through A(0, 4) and B(6, 0). Find:
(a) The equation of line AB
(b) The area of triangle AOB where O is the origin

**Solution:**
(a) m = (0 - 4)/(6 - 0) = -2/3
y = (-2/3)x + 4 or equivalently **2x + 3y = 12**
(b) OA = 4 (y-intercept), OB = 6 (x-intercept)
Area = (1/2) x base x height = (1/2) x 6 x 4 = **12 square units**

### Question 6 — Midpoint and Distance
Find the midpoint and length of the line segment joining A(-2, 3) and B(4, -1).

**Solution:**
Midpoint = ((-2 + 4)/2, (3 + (-1))/2) = **(1, 1)**
Length = sqrt((4 - (-2))^2 + (-1 - 3)^2) = sqrt(36 + 16) = sqrt(52) = **2sqrt(13)**

### Key Formulae
- Gradient: m = (y2 - y1) / (x2 - x1)
- Equation of line: y - y1 = m(x - x1) or y = mx + c
- Midpoint: ((x1 + x2)/2, (y1 + y2)/2)
- Distance: sqrt((x2-x1)^2 + (y2-y1)^2)
- Parallel lines: same gradient
- Perpendicular lines: gradients multiply to give -1$CONTENT$,
    'examples', 5);

  -- BINARY OPERATIONS AND LOGICAL REASONING
  SELECT id INTO tid FROM topics WHERE name = 'Binary Operations and Logical Reasoning';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Binary Operations',
    $CONTENT$## WASSCE Examination Questions — Binary Operations

### Question 1 — Evaluating Operations
An operation is defined on real numbers by: a * b = 2a + b - ab

Find:
(a) 3 * 2
(b) 2 * 3
(c) Whether the operation is commutative

**Solution:**
(a) 3 * 2 = 2(3) + 2 - (3)(2) = 6 + 2 - 6 = **2**
(b) 2 * 3 = 2(2) + 3 - (2)(3) = 4 + 3 - 6 = **1**
(c) Since 3 * 2 = 2 but 2 * 3 = 1, they are not equal.
The operation is **NOT commutative**.

### Question 2 — Identity Element
An operation is defined by a # b = a + b - 5. Find the identity element.

**Solution:**
For identity element e: a # e = a
a + e - 5 = a
e = **5**

Verify: 5 # a = 5 + a - 5 = a. Correct!

### Question 3 — Inverse Element
Using the operation from Question 2 (a # b = a + b - 5, identity = 5), find the inverse of 9.

**Solution:**
9 # 9' = 5 (identity)
9 + 9' - 5 = 5
9' = **1**

Check: 9 # 1 = 9 + 1 - 5 = 5 = identity. Correct!

### Question 4 — Associativity Test
An operation is defined by a @ b = a^2 + b^2. Is it associative?

**Solution:**
Test if (a @ b) @ c = a @ (b @ c)
Left: (a @ b) @ c = (a^2 + b^2) @ c = (a^2 + b^2)^2 + c^2
Right: a @ (b @ c) = a @ (b^2 + c^2) = a^2 + (b^2 + c^2)^2

These are generally not equal.
**The operation is NOT associative.**

### Question 5 — Combined Operations
If a ⊕ b = 3a - 2b + 1, find:
(a) 4 ⊕ 3
(b) 3 ⊕ 4
(c) The value of n if n ⊕ 2 = 10

**Solution:**
(a) 4 ⊕ 3 = 3(4) - 2(3) + 1 = 12 - 6 + 1 = **7**
(b) 3 ⊕ 4 = 3(3) - 2(4) + 1 = 9 - 8 + 1 = **2**
(c) n ⊕ 2 = 3n - 4 + 1 = 3n - 3 = 10
3n = 13, n = **13/3**

### Properties Summary Table

| Property | Condition | Test |
|----------|-----------|------|
| Commutative | a * b = b * a | Check if result changes when you swap a and b |
| Associative | (a*b)*c = a*(b*c) | Check if bracketing matters |
| Identity element e | a * e = e * a = a | Find value that leaves a unchanged |
| Inverse of a | a * a' = e | Find what combines with a to give identity |$CONTENT$,
    'examples', 5);

  -- VARIATION
  SELECT id INTO tid FROM topics WHERE name = 'Variation (Direct, Inverse, Joint)';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Variation',
    $CONTENT$## WASSCE Examination Questions — Variation

### Question 1 — Direct Variation
y varies directly as the square of x. When x = 3, y = 36. Find y when x = 5.

**Solution:**
y = kx^2
36 = k(9), so k = 4
When x = 5: y = 4(25) = **100**

### Question 2 — Inverse Variation
The time taken to complete a journey varies inversely as the speed. A motorist at 60 km/h takes 4 hours. How long at 80 km/h?

**Solution:**
t = k/v
4 = k/60, so k = 240
t = 240/80 = **3 hours**

### Question 3 — Joint Variation
P varies jointly as Q and the square root of R. When Q = 4 and R = 9, P = 24. Find P when Q = 6 and R = 25.

**Solution:**
P = k x Q x sqrt(R)
24 = k x 4 x 3 = 12k
k = 2
When Q = 6, R = 25: P = 2 x 6 x 5 = **60**

### Question 4 — Partial Variation
y is partly constant and partly varies as x. When x = 2, y = 8; when x = 5, y = 17. Find y when x = 7.

**Solution:**
y = a + bx
Substituting:
8 = a + 2b ... (i)
17 = a + 5b ... (ii)
Subtract (i) from (ii): 9 = 3b, so b = 3
From (i): a = 8 - 6 = 2
y = 2 + 3x
When x = 7: y = 2 + 21 = **23**

### Question 5 — Combined Variation
F varies directly as m and inversely as d^2. When m = 5 and d = 2, F = 10. Find F when m = 8 and d = 4.

**Solution:**
F = km/d^2
10 = 5k/4, so k = 8
F = 8(8)/16 = **4**

### Summary Formulas

| Type | Relationship | Formula |
|------|-------------|---------|
| Direct | y varies as x | y = kx |
| Direct squared | y varies as x^2 | y = kx^2 |
| Inverse | y varies inversely as x | y = k/x |
| Joint | y varies as x and z | y = kxz |
| Partial | y partly constant, partly varies | y = a + bx |

### WASSCE Tip
- Always find the constant k first before substituting new values
- Write the general formula before plugging in values
- For partial variation, set up two equations and solve simultaneously$CONTENT$,
    'examples', 5);

END $$;
