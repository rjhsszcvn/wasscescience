/*
  # Expand notes for Commercial Maths, Construction, Bearings, Transformations

  Adds comprehensive 5th "examples" sections with WASSCE-style questions.
*/

DO $$
DECLARE
  tid UUID;
BEGIN

  -- COMMERCIAL MATHEMATICS
  SELECT id INTO tid FROM topics WHERE name = 'Commercial Mathematics';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Commercial Maths',
    $CONTENT$## WASSCE Examination Questions — Commercial Mathematics

### Question 1 — Simple Interest
Kofi borrowed GHC 50,000 at a simple interest rate of 12% per annum for 3 years. How much interest does he pay?

**Solution:**
SI = PRT / 100
SI = (50,000 x 12 x 3) / 100 = **GHC 18,000**
Total repayment = 50,000 + 18,000 = GHC 68,000

### Question 2 — Compound Interest
Abena invests GHC 20,000 at 10% per annum compound interest for 2 years. Find the amount at the end.

**Solution:**
A = P(1 + r/100)^n
A = 20,000 x (1.10)^2
A = 20,000 x 1.21 = **GHC 24,200**
Compound interest earned = 24,200 - 20,000 = GHC 4,200

### Question 3 — Hire Purchase
A television set costs GHC 6,000 cash. On hire purchase, a deposit of 1/4 of the cash price is paid, followed by 18 monthly instalments of GHC 350. How much more is the HP price?

**Solution:**
Deposit = (1/4) x 6,000 = GHC 1,500
Total instalments = 18 x 350 = GHC 6,300
Total HP price = 1,500 + 6,300 = GHC 7,800
Extra paid = 7,800 - 6,000 = **GHC 1,800**

### Question 4 — Foreign Exchange
When GHC 1 = USD 0.068, how many cedis will you get for USD 500?

**Solution:**
USD 1 = GHC 1/0.068 = GHC 14.71
USD 500 = 500 x 14.71 = **GHC 7,353** (approximately)

### Question 5 — Taxation
Ama earns GHC 4,500 per month. She is taxed at 5% on the first GHC 2,000 and 12% on the remainder. Calculate her monthly tax.

**Solution:**
Tax on first GHC 2,000 = 5% x 2,000 = GHC 100
Remainder = 4,500 - 2,000 = GHC 2,500
Tax on remainder = 12% x 2,500 = GHC 300
Total monthly tax = 100 + 300 = **GHC 400**

### Question 6 — Depreciation
A car worth GHC 80,000 depreciates by 15% per year. Find its value after 2 years.

**Solution:**
Value after year 1 = 80,000 x 0.85 = GHC 68,000
Value after year 2 = 68,000 x 0.85 = **GHC 57,800**
Using formula: V = 80,000 x (0.85)^2 = 80,000 x 0.7225 = GHC 57,800

### Key Formulas

| Topic | Formula |
|-------|---------|
| Simple Interest | SI = PRT/100 |
| Compound Interest | A = P(1 + r/100)^n |
| Profit Percentage | (Profit/Cost Price) x 100 |
| Loss Percentage | (Loss/Cost Price) x 100 |
| Percentage Increase | (Increase/Original) x 100 |$CONTENT$,
    'examples', 5);

  -- CONSTRUCTION AND LOCI
  SELECT id INTO tid FROM topics WHERE name = 'Construction and Loci';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'Loci, Regions and WASSCE Practice: Construction',
    $CONTENT$## WASSCE Examination Questions — Construction and Loci

### Understanding Locus

A **locus** is the set of all points that satisfy a given geometric condition.

### Common Loci

**Locus 1:** Points equidistant from a fixed point = **a circle** with that point as centre

**Locus 2:** Points equidistant from two fixed points = the **perpendicular bisector** of the line joining them

**Locus 3:** Points equidistant from two intersecting lines = the **angle bisector** of the angle formed

**Locus 4:** Points at a fixed distance from a given line = **two parallel lines** equidistant from the given line

### Worked Examples — Loci

**Example 1:** Points P and Q are 8cm apart. Find the locus of point X such that XP = XQ.

**Answer:** The perpendicular bisector of PQ — the line passing through the midpoint of PQ at 90 degrees to it.

**Example 2:** A point moves so that it is always 3cm from a fixed line. Describe its locus.

**Answer:** Two straight lines parallel to the given line, one on each side, each 3cm away.

**Example 3:** Describe the locus of the centre of a circle of radius 2cm rolling along a straight line.

**Answer:** A straight line parallel to the given line and 2cm above it.

### Constructing Standard Angles Without a Protractor

| Angle | Method |
|-------|--------|
| 60 degrees | Draw equilateral triangle |
| 30 degrees | Bisect a 60-degree angle |
| 90 degrees | Perpendicular at a point |
| 45 degrees | Bisect a 90-degree angle |
| 120 degrees | Supplement of 60 degrees |
| 150 degrees | Supplement of 30 degrees |
| 75 degrees | Bisect the angle between 60 and 90 degrees |

### WASSCE-Style Construction Question

**Q:** Using ruler and compass only, construct triangle ABC where AB = 6cm, angle BAC = 60 degrees, and AC = 5cm. Then:
(a) Construct the perpendicular bisector of BC
(b) Construct the bisector of angle ABC
(c) Label D where the two bisectors meet
(d) Measure and state BD

**Steps for the construction:**
1. Draw line AB = 6cm
2. At A, open compass to 6cm, draw arc from A and B to meet at point — gives equilateral triangle vertex for 60 degrees
3. Draw the 60-degree ray from A, mark C at 5cm along it
4. Join BC to complete the triangle
5. For perpendicular bisector of BC: set compass to more than half BC, draw arcs from B and C above and below — join intersection points
6. For angle bisector of angle ABC: set compass at B, draw arcs on BA and BC — draw arcs from these intersection points to find bisector

### Important Notes for Exam
- In loci questions, shade the **correct region** clearly
- State whether boundaries are included (solid line) or excluded (dashed line)
- Use neat, sharp pencil lines for all constructions
- Leave construction arcs visible — do NOT erase them$CONTENT$,
    'examples', 5);

  -- BEARING AND DISTANCES
  SELECT id INTO tid FROM topics WHERE name = 'Bearing and Distances';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Bearings',
    $CONTENT$## WASSCE Examination Questions — Bearing and Distances

### Question 1 — Component Resolution
A ship sails from port A on a bearing of 070 degrees for 50km to reach port B. How far North and East of A is B?

**Solution:**
Northing = 50 x cos(70) = 50 x 0.342 = **17.1km North**
Easting = 50 x sin(70) = 50 x 0.940 = **47.0km East**

### Question 2 — Reverse Bearing
If A is on a bearing of 035 degrees from B, what is the bearing of B from A?

**Solution:**
Bearing of B from A = 035 + 180 = **215 degrees**
Rule: if bearing < 180, add 180. If bearing >= 180, subtract 180.

### Question 3 — Two-Stage Journey
A man walks 3km due North, then 4km due East. Find:
(a) His distance from the starting point
(b) The bearing of his final position from the start

**Solution:**
(a) Distance = sqrt(3^2 + 4^2) = sqrt(9 + 16) = sqrt(25) = **5km**
(b) tan(angle) = 4/3 (East over North), angle = 53.1 degrees
Bearing = **053 degrees** (measured clockwise from North)

### Question 4 — Three-Point Problem
From a lighthouse L, ship A is on bearing 040 degrees and ship B is on bearing 130 degrees. LA = 5km, LB = 7km. Find distance AB.

**Solution:**
Angle ALB = 130 - 40 = 90 degrees
AB^2 = LA^2 + LB^2 (Pythagoras, since angle = 90 degrees)
AB^2 = 25 + 49 = 74
AB = **sqrt(74) which is approximately 8.6km**

### Question 5 — Angle of Elevation Combined
From point P, the angle of elevation of the top T of a tower is 30 degrees. P is 120m from the base B.

(a) Find the height of the tower.
(b) If B is on bearing 020 degrees from P, find the bearing of P from B.

**Solution:**
(a) tan(30) = height / 120
Height = 120 x tan(30) = 120 x (1/sqrt(3)) = 40sqrt(3) which is approximately **69.3m**
(b) Bearing of P from B = 020 + 180 = **200 degrees**

### Cardinal Bearing Reference

| Direction | Bearing |
|-----------|---------|
| North | 000 degrees |
| North-East | 045 degrees |
| East | 090 degrees |
| South-East | 135 degrees |
| South | 180 degrees |
| South-West | 225 degrees |
| West | 270 degrees |
| North-West | 315 degrees |

### Important Rules
- Bearings are ALWAYS measured **clockwise** from **North**
- Bearings are always written with **3 digits** (e.g., 045, not 45)
- Back bearing = forward bearing + 180 (if < 180) or - 180 (if >= 180)
- When solving distance problems, always draw a clear diagram first$CONTENT$,
    'examples', 5);

  -- TRANSFORMATION GEOMETRY
  SELECT id INTO tid FROM topics WHERE name = 'Transformation Geometry';
  INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
  VALUES (tid,
    'WASSCE Past Questions and Full Solutions: Transformations',
    $CONTENT$## WASSCE Examination Questions — Transformation Geometry

### Question 1 — Reflection
Reflect point A(3, -2) in:
(a) The x-axis
(b) The y-axis
(c) The line y = x
(d) The line y = -x

**Solutions:**
(a) Reflect in x-axis — rule (x, y) becomes (x, -y): A' = **(3, 2)**
(b) Reflect in y-axis — rule (x, y) becomes (-x, y): A' = **(-3, -2)**
(c) Reflect in y = x — rule (x, y) becomes (y, x): A' = **(-2, 3)**
(d) Reflect in y = -x — rule (x, y) becomes (-y, -x): A' = **(2, -3)**

### Question 2 — Rotation
Triangle PQR has vertices P(1,1), Q(3,1), R(3,4). Rotate it 90 degrees anticlockwise about the origin.

**Solution:**
Rule for 90 degrees anticlockwise: (x, y) becomes (-y, x)
P(1,1) → **(-1, 1)**
Q(3,1) → **(-1, 3)**
R(3,4) → **(-4, 3)**

### Question 3 — Translation
Triangle ABC has vertices A(2,1), B(5,1), C(5,4). Translate by vector (3, -2).

**Solution:**
Rule: (x, y) becomes (x+3, y-2)
A(2,1) → **A'(5, -1)**
B(5,1) → **B'(8, -1)**
C(5,4) → **C'(8, 2)**

### Question 4 — Enlargement
Enlarge triangle with vertices A(1,2), B(3,2), C(3,5) using scale factor 3 about the origin.

**Solution:**
Rule: (x, y) becomes (kx, ky) where k = 3
A(1,2) → **A'(3, 6)**
B(3,2) → **B'(9, 6)**
C(3,5) → **C'(9, 15)**

Note: Area of image = k^2 x area of object = 9 x original area

### Question 5 — Identifying a Transformation
Point A(2,3) maps to A'(-3,2), B(5,3) maps to B'(-3,5), C(5,7) maps to C'(-7,5). Identify the transformation.

**Solution:**
Check rule for 90 degrees anticlockwise: (x,y) becomes (-y, x)
A(2,3) → (-3, 2) which matches A'. Correct!
B(5,3) → (-3, 5) which matches B'. Correct!
**Transformation: Rotation of 90 degrees anticlockwise about the origin**

### Transformation Summary Table

| Transformation | Rule |
|----------------|------|
| Reflect in x-axis | (x,y) becomes (x,-y) |
| Reflect in y-axis | (x,y) becomes (-x,y) |
| Reflect in y=x | (x,y) becomes (y,x) |
| Reflect in y=-x | (x,y) becomes (-y,-x) |
| Rotate 90 degrees anticlockwise | (x,y) becomes (-y,x) |
| Rotate 90 degrees clockwise | (x,y) becomes (y,-x) |
| Rotate 180 degrees | (x,y) becomes (-x,-y) |
| Translate by (a,b) | (x,y) becomes (x+a, y+b) |
| Enlarge scale factor k at origin | (x,y) becomes (kx, ky) |$CONTENT$,
    'examples', 5);

END $$;
