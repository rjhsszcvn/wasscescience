
/*
  # Physics Notes: Topic 16 - Electronics and Logic Gates
  5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
  v_content text;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Electronics and Logic Gates';
  
  IF v_topic_id IS NOT NULL THEN

    v_content := 'OVERVIEW: Electronics and Logic Gates

Electronics deals with controlling electrons to process and transmit information. Modern digital systems — computers, calculators, smartphones — rely on logic gates: electronic switches that process binary (0 or 1) signals.

THE BINARY NUMBER SYSTEM
All digital electronics use binary — only two digits: 0 (LOW, off) and 1 (HIGH, on). Electronic switches have only two stable states: open (no current) or closed (current flows).

SEMICONDUCTORS
Semiconductors like silicon and germanium have conductivity between conductors and insulators. Their conductivity is controlled by:
- Temperature: conductivity increases with temperature (opposite of metals)
- Doping: adding impurities creates n-type (electron-rich) or p-type (hole-rich) material

THE p-n JUNCTION DIODE
A diode is formed by joining p-type and n-type semiconductor. It allows current in ONE direction only:
- Forward bias (p-side positive): diode conducts
- Reverse bias (p-side negative): diode blocks current

Applications: rectification (AC to DC conversion), LEDs, photodiodes, solar cells.

RECTIFICATION
Half-wave rectifier: One diode; only positive half-cycles pass through. Output is pulsating DC.
Full-wave rectifier: Four diodes in bridge configuration; both half-cycles used. Smoother DC output.
Smoothing: A capacitor in parallel with the load reduces the ripple and smooths the output.

THE TRANSISTOR (BJT)
Three terminals: Base (B), Collector (C), Emitter (E). It acts as:
1. A SWITCH: Small base current controls large collector current (ON/OFF control)
2. AN AMPLIFIER: Small input signal produces large output signal

As a switch:
- Base current = 0: transistor OFF, output HIGH (logic 1)
- Base current above threshold: transistor ON (saturated), output LOW (logic 0)

WASSCE FOCUS AREAS
- Truth tables for AND, OR, NOT, NAND, NOR, XOR gates
- Identifying gates from circuit symbols
- Designing logic circuits for real-world situations
- Transistor calculations (current gain, emitter current)
- Diodes and rectification principles';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Overview: Electronics and Logic Gates', v_content, 'overview', 1);

    v_content := 'KEY DEFINITIONS: Electronics and Logic Gates

Logic Gate: An electronic circuit performing a Boolean (logical) operation on binary inputs to produce one binary output.

Truth Table: A table showing all possible input combinations and their corresponding outputs for a logic gate.

AND Gate: Outputs 1 ONLY when ALL inputs are 1. Symbol: flat-backed D-shape.
OR Gate: Outputs 1 when AT LEAST ONE input is 1. Symbol: curved-backed D-shape.
NOT Gate (Inverter): ONE input; output is the OPPOSITE (complement). Symbol: triangle with circle at tip.
NAND Gate: NOT-AND. Outputs 0 ONLY when all inputs are 1. Universal gate.
NOR Gate: NOT-OR. Outputs 1 ONLY when all inputs are 0. Universal gate.
XOR Gate (Exclusive OR): Outputs 1 when inputs are DIFFERENT. Used in binary adders.
XNOR Gate: Outputs 1 when inputs are THE SAME. Complement of XOR.

Boolean Algebra: Mathematical notation for logic.
- AND written as A.B or AB
- OR written as A+B
- NOT written as A-bar (A with overline)

Transistor: Three-terminal semiconductor device (Base, Collector, Emitter) used as switch or amplifier.
Diode: Two-terminal device (anode, cathode) permitting current in one direction only.
Forward Bias: P-side at higher potential than N-side; diode conducts.
Reverse Bias: N-side at higher potential; diode blocks current.
Rectification: Converting AC to DC using diodes.
Amplification: Increasing the amplitude of a signal using a transistor.
Current Gain (beta): beta = Ic / Ib (collector current divided by base current).
Universal Gate: A gate from which ALL other gates can be constructed (NAND or NOR).
Digital Signal: Signal with only two discrete values: 0 or 1.
Analogue Signal: Signal that varies continuously over a range of values.
Integrated Circuit (IC): Miniaturised circuit with many transistors and gates on one chip.
Emitter Current: Ie = Ic + Ib (emitter current equals collector plus base current).';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Key Definitions: Electronics Terms', v_content, 'definitions', 2);

    v_content := 'DEEP EXPLANATION: Logic Gates and Their Applications

THE SEVEN STANDARD LOGIC GATES

1. NOT Gate (Inverter)
One input, one output. Reverses the input.
Input A = 0 gives Output = 1
Input A = 1 gives Output = 0
Real analogy: A light on when switch is DOWN and off when switch is UP.

2. AND Gate (2-input)
Output is 1 ONLY when BOTH inputs are 1.
A=0, B=0: Output=0
A=0, B=1: Output=0
A=1, B=0: Output=0
A=1, B=1: Output=1
Real analogy: A burglar alarm that rings only when BOTH door is open AND it is night-time.

3. OR Gate (2-input)
Output is 1 when AT LEAST ONE input is 1.
A=0, B=0: Output=0
A=0, B=1: Output=1
A=1, B=0: Output=1
A=1, B=1: Output=1
Real analogy: Hotel door opens with EITHER guest key OR master key.

4. NAND Gate
Opposite of AND. Only 0 when both inputs are 1.
A=0, B=0: Output=1
A=0, B=1: Output=1
A=1, B=0: Output=1
A=1, B=1: Output=0
NAND is universal: all other gates can be built using only NAND gates.
  NOT from NAND: connect both inputs together (A NAND A gives NOT A)
  AND from NAND: NAND followed by NOT
  OR from NAND: invert both inputs individually, then NAND them

5. NOR Gate
Opposite of OR. Only 1 when both inputs are 0.
A=0, B=0: Output=1
A=0, B=1: Output=0
A=1, B=0: Output=0
A=1, B=1: Output=0
NOR is also universal — any gate can be built from NOR gates alone.

6. XOR Gate (Exclusive OR)
Output 1 only when inputs are DIFFERENT.
A=0, B=0: Output=0
A=0, B=1: Output=1
A=1, B=0: Output=1
A=1, B=1: Output=0
Application: The sum bit in a binary half-adder. The AND gate gives the carry bit.

7. XNOR Gate
Output 1 only when inputs are THE SAME.
A=0, B=0: Output=1
A=0, B=1: Output=0
A=1, B=0: Output=0
A=1, B=1: Output=1

COMBINING GATES
For gates in series, work left-to-right one gate at a time.
Example: AND gate followed by NOT gate (produces NAND):
A=1, B=1: AND gives 1, NOT gives 0 (final answer: 0)
A=1, B=0: AND gives 0, NOT gives 1 (final answer: 1)

TRANSISTOR AS SWITCH
NPN transistor switch circuit:
- Base current = 0: collector-emitter path open, output = Vcc (logic HIGH = 1)
- Base current above threshold: collector-emitter saturated, output = 0V (logic LOW = 0)
Two transistors in series form a NAND gate.
Two transistors in parallel form a NOR gate.

PRACTICAL APPLICATIONS
1. Security: Alarm = (motion sensor AND night-time) OR (window broken)
2. Greenhouse: Pump ON when temperature HIGH AND humidity LOW
3. Lift: Door opens when (button pressed) AND (lift at correct floor)
4. Computer: Binary addition with XOR (sum bit) and AND (carry bit)
5. Medicine: Alert when heart rate too HIGH OR too LOW';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Deep Explanation: All Logic Gates with Truth Tables', v_content, 'explanation', 3);

    v_content := 'WORKED EXAMPLES: Electronics and Logic Gates

EXAMPLE 1: Combined Gates Truth Table
Question: A NAND gate feeds into a NOT gate. Complete the truth table.

Solution:
Step 1 - NAND output:
A=0, B=0: NAND output = 1
A=0, B=1: NAND output = 1
A=1, B=0: NAND output = 1
A=1, B=1: NAND output = 0

Step 2 - NOT of NAND output:
NAND=1: NOT gives 0
NAND=1: NOT gives 0
NAND=1: NOT gives 0
NAND=0: NOT gives 1

Final: A=0,B=0 gives Q=0; A=0,B=1 gives Q=0; A=1,B=0 gives Q=0; A=1,B=1 gives Q=1.
This is an AND gate! NAND + NOT = AND.

---

EXAMPLE 2: Identify the Gate
Question: A gate has this behaviour: output is 0 only when both inputs are 1.
Answer: NAND gate. (Output is 1 for all combinations EXCEPT when both inputs are 1.)

---

EXAMPLE 3: Logic Circuit Design
Question: Design a circuit that activates an alarm (Q=1) when a car door is OPEN (D=1) AND engine is RUNNING (E=1).

Solution: Q = D AND E
Use an AND gate with D and E as inputs. Output Q drives the alarm.
Truth table verification:
D=0, E=0: Q=0 (no alarm — door closed, engine off)
D=0, E=1: Q=0 (no alarm — door closed, engine running)
D=1, E=0: Q=0 (no alarm — door open, engine off)
D=1, E=1: Q=1 (ALARM — door open while engine running)

---

EXAMPLE 4: Greenhouse Watering Design
Question: Pump activates when temperature HIGH (T=1) AND humidity LOW (H=0, i.e., NOT H = 1).

Solution: Q = T AND (NOT H)
Connect H to a NOT gate; feed T and NOT-H into an AND gate.
Verification:
T=1, H=0: NOT H=1, Q = 1 AND 1 = 1 (pump ON — correct!)
T=1, H=1: NOT H=0, Q = 1 AND 0 = 0 (pump off — humidity already high)
T=0, H=0: NOT H=1, Q = 0 AND 1 = 0 (pump off — not hot enough)

---

EXAMPLE 5: Transistor Calculations
Question: A transistor has Ib = 0.04 mA and current gain beta = 200. Find (a) collector current Ic, (b) emitter current Ie.

Solution:
(a) Ic = beta x Ib = 200 x 0.04 mA = 8 mA
(b) Ie = Ic + Ib = 8 + 0.04 = 8.04 mA

---

EXAMPLE 6: XOR Half-Adder
Question: Show how XOR and AND gates perform binary addition.

When adding two 1-bit numbers:
0 + 0 = 00 (sum=0, carry=0): XOR gives 0, AND gives 0 -- correct
0 + 1 = 01 (sum=1, carry=0): XOR gives 1, AND gives 0 -- correct
1 + 0 = 01 (sum=1, carry=0): XOR gives 1, AND gives 0 -- correct
1 + 1 = 10 (sum=0, carry=1): XOR gives 0, AND gives 1 -- correct

XOR provides the sum bit; AND provides the carry bit. This is a half-adder circuit.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Worked Examples: Logic Gates Problems', v_content, 'examples', 4);

    v_content := 'WASSCE PAST QUESTIONS AND PRACTICE: Electronics and Logic Gates

WASSCE 2019
Question: A circuit has a NAND gate with inputs A and B, followed by a NOT gate. Copy and complete the truth table and name the equivalent single gate.

Answer:
A=0, B=0: NAND=1, NOT of NAND = 0
A=0, B=1: NAND=1, NOT of NAND = 0
A=1, B=0: NAND=1, NOT of NAND = 0
A=1, B=1: NAND=0, NOT of NAND = 1
Equivalent gate: AND gate

---

WASSCE 2021
Question: (a) State one difference between digital and analogue signals. (b) Name the gate whose output is 1 only when inputs are different. (c) State what is meant by a universal gate.

Answer:
(a) A digital signal has only two discrete values (0 or 1); an analogue signal varies continuously over a range.
(b) XOR gate (Exclusive OR gate)
(c) A universal gate (NAND or NOR) can be used to construct any other logic gate. All other gates can be built from NAND alone or NOR alone.

---

WASSCE 2020 -- Transistor Switch
Question: Supply voltage 6V, collector resistor 1000 ohms. Transistor is fully saturated (ON). Calculate collector current.

Answer:
Voltage across saturated transistor = approximately 0V
Voltage across collector resistor = 6 - 0 = 6V
Ic = V/R = 6/1000 = 0.006 A = 6 mA

---

WASSCE 2018 -- Logic Design
Question: A fire alarm activates (Q=1) when EITHER smoke is detected (S=1) OR temperature exceeds 70 degrees C (T=1). Write Boolean expression and name the gate.

Answer:
Boolean expression: Q = S + T (OR operation)
Gate: OR gate with inputs S and T
Truth table shows Q=0 only when both S=0 and T=0.

---

PRACTICE QUESTIONS

Q1: What is the output of a NOR gate when A=0 and B=0?
[Answer: 1 -- NOR outputs 1 only when both inputs are 0]

Q2: Which gate outputs 0 only when both inputs are 1?
[Answer: NAND gate]

Q3: A transistor has beta=150 and Ib=0.02 mA. Find collector current Ic.
[Answer: Ic = beta x Ib = 150 x 0.02 = 3 mA]

Q4: State TWO advantages of digital signals over analogue signals.
[Answer: (1) Much less susceptible to noise and interference; (2) Can be stored, copied, and transmitted without signal degradation]

Q5: Name both universal gates and explain why they are called universal.
[Answer: NAND and NOR are universal gates because ANY other logic gate can be built using only NAND gates or only NOR gates.]

Q6: An OR gate has inputs A and B. If A=1 and B=0, what is the output? Explain.
[Answer: Output = 1, because OR gives 1 when AT LEAST ONE input is 1, and A=1 satisfies this condition.]

Q7: Design a logic circuit for an ATM that dispenses cash only when (card is valid AND PIN is correct).
[Answer: Use an AND gate with Card Valid (C) and PIN Correct (P) as inputs. Output drives cash dispenser. Q = C AND P.]';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'WASSCE Practice: Electronics and Logic Gates', v_content, 'practice', 5);

  END IF;
END $$;
