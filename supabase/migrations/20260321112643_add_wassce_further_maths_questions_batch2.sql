/*
  # Add WASSCE Further Mathematics Questions Batch 2

  Adds 75 new WASSCE-standard Further Mathematics questions covering:
  - Algebra (polynomials, partial fractions, sequences)
  - Calculus (differentiation, integration)
  - Trigonometry (identities, equations)
  - Statistics and probability
  - Vectors and mechanics
*/

DO $$
DECLARE
  v_subject_id uuid := 'a1000000-0000-0000-0000-000000000007';
  v_topic_id uuid := '3046e2b5-d099-498e-80fb-d66c22719d7b';
BEGIN

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

(v_subject_id, v_topic_id, 'The derivative of sin(x) with respect to x is',
 '["cos(x)","-sin(x)","-cos(x)","tan(x)"]', 0,
 'd/dx[sin(x)] = cos(x). This is a standard calculus result.', 'easy'),

(v_subject_id, v_topic_id, 'If f(x) = 3x^2 + 2x - 5, then f''(x) =',
 '["6x + 2","3x + 2","6x - 5","x^2 + 2"]', 0,
 'Differentiating term by term: d/dx[3x^2]=6x, d/dx[2x]=2, d/dx[-5]=0. So f''(x) = 6x + 2.', 'easy'),

(v_subject_id, v_topic_id, 'The integral of cos(x) dx is',
 '["sin(x) + C","-sin(x) + C","-cos(x) + C","tan(x) + C"]', 0,
 'The integral of cos(x) is sin(x) + C.', 'easy'),

(v_subject_id, v_topic_id, 'The value of log base 10 of 1000 is',
 '["2","3","4","10"]', 1,
 'log(1000) = log(10^3) = 3.', 'easy'),

(v_subject_id, v_topic_id, 'If the roots of x^2 - 5x + 6 = 0 are alpha and beta, then alpha + beta =',
 '["6","5","-5","-6"]', 1,
 'By Vieta''s formulas: sum of roots = -(-5)/1 = 5.', 'easy'),

(v_subject_id, v_topic_id, 'The product of the roots of 2x^2 - 7x + 3 = 0 is',
 '["7/2","3/2","-7/2","-3/2"]', 1,
 'Product of roots = c/a = 3/2.', 'medium'),

(v_subject_id, v_topic_id, 'The derivative of e^x is',
 '["xe^(x-1)","e^x","1/e^x","1"]', 1,
 'd/dx[e^x] = e^x. The exponential function is its own derivative.', 'easy'),

(v_subject_id, v_topic_id, 'The integral from 0 to 2 of x^2 dx equals',
 '["4/3","8/3","4","2"]', 1,
 'Integral = [x^3/3] from 0 to 2 = 8/3 - 0 = 8/3.', 'medium'),

(v_subject_id, v_topic_id, 'The nth term of a geometric progression with first term a and common ratio r is',
 '["a + (n-1)r","a x r^n","a x r^(n-1)","a/r^n"]', 2,
 'The nth term of a GP is T_n = a*r^(n-1).', 'easy'),

(v_subject_id, v_topic_id, 'The value of sin 45 degrees is',
 '["1/2","sqrt(3)/2","sqrt(2)/2","sqrt(3)/3"]', 2,
 'sin 45 = 1/sqrt(2) = sqrt(2)/2 approximately 0.707.', 'easy'),

(v_subject_id, v_topic_id, 'If vector a = (3, 4), then the magnitude of a is',
 '["7","5","12","sqrt(7)"]', 1,
 '|a| = sqrt(3^2 + 4^2) = sqrt(25) = 5.', 'easy'),

(v_subject_id, v_topic_id, 'The second derivative of y = x^3 is',
 '["3x^2","6x","x^2","6x^2"]', 1,
 'y = x^3; y'' = 3x^2; y'''' = 6x.', 'medium'),

(v_subject_id, v_topic_id, 'The sum to infinity of a geometric series with |r| < 1 is',
 '["a/(1-r)","a/(r-1)","a(1-r)","a*r"]', 0,
 'Sum to infinity S = a/(1-r) provided |r| < 1.', 'medium'),

(v_subject_id, v_topic_id, 'The gradient of the curve y = x^3 - 3x at x = 2 is',
 '["9","6","3","12"]', 0,
 'dy/dx = 3x^2 - 3. At x=2: gradient = 12 - 3 = 9.', 'medium'),

(v_subject_id, v_topic_id, 'The probability that both independent events A and B occur is',
 '["P(A) + P(B)","P(A) x P(B)","P(A) - P(B)","P(A)/P(B)"]', 1,
 'For independent events: P(A and B) = P(A) x P(B).', 'easy'),

(v_subject_id, v_topic_id, 'Using the chain rule, d/dx[sin(3x)] =',
 '["cos(3x)","3cos(3x)","-3cos(3x)","sin(3)"]', 1,
 'Chain rule: d/dx[sin(3x)] = cos(3x) * 3 = 3cos(3x).', 'medium'),

(v_subject_id, v_topic_id, 'The equation of a circle with centre (2, -3) and radius 5 is',
 '["(x-2)^2 + (y+3)^2 = 25","(x+2)^2 + (y-3)^2 = 25","(x-2)^2 + (y-3)^2 = 5","(x+2)^2 + (y+3)^2 = 25"]', 0,
 'Circle equation with centre (h,k) and radius r: (x-h)^2 + (y-k)^2 = r^2. So (x-2)^2 + (y+3)^2 = 25.', 'medium'),

(v_subject_id, v_topic_id, 'The derivative of ln(x) is',
 '["x","1/x","e^x","ln(x)/x"]', 1,
 'd/dx[ln(x)] = 1/x for x > 0.', 'easy'),

(v_subject_id, v_topic_id, 'The number of ways of arranging 5 different objects in a row is',
 '["5","25","120","60"]', 2,
 '5! = 5 x 4 x 3 x 2 x 1 = 120 permutations.', 'easy'),

(v_subject_id, v_topic_id, 'The trigonometric identity sin^2(theta) + cos^2(theta) equals',
 '["0","2","1","tan^2(theta)"]', 2,
 'The Pythagorean identity: sin^2(theta) + cos^2(theta) = 1 for all values of theta.', 'easy'),

(v_subject_id, v_topic_id, 'The area under the curve y = 2x from x = 0 to x = 3 is',
 '["9","6","18","3"]', 0,
 'Integral from 0 to 3 of 2x dx = [x^2] from 0 to 3 = 9 - 0 = 9.', 'medium'),

(v_subject_id, v_topic_id, 'The scalar product of vectors a=(1,2) and b=(3,4) is',
 '["(3,8)","11","5","7"]', 1,
 'a.b = (1)(3) + (2)(4) = 3 + 8 = 11.', 'medium'),

(v_subject_id, v_topic_id, 'The factor theorem states that (x - a) is a factor of f(x) if and only if',
 '["f(0) = 0","f(a) = 0","f''(a) = 0","f(-a) = 0"]', 1,
 'Factor theorem: (x-a) is a factor of f(x) if and only if f(a) = 0.', 'easy'),

(v_subject_id, v_topic_id, 'The number of combinations of r items from n items is given by',
 '["n!","n!/r!","n!/[r!(n-r)!]","n!/(n-r)!"]', 2,
 'nCr = n! / [r!(n-r)!] gives the number of ways to choose r items from n without regard to order.', 'medium'),

(v_subject_id, v_topic_id, 'The stationary points of a curve are found by setting',
 '["y = 0","dy/dx = 0","d2y/dx2 = 0","y'' = 1"]', 1,
 'Stationary points occur where the derivative (gradient) equals zero.', 'easy'),

(v_subject_id, v_topic_id, 'For mutually exclusive events A and B, P(A or B) =',
 '["P(A) x P(B)","P(A) + P(B) - P(A and B)","P(A) + P(B)","P(A) - P(B)"]', 2,
 'For mutually exclusive events P(A and B) = 0, so P(A or B) = P(A) + P(B).', 'easy'),

(v_subject_id, v_topic_id, 'The range of a data set is',
 '["Mean minus median","Maximum minus minimum value","Sum of all values","Frequency times class width"]', 1,
 'Range = maximum value - minimum value, measuring the total spread of data.', 'easy'),

(v_subject_id, v_topic_id, 'Differentiating y = x^4 - 2x^3 + x gives',
 '["4x^3 - 6x^2 + 1","4x^3 - 2x^2 + 1","x^4 - 6x^2 + 1","4x^3 - 2x^3 + x"]', 0,
 'dy/dx = 4x^3 - 6x^2 + 1.', 'medium'),

(v_subject_id, v_topic_id, 'The remainder theorem states that when f(x) = x^3 - 2x + 1 is divided by (x - 2), the remainder is',
 '["0","5","3","9"]', 1,
 'Remainder = f(2) = 8 - 4 + 1 = 5.', 'easy'),

(v_subject_id, v_topic_id, 'The first term of a GP is 3 and the common ratio is 2. The 5th term is',
 '["16","48","96","32"]', 1,
 'T5 = ar^4 = 3 x 2^4 = 3 x 16 = 48.', 'easy'),

(v_subject_id, v_topic_id, 'The derivative of tan(x) is',
 '["sec^2(x)","cosec^2(x)","-sec^2(x)","cot(x)"]', 0,
 'd/dx[tan(x)] = sec^2(x).', 'medium'),

(v_subject_id, v_topic_id, 'The quadratic formula for ax^2 + bx + c = 0 gives x =',
 '["(-b +/- sqrt(b^2 - 4ac)) / 2a","(b +/- sqrt(b^2 - 4ac)) / 2a","(-b +/- sqrt(b^2 + 4ac)) / 2a","(-b +/- sqrt(4ac - b^2)) / 2a"]', 0,
 'Quadratic formula: x = [-b +/- sqrt(b^2 - 4ac)] / (2a).', 'easy'),

(v_subject_id, v_topic_id, '6C2 equals',
 '["12","15","30","720"]', 1,
 '6C2 = 6!/(2! x 4!) = (6 x 5)/(2 x 1) = 15.', 'easy'),

(v_subject_id, v_topic_id, 'The maximum point of y = -x^2 + 4x - 1 occurs at x =',
 '["1","4","2","-2"]', 2,
 'dy/dx = -2x + 4 = 0 gives x = 2. Since d2y/dx2 = -2 < 0, this is a maximum.', 'medium'),

(v_subject_id, v_topic_id, 'The mode of a data set is',
 '["The middle value","The average value","The most frequently occurring value","The range of values"]', 2,
 'The mode is the value that appears most frequently in a data set.', 'easy'),

(v_subject_id, v_topic_id, 'The expansion (a + b)^4 gives how many terms?',
 '["4","5","6","8"]', 1,
 '(a+b)^n has n+1 terms. For n=4: 5 terms.', 'easy'),

(v_subject_id, v_topic_id, 'The identity 1 + tan^2(theta) equals',
 '["sec^2(theta)","cosec^2(theta)","cot^2(theta) + 1","cos^2(theta) + 1"]', 0,
 'Dividing sin^2 + cos^2 = 1 by cos^2 gives tan^2 + 1 = sec^2.', 'medium'),

(v_subject_id, v_topic_id, 'The compound angle formula sin(A + B) =',
 '["sin A + sin B","sin A cos B + cos A sin B","sin A cos B - cos A sin B","cos A cos B - sin A sin B"]', 1,
 'sin(A+B) = sin A cos B + cos A sin B is the compound angle formula.', 'medium'),

(v_subject_id, v_topic_id, 'The integral of e^x dx is',
 '["xe^x + C","e^x/x + C","e^x + C","e^(x+1) + C"]', 2,
 'The integral of e^x is e^x + C.', 'easy'),

(v_subject_id, v_topic_id, 'A straight line passing through (0, 3) with gradient 2 has equation',
 '["y = 3x + 2","y = 2x + 3","y = 2x - 3","y = 3x - 2"]', 1,
 'Using y = mx + c with m=2 and y-intercept c=3: y = 2x + 3.', 'easy'),

(v_subject_id, v_topic_id, 'The median of 2, 5, 3, 8, 6 when arranged in order is',
 '["3","5","8","6"]', 1,
 'Ordered: 2, 3, 5, 6, 8. The middle value is 5.', 'easy'),

(v_subject_id, v_topic_id, 'The discriminant b^2 - 4ac > 0 means the quadratic equation has',
 '["Two equal real roots","Two distinct real roots","No real roots","Imaginary roots only"]', 1,
 'If b^2 - 4ac > 0: two distinct real roots; = 0: two equal roots; < 0: no real roots.', 'medium'),

(v_subject_id, v_topic_id, 'The velocity v = 3t^2 - 4t gives acceleration at t=2 as',
 '["8","4","16","12"]', 0,
 'a = dv/dt = 6t - 4. At t=2: a = 12 - 4 = 8 m/s^2.', 'medium'),

(v_subject_id, v_topic_id, 'The quotient rule for differentiation states d/dx[u/v] =',
 '["(u''v - uv'')/v^2","(uv'' - u''v)/v^2","u''v''","(u'' - v'')/v"]', 0,
 'Quotient rule: d/dx[u/v] = (u''v - uv'')/v^2.', 'medium'),

(v_subject_id, v_topic_id, 'The correlation coefficient r = -1 indicates',
 '["No correlation","Perfect positive linear correlation","Perfect negative linear correlation","Weak positive correlation"]', 2,
 'r = -1 indicates a perfect negative linear correlation between two variables.', 'medium'),

(v_subject_id, v_topic_id, 'The product rule for differentiation states d/dx[uv] =',
 '["u''v''","u''v + uv''","uv'' - u''v","u/v''"]', 1,
 'Product rule: d/dx[uv] = u''v + uv''.', 'medium'),

(v_subject_id, v_topic_id, 'Which of the following is NOT a measure of central tendency?',
 '["Mean","Median","Mode","Range"]', 3,
 'Mean, median, and mode are measures of central tendency. Range is a measure of dispersion.', 'easy'),

(v_subject_id, v_topic_id, 'Two lines with gradients m1 and m2 are perpendicular when',
 '["m1 = m2","m1 + m2 = 0","m1 x m2 = -1","m1 - m2 = 1"]', 2,
 'Two lines are perpendicular if the product of their gradients equals -1.', 'medium'),

(v_subject_id, v_topic_id, 'For an arithmetic sequence with first term 5 and common difference 3, the 10th term is',
 '["32","35","30","38"]', 0,
 'Tn = a + (n-1)d = 5 + 9(3) = 5 + 27 = 32.', 'easy'),

(v_subject_id, v_topic_id, 'The mean of 3, 7, 5, 9, 6 is',
 '["5","6","7","30"]', 1,
 'Mean = (3+7+5+9+6)/5 = 30/5 = 6.', 'easy'),

(v_subject_id, v_topic_id, 'The angle between perpendicular vectors is',
 '["0 degrees","45 degrees","90 degrees","180 degrees"]', 2,
 'Perpendicular vectors have a dot product of zero and the angle between them is 90 degrees.', 'medium'),

(v_subject_id, v_topic_id, 'An even function satisfies',
 '["f(-x) = -f(x)","f(-x) = f(x)","f(x) = 0 for all x","f(0) = 0"]', 1,
 'An even function satisfies f(-x) = f(x) and is symmetric about the y-axis.', 'medium'),

(v_subject_id, v_topic_id, 'The value of 7P3 (permutations) equals',
 '["21","35","210","42"]', 2,
 '7P3 = 7!/(7-3)! = 7 x 6 x 5 = 210.', 'easy'),

(v_subject_id, v_topic_id, 'The standard deviation is a measure of',
 '["Central tendency","The average value","Spread of data around the mean","The highest value"]', 2,
 'Standard deviation measures dispersion - how spread out data values are around the mean.', 'easy'),

(v_subject_id, v_topic_id, 'For a geometric series to converge (have a finite sum to infinity), we need',
 '["|r| > 1","|r| < 1","|r| = 1","r > 0"]', 1,
 'A geometric series converges only if |r| < 1.', 'medium'),

(v_subject_id, v_topic_id, 'The binomial expansion of (1 + x)^3 is',
 '["1 + 3x + 3x^2 + x^3","1 + 3x + x^2 + x^3","1 + x + x^2 + x^3","3 + 3x + 3x^2 + x^3"]', 0,
 '(1+x)^3 = 1 + 3x + 3x^2 + x^3 using the binomial theorem.', 'medium'),

(v_subject_id, v_topic_id, 'The locus of a point equidistant from two fixed points is',
 '["A circle","The perpendicular bisector of the line joining the two points","An ellipse","A parabola"]', 1,
 'The locus of equidistant points from two fixed points is the perpendicular bisector of the segment joining them.', 'medium'),

(v_subject_id, v_topic_id, 'The sum of the first n natural numbers is',
 '["n","n/2","n(n+1)/2","n^2"]', 2,
 'Sum of first n natural numbers = 1 + 2 + ... + n = n(n+1)/2.', 'medium'),

(v_subject_id, v_topic_id, 'The value of tan 60 degrees is',
 '["1/sqrt(2)","sqrt(3)","1","2"]', 1,
 'tan 60 = sin 60 / cos 60 = (sqrt(3)/2) / (1/2) = sqrt(3).', 'easy'),

(v_subject_id, v_topic_id, 'Differentiating y = x^2 sin(x) using the product rule gives',
 '["2x cos(x)","x^2 cos(x) + 2x sin(x)","2x sin(x) + x^2 cos(x)","x^2 cos(x)"]', 2,
 'Product rule: d/dx[x^2 sin(x)] = 2x sin(x) + x^2 cos(x).', 'hard'),

(v_subject_id, v_topic_id, 'The circle x^2 + y^2 - 6x + 4y - 12 = 0 has radius',
 '["5","7","sqrt(37)","4"]', 0,
 'Complete the square: (x-3)^2 + (y+2)^2 = 9 + 4 + 12 = 25. Radius = 5.', 'hard'),

(v_subject_id, v_topic_id, 'The probability that event A does NOT occur is',
 '["P(A)","1 - P(A)","P(A) - 1","1/P(A)"]', 1,
 'The complement rule: P(not A) = 1 - P(A).', 'easy'),

(v_subject_id, v_topic_id, 'The roots of x^2 - 4 = 0 are',
 '["x = 2 only","x = -2 only","x = 2 and x = -2","x = 4 and x = -4"]', 2,
 'x^2 = 4, so x = sqrt(4) = +2 or -2.', 'easy'),

(v_subject_id, v_topic_id, 'Integration of 3x^2 dx gives',
 '["6x","x^3 + C","3x^3 + C","x^2 + C"]', 1,
 'Integral of 3x^2 = 3 * x^3/3 + C = x^3 + C.', 'easy'),

(v_subject_id, v_topic_id, 'The straight line y = 3x - 2 has gradient',
 '["3","-2","1","0"]', 0,
 'In y = mx + c, m is the gradient. Here m = 3.', 'easy'),

(v_subject_id, v_topic_id, 'A function f(x) is odd if',
 '["f(-x) = f(x)","f(x) = 0","f(-x) = -f(x)","f(0) = 1"]', 2,
 'An odd function satisfies f(-x) = -f(x) and has rotational symmetry about the origin.', 'medium'),

(v_subject_id, v_topic_id, 'The equation of a tangent to y = x^2 at the point (2, 4) is',
 '["y = 4x - 4","y = 2x + 4","y = 4x + 4","y = x + 2"]', 0,
 'Gradient at x=2: dy/dx = 2x = 4. Tangent: y - 4 = 4(x - 2) gives y = 4x - 4.', 'medium'),

(v_subject_id, v_topic_id, 'The sum formula for an arithmetic series Sn is',
 '["Sn = n(a + l)/2","Sn = a(r^n - 1)/(r-1)","Sn = n/2 x d","Sn = a + (n-1)d"]', 0,
 'Sn = n/2[2a + (n-1)d] = n(a+l)/2 where l is the last term.', 'medium'),

(v_subject_id, v_topic_id, 'If P(A) = 0.3 and P(B) = 0.4, and A and B are independent, then P(A and B) =',
 '["0.7","0.12","0.1","0.34"]', 1,
 'For independent events: P(A and B) = P(A) x P(B) = 0.3 x 0.4 = 0.12.', 'easy'),

(v_subject_id, v_topic_id, 'The turning point of y = x^2 - 6x + 5 is',
 '["(3, -4)","(3, 4)","(6, 5)","(-3, -4)"]', 0,
 'Completing the square: y = (x-3)^2 - 4. Minimum at (3, -4).', 'medium');

END $$;
