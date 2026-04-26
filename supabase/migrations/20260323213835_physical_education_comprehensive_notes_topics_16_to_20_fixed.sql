
/*
  # Physical Education Comprehensive Notes - Topics 16 to 20 (Fixed)

  Uses correct UUID for topic 17 (Officiating and Sports Administration).
*/

DO $$
DECLARE
  t16 uuid := '3f025dd6-4be4-42ad-9c4d-49ab112272a7';
  t17 uuid := '69033fc3-f9df-4f06-868d-db57ea226c4c';
  t18 uuid := '0bb889be-a6bf-4a0c-a2ff-036fa9c12d9e';
  t19 uuid := '23400fa0-189e-45c9-87f8-89dde7dbe514';
  t20 uuid := '0979bc8b-a554-4259-a1fb-ec42414c2eb0';
BEGIN

DELETE FROM topic_sections WHERE topic_id IN (t16,t17,t18,t19,t20);

-- ===================== TOPIC 16: Biomechanics in Sport =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t16, 'Principles of Biomechanics and Motion', '<h3>Definition of Biomechanics</h3>
<p>Biomechanics is the application of mechanical principles to living organisms, particularly the study of how forces act on the human body during movement and sport. It combines anatomy, physics, and engineering.</p>

<h3>Types of Motion</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Sport Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Linear (Translatory)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Body moves in a straight line; all parts move same direction at same speed</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">100m sprint</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Angular (Rotatory)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Body or segment rotates around an axis</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Discus throw, gymnast spin</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">General</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Combination of linear and angular motion</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Sprinting (body translates while limbs rotate)</td></tr>
</tbody></table></div>

<h3>Newton''s Laws of Motion Applied to Sport</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Law</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Statement</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Sport Application</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>1st Law (Inertia)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">An object remains at rest or in uniform motion unless acted on by an external force</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">A football stays still until kicked; keeps moving until stopped by friction or goalkeeper</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>2nd Law (Acceleration)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Force = Mass x Acceleration (F = ma); acceleration proportional to force applied</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">A heavier shot put requires more force to throw as far as a lighter one</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>3rd Law (Reaction)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">For every action there is an equal and opposite reaction</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Sprinter pushes back against blocks; blocks push sprinter forward</td></tr>
</tbody></table></div>

<h3>Key Biomechanical Concepts</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Centre of Gravity (CoG):</strong> The point where body weight appears concentrated; the lower the CoG, the more stable the body</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Base of Support:</strong> Area enclosed by contact points with ground; wider base = greater stability</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Momentum:</strong> Mass x Velocity; a heavier, faster player has more momentum (harder to stop)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Projectile motion:</strong> Objects in flight are affected by gravity; optimal angle for maximum range is 45 degrees</span></div>
</div>

<h3>Levers in the Human Body</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Class</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Arrangement</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Body Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">1st Class</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Pivot between Force and Load (seesaw)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Head nodding (neck/skull)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">2nd Class</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Load between Force and Pivot (wheelbarrow)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Standing on tip-toes (calf raises)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">3rd Class</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Force between Pivot and Load (most common in body)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Bicep curl; elbow flexion</td></tr>
</tbody></table></div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Newton''s 2nd Law: F = ma. Most body levers are 3rd class. Optimal angle for projectile range = 45 degrees. A wider, lower base of support = more stability.</span>
</div>', 1);

-- ===================== TOPIC 17: Officiating and Sports Administration =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t17, 'Sports Officials, Administration and Governance', '<h3>Role of Sports Officials</h3>
<p>Sports officials ensure games are played fairly, safely, and according to the rules. Different sports use different titles:</p>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Sport</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Officials</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Football</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Referee (1) + 2 Assistant Referees + 4th official</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Basketball</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Referee + Umpire + Scorer + Timer</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Volleyball</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">1st Referee (elevated) + 2nd Referee + 4 linespeople + Scorer (7 total)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Athletics</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Starter, Timekeeper, Judge, Recorder</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Boxing</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Referee (in ring) + 3 Judges (ringside)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Swimming</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Referee + Starter + Timekeepers + Stroke judges + Turn judges</td></tr>
</tbody></table></div>

<h3>Qualities of a Good Sports Official</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Impartiality:</strong> Must not favour any team or individual</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Knowledge of rules:</strong> Must know and apply rules correctly and consistently</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Good physical fitness:</strong> Must keep pace with the game or competition</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Clear communication:</strong> Use clear signals; confident in decision-making</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Integrity:</strong> Resist pressure; make honest, fair decisions under scrutiny</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Good positioning:</strong> Always in the right place to observe play clearly</span></div>
</div>

<h3>Sports Administration in Ghana</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Organisation</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Role</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">National Sports Authority (NSA)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Coordinates, promotes, and develops sport in Ghana; manages sports facilities</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Ghana Olympic Committee (GOC)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Organises Ghana''s participation in the Olympics and Commonwealth Games</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ghana Football Association (GFA)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Governs football in Ghana; affiliated to FIFA and CAF</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Ministry of Youth and Sports</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Government ministry responsible for sports policy and funding</td></tr>
</tbody></table></div>

<h3>Key International Sports Governing Bodies</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>IOC:</strong> International Olympic Committee — governance of the Olympic movement</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>FIFA:</strong> Football | <strong>IAAF/WA:</strong> Athletics | <strong>FIBA:</strong> Basketball | <strong>FIVB:</strong> Volleyball</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>IHF:</strong> Handball | <strong>FIG:</strong> Gymnastics | <strong>World Aquatics (FINA):</strong> Swimming</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>CAF:</strong> Confederation of African Football | <strong>CANA:</strong> Confederation of African Swimming</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Know the Ghana sports bodies: NSA (national sports management), GOC (Olympics), GFA (football), Ministry of Youth and Sports (government policy). Know international bodies: FIFA (football), FIVB (volleyball), FIBA (basketball), FIG (gymnastics), IOC (Olympics).</span>
</div>', 1);

-- ===================== TOPIC 18: Indigenous Games and Cultural Activities =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t18, 'Ghanaian and African Indigenous Games', '<h3>Importance of Indigenous Games</h3>
<p>Indigenous games are traditional physical activities practised by communities for generations. They promote cultural heritage, community cohesion, fitness, and values such as teamwork and leadership.</p>

<h3>Selected Ghanaian Indigenous Games</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Game</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Benefits</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Oware (Mancala)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Board game using seeds in carved holes; strategy and counting game</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Mental agility, concentration, fine motor skills</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Ampe</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Clapping and jumping game; players jump and extend a leg simultaneously to score points</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Coordination, agility, cardiovascular fitness</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Pilolo</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">"Time to search" — objects hidden, players race to find and return them to a finish line</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Speed, agility, observation skills</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Tug of War</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Teams pull opposite ends of rope; team pulling other over centre wins</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Muscular strength, endurance, teamwork</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Kyentinkyi</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Spinning top game; wooden top spun with string; compete for longest spin or target</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Hand-eye coordination, fine motor skills</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Traditional Wrestling (Dambe)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Combat sport practised in Northern Ghana and West Africa; uses wrapped fist</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Strength, agility, courage, cultural identity</td></tr>
</tbody></table></div>

<h3>Values Promoted by Indigenous Games</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Cultural preservation:</strong> Keeps traditions and heritage alive across generations</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Social integration:</strong> Brings communities together across ethnic and social lines</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Low cost:</strong> Require minimal equipment; accessible to all socioeconomic groups</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Physical development:</strong> Develop coordination, strength, speed, and endurance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>National identity:</strong> Contribute to Ghana''s cultural tourism and national pride</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Know at least 4 Ghanaian indigenous games with descriptions: Oware (strategy), Ampe (jumping/clapping), Pilolo (racing/searching), Tug of War (strength). For each game, state at least TWO physical and TWO social benefits.</span>
</div>', 1);

-- ===================== TOPIC 19: Outdoor Education and Recreation =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t19, 'Outdoor Activities, Recreation and Adventure Education', '<h3>Definition and Importance</h3>
<p>Outdoor education uses natural environments as a learning setting to develop physical, personal, social, and environmental skills. Recreation refers to enjoyable activities pursued during leisure time.</p>

<h3>Benefits of Outdoor Education</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Domain</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Benefits</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Physical</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Improves cardiovascular fitness, strength, coordination, and overall health</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Mental</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Reduces stress, anxiety, and depression; improves mood through nature exposure</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Social</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Builds teamwork, communication, trust, and leadership through group challenges</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Personal</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Develops self-reliance, resilience, problem-solving, and decision-making</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Environmental</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Promotes conservation values and ecological responsibility</td></tr>
</tbody></table></div>

<h3>Types of Outdoor and Recreational Activities</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Hiking and trekking:</strong> Walking on trails through natural terrain; develops endurance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Camping:</strong> Overnight stays in nature; teaches survival skills, navigation, shelter-building</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Rock climbing:</strong> Develops strength, problem-solving, trust, and risk management</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Orienteering:</strong> Navigation using map and compass to find checkpoints in terrain</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Canoeing/kayaking:</strong> Water-based activities developing upper body strength and balance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Cycling:</strong> Mountain biking and road cycling for cardiovascular fitness</span></div>
</div>

<h3>Safety in Outdoor Activities</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Always inform someone of your route and expected return time</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Carry water, food, first aid kit, and navigation tools</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Wear appropriate clothing and protective equipment</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Check weather conditions before setting out; never go alone if avoidable</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Never attempt activities beyond your ability without qualified supervision</span></div>
</div>

<h3>Leave No Trace Principles</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">1.</span><span style="color:#374151;line-height:1.7">Plan ahead and prepare thoroughly</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">2.</span><span style="color:#374151;line-height:1.7">Travel and camp on durable surfaces</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">3.</span><span style="color:#374151;line-height:1.7">Dispose of all waste properly — carry rubbish out</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">4.</span><span style="color:#374151;line-height:1.7">Leave what you find — do not damage natural features</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">5.</span><span style="color:#374151;line-height:1.7">Respect wildlife — observe, do not approach or feed animals</span></div>
</div>', 1);

-- ===================== TOPIC 20: Ethics, Doping and Sports Law =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t20, 'Ethics in Sport: Fair Play, Sportsmanship and Doping', '<h3>Ethics and Fair Play in Sport</h3>
<p>Ethics in sport refers to the moral principles guiding behaviour of athletes, coaches, officials, and administrators. Fair play means competing honestly within the rules and spirit of the sport.</p>

<h3>Sportsmanship</h3>
<p>Sportsmanship includes:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Respecting opponents, officials, and rules at all times</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Winning and losing with grace and dignity</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Playing within the spirit of the game, not just the letter of the rules</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Acknowledging good play by the opponent</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Not resorting to cheating, simulation (diving), or gamesmanship</span></div>
</div>

<h3>Doping in Sport</h3>
<p>Doping is the use of banned substances or methods to gain an unfair advantage. It violates fair play principles and threatens athlete health.</p>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Substance/Method</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Effect Sought</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Health Risks</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Anabolic Steroids</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Builds muscle mass rapidly</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Liver damage, heart disease, hormonal disruption, aggression</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">EPO (Erythropoietin)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Boosts red blood cells; increases endurance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Blood clots, stroke, heart attack</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Stimulants</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Increases alertness and reduces fatigue</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Heart problems, addiction, anxiety</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Diuretics</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Lose weight rapidly; mask other drugs</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Severe dehydration, electrolyte imbalance</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Blood Doping</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Transfuse blood to boost oxygen capacity</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Infection, blood clots, transfusion reactions</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">HGH (Growth Hormone)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Promotes muscle and bone growth</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Acromegaly (abnormal growth), joint pain, diabetes</td></tr>
</tbody></table></div>

<h3>Anti-Doping Framework</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>WADA</strong> (World Anti-Doping Agency): Sets global anti-doping rules; publishes annual Prohibited List</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>NADO</strong> (National Anti-Doping Organisation): Implements WADA code at national level</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Testing:</strong> In-competition and out-of-competition; athletes must report their whereabouts</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Sanctions:</strong> First violation typically a 4-year ban; aggravated cases can result in lifetime ban</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Strict liability:</strong> Athletes are responsible for any substance found in their body regardless of intent</span></div>
</div>

<h3>Sports Violence and Spectator Behaviour</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Hooliganism:</strong> Violent or anti-social spectator behaviour; causes damage and injury</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Causes:</strong> Alcohol, tribalism, media sensationalism, player violence setting poor example</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Solutions:</strong> Segregation of fans, CCTV surveillance, alcohol bans, education programmes, severe penalties</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">WADA = World Anti-Doping Agency. Know 4 banned substance categories: Anabolic steroids, EPO, Stimulants, Diuretics — with their intended effects AND health risks. First doping offence = typically 4-year ban. Sportsmanship and fair play are common essay and structured question topics.</span>
</div>', 1);

END $$;
