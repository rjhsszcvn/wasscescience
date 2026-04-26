
/*
  # Physical Education Comprehensive Notes - Topics 11 to 15

  Adds deep WASSCE-level notes for Physical Education topics 11-15:
  11. Swimming and Aquatics
  12. Racket Sports and Table Tennis
  13. Sports Nutrition
  14. Sports Injuries and Prevention
  15. Sports Psychology
*/

DO $$
DECLARE
  t11 uuid := 'ae15e23b-e030-4a80-a189-743fadbc4108';
  t12 uuid := '5a55f9d4-5ace-4d34-a0c7-0808b7924b44';
  t13 uuid := '71517b77-7989-4847-af81-0a768bfddab6';
  t14 uuid := 'e67be640-7ad0-4187-aa24-6ac4890c3467';
  t15 uuid := 'bfd3118e-a6e4-470a-8ee8-9b90b9fc5cb2';
BEGIN

DELETE FROM topic_sections WHERE topic_id IN (t11,t12,t13,t14,t15);

-- ===================== TOPIC 11: Swimming and Aquatics =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t11, 'Swimming Strokes, Rules and Safety', '<h3>History and Governing Body</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Swimming has been practised since ancient civilisations; introduced to Olympics in <strong>1896</strong></span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International governing body: <strong>FINA</strong> (Federation Internationale de Natation) — now World Aquatics</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic pool: 50m length, 8 lanes, minimum 2m depth</span></div>
</div>

<h3>The Four Competitive Swimming Strokes</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Stroke</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Body Position</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Arm Action</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Leg Action</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Freestyle (Front Crawl)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Face down; horizontal</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Alternate arm pull; S-shaped underwater pull</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Flutter kick (6-beat); alternating up/down</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Backstroke</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Face up; horizontal on back</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Alternate arm recovery over water; pull below</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Flutter kick; alternating up/down</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Breaststroke</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Face down; body rises/falls</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Simultaneous outward scoop; recover under water</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Frog kick (whip kick); simultaneous kick</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Butterfly</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Face down; undulating body movement</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Both arms pull simultaneously; recover over water</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Dolphin kick; both legs together</td></tr>
</tbody></table></div>

<h3>Speed Order (fastest to slowest)</h3>
<p>Front Crawl -> Butterfly -> Backstroke -> Breaststroke</p>

<h3>Swimming Rules</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Swimmers must touch the wall correctly at turns and finishes specific to each stroke</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Breaststroke: both hands must touch wall simultaneously at turns and finish</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Backstroke: swimmer must stay on back except during flip turns</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Medley order: Butterfly -> Backstroke -> Breaststroke -> Freestyle</span></div>
</div>

<h3>Water Safety</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Never swim alone (always use the buddy system)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">No running on wet pool deck</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Check water depth before diving (no diving in shallow water)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Know the HELP (Heat Escape Lessening Position) to conserve heat in cold water</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>DRSABC for drowning rescue:</strong> Danger, Response, Send for help, Airway, Breathing, Compressions</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">The four strokes in order of an individual medley (IM) race: Butterfly, Backstroke, Breaststroke, Freestyle. The fastest stroke is front crawl; the slowest is breaststroke. Frog kick is used in breaststroke; dolphin kick in butterfly.</span>
</div>', 1);

-- ===================== TOPIC 12: Racket Sports and Table Tennis =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t12, 'Table Tennis, Badminton and Lawn Tennis', '<h3>Table Tennis</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Originated in England in the 1880s; also called "Ping Pong"</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>ITTF</strong> (International Table Tennis Federation)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Olympic sport since <strong>1988</strong> (Seoul)</span></div>
</div>

<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Feature</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Specification</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Table dimensions</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">2.74m long x 1.525m wide x 0.76m high</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Net height</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">15.25cm</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ball</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">40mm diameter; white or orange; 2.7g</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Scoring</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Best of 5 or 7 sets; each set to 11 points; win by 2</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Service</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Ball tossed at least 16cm; struck behind end line; alternate every 2 points</td></tr>
</tbody></table></div>

<h3>Badminton</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Developed in British India in the 19th century; named after Badminton House, England</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">International body: <strong>BWF</strong> (Badminton World Federation)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Court: 13.4m x 6.1m (doubles); net height 1.55m at posts, 1.524m at centre</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Shuttlecock (birdie): feather or synthetic; weighs 4.74-5.5g</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Scoring: 3 sets; each set to 21 points; win by 2; 3rd set to 21</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Strokes: Clear, Drop shot, Smash, Net shot, Drive</span></div>
</div>

<h3>Lawn Tennis</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Feature</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Specification</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Governing body</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">ITF (International Tennis Federation)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Court size</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">23.77m x 10.97m (doubles); net height 0.914m at centre</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Scoring</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">0, 15, 30, 40, Game; Deuce at 40-40; Advantage; win by 2 points</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sets</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">First to 6 games (win by 2); tiebreak at 6-6 (to 7 points, win by 2)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Grand Slams</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Australian Open, French Open (Roland Garros), Wimbledon, US Open</td></tr>
</tbody></table></div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Table tennis scoring: sets won to 11 points. Badminton: sets to 21 points. Tennis scoring sequence: Love (0), 15, 30, 40, Game. Know the 4 Grand Slams by name and surface: Australian (hard), French (clay), Wimbledon (grass), US Open (hard).</span>
</div>', 1);

-- ===================== TOPIC 13: Sports Nutrition =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t13, 'Nutrients, Diet and Energy for Sport', '<h3>Importance of Nutrition in Sport</h3>
<p>Proper nutrition fuels athletic performance, aids recovery, builds and repairs muscle, and maintains overall health. An athlete''s diet must be carefully planned around training and competition.</p>

<h3>The Six Classes of Nutrients</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Nutrient</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Primary Role</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Food Sources</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Carbohydrates</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Primary energy source; stored as glycogen in muscles and liver</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Rice, fufu, bread, yam, bananas, pasta</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Proteins</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Build and repair muscles; enzymes and hormones</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Meat, fish, eggs, beans, groundnuts, milk</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Fats (Lipids)</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Secondary energy source; insulation; fat-soluble vitamins (A, D, E, K)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Nuts, palm oil, avocado, coconut, fish oils</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Vitamins</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Regulate body processes; immunity; metabolism</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Fruits, vegetables, dairy</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc"><strong>Minerals</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Bone strength (calcium), oxygen transport (iron), nerve function</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Dairy, leafy greens, red meat, nuts</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff"><strong>Water</strong></td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Temperature regulation; transports nutrients; lubricates joints</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Drinking water, fruits, soups</td></tr>
</tbody></table></div>

<h3>Energy Values of Macronutrients</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Carbohydrates:</strong> 4 kilocalories (kcal) per gram</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Proteins:</strong> 4 kcal per gram</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Fats:</strong> 9 kcal per gram (highest energy density)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Alcohol:</strong> 7 kcal per gram (but not a nutrient)</span></div>
</div>

<h3>Pre-Competition, During Competition, and Post-Competition Nutrition</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Phase</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Timing</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Recommendations</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Pre-competition</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">2-4 hours before</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">High carbohydrate, moderate protein, low fat, low fibre meal to maximise glycogen</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">During</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Events over 1 hour</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sports drinks (electrolytes + carbohydrates); 30-60g carbs per hour; water every 15-20 min</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Post-competition</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Within 30-45 minutes</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">High carbohydrate + protein to replenish glycogen and repair muscle; rehydrate</td></tr>
</tbody></table></div>

<h3>Hydration in Sport</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Dehydration:</strong> Loss of 2% body weight in fluid = 10-20% decrease in performance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Signs of dehydration: dark urine, headache, fatigue, reduced coordination</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Athletes should drink 400-600ml water 2 hours before exercise</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">Electrolytes (sodium, potassium) lost in sweat must be replaced in prolonged exercise</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Memorise energy values: Carbs = 4 kcal/g, Protein = 4 kcal/g, Fat = 9 kcal/g. Carbohydrates are the primary fuel for exercise. Glycogen (stored carbohydrate) is depleted in 90+ minutes of high-intensity exercise — this is called "hitting the wall" or "bonking".</span>
</div>', 1);

-- ===================== TOPIC 14: Sports Injuries and Prevention =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t14, 'Types of Sports Injuries, Treatment and Prevention', '<h3>Classification of Sports Injuries</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Category</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Soft Tissue</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Strain</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Overstretching or tearing of a <strong>muscle or tendon</strong></td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Soft Tissue</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Sprain</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Overstretching or tearing of a <strong>ligament</strong> (joint injury)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Soft Tissue</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Contusion (bruise)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Blunt force impact; blood vessels rupture under skin; no break in skin</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Bone</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Fracture</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Break in a bone: closed (simple), open (compound), stress fracture</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Joint</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Dislocation</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Bones of a joint forced out of normal position</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Overuse</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Tendinitis</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Inflammation of a tendon from repetitive stress</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Skin</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Abrasion (graze)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Scraping of skin surface; risk of infection</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Skin</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Laceration (cut)</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Jagged tear in skin; may require stitching</td></tr>
</tbody></table></div>

<h3>PRICER/PRICE Treatment Protocol</h3>
<p>For soft tissue injuries (strains, sprains, contusions), the immediate treatment is:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>P — Protection:</strong> Protect the injured area from further damage</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>R — Rest:</strong> Stop activity immediately; rest the injured part</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>I — Ice:</strong> Apply ice pack wrapped in cloth for 15-20 minutes; reduces swelling and pain</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>C — Compression:</strong> Apply firm bandage to limit swelling</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>E — Elevation:</strong> Raise injured limb above heart level to drain excess fluid</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>R — Referral:</strong> Refer to doctor or physiotherapist for further assessment</span></div>
</div>

<h3>Prevention of Sports Injuries</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Warm-up:</strong> Proper warm-up increases muscle elasticity and reduces injury risk</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Proper technique:</strong> Correct movement patterns prevent overuse and acute injuries</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Appropriate equipment:</strong> Correct footwear, padding, helmets, mouthguards</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Progressive training:</strong> Follow overload principles; avoid sudden large increases in load</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Strength and conditioning:</strong> Strong muscles protect joints</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Safe playing environment:</strong> Remove hazards; check surfaces and equipment</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">CRITICAL DISTINCTION: Strain = muscle/tendon injury; Sprain = ligament injury (joint). Remember PRICER: Protection, Rest, Ice, Compression, Elevation, Referral. Do NOT apply heat immediately after an acute soft tissue injury — use ICE only.</span>
</div>', 1);

-- ===================== TOPIC 15: Sports Psychology =====================
INSERT INTO topic_sections (topic_id, title, content, order_index) VALUES
(t15, 'Mental Skills, Motivation and Stress in Sport', '<h3>Definition of Sports Psychology</h3>
<p>Sports psychology is the study of psychological factors that influence participation, performance, and well-being in sport and exercise. It applies psychological principles to help athletes maximise performance and enjoy their sport.</p>

<h3>Motivation in Sport</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Definition</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Example</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Intrinsic Motivation</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Motivation from within — personal enjoyment, satisfaction, desire to improve</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Playing for the love of the game</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Extrinsic Motivation</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Motivation from external rewards — trophies, money, praise, fame</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Playing for prize money or a scholarship</td></tr>
</tbody></table></div>

<h3>Arousal and Performance</h3>
<p>Arousal is a state of alertness and readiness. The relationship between arousal and performance follows the <strong>Inverted-U Theory (Yerkes-Dodson Law)</strong>:</p>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Low arousal:</strong> Under-motivated; poor performance</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Optimal arousal:</strong> Peak performance; best concentration and focus</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Over-arousal:</strong> Anxiety; muscle tension; "choking" under pressure</span></div>
</div>
<p>Note: Complex/fine skill sports (e.g., archery, golf putting) require lower arousal levels; gross/power sports (e.g., weightlifting, sprinting) can tolerate higher arousal.</p>

<h3>Anxiety in Sport</h3>
<div style="overflow-x:auto;margin:16px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Type</th><th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8">Description</th></tr></thead><tbody>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Somatic Anxiety</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Physical symptoms: racing heart, sweating, trembling, muscle tension, nausea</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Cognitive Anxiety</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Mental symptoms: worry, negative thoughts, poor concentration, fear of failure</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">Trait Anxiety</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#f8fafc">General tendency to perceive situations as threatening (personality-based)</td></tr>
<tr><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">State Anxiety</td><td style="padding:10px 14px;border:1px solid #e2e8f0;background:#ffffff">Anxiety specific to a particular situation (e.g., pre-match nerves)</td></tr>
</tbody></table></div>

<h3>Mental Skills for Performance</h3>
<div style="margin:8px 0">
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Goal setting:</strong> Set SMART goals (Specific, Measurable, Achievable, Realistic, Time-bound)</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Imagery (mental rehearsal):</strong> Visualising successful performance to build confidence</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Self-talk:</strong> Positive internal dialogue to maintain confidence and focus</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Relaxation techniques:</strong> Deep breathing, progressive muscle relaxation to reduce anxiety</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Concentration:</strong> Ability to focus on relevant cues and block out distractions</span></div>
<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7"><strong>Pre-performance routines:</strong> Consistent rituals before performance to achieve optimal mental state</span></div>
</div>

<div style="background:#eff6ff;border-left:4px solid #2563eb;padding:14px 18px;border-radius:0 8px 8px 0;margin:16px 0">
<strong style="color:#1d4ed8">WASSCE Exam Tip:</strong> <span style="color:#1e3a8a">Key theory: Inverted-U Theory — optimal performance occurs at moderate arousal. Know the difference: Intrinsic motivation (internal) vs Extrinsic motivation (external rewards). SMART goals: Specific, Measurable, Achievable, Realistic, Time-bound. Somatic = physical symptoms; Cognitive = mental symptoms of anxiety.</span>
</div>', 1);

END $$;
