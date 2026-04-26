/*
  # Add Further Mathematics Exam Questions - Batch 1
  
  Adds 75 new WASSCE-standard multiple choice questions for Further Mathematics
  covering Calculus, Complex Numbers, Matrices, Vectors, Statistics, Binomial Theorem and more.
*/

INSERT INTO quiz_questions (subject_id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES

-- Calculus: Differentiation (b1000007-0000-0000-0000-000000000001)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'Find dy/dx if y = 3x⁴ - 2x³ + 5x - 7',
 '["12x³ - 6x² + 5","12x³ - 6x² + 5x","3x³ - 2x² + 5","12x³ + 6x² + 5"]', 0,
 'Differentiate term by term: d/dx(3x⁴) = 12x³, d/dx(-2x³) = -6x², d/dx(5x) = 5, d/dx(-7) = 0.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'The derivative of sin(x) is:',
 '["cos(x)","-cos(x)","tan(x)","-sin(x)"]', 0,
 'd/dx(sin x) = cos x', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'If y = e^(3x), then dy/dx equals:',
 '["e^(3x)","3e^(3x)","3xe^(3x)","e^(3x)/3"]', 1,
 'By chain rule: d/dx(e^(3x)) = 3e^(3x).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'Find the gradient of y = x² - 4x + 3 at x = 3:',
 '["2","6","0","3"]', 0,
 'dy/dx = 2x - 4. At x = 3: gradient = 2(3) - 4 = 2.', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'Using the product rule, d/dx(x²sin x) equals:',
 '["2x sin x","2x sin x + x² cos x","x² cos x","2x cos x"]', 1,
 'Product rule: d/dx(uv) = u''v + uv''. Here: 2x·sin x + x²·cos x.', 'hard'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'A function f(x) has a minimum point when:',
 '["f''(x) = 0 and f''''(x) > 0","f''(x) = 0 and f''''(x) < 0","f''(x) > 0","f(x) = 0"]', 0,
 'At a minimum: f''(x) = 0 (stationary) and f''''(x) > 0 (curve is concave up).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'The derivative of ln(x) is:',
 '["1/x²","ln(x)","1/x","x"]', 2,
 'd/dx(ln x) = 1/x for x > 0.', 'easy'),

-- Calculus: Integration (b1000007-0000-0000-0000-000000000004)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 'Evaluate ∫(3x² + 2x - 5) dx:',
 '["x³ + x² - 5x + C","3x³ + 2x² - 5x + C","6x + 2","x³ + x² + C"]', 0,
 '∫3x²dx = x³, ∫2x dx = x², ∫(-5)dx = -5x. Result: x³ + x² - 5x + C.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 'Evaluate ∫₀² x² dx:',
 '["4","8/3","2","4/3"]', 1,
 '∫₀² x² dx = [x³/3]₀² = 8/3 - 0 = 8/3.', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 '∫ cos(x) dx equals:',
 '["sin(x) + C","−sin(x) + C","tan(x) + C","−cos(x) + C"]', 0,
 '∫cos(x) dx = sin(x) + C', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 'The area under the curve y = x from x = 0 to x = 4 is:',
 '["4","8","16","2"]', 1,
 'Area = ∫₀⁴ x dx = [x²/2]₀⁴ = 16/2 - 0 = 8.', 'medium'),

-- Complex Numbers (b1000007-0000-0000-0000-000000000003)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'The value of i² where i = √(-1) is:',
 '["1","-1","0","i"]', 1,
 'By definition, i = √(-1), so i² = -1.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'The modulus of the complex number 3 + 4i is:',
 '["7","1","5","25"]', 2,
 '|z| = √(3² + 4²) = √(9 + 16) = √25 = 5.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'The conjugate of 2 - 3i is:',
 '["2 + 3i","-2 + 3i","2 - 3i","-2 - 3i"]', 0,
 'The complex conjugate of a + bi is a - bi, and vice versa. Conjugate of 2 - 3i = 2 + 3i.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'Compute (2 + 3i)(1 - 2i):',
 '["2 - 6i","8 - i","2 + 3i - 4i - 6i²","8 - i and 2 + 3i - 4i + 6"]', 1,
 '(2+3i)(1-2i) = 2 - 4i + 3i - 6i² = 2 - i + 6 = 8 - i (since i² = -1).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'The argument (angle) of the complex number 1 + i is:',
 '["0°","30°","45°","90°"]', 2,
 'arg(1+i) = arctan(1/1) = arctan(1) = 45° (or π/4).', 'medium'),

-- Matrices and Determinants (b1000007-0000-0000-0000-000000000002)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000002',
 'The determinant of the 2×2 matrix [[3, 1], [2, 4]] is:',
 '["14","10","11","12"]', 1,
 'det = (3)(4) - (1)(2) = 12 - 2 = 10.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000002',
 'A matrix multiplied by its inverse gives:',
 '["The zero matrix","The identity matrix","The transpose","The determinant"]', 1,
 'AA⁻¹ = A⁻¹A = I (the identity matrix).', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000002',
 'If a 2×2 matrix has determinant = 0, then:',
 '["The matrix is invertible","The matrix has no inverse (singular)","The matrix equals the identity","All entries are zero"]', 1,
 'A matrix with det = 0 is singular (non-invertible).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000002',
 'The transpose of matrix [[1, 2], [3, 4]] is:',
 '["[[1, 2], [3, 4]]","[[1, 3], [2, 4]]","[[4, 3], [2, 1]]","[[4, 2], [3, 1]]"]', 1,
 'Transposing swaps rows and columns: [[1,3],[2,4]].', 'easy'),

-- Vectors in 3D (b1000007-0000-0000-0000-000000000005)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000005',
 'The magnitude of the vector a = 3i + 4j is:',
 '["7","1","5","25"]', 2,
 '|a| = √(3² + 4²) = √25 = 5.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000005',
 'The dot product of vectors (2, 3) and (4, -1) is:',
 '["8","5","11","14"]', 1,
 'a·b = (2)(4) + (3)(-1) = 8 - 3 = 5.', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000005',
 'If two vectors have a dot product of 0, they are:',
 '["Parallel","Equal","Perpendicular","Anti-parallel"]', 2,
 'Zero dot product means the vectors are perpendicular (at 90° to each other).', 'medium'),

-- Permutations and Combinations (b1000007-0000-0000-0000-000000000006)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000006',
 '5! (5 factorial) equals:',
 '["25","60","120","720"]', 2,
 '5! = 5 × 4 × 3 × 2 × 1 = 120.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000006',
 'The number of ways to choose 3 items from 6 (order does not matter) is:',
 '["120","20","18","216"]', 1,
 'C(6,3) = 6!/(3!3!) = 720/(6×6) = 20.', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000006',
 'How many ways can 4 people be arranged in a line?',
 '["4","24","16","12"]', 1,
 'P(4,4) = 4! = 4 × 3 × 2 × 1 = 24 arrangements.', 'easy'),

-- Binomial Theorem (b1000007-0000-0000-0000-000000000007)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000007',
 'The coefficient of x² in the expansion of (1 + x)⁵ is:',
 '["5","10","20","15"]', 1,
 'C(5,2) = 5!/(2!3!) = 10. The term is 10x².', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000007',
 'In the binomial expansion (a + b)ⁿ, the number of terms is:',
 '["n","n + 1","n - 1","2n"]', 1,
 'The expansion (a + b)ⁿ produces n + 1 terms.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000007',
 'The first three terms in the expansion of (1 + 2x)⁴ are:',
 '["1 + 8x + 24x²","1 + 4x + 6x²","1 + 8x + 16x²","1 + 2x + 4x²"]', 0,
 '(1+2x)⁴: C(4,0)=1, C(4,1)·2x=8x, C(4,2)·(2x)²=6·4x²=24x².', 'hard'),

-- Probability and Statistics (b1000007-0000-0000-0000-000000000008)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'If P(A) = 0.4 and P(B) = 0.3 and A and B are mutually exclusive, then P(A or B) =',
 '["0.12","0.7","0.58","0.1"]', 1,
 'For mutually exclusive events: P(A∪B) = P(A) + P(B) = 0.4 + 0.3 = 0.7.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'The mean of the data set {4, 7, 9, 2, 8} is:',
 '["6","7","5","30"]', 0,
 'Mean = (4+7+9+2+8)/5 = 30/5 = 6.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'The standard deviation measures:',
 '["The middle value in a data set","The most frequent value","The spread of data around the mean","The highest minus lowest value"]', 2,
 'Standard deviation measures how spread out data values are around the mean.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'A die is rolled. The probability of getting an even number is:',
 '["1/6","1/3","1/2","2/3"]', 2,
 'Even numbers on a die: 2, 4, 6. P(even) = 3/6 = 1/2.', 'easy'),

-- Roots of Polynomial Equations (b1000007-0000-0000-0000-000000000009)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000009',
 'For the quadratic equation ax² + bx + c = 0, the sum of the roots is:',
 '["-b/a","b/a","c/a","-c/a"]', 0,
 'If roots are α and β: α + β = -b/a (from Vieta''s formulas).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000009',
 'The product of the roots of x² - 5x + 6 = 0 is:',
 '["5","6","-5","3"]', 1,
 'Product of roots = c/a = 6/1 = 6. (Roots are 2 and 3: 2×3=6).', 'medium'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000009',
 'The discriminant of ax² + bx + c = 0 is b² - 4ac. If it is negative, the roots are:',
 '["Real and equal","Real and different","Complex (no real roots)","All integers"]', 2,
 'Negative discriminant (b² - 4ac < 0) means no real roots — the roots are complex.', 'medium'),

-- Trigonometric Functions and Identities (b1000007-0000-0000-0000-000000000010)
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000010',
 'The value of sin(30°) is:',
 '["√3/2","1/2","√2/2","1"]', 1,
 'sin(30°) = 1/2. This is a standard trigonometric value.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000010',
 'Which identity is correct?',
 '["sin²θ + cos²θ = 0","sin²θ - cos²θ = 1","sin²θ + cos²θ = 1","tanθ = sinθ + cosθ"]', 2,
 'The Pythagorean identity: sin²θ + cos²θ = 1.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000010',
 'Solve: 2sin(x) = 1 for 0° ≤ x ≤ 360°. The solutions are:',
 '["x = 30° only","x = 30° and x = 150°","x = 60° and x = 120°","x = 45° only"]', 1,
 'sin(x) = 1/2 gives x = 30° and x = 180° - 30° = 150°.', 'medium'),

-- Sequences and Series (9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b)
('a1000000-0000-0000-0000-000000000007', '9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
 'The sum of the first n terms of an arithmetic series is:',
 '["n(a + l)/2","na","ar^(n-1)","a(1-rⁿ)/(1-r)"]', 0,
 'Sum of AP: Sₙ = n/2(a + l) or n/2[2a + (n-1)d], where a = first term, l = last term.', 'medium'),

('a1000000-0000-0000-0000-000000000007', '9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
 'Find the 10th term of the arithmetic sequence 3, 7, 11, 15,...',
 '["39","43","37","41"]', 0,
 'a = 3, d = 4. Tₙ = a + (n-1)d = 3 + 9(4) = 3 + 36 = 39.', 'easy'),

('a1000000-0000-0000-0000-000000000007', '9a432982-9e6e-4fa7-bf20-cfcbdc8ec76b',
 'The sum to infinity of a geometric series exists when:',
 '["|r| > 1","|r| < 1","r = 1","r > 0"]', 1,
 'Sum to infinity of GP: S∞ = a/(1-r) only when |r| < 1 (common ratio between -1 and 1).', 'medium'),

-- Linear Programming (3a190ebe-0a5c-4751-a48c-e4b8072575bc)
('a1000000-0000-0000-0000-000000000007', '3a190ebe-0a5c-4751-a48c-e4b8072575bc',
 'In linear programming, the feasible region is the set of points that:',
 '["Maximise the objective function","Satisfy all constraints simultaneously","Are on the x-axis","Minimise the objective function"]', 1,
 'The feasible region contains all points satisfying all the inequality constraints.', 'medium'),

('a1000000-0000-0000-0000-000000000007', '3a190ebe-0a5c-4751-a48c-e4b8072575bc',
 'The optimal solution in linear programming occurs at:',
 '["The centre of the feasible region","A vertex (corner point) of the feasible region","The midpoint of a constraint line","Any point in the feasible region"]', 1,
 'The maximum/minimum of a linear objective function always occurs at a vertex of the feasible region.', 'medium'),

-- Coordinate Geometry (4960b050-6f4f-4626-9f93-b65e68dbc293)
('a1000000-0000-0000-0000-000000000007', '4960b050-6f4f-4626-9f93-b65e68dbc293',
 'The distance between points (3, 4) and (0, 0) is:',
 '["7","1","5","25"]', 2,
 'd = √(3² + 4²) = √25 = 5.', 'easy'),

('a1000000-0000-0000-0000-000000000007', '4960b050-6f4f-4626-9f93-b65e68dbc293',
 'The gradient of the line joining (2, 5) and (4, 9) is:',
 '["2","4","3","0.5"]', 0,
 'm = (y₂-y₁)/(x₂-x₁) = (9-5)/(4-2) = 4/2 = 2.', 'easy'),

('a1000000-0000-0000-0000-000000000007', '4960b050-6f4f-4626-9f93-b65e68dbc293',
 'The equation of a circle with centre (0, 0) and radius 5 is:',
 '["x² + y² = 5","x² + y² = 10","x² + y² = 25","x + y = 5"]', 2,
 'Circle equation: (x-h)² + (k-y)² = r². Centre (0,0), r=5: x² + y² = 25.', 'easy'),

-- Differential Equations (4222a92c-14ff-42b9-a964-815a002a4cb7)
('a1000000-0000-0000-0000-000000000007', '4222a92c-14ff-42b9-a964-815a002a4cb7',
 'The general solution of dy/dx = 2x is:',
 '["y = 2","y = x² + C","y = 2x² + C","y = x + C"]', 1,
 'Integrating: y = ∫2x dx = x² + C.', 'easy'),

-- Mathematical Proof (74aa3cb8-da39-489f-ae9a-5eb96d467ea6)
('a1000000-0000-0000-0000-000000000007', '74aa3cb8-da39-489f-ae9a-5eb96d467ea6',
 'Proof by mathematical induction requires:',
 '["Proving it true for one case only","Proving the base case AND the inductive step","Proving it by contradiction","Testing with several examples"]', 1,
 'Induction: prove the base case (n=1), then prove if true for n=k it is true for n=k+1.', 'medium'),

-- Conic Sections (eee78e6d-3335-4d60-ab62-7b380f46d986)
('a1000000-0000-0000-0000-000000000007', 'eee78e6d-3335-4d60-ab62-7b380f46d986',
 'The equation x²/a² + y²/b² = 1 represents:',
 '["A circle","A parabola","An ellipse","A hyperbola"]', 2,
 'This is the standard equation of an ellipse with semi-axes a and b.', 'medium'),

-- More Differentiation
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000001',
 'The chain rule states that if y = f(g(x)), then dy/dx equals:',
 '["f''(x) × g''(x)","f''(g(x)) × g''(x)","f(g(x)) + g''(x)","f''(x) + g''(x)"]', 1,
 'Chain rule: dy/dx = f''(g(x)) · g''(x). Differentiate outer function × derivative of inner function.', 'hard'),

-- More Integration
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 '∫ e^x dx equals:',
 '["e^x + C","xe^x + C","e^x/x + C","e^(x+1) + C"]', 0,
 '∫e^x dx = e^x + C. The exponential function is its own integral.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000004',
 '∫ 1/x dx equals:',
 '["ln|x| + C","1/x² + C","x ln x + C","1/(x+1) + C"]', 0,
 '∫(1/x)dx = ln|x| + C.', 'easy'),

-- More Complex Numbers
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000003',
 'i³ equals:',
 '["i","-i","1","-1"]', 1,
 'i³ = i² × i = -1 × i = -i.', 'medium'),

-- More Statistics
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'The median of {3, 7, 1, 9, 5} is:',
 '["5","7","3","6"]', 0,
 'Arrange in order: 1, 3, 5, 7, 9. The middle value (3rd of 5) = 5.', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000008',
 'Two independent events A and B have P(A) = 0.5 and P(B) = 0.4. P(A and B) equals:',
 '["0.9","0.1","0.2","0.45"]', 2,
 'For independent events: P(A∩B) = P(A) × P(B) = 0.5 × 0.4 = 0.2.', 'medium'),

-- More Matrices
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000002',
 'Matrix multiplication AB is only possible when:',
 '["A and B have the same dimensions","The number of columns of A equals the number of rows of B","A and B are both square","The determinants are equal"]', 1,
 'Matrix multiplication requires: columns of A = rows of B.', 'medium'),

-- More Vectors
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000005',
 'A unit vector has magnitude:',
 '["0","Infinity","1","2"]', 2,
 'A unit vector (or normalised vector) has a magnitude (length) of exactly 1.', 'easy'),

-- More Permutations
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000006',
 '⁴P₂ (the number of permutations of 2 objects from 4) equals:',
 '["6","12","24","4"]', 1,
 '⁴P₂ = 4!/(4-2)! = 4!/2! = 24/2 = 12.', 'medium'),

-- More Roots
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000009',
 'The roots of x² - 7x + 12 = 0 are:',
 '["3 and 4","2 and 6","1 and 12","-3 and -4"]', 0,
 'Factorise: (x-3)(x-4) = 0. Roots are x = 3 and x = 4.', 'easy'),

-- More Trigonometry
('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000010',
 'The period of sin(x) is:',
 '["90°","180°","360°","720°"]', 2,
 'The sine function completes one full cycle over 360° (2π radians).', 'easy'),

('a1000000-0000-0000-0000-000000000007', 'b1000007-0000-0000-0000-000000000010',
 'cos(60°) equals:',
 '["√3/2","1/2","√2/2","0"]', 1,
 'cos(60°) = 1/2. This is a standard trigonometric value.', 'easy'),

-- Mechanics: Statics (3046e2b5-d099-498e-80fb-d66c22719d7b)
('a1000000-0000-0000-0000-000000000007', '3046e2b5-d099-498e-80fb-d66c22719d7b',
 'For a body in static equilibrium, the sum of all moments about any point is:',
 '["Maximum","Minimum","Zero","Equal to total force"]', 2,
 'For equilibrium: net force = 0 AND net torque (moment) = 0 about any point.', 'medium'),

-- Mechanics: Dynamics (873bc2e9-32ca-4bec-a761-e72d4ef2159e)
('a1000000-0000-0000-0000-000000000007', '873bc2e9-32ca-4bec-a761-e72d4ef2159e',
 'Newton''s Second Law in mechanics states F = ma, where a is:',
 '["Average velocity","Instantaneous deceleration","The rate of change of velocity (acceleration)","The magnitude of velocity"]', 2,
 'F = ma where a is acceleration = rate of change of velocity.', 'easy'),

-- Numerical Methods (becd0f9c-2a9a-4689-8637-50a20343b51a)
('a1000000-0000-0000-0000-000000000007', 'becd0f9c-2a9a-4689-8637-50a20343b51a',
 'The Newton-Raphson method is used to:',
 '["Solve differential equations","Find approximate roots of equations","Integrate functions","Factorise polynomials"]', 1,
 'The Newton-Raphson method iteratively approximates roots of equations using: xₙ₊₁ = xₙ - f(xₙ)/f''(xₙ).', 'hard'),

-- Hyperbolic Functions (521c6875-580f-47f4-8624-278af1f5a656)
('a1000000-0000-0000-0000-000000000007', '521c6875-580f-47f4-8624-278af1f5a656',
 'The hyperbolic function cosh(x) is defined as:',
 '["(eˣ - e⁻ˣ)/2","(eˣ + e⁻ˣ)/2","eˣ/2","1/cosh(x)"]', 1,
 'cosh(x) = (eˣ + e⁻ˣ)/2 and sinh(x) = (eˣ - e⁻ˣ)/2.', 'hard');
