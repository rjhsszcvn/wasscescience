
/*
  # Fix Redox topic - add missing section 3
  
  The Oxidation and Reduction (Redox) topic is missing section with order_index = 3.
  This adds the missing "Worked Examples" section to complete the 5-section structure.
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Chemistry';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Oxidation and Reduction (Redox)';

  IF NOT EXISTS (SELECT 1 FROM topic_sections WHERE topic_id = v_topic_id AND order_index = 3) THEN
    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index) VALUES
    (v_topic_id, 'Worked Examples: Redox Reactions and Calculations', $CONTENT$
WORKED EXAMPLES — OXIDATION AND REDUCTION (REDOX)

EXAMPLE 1 — Identifying Oxidation and Reduction:
In the reaction: Zn + CuSO₄ → ZnSO₄ + Cu
(a) What is oxidised and what is reduced?
(b) Identify the oxidising agent and reducing agent.

SOLUTION:
Track the oxidation numbers:
Zn: 0 (element) → +2 (in ZnSO₄): OXIDISED (loses electrons)
Cu: +2 (in CuSO₄) → 0 (element): REDUCED (gains electrons)

(a) Zinc (Zn) is oxidised; Copper (Cu²⁺) is reduced.
(b) Oxidising agent: CuSO₄ / Cu²⁺ (it causes oxidation of Zn by accepting its electrons)
    Reducing agent: Zn (it causes reduction of Cu²⁺ by donating electrons)

Ionic equation: Zn(s) + Cu²⁺(aq) → Zn²⁺(aq) + Cu(s)
Oxidation half-equation: Zn → Zn²⁺ + 2e⁻
Reduction half-equation: Cu²⁺ + 2e⁻ → Cu

EXAMPLE 2 — Oxidation Numbers:
Determine the oxidation number of each element in the following:
(a) KMnO₄    (b) Na₂Cr₂O₇    (c) Fe₃O₄    (d) SO₄²⁻

SOLUTION:
(a) KMnO₄: K = +1 (Group I); O = −2 × 4 = −8; +1 + x − 8 = 0; x = +7
    Mn in KMnO₄ = +7

(b) Na₂Cr₂O₇: Na = +1 × 2 = +2; O = −2 × 7 = −14; +2 + 2x − 14 = 0; 2x = 12; x = +6
    Cr in Na₂Cr₂O₇ = +6

(c) Fe₃O₄: O = −2 × 4 = −8; 3x − 8 = 0; 3x = 8; x = +8/3 = +2.67
    Fe has mixed oxidation states: two Fe³⁺ and one Fe²⁺ (magnetite — mixed iron oxide).

(d) SO₄²⁻: O = −2 × 4 = −8; x − 8 = −2; x = +6
    S in SO₄²⁻ = +6

EXAMPLE 3 — Balancing Redox Equations Using Half-Equations:
Balance the reaction: Cr₂O₇²⁻ + Fe²⁺ → Cr³⁺ + Fe³⁺ (in acidic solution)

SOLUTION:
Step 1: Identify what is oxidised and reduced:
Fe²⁺ → Fe³⁺ (oxidation: Fe loses 1 electron; Fe²⁺ → Fe³⁺ + e⁻)
Cr₂O₇²⁻ → Cr³⁺ (reduction: Cr goes from +6 to +3; each Cr gains 3 electrons)

Step 2: Write half-equations:
Reduction: Cr₂O₇²⁻ + 14H⁺ + 6e⁻ → 2Cr³⁺ + 7H₂O
(Balance O by adding H₂O; balance H by adding H⁺; balance charge by adding electrons)

Oxidation: Fe²⁺ → Fe³⁺ + e⁻ (× 6)
           6Fe²⁺ → 6Fe³⁺ + 6e⁻

Step 3: Add the half-equations (electrons cancel):
Cr₂O₇²⁻ + 14H⁺ + 6e⁻ + 6Fe²⁺ → 2Cr³⁺ + 7H₂O + 6Fe³⁺ + 6e⁻

Final balanced equation:
Cr₂O₇²⁻ + 14H⁺ + 6Fe²⁺ → 2Cr³⁺ + 7H₂O + 6Fe³⁺

Verification:
Charge left: −2 + 14 + 12 = +24; Charge right: +6 + 0 + 18 = +24 ✓
Cr: 2 = 2 ✓; O: 7 = 7 ✓; H: 14 = 14 ✓; Fe: 6 = 6 ✓

EXAMPLE 4 — Displacement Reactions (Redox):
When a piece of iron is placed in copper(II) sulphate solution, a brown coating forms on the iron.
(a) Write ionic and half-equations.
(b) Is this a redox reaction? Explain.

SOLUTION:
(a) Ionic equation: Fe(s) + Cu²⁺(aq) → Fe²⁺(aq) + Cu(s)
    Oxidation half: Fe → Fe²⁺ + 2e⁻
    Reduction half: Cu²⁺ + 2e⁻ → Cu

(b) YES — this is a redox reaction because:
    - Fe loses electrons (is oxidised; oxidation number: 0 → +2)
    - Cu²⁺ gains electrons (is reduced; oxidation number: +2 → 0)
    - Electrons are transferred from Fe to Cu²⁺

This is also why more reactive metals displace less reactive metals from their salt solutions — the more reactive metal is the stronger reducing agent.

EXAMPLE 5 — Electrochemistry as Redox:
In the electrolysis of dilute H₂SO₄:
(a) Write the half-equations at each electrode.
(b) Identify the oxidation and reduction reactions.

SOLUTION:
(a) At cathode (negative electrode): 
    2H⁺ + 2e⁻ → H₂ (hydrogen gas)
    
    At anode (positive electrode):
    2H₂O → O₂ + 4H⁺ + 4e⁻ (oxygen gas)
    OR: 4OH⁻ → O₂ + 2H₂O + 4e⁻

(b) At cathode: H⁺ gains electrons → H₂. This is REDUCTION.
    At anode: H₂O loses electrons → O₂. This is OXIDATION.
    
Overall: 2H₂O → 2H₂ + O₂ (electrolysis of water)
Cathode = REDUCTION; Anode = OXIDATION (remember: CAThode = CATion attracted; ANOde = ANode = ANion attracted / OXidation)
$CONTENT$, 'examples', 3);
  END IF;
END $$;
