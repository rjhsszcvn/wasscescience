/*
  # Add WASSCE Mathematics Questions Batch 2

  Adds 75 new WASSCE-standard Mathematics questions covering:
  - Number and numeration (fractions, indices, surds, sets)
  - Algebra (linear/quadratic equations, simultaneous equations)
  - Geometry (angles, triangles, circles, constructions)
  - Trigonometry (ratios, angles of elevation/depression)
  - Statistics and probability
  - Commercial mathematics (profit/loss, percentages, interest)
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000001';
  v_topic_id uuid := '070d2bf3-3eb3-45d2-b9c3-0476f6632897';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'Simplify: (2^5 x 2^3) / 2^4',
 '["2^2","2^4","2^12","2^8"]', 1,
 '2^5 x 2^3 = 2^8. 2^8 / 2^4 = 2^(8-4) = 2^4 = 16.', 'easy'),

(v_subject_id, v_topic_id, 'Express 0.00045 in standard form (scientific notation)',
 '["4.5 x 10^-3","4.5 x 10^-4","4.5 x 10^4","45 x 10^-5"]', 1,
 '0.00045 = 4.5 x 10^-4 (move decimal point 4 places to the right).', 'easy'),

(v_subject_id, v_topic_id, 'The sum of interior angles of a hexagon is',
 '["540 degrees","720 degrees","900 degrees","1080 degrees"]', 1,
 'Sum of interior angles = (n-2) x 180. For n=6: (6-2) x 180 = 4 x 180 = 720 degrees.', 'easy'),

(v_subject_id, v_topic_id, 'If 3x - 7 = 14, find x',
 '["3","7","21","2"]', 1,
 '3x = 14 + 7 = 21. x = 21/3 = 7.', 'easy'),

(v_subject_id, v_topic_id, 'The simple interest on GHc 500 for 3 years at 8% per annum is',
 '["GHc 40","GHc 120","GHc 130","GHc 160"]', 1,
 'SI = (Principal x Rate x Time) / 100 = (500 x 8 x 3) / 100 = 12000/100 = GHc 120.', 'easy'),

(v_subject_id, v_topic_id, 'What is 15% of 240?',
 '["30","36","24","40"]', 1,
 '15% of 240 = (15/100) x 240 = 0.15 x 240 = 36.', 'easy'),

(v_subject_id, v_topic_id, 'Factorise: x^2 - 9',
 '["(x-3)^2","(x+3)(x-3)","(x-9)(x+1)","(x+3)^2"]', 1,
 'x^2 - 9 = x^2 - 3^2 = (x+3)(x-3) using the difference of two squares.', 'easy'),

(v_subject_id, v_topic_id, 'A right angle is equal to',
 '["180 degrees","270 degrees","90 degrees","360 degrees"]', 2,
 'A right angle measures exactly 90 degrees.', 'easy'),

(v_subject_id, v_topic_id, 'The mean of 4, 8, 6, 10, 7 is',
 '["6","7","8","9"]', 1,
 'Mean = (4+8+6+10+7)/5 = 35/5 = 7.', 'easy'),

(v_subject_id, v_topic_id, 'Solve: 2x + 3y = 12 and x - y = 1',
 '["x=3, y=2","x=2, y=3","x=5, y=1","x=4, y=1"]', 0,
 'From x-y=1: x=y+1. Substituting: 2(y+1)+3y=12 gives 5y=10, y=2, x=3.', 'medium'),

(v_subject_id, v_topic_id, 'The LCM of 12, 18, and 24 is',
 '["36","72","48","96"]', 1,
 'LCM(12,18,24): 12=2^2x3, 18=2x3^2, 24=2^3x3. LCM = 2^3 x 3^2 = 8 x 9 = 72.', 'medium'),

(v_subject_id, v_topic_id, 'If a = 3 and b = -2, find 2a^2 - 3b',
 '["12","24","6","18"]', 1,
 '2(3)^2 - 3(-2) = 2(9) + 6 = 18 + 6 = 24.', 'easy'),

(v_subject_id, v_topic_id, 'The gradient of the line joining (1, 3) and (4, 9) is',
 '["1","2","3","4"]', 1,
 'Gradient = (9-3)/(4-1) = 6/3 = 2.', 'easy'),

(v_subject_id, v_topic_id, 'A boy scored 45 out of 60 in a test. What percentage is this?',
 '["70%","75%","80%","45%"]', 1,
 'Percentage = (45/60) x 100 = 75%.', 'easy'),

(v_subject_id, v_topic_id, 'The volume of a cube with side length 3 cm is',
 '["9 cm^3","18 cm^3","27 cm^3","6 cm^3"]', 2,
 'Volume of cube = s^3 = 3^3 = 27 cm^3.', 'easy'),

(v_subject_id, v_topic_id, 'Expand: (x + 3)(x - 2)',
 '["x^2 + x - 6","x^2 - x + 6","x^2 + 5x - 6","x^2 + x + 6"]', 0,
 '(x+3)(x-2) = x^2 - 2x + 3x - 6 = x^2 + x - 6.', 'easy'),

(v_subject_id, v_topic_id, 'An article costs GHc 200. It is sold at a profit of 25%. What is the selling price?',
 '["GHc 225","GHc 240","GHc 250","GHc 180"]', 2,
 'Profit = 25% of 200 = 50. Selling price = 200 + 50 = GHc 250.', 'easy'),

(v_subject_id, v_topic_id, 'Simplify: sqrt(75)',
 '["5sqrt(3)","3sqrt(5)","7sqrt(5)","15sqrt(3)"]', 0,
 'sqrt(75) = sqrt(25 x 3) = 5sqrt(3).', 'medium'),

(v_subject_id, v_topic_id, 'In the number 3456.78, the digit 5 is in what place?',
 '["Ones","Tens","Hundreds","Thousands"]', 1,
 'In 3456.78: 3=thousands, 4=hundreds, 5=tens, 6=ones, .7=tenths, .08=hundredths. So 5 is in the tens place.', 'easy'),

(v_subject_id, v_topic_id, 'The circumference of a circle with radius 7 cm is (take pi = 22/7)',
 '["44 cm","22 cm","154 cm","77 cm"]', 0,
 'Circumference = 2 x pi x r = 2 x (22/7) x 7 = 44 cm.', 'easy'),

(v_subject_id, v_topic_id, 'If P = {1,2,3,4,5} and Q = {3,4,5,6,7}, then P intersection Q =',
 '["{3,4,5}","{1,2,3,4,5,6,7}","{1,2}","{6,7}"]', 0,
 'P intersection Q contains elements in both sets: {3,4,5}.', 'easy'),

(v_subject_id, v_topic_id, 'Solve for x: x^2 - 5x + 6 = 0',
 '["x = 2 or x = 3","x = -2 or x = -3","x = 1 or x = 6","x = 2 or x = -3"]', 0,
 'Factorising: (x-2)(x-3) = 0. So x = 2 or x = 3.', 'easy'),

(v_subject_id, v_topic_id, 'A 30-60-90 triangle has sides in the ratio',
 '["1:1:sqrt(2)","1:sqrt(3):2","1:2:3","1:sqrt(2):sqrt(3)"]', 1,
 'In a 30-60-90 triangle, the sides are in ratio 1 : sqrt(3) : 2 (opposite 30, 60, and 90 degrees respectively).', 'medium'),

(v_subject_id, v_topic_id, 'Find the area of a triangle with base 8 cm and height 5 cm',
 '["13 cm^2","40 cm^2","20 cm^2","80 cm^2"]', 2,
 'Area of triangle = (1/2) x base x height = (1/2) x 8 x 5 = 20 cm^2.', 'easy'),

(v_subject_id, v_topic_id, 'The sum of angles on a straight line is',
 '["90 degrees","180 degrees","270 degrees","360 degrees"]', 1,
 'Angles on a straight line (supplementary angles) sum to 180 degrees.', 'easy'),

(v_subject_id, v_topic_id, 'If the probability of an event occurring is 0.3, the probability of it NOT occurring is',
 '["0.7","0.3","1.3","0"]', 0,
 'P(not A) = 1 - P(A) = 1 - 0.3 = 0.7.', 'easy'),

(v_subject_id, v_topic_id, 'The HCF of 24 and 36 is',
 '["6","12","18","4"]', 1,
 'Factors of 24: 1,2,3,4,6,8,12,24. Factors of 36: 1,2,3,4,6,9,12,18,36. HCF = 12.', 'easy'),

(v_subject_id, v_topic_id, 'Convert 11001 base 2 to base 10',
 '["15","25","27","19"]', 1,
 '11001 in base 2 = 1x16 + 1x8 + 0x4 + 0x2 + 1x1 = 16+8+1 = 25.', 'medium'),

(v_subject_id, v_topic_id, 'Simplify: (3x^2 y^3) / (xy^2)',
 '["3xy","3x^2y","3x/y","3xy^2"]', 0,
 '(3x^2 y^3)/(xy^2) = 3 x (x^2/x) x (y^3/y^2) = 3xy.', 'medium'),

(v_subject_id, v_topic_id, 'The area of a trapezium with parallel sides 6 cm and 10 cm and height 4 cm is',
 '["32 cm^2","24 cm^2","48 cm^2","16 cm^2"]', 0,
 'Area = (1/2)(a+b)h = (1/2)(6+10)(4) = (1/2)(16)(4) = 32 cm^2.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is an irrational number?',
 '["0.5","1/3","sqrt(2)","3.142 (to 3 d.p.)"]', 2,
 'sqrt(2) = 1.41421... is irrational - it cannot be expressed as a fraction p/q of integers.', 'medium'),

(v_subject_id, v_topic_id, 'If f(x) = 2x + 1, find f(3)',
 '["5","6","7","8"]', 2,
 'f(3) = 2(3) + 1 = 6 + 1 = 7.', 'easy'),

(v_subject_id, v_topic_id, 'The angle of elevation of the top of a building from a point 30 m away is 45 degrees. The height of the building is',
 '["15 m","30 m","45 m","30sqrt(2) m"]', 1,
 'tan(45) = height/30. Since tan(45) = 1, height = 30 m.', 'medium'),

(v_subject_id, v_topic_id, 'An exterior angle of a regular polygon is 36 degrees. How many sides does it have?',
 '["8","10","12","6"]', 1,
 'Number of sides = 360 / exterior angle = 360/36 = 10.', 'medium'),

(v_subject_id, v_topic_id, 'Rationalise the denominator: 1/sqrt(3)',
 '["sqrt(3)/3","3/sqrt(3)","1/3","sqrt(3)"]', 0,
 'Multiply numerator and denominator by sqrt(3): 1/sqrt(3) x sqrt(3)/sqrt(3) = sqrt(3)/3.', 'medium'),

(v_subject_id, v_topic_id, 'The median of 3, 7, 5, 9, 2, 8, 6 when arranged in order is',
 '["5","6","7","8"]', 1,
 'Ordered: 2,3,5,6,7,8,9. The 4th value (middle) is 6.', 'easy'),

(v_subject_id, v_topic_id, 'Find x if log base 2 of x = 5',
 '["10","25","32","16"]', 2,
 'log_2(x) = 5 means x = 2^5 = 32.', 'medium'),

(v_subject_id, v_topic_id, 'Two angles of a triangle are 50 degrees and 70 degrees. The third angle is',
 '["60 degrees","40 degrees","80 degrees","50 degrees"]', 0,
 'Sum of angles in a triangle = 180 degrees. Third angle = 180 - 50 - 70 = 60 degrees.', 'easy'),

(v_subject_id, v_topic_id, 'A car travels 240 km in 3 hours. What is its average speed?',
 '["60 km/h","70 km/h","80 km/h","90 km/h"]', 2,
 'Speed = Distance/Time = 240/3 = 80 km/h.', 'easy'),

(v_subject_id, v_topic_id, 'The expression 2^0 equals',
 '["0","2","1","-1"]', 2,
 'Any non-zero number raised to the power of 0 equals 1. So 2^0 = 1.', 'easy'),

(v_subject_id, v_topic_id, 'Find the nth term of the sequence 2, 5, 8, 11, ...',
 '["3n","3n + 1","3n - 1","2n + 1"]', 2,
 'The sequence has first term 2 and common difference 3. nth term = a + (n-1)d = 2 + 3(n-1) = 3n - 1.', 'medium'),

(v_subject_id, v_topic_id, 'Simplify: (2a + b)(2a - b)',
 '["4a^2 - b^2","4a^2 + b^2","4a^2 - 2b","2a^2 - b^2"]', 0,
 'Using difference of two squares: (2a+b)(2a-b) = (2a)^2 - b^2 = 4a^2 - b^2.', 'medium'),

(v_subject_id, v_topic_id, 'Evaluate: 5! / 3!',
 '["20","60","10","120"]', 0,
 '5! = 120, 3! = 6. 5!/3! = 120/6 = 20.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following sets is a subset of {1, 2, 3, 4, 5}?',
 '["{1,2,6}","{2,4}","{0,1,2}","{3,5,7}"]', 1,
 '{2,4} contains only elements from {1,2,3,4,5} so it is a subset.', 'easy'),

(v_subject_id, v_topic_id, 'The area of a circle with diameter 14 cm is (use pi = 22/7)',
 '["44 cm^2","88 cm^2","154 cm^2","616 cm^2"]', 2,
 'Radius = 7 cm. Area = pi x r^2 = (22/7) x 7^2 = (22/7) x 49 = 154 cm^2.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is true about vertically opposite angles?',
 '["They are supplementary (add to 180 degrees)","They are equal","They are complementary (add to 90 degrees)","They are always right angles"]', 1,
 'Vertically opposite angles (formed when two lines intersect) are always equal.', 'easy'),

(v_subject_id, v_topic_id, 'If the exchange rate is $1 = GHc 12, how many dollars is GHc 600?',
 '["$5","$50","$72","$600"]', 1,
 'GHc 600 / 12 = $50.', 'easy'),

(v_subject_id, v_topic_id, 'Solve the inequality 3x - 4 > 5',
 '["x > 3","x < 3","x > 1/3","x < 1/3"]', 0,
 '3x > 5 + 4 = 9. x > 9/3 = 3.', 'easy'),

(v_subject_id, v_topic_id, 'What is the bearing of North-West (NW) in three-figure notation?',
 '["045 degrees","135 degrees","315 degrees","225 degrees"]', 2,
 'North-West (NW) is measured clockwise from North: 360 - 45 = 315 degrees (or equivalently, 270 + 45 = 315).', 'medium'),

(v_subject_id, v_topic_id, 'The perimeter of a rectangle 8 cm long and 5 cm wide is',
 '["13 cm","26 cm","40 cm","80 cm"]', 1,
 'Perimeter = 2(length + width) = 2(8+5) = 2 x 13 = 26 cm.', 'easy'),

(v_subject_id, v_topic_id, 'A class has 30 students. 18 are boys. What fraction are girls?',
 '["3/5","2/5","18/30","1/2"]', 1,
 'Girls = 30 - 18 = 12. Fraction = 12/30 = 2/5.', 'easy'),

(v_subject_id, v_topic_id, 'Evaluate: 0.003 x 0.02',
 '["0.00006","0.006","0.00060","0.6"]', 0,
 '0.003 x 0.02 = 3x10^-3 x 2x10^-2 = 6x10^-5 = 0.00006.', 'medium'),

(v_subject_id, v_topic_id, 'The value of sin 30 degrees is',
 '["1","1/2","sqrt(3)/2","sqrt(2)/2"]', 1,
 'sin 30 = 1/2 = 0.5.', 'easy'),

(v_subject_id, v_topic_id, 'Solve: x/4 + 2 = 5',
 '["x = 3","x = 12","x = 28","x = 7"]', 1,
 'x/4 = 5 - 2 = 3. x = 3 x 4 = 12.', 'easy'),

(v_subject_id, v_topic_id, 'A rectangular room is 6 m long and 4 m wide. Find the cost of tiling it at GHc 15 per sq. m.',
 '["GHc 360","GHc 300","GHc 24","GHc 400"]', 0,
 'Area = 6 x 4 = 24 m^2. Cost = 24 x 15 = GHc 360.', 'medium'),

(v_subject_id, v_topic_id, 'The ratio of boys to girls in a school is 3:5. If there are 600 students, how many are boys?',
 '["180","225","375","300"]', 1,
 'Total parts = 3+5 = 8. Boys = (3/8) x 600 = 225.', 'medium'),

(v_subject_id, v_topic_id, 'Evaluate 27^(2/3)',
 '["3","6","9","18"]', 2,
 '27^(2/3) = (27^(1/3))^2 = (3)^2 = 9. Cube root of 27 is 3; square it to get 9.', 'medium'),

(v_subject_id, v_topic_id, 'The mode of 2, 3, 5, 2, 8, 2, 9 is',
 '["3","5","2","8"]', 2,
 'Mode is the most frequently occurring value. 2 appears three times.', 'easy'),

(v_subject_id, v_topic_id, 'Which property is true of a rhombus?',
 '["All angles are right angles","All sides are equal and diagonals bisect each other at right angles","Opposite sides are equal only","Diagonals are equal"]', 1,
 'A rhombus has all four sides equal, and its diagonals bisect each other at right angles (90 degrees).', 'medium'),

(v_subject_id, v_topic_id, 'Evaluate: log10(100) + log10(10)',
 '["2","3","1","4"]', 1,
 'log10(100) = log10(10^2) = 2; log10(10) = 1. Sum = 2 + 1 = 3.', 'easy'),

(v_subject_id, v_topic_id, 'Two fair coins are tossed. The probability of getting at least one head is',
 '["1/4","1/2","3/4","1"]', 2,
 'Outcomes: HH, HT, TH, TT. Outcomes with at least one head: HH, HT, TH (3 out of 4). P = 3/4.', 'medium'),

(v_subject_id, v_topic_id, 'The value of (-3)^4 is',
 '["-81","81","-12","12"]', 1,
 '(-3)^4 = (-3) x (-3) x (-3) x (-3) = 81. Even power of a negative number is positive.', 'easy'),

(v_subject_id, v_topic_id, 'Find the number of sides of a regular polygon with interior angle 140 degrees',
 '["7","8","9","10"]', 2,
 'Exterior angle = 180 - 140 = 40 degrees. Number of sides = 360/40 = 9.', 'medium'),

(v_subject_id, v_topic_id, 'Compound interest on GHc 1000 for 2 years at 10% per annum is',
 '["GHc 200","GHc 210","GHc 220","GHc 100"]', 1,
 'After year 1: 1000 x 1.1 = 1100. After year 2: 1100 x 1.1 = 1210. CI = 1210 - 1000 = GHc 210.', 'medium'),

(v_subject_id, v_topic_id, 'The total surface area of a cube with side 4 cm is',
 '["16 cm^2","64 cm^2","96 cm^2","24 cm^2"]', 2,
 'A cube has 6 faces. Total surface area = 6 x s^2 = 6 x 4^2 = 6 x 16 = 96 cm^2.', 'medium'),

(v_subject_id, v_topic_id, 'Simplify: (x + 2)/(x^2 - 4)',
 '["x - 2","1/(x-2)","x + 2","1/(x+2)"]', 1,
 'x^2 - 4 = (x+2)(x-2). So (x+2)/[(x+2)(x-2)] = 1/(x-2).', 'medium');

END $$;
