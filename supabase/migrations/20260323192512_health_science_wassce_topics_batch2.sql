/*
  # Health Science WASSCE Topics Batch 2 (Topics 11-20)

  Topics:
  11. Growth and Development
  12. Human Genetics and Hereditary Diseases
  13. Epidemiology and Disease Prevention
  14. Oral Health
  15. Eye and Ear Health
  16. Community Health Nursing
  17. School Health Programme
  18. Sexuality and Adolescent Health
  19. Health Systems and Services
  20. Global Health Issues and SDGs
*/

INSERT INTO topics (subject_id, name, description, content, order_index) VALUES

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Growth and Development',
 'Stages of human development, growth patterns, developmental milestones, and factors affecting growth',
 '<h2>Growth and Development</h2>

<h3>11.1 Key Concepts</h3>
<ul>
  <li><strong>Growth:</strong> Increase in size, height, weight, and organ development; measurable and quantitative</li>
  <li><strong>Development:</strong> Progressive increase in skill and complexity of function; maturation of body and mind</li>
  <li>Growth and development proceed from head to foot (cephalocaudal) and from centre to extremities (proximodistal)</li>
</ul>

<h3>11.2 Stages of Human Development</h3>

<h4>Prenatal Period (conception to birth)</h4>
<ul>
  <li>Germinal (0-2 weeks): fertilisation, implantation</li>
  <li>Embryonic (2-8 weeks): major organs form; most vulnerable period (teratogens cause most damage here)</li>
  <li>Foetal (8 weeks to birth): growth and maturation of organs</li>
</ul>

<h4>Infancy (0-2 years)</h4>
<ul>
  <li>Fastest period of growth after birth</li>
  <li>Birth weight typically doubles by 5 months, triples by 1 year</li>
  <li>Milestones: smiling (6 weeks), sitting (6 months), walking (12-15 months), first words (12 months)</li>
  <li>Exclusive breastfeeding recommended for first 6 months</li>
</ul>

<h4>Early Childhood (2-6 years)</h4>
<ul>
  <li>Growth slows; motor skills develop rapidly</li>
  <li>Language development, socialisation, toilet training</li>
  <li>Imaginative play; begins school readiness</li>
</ul>

<h4>Middle Childhood (6-12 years)</h4>
<ul>
  <li>Steady, slow growth; permanent teeth replace deciduous teeth</li>
  <li>Logical thinking develops; reading and writing; peer relationships important</li>
</ul>

<h4>Adolescence (12-18 years)</h4>
<ul>
  <li>Puberty: rapid physical growth and sexual maturation</li>
  <li>Formal operational thinking develops</li>
  <li>Identity formation; peer pressure; risk-taking behaviour</li>
  <li>Second fastest growth period after infancy</li>
</ul>

<h4>Early Adulthood (18-40 years)</h4>
<ul>
  <li>Physical peak in 20s; reproductive prime</li>
  <li>Career establishment, intimate relationships, starting families</li>
</ul>

<h4>Middle Adulthood (40-65 years)</h4>
<ul>
  <li>Physical changes: menopause in women, reduced fertility in men</li>
  <li>Chronic diseases may begin; wisdom and experience increase</li>
</ul>

<h4>Late Adulthood (65+ years)</h4>
<ul>
  <li>Physiological decline: reduced organ function, loss of bone density, reduced immune function</li>
  <li>Common conditions: osteoporosis, arthritis, dementia, cardiovascular disease</li>
</ul>

<h3>11.3 Factors Affecting Growth and Development</h3>
<ul>
  <li><strong>Genetic factors:</strong> Height, body type, and timing of puberty are partly genetically determined</li>
  <li><strong>Nutrition:</strong> Adequate calories, protein, vitamins, minerals essential for growth</li>
  <li><strong>Hormones:</strong> Growth hormone, thyroid hormone, sex hormones regulate growth</li>
  <li><strong>Socioeconomic factors:</strong> Poverty, food insecurity limit growth</li>
  <li><strong>Disease:</strong> Chronic illness and recurrent infections impair growth</li>
  <li><strong>Physical activity:</strong> Regular exercise promotes bone density and muscle development</li>
  <li><strong>Psychosocial environment:</strong> Loving, stimulating environment promotes optimal development</li>
</ul>

<h3>11.4 Assessing Growth in Children</h3>
<ul>
  <li>Growth charts: plot weight, height, and head circumference against age</li>
  <li>Weight-for-age: general nutritional status</li>
  <li>Height-for-age: stunting (chronic malnutrition) if below 2 SD from mean</li>
  <li>Weight-for-height: wasting (acute malnutrition) if very low</li>
  <li>BMI-for-age: overweight and obesity in children</li>
</ul>',
 11),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Human Genetics and Hereditary Diseases',
 'Inheritance patterns, genetic disorders, genetic counselling, and chromosomal abnormalities',
 '<h2>Human Genetics and Hereditary Diseases</h2>

<h3>12.1 Genetics Review</h3>
<ul>
  <li>Humans have 46 chromosomes (23 pairs) in each somatic cell</li>
  <li>23 pairs: 22 pairs of autosomes + 1 pair of sex chromosomes (XX female, XY male)</li>
  <li>Genes are segments of DNA that code for specific traits</li>
  <li>Alleles: different forms of the same gene</li>
  <li>Dominant allele expressed over recessive</li>
</ul>

<h3>12.2 Patterns of Inheritance</h3>

<h4>Autosomal Dominant</h4>
<ul>
  <li>One copy of dominant allele is enough to express the condition</li>
  <li>Affected parent has 50% chance of passing condition to each child</li>
  <li>Examples: Huntington disease, Marfan syndrome, familial hypercholesterolaemia</li>
</ul>

<h4>Autosomal Recessive</h4>
<ul>
  <li>Two copies of recessive allele needed to express the condition</li>
  <li>Carriers (heterozygous) are usually unaffected</li>
  <li>Both parents must be carriers; 25% chance of affected child per pregnancy</li>
  <li>Examples: Sickle cell disease, cystic fibrosis, PKU, albinism</li>
</ul>

<h4>X-Linked Recessive</h4>
<ul>
  <li>Gene carried on X chromosome</li>
  <li>Males (XY) affected if they inherit one recessive X</li>
  <li>Females (XX) are carriers if heterozygous; affected only if homozygous</li>
  <li>Examples: Haemophilia A and B, colour blindness, Duchenne muscular dystrophy</li>
</ul>

<h3>12.3 Important Hereditary Diseases</h3>

<h4>Sickle Cell Disease</h4>
<ul>
  <li>Autosomal recessive; most common genetic disorder in Africa</li>
  <li>HbSS genotype: severe disease; HbAS: sickle cell trait (carrier, usually asymptomatic)</li>
  <li>Sickle-shaped red blood cells block capillaries; haemolytic anaemia</li>
  <li>Symptoms: painful crises, anaemia, organ damage (spleen, kidneys, brain)</li>
  <li>Management: hydroxyurea, folic acid, pain management, blood transfusions; transplant is only cure</li>
  <li>Sickle cell trait provides some protection against malaria (heterozygote advantage)</li>
</ul>

<h4>Haemophilia</h4>
<ul>
  <li>X-linked recessive; predominantly affects males</li>
  <li>Deficiency of clotting factor VIII (Haemophilia A) or IX (Haemophilia B)</li>
  <li>Blood does not clot properly; risk of severe bleeding after injury or surgery</li>
  <li>Treatment: replacement of missing clotting factor</li>
</ul>

<h4>Colour Blindness</h4>
<ul>
  <li>X-linked recessive; much more common in males (8%) than females (0.5%)</li>
  <li>Most common type: red-green colour blindness</li>
  <li>Usually not medically significant but affects certain careers (pilots, electricians)</li>
</ul>

<h4>Down Syndrome (Trisomy 21)</h4>
<ul>
  <li>Extra chromosome 21 (47 chromosomes total)</li>
  <li>Caused by non-disjunction during meiosis</li>
  <li>Risk increases with maternal age</li>
  <li>Features: characteristic facial features, intellectual disability, short stature</li>
  <li>Associated with heart defects, increased risk of infections and leukaemia</li>
</ul>

<h3>12.4 Genetic Counselling</h3>
<ul>
  <li>Process of advising individuals or families about genetic disorders</li>
  <li>Helps couples understand risk of having a child with a genetic condition</li>
  <li>Includes genetic testing, risk assessment, and psychological support</li>
  <li>Important for couples with family history of genetic disorders (e.g., sickle cell, haemophilia)</li>
</ul>

<h3>12.5 Prenatal Diagnosis</h3>
<ul>
  <li>Amniocentesis: sampling amniotic fluid (15-20 weeks); chromosomal and genetic analysis</li>
  <li>Chorionic villus sampling (CVS): sampling placental tissue (10-13 weeks)</li>
  <li>Ultrasound: detects structural abnormalities</li>
  <li>Newborn screening: blood tests at birth for treatable conditions (PKU, congenital hypothyroidism)</li>
</ul>',
 12),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Epidemiology and Disease Prevention',
 'Epidemiological methods, disease surveillance, disease outbreak investigation, vaccination programmes',
 '<h2>Epidemiology and Disease Prevention</h2>

<h3>13.1 Epidemiology</h3>
<p>Epidemiology is the study of the distribution and determinants of health and disease in populations, and the application of this study to control health problems.</p>

<h4>Key Epidemiological Measures</h4>
<ul>
  <li><strong>Incidence:</strong> Number of new cases of a disease in a population during a specific time period</li>
  <li><strong>Prevalence:</strong> Total number of existing cases (new and old) of a disease in a population at a given time</li>
  <li><strong>Morbidity rate:</strong> Rate of illness in a population</li>
  <li><strong>Mortality rate:</strong> Rate of death from a particular cause</li>
  <li><strong>Case fatality rate:</strong> Proportion of people with a disease who die from it</li>
  <li><strong>Attack rate:</strong> Proportion of people exposed to a source who develop disease</li>
</ul>

<h3>13.2 Types of Epidemiological Studies</h3>
<ul>
  <li><strong>Descriptive studies:</strong> Describe the distribution of disease by person, place, and time</li>
  <li><strong>Cohort studies:</strong> Follow exposed and unexposed groups over time; measure incidence</li>
  <li><strong>Case-control studies:</strong> Compare people with disease to those without; identify risk factors</li>
  <li><strong>Randomised controlled trials (RCTs):</strong> Gold standard for evaluating interventions; random assignment to treatment and control groups</li>
</ul>

<h3>13.3 Disease Patterns</h3>
<ul>
  <li><strong>Endemic:</strong> Disease constantly present at a low level in a specific area (e.g., malaria in sub-Saharan Africa)</li>
  <li><strong>Epidemic:</strong> Sudden increase in cases of a disease above normal expected level in a specific area</li>
  <li><strong>Pandemic:</strong> Epidemic that spreads over multiple countries or continents (e.g., COVID-19, HIV)</li>
  <li><strong>Outbreak:</strong> Two or more linked cases of the same illness in a defined area</li>
</ul>

<h3>13.4 Outbreak Investigation</h3>
<ol>
  <li>Confirm the diagnosis</li>
  <li>Define cases (case definition)</li>
  <li>Count cases and describe by person, place, time</li>
  <li>Determine who is at risk</li>
  <li>Develop and test hypotheses</li>
  <li>Implement control measures</li>
  <li>Evaluate and communicate findings</li>
</ol>

<h3>13.5 Disease Surveillance</h3>
<ul>
  <li>Systematic ongoing collection, collation, and analysis of disease data</li>
  <li>Enables early detection of outbreaks and monitoring of disease trends</li>
  <li>Notifiable diseases: certain diseases must be reported to health authorities (e.g., cholera, polio, measles, Ebola)</li>
  <li>Sentinel surveillance: monitoring specific sites or populations to detect early warning signals</li>
</ul>

<h3>13.6 Vaccination Programmes</h3>
<ul>
  <li>National Immunisation Programme: governments provide vaccines free of charge</li>
  <li>Expanded Programme on Immunisation (EPI): WHO global initiative to provide vaccines to all children</li>
  <li>Herd immunity threshold: percentage of population that must be immune to prevent spread (e.g., measles: 95%, polio: 80-85%)</li>
  <li>Cold chain: system of refrigerated storage and transport to keep vaccines effective</li>
  <li>Adverse events following immunisation (AEFI): monitoring and reporting side effects</li>
</ul>

<h3>13.7 Control of Communicable Diseases</h3>
<ul>
  <li><strong>Isolation:</strong> Separating infected individuals from healthy people</li>
  <li><strong>Quarantine:</strong> Restricting movement of people who may have been exposed</li>
  <li><strong>Contact tracing:</strong> Identifying people who may have been in contact with an infected person</li>
  <li><strong>Chemoprophylaxis:</strong> Use of drugs to prevent disease (e.g., malaria prophylaxis)</li>
  <li><strong>Vector control:</strong> Reducing populations of disease-carrying organisms</li>
</ul>',
 13),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Oral Health',
 'Structure of teeth, dental caries, periodontal disease, oral hygiene practices and dental care',
 '<h2>Oral Health</h2>

<h3>14.1 Importance of Oral Health</h3>
<p>Good oral health is fundamental to overall health and well-being. Poor oral health is linked to heart disease, diabetes, premature birth, and quality of life.</p>

<h3>14.2 Structure of Teeth</h3>
<ul>
  <li><strong>Crown:</strong> Visible part above gumline; covered by enamel (hardest substance in body)</li>
  <li><strong>Neck:</strong> At gumline</li>
  <li><strong>Root:</strong> Below gumline; embedded in jaw bone (alveolar bone)</li>
  <li><strong>Enamel:</strong> Hardest substance in body; outer layer of crown; protects against decay</li>
  <li><strong>Dentine:</strong> Main tissue of tooth; beneath enamel; softer than enamel</li>
  <li><strong>Pulp:</strong> Central part containing nerves and blood vessels; provides sensation</li>
  <li><strong>Cementum:</strong> Covers root; helps anchor tooth in socket</li>
  <li><strong>Periodontal ligament:</strong> Holds tooth in its socket</li>
</ul>

<h4>Types of Teeth (Dentition)</h4>
<ul>
  <li><strong>Incisors:</strong> 8 teeth; chisel-shaped; for cutting food</li>
  <li><strong>Canines:</strong> 4 teeth; pointed; for tearing food</li>
  <li><strong>Premolars:</strong> 8 teeth; for crushing food</li>
  <li><strong>Molars:</strong> 12 teeth including wisdom teeth; for grinding food</li>
</ul>

<h4>Milk vs Permanent Teeth</h4>
<ul>
  <li>Milk (deciduous) teeth: 20 teeth; begin erupting at 6 months; usually complete by age 2-3</li>
  <li>Permanent teeth: 32 teeth; begin replacing milk teeth from age 6; wisdom teeth (third molars) erupt 17-25 years</li>
</ul>

<h3>14.3 Dental Caries (Tooth Decay)</h3>
<ul>
  <li>Most common chronic disease worldwide</li>
  <li>Caused by bacteria (Streptococcus mutans) that produce acid from sugars</li>
  <li>Process: Sugar + Bacteria gives Acid; Acid + Enamel gives Decay</li>
  <li>Dental plaque: film of bacteria on teeth; hardens to form calculus (tartar)</li>
  <li>Symptoms: toothache, sensitivity, visible cavity, bad breath</li>
</ul>

<h4>Prevention of Dental Caries</h4>
<ul>
  <li>Brush teeth at least twice daily with fluoride toothpaste</li>
  <li>Floss daily to remove plaque between teeth</li>
  <li>Reduce frequency and amount of sugary foods and drinks</li>
  <li>Use fluoride (strengthens enamel); community water fluoridation</li>
  <li>Dental sealants for children (protective coating on back teeth)</li>
  <li>Regular dental check-ups</li>
</ul>

<h3>14.4 Periodontal Disease</h3>
<ul>
  <li>Disease of the tissues supporting teeth (gums, periodontal ligament, alveolar bone)</li>
  <li><strong>Gingivitis:</strong> Inflammation of gums; reversible; red, swollen, bleeding gums</li>
  <li><strong>Periodontitis:</strong> Advanced gum disease; affects bone; can lead to tooth loss</li>
  <li>Caused by bacterial plaque; aggravated by smoking, diabetes, poor nutrition</li>
  <li>Prevention: good oral hygiene, not smoking, regular professional cleaning</li>
</ul>

<h3>14.5 Other Oral Health Issues</h3>
<ul>
  <li><strong>Dental abscess:</strong> Collection of pus from infection; requires dental treatment</li>
  <li><strong>Oral cancer:</strong> Risk factors: tobacco, alcohol, HPV; presents as ulcer not healing</li>
  <li><strong>Fluorosis:</strong> Excess fluoride causes white spots or brown staining on enamel</li>
  <li><strong>Malocclusion:</strong> Misalignment of teeth; may need orthodontic treatment</li>
</ul>

<h3>14.6 Oral Hygiene Practices</h3>
<ul>
  <li>Brush teeth for 2 minutes, twice daily (morning and before bed)</li>
  <li>Use soft-bristled toothbrush; replace every 3 months</li>
  <li>Use fluoride toothpaste (1000-1500 ppm fluoride)</li>
  <li>Floss or use interdental brushes daily</li>
  <li>Use antiseptic mouthwash if recommended by dentist</li>
  <li>Rinse mouth with water after eating sugary foods</li>
  <li>Visit dentist every 6-12 months for check-up and cleaning</li>
</ul>',
 14),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Eye and Ear Health',
 'Structure and function of eye and ear, common disorders, prevention of blindness and deafness',
 '<h2>Eye and Ear Health</h2>

<h3>15.1 The Eye</h3>

<h4>Structure of the Eye</h4>
<ul>
  <li><strong>Cornea:</strong> Transparent front layer; bends (refracts) light entering the eye</li>
  <li><strong>Iris:</strong> Coloured ring that controls pupil size and amount of light entering</li>
  <li><strong>Pupil:</strong> Opening in iris that allows light to pass through</li>
  <li><strong>Lens:</strong> Transparent; changes shape to focus light on retina (accommodation)</li>
  <li><strong>Retina:</strong> Light-sensitive layer at back of eye containing rods (dim light, black and white) and cones (bright light, colour vision)</li>
  <li><strong>Optic nerve:</strong> Carries visual information from retina to brain</li>
  <li><strong>Sclera:</strong> White outer coat of eye; tough protective layer</li>
  <li><strong>Vitreous humour:</strong> Jelly-like substance filling main cavity of eye</li>
  <li><strong>Aqueous humour:</strong> Watery fluid in front part of eye; maintains eye pressure</li>
</ul>

<h3>15.2 Common Eye Disorders</h3>

<h4>Refractive Errors</h4>
<ul>
  <li><strong>Myopia (short-sightedness):</strong> Cannot see distant objects clearly; corrected by concave (diverging) lens</li>
  <li><strong>Hypermetropia (long-sightedness):</strong> Cannot see near objects clearly; corrected by convex (converging) lens</li>
  <li><strong>Presbyopia:</strong> Age-related loss of ability to focus on near objects; occurs from about age 40; corrected with reading glasses</li>
  <li><strong>Astigmatism:</strong> Irregular corneal curvature; blurred vision at all distances; corrected by cylindrical lens</li>
</ul>

<h4>Cataracts</h4>
<ul>
  <li>Clouding of the lens; most common cause of preventable blindness globally</li>
  <li>Risk factors: age, UV exposure, diabetes, smoking, corticosteroid use</li>
  <li>Treatment: surgical removal of cloudy lens and insertion of artificial lens</li>
</ul>

<h4>Glaucoma</h4>
<ul>
  <li>Increased intraocular pressure damages optic nerve; leads to progressive vision loss</li>
  <li>Often has no early symptoms (silent disease)</li>
  <li>Risk factors: age, family history, raised eye pressure</li>
  <li>Treatment: eye drops to reduce pressure; surgery if needed; regular screening important</li>
</ul>

<h4>Trachoma</h4>
<ul>
  <li>Bacterial infection (Chlamydia trachomatis); leading infectious cause of blindness</li>
  <li>Spread by direct contact, flies, shared towels; common in poor communities with poor hygiene</li>
  <li>Prevention: SAFE strategy (Surgery, Antibiotics, Face washing, Environmental improvement)</li>
</ul>

<h4>Onchocerciasis (River Blindness)</h4>
<ul>
  <li>Caused by Onchocerca volvulus worm; transmitted by blackfly near fast-flowing rivers</li>
  <li>Causes skin disease and progressive blindness</li>
  <li>Common in West Africa; controlled by ivermectin distribution</li>
</ul>

<h3>15.3 The Ear</h3>

<h4>Structure of the Ear</h4>
<ul>
  <li><strong>Outer ear:</strong> Pinna (collects sound), ear canal (transmits sound), eardrum (tympanic membrane)</li>
  <li><strong>Middle ear:</strong> Three ossicles (malleus, incus, stapes) amplify sound vibrations; Eustachian tube connects to throat</li>
  <li><strong>Inner ear:</strong> Cochlea (hearing; converts vibrations to nerve impulses); Semicircular canals (balance)</li>
</ul>

<h3>15.4 Common Ear Disorders</h3>
<ul>
  <li><strong>Otitis media:</strong> Middle ear infection; common in children; causes earache, fever, hearing loss; treated with antibiotics</li>
  <li><strong>Otitis externa:</strong> Outer ear infection (swimmer ear); treated with ear drops</li>
  <li><strong>Noise-induced hearing loss:</strong> Damage to hair cells in cochlea from prolonged loud noise; irreversible; preventable</li>
  <li><strong>Earwax (cerumen) impaction:</strong> Build-up of wax blocking ear canal; causes hearing loss; can be softened with drops and removed</li>
  <li><strong>Deafness:</strong> Conductive (problem in outer or middle ear) or sensorineural (damage to cochlea or nerve)</li>
</ul>

<h3>15.5 Prevention of Blindness and Deafness</h3>
<ul>
  <li>Regular eye and hearing checks; early detection and treatment</li>
  <li>Protect eyes from UV (sunglasses), chemical splashes (goggles), and injury</li>
  <li>Protect ears from excessive noise; use ear protection in noisy environments</li>
  <li>Vitamin A supplementation to prevent night blindness and xerophthalmia</li>
  <li>Immunisation: measles vaccine prevents measles-related blindness</li>
  <li>Proper treatment of eye and ear infections to prevent complications</li>
  <li>Do not insert objects into ears; do not use cotton buds inside ear canal</li>
</ul>',
 15),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Community Health and Health Promotion',
 'Community health concepts, health promotion strategies, primary healthcare, community health workers',
 '<h2>Community Health and Health Promotion</h2>

<h3>16.1 Community Health</h3>
<p>Community health focuses on preventing disease and promoting health for groups of people sharing a common environment or experience. It addresses health issues affecting the entire community rather than just individual patients.</p>

<h4>Components of Community Health</h4>
<ul>
  <li>Disease prevention and control</li>
  <li>Health education and promotion</li>
  <li>Environmental health and sanitation</li>
  <li>Maternal and child health services</li>
  <li>Nutrition programmes</li>
  <li>Mental health services</li>
</ul>

<h3>16.2 Primary Health Care (PHC)</h3>
<p>The Alma Ata Declaration (1978) defined primary health care as essential health care based on practical, scientifically sound, and socially acceptable methods and technology made universally accessible to individuals and families in the community.</p>

<h4>Elements of Primary Health Care</h4>
<ul>
  <li>Health education on prevailing problems and methods of preventing and controlling them</li>
  <li>Promotion of food supply and proper nutrition</li>
  <li>Adequate supply of safe water and basic sanitation</li>
  <li>Maternal and child health care, including family planning</li>
  <li>Immunisation against major infectious diseases</li>
  <li>Prevention and control of locally endemic diseases</li>
  <li>Appropriate treatment of common diseases and injuries</li>
  <li>Provision of essential drugs</li>
</ul>

<h3>16.3 Health Promotion</h3>
<p>Health promotion is the process of enabling people to increase control over and improve their health. It goes beyond healthcare to address the social determinants of health.</p>

<h4>Health Promotion Strategies</h4>
<ul>
  <li><strong>Health education:</strong> Providing information to improve knowledge and skills</li>
  <li><strong>Social marketing:</strong> Using marketing techniques to promote healthy behaviours</li>
  <li><strong>Community development:</strong> Building community capacity to address health issues</li>
  <li><strong>Legislation and policy:</strong> Laws and policies that create health-enabling environments (e.g., tobacco bans, seatbelt laws)</li>
  <li><strong>Environmental modification:</strong> Making the healthy choice the easy choice</li>
</ul>

<h3>16.4 Community Health Workers (CHWs)</h3>
<ul>
  <li>Members of the community trained to provide basic health services and health education</li>
  <li>Role: health education, disease prevention, promotion of maternal and child health, treatment of simple illnesses, referral</li>
  <li>Bridge between formal health system and community</li>
  <li>Particularly important in resource-limited settings</li>
</ul>

<h3>16.5 Health Communication</h3>
<ul>
  <li>Interpersonal communication: individual counselling, home visits</li>
  <li>Group communication: community meetings, health talks</li>
  <li>Mass communication: radio, television, posters, social media</li>
  <li>Effective communication: use simple language, culturally appropriate messages, involve community</li>
</ul>',
 16),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'School Health Programme',
 'School health services, school environment, nutrition in schools, mental health of students, and health education in schools',
 '<h2>School Health Programme</h2>

<h3>17.1 Importance of School Health</h3>
<p>Schools provide an ideal setting for health promotion because they reach a large proportion of children during formative years. Health and learning are inseparably linked.</p>

<h3>17.2 Components of a Comprehensive School Health Programme</h3>

<h4>1. Health Education</h4>
<ul>
  <li>Teaching students about personal hygiene, nutrition, disease prevention, reproductive health, mental health, and substance abuse</li>
  <li>Life skills education: decision-making, problem-solving, communication, peer resistance</li>
</ul>

<h4>2. Health Services</h4>
<ul>
  <li>Health screening: vision, hearing, height and weight, dental checks</li>
  <li>First aid services in school</li>
  <li>Referral for health problems identified</li>
  <li>Immunisation outreach programmes</li>
  <li>Mental health counselling</li>
</ul>

<h4>3. Healthy School Environment</h4>
<ul>
  <li>Safe and clean physical environment (sanitation, clean water, safe playground)</li>
  <li>Adequate ventilation and lighting</li>
  <li>Proper toilets and handwashing facilities (separate for boys and girls)</li>
  <li>Safe food preparation and nutrition in school canteen</li>
  <li>Positive social environment: anti-bullying policies</li>
</ul>

<h4>4. School Nutrition</h4>
<ul>
  <li>School feeding programmes improve attendance, concentration, and learning</li>
  <li>Healthy food choices in school canteens</li>
  <li>Deworming programmes</li>
  <li>Micronutrient supplementation</li>
</ul>

<h4>5. Mental Health and Psychological Services</h4>
<ul>
  <li>Identifying students at risk of mental health problems</li>
  <li>School counsellors providing support</li>
  <li>Anti-bullying and anti-violence policies</li>
  <li>Supporting students through difficult life events</li>
</ul>

<h4>6. Family and Community Involvement</h4>
<ul>
  <li>Parents and community members involved in school health activities</li>
  <li>Parent education on child health and development</li>
</ul>

<h3>17.3 Common School Health Problems</h3>
<ul>
  <li>Malaria, diarrhoea, respiratory infections (affect attendance)</li>
  <li>Malnutrition and anaemia (affect concentration and learning)</li>
  <li>Intestinal worms (affect nutrition and growth)</li>
  <li>Poor vision (undetected; affects learning)</li>
  <li>Dental problems</li>
  <li>Substance abuse (alcohol, drugs)</li>
  <li>Teenage pregnancy and STIs</li>
  <li>Mental health problems (stress, depression, anxiety, learning difficulties)</li>
  <li>Bullying and violence</li>
</ul>

<h3>17.4 Role of Health in Academic Performance</h3>
<ul>
  <li>Well-nourished, healthy children have better concentration and memory</li>
  <li>Chronic illness leads to school absenteeism and poor academic performance</li>
  <li>Deworming and iron supplementation improve attention and learning</li>
  <li>Good mental health enables effective learning</li>
</ul>',
 17),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Sexuality and Adolescent Health',
 'Adolescent development, sexual health, consent, teenage pregnancy, peer pressure and healthy relationships',
 '<h2>Sexuality and Adolescent Health</h2>

<h3>18.1 Adolescence</h3>
<p>Adolescence is the transitional period between childhood and adulthood, typically from ages 10-19 years. It involves rapid physical, psychological, social, and cognitive changes.</p>

<h4>Challenges of Adolescence</h4>
<ul>
  <li>Navigating puberty and bodily changes</li>
  <li>Developing identity and self-concept</li>
  <li>Peer pressure and desire for acceptance</li>
  <li>Risk-taking behaviour</li>
  <li>Academic pressures</li>
  <li>Beginning of sexual development and attraction</li>
  <li>Emotional intensity and mood changes</li>
</ul>

<h3>18.2 Human Sexuality</h3>
<ul>
  <li>Sexuality encompasses sexual feelings, thoughts, attractions, and behaviours</li>
  <li>Sexual orientation: heterosexual, homosexual, bisexual; a normal variation of human sexuality</li>
  <li>Gender identity: a person sense of their own gender</li>
  <li>Healthy sexuality involves respect, consent, and communication</li>
</ul>

<h3>18.3 Consent and Healthy Relationships</h3>
<ul>
  <li><strong>Consent:</strong> Voluntary, informed, enthusiastic agreement to engage in sexual activity; can be withdrawn at any time</li>
  <li>Sexual activity without consent is sexual assault or rape</li>
  <li><strong>Characteristics of a healthy relationship:</strong> Mutual respect, trust, honesty, equality, support, safety, open communication</li>
  <li><strong>Signs of an unhealthy relationship:</strong> Control, jealousy, manipulation, pressure, physical or emotional abuse</li>
  <li>Sexual harassment: unwanted sexual advances, requests, or behaviour; a violation of rights</li>
</ul>

<h3>18.4 Teenage Pregnancy</h3>
<ul>
  <li>Adolescent pregnancy carries greater health risks than adult pregnancy</li>
  <li>Risks for mother: anaemia, obstructed labour, fistula, maternal mortality</li>
  <li>Risks for baby: prematurity, low birth weight, neonatal mortality</li>
  <li>Social consequences: school dropout, poverty cycle, social stigma</li>
  <li><strong>Prevention:</strong> Comprehensive sex education, access to family planning, girls empowerment and education, delaying marriage</li>
</ul>

<h3>18.5 Abstinence and Safer Sex</h3>
<ul>
  <li>Abstinence is the most effective way to prevent pregnancy and STIs</li>
  <li>For sexually active adolescents: correct and consistent use of condoms; dual protection (condom + another contraceptive method)</li>
  <li>Emergency contraception (morning-after pill): can prevent pregnancy if taken within 72 hours of unprotected sex</li>
</ul>

<h3>18.6 Peer Pressure and Refusal Skills</h3>
<ul>
  <li>Peer pressure can lead to early sexual debut, substance use, and other risky behaviours</li>
  <li>Strategies to handle peer pressure: clear values and goals, assertiveness, supportive friends, trusted adults to talk to</li>
  <li>Refusal skills: say no clearly and firmly, give a reason, suggest alternatives, leave the situation if necessary</li>
</ul>

<h3>18.7 Child Marriage</h3>
<ul>
  <li>Marriage before age 18; violates human rights</li>
  <li>Consequences: loss of education, early pregnancy, domestic violence, poverty</li>
  <li>Illegal in many countries; social and economic interventions needed</li>
</ul>',
 18),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Health Systems and Services',
 'Structure of health systems, levels of healthcare, health financing, health workforce and quality of care',
 '<h2>Health Systems and Services</h2>

<h3>19.1 Health System</h3>
<p>A health system consists of all organisations, people, and actions whose primary purpose is to promote, restore, or maintain health. It includes all the organisations, institutions, resources, and services that are involved in the delivery of health care.</p>

<h4>Goals of a Health System</h4>
<ul>
  <li>Improving health (level and equity)</li>
  <li>Responding to the expectations of the population</li>
  <li>Providing financial protection against health-related costs</li>
</ul>

<h3>19.2 Levels of Healthcare</h3>

<h4>Primary Level</h4>
<ul>
  <li>First point of contact with health system</li>
  <li>Community clinics, health posts, health centres</li>
  <li>Services: preventive care, health education, treatment of common illnesses, maternal and child health, immunisation</li>
  <li>Community health workers operate at this level</li>
</ul>

<h4>Secondary Level</h4>
<ul>
  <li>District hospitals with more specialised services</li>
  <li>Receives referrals from primary level</li>
  <li>Services: general surgery, obstetrics, paediatrics, medicine, laboratory and imaging</li>
</ul>

<h4>Tertiary Level</h4>
<ul>
  <li>Teaching hospitals and specialist centres</li>
  <li>Highly specialised services: cardiology, neurosurgery, oncology, nephrology</li>
  <li>Training of health professionals</li>
  <li>Research</li>
</ul>

<h3>19.3 Health Financing</h3>
<ul>
  <li><strong>Out-of-pocket payments:</strong> Patients pay directly; can be catastrophic for poor families</li>
  <li><strong>Government funding:</strong> Tax-funded health services; may be free at point of use</li>
  <li><strong>Health insurance:</strong> Premiums collected and pooled; protects against high costs</li>
  <li><strong>National Health Insurance Scheme (NHIS):</strong> Government-managed insurance scheme to provide universal access</li>
  <li><strong>Donor funding:</strong> International aid for health (e.g., Global Fund for AIDS, TB and Malaria)</li>
  <li><strong>Universal Health Coverage (UHC):</strong> Ensuring all people receive quality health services without financial hardship</li>
</ul>

<h3>19.4 Health Workforce</h3>
<ul>
  <li>Doctors, nurses, midwives, pharmacists, laboratory scientists, community health workers</li>
  <li>Challenges in West Africa: shortage of trained health workers, brain drain (migration to richer countries), geographic maldistribution (more in urban than rural areas)</li>
  <li>Task shifting: training lower-level workers to perform certain tasks previously done by more highly trained workers</li>
</ul>

<h3>19.5 Quality of Healthcare</h3>
<ul>
  <li>Dimensions of quality: safety, effectiveness, patient-centeredness, timeliness, efficiency, equity</li>
  <li>Patient rights: right to information, right to consent, right to privacy and confidentiality, right to respectful treatment</li>
  <li>Medical ethics: beneficence (do good), non-maleficence (do no harm), autonomy (patient choice), justice (fairness)</li>
</ul>',
 19),

('141f3c7f-9706-4b9b-b0c9-eb25de94d913',
 'Global Health Issues and Sustainable Development Goals',
 'Global burden of disease, WHO, Sustainable Development Goals, global health partnerships and health equity',
 '<h2>Global Health Issues and Sustainable Development Goals</h2>

<h3>20.1 Global Burden of Disease</h3>
<p>The global burden of disease is a systematic effort to quantify health loss from hundreds of diseases, injuries, and risk factors globally.</p>

<h4>Leading Causes of Death Globally</h4>
<ul>
  <li>Cardiovascular diseases (ischaemic heart disease, stroke): number one cause</li>
  <li>Respiratory diseases (COPD, lower respiratory infections)</li>
  <li>Cancer</li>
  <li>Diabetes</li>
  <li>Infectious diseases (HIV/AIDS, TB, malaria) - especially in Africa</li>
  <li>Neonatal conditions and nutritional deficiencies in low-income countries</li>
</ul>

<h4>Double Burden of Disease</h4>
<p>Many developing countries, including those in West Africa, face both the continuing burden of communicable diseases AND a growing burden of NCDs simultaneously.</p>

<h3>20.2 World Health Organization (WHO)</h3>
<ul>
  <li>Specialised agency of the United Nations for international public health</li>
  <li>Founded in 1948; headquarters in Geneva, Switzerland</li>
  <li>Functions: global health standards setting, disease surveillance, technical assistance, emergency response</li>
  <li>WHO International Health Regulations: legal framework for global health security</li>
</ul>

<h3>20.3 Sustainable Development Goals (SDGs)</h3>
<p>The 17 SDGs were adopted by the United Nations in 2015 as part of the 2030 Agenda for Sustainable Development.</p>

<h4>Health-Related SDGs</h4>
<ul>
  <li><strong>SDG 1:</strong> No Poverty (poverty is a major determinant of poor health)</li>
  <li><strong>SDG 2:</strong> Zero Hunger (nutrition is fundamental to health)</li>
  <li><strong>SDG 3:</strong> Good Health and Well-being - the main health SDG</li>
  <li><strong>SDG 5:</strong> Gender Equality (women health and reproductive rights)</li>
  <li><strong>SDG 6:</strong> Clean Water and Sanitation</li>
  <li><strong>SDG 13:</strong> Climate Action (climate change is a health threat)</li>
</ul>

<h4>SDG 3 Targets include</h4>
<ul>
  <li>Reduce maternal mortality to less than 70 per 100,000 live births</li>
  <li>End preventable deaths of newborns and children under 5</li>
  <li>End the epidemics of AIDS, tuberculosis, malaria, and neglected tropical diseases</li>
  <li>Reduce premature mortality from NCDs by one third</li>
  <li>Achieve universal health coverage</li>
  <li>Ensure access to safe, effective, quality, affordable medicines and vaccines</li>
</ul>

<h3>20.4 Health Equity</h3>
<ul>
  <li>Health equity means that everyone has a fair opportunity to be as healthy as possible</li>
  <li>Health inequalities exist based on income, education, race, gender, geography</li>
  <li>Social determinants of health: conditions in which people are born, grow, live, work, and age</li>
  <li>Addressing health inequalities requires addressing social and economic inequalities</li>
</ul>

<h3>20.5 Global Health Partnerships</h3>
<ul>
  <li>UNICEF: children health and nutrition globally</li>
  <li>UNAIDS: global response to HIV/AIDS</li>
  <li>Global Fund to fight AIDS, TB, and Malaria: major funder of disease programmes in Africa</li>
  <li>GAVI (Vaccine Alliance): increases access to immunisation in developing countries</li>
  <li>Medicins Sans Frontieres (MSF): provides emergency medical care in conflict zones and disease outbreaks</li>
  <li>Bilateral donors: USAID, DFID (UK Aid) funding health programmes</li>
</ul>

<h3>20.6 Neglected Tropical Diseases (NTDs)</h3>
<p>A group of infectious diseases prevalent in tropical and subtropical conditions that disproportionately affect the poorest populations. Examples common in West Africa:</p>
<ul>
  <li>Onchocerciasis (river blindness)</li>
  <li>Schistosomiasis (bilharzia)</li>
  <li>Lymphatic filariasis (elephantiasis)</li>
  <li>Trachoma</li>
  <li>Soil-transmitted helminths (intestinal worms)</li>
  <li>Buruli ulcer</li>
  <li>Leprosy</li>
</ul>
<p>Control through preventive chemotherapy (mass drug administration), improved sanitation and water supply, vector control, and early diagnosis and treatment.</p>',
 20);
