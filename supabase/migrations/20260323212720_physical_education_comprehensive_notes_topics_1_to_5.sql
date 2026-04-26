
/*
  # Physical Education Comprehensive Notes - Topics 1 to 5

  Adds deep WASSCE-level notes for the first 5 Physical Education topics:
  1. Introduction to Physical Education
  2. History and Development of Physical Education
  3. Human Anatomy for Physical Education
  4. Physiology of Exercise
  5. Motor Learning and Development

  Each topic receives 2-3 richly detailed sections with definitions, explanations,
  tables, and WASSCE exam tips.
*/

DO $$
DECLARE
  t1 uuid := 'e91a8263-2a2c-4d50-bc39-bb68175e979d';
  t2 uuid := 'fbe64023-6e20-47bc-b47f-85560f4b74c5';
  t3 uuid := '33cfd5d0-35f9-420c-a261-2b267d65cef7';
  t4 uuid := '160bff10-349b-4daa-a079-b62f317fe66e';
  t5 uuid := 'e80006f0-f72d-42d6-b256-810c13dce042';
BEGIN

DELETE FROM topic_sections WHERE topic_id IN (t1,t2,t3,t4,t5);

-- ===================== TOPIC 1: Introduction to Physical Education =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t1, 'Definition, Aims and Objectives of Physical Education', '<h3>Definition of Physical Education</h3>
<p>Physical Education (PE) is the process of education that uses physical activity as a medium to help individuals acquire skills, fitness, knowledge, and attitudes that contribute to their optimal development and well-being.</p>
<p>It is a subject taught in schools that involves movement, games, sports, gymnastics, and dance as tools for the holistic development of the individual — body, mind, and character.</p>

<h3>Aims of Physical Education</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Aim</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Explanation</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Physical Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Develop strong, healthy, and well-coordinated bodies through exercise</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Mental Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Improve concentration, decision-making, and cognitive ability through sport</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Social Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Foster teamwork, leadership, communication, and fair play</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Emotional Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Build self-confidence, emotional control, and positive self-image</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Moral Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Instil discipline, sportsmanship, honesty, and respect for rules</td></tr>
</tbody></table></div>

<h3>Objectives of Physical Education (WASSCE Focus)</h3>
<p>The specific objectives include:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Skill acquisition:</strong> Develop fundamental movement skills and sport-specific techniques</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Health and fitness:</strong> Promote lifelong physical activity habits for health maintenance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Knowledge:</strong> Understand rules, regulations, and the science behind sports</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Citizenship:</strong> Develop national pride, unity, and cooperative values through sport</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Recreation:</strong> Provide opportunities for enjoyment, play, and leisure</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Be able to DEFINE Physical Education and list at least FOUR aims with explanations. Questions often ask you to distinguish between aims and objectives.</span>
</div>', 1),

(t1, 'Values and Importance of Physical Education in Schools', '<h3>Values of Physical Education</h3>
<p>Physical Education offers broad benefits across multiple domains of human development:</p>

<h3>Organic (Physical) Values</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Develops cardiovascular endurance, muscular strength, and flexibility</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Promotes healthy body weight and reduces risk of obesity</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Strengthens bones and improves posture</span></div>
</div>

<h3>Neuromuscular Values</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Improves coordination, agility, balance, and reaction time</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Develops gross and fine motor skills through practice</span></div>
</div>

<h3>Cognitive (Intellectual) Values</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Enhances problem-solving, strategic thinking, and quick decision-making</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Research shows physical activity improves academic performance and concentration</span></div>
</div>

<h3>Social Values</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Promotes cooperation, teamwork, and group cohesion</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Develops leadership qualities and communication skills</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Encourages integration across tribal, religious, and social barriers</span></div>
</div>

<h3>Emotional Values</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Builds self-esteem and emotional resilience</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Teaches how to handle victory and defeat gracefully</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Reduces stress, anxiety, and depression through endorphin release</span></div>
</div>

<h3>Importance of PE in Schools</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Area</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Importance</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Health Promotion</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Combats sedentary lifestyle and non-communicable diseases (diabetes, hypertension)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Talent Identification</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">School PE programmes discover and nurture future sports stars and Olympians</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Character Building</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Teaches discipline, punctuality, respect, and responsibility</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">National Development</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Prepares citizens for national sports representation and tourism through sport</td></tr>
</tbody></table></div>', 2);

-- ===================== TOPIC 2: History and Development of Physical Education =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t2, 'Ancient and Modern History of Physical Education', '<h3>Physical Education in Ancient Civilisations</h3>
<p>The history of Physical Education spans thousands of years, with different civilisations contributing uniquely to its development.</p>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Civilisation</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Contribution to PE</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Ancient Greece</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Originated the Olympic Games (776 BC); valued a balance of mind and body ("mens sana in corpore sano"); gymnasiums were centres of physical and intellectual training</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Ancient Rome</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Focused on military fitness; gladiatorial contests; bath-houses promoted hygiene and physical activity</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>China</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Developed martial arts (Kung Fu), acrobatics, and exercises for health (Cong Fu exercises, 2500 BC)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Egypt</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Wrestling, swimming, and boat-racing were practised; military training was essential</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>India</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Developed Yoga as a system of physical and mental discipline; wrestling and archery were popular</td></tr>
</tbody></table></div>

<h3>The Ancient Olympic Games</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">First held in <strong>776 BC</strong> at Olympia, Greece, in honour of Zeus</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Events included: running (stade), wrestling, discus throw, long jump, javelin</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Held every 4 years (Olympiad); wars were suspended during the Games (Olympic Truce)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Abolished in <strong>393 AD</strong> by Roman Emperor Theodosius I</span></div>
</div>

<h3>Physical Education in the Middle Ages and Renaissance</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Middle Ages (500-1400 AD):</strong> Church discouraged physical activity; knightly training (jousting, sword fighting) was an exception</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Renaissance (1400-1600 AD):</strong> Revival of Greek ideals; scholars advocated physical education alongside intellectual study</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Key dates to memorise: Ancient Olympics started 776 BC, abolished 393 AD. Modern Olympics revived 1896. The pentathlon consists of 5 events.</span>
</div>', 1),

(t2, 'Modern Physical Education and Development in Ghana', '<h3>Revival of the Modern Olympic Games</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Baron Pierre de Coubertin</strong> (France) revived the Olympic Games in <strong>1896</strong> in Athens, Greece</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">The International Olympic Committee (IOC) was founded in 1894</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic motto: "Citius, Altius, Fortius" (Faster, Higher, Stronger)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic symbol: 5 interlocking rings (blue, yellow, black, green, red) representing 5 continents</span></div>
</div>

<h3>Pioneers of Modern Physical Education</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Pioneer</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Country</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Contribution</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Friedrich Jahn</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Germany</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">"Father of Gymnastics"; developed turnplatz (outdoor gymnasiums) and gymnastics apparatus</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Per Henrik Ling</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sweden</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Developed Swedish gymnastics; emphasised therapeutic and corrective exercises</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Dio Lewis</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">USA</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Promoted light gymnastics for women and children; advocated PE in schools</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Baron de Coubertin</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">France</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Revived the Modern Olympic Games (1896); founded the IOC</td></tr>
</tbody></table></div>

<h3>Development of Physical Education in Ghana</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Introduced during the colonial era by the British as military drill and exercise</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Post-independence (1957): PE was formalised in school curricula under Kwame Nkrumah</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Ghana participated in the Olympic Games for the first time in <strong>1952</strong> (Helsinki)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">National Sports Authority (NSA) established to coordinate and develop sports in Ghana</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Ghana has produced world-class athletes in boxing (Azumah Nelson, Ike Quartey) and football (Black Stars)</span></div>
</div>', 2);

-- ===================== TOPIC 3: Human Anatomy for Physical Education =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t3, 'The Skeletal System and Muscular System', '<h3>The Skeletal System</h3>
<p>The skeleton provides the structural framework of the body, gives it shape, and supports physical activity.</p>

<h3>Functions of the Skeleton</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">1.</span><span style="color:#374151;line-height:1.7"><strong>Support:</strong> Provides framework to support the body weight</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">2.</span><span style="color:#374151;line-height:1.7"><strong>Protection:</strong> Skull protects brain; rib cage protects heart and lungs; vertebrae protect spinal cord</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">3.</span><span style="color:#374151;line-height:1.7"><strong>Movement:</strong> Bones serve as levers; muscles attach to bones via tendons to produce movement</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">4.</span><span style="color:#374151;line-height:1.7"><strong>Blood cell production:</strong> Red bone marrow produces red blood cells, white blood cells, and platelets</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">5.</span><span style="color:#374151;line-height:1.7"><strong>Mineral storage:</strong> Stores calcium and phosphorus needed for bone strength</span></div>
</div>

<h3>Types of Bones</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Example</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Function</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Long bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Femur, humerus, tibia</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Levers for movement; contain marrow</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Short bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Carpals, tarsals</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Provide stability and limited movement</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Flat bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Skull, scapula, sternum</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Protection; broad surface for muscle attachment</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Irregular bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Vertebrae, hip bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Complex shapes for varied functions</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Sesamoid bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Patella (kneecap)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Protect tendons from stress</td></tr>
</tbody></table></div>

<h3>Types of Joints</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Joint Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Movement</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ball and socket</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Full rotation (all directions)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Hip, shoulder</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Hinge</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Flexion and extension only</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Knee, elbow</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Pivot</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Rotation</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Neck (atlas-axis joint)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Gliding</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sliding/gliding motion</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Wrist (carpal joints)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Saddle</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Two directions</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Thumb (carpometacarpal)</td></tr>
</tbody></table></div>

<h3>Connective Tissues</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Tendons:</strong> Connect muscle to bone (e.g., Achilles tendon)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Ligaments:</strong> Connect bone to bone; stabilise joints</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Cartilage:</strong> Cushions joints; reduces friction (articular cartilage, meniscus)</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Know the mnemonic TLiB: Tendons connect muscle to bone; Ligaments connect bone to bone. Know the 5 functions of the skeleton using: Support, Protection, Movement, Blood cell production, Mineral storage.</span>
</div>', 1),

(t3, 'The Muscular System and Muscle Actions', '<h3>Types of Muscle Tissue</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Location</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Control</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Appearance</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Skeletal (Voluntary)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Attached to bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Voluntary (conscious)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Striated (striped)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Smooth (Involuntary)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Walls of organs (gut, blood vessels)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Involuntary (automatic)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Non-striated (smooth)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Cardiac</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Heart only</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Involuntary (never fatigues)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Striated but branched</td></tr>
</tbody></table></div>

<h3>Major Muscle Groups Relevant to Sport</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Quadriceps (front of thigh):</strong> Extend the knee; used in jumping, running, cycling</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Hamstrings (back of thigh):</strong> Flex the knee; used in sprinting and jumping</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Gastrocnemius (calf):</strong> Plantar flexion (pointing foot); used in running, jumping</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Gluteus maximus (buttock):</strong> Hip extension; sprinting and climbing</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Biceps brachii (front of upper arm):</strong> Flex elbow; pulling movements</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Triceps brachii (back of upper arm):</strong> Extend elbow; pushing movements</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Deltoid (shoulder):</strong> Abduction of arm; throwing actions</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Pectorals (chest):</strong> Adduction of arm; pressing and throwing</span></div>
</div>

<h3>Muscle Actions (Roles in Movement)</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Role</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Function</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Agonist (prime mover)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Main muscle producing movement</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Bicep during arm curl</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Antagonist</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Relaxes to allow movement</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Tricep during arm curl</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Synergist</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Assists agonist; reduces unwanted movement</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Brachialis assisting bicep</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Fixator/Stabiliser</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Stabilises origin of agonist</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Core muscles stabilising spine during lifting</td></tr>
</tbody></table></div>

<h3>Types of Muscle Contraction</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Isotonic Concentric:</strong> Muscle shortens while contracting (e.g., lifting a weight upward)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Isotonic Eccentric:</strong> Muscle lengthens while contracting — controls movement (e.g., lowering a weight)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Isometric:</strong> Muscle contracts without changing length (e.g., holding a plank position)</span></div>
</div>', 2);

-- ===================== TOPIC 4: Physiology of Exercise =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t4, 'Cardiovascular and Respiratory Responses to Exercise', '<h3>The Cardiovascular System</h3>
<p>The cardiovascular system (heart, blood vessels, and blood) supplies oxygen and nutrients to working muscles during exercise.</p>

<h3>Components</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Heart:</strong> Pumps blood; has 4 chambers (right atrium, right ventricle, left atrium, left ventricle)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Arteries:</strong> Carry oxygenated blood away from heart (except pulmonary artery)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Veins:</strong> Carry deoxygenated blood toward heart (except pulmonary vein)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Capillaries:</strong> Tiny vessels where gas and nutrient exchange occurs</span></div>
</div>

<h3>Key Cardiovascular Terms</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Term</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Definition</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">At Rest</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">During Exercise</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Heart Rate (HR)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Beats per minute</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">60-80 bpm</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Up to 200+ bpm</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Stroke Volume (SV)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Blood ejected per beat (mL)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">~70 mL</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Up to 170 mL</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Cardiac Output (CO)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">CO = HR x SV (litres/min)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">~5 L/min</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Up to 25+ L/min</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Blood Pressure</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Force of blood against vessel walls</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">120/80 mmHg</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Systolic rises significantly</td></tr>
</tbody></table></div>

<h3>Respiratory Responses to Exercise</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Breathing rate increases</strong> from ~12-15 breaths/min at rest to 40-60 breaths/min during maximal exercise</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Tidal volume</strong> (air per breath) increases from ~0.5L at rest to ~3L during exercise</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Oxygen uptake (VO2)</strong> increases to meet energy demands of contracting muscles</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Carbon dioxide removal</strong> increases as CO2 production rises with intensity</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Memorise: Cardiac Output = Heart Rate x Stroke Volume. Trained athletes have LOWER resting heart rates (bradycardia) but HIGHER stroke volumes — the heart becomes more efficient with training.</span>
</div>', 1),

(t4, 'Energy Systems and Effects of Training', '<h3>Energy Systems in Sport</h3>
<p>The body uses three energy systems to produce ATP (adenosine triphosphate) — the fuel for muscle contraction:</p>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">System</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Fuel</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Duration</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Sport Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">ATP-PC (Phosphocreatine)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Creatine phosphate</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">0-10 seconds</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">100m sprint, shot put</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Anaerobic Glycolysis (Lactic Acid)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Glycogen (no oxygen)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">10 sec - 2 min</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">400m, 800m, 200m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Aerobic System</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Glycogen, fat, protein (with oxygen)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">2+ minutes</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Marathon, football, cycling</td></tr>
</tbody></table></div>

<h3>Oxygen Debt (EPOC)</h3>
<p>After intense exercise, the body continues to consume oxygen at an elevated rate to restore normal conditions. This is called Excess Post-exercise Oxygen Consumption (EPOC) or "oxygen debt". It is used to:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Restore ATP and creatine phosphate stores</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Remove lactic acid buildup</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Return body temperature and heart rate to normal</span></div>
</div>

<h3>Long-term Effects of Training on the Body</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">System</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Adaptation</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Heart</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Becomes larger and stronger (cardiac hypertrophy); lower resting HR; higher stroke volume</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Lungs</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Increased vital capacity; more efficient gas exchange</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Muscles</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Increased size (hypertrophy); more mitochondria; increased glycogen storage</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Bones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Increased density and strength (reduces osteoporosis risk)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Blood</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Increased blood volume; more red blood cells; improved oxygen-carrying capacity</td></tr>
</tbody></table></div>', 2);

-- ===================== TOPIC 5: Motor Learning and Development =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t5, 'Motor Learning: Definitions, Stages and Types of Skills', '<h3>Definition of Motor Learning</h3>
<p>Motor learning is the process of acquiring and refining movement skills through practice and experience. It involves relatively permanent changes in a person''s capability for movement.</p>

<h3>Stages of Motor Learning (Fitts and Posner Model)</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Stage</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Characteristics</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Cognitive (Verbal)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Beginner stage; must think consciously about every movement; many errors; slow</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Learning to dribble a basketball for the first time</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Associative (Motor)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Intermediate stage; fewer errors; can detect own mistakes; movement becomes smoother</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Dribbling while walking but still thinking about it</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Autonomous (Automatic)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Expert stage; movement is automatic; can focus attention elsewhere; minimal errors</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Dribbling while scanning for teammates at speed</td></tr>
</tbody></table></div>

<h3>Classification of Motor Skills</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Classification</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Types</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Examples</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">By Muscle Size</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Gross skills (large muscles), Fine skills (small muscles)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Gross: running, jumping; Fine: archery, darts</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">By Continuity</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Discrete (clear start/end), Serial, Continuous</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Discrete: penalty kick; Continuous: cycling, swimming</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">By Environment</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Open skills (changing env.), Closed skills (stable env.)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Open: football; Closed: gymnastics vault</td></tr>
</tbody></table></div>

<h3>Transfer of Learning</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Positive Transfer:</strong> Learning one skill helps learning another (e.g., badminton helps tennis)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Negative Transfer:</strong> Learning one skill hinders another (e.g., golf swing interfering with baseball bat swing)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Zero Transfer:</strong> No effect from one skill to another</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Know all THREE stages of motor learning with their characteristics. Also be able to classify skills by at least TWO criteria (muscle size, continuity, environment). The three stages are: Cognitive, Associative, Autonomous.</span>
</div>', 1),

(t5, 'Principles of Training and Feedback in Motor Learning', '<h3>Principles of Training</h3>
<p>Effective training must follow key principles to improve performance safely and effectively:</p>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Principle</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Meaning</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Specificity</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Training must be specific to the sport, skill, and energy system used (SAID — Specific Adaptation to Imposed Demands)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Progressive Overload</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Gradually increase the training load (frequency, intensity, time) to continue adaptation</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Reversibility</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Training gains are lost when training stops — "use it or lose it"</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Individual Differences</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Each athlete responds differently; training must be personalised</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Rest and Recovery</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Adequate rest allows adaptation and prevents overtraining and injury</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Variety</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Varied training prevents boredom, overuse injuries, and plateaus</td></tr>
</tbody></table></div>

<h3>FITT Principle</h3>
<p>Training load is managed using the FITT principle:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>F — Frequency:</strong> How often you train (e.g., 3 times per week)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>I — Intensity:</strong> How hard you train (e.g., 70% of maximum heart rate)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>T — Time:</strong> How long each session lasts (e.g., 45 minutes)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>T — Type:</strong> What kind of training (e.g., aerobic, strength, flexibility)</span></div>
</div>

<h3>Feedback in Motor Learning</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type of Feedback</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Intrinsic (Internal)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Feedback from the body''s own sensory systems (proprioception, vision, feel)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Extrinsic (External)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Feedback from outside — coach, video, scoreboard</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Knowledge of Results (KR)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Information about outcome of movement (e.g., "the shot went wide")</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Knowledge of Performance (KP)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Information about how the movement was performed (e.g., "your elbow was too low")</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Positive Feedback</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Reinforces correct movement; encourages repetition</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Negative Feedback</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Identifies errors; used to correct technique</td></tr>
</tbody></table></div>

<h3>Methods of Practice</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Massed Practice:</strong> Continuous practice with minimal rest; good for simple skills</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Distributed Practice:</strong> Practice broken into shorter sessions with rest intervals; best for complex or dangerous skills</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Whole Practice:</strong> Skill practised as a complete unit; best for simple skills</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Part Practice:</strong> Skill broken into parts for learning; best for complex skills with discrete phases (e.g., high jump approach, takeoff, flight, landing)</span></div>
</div>', 2);

END $$;
