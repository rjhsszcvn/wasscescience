
/*
  # Physics Notes: Topic 19 - Measurement and Units (SI)
  5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
  v_content text;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Measurement and Units (SI)';
  
  IF v_topic_id IS NOT NULL THEN

    v_content := 'OVERVIEW: Measurement and Units (SI)

Science is built on measurement. Every physical quantity must be measured in standard, reproducible units so that results can be shared and verified worldwide. The Systeme International d''Unites (SI) -- the International System of Units -- is the globally agreed standard used in all scientific and engineering work.

WHY STANDARDISED UNITS MATTER
Without standard units, communication breaks down and disasters occur. The famous Mars Climate Orbiter (1999) crashed because one engineering team used metric units and another used imperial units -- a $327 million loss. Standard units save lives in medicine, ensure safety in engineering, and enable global scientific collaboration.

THE SEVEN SI BASE UNITS
All other units are derived from these seven base units:

Length:             metre (m)
Mass:               kilogram (kg)
Time:               second (s)
Electric current:   ampere (A)
Temperature:        kelvin (K)
Amount of substance: mole (mol)
Luminous intensity: candela (cd)

DERIVED UNITS
Derived units are combinations of base units:

Force:     Newton (N) = kg m s^-2
Energy:    Joule (J) = kg m^2 s^-2
Power:     Watt (W) = kg m^2 s^-3
Pressure:  Pascal (Pa) = kg m^-1 s^-2
Frequency: Hertz (Hz) = s^-1
Charge:    Coulomb (C) = A s
Voltage:   Volt (V) = kg m^2 s^-3 A^-1

SI PREFIXES (for scaling units)
tera  (T): 10^12   (1 THz = 10^12 Hz)
giga  (G): 10^9    (1 GHz = 10^9 Hz)
mega  (M): 10^6    (1 MW = 10^6 W)
kilo  (k): 10^3    (1 km = 1000 m)
centi (c): 10^-2   (1 cm = 0.01 m)
milli (m): 10^-3   (1 mm = 0.001 m)
micro (mu):10^-6   (1 micrometre = 10^-6 m)
nano  (n): 10^-9   (1 nm = 10^-9 m)
pico  (p): 10^-12  (1 pF = 10^-12 F)

SCALAR vs VECTOR QUANTITIES
Scalar: magnitude only. Examples: mass, temperature, speed, energy, time, distance, volume.
Vector: magnitude AND direction. Examples: velocity, force, acceleration, displacement, momentum, weight.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Overview: Measurement and Units (SI)', v_content, 'overview', 1);

    v_content := 'KEY DEFINITIONS: Measurement and Error

Physical Quantity: Any property that can be measured and expressed as a number multiplied by a unit. E.g., length = 5.0 m, mass = 2.3 kg.

SI (Systeme International): The international standard system of units adopted worldwide for science and engineering.

Base Unit: One of the 7 fundamental SI units that cannot be defined in terms of other SI units.

Derived Unit: A unit expressed as a combination of base units. E.g., Newton = kg m s^-2; Joule = kg m^2 s^-2.

Dimension: The type of physical quantity expressed using base quantities: Length [L], Mass [M], Time [T], Current [I], Temperature [theta].

Dimensional Analysis: Using dimensions to check equations and derive relationships. Both sides of a valid equation MUST have the same dimensions.

Dimensionally Consistent: An equation where both sides have the same dimensions. This is a necessary (but not sufficient) condition for a correct equation.

Scalar Quantity: Has magnitude only, no direction. E.g., mass, temperature, speed, distance.

Vector Quantity: Has both magnitude AND direction. E.g., force, velocity, displacement, acceleration.

Measurement Error: The difference between a measured value and the true (accepted) value.

Systematic Error: Error that consistently affects ALL measurements in the same direction (always too high or always too low). Caused by faulty equipment or poor technique. Cannot be reduced by averaging. Examples: zero error, parallax error, calibration error.

Random Error: Error that varies unpredictably in direction and magnitude between measurements. Can be reduced by taking multiple readings and averaging. Examples: reaction time, reading fluctuations, environmental disturbances.

Precision: How closely repeated measurements agree with each other. High precision means small RANDOM error.

Accuracy: How close measurements are to the TRUE value. High accuracy means small SYSTEMATIC error.

Significant Figures (s.f.): The meaningful digits in a measurement.
- All non-zero digits are significant.
- Zeros between non-zero digits are significant (e.g., 4.06 has 3 s.f.)
- Leading zeros are NOT significant (e.g., 0.0023 has 2 s.f.)
- Trailing zeros after decimal point ARE significant (e.g., 2.300 has 4 s.f.)

Zero Error: A systematic error where an instrument reads non-zero when it should read zero. Must be corrected before taking measurements.

Parallax Error: Systematic error from reading a scale at an angle rather than directly in line with the pointer or meniscus.

Uncertainty: The range within which the true value is expected to lie. Written as value +/- uncertainty. E.g., 5.6 +/- 0.1 cm.

Vernier Calliper: Instrument measuring lengths to 0.1 mm precision. Has main scale and vernier scale.

Micrometer Screw Gauge: Instrument measuring small lengths to 0.01 mm precision. Has sleeve and rotating thimble.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Key Definitions: Measurement and Error', v_content, 'definitions', 2);

    v_content := 'DEEP EXPLANATION: Errors, Dimensional Analysis and Instruments

DIMENSIONAL ANALYSIS
Every physical quantity has DIMENSIONS expressed in base quantities [M], [L], [T], [I], [theta].

Important derived dimensions:
Velocity:      [L][T]^-1          = m/s
Acceleration:  [L][T]^-2          = m/s^2
Force:         [M][L][T]^-2       = kg m/s^2 = N
Energy:        [M][L]^2[T]^-2     = kg m^2/s^2 = J
Pressure:      [M][L]^-1[T]^-2   = kg/(m s^2) = Pa
Power:         [M][L]^2[T]^-3     = kg m^2/s^3 = W

CHECKING EQUATIONS WITH DIMENSIONS
Both sides of any valid physical equation must have the same dimensions.

Example -- Check v^2 = u^2 + 2as:
Left: [v^2] = [L]^2[T]^-2
Right: [u^2 + 2as] = [L]^2[T]^-2 + [L][T]^-2 x [L] = [L]^2[T]^-2 + [L]^2[T]^-2 = [L]^2[T]^-2
Both sides match. The equation is dimensionally consistent.

Important limitation: Dimensional analysis CANNOT determine dimensionless constants (like 2, pi, 1/2). It only tells you the FORM of the relationship. For example, both E = mv^2 and E = (1/2)mv^2 are dimensionally consistent, but only the latter is correct.

SYSTEMATIC vs RANDOM ERRORS
Systematic errors affect all measurements by the same amount in the same direction.
- Zero error example: scale reads 2g when empty -- ALL readings are 2g too high. Correction: subtract 2g from every reading.
- Parallax example: always reading from the side causes all readings to be too high or too low.
- How to identify: repeat measurements -- they are all wrong by the same amount.
- How to reduce: check zero before measuring, calibrate instruments, use correct technique.

Random errors vary unpredictably.
- Reaction time: sometimes press stopwatch early, sometimes late.
- Reading fluctuations: digital readings may flicker, analogue readings hard to read exactly.
- How to identify: measurements scattered both above and below true value.
- How to reduce: take n measurements and find the mean. Error reduces by factor 1/sqrt(n).

SIGNIFICANT FIGURES IN DETAIL
Rules:
1. All non-zero digits: significant. (e.g., 123 = 3 s.f.)
2. Zeros between non-zeros: significant. (e.g., 1.203 = 4 s.f.)
3. Leading zeros: NOT significant. (e.g., 0.0045 = 2 s.f.)
4. Trailing zeros after decimal: significant. (e.g., 1.200 = 4 s.f.)
5. Trailing zeros without decimal: ambiguous. (e.g., 1200 = 2, 3, or 4 s.f. -- use scientific notation to clarify)

Calculation rules:
- Multiply/divide: answer has same s.f. as LEAST precise input.
- Add/subtract: answer has same DECIMAL PLACES as least precise input.

Example: 4.52 g / 1.8 cm^3 = 2.511... g/cm^3
Least precise: 1.8 (2 s.f.) -- answer: 2.5 g/cm^3 (2 s.f.)

READING A VERNIER CALLIPER
1. Read the MAIN SCALE: the millimetre mark just BEFORE the zero line of the vernier scale.
2. Read the VERNIER SCALE: find which vernier division aligns exactly with a main scale division.
3. Total = main scale reading + (vernier reading x 0.1 mm)

Example: main scale = 23 mm, vernier division 6 aligns
Reading = 23 + (6 x 0.1) = 23 + 0.6 = 23.6 mm

READING A MICROMETER SCREW GAUGE
1. Read SLEEVE: the last 0.5 mm mark visible on the horizontal scale.
2. Read THIMBLE: the number on the rotating drum aligned with the horizontal line.
3. Total = sleeve + (thimble x 0.01 mm)

Example: sleeve = 7.5 mm, thimble = 23
Reading = 7.5 + (23 x 0.01) = 7.5 + 0.23 = 7.73 mm

Zero error check: Close micrometer on nothing. If it reads 0.02 mm, subtract 0.02 from all readings.

STANDARD FORM (SCIENTIFIC NOTATION)
Express very large or small numbers as A x 10^n where 1 <= A < 10.
Speed of light: 300,000,000 m/s = 3.0 x 10^8 m/s
Electron mass: 0.000000000000000000000000000000911 kg = 9.11 x 10^-31 kg
Planck constant: h = 6.63 x 10^-34 J s
Avogadro number: 6.022 x 10^23 per mole

CONVERTING UNITS
1. Identify the conversion factor
2. Multiply by the correct form of 1 (e.g., 1000 m/1 km = 1)
3. Cancel units
Example: 72 km/h to m/s: 72 km/h x (1000 m/1 km) x (1 h/3600 s) = 72000/3600 = 20 m/s';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Deep Explanation: Errors, Dimensional Analysis and Instruments', v_content, 'explanation', 3);

    v_content := 'WORKED EXAMPLES: Measurement and SI Units

EXAMPLE 1: Converting Units
Question: Convert (a) 90 km/h to m/s, (b) 750 g to kg, (c) 5.0 x 10^-3 m to mm, (d) 3.6 MJ to kJ.

Solution:
(a) 90 km/h = 90 / 3.6 = 25 m/s
    (Divide km/h by 3.6 to get m/s -- or multiply by 1000/3600)

(b) 750 g = 750 / 1000 = 0.750 kg

(c) 5.0 x 10^-3 m x (1000 mm / 1 m) = 5.0 x 10^-3 x 10^3 = 5.0 mm

(d) 3.6 MJ = 3.6 x 10^6 J = 3600 x 10^3 J = 3600 kJ

---

EXAMPLE 2: Dimensional Analysis -- Verify an Equation
Question: Show that P = rho g h is dimensionally correct. (P = pressure, rho = density, g = acceleration, h = height)

Solution:
Left side: [P] = [M][L]^-1[T]^-2

Right side:
[rho] = [M][L]^-3 (density = mass/volume)
[g] = [L][T]^-2 (acceleration)
[h] = [L]

[rho g h] = [M][L]^-3 x [L][T]^-2 x [L]
          = [M][L]^(-3+1+1)[T]^-2
          = [M][L]^-1[T]^-2

Both sides = [M][L]^-1[T]^-2. The equation is dimensionally consistent.

---

EXAMPLE 3: Deriving a Relationship
Question: The period T of a pendulum depends on its length L and g. Use dimensional analysis to derive the relationship.

Solution:
Assume T = k x L^a x g^b where k is dimensionless.
[T] = [L]^a x [L T^-2]^b
[T] = [L]^(a+b) x [T]^(-2b)

Comparing powers:
Time: 1 = -2b, so b = -1/2
Length: 0 = a + b = a - 1/2, so a = 1/2

Therefore: T = k x L^(1/2) x g^(-1/2) = k x sqrt(L/g)

The correct formula is T = 2 pi x sqrt(L/g). Dimensional analysis gives the form but not the constant 2 pi.

---

EXAMPLE 4: Error Analysis
Question: A student measures the time for 20 oscillations five times: 18.4, 18.6, 18.5, 18.3, 18.6 seconds. Calculate (a) mean, (b) uncertainty, (c) period with uncertainty.

Solution:
(a) Mean = (18.4 + 18.6 + 18.5 + 18.3 + 18.6) / 5
    Mean = 92.4 / 5 = 18.48 s

(b) Range = 18.6 - 18.3 = 0.3 s
    Uncertainty = range / 2 = 0.15 s, so approximately +/- 0.2 s

(c) Time for 20 oscillations = 18.5 +/- 0.2 s
    Period T = 18.5 / 20 = 0.925 s
    Uncertainty in T = 0.2 / 20 = 0.01 s
    Period: T = 0.93 +/- 0.01 s

---

EXAMPLE 5: Significant Figures
Question: Calculate (a) 4.52 x 2.1, (b) 12.6 + 1.35 + 0.2, (c) 0.00340 x 10^3, giving answers with correct s.f.

Solution:
(a) 4.52 x 2.1 = 9.492
Least s.f. = 2 (the 2.1). Answer: 9.5 (2 s.f.)

(b) 12.6 + 1.35 + 0.2 = 14.15
Least decimal places = 1 (the 12.6 and 0.2). Answer: 14.2 (1 decimal place)

(c) 0.00340 = 3.40 x 10^-3 (3 s.f. -- trailing zero after decimal is significant)
3.40 x 10^-3 x 10^3 = 3.40 (3 s.f.)

---

EXAMPLE 6: Vernier Calliper Reading
Question: On a vernier calliper, the main scale reads 32 mm and the 8th vernier division aligns with a main scale line. What is the measurement?

Solution:
Reading = main scale + (vernier reading x 0.1 mm)
Reading = 32 + (8 x 0.1) = 32 + 0.8 = 32.8 mm';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Worked Examples: Units, Dimensions and Errors', v_content, 'examples', 4);

    v_content := 'WASSCE PAST QUESTIONS AND PRACTICE: Measurement and SI Units

WASSCE 2022
Question: (a) Distinguish between systematic error and random error. (b) Five readings of a length: 4.52, 4.55, 4.53, 4.54, 4.51 cm. Calculate (i) mean, (ii) uncertainty.

Model Answer:
(a) A systematic error consistently affects all measurements in the same direction (always too high or too low) due to faulty equipment or technique. It cannot be reduced by averaging.
A random error varies unpredictably between measurements and can be reduced by taking more readings and averaging.

(b)(i) Mean = (4.52 + 4.55 + 4.53 + 4.54 + 4.51) / 5 = 22.65 / 5 = 4.53 cm

(ii) Range = 4.55 - 4.51 = 0.04 cm
Uncertainty = 0.04 / 2 = +/- 0.02 cm
Result: 4.53 +/- 0.02 cm

---

WASSCE 2021
Question: (a) State the difference between scalar and vector quantities, giving one example of each. (b) Write the SI base unit equivalent for (i) force, (ii) pressure, (iii) energy.

Model Answer:
(a) A scalar quantity has magnitude only (e.g., mass in kg).
A vector quantity has both magnitude and direction (e.g., velocity in m/s north).

(b)(i) Force: kg m s^-2 (Newton)
(ii) Pressure: kg m^-1 s^-2 (Pascal)
(iii) Energy: kg m^2 s^-2 (Joule)

---

WASSCE 2020
Question: Show by dimensional analysis that v = sqrt(2gh) is dimensionally consistent. v = speed, g = gravitational acceleration, h = height.

Model Answer:
Left: [v] = [LT^-1], so [v^2] = [L^2 T^-2]
Right: [2gh] = [LT^-2][L] = [L^2 T^-2] (2 is dimensionless)
sqrt(2gh): [L^2 T^-2]^(1/2) = [LT^-1]

Both sides have dimensions [LT^-1]. The equation is dimensionally consistent.

---

WASSCE 2018
Question: Convert the following: (a) 108 km/h to m/s, (b) 0.045 kg to grams, (c) 2.5 x 10^-4 m to cm.

Model Answer:
(a) 108 km/h = 108 / 3.6 = 30 m/s
(b) 0.045 kg x 1000 = 45 g
(c) 2.5 x 10^-4 m x 100 cm/m = 2.5 x 10^-2 cm = 0.025 cm

---

PRACTICE QUESTIONS

Q1: State the number of significant figures in: (a) 0.0450; (b) 2300.; (c) 3.00 x 10^4.
[Answer: (a) 3 s.f. (4, 5, 0 -- leading zeros not significant, trailing zero after decimal is); (b) 4 s.f. (the decimal point indicates all digits are significant); (c) 3 s.f.]

Q2: Write correct SI prefixes: (a) 0.000001 m; (b) 1,000,000 W; (c) 0.001 s.
[Answer: (a) 1 micrometre (1 mu m); (b) 1 megawatt (1 MW); (c) 1 millisecond (1 ms)]

Q3: Identify systematic or random: (a) a balance that reads 3g when empty; (b) varying reaction time with stopwatch.
[Answer: (a) Systematic error (zero error); (b) Random error]

Q4: Calculate density: mass = 4.50 g, volume = 1.5 cm^3. Give correct s.f.
[rho = 4.50 / 1.5 = 3.0 g/cm^3 (2 s.f. -- limited by 1.5 which has 2 s.f.)]

Q5: The period of a pendulum is measured as 2.04 +/- 0.02 s. The length is 1.03 +/- 0.01 m. State the meaning of the uncertainty 0.02 s.
[Answer: The true period lies within the range 2.02 s to 2.06 s. The measurement might be as low as 2.02 s or as high as 2.06 s due to random and systematic errors in the measurement process.]

Q6: State THREE base SI units with their symbols and the physical quantities they measure.
[Answer: metre (m) for length; kilogram (kg) for mass; second (s) for time; ampere (A) for electric current; kelvin (K) for temperature -- any three accepted]';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'WASSCE Practice: Measurement and Units', v_content, 'practice', 5);

  END IF;
END $$;
