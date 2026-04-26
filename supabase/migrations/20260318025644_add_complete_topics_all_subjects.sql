/*
  # Add Complete Topics for All 7 WASSCE Subjects

  ## Summary
  Expands the platform from 3 topics per subject to ~10 topics per subject,
  covering the full WASSCE syllabus for all 7 core subjects.

  ## Subjects Expanded
  1. Mathematics: 7 new topics
  2. Physics: 7 new topics
  3. Chemistry: 7 new topics
  4. Biology: 7 new topics
  5. Geography: 7 new topics
  6. English Language: 7 new topics
  7. Further Mathematics: 7 new topics

  ## Notes
  - All inserts use ON CONFLICT (id) DO NOTHING for safety
*/

-- =============================================
-- MATHEMATICS: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000001-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000001', 'Numbers: Indices and Logarithms',
  'Laws of indices, logarithms and their applications',
  E'## Numbers: Indices and Logarithms\n\n### Laws of Indices\nFor any base a (a != 0):\n- **a^m x a^n = a^(m+n)**\n- **a^m / a^n = a^(m-n)**\n- **(a^m)^n = a^mn**\n- **a^0 = 1**\n- **a^(-n) = 1/a^n**\n- **a^(1/n) = n-th root of a**\n\n**Example:** Simplify 2^5 x 2^(-2) = 2^(5-2) = 2^3 = **8**\n\n### Logarithms\nIf a^x = b, then **log_a(b) = x**\n\n**Common logarithm:** log10 or just log\n**Natural logarithm:** ln\n\n### Laws of Logarithms\n- **log(AB) = log A + log B**\n- **log(A/B) = log A - log B**\n- **log(A^n) = n log A**\n- **log_a(a) = 1**\n- **log_a(1) = 0**\n\n### Solving Logarithmic Equations\n**Example:** Solve log_2(x) = 5 => x = 2^5 = **32**\n\n**Example:** Solve 3^x = 81 => x log 3 = log 81 => x = 4\n\n### Change of Base Formula\nlog_b(a) = log(a) / log(b)',
  4, 30),

  ('b1000001-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000001', 'Trigonometry',
  'Trigonometric ratios, identities, graphs and equations',
  E'## Trigonometry\n\n### Trigonometric Ratios (Right Triangle)\n- **sin theta = opposite / hypotenuse**\n- **cos theta = adjacent / hypotenuse**\n- **tan theta = opposite / adjacent**\n\n**Mnemonic:** SOH-CAH-TOA\n\n### Special Angles\n| Angle | sin | cos | tan |\n|-------|-----|-----|-----|\n| 0 | 0 | 1 | 0 |\n| 30 | 1/2 | sqrt(3)/2 | 1/sqrt(3) |\n| 45 | 1/sqrt(2) | 1/sqrt(2) | 1 |\n| 60 | sqrt(3)/2 | 1/2 | sqrt(3) |\n| 90 | 1 | 0 | undefined |\n\n### CAST Diagram\n- Q1 (0-90): All positive\n- Q2 (90-180): Sin positive\n- Q3 (180-270): Tan positive\n- Q4 (270-360): Cos positive\n\n### Fundamental Identities\n- **sin^2(theta) + cos^2(theta) = 1**\n- **tan(theta) = sin(theta) / cos(theta)**\n\n### Sine and Cosine Rules\n**Sine Rule:** a/sin A = b/sin B = c/sin C\n**Cosine Rule:** a^2 = b^2 + c^2 - 2bc cos A\n\n**Area of triangle:** (1/2) ab sin C',
  5, 35),

  ('b1000001-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000001', 'Mensuration',
  'Perimeter, area, surface area and volume of shapes',
  E'## Mensuration\n\n### 2D Shapes\n| Shape | Area | Perimeter |\n|-------|------|-----------|\n| Square (a) | a^2 | 4a |\n| Rectangle (l x w) | lw | 2(l+w) |\n| Triangle | (1/2)bh | a+b+c |\n| Circle | pi*r^2 | 2*pi*r |\n| Trapezium | (1/2)(a+b)h | sum of sides |\n\n### 3D Shapes\n| Shape | Volume | Surface Area |\n|-------|--------|--------------|\n| Cube (a) | a^3 | 6a^2 |\n| Cuboid (l x w x h) | lwh | 2(lw+lh+wh) |\n| Cylinder (r,h) | pi*r^2*h | 2*pi*r^2 + 2*pi*r*h |\n| Cone (r,h,l) | (1/3)*pi*r^2*h | pi*r^2 + pi*r*l |\n| Sphere (r) | (4/3)*pi*r^3 | 4*pi*r^2 |\n\n### Similar Shapes\nIf linear scale factor = k:\n- Area scale factor = k^2\n- Volume scale factor = k^3\n\n### Arc and Sector\n- Arc length = (theta/360) x 2*pi*r\n- Sector area = (theta/360) x pi*r^2\n- Segment area = Sector area - Triangle area',
  6, 30),

  ('b1000001-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000001', 'Coordinate Geometry',
  'Gradient, distance, midpoint, equation of a line and circle',
  E'## Coordinate Geometry\n\n### Distance and Midpoint\nGiven A(x1,y1) and B(x2,y2):\n- **Distance AB = sqrt[(x2-x1)^2 + (y2-y1)^2]**\n- **Midpoint M = ((x1+x2)/2, (y1+y2)/2)**\n\n### Gradient (Slope)\n- **m = (y2-y1) / (x2-x1)**\n- Parallel lines: same gradient (m1 = m2)\n- Perpendicular lines: m1 x m2 = -1\n\n### Equation of a Line\n- **Slope-intercept:** y = mx + c\n- **Point-slope:** y - y1 = m(x - x1)\n- **General form:** ax + by + c = 0\n\n### Equation of a Circle\n**Standard form:** (x - a)^2 + (y - b)^2 = r^2\nCentre (a, b), radius r\n\n**General form:** x^2 + y^2 + 2gx + 2fy + c = 0\nCentre (-g, -f), radius = sqrt(g^2 + f^2 - c)',
  7, 30),

  ('b1000001-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000001', 'Sequences and Series',
  'Arithmetic and geometric progressions, sum formulas',
  E'## Sequences and Series\n\n### Arithmetic Progression (AP)\nConstant difference d between consecutive terms.\n- **nth term: T_n = a + (n-1)d**\n- **Sum of n terms: S_n = n/2 [2a + (n-1)d]**\n\nWhere a = first term, d = common difference\n\n**Example:** AP: 3, 7, 11, 15... Find T_10\na=3, d=4, T_10 = 3 + 9 x 4 = **39**\n\n### Geometric Progression (GP)\nConstant ratio r between consecutive terms.\n- **nth term: T_n = a*r^(n-1)**\n- **Sum of n terms: S_n = a(r^n - 1)/(r-1) for r != 1**\n- **Sum to infinity: S = a/(1-r) for |r| < 1**\n\n**Example:** GP: 2, 6, 18, 54... Find T_5\na=2, r=3, T_5 = 2 x 3^4 = **162**\n\n### Sigma Notation\nSigma = sum. Example: sum from i=1 to 5 of i = 1+2+3+4+5 = 15\n\n### Useful Results\n- Sum of n = n(n+1)/2\n- Sum of n^2 = n(n+1)(2n+1)/6\n- Sum of n^3 = [n(n+1)/2]^2',
  8, 30),

  ('b1000001-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000001', 'Vectors',
  'Vector addition, subtraction, dot product and applications',
  E'## Vectors\n\n### Definition\nA vector has both **magnitude** and **direction**.\nRepresented as bold a, or column vector (x, y)\n\n### Vector Operations\nGiven a = (a1, a2) and b = (b1, b2):\n- **Addition:** a + b = (a1+b1, a2+b2)\n- **Subtraction:** a - b = (a1-b1, a2-b2)\n- **Scalar multiple:** ka = (ka1, ka2)\n\n### Magnitude\n|a| = sqrt(a1^2 + a2^2)\n\n**Unit vector:** a_hat = a / |a|\n\n### Position Vectors\nIf A has position vector **a** and B has position vector **b**:\n- **AB = b - a**\n\n### Triangle and Parallelogram Law\n**Triangle Law:** a + b = c (head-to-tail)\n**Parallelogram Law:** Resultant is the diagonal\n\n### Dot Product (Scalar Product)\na . b = a1*b1 + a2*b2 = |a||b|cos(theta)\n\nIf a . b = 0, vectors are **perpendicular**.',
  9, 25),

  ('b1000001-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000001', 'Number Bases and Sets',
  'Number bases conversion, set theory and Venn diagrams',
  E'## Number Bases and Sets\n\n### Number Bases\n**Converting from base n to base 10:** Multiply each digit by its place value.\n\n**Example:** 1101 in base 2 to base 10\n= 1x2^3 + 1x2^2 + 0x2^1 + 1x2^0 = 8 + 4 + 0 + 1 = **13**\n\n### Common Bases\n- Binary (base 2): digits 0, 1\n- Octal (base 8): digits 0-7\n- Hexadecimal (base 16): digits 0-9, A-F\n\n### Set Theory\n- **Set:** A collection of distinct objects\n- **Union (A union B):** Elements in A or B or both\n- **Intersection (A intersect B):** Elements in both A and B\n- **Complement:** Elements NOT in A\n- **Subset:** A is subset of B if every element of A is in B\n\n### Venn Diagrams\nUsed to visualize set relationships.\n\n**Key formula:**\nn(A union B) = n(A) + n(B) - n(A intersect B)\n\n**Example:** If n(A)=12, n(B)=10, n(A intersect B)=4, find n(A union B)\n= 12 + 10 - 4 = **18**',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- PHYSICS: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000003-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000003', 'Heat and Temperature',
  'Thermometry, heat transfer, specific heat capacity and latent heat',
  E'## Heat and Temperature\n\n### Temperature Scales\n- **Celsius (C):** 0C = freezing, 100C = boiling water\n- **Kelvin (K):** Absolute scale. K = C + 273\n- **Absolute zero:** -273C = 0 K (no molecular motion)\n\n### Heat Transfer\n1. **Conduction:** Transfer through solids via vibrating atoms. Metals are good conductors.\n2. **Convection:** Transfer through fluids via currents (hot fluid rises, cold sinks).\n3. **Radiation:** Transfer by electromagnetic waves; no medium needed. Dark, matt surfaces absorb/emit best.\n\n### Specific Heat Capacity (c)\n**Q = mc(delta T)**\n- Q = heat energy (J)\n- m = mass (kg)\n- c = specific heat capacity (J/kg C)\n- delta T = temperature change\n\nWater: c = 4200 J/kg C (high value, good coolant)\n\n### Latent Heat\nHeat absorbed/released during change of state (no temperature change).\n**Q = mL**\n- L = specific latent heat (J/kg)\n\n**Latent heat of fusion:** Solid to liquid\n**Latent heat of vaporisation:** Liquid to gas (higher value)',
  4, 30),

  ('b1000003-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000003', 'Light and Optics',
  'Reflection, refraction, lenses, mirrors and optical instruments',
  E'## Light and Optics\n\n### Properties of Light\n- Travels in straight lines\n- Speed in vacuum: 3 x 10^8 m/s\n- Can be reflected, refracted, diffracted, and dispersed\n\n### Reflection\n**Law of Reflection:** Angle of incidence = Angle of reflection (both from normal)\n\n**Plane mirror images:** Virtual, upright, same size, laterally inverted\n\n### Curved Mirrors\n- **Concave (converging):** Reflects inward; used in headlights, telescopes\n- **Convex (diverging):** Wider field of view (car rear-view mirrors)\n\n**Mirror formula:** 1/f = 1/u + 1/v\n**Magnification:** m = v/u\n\n### Refraction\nBending of light when passing between media.\n**Snell''s Law:** n1 sin(theta1) = n2 sin(theta2)\n\n**Refractive index:** n = speed in vacuum / speed in medium\n\n**Total Internal Reflection:** Occurs when angle > critical angle. Used in optical fibres.\n\n### Lenses\n- **Convex (converging):** Thicker in middle\n- **Concave (diverging):** Thinner in middle\n**Lens formula:** 1/f = 1/u + 1/v',
  5, 30),

  ('b1000003-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000003', 'Magnetism and Electromagnetism',
  'Magnetic fields, electromagnetic induction and transformers',
  E'## Magnetism and Electromagnetism\n\n### Magnets\n- All magnets have a North and South pole\n- Like poles repel; unlike poles attract\n- Magnetic field lines go from N to S outside the magnet\n\n### Magnetic Effect of Current\nA current-carrying conductor produces a magnetic field.\n**Right-Hand Rule:** Thumb points in direction of current; fingers curl in direction of field\n\n**Solenoid:** A coil of wire acts like a bar magnet when current flows.\n\n### Force on a Current-Carrying Conductor\n**F = BIL sin(theta)**\n- B = magnetic flux density (Tesla, T)\n- I = current (A)\n- L = length of conductor in field (m)\n\n**Fleming''s Left-Hand Rule:** Thumb=Force, Index=Field, Middle=Current\n\n### Electromagnetic Induction\nAn EMF is induced when magnetic flux through a conductor changes.\n**Lenz''s Law:** Induced current opposes the change causing it\n\n### Transformers\n- **Step-up:** Increases voltage (more turns on secondary)\n- **Step-down:** Decreases voltage (fewer turns on secondary)\n\n**Turns ratio:** Vs/Vp = Ns/Np\n**Power:** Vp x Ip = Vs x Is (ideal transformer)',
  6, 30),

  ('b1000003-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000003', 'Work, Energy and Power',
  'Types of energy, conservation of energy, efficiency and machines',
  E'## Work, Energy and Power\n\n### Work\n**W = Fd cos(theta)**\n- W = work done (Joules, J)\n- F = force (N)\n- d = displacement (m)\n\nWork is only done if displacement occurs in the direction of force.\n\n### Energy Types\n- **Kinetic Energy (KE):** KE = (1/2)mv^2\n- **Gravitational PE:** GPE = mgh\n- **Elastic PE:** Stored in springs\n- **Chemical, Electrical, Thermal, Nuclear** energy\n\n### Conservation of Energy\nEnergy cannot be created or destroyed; only converted.\n\n**Example:** Ball dropped from height h:\nGPE = KE => mgh = (1/2)mv^2 => v = sqrt(2gh)\n\n### Power\n**P = W/t = Fv**\n- Power in Watts (W); 1 W = 1 J/s\n\n**Efficiency = (Useful output / Total input) x 100%**\n\n### Simple Machines\n- Lever, pulley, inclined plane, wheel and axle\n- **Mechanical Advantage (MA) = Load / Effort**\n- **Velocity Ratio (VR) = Distance moved by effort / Distance moved by load**\n- **Efficiency = MA/VR x 100%**',
  7, 30),

  ('b1000003-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000003', 'Pressure and Fluids',
  'Pressure in solids and fluids, Archimedes principle, atmospheric pressure',
  E'## Pressure and Fluids\n\n### Pressure in Solids\n**P = F/A**\n- P = pressure (Pa = N/m^2)\n- F = force (N)\n- A = area (m^2)\n\nLarge area -> small pressure (snowshoes, camel feet)\nSmall area -> large pressure (knife edge, needle)\n\n### Pressure in Fluids\n**P = rho x g x h**\n- rho = density (kg/m^3)\n- g = 10 N/kg\n- h = depth (m)\n\nPressure increases with depth. Acts in all directions.\n\n### Pascal''s Principle\nPressure applied to an enclosed fluid is transmitted equally throughout.\n**Application:** Hydraulic press/brakes\n\n### Archimedes'' Principle\nAn object immersed in fluid experiences an upward buoyant force equal to the weight of fluid displaced.\n\n**Upthrust = rho_fluid x V_submerged x g**\n\nAn object floats when upthrust = weight.\n\n### Atmospheric Pressure\n**Standard atmospheric pressure = 101,325 Pa (approx 760 mmHg)**\nMeasured using a barometer.\nDecreases with altitude.',
  8, 25),

  ('b1000003-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000003', 'Radioactivity and Nuclear Physics',
  'Radioactive decay, nuclear reactions, half-life and applications',
  E'## Radioactivity and Nuclear Physics\n\n### Types of Radiation\n| Property | Alpha | Beta | Gamma |\n|----------|-------|------|-------|\n| Nature | 4He nucleus | Electron | EM wave |\n| Charge | +2 | -1 | 0 |\n| Penetration | Low (paper) | Medium (aluminium) | High (lead/concrete) |\n| Ionisation | High | Medium | Low |\n\n### Radioactive Decay\n**Alpha decay:** 238U -> 234Th + 4He\n**Beta decay:** n -> p + electron\n**Gamma emission:** No change in mass or atomic number; just energy\n\n### Half-Life\nTime for activity (or number of unstable nuclei) to halve.\n\n**N_t = N_0 x (1/2)^(t / t_half)**\n\n**Example:** Half-life = 2 years. After 8 years, fraction remaining?\nNumber of half-lives = 8/2 = 4. Fraction = (1/2)^4 = 1/16\n\n### Nuclear Reactions\n- **Fission:** Heavy nucleus splits -> releases huge energy (nuclear power)\n- **Fusion:** Light nuclei combine -> releases even more energy (stars)\n\n### Applications and Hazards\n**Beneficial:** Cancer treatment, medical tracers, smoke detectors, carbon dating, nuclear power\n**Hazards:** Ionising radiation damages cells/DNA; causes cancer and genetic mutations',
  9, 30),

  ('b1000003-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000003', 'Motion and Graphs',
  'Distance-time, velocity-time graphs and projectile motion',
  E'## Motion and Graphs\n\n### Key Definitions\n- **Distance:** Total path length (scalar)\n- **Displacement:** Straight-line distance with direction (vector)\n- **Speed:** Distance / time (scalar)\n- **Velocity:** Displacement / time (vector)\n- **Acceleration:** Change in velocity / time\n\n### Distance-Time Graphs\n- **Slope = speed**\n- Horizontal line -> object at rest\n- Straight line -> constant speed\n- Curved line -> changing speed\n\n### Velocity-Time Graphs\n- **Slope = acceleration**\n- **Area under graph = displacement**\n- Horizontal line -> constant velocity\n- Straight line up -> uniform acceleration\n\n### SUVAT Equations\n- v = u + at\n- s = ut + (1/2)at^2\n- v^2 = u^2 + 2as\n- s = (1/2)(u+v)t\n\n### Projectile Motion\nAn object launched at an angle:\n- **Horizontal:** Constant velocity. x = u_x x t\n- **Vertical:** Affected by gravity. y = u_y*t - (1/2)g*t^2\n\nAt maximum height, vertical velocity = 0.',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- CHEMISTRY: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000004-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000004', 'Organic Chemistry',
  'Hydrocarbons, functional groups, reactions of organic compounds',
  E'## Organic Chemistry\n\n### Introduction\nOrganic chemistry studies carbon-containing compounds.\nCarbon forms 4 covalent bonds and can bond to itself.\n\n### Alkanes (CnH(2n+2))\n- Single C-C bonds; saturated\n- Methane (CH4), Ethane (C2H6), Propane (C3H8), Butane (C4H10)\n- Undergo substitution reactions\n- Burns in oxygen (combustion)\n\n### Alkenes (CnH2n)\n- One C=C double bond; unsaturated\n- Ethene (C2H4), Propene (C3H6)\n- Undergo addition reactions\n- Test: Decolourise bromine water\n\n### Alkynes (CnH(2n-2))\n- One C triple-bond C; very unsaturated\n- Ethyne (C2H2)\n\n### Functional Groups\n| Group | Class | Example |\n|-------|-------|---------|\n| -OH | Alcohol | Ethanol |\n| -COOH | Carboxylic acid | Ethanoic acid |\n| -CHO | Aldehyde | Ethanal |\n| -CO- | Ketone | Propanone |\n| -NH2 | Amine | Methylamine |\n\n### Isomers\nCompounds with same molecular formula but different structural formulas.\nExample: Butane and methylpropane are both C4H10.',
  4, 35),

  ('b1000004-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000004', 'Electrochemistry',
  'Electrolysis, electrodes, electrode reactions and applications',
  E'## Electrochemistry\n\n### Electrolysis\nDecomposition of an ionic compound using electricity.\n\n**Requirements:**\n- Electrolyte (ionic compound dissolved or molten)\n- Electrodes (conductors)\n- Power supply (direct current)\n\n### Electrodes\n- **Cathode (-):** Cations migrate here; **reduction** occurs (gain electrons)\n- **Anode (+):** Anions migrate here; **oxidation** occurs (lose electrons)\n\n**Mnemonic:** OILRIG - Oxidation Is Loss, Reduction Is Gain\n\n### Electrolysis of Dilute H2SO4\n- Cathode: 2H+ + 2e- -> H2 (hydrogen gas)\n- Anode: 4OH- -> 2H2O + O2 + 4e- (oxygen gas)\n- Volume ratio H2:O2 = 2:1\n\n### Electrolysis of Brine (NaCl solution)\n- Cathode: H2 gas\n- Anode: Cl2 gas\n- Solution becomes NaOH (sodium hydroxide)\n**Industrial use:** Chlor-alkali industry\n\n### Electroplating\nDepositing a metal layer on an object.\n- Object = cathode\n- Plating metal = anode\n- Electrolyte = solution of metal salt\n\n### Faraday''s Laws\n1. Mass deposited is proportional to quantity of charge (Q = It)\n2. Mass deposited is proportional to molar mass and inversely proportional to charge on ion',
  5, 30),

  ('b1000004-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000004', 'Rates of Reaction and Equilibrium',
  'Factors affecting rates, collision theory and Le Chatelier principle',
  E'## Rates of Reaction and Equilibrium\n\n### Rate of Reaction\nHow fast products form or reactants are consumed.\n\n**Rate = Change in concentration / Time**\n\n### Factors Affecting Rate\n1. **Temperature:** Higher temperature -> more collisions with sufficient energy -> faster rate\n2. **Concentration:** Higher concentration -> more frequent collisions -> faster rate\n3. **Surface Area:** More surface area -> more collisions -> faster rate\n4. **Catalyst:** Lowers activation energy -> more successful collisions -> faster rate\n5. **Pressure (gases):** Higher pressure -> molecules closer -> more collisions\n\n### Collision Theory\nReaction occurs when particles collide with sufficient energy (at or above activation energy) and correct orientation.\n\n### Reversible Reactions and Equilibrium\nA <-> B + C reaches equilibrium when forward rate = reverse rate.\n\n### Le Chatelier''s Principle\nIf a system at equilibrium is disturbed, it shifts to oppose the change.\n\n| Change | Shift |\n|--------|-------|\n| Increase concentration of reactant | Forward |\n| Increase temperature | Towards endothermic direction |\n| Increase pressure | Towards fewer moles of gas |\n| Add catalyst | No shift (equilibrium reached faster) |\n\n### Haber Process\nN2 + 3H2 <-> 2NH3 (exothermic)\nConditions: 450C, 200 atm, iron catalyst',
  6, 30),

  ('b1000004-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000004', 'Oxidation and Reduction (Redox)',
  'Oxidation states, redox reactions, oxidising and reducing agents',
  E'## Oxidation and Reduction (Redox)\n\n### Definitions\n- **Oxidation:** Loss of electrons (OIL)\n- **Reduction:** Gain of electrons (RIG)\n- **OILRIG** - Oxidation Is Loss, Reduction Is Gain\n\n### In Terms of Oxygen/Hydrogen\n- Oxidation: gain of oxygen or loss of hydrogen\n- Reduction: loss of oxygen or gain of hydrogen\n\n### Oxidation Numbers (States)\nRules:\n- Uncombined element: 0\n- Monatomic ion: equals charge\n- O in compounds: usually -2\n- H in compounds: usually +1\n- Sum in compound = 0; in ion = ion charge\n\n**Example:** Find oxidation state of Mn in KMnO4\nK=+1, O=-2. +1 + Mn + 4(-2) = 0. Mn = **+7**\n\n### Oxidising and Reducing Agents\n- **Oxidising agent:** Causes oxidation; it gets reduced\n- **Reducing agent:** Causes reduction; it gets oxidised\n\nCommon oxidising agents: KMnO4, K2Cr2O7, Cl2, H2O2\nCommon reducing agents: Zn, Fe, H2, SO2\n\n### Half-Equations\nFor each half-reaction, balance atoms then charge (add electrons).\n\nExample: Fe2+ -> Fe3+ + e- (oxidation)',
  7, 25),

  ('b1000004-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000004', 'Metals and the Activity Series',
  'Properties of metals, reactivity series, extraction and corrosion',
  E'## Metals and the Activity Series\n\n### Properties of Metals\n- Good conductors of heat and electricity\n- Malleable and ductile\n- High melting/boiling points (except mercury)\n- Form positive ions (cations)\n- React with acids to form salt + hydrogen\n\n### Reactivity Series (Most to Least Reactive)\nK > Na > Ca > Mg > Al > Zn > Fe > Pb > H > Cu > Ag > Au\n\n### Reactions with Water and Acid\n| Metal | With cold water | With dilute acid |\n|-------|-----------------|------------------|\n| K, Na | Vigorous | Too violent |\n| Ca, Mg | Slow/moderate | Vigorous |\n| Zn, Fe | No reaction | Moderate |\n| Cu, Ag | No reaction | No reaction |\n\n### Displacement Reactions\nA more reactive metal displaces a less reactive metal from its salt solution.\n**Zn + CuSO4 -> ZnSO4 + Cu** (zinc is more reactive)\n\n### Extraction of Metals\n- **Very reactive (K, Na, Al):** Electrolysis\n- **Moderately reactive (Fe, Zn):** Reduction with coke/carbon\n- **Unreactive (Cu, Ag, Au):** Found native or simple heating\n\n### Rusting (Corrosion of Iron)\nRequires both oxygen AND water.\n**Prevention:** Painting, galvanising (Zn coating), oiling, alloying, sacrificial protection',
  8, 30),

  ('b1000004-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000004', 'Gas Laws and Mole Concept',
  'Mole calculations, Boyle''s Law, Charles'' Law and ideal gas equation',
  E'## Gas Laws and Mole Concept\n\n### The Mole\n1 mole = 6.02 x 10^23 particles (Avogadro''s constant)\n**Molar mass:** Mass of 1 mole (g/mol)\n\n**Number of moles = mass / molar mass**\n\n### Mole Calculations\n**Example:** How many moles in 36 g of water (H2O, Mr = 18)?\nn = 36/18 = **2 moles**\n\n### Concentrations\n**Concentration (mol/dm3) = moles / volume (dm3)**\n\n### Boyle''s Law (constant temperature)\n**P1*V1 = P2*V2**\nPressure and volume are inversely proportional.\n\n### Charles'' Law (constant pressure)\n**V1/T1 = V2/T2** (T in Kelvin)\nVolume and temperature are directly proportional.\n\n### Gay-Lussac''s Law (constant volume)\n**P1/T1 = P2/T2** (T in Kelvin)\n\n### Ideal Gas Equation\n**PV = nRT**\n- P = pressure (Pa)\n- V = volume (m^3)\n- n = number of moles\n- R = 8.314 J/mol/K\n- T = temperature (K)\n\n### Molar Volume of a Gas\nAt STP: 1 mole of any gas occupies **22.4 dm^3** (22400 cm^3)',
  9, 30),

  ('b1000004-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000004', 'Separation Techniques and Water',
  'Filtration, distillation, chromatography, and water purification',
  E'## Separation Techniques and Water\n\n### Common Separation Techniques\n| Technique | Used for | How |\n|-----------|----------|-----|\n| Filtration | Solid + liquid | Filter paper traps solid |\n| Evaporation | Solution to solid | Heat to remove solvent |\n| Crystallisation | Purify soluble solid | Dissolve, then cool slowly |\n| Simple distillation | Solvent from solution | Boil, condense vapour |\n| Fractional distillation | Miscible liquids | Different boiling points |\n| Chromatography | Mixtures in solution | Different solubility/travel distance |\n\n### Paper Chromatography\n**Rf value = distance moved by spot / distance moved by solvent front**\n\nRf is constant for a substance under same conditions. Used to identify unknowns.\n\n### Water Purification (Municipal Supply)\n1. Sedimentation/coagulation (add alum)\n2. Filtration (sand/gravel beds)\n3. Chlorination (kills bacteria)\n4. pH adjustment (add lime if acidic)\n\n### Hard Water\nCaused by dissolved Ca2+ and Mg2+ ions.\n- **Temporary hardness:** Removed by boiling\n- **Permanent hardness:** Requires ion exchange resin, distillation, or washing soda\n\n### Sewage Treatment\nPrimary: Physical (screening, sedimentation)\nSecondary: Biological (bacteria break down organic matter)\nTertiary: Chemical treatment before discharge',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- BIOLOGY: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000005-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000005', 'Nutrition and Digestion',
  'Nutrients, digestive system, enzymes and absorption',
  E'## Nutrition and Digestion\n\n### Classes of Food\n| Nutrient | Function | Sources |\n|----------|----------|---------|\n| Carbohydrates | Energy | Rice, yam, bread |\n| Proteins | Growth, repair | Meat, fish, beans |\n| Fats & Oils | Energy storage, insulation | Oil, nuts, dairy |\n| Vitamins | Metabolic regulation | Fruits, vegetables |\n| Minerals | Bone, blood, enzymes | Dairy, leafy greens |\n| Water | Transport, reactions | Drinks, foods |\n| Fibre | Gut health | Whole grains, vegetables |\n\n### Vitamin Deficiency Diseases\n- Vitamin A -> Night blindness\n- Vitamin C -> Scurvy (bleeding gums)\n- Vitamin D -> Rickets (soft bones)\n\n### The Digestive System\n**Mouth:** Chewing + salivary amylase (starch -> maltose)\n**Oesophagus:** Peristalsis (muscular contractions)\n**Stomach:** HCl + pepsin (protein digestion)\n**Small intestine:** Most digestion + absorption\n- Duodenum: bile (emulsifies fat) + pancreatic enzymes\n- Ileum: villi and microvilli increase surface area for absorption\n**Large intestine:** Water reabsorption; faeces formation\n\n### Enzymes in Digestion\n| Enzyme | Substrate | Product |\n|--------|-----------|----------|\n| Amylase | Starch | Maltose |\n| Protease | Proteins | Amino acids |\n| Lipase | Fats | Fatty acids + glycerol |\n| Maltase | Maltose | Glucose |',
  4, 30),

  ('b1000005-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000005', 'Respiration',
  'Aerobic and anaerobic respiration, ATP, and respiratory organs',
  E'## Respiration\n\n### Cellular Respiration\nThe process by which cells release energy from glucose.\n**NOT the same as breathing!**\n\n### Aerobic Respiration (with oxygen)\n**C6H12O6 + 6O2 -> 6CO2 + 6H2O + Energy (ATP)**\n- Releases large amounts of energy (~36-38 ATP per glucose)\n- Occurs in mitochondria\n\n### Anaerobic Respiration (without oxygen)\n**In animals/humans:** C6H12O6 -> 2C3H6O3 (lactic acid) + Energy (2 ATP)\n- Occurs during vigorous exercise\n- Causes muscle fatigue and oxygen debt\n\n**In yeast/plants:** C6H12O6 -> 2C2H5OH (ethanol) + 2CO2 + Energy (2 ATP)\n- Called fermentation\n- Used in bread making and alcohol production\n\n### ATP (Adenosine Triphosphate)\nThe cell energy currency. Released when ATP -> ADP + Pi + energy.\n\n### The Human Breathing System\n- **Trachea -> Bronchi -> Bronchioles -> Alveoli**\n- Alveoli: thin walls, moist, large surface area for gas exchange\n- Breathing in (inspiration): diaphragm contracts, ribcage rises -> volume increases -> pressure drops -> air enters\n- Breathing out (expiration): reverse\n\n### Gas Exchange\n- O2 diffuses into blood from alveoli\n- CO2 diffuses from blood into alveoli\n- Driven by concentration gradients',
  5, 30),

  ('b1000005-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000005', 'Transport in Organisms',
  'Blood, heart, circulation, xylem and phloem in plants',
  E'## Transport in Organisms\n\n### Components of Blood\n- Red blood cells: carry O2 (haemoglobin); no nucleus; biconcave disc\n- White blood cells: immune defense\n- Platelets: clotting\n- Plasma: liquid; transports nutrients, CO2, hormones, waste\n\n### The Heart\n- **4 chambers:** Left atrium, Right atrium, Left ventricle, Right ventricle\n- **Valves:** Prevent backflow (bicuspid, tricuspid, semilunar)\n- **Left side:** Oxygenated blood to body (systemic circulation)\n- **Right side:** Deoxygenated blood to lungs (pulmonary circulation)\n\n### Blood Vessels\n| Vessel | Direction | Walls | Pressure |\n|--------|-----------|-------|----------|\n| Artery | Away from heart | Thick, muscular | High |\n| Vein | To heart | Thin, with valves | Low |\n| Capillary | Between A and V | One cell thick | Medium |\n\n### Transport in Plants\n**Xylem:** Transports water and mineral salts upward from roots\n- One-way, non-living tubes\n- Driven by transpiration pull\n\n**Phloem:** Transports sugars (sucrose) up and down the plant (translocation)\n- Living cells; sieve tubes and companion cells\n\n**Transpiration:** Loss of water vapour from leaves through stomata\n- Increased by: high temperature, low humidity, wind, light',
  6, 30),

  ('b1000005-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000005', 'Excretion and Homeostasis',
  'Kidneys, skin, liver, and regulation of body conditions',
  E'## Excretion and Homeostasis\n\n### Excretion\nRemoval of metabolic waste products from the body.\n\n| Organ | Excretory product |\n|-------|------------------|\n| Kidneys | Urine (urea, water, salts) |\n| Lungs | CO2 and water vapour |\n| Skin (sweat) | Water, salts, small amounts of urea |\n| Liver | Bile pigments from broken-down haemoglobin |\n\n### The Kidneys\n**Functions:**\n- Filter blood, remove urea and excess salts\n- Regulate water content (osmoregulation)\n- Regulate blood pH\n\n**Nephron (functional unit):**\n- Bowman''s capsule (filtration)\n- PCT (selective reabsorption of glucose, amino acids, water)\n- Loop of Henle (water conservation)\n- DCT (final adjustments)\n\n### Homeostasis\nMaintaining a stable internal environment.\n\n| Variable | Controlled by |\n|----------|---------------|\n| Blood glucose | Pancreas (insulin/glucagon) |\n| Body temperature | Skin and hypothalamus |\n| Water content | Kidneys (ADH) |\n| Blood pH | Lungs and kidneys |\n\n### Temperature Regulation\nToo hot: vasodilation, sweating, hairs lie flat\nToo cold: vasoconstriction, shivering, hairs stand up (goosebumps)',
  7, 30),

  ('b1000005-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000005', 'Nervous System and Hormones',
  'Neurons, reflex arcs, brain, and endocrine system',
  E'## Nervous System and Hormones\n\n### Organisation\n**Central Nervous System (CNS):** Brain + Spinal cord\n**Peripheral Nervous System:** All nerves outside CNS\n\n### Types of Neurons\n- **Sensory:** Carry impulses from receptors TO CNS\n- **Relay (interneuron):** Within CNS; connect sensory to motor\n- **Motor:** Carry impulses FROM CNS to effectors (muscles/glands)\n\n### The Synapse\nGap between neurons. Impulse is chemical here.\nNeurotransmitters (e.g., acetylcholine) are released, cross the gap, and bind to receptors.\n\n### Reflex Arc\nReceptor -> Sensory neuron -> Relay neuron (spinal cord) -> Motor neuron -> Effector\n- Fast, involuntary, protective\n- Examples: knee jerk, pupil reflex, withdrawal reflex\n\n### The Brain\n- **Cerebrum:** Thinking, memory, voluntary movement\n- **Cerebellum:** Balance and coordination\n- **Medulla oblongata:** Breathing, heart rate (automatic)\n- **Hypothalamus:** Temperature regulation, water balance\n\n### Hormones (Endocrine System)\n| Hormone | Gland | Function |\n|---------|-------|----------|\n| Insulin | Pancreas | Lowers blood glucose |\n| Glucagon | Pancreas | Raises blood glucose |\n| Adrenaline | Adrenal | Fight or flight response |\n| Oestrogen | Ovaries | Female sexual development |\n| Testosterone | Testes | Male sexual development |',
  8, 30),

  ('b1000005-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000005', 'Reproduction',
  'Sexual and asexual reproduction, fertilisation and development',
  E'## Reproduction\n\n### Types of Reproduction\n**Asexual:** One parent; offspring genetically identical (clones)\n- Binary fission (bacteria), budding (yeast), vegetative propagation, spore formation\n\n**Sexual:** Two parents; involves gametes; offspring genetically varied\n\n### Human Reproduction\n**Male:** Testes produce sperm and testosterone\n**Female:** Ovaries produce eggs (ova) and hormones\n\nFertilisation: Sperm + Egg -> Zygote -> Embryo -> Fetus\nFertilisation occurs in the oviduct.\n\n### Menstrual Cycle (28 days)\n- Days 1-5: Menstruation (uterus lining sheds)\n- Days 6-13: Follicle develops, oestrogen rises\n- Day 14: Ovulation (egg released)\n- Days 15-28: Progesterone maintains lining (if fertilised: pregnancy; if not: cycle repeats)\n\n### Flower Structure and Pollination\n- **Anther + Filament** = Stamen (male)\n- **Stigma + Style + Ovary** = Carpel (female)\n- Pollination: transfer of pollen to stigma\n- Self-pollination vs Cross-pollination\n- Agents: wind, insects, water\n\n### Seed Dispersal\nWind, water, animals (hooks or edible fruits), explosive mechanisms',
  9, 25),

  ('b1000005-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000005', 'Photosynthesis',
  'Light reaction, dark reaction, factors affecting photosynthesis',
  E'## Photosynthesis\n\n### The Process\n**6CO2 + 6H2O + Light energy -> C6H12O6 + 6O2**\n\nTakes place in **chloroplasts** (thylakoid and stroma).\nChlorophyll absorbs mainly red and blue light.\n\n### Two Stages\n**Light-dependent reaction (thylakoid):**\n- Water is split (photolysis): H2O -> H+ + e- + O2\n- ATP and NADPH are produced\n- O2 released as by-product\n\n**Light-independent reaction / Calvin cycle (stroma):**\n- CO2 fixed using ATP and NADPH\n- Glucose is produced\n\n### Factors Affecting Photosynthesis Rate\n1. **Light intensity:** More light -> faster rate (up to a limit)\n2. **CO2 concentration:** More CO2 -> faster rate\n3. **Temperature:** Higher temperature -> faster rate (up to ~40C, then enzymes denature)\n4. **Water supply:** Needed as raw material\n\n### Limiting Factors\nAt any moment, the factor in shortest supply limits the rate.\n\n### Testing for Starch (Evidence of Photosynthesis)\n1. Boil leaf in water (break down cells)\n2. Boil in ethanol (remove chlorophyll - leaf turns white)\n3. Add iodine solution\n4. **Blue-black colour = starch present = photosynthesis occurred**\n\n### Importance of Photosynthesis\n- Produces food for all organisms (primary producers)\n- Produces oxygen for respiration\n- Removes CO2 from atmosphere',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- GEOGRAPHY: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000006-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000006', 'Map Reading and Scale',
  'Topographic maps, contours, grid references and scale',
  E'## Map Reading and Scale\n\n### Types of Maps\n- **Topographic maps:** Show relief (height) using contour lines\n- **Thematic maps:** Show specific data (rainfall, vegetation, population)\n- **Atlas maps:** General reference\n\n### Contour Lines\n- Lines joining points of equal altitude\n- Close contours -> steep slope\n- Widely spaced contours -> gentle slope\n- Concentric circles -> hill\n- V-shaped pointing uphill -> valley\n- V-shaped pointing downhill -> ridge/spur\n\n### Scale\n**Representative fraction (RF):** 1:50,000 means 1 cm on map = 50,000 cm (500 m) on ground\n\n**Calculating distance:**\nMap distance x denominator of RF = actual distance (in same units)\n\n### Grid References\n- **Four-figure:** Identifies a 1 km^2 square\n- **Six-figure:** More precise location\n- Read eastings (across) first, then northings (up) - "along the corridor, then up the stairs"\n\n### Relief Features\n- **Spur:** Tongue of high land projecting into a valley\n- **Col/Saddle:** Low point between two hills\n- **Escarpment:** Steep slope + gentle slope\n- **Gorge:** Deep narrow valley with steep sides\n- **Delta:** Fan-shaped deposit at river mouth',
  4, 30),

  ('b1000006-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000006', 'Rivers and Drainage',
  'River processes, erosion, transportation, deposition and landforms',
  E'## Rivers and Drainage\n\n### River Processes\n**Erosion:**\n- Hydraulic action: force of moving water\n- Abrasion/corrasion: sand/gravel scrape bed and banks\n- Attrition: rocks knock against each other -> smaller, rounder\n- Corrosion/solution: chemical dissolving of rocks\n\n**Transportation:**\n- Traction (large boulders roll)\n- Saltation (smaller pebbles bounce)\n- Suspension (fine particles float)\n- Solution (dissolved minerals)\n\n**Deposition:** When river slows down; heaviest particles first\n\n### River Landforms\n**Upper course (mountains):**\n- V-shaped valley, waterfalls, rapids, potholes, interlocking spurs\n\n**Middle course:**\n- Meanders, floodplains begin\n\n**Lower course:**\n- Wide floodplain, ox-bow lakes, levees, delta at mouth\n\n### Ox-bow Lake Formation\nMeander bends tighter -> neck cut through during flood -> old meander cut off -> ox-bow lake\n\n### Delta Types\n- **Arcuate (Nile type):** Fan-shaped\n- **Bird''s foot (Mississippi):** Long distributaries\n- **Cuspate (Tiber):** Pointed',
  5, 30),

  ('b1000006-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000006', 'Agriculture in West Africa',
  'Types of farming, cash and food crops, agricultural challenges',
  E'## Agriculture in West Africa\n\n### Importance of Agriculture\n- Employs majority of West African population (40-60%)\n- Provides food and raw materials\n- Source of export earnings\n\n### Types of Farming\n**Subsistence farming:** For family consumption; small scale; traditional methods\n**Commercial farming:** For sale/export; large scale; modern inputs\n\n**Shifting cultivation:** Farm plot used, then abandoned; forest regrows; practised in forest zones\n**Mixed farming:** Crops + livestock on same farm\n**Plantation agriculture:** Single cash crop on large scale\n\n### Major Cash Crops\n| Crop | Main Countries |\n|------|----------------|\n| Cocoa | Ghana, Cote d''Ivoire, Nigeria |\n| Coffee | Cote d''Ivoire, Sierra Leone |\n| Groundnuts | Nigeria, Senegal, Gambia |\n| Palm oil | Nigeria, Sierra Leone |\n| Rubber | Liberia, Nigeria |\n| Cotton | Mali, Nigeria |\n\n### Food Crops\nYam, cassava, maize, rice, sorghum, millet, plantain\n\n### Agricultural Challenges\n- Poor soils and soil erosion\n- Unreliable rainfall and droughts\n- Pests and diseases\n- Lack of modern inputs, credit, storage\n- Rural-urban migration of farm workers',
  6, 30),

  ('b1000006-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000006', 'Natural Resources and Industry',
  'Minerals, energy resources, industries in West Africa',
  E'## Natural Resources and Industry\n\n### Types of Natural Resources\n- **Renewable:** Forests, water, solar, wind\n- **Non-renewable:** Minerals, fossil fuels\n\n### Mineral Resources of West Africa\n| Resource | Countries |\n|----------|-----------|\n| Gold | Ghana, Mali, Guinea |\n| Diamond | Sierra Leone, Liberia, Guinea |\n| Iron ore | Liberia, Sierra Leone, Guinea |\n| Bauxite | Guinea, Ghana |\n| Oil & Gas | Nigeria, Ghana, Cote d''Ivoire |\n| Manganese | Ghana |\n\n### Industries in West Africa\n**Primary:** Mining, farming, fishing, forestry\n**Secondary (Manufacturing):**\n- Food processing (cocoa, palm oil, flour)\n- Textiles and clothing\n- Cement and construction materials\n- Petroleum refining (Nigeria)\n\n**Tertiary (Services):** Banking, transport, trade, tourism\n\n### Industrial Location Factors\n- Raw materials (near resources)\n- Labour supply\n- Power/energy availability\n- Transport links\n- Market access\n- Government policy\n\n### Problems of Industrialisation\n- Environmental pollution\n- Overreliance on raw material export\n- Limited capital and technology\n- Competition from imports',
  7, 25),

  ('b1000006-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000006', 'Vegetation and Soils',
  'Natural vegetation belts, soil types and soil erosion in West Africa',
  E'## Vegetation and Soils\n\n### Vegetation Zones of West Africa (South to North)\n1. **Tropical Rainforest** (coastal belt): High rainfall year-round; multi-layered canopy\n2. **Derived Savanna:** Transitional; mixture of trees and grasses\n3. **Guinea Savanna:** Tall grasses + scattered trees; distinct dry season\n4. **Sudan Savanna:** Lower rainfall; shorter grasses; more xerophytic trees\n5. **Sahel Zone:** Semi-arid; sparse, drought-resistant grasses and thorny shrubs\n6. **Desert (Sahara):** Very little vegetation; specialized plants\n\n### Soil Types\n**Laterite/Ferralitic soil:** Most common in tropical West Africa; red/yellow; leached of nutrients; iron-rich\n**Alluvial soil:** Found in floodplains; fertile; good for farming\n**Sandy soil:** Good drainage; low fertility\n**Clay soil:** Poor drainage; high nutrient retention\n\n### Soil Erosion\n**Causes:**\n- Deforestation\n- Overgrazing\n- Poor farming practices\n- Steep slopes\n\n**Types:** Sheet, rill, gully erosion\n\n**Prevention:**\n- Contour ploughing\n- Terracing\n- Afforestation / reforestation\n- Cover crops, crop rotation\n- Windbreaks (shelter belts)',
  8, 25),

  ('b1000006-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000006', 'Transport and Trade',
  'Types of transport, trade routes and economic integration in West Africa',
  E'## Transport and Trade\n\n### Modes of Transport\n**Road:**\n- Most common in West Africa\n- Flexible; door-to-door service\n- Hindered by poor maintenance, seasonal flooding\n\n**Railway:**\n- Mostly colonial-era; limited network\n- Ghana: Accra-Kumasi, Sekondi-Takoradi\n- Nigeria: Lagos-Kano corridor\n\n**Air:**\n- International airports: Lagos, Accra, Freetown, Monrovia\n- Important for business travel and perishable exports\n\n**Water/Sea:**\n- Ports: Lagos, Tema (Ghana), Freetown, Abidjan\n- Inland waterways (River Niger, Volta Lake)\n\n### Trade\n**International trade:** Export of raw materials; import of manufactured goods\n**Intra-regional trade:** Between West African nations\n\n### Major Exports\n- Oil and gas (Nigeria, Ghana)\n- Cocoa (Ghana, Cote d''Ivoire)\n- Minerals (Guinea, Liberia, Sierra Leone)\n- Groundnuts (Gambia, Senegal)\n\n### ECOWAS (Economic Community of West African States)\n- Founded: 1975, Lagos\n- Members: 15 countries\n- Aim: promote economic integration, free movement of people and goods\n\n### Trade Challenges\n- Poor infrastructure\n- Currency differences\n- Border delays and corruption\n- Political instability in some countries',
  9, 25),

  ('b1000006-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000006', 'Environmental Issues',
  'Desertification, deforestation, pollution and environmental management',
  E'## Environmental Issues\n\n### Desertification\nThe process by which fertile land becomes desert.\n**Causes:** Drought, overgrazing, deforestation, poor farming\n**Areas affected:** Sahel region (Gambia, Senegal, Mali, Niger, northern Nigeria/Ghana)\n**Solutions:** Afforestation, sand dune stabilisation, irrigation management\n\n### Deforestation\nPermanent removal of forests.\n**Causes:** Logging, farming, charcoal production, urban expansion\n**Effects:** Soil erosion, loss of biodiversity, reduced rainfall, flooding, climate change\n**Solutions:** Sustainable logging, forest reserves, community forestry, reforestation\n\n### Pollution\n| Type | Causes | Effects |\n|------|--------|----------|\n| Air | Vehicle emissions, industry, burning | Respiratory disease, acid rain |\n| Water | Oil spills, chemicals | Kills aquatic life, undrinkable water |\n| Land/Soil | Improper waste disposal, pesticides | Reduces soil fertility |\n\n### Niger Delta Oil Pollution (Nigeria)\n- Oil spills from extraction, pipelines, and sabotage\n- Destroys farmland, fishing grounds\n- Leads to poverty and conflict\n\n### Climate Change in Africa\n- Rising temperatures -> drought, reduced crop yields\n- Sea level rise -> coastal flooding (Lagos, Accra at risk)\n- Shifting rain patterns -> food insecurity\n\n### Environmental Management\n- National parks and game reserves (Kakum, Mole, Gola)\n- Environmental impact assessments (EIA)\n- International agreements (Paris Agreement)\n- Promoting renewable energy',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- ENGLISH LANGUAGE: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000002-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000002', 'Oral English and Phonetics',
  'Vowels, consonants, stress, intonation and spoken English',
  E'## Oral English and Phonetics\n\n### Vowel Sounds\n**Pure vowels (monophthongs):** Single, stable sound\n- Short: /i/ (bit), /e/ (bed), /a/ (cat), /u/ (book)\n- Long: /ee/ (see), /ar/ (car), /aw/ (saw), /oo/ (too)\n\n**Diphthongs:** Glide from one vowel to another\n/ay/ (day), /ie/ (my), /oy/ (boy), /ow/ (now), /oh/ (go)\n\n### Consonant Sounds\n**Consonant pairs (voiced/voiceless):**\np/b, t/d, k/g, f/v, s/z, th (thin/this), sh/zh (ship/vision)\n\n### Stress\n**Word stress:** One syllable is louder and longer.\n- 2-syllable nouns: usually first syllable (PREsent, REcord)\n- 2-syllable verbs: usually second syllable (preSENT, reCORD)\n\n**Sentence stress:** Content words (nouns, verbs, adjectives) stressed; function words unstressed.\n\n### Intonation\n- **Falling intonation:** Statements, commands, wh-questions\n- **Rising intonation:** Yes/no questions, incomplete sentences, lists\n\n### Rhyme and Minimal Pairs\n**Rhyme:** Words with same ending sound (hat/cat, great/late)\n**Minimal pairs:** Words differing by one sound (ship/sheep, bit/beat)',
  4, 30),

  ('b1000002-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000002', 'Lexis and Structure',
  'Vocabulary, sentence structure, tenses and common errors',
  E'## Lexis and Structure\n\n### Word Formation\n- **Prefix:** Added before root (un-happy, dis-agree, re-write)\n- **Suffix:** Added after root (teach-er, happi-ness, help-ful)\n- **Compounding:** Two words join (blackboard, sunflower)\n\n### Common Prefixes\n| Prefix | Meaning | Example |\n|--------|---------|----------|\n| un- | not | unhappy |\n| dis- | opposite | disagree |\n| mis- | wrongly | misunderstand |\n| pre- | before | preview |\n| post- | after | postpone |\n| super- | above/beyond | supermarket |\n\n### Sentence Structure\n**Simple:** One independent clause (She sings.)\n**Compound:** Two independent clauses joined by FANBOYS (She sings and he dances.)\n**Complex:** One independent + one/more dependent clauses (She sings because she is happy.)\n\n### Verb Tenses\n| Tense | Example |\n|-------|----------|\n| Simple present | He writes |\n| Present continuous | He is writing |\n| Simple past | He wrote |\n| Present perfect | He has written |\n| Past perfect | He had written |\n| Future simple | He will write |\n\n### Common Errors\n- **Subject-verb agreement:** "The group of students are" -> "is"\n- **Double negatives:** "I didn''t do nothing" -> "anything"\n- **Tense consistency:** Maintain consistent tense throughout a paragraph',
  5, 25),

  ('b1000002-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000002', 'Summary Writing',
  'Techniques for concise summarising and note-making',
  E'## Summary Writing\n\n### What is a Summary?\nA summary is a concise restatement of the main ideas of a text in your own words.\n\n### Steps for Writing a Good Summary\n1. **Read the passage carefully** - understand the main idea\n2. **Identify key points** - find the main ideas (not examples, not details)\n3. **Use your own words** - avoid lifting sentences directly\n4. **Write in continuous prose** - not bullet points unless asked\n5. **Maintain the author''s meaning** - don''t add your own opinion\n6. **Observe the word limit** - usually 60-100 words in WASSCE\n\n### What to Leave Out\n- Examples and illustrations\n- Repetitions\n- Opinions and feelings\n- Unnecessary adjectives/adverbs\n- Direct speech (convert to indirect)\n\n### WASSCE Summary Question Pattern\n"In not more than 60 words, summarise the writer''s argument about..."\n\n### Sample Strategy\n- Skim the passage (30 seconds)\n- Read each paragraph and note its main point\n- Draft the summary joining these points\n- Count words; revise if necessary\n\n### Cohesive Devices for Summaries\nMoreover, Furthermore, However, In addition, Nevertheless, As a result, Therefore, Consequently',
  6, 25),

  ('b1000002-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000002', 'Figures of Speech and Literary Devices',
  'Simile, metaphor, personification, irony, and other devices',
  E'## Figures of Speech and Literary Devices\n\n### Comparison Devices\n**Simile:** Compares using "like" or "as"\n"His voice was like thunder." / "She ran as fast as the wind."\n\n**Metaphor:** States that one thing IS another (no like/as)\n"Life is a journey." / "Time is money."\n\n### Sound Devices\n**Alliteration:** Same initial consonant sound\n"Peter Piper picked a peck of pickled peppers"\n\n**Assonance:** Repetition of vowel sounds\n"The rain in Spain stays mainly in the plain"\n\n**Onomatopoeia:** Word imitates the sound it describes\n"buzz, hiss, crash, splash, murmur"\n\n### Emphasis and Exaggeration\n**Hyperbole:** Exaggeration for effect\n"I''ve told you a million times!"\n\n**Understatement:** Saying less than what is meant\n"It was a bit chilly" (during a blizzard)\n\n**Euphemism:** Mild word for something unpleasant\n"He passed away" (instead of "died")\n\n### Contrast and Irony\n**Irony:** Words mean the opposite of their literal meaning\n"What beautiful weather!" (said during a storm)\n\n**Oxymoron:** Contradictory words together\n"deafening silence", "living death"\n\n### Other Devices\n**Personification:** Giving human qualities to non-human things\n"The trees whispered secrets to the wind"\n\n**Rhetorical question:** Question asked for effect, not answer\n"Is this the kind of future we want for our children?"',
  7, 25),

  ('b1000002-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000002', 'Punctuation and Spelling',
  'Rules of punctuation, common misspellings and usage',
  E'## Punctuation and Spelling\n\n### Full Stop (.)\nUsed at end of sentence, and in abbreviations (e.g., Dr., etc.)\n\n### Comma (,)\n- Separate items in a list (apples, oranges, and grapes)\n- After introductory phrases\n- Before coordinating conjunctions in compound sentences\n- Around non-essential (parenthetical) clauses\n\n### Semicolon (;)\nJoin two closely related independent clauses:\n"She studied hard; she passed with distinction."\n\n### Colon (:)\nIntroduce a list, explanation, or quotation:\n"There are three causes: poverty, ignorance, and disease."\n\n### Apostrophe ('')\n- **Possession:** The student''s book; the students'' books\n- **Contraction:** don''t, can''t, it''s (= it is), they''re\n\n### Quotation Marks\nEnclose direct speech: He said, "Come here."\n\n### Commonly Confused Words\n- affect (verb) / effect (noun)\n- there/their/they''re\n- your/you''re\n- its/it''s\n- principal/principle\n- complement/compliment\n\n### Common Misspellings (correct forms)\nreceive, achieve, necessary, separate, occurrence, accommodation, committee, government, embarrass, successful, beautiful, definitely, privilege, conscientious',
  8, 25),

  ('b1000002-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000002', 'Register and Varieties of English',
  'Formal vs informal language, register, dialects and standard English',
  E'## Register and Varieties of English\n\n### What is Register?\nRegister refers to the variety of language used in a particular social situation.\nFactors: purpose, audience, medium (spoken/written), subject matter\n\n### Types of Register\n**Formal register:** Official documents, academic writing, business letters, speeches\n- Complex sentence structure\n- Technical or sophisticated vocabulary\n- No contractions or slang\n\n**Informal register:** Conversation with friends, personal letters, text messages\n- Simple, short sentences\n- Colloquialisms and contractions\n\n**Technical/Specialist register:** Legal, medical, scientific, religious texts\n- Jargon and specialised vocabulary\n\n### Code-switching\nMoving between languages or registers in conversation (common in West Africa - Pidgin, vernacular, standard English)\n\n### Standard English\nThe variety of English used in official contexts globally.\n- Consistent grammar rules\n- No regional dialect features\n- Required in WASSCE examinations\n\n### Examples of Register\n| Situation | Appropriate Register | Example |\n|-----------|---------------------|---------|\n| Letter to principal | Formal | "I write to respectfully request..." |\n| Text to a friend | Informal | "Hey, wats up?" |\n| Science report | Technical/Formal | "The specimen was observed under..." |\n| Story | Narrative | "Once upon a time..." |',
  9, 25),

  ('b1000002-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000002', 'Directed Writing',
  'Reports, speeches, letters, articles and other directed writing tasks',
  E'## Directed Writing\n\n### What is Directed Writing?\nWriting a specific text type for a given purpose and audience. WASSCE Paper 2 tests this heavily.\n\n### Speech Writing\n**Structure:**\n1. Salutation: "Distinguished guests, ladies and gentlemen..."\n2. Introduction: State topic and purpose\n3. Body: 3-4 main points with support\n4. Conclusion: Summary and call to action\n5. Sign-off: "Thank you."\n\n**Features:** Direct address ("you"), rhetorical questions, persuasive language, first person\n\n### Report Writing\n**Structure:**\n- Heading / Title\n- Introduction (purpose of report)\n- Findings (organised under sub-headings)\n- Recommendations / Conclusion\n\n**Features:** Formal language, impersonal tone, third person, factual\n\n### Formal Letter\n1. Writer''s address (top right)\n2. Date\n3. Recipient''s address (left)\n4. Salutation: "Dear Sir/Madam" or name\n5. Subject heading\n6. Body paragraphs\n7. Complimentary close: "Yours faithfully" (if no name) / "Yours sincerely" (if name used)\n8. Signature + Full name\n\n### Informal Letter\nRelaxed tone, personal address ("Dear Kwame,"), conversational language, end with "Yours affectionately" or "Your friend"',
  10, 25)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- FURTHER MATHEMATICS: Additional Topics
-- =============================================
INSERT INTO topics (id, subject_id, name, description, content, order_index, duration_minutes) VALUES
  ('b1000007-0000-0000-0000-000000000004', 'a1000000-0000-0000-0000-000000000007', 'Calculus: Integration',
  'Indefinite and definite integrals, rules, and applications',
  E'## Calculus: Integration\n\n### Integration as Reverse Differentiation\nIf d/dx[F(x)] = f(x), then integral of f(x)dx = F(x) + C\n\n### Basic Integration Rules\n| Function | Integral |\n|----------|----------|\n| x^n | x^(n+1)/(n+1) + C (n != -1) |\n| 1/x | ln|x| + C |\n| e^x | e^x + C |\n| sin x | -cos x + C |\n| cos x | sin x + C |\n| constant k | kx + C |\n\n### Definite Integrals\nIntegral from a to b of f(x) dx = F(b) - F(a)\n\n**Example:** Integral from 1 to 3 of x^2 dx = [x^3/3] from 1 to 3 = 27/3 - 1/3 = 26/3\n\n### Area Under a Curve\nArea between curve y=f(x) and x-axis from a to b:\n**A = integral from a to b of |f(x)| dx**\n\n### Area Between Two Curves\nA = integral from a to b of [f(x) - g(x)] dx, where f(x) is the upper curve.\n\n### Integration by Substitution\nLet u = g(x), then du = g''(x) dx\n\n### Volume of Revolution\nV = pi x integral from a to b of y^2 dx (rotation about x-axis)',
  4, 35),

  ('b1000007-0000-0000-0000-000000000005', 'a1000000-0000-0000-0000-000000000007', 'Vectors in 3D',
  '3D vectors, scalar and vector products, applications',
  E'## Vectors in 3D\n\n### 3D Vector Representation\n**a = a1*i + b1*j + c1*k** or **(a, b, c)**\nwhere i, j, k are unit vectors along x, y, z axes.\n\n### Magnitude\n|a| = sqrt(a^2 + b^2 + c^2)\n\n### Unit Vector\na_hat = a / |a|\n\n### Vector Operations\n- **Addition:** (a1+a2, b1+b2, c1+c2)\n- **Subtraction:** (a1-a2, b1-b2, c1-c2)\n- **Scalar multiplication:** k(a,b,c) = (ka, kb, kc)\n\n### Scalar (Dot) Product\n**a . b = a1*b1 + a2*b2 + a3*b3 = |a||b|cos(theta)**\n\nUsed to find angle between vectors:\ncos(theta) = (a . b) / (|a||b|)\n\nIf a . b = 0, vectors are **perpendicular**.\n\n### Vector (Cross) Product\n|a x b| = |a||b|sin(theta)\nGives area of parallelogram formed by a and b.\n\n### Applications\n- **Equations of lines:** r = a + lambda*d\n- **Angle between lines/planes**\n- **Work done:** W = F . d',
  5, 35),

  ('b1000007-0000-0000-0000-000000000006', 'a1000000-0000-0000-0000-000000000007', 'Permutations and Combinations',
  'Counting principles, permutations, combinations',
  E'## Permutations and Combinations\n\n### Fundamental Counting Principle\nIf one event can occur in m ways and another in n ways, together they can occur in **m x n ways**.\n\n**Example:** 3 shirts and 4 trousers: 3 x 4 = 12 outfits\n\n### Factorial\nn! = n x (n-1) x (n-2) x ... x 2 x 1\n0! = 1\n\n### Permutations (Order matters)\nArranging r items from n distinct items:\n**P(n,r) = n! / (n-r)!**\n\n**Example:** How many ways to arrange 3 letters from {A, B, C, D, E}?\nP(5,3) = 5!/(5-3)! = 120/2 = **60**\n\n### Combinations (Order does not matter)\nSelecting r items from n items:\n**C(n,r) = n! / [r!(n-r)!]**\n\n**Example:** How many ways to choose 3 from 5?\nC(5,3) = 5!/(3! x 2!) = 120/12 = **10**\n\n### Relationship\nP(n,r) = r! x C(n,r)\n\n### Permutations with Repetition\n- If some items are identical: n! / (n1! x n2! x ...)\n- With repetition allowed: n^r ways to arrange r items from n\n\n### Circular Permutations\nArranging n items in a circle: **(n-1)!** ways',
  6, 30),

  ('b1000007-0000-0000-0000-000000000007', 'a1000000-0000-0000-0000-000000000007', 'Binomial Theorem',
  'Binomial expansion, Pascal''s triangle and applications',
  E'## Binomial Theorem\n\n### Binomial Expansion\n**(a + b)^n = sum from k=0 to n of C(n,k) * a^(n-k) * b^k**\n\n### General Term\n**T(r+1) = C(n,r) * a^(n-r) * b^r** (the (r+1)th term)\n\n### Pascal''s Triangle\nRow 0: 1\nRow 1: 1  1\nRow 2: 1  2  1\nRow 3: 1  3  3  1\nRow 4: 1  4  6  4  1\nRow 5: 1  5  10 10 5  1\n\nCoefficients = C(n,r) values\n\n### Example: Expand (x + 2)^4\n= C(4,0)x^4 + C(4,1)x^3(2) + C(4,2)x^2(4) + C(4,3)x(8) + C(4,4)(16)\n= x^4 + 8x^3 + 24x^2 + 32x + 16\n\n### Coefficient of a Specific Term\n**Example:** Find coefficient of x^3 in (2x - 3)^5\nT(r+1) = C(5,r)(2x)^(5-r)(-3)^r\nFor x^3: 5-r = 3, so r = 2\nT3 = C(5,2)(2x)^3(-3)^2 = 10 x 8x^3 x 9 = **720x^3**\n\n### Applications\n- Approximations: (1+x)^n is approximately 1 + nx for small x\n- Binomial probability distributions\n- Expansion of algebraic expressions',
  7, 30),

  ('b1000007-0000-0000-0000-000000000008', 'a1000000-0000-0000-0000-000000000007', 'Probability and Statistics',
  'Probability distributions, expected value, and statistical inference',
  E'## Probability and Statistics\n\n### Conditional Probability\n**P(A|B) = P(A intersect B) / P(B)**\nProbability of A given B has occurred.\n\n**Multiplication rule:** P(A intersect B) = P(A|B) x P(B)\n\n### Independent Events\nIf A and B are independent: P(A intersect B) = P(A) x P(B)\n\n### Probability Distributions\n**Discrete:** Values are countable (e.g., number of heads in coin flips)\n\n**Binomial Distribution:** X ~ B(n, p)\n- n = number of trials, p = probability of success\n- **P(X=r) = C(n,r) * p^r * (1-p)^(n-r)**\n- Mean: np, Variance: np(1-p)\n\n**Normal Distribution:** X ~ N(mu, sigma^2)\n- Bell-shaped, symmetric\n- 68% within mu +/- sigma; 95% within mu +/- 2*sigma\n- Standardize: Z = (X - mu) / sigma\n\n### Expected Value\n**E(X) = sum of x * P(X=x)**\n\n### Variance and Standard Deviation\n**Var(X) = E(X^2) - [E(X)]^2**\nSD = sqrt(Var(X))\n\n### Hypothesis Testing\n- State H0 (null hypothesis) and H1 (alternative)\n- Calculate test statistic\n- Compare with critical value at significance level\n- Accept or reject H0',
  8, 35),

  ('b1000007-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000007', 'Roots of Polynomial Equations',
  'Relationship between roots and coefficients, symmetric functions',
  E'## Roots of Polynomial Equations\n\n### Quadratic Equations: ax^2 + bx + c = 0\nIf roots are alpha and beta:\n- **Sum of roots:** alpha + beta = -b/a\n- **Product of roots:** alpha x beta = c/a\n\n### Forming a Quadratic from Roots\nx^2 - (alpha+beta)x + alpha*beta = 0\nx^2 - (sum)x + (product) = 0\n\n**Example:** If alpha+beta = 5 and alpha*beta = 6, equation is x^2 - 5x + 6 = 0\n\n### Cubic Equations: ax^3 + bx^2 + cx + d = 0\nIf roots are alpha, beta, gamma:\n- alpha + beta + gamma = -b/a\n- alpha*beta + alpha*gamma + beta*gamma = c/a\n- alpha*beta*gamma = -d/a\n\n### Symmetric Functions of Roots\nExpressions involving all roots treated equally.\n\n**Example (quadratic):** Find alpha^2 + beta^2\nalpha^2 + beta^2 = (alpha+beta)^2 - 2*alpha*beta\n\n**Find alpha^3 + beta^3:**\nalpha^3 + beta^3 = (alpha+beta)^3 - 3*alpha*beta*(alpha+beta)\n\n**Find (alpha-beta)^2:**\n(alpha-beta)^2 = (alpha+beta)^2 - 4*alpha*beta\n\n### Complex Roots\nIf coefficients are real, complex roots occur in conjugate pairs: a+bi and a-bi.',
  9, 30),

  ('b1000007-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000007', 'Trigonometric Functions and Identities',
  'Advanced trigonometry: compound angles, double angles, solving equations',
  E'## Trigonometric Functions and Identities\n\n### Compound Angle Formulae\n- **sin(A+B) = sin A cos B + cos A sin B**\n- **sin(A-B) = sin A cos B - cos A sin B**\n- **cos(A+B) = cos A cos B - sin A sin B**\n- **cos(A-B) = cos A cos B + sin A sin B**\n- **tan(A+B) = (tan A + tan B) / (1 - tan A tan B)**\n\n### Double Angle Formulae\n- **sin 2A = 2 sin A cos A**\n- **cos 2A = cos^2(A) - sin^2(A) = 2cos^2(A) - 1 = 1 - 2sin^2(A)**\n- **tan 2A = 2tan A / (1 - tan^2(A))**\n\n### Half-Angle Formulae\nFrom double angle:\nsin^2(A) = (1 - cos2A)/2\ncos^2(A) = (1 + cos2A)/2\n\n### R-form (Harmonic Form)\na sin x + b cos x = R sin(x + phi)\nwhere **R = sqrt(a^2 + b^2)** and **tan(phi) = b/a**\n\n### Solving Trigonometric Equations\n1. Use identities to simplify\n2. Find principal value using inverse trig\n3. Use CAST diagram to find all solutions in given range\n\n**Example:** Solve sin 2x = cos x, 0 to 360 degrees\n2 sin x cos x = cos x\ncos x (2 sin x - 1) = 0\nx = 90, 270, 30, 150 degrees',
  10, 35)
ON CONFLICT (id) DO NOTHING;

-- =============================================
-- QUIZ QUESTIONS: New Topics
-- =============================================

-- Mathematics: Trigonometry
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000005', 'In a right triangle, sin(theta) = 3/5. What is cos(theta)?', '["3/4", "4/5", "5/3", "4/3"]', 1, 'Using sin^2 + cos^2 = 1: (3/5)^2 + cos^2 = 1. cos^2 = 16/25. cos(theta) = 4/5.', 'medium'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000005', 'What is the value of sin 30?', '["sqrt(3)/2", "1/2", "1/sqrt(2)", "sqrt(3)"]', 1, 'sin 30 degrees = 1/2 is one of the standard angle values to memorize.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000005', 'Which identity is correct?', '["sin^2(x) + cos^2(x) = 2", "tan x = cos x / sin x", "sin 2x = 2 sin x cos x", "cos 2x = 2sin^2(x) + 1"]', 2, 'sin 2x = 2 sin x cos x is the double angle formula for sine. The others are incorrect.', 'medium'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000005', 'The sine rule states that in triangle ABC:', '["a/sin A = b/sin B = c/sin C", "a^2 = b^2 + c^2 - 2bc cos A", "Area = (1/2) ab sin C only", "sin A/a = sin B/b and sin C/c is different"]', 0, 'The sine rule: a/sin A = b/sin B = c/sin C. This is used when we know two angles and a side, or two sides and a non-included angle.', 'medium')
ON CONFLICT DO NOTHING;

-- Mathematics: Indices and Logarithms
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000004', 'Simplify: 2^3 x 2^4', '["2^7", "2^12", "4^7", "2^1"]', 0, 'Using law: a^m x a^n = a^(m+n). So 2^3 x 2^4 = 2^(3+4) = 2^7 = 128.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000004', 'Evaluate log base 3 of 81', '["3", "4", "9", "27"]', 1, 'log_3(81) = x means 3^x = 81 = 3^4. Therefore x = 4.', 'easy'),
  (gen_random_uuid(), 'b1000001-0000-0000-0000-000000000004', 'log(AB) equals:', '["log A x log B", "log A + log B", "log A - log B", "log(A+B)"]', 1, 'First law of logarithms: log(AB) = log A + log B. Logarithms convert multiplication to addition.', 'easy')
ON CONFLICT DO NOTHING;

-- Physics: Heat
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000004', 'How much heat is needed to raise 2 kg of water from 20C to 70C? (c = 4200 J/kgC)', '["42,000 J", "420,000 J", "4,200 J", "840 J"]', 1, 'Q = mc(delta T) = 2 x 4200 x (70-20) = 2 x 4200 x 50 = 420,000 J.', 'medium'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000004', 'Which method of heat transfer does NOT require a medium?', '["Conduction", "Convection", "Radiation", "All require a medium"]', 2, 'Radiation transfers heat via electromagnetic waves and does not require a medium - this is how heat from the sun reaches Earth across a vacuum.', 'easy'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000004', 'Water boiling at 100C while absorbing heat demonstrates:', '["Specific heat capacity", "Latent heat of vaporisation", "Thermal conductivity", "Convection"]', 1, 'When a substance changes state (liquid to gas), it absorbs energy without temperature change - this is latent heat of vaporisation.', 'medium')
ON CONFLICT DO NOTHING;

-- Physics: Work, Energy and Power
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000007', 'A 5 kg object is moving at 4 m/s. What is its kinetic energy?', '["20 J", "40 J", "10 J", "80 J"]', 1, 'KE = (1/2)mv^2 = (1/2) x 5 x 4^2 = (1/2) x 5 x 16 = 40 J.', 'easy'),
  (gen_random_uuid(), 'b1000003-0000-0000-0000-000000000007', 'A machine has efficiency of 80%. If input energy is 500 J, what is useful output?', '["400 J", "500 J", "600 J", "100 J"]', 0, 'Efficiency = (useful output / input) x 100%. 80% = (output / 500) x 100%. Output = 400 J.', 'medium')
ON CONFLICT DO NOTHING;

-- Chemistry: Organic Chemistry
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000004', 'Which test distinguishes an alkene from an alkane?', '["Burns with a blue flame", "Decolourises bromine water", "Reacts with sodium", "Forms white precipitate with AgNO3"]', 1, 'Alkenes decolourise bromine water (addition reaction across the double bond). Alkanes do not react with bromine water at room temperature.', 'medium'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000004', 'What is the general formula for alkanes?', '["CnH(2n)", "CnH(2n+2)", "CnH(2n-2)", "CnHn"]', 1, 'Alkanes (saturated hydrocarbons with only single bonds) have the general formula CnH(2n+2).', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000004', 'The functional group -COOH belongs to which class?', '["Alcohol", "Aldehyde", "Carboxylic acid", "Ester"]', 2, '-COOH is the carboxyl group, found in carboxylic acids such as ethanoic acid (acetic acid).', 'easy')
ON CONFLICT DO NOTHING;

-- Chemistry: Gas Laws
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000009', 'Boyle''s Law states that at constant temperature:', '["Volume is proportional to pressure", "Volume is inversely proportional to pressure", "Pressure is proportional to temperature", "Volume is proportional to temperature"]', 1, 'Boyle''s Law: P1V1 = P2V2. At constant temperature, pressure and volume are inversely proportional.', 'easy'),
  (gen_random_uuid(), 'b1000004-0000-0000-0000-000000000009', 'How many moles are in 44 g of CO2? (Mr of CO2 = 44)', '["44 mol", "2 mol", "1 mol", "0.5 mol"]', 2, 'n = mass / molar mass = 44 / 44 = 1 mole.', 'easy')
ON CONFLICT DO NOTHING;

-- Biology: Nutrition
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000004', 'Where does most digestion and absorption of food occur?', '["Stomach", "Small intestine", "Large intestine", "Mouth"]', 1, 'Most chemical digestion and absorption of nutrients occurs in the small intestine, aided by bile and pancreatic enzymes.', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000004', 'Which enzyme breaks down starch?', '["Pepsin", "Lipase", "Amylase", "Trypsin"]', 2, 'Amylase (produced in saliva and pancreas) catalyses the breakdown of starch into maltose.', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000004', 'A deficiency of Vitamin C leads to:', '["Rickets", "Scurvy", "Night blindness", "Anaemia"]', 1, 'Vitamin C deficiency causes scurvy, characterised by bleeding gums, weakness, and poor wound healing.', 'easy')
ON CONFLICT DO NOTHING;

-- Biology: Photosynthesis
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000010', 'What is the raw material for photosynthesis from the air?', '["Oxygen", "Carbon dioxide", "Nitrogen", "Water vapour"]', 1, 'Plants absorb CO2 from the air through stomata. It is one of the two raw materials for photosynthesis (along with water).', 'easy'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000010', 'Which colour of light is LEAST used in photosynthesis?', '["Red", "Blue", "Green", "Violet"]', 2, 'Chlorophyll absorbs mainly red and blue light. Green light is mostly reflected - which is why plants appear green.', 'medium'),
  (gen_random_uuid(), 'b1000005-0000-0000-0000-000000000010', 'The test for starch uses:', '["Benedict''s solution", "Iodine solution", "Fehling''s solution", "Biuret reagent"]', 1, 'Iodine solution turns blue-black in the presence of starch. This is used to test whether a leaf has been photosynthesising.', 'easy')
ON CONFLICT DO NOTHING;

-- Geography: Rivers
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000005', 'An ox-bow lake is formed by:', '["Glacial erosion", "A meander being cut off", "River deposition at the mouth", "Tectonic activity"]', 1, 'When a river meander bends so sharply that the neck is cut through (usually during floods), the old meander loop is abandoned and forms an ox-bow lake.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000005', 'What type of erosion occurs when rocks in the river knock against each other?', '["Hydraulic action", "Corrasion", "Attrition", "Solution"]', 2, 'Attrition: rocks and sediment particles carried by the river knock against each other, wearing down into smaller, rounder fragments.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000005', 'A V-shaped valley is a feature of which part of a river?', '["Upper course", "Middle course", "Lower course", "At the mouth"]', 0, 'In the upper course, vertical erosion dominates, cutting down into the rock to form steep-sided, V-shaped valleys.', 'easy')
ON CONFLICT DO NOTHING;

-- Geography: Agriculture
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000006', 'Which country is the world largest producer of cocoa?', '["Ghana", "Nigeria", "Cote d''Ivoire", "Cameroon"]', 2, 'Cote d''Ivoire (Ivory Coast) is the world''s largest cocoa producer, followed by Ghana.', 'medium'),
  (gen_random_uuid(), 'b1000006-0000-0000-0000-000000000006', 'Shifting cultivation involves:', '["Growing the same crop every year on the same plot", "Moving to a new plot after exhausting the soil", "Using irrigation all year round", "Keeping animals and growing crops together"]', 1, 'In shifting cultivation, a plot is farmed for 2-3 years, then abandoned to allow the forest to regenerate while the farmer moves to a new area.', 'easy')
ON CONFLICT DO NOTHING;

-- English: Figures of Speech
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000002-0000-0000-0000-000000000007', 'Identify the figure of speech: "The stars danced in the night sky."', '["Simile", "Metaphor", "Personification", "Hyperbole"]', 2, 'Personification gives human qualities (dancing) to non-human things (stars). There is no comparison using "like" or "as".', 'easy'),
  (gen_random_uuid(), 'b1000002-0000-0000-0000-000000000007', '"I have told you a million times" is an example of:', '["Simile", "Irony", "Hyperbole", "Metaphor"]', 2, 'Hyperbole is deliberate exaggeration for emphasis or effect. "A million times" is not literally true.', 'easy'),
  (gen_random_uuid(), 'b1000002-0000-0000-0000-000000000007', 'A simile differs from a metaphor because a simile:', '["Uses the words ''like'' or ''as''", "Gives human qualities to objects", "Exaggerates for effect", "States that one thing is another"]', 0, 'A simile makes a comparison using "like" or "as" (e.g., "brave as a lion"). A metaphor states directly that one thing IS another.', 'easy')
ON CONFLICT DO NOTHING;

-- English: Summary Writing
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000002-0000-0000-0000-000000000006', 'When writing a summary, you should:', '["Copy the best sentences from the passage", "Add your own opinions and examples", "Use your own words to restate main ideas", "Write as long as possible"]', 2, 'A good summary uses your own words to concisely restate the main ideas. You should NOT copy directly or add personal opinions.', 'easy'),
  (gen_random_uuid(), 'b1000002-0000-0000-0000-000000000006', 'Which of the following should be LEFT OUT of a summary?', '["Main argument", "Key conclusions", "Examples used to illustrate a point", "Central theme"]', 2, 'Examples and illustrations are supporting details, not main ideas. Summaries should focus on main arguments and conclusions, not specific examples.', 'medium')
ON CONFLICT DO NOTHING;

-- Further Maths: Integration
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000004', 'Find the integral of 3x^2 dx', '["x^3 + C", "6x + C", "x^3/3 + C", "3x^3 + C"]', 0, 'Using power rule: integral of x^n dx = x^(n+1)/(n+1). So integral of 3x^2 = 3 x x^3/3 + C = x^3 + C.', 'easy'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000004', 'Evaluate the definite integral of x dx from 0 to 2', '["4", "2", "1", "0"]', 1, 'Integral from 0 to 2 of x dx = [x^2/2] from 0 to 2 = 4/2 - 0/2 = 2.', 'easy'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000004', 'The area under a velocity-time graph represents:', '["Speed", "Acceleration", "Distance/Displacement", "Force"]', 2, 'In mechanics, integral of v dt = displacement. The area under a velocity-time graph gives the displacement.', 'medium')
ON CONFLICT DO NOTHING;

-- Further Maths: Permutations and Combinations
INSERT INTO quiz_questions (id, topic_id, question, options, correct_answer, explanation, difficulty) VALUES
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000006', 'In how many ways can 5 books be arranged on a shelf?', '["25", "120", "60", "24"]', 1, '5! = 5 x 4 x 3 x 2 x 1 = 120. This is the number of permutations of 5 distinct items.', 'easy'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000006', 'How many ways can a committee of 3 be chosen from 8 people?', '["56", "336", "24", "512"]', 0, 'C(8,3) = 8! / (3! x 5!) = 56. Order does not matter for a committee, so we use combinations.', 'medium'),
  (gen_random_uuid(), 'b1000007-0000-0000-0000-000000000006', 'The difference between a permutation and a combination is:', '["Permutation uses more items", "In permutation, order matters; in combination, it does not", "Combination is always larger", "They are the same thing"]', 1, 'Permutation: order matters (AB is different from BA). Combination: order does not matter (AB is same as BA). P(n,r) >= C(n,r) always.', 'easy')
ON CONFLICT DO NOTHING;
