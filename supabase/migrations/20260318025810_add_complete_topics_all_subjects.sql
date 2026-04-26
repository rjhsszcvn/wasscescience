/*
  # Add Complete WASSCE Topics for All Subjects

  Expands all 7 subjects from 10 placeholder topics to a full, comprehensive
  list aligned with the official WASSCE/WAEC syllabus.

  ## Changes
  ### Biology
  - Adds: Plant Kingdom, Animal Kingdom, Support & Movement, Growth & Development,
    Disease & Immunity, Evolution, Biotechnology, Practical Skills

  ### Chemistry
  - Adds: Quantitative Chemistry / Stoichiometry, Energetics & Thermochemistry,
    Nitrogen & Sulphur Compounds, Carbon & Hydrocarbons, Polymers & Plastics,
    Industrial Chemistry, Environmental Chemistry, Laboratory Techniques & Safety

  ### English Language
  - Adds: Letter Writing, Report Writing, Narrative & Descriptive Writing,
    Argumentative / Debate Writing, Sentence Structure & Syntax, Vocabulary Building,
    Listening & Speaking Skills, Reading Skills & Inference

  ### Further Mathematics
  - Adds: Sequences & Series (FM), Coordinate Geometry (FM), Conic Sections,
    Numerical Methods, Differential Equations, Linear Programming,
    Statics & Dynamics, Mathematical Induction & Proof

  ### Geography
  - Adds: Landforms & Denudation, Coastal Landforms, Rocks & Minerals,
    West Africa — Physical Geography, West Africa — Human Geography,
    Urbanisation, Economic Geography, Statistical Methods in Geography

  ### Mathematics
  - Adds: Surds & Rational Numbers, Commercial Mathematics (Simple & Compound Interest),
    Fractions, Decimals & Percentages, Linear Graphs & Relations,
    Quadratic Equations & Functions, Variation, Construction & Loci,
    Binary Operations, Logical Reasoning & Proof

  ### Physics
  - Adds: Scalars & Vectors, Projectiles & Circular Motion, Simple Harmonic Motion,
    Thermodynamics & Gas Laws, Electromagnetic Induction & Transformers,
    Electronics & Logic Gates, Gravitational Field, Atomic Structure & Spectra,
    Measurement & Units, Equilibrium of Forces

  ## Notes
  - Uses INSERT … ON CONFLICT DO NOTHING for safety (no duplicates)
  - order_index continues from 11 for all new topics
*/

DO $$
DECLARE
  bio_id uuid;
  chem_id uuid;
  eng_id uuid;
  fm_id uuid;
  geo_id uuid;
  math_id uuid;
  phys_id uuid;
BEGIN
  SELECT id INTO bio_id  FROM subjects WHERE name = 'Biology'              LIMIT 1;
  SELECT id INTO chem_id FROM subjects WHERE name = 'Chemistry'            LIMIT 1;
  SELECT id INTO eng_id  FROM subjects WHERE name = 'English Language'     LIMIT 1;
  SELECT id INTO fm_id   FROM subjects WHERE name = 'Further Mathematics'  LIMIT 1;
  SELECT id INTO geo_id  FROM subjects WHERE name = 'Geography'            LIMIT 1;
  SELECT id INTO math_id FROM subjects WHERE name = 'Mathematics'          LIMIT 1;
  SELECT id INTO phys_id FROM subjects WHERE name = 'Physics'              LIMIT 1;

  -- ──────────── BIOLOGY ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (bio_id, 'Plant Kingdom (Classification)',         'Major divisions of plants: algae, mosses, ferns, gymnosperms, angiosperms', 11),
    (bio_id, 'Animal Kingdom (Classification)',        'Classification of invertebrates and vertebrates with examples', 12),
    (bio_id, 'Support and Movement',                  'Skeletal system, joints, muscles and their roles in locomotion', 13),
    (bio_id, 'Growth and Development',                'Growth patterns, mitosis, meiosis and developmental stages', 14),
    (bio_id, 'Disease and Immunity',                  'Pathogens, immune response, vaccination and public health', 15),
    (bio_id, 'Evolution and Natural Selection',       'Darwinian evolution, adaptation, speciation and evidence', 16),
    (bio_id, 'Biotechnology and Genetics Applications','Cloning, genetic engineering, tissue culture and uses in medicine/agriculture', 17),
    (bio_id, 'Practical Biology Skills',              'Microscopy, dissection, experiments on osmosis, photosynthesis and respiration', 18),
    (bio_id, 'Coordination in Plants',                'Tropisms, plant hormones (auxins) and their effects', 19),
    (bio_id, 'Food Webs and Energy Flow',             'Trophic levels, energy transfer efficiency and nutrient cycling', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── CHEMISTRY ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (chem_id, 'Stoichiometry and Quantitative Chemistry',  'Mole calculations, reacting masses, limiting reagents and yield', 11),
    (chem_id, 'Energetics and Thermochemistry',            'Enthalpy changes, Hess''s law, bond energies and energy diagrams', 12),
    (chem_id, 'Nitrogen and Its Compounds',               'Properties of nitrogen, ammonia, nitric acid and the nitrogen cycle', 13),
    (chem_id, 'Sulphur and Its Compounds',                'Allotropes of sulphur, SO₂, H₂SO₄ and the Contact Process', 14),
    (chem_id, 'Carbon Chemistry and Fuels',               'Allotropes of carbon, fossil fuels, cracking and combustion', 15),
    (chem_id, 'Polymers and Plastics',                    'Addition and condensation polymerisation, uses and environmental impact', 16),
    (chem_id, 'Industrial and Agricultural Chemistry',    'Haber process, fertilisers, soap making and industrial applications', 17),
    (chem_id, 'Environmental Chemistry',                  'Pollution, greenhouse gases, acid rain and water treatment', 18),
    (chem_id, 'Qualitative Analysis',                     'Tests for ions, gases, functional groups and flame tests', 19),
    (chem_id, 'Nuclear Chemistry and Radioactivity',      'Radioactive decay, nuclear equations and applications', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── ENGLISH LANGUAGE ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (eng_id, 'Formal Letter Writing',                 'Structure and conventions of formal and informal letters', 11),
    (eng_id, 'Report Writing',                        'How to write committee, meeting and investigative reports', 12),
    (eng_id, 'Narrative and Descriptive Writing',     'Techniques for vivid storytelling and description', 13),
    (eng_id, 'Argumentative and Debate Writing',      'Structuring arguments, counter-arguments and persuasive language', 14),
    (eng_id, 'Sentence Structure and Syntax',         'Simple, compound and complex sentences; clause analysis', 15),
    (eng_id, 'Vocabulary and Word Formation',         'Prefixes, suffixes, synonyms, antonyms and collocations', 16),
    (eng_id, 'Reading for Inference',                 'Drawing conclusions, implied meanings and critical reading', 17),
    (eng_id, 'Tenses and Verb Forms',                 'All tense forms, active/passive voice and subjunctive mood', 18),
    (eng_id, 'Concord and Agreement',                 'Subject-verb agreement, pronoun reference and agreement rules', 19),
    (eng_id, 'Speech Writing and Presentations',      'Structure of a speech, audience awareness and persuasive devices', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── FURTHER MATHEMATICS ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (fm_id, 'Sequences and Series (FM)',              'Arithmetic and geometric progressions, sum to infinity', 11),
    (fm_id, 'Coordinate Geometry (FM)',               'Circles, parabolas and advanced straight-line problems', 12),
    (fm_id, 'Conic Sections',                         'Equations and properties of ellipses, hyperbolas and parabolas', 13),
    (fm_id, 'Numerical Methods',                      'Newton-Raphson, Simpson''s rule and numerical integration/differentiation', 14),
    (fm_id, 'Differential Equations',                 'First-order ODEs, separation of variables and applications', 15),
    (fm_id, 'Linear Programming',                     'Formulating and solving LP problems graphically and analytically', 16),
    (fm_id, 'Mechanics: Statics',                     'Forces in equilibrium, moments, couples and friction', 17),
    (fm_id, 'Mechanics: Dynamics',                    'Momentum, impulse, projectiles and circular motion', 18),
    (fm_id, 'Mathematical Proof and Induction',       'Direct proof, contradiction, contrapositive and mathematical induction', 19),
    (fm_id, 'Hyperbolic Functions',                   'Definitions, identities and calculus of sinh, cosh, tanh', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── GEOGRAPHY ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (geo_id, 'Landforms and Denudation',              'Weathering, erosion, mass movement and resulting landforms', 11),
    (geo_id, 'Coastal Landforms',                     'Erosional and depositional coastal features and processes', 12),
    (geo_id, 'Rocks and Minerals',                    'Igneous, sedimentary and metamorphic rocks; mineral resources', 13),
    (geo_id, 'West Africa — Physical Geography',      'Relief, drainage, climate zones and vegetation belts of West Africa', 14),
    (geo_id, 'West Africa — Human Geography',         'Population distribution, urbanisation and economic activities', 15),
    (geo_id, 'Urbanisation and Urban Land Use',       'Growth of cities, land-use patterns and urban problems', 16),
    (geo_id, 'Economic Geography',                    'Industry types, manufacturing, energy resources and trade', 17),
    (geo_id, 'Statistical and Graphical Methods',     'Interpretation of graphs, tables, choropleth and climate charts', 18),
    (geo_id, 'Desert and Arid Landforms',             'Wind erosion, deposition and desert landscape features', 19),
    (geo_id, 'Globalisation and Development',         'Trade, development indicators, aid and sustainable development', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── MATHEMATICS ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (math_id, 'Surds and Rational Numbers',            'Simplifying surds, rationalising denominators and exact values', 11),
    (math_id, 'Commercial Mathematics',               'Simple and compound interest, depreciation, hire purchase and tax', 12),
    (math_id, 'Fractions, Decimals and Percentages',  'Operations, conversions and percentage change problems', 13),
    (math_id, 'Linear Graphs and Relations',          'Gradient, y-intercept, equation of a line and distance formula', 14),
    (math_id, 'Quadratic Equations and Functions',    'Factorisation, formula, completing the square and graphs', 15),
    (math_id, 'Variation (Direct, Inverse, Joint)',   'Types of variation, equations and real-world problems', 16),
    (math_id, 'Construction and Loci',                'Geometric constructions, angle bisectors, perpendiculars and loci', 17),
    (math_id, 'Binary Operations and Logical Reasoning', 'Truth tables, logical connectives and binary operations', 18),
    (math_id, 'Bearing and Distances',                'True bearings, compass bearings and distance problems', 19),
    (math_id, 'Transformation Geometry',              'Reflection, rotation, translation, enlargement and combined transformations', 20)
  ON CONFLICT DO NOTHING;

  -- ──────────── PHYSICS ────────────
  INSERT INTO topics (subject_id, name, description, order_index) VALUES
    (phys_id, 'Scalars and Vectors',                  'Addition, subtraction, resolution of vectors and free-body diagrams', 11),
    (phys_id, 'Projectiles and Circular Motion',      'Projectile equations, centripetal force and circular motion problems', 12),
    (phys_id, 'Simple Harmonic Motion',               'Definition, equations, period, frequency and energy in SHM', 13),
    (phys_id, 'Thermodynamics and Gas Laws',          'Boyle''s, Charles'' and combined gas laws, Kelvin scale and PV diagrams', 14),
    (phys_id, 'Electromagnetic Induction',            'Faraday''s and Lenz''s laws, transformers and AC generators', 15),
    (phys_id, 'Electronics and Logic Gates',          'Diodes, transistors, basic logic gates and digital circuits', 16),
    (phys_id, 'Gravitational Fields',                 'Newton''s law of gravitation, g, satellite motion and escape velocity', 17),
    (phys_id, 'Atomic Structure and Spectra',         'Bohr model, emission/absorption spectra and energy levels', 18),
    (phys_id, 'Measurement and Units (SI)',            'SI base units, prefixes, significant figures and experimental errors', 19),
    (phys_id, 'Equilibrium of Forces',                'Conditions for equilibrium, moments, torques and centre of gravity', 20)
  ON CONFLICT DO NOTHING;
END $$;
