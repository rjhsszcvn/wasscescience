
/*
  # Physical Education Comprehensive Notes - Topics 6 to 10

  Adds deep WASSCE-level notes for Physical Education topics 6-10:
  6. Physical Fitness
  7. Athletics - Track and Field
  8. Football and Handball
  9. Volleyball and Basketball
  10. Combat Sports and Gymnastics
*/

DO $$
DECLARE
  t6 uuid := '88867a89-e789-410e-a106-a11d771c00e7';
  t7 uuid := '07095501-7ce2-48d0-b0d6-e440ea708e6f';
  t8 uuid := '682c55da-981e-4c11-a792-4e57a0aeebca';
  t9 uuid := 'ff3d89c3-7359-453e-b117-b8e9e211ed1c';
  t10 uuid := '8511dde9-0127-46b6-aa74-d2c3175a8881';
BEGIN

DELETE FROM topic_sections WHERE topic_id IN (t6,t7,t8,t9,t10);

-- ===================== TOPIC 6: Physical Fitness =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t6, 'Components of Physical Fitness', '<h3>Definition of Physical Fitness</h3>
<p>Physical fitness is the ability to perform physical activity effectively without undue fatigue, and to have enough energy left over to enjoy leisure activities and meet emergency demands. It has two broad categories:</p>

<h3>Health-Related Components of Fitness</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Component</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Definition</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Test/Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Cardiovascular Endurance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ability of heart and lungs to sustain prolonged exercise</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Cooper 12-min run; beep test; marathon</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Muscular Strength</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Maximum force a muscle can exert in one contraction</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">1-rep max bench press; hand grip dynamometer</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Muscular Endurance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ability of a muscle to sustain repeated contractions</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Sit-up test; press-up test</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Flexibility</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Range of motion at a joint</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sit-and-reach test; splits</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Body Composition</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ratio of lean body mass to fat mass</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">BMI; skinfold callipers; hydrostatic weighing</td></tr>
</tbody></table></div>

<h3>Skill-Related Components of Fitness</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Component</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Definition</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Sport Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Speed</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ability to move the body quickly</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">100m sprinter</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Power</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Combination of strength and speed (force x velocity)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Shot putter, high jumper</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Agility</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ability to change direction quickly and accurately</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Football dribbler, basketball player</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Balance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Ability to maintain equilibrium (static or dynamic)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Gymnast on beam</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Coordination</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ability to use different body parts together smoothly</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Tennis player, cricket batsman</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Reaction Time</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Time between stimulus and initiation of movement</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sprinter reacting to starting gun</td></tr>
</tbody></table></div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Remember: 5 Health-related components (CMSFC) — Cardiovascular endurance, Muscular strength, Muscular endurance, Flexibility, body Composition. 6 Skill-related components (SPACBR) — Speed, Power, Agility, Coordination, Balance, Reaction time.</span>
</div>', 1),

(t6, 'Methods of Training and Fitness Testing', '<h3>Methods of Training</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Method</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Best For</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Continuous Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Steady-pace aerobic activity (20+ min); no rest intervals</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Cardiovascular endurance</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Interval Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Alternates high-intensity bursts with recovery periods</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Speed, anaerobic capacity</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Circuit Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Series of stations/exercises performed in sequence</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Overall fitness; muscular endurance</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Weight/Resistance Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Uses weights or resistance to overload muscles</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Muscular strength and hypertrophy</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Fartlek Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">"Speed play" — varying pace freely over terrain</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Football, rugby (games with varied intensity)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Flexibility Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Static, dynamic, or PNF stretching</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Joint range of motion; injury prevention</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Plyometric Training</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Explosive exercises (box jumps, depth jumps) to develop power</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Power and speed; athletes in jumping events</td></tr>
</tbody></table></div>

<h3>Warm-Up and Cool-Down</h3>
<p><strong>Warm-Up (before exercise):</strong></p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Gradually raises body temperature and heart rate</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Increases muscle elasticity and reduces injury risk</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Phases: General warm-up (jogging) -> Specific stretching -> Sport-specific drills</span></div>
</div>
<p><strong>Cool-Down (after exercise):</strong></p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Gradually returns body to resting state</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Removes lactic acid; prevents blood pooling in muscles</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Includes light jogging, then static stretching</span></div>
</div>', 2);

-- ===================== TOPIC 7: Athletics - Track and Field =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t7, 'Track Events: Rules, Techniques and Records', '<h3>Classification of Athletics Events</h3>
<p>Athletics (track and field) is divided into track events (running and hurdles), field events (jumping and throwing), and combined events (decathlon, heptathlon).</p>

<h3>Sprint Events</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Event</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Distance</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Key Rule</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Short sprint</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">100m</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Crouch start; false start = disqualification</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Middle sprint</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">200m, 400m</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Run in staggered lanes for 200m; 400m must stay in lane throughout</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Middle distance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">800m, 1500m</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Standing start; break to inside after first bend</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Long distance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">5000m, 10000m, marathon (42.195 km)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Multiple laps; mass start</td></tr>
</tbody></table></div>

<h3>Sprint Start Techniques</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Commands:</strong> "On your marks" -> "Set" -> Gun/start signal</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Crouch start:</strong> Used for 100m, 200m, 400m; starting blocks used</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Drive phase:</strong> Body lean forward; explosive push-off from blocks</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Acceleration phase:</strong> Gradual upright position; stride length increases</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Maximum velocity phase:</strong> Upright posture; full stride length and frequency</span></div>
</div>

<h3>Relay Racing</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">4 x 100m and 4 x 400m relay are Olympic events</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Baton must be passed within a 20m exchange zone</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Failure to pass within zone = disqualification</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Baton exchange techniques: Upsweep, Downsweep, Push pass</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">For relay, know: baton must stay within the 20m takeover zone. In 100m, any false start = immediate disqualification of that athlete. The 4 phases of sprinting: Start, Drive/Acceleration, Maximum Velocity, Deceleration.</span>
</div>', 1),

(t7, 'Field Events: Jumping and Throwing', '<h3>Jumping Events</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Event</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Technique</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Key Rule</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Long Jump</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Run-up, takeoff from board, flight (hang or hitch-kick), landing</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Foot must not cross the plasticine indicator board</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Triple Jump</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Hop (same foot) + Step (other foot) + Jump (landing in sand)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Must use the sequence: hop-step-jump</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">High Jump</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Fosbury Flop (most common): curved run-up, back-first clearance</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">3 attempts at each height; bar must not be dislodged</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Pole Vault</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Run-up, plant pole, swing and vault over bar</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Bar must not be dislodged</td></tr>
</tbody></table></div>

<h3>Throwing Events</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Event</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Implement Weight (Men/Women)</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Technique</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Shot Put</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">7.26 kg / 4 kg</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Push from shoulder; must stay in 2.135m circle; glide or rotational technique</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Discus</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">2 kg / 1 kg</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Rotational throw from 2.5m circle; must land in 35-degree sector</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Javelin</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">800g / 600g</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Run-up and throw; must land tip-first in sector</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Hammer</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">7.26 kg / 4 kg</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">3-4 rotations then release; thrown from circle with cage</td></tr>
</tbody></table></div>

<h3>Rules Common to All Field Events</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Each competitor gets typically 3 qualifying attempts; top performers get 3 more (total 6)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Measurement taken from nearest mark made in landing area to the take-off line</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Wind assistance greater than 2.0 m/s in sprints and long jump invalidates world records</span></div>
</div>', 2);

-- ===================== TOPIC 8: Football and Handball =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t8, 'Association Football: Rules, Positions and Skills', '<h3>History and Governing Body</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Football originated in England; modern rules codified by the Football Association (FA) in <strong>1863</strong></span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">World governing body: <strong>FIFA</strong> (Federation Internationale de Football Association), founded 1904</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">African football governed by <strong>CAF</strong> (Confederation of African Football)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">FIFA World Cup held every 4 years; first in <strong>Uruguay, 1930</strong></span></div>
</div>

<h3>Basic Rules of Football</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Rule</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Detail</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Players</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">11 per side; minimum 7 to continue a match</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Duration</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">2 halves of 45 minutes; 15-minute half-time</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Pitch size</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">100-110m long, 64-75m wide; goal 7.32m x 2.44m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Ball</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Size 5; circumference 68-70cm; pressure 0.6-1.1 atmospheres</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Offside</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Attacker nearer opponent''s goal than both ball and second-last defender when ball is played</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Free kicks</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Direct (can score directly) for serious offences; Indirect (must touch another player first) for technical offences</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Penalty kick</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Awarded for handball or foul in penalty area; taken from penalty spot (11m from goal)</td></tr>
</tbody></table></div>

<h3>Key Football Skills</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Dribbling:</strong> Moving with the ball using close control; change of pace and direction</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Passing:</strong> Inside of foot (accuracy), outside, chip, through ball, long ball</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Shooting:</strong> Power shot (instep), placed shot (inside), volley, header</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Trapping/Controlling:</strong> Stopping the ball with foot sole, chest, thigh, or head</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Tackling:</strong> Block tackle, slide tackle (must play ball, not player)</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Goal dimensions: 7.32m x 2.44m. Penalty spot is 11m (12 yards) from goal. Corner kick arc radius = 1m. A team needs minimum 7 players to start. Offside only applies when ball is played forward.</span>
</div>', 1),

(t8, 'Handball: Rules, Techniques and Court Dimensions', '<h3>History and Governing Body</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Modern handball developed in Germany and Scandinavia in the late 19th century</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International Federation: <strong>IHF</strong> (International Handball Federation)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Included in Olympic Games since <strong>1972</strong> (Munich) for men; 1976 for women</span></div>
</div>

<h3>Court and Equipment</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Feature</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Specification</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Court dimensions</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">40m x 20m (indoor court)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Goal size</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">3m wide x 2m high</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Goal area (crease)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">6m semicircle; only goalkeeper may enter</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">7m line</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Penalty throw taken from here (equivalent to football penalty)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ball size (men)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">58-60cm circumference</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Ball size (women)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">54-56cm circumference</td></tr>
</tbody></table></div>

<h3>Basic Rules of Handball</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Players:</strong> 7 per side (6 outfield + 1 goalkeeper); 5-minute sudden death extra time if tied</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Duration:</strong> 2 halves of 30 minutes each (senior); 25 minutes (junior)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>3-step rule:</strong> Player may take only 3 steps after catching ball without dribbling</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>3-second rule:</strong> Player must not hold the ball for more than 3 seconds without moving or dribbling</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Double dribble:</strong> Not allowed; once dribbling stops, player must pass or shoot</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Suspension:</strong> 2 minutes for serious fouls (like basketball technical foul)</span></div>
</div>

<h3>Handball Skills</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Throwing techniques:</strong> Overarm (most powerful), underarm, side arm, jump shot</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Catching:</strong> Two-hand catch at chest height; basket catch for low balls</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Dribbling:</strong> Single-bounce dribble while running</span></div>
</div>', 2);

-- ===================== TOPIC 9: Volleyball and Basketball =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t9, 'Volleyball: Rules, Court and Techniques', '<h3>Overview</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Invented by <strong>William G. Morgan</strong> in Holyoke, Massachusetts, USA, in <strong>1895</strong></span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>FIVB</strong> (Federation Internationale de Volleyball)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic sport since <strong>1964</strong> (Tokyo Olympics)</span></div>
</div>

<h3>Court and Equipment</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Feature</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Specification</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Court dimensions</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">18m x 9m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Net height (men)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">2.43m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Net height (women)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">2.24m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Attack line</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">3m from net centre (back row players cannot attack from in front)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Players</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">6 per side</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Scoring</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Rally point system; best of 5 sets; first to 25 points (win by 2); 5th set to 15</td></tr>
</tbody></table></div>

<h3>Volleyball Rules</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Maximum <strong>3 touches</strong> per side before ball must cross net</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">One player cannot touch ball <strong>twice in a row</strong></span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Ball must not touch the ground on your side</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Rotation:</strong> Teams rotate clockwise when winning service from opponent</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Libero:</strong> Defensive specialist; wears different colour; cannot serve or attack above net height</span></div>
</div>

<h3>Volleyball Skills</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Serve:</strong> Underarm, overarm (float or topspin), jump serve</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Forearm pass (dig/bump):</strong> Arms together, contact on forearms; used for receiving serves</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Setting (volley):</strong> Fingertip push above head; sets up attacker</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Spike (attack):</strong> Jump, swing arm, hit ball downward with power into opponent''s court</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Block:</strong> Jump at net to stop or deflect opponent''s spike</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Net heights: Men 2.43m, Women 2.24m. Court: 18m x 9m. Sets won to win match: 3 sets. Each set to 25 points (win by 2). 5th set to 15. Rotation is always clockwise.</span>
</div>', 1),

(t9, 'Basketball: Rules, Court and Techniques', '<h3>History and Governing Body</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Invented by <strong>Dr James Naismith</strong> in Springfield, Massachusetts, USA, in <strong>December 1891</strong></span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>FIBA</strong> (Federation Internationale de Basketball)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic sport since <strong>1936</strong> (Berlin)</span></div>
</div>

<h3>Court and Equipment</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Feature</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Specification</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Court size</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">28m x 15m</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Basket height</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">3.05m (10 feet)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">3-point line</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">6.75m from basket (FIBA); 7.24m (NBA)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Players</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">5 per side; 12-man squad per game</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Duration (FIBA)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">4 quarters of 10 minutes each</td></tr>
</tbody></table></div>

<h3>Scoring</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Field goal inside 3-point line:</strong> 2 points</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>3-point shot (beyond arc):</strong> 3 points</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Free throw:</strong> 1 point each (awarded after fouls)</span></div>
</div>

<h3>Key Basketball Rules</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Travelling:</strong> Taking more than 1.5 steps (2 steps in NBA) without dribbling = violation</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Double dribble:</strong> Dribbling with both hands simultaneously or restarting dribble = violation</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>24-second rule:</strong> Team must attempt a shot within 24 seconds of gaining possession</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>8-second rule:</strong> Team must advance ball past halfway line within 8 seconds</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Personal foul:</strong> 5 personal fouls = player disqualified (fouled out)</span></div>
</div>

<h3>Basketball Skills</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Dribbling:</strong> Push ball down with fingertips; keep below waist; alternate hands</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Passing:</strong> Chest pass, bounce pass, overhead pass, baseball pass</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Shooting:</strong> Set shot, lay-up, jump shot, free throw</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Defence:</strong> Man-to-man marking, zone defence</span></div>
</div>', 2);

-- ===================== TOPIC 10: Combat Sports and Gymnastics =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t10, 'Boxing and Wrestling: Rules and Techniques', '<h3>Boxing</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>AIBA</strong> (Association Internationale de Boxe Amateur) — now IBA</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic sport since <strong>1904</strong> (St. Louis Games)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Ghana''s boxing legend: <strong>Azumah Nelson</strong> — WBC Super Featherweight and Featherweight Champion</span></div>
</div>

<h3>Boxing Weight Classes (Selected)</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Class</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Maximum Weight</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Light Flyweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">49 kg</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Flyweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">52 kg</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Featherweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">57 kg</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Lightweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">63.5 kg</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Middleweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">75 kg</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Heavyweight</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Above 91 kg</td></tr>
</tbody></table></div>

<h3>Basic Boxing Rules</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Only punches to the body and head permitted; no kicks, elbows, or headbutts</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Amateur boxing: 3 rounds of 3 minutes each</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Knockout (KO):</strong> Boxer unable to rise within 10 seconds loses</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Technical Knockout (TKO):</strong> Referee stops fight if boxer cannot defend themselves</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Ring size: 4.9m x 6.1m between ropes</span></div>
</div>

<h3>Wrestling</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Freestyle wrestling:</strong> Legs can be used for attack and defence; most popular internationally</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Greco-Roman wrestling:</strong> Holds below the waist are prohibited; back throws and holds only</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Pin/Fall:</strong> Both shoulders of opponent held to mat for 2 seconds = instant win</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Points awarded for takedowns, reversals, near-falls, and escapes</span></div>
</div>', 1),

(t10, 'Gymnastics: Types, Elements and Skills', '<h3>Definition and History</h3>
<p>Gymnastics is a sport that combines physical strength, flexibility, agility, coordination, balance, and grace. It developed from ancient Greek physical training practices.</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>FIG</strong> (Federation Internationale de Gymnastique)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Modern gymnastics pioneer: <strong>Friedrich Jahn</strong> of Germany (Father of Gymnastics)</span></div>
</div>

<h3>Types of Gymnastics</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Events</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Artistic Gymnastics</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Most traditional; uses apparatus</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Men: floor, pommel horse, rings, vault, parallel bars, high bar. Women: vault, uneven bars, balance beam, floor</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Rhythmic Gymnastics</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Dance-like movements with hand-held apparatus</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Rope, hoop, ball, clubs, ribbon</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Acrobatic Gymnastics</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Partner and group work; acrobatic balances and throws</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Pairs, groups</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Trampoline</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Bouncing and aerial skills on trampoline bed</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Individual and synchronized</td></tr>
</tbody></table></div>

<h3>Basic Gymnastics Skills and Terms</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Forward roll:</strong> Tuck and roll forward along spine, chin to chest</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Backward roll:</strong> Roll backward, hands push to protect neck</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Handstand:</strong> Balance inverted on hands; body fully extended</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Cartwheel:</strong> Side rotation with hands and feet alternating on floor</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Bridge/Back arch:</strong> Body arched with hands and feet on floor</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Round-off:</strong> Like cartwheel but lands with feet together; used to set up back tumbling</span></div>
</div>

<h3>Judging in Gymnastics</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>D-score (Difficulty):</strong> Value of skills performed</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>E-score (Execution):</strong> Quality of performance; deductions for errors (bent knees, falls)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Final score:</strong> D-score + E-score</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Falls from apparatus result in a 1.0 deduction</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Know the 6 men''s artistic events (floor, pommel horse, rings, vault, parallel bars, high bar) and 4 women''s events (vault, uneven bars, balance beam, floor). The Father of Gymnastics is Friedrich Jahn. FIG governs gymnastics.</span>
</div>', 2);

END $$;
