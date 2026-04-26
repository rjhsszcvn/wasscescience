import { useEffect, useState } from 'react';
import { Star, ChevronRight, ArrowLeft, TrendingUp, BookOpen, Target, Zap } from 'lucide-react';
import { updateMetaTags, PAGE_SEO } from '../../lib/seo';
import { Page } from '../../lib/types';

interface LikelyQuestionsPageProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

interface LikelyQuestion {
  id: number;
  question: string;
  hint: string;
  topic: string;
  difficulty: 'Easy' | 'Medium' | 'Hard';
}

interface SubjectQuestions {
  subject: string;
  slug: string;
  color: string;
  prediction: string;
  questions: LikelyQuestion[];
}

const SUBJECTS_DATA: SubjectQuestions[] = [
  {
    subject: 'Mathematics',
    slug: 'mathematics',
    color: 'blue',
    prediction: 'High likelihood of Quadratics, Trigonometry and Statistics questions in 2026.',
    questions: [
      { id: 1, question: 'Solve the quadratic equation 2x² - 5x + 3 = 0 by factorisation.', hint: 'Find two numbers that multiply to 6 and add to -5.', topic: 'Algebra', difficulty: 'Medium' },
      { id: 2, question: 'Find the length of arc of a circle with radius 7 cm subtending an angle of 60° at the centre.', hint: 'Arc length = (θ/360) × 2πr', topic: 'Mensuration', difficulty: 'Medium' },
      { id: 3, question: 'The mean of five numbers is 12. Four of the numbers are 8, 10, 15, 20. Find the fifth number.', hint: 'Use: mean = sum / count, so sum = mean × count.', topic: 'Statistics', difficulty: 'Easy' },
      { id: 4, question: 'Simplify: (2³ × 2⁵) ÷ 2⁴', hint: 'Use laws of indices: same base, add powers for multiplication.', topic: 'Indices', difficulty: 'Easy' },
      { id: 5, question: 'Find the gradient of the line passing through points (2, 3) and (5, 9).', hint: 'Gradient m = (y₂ - y₁) / (x₂ - x₁)', topic: 'Coordinate Geometry', difficulty: 'Easy' },
      { id: 6, question: 'A box contains 3 red, 4 blue and 5 green balls. If one ball is selected at random, find the probability that it is blue.', hint: 'P(blue) = number of blue balls / total balls', topic: 'Probability', difficulty: 'Easy' },
      { id: 7, question: 'Evaluate log₂ 64', hint: '2 to the power of what equals 64?', topic: 'Logarithms', difficulty: 'Easy' },
      { id: 8, question: 'If sin θ = 3/5, find cos θ and tan θ where θ is acute.', hint: 'Use Pythagoras theorem on a right-angled triangle.', topic: 'Trigonometry', difficulty: 'Medium' },
    ],
  },
  {
    subject: 'Physics',
    slug: 'physics',
    color: 'red',
    prediction: 'Electricity, Waves and Forces expected to feature heavily in WAEC 2026.',
    questions: [
      { id: 1, question: 'A resistor of 6Ω is connected in parallel with one of 12Ω. Calculate the combined resistance.', hint: '1/R_total = 1/R₁ + 1/R₂ for parallel resistors.', topic: 'Electricity', difficulty: 'Medium' },
      { id: 2, question: 'A body of mass 5 kg accelerates at 4 m/s². Calculate the net force acting on it.', hint: 'Newton\'s Second Law: F = ma', topic: 'Mechanics', difficulty: 'Easy' },
      { id: 3, question: 'Light travels from water (n=1.33) to glass (n=1.5). If the angle of incidence is 30°, find the angle of refraction.', hint: 'Snell\'s Law: n₁ sin θ₁ = n₂ sin θ₂', topic: 'Optics', difficulty: 'Hard' },
      { id: 4, question: 'Calculate the kinetic energy of a 2 kg ball moving at 10 m/s.', hint: 'KE = ½mv²', topic: 'Energy', difficulty: 'Easy' },
      { id: 5, question: 'A wave has frequency 50 Hz and wavelength 2 m. Calculate its speed.', hint: 'Wave speed v = fλ', topic: 'Waves', difficulty: 'Easy' },
      { id: 6, question: 'Explain why a needle floats on water despite being denser than water.', hint: 'Think about surface tension and the shape of the needle.', topic: 'Pressure & Surface Tension', difficulty: 'Medium' },
      { id: 7, question: 'A thermometer reads 37°C. Convert this to Kelvin.', hint: 'K = °C + 273', topic: 'Heat', difficulty: 'Easy' },
      { id: 8, question: 'State three uses of electromagnetic waves in everyday life.', hint: 'Think of radio, X-rays, microwaves, infrared.', topic: 'Electromagnetic Spectrum', difficulty: 'Easy' },
    ],
  },
  {
    subject: 'Chemistry',
    slug: 'chemistry',
    color: 'teal',
    prediction: 'Mole calculations, Organic Chemistry reactions, and Electrochemistry are top priorities.',
    questions: [
      { id: 1, question: 'Calculate the number of moles in 44g of CO₂. (C=12, O=16)', hint: 'Molar mass of CO₂ = 12 + 32 = 44 g/mol. Moles = mass ÷ molar mass.', topic: 'Mole Concept', difficulty: 'Easy' },
      { id: 2, question: 'Write the IUPAC name for CH₃CH₂CH(CH₃)CH₃.', hint: 'Find the longest carbon chain, number from the end nearest the branch.', topic: 'Organic Chemistry', difficulty: 'Medium' },
      { id: 3, question: 'Identify the oxidising and reducing agents in: Zn + CuSO₄ → ZnSO₄ + Cu', hint: 'OIL RIG — the element that loses electrons is oxidised (reducing agent).', topic: 'Redox Reactions', difficulty: 'Medium' },
      { id: 4, question: 'State Le Chatelier\'s principle and apply it to the Haber Process.', hint: 'The system shifts to oppose any change in conditions.', topic: 'Equilibrium', difficulty: 'Hard' },
      { id: 5, question: 'Calculate the pH of a 0.01 mol/dm³ HCl solution.', hint: 'pH = -log[H⁺]. HCl fully dissociates so [H⁺] = 0.01 mol/dm³.', topic: 'Acids & Bases', difficulty: 'Medium' },
      { id: 6, question: 'Distinguish between a covalent bond and an ionic bond with examples.', hint: 'Sharing vs transfer of electrons.', topic: 'Chemical Bonding', difficulty: 'Easy' },
      { id: 7, question: 'Describe what happens when copper electrodes are used in the electrolysis of copper sulphate solution.', hint: 'Anode dissolves; cathode gains copper mass.', topic: 'Electrolysis', difficulty: 'Medium' },
      { id: 8, question: 'Name two uses of electrolysis in industry.', hint: 'Think of electroplating and extraction of metals.', topic: 'Electrolysis', difficulty: 'Easy' },
    ],
  },
  {
    subject: 'Biology',
    slug: 'biology',
    color: 'emerald',
    prediction: 'Cell division, Genetics and Ecosystem topics are expected to appear in WAEC 2026.',
    questions: [
      { id: 1, question: 'Describe the process of mitosis and explain its significance.', hint: 'Stages: Prophase, Metaphase, Anaphase, Telophase. Produces 2 identical cells.', topic: 'Cell Division', difficulty: 'Medium' },
      { id: 2, question: 'In pea plants, tall (T) is dominant over dwarf (t). If Tt × tt cross is performed, what are the expected phenotype ratios?', hint: 'Draw a Punnett square. Tt × tt gives Tt and tt offspring.', topic: 'Genetics', difficulty: 'Medium' },
      { id: 3, question: 'Explain the role of the kidney in osmoregulation.', hint: 'The kidney regulates water and salt levels through urine production.', topic: 'Excretion', difficulty: 'Hard' },
      { id: 4, question: 'Draw and label the structure of a chloroplast and state its function.', hint: 'Key parts: outer membrane, inner membrane, thylakoid, stroma.', topic: 'Photosynthesis', difficulty: 'Medium' },
      { id: 5, question: 'What is the difference between aerobic and anaerobic respiration? Give equations for both.', hint: 'Aerobic uses oxygen; anaerobic does not. Compare ATP yields.', topic: 'Respiration', difficulty: 'Medium' },
      { id: 6, question: 'Describe three adaptations of the mammalian small intestine for absorption of digested food.', hint: 'Think of villi, microvilli, blood supply, lymph vessels.', topic: 'Nutrition', difficulty: 'Medium' },
      { id: 7, question: 'Explain how DDT spraying can lead to the extinction of eagles in a food chain.', hint: 'Bioaccumulation — toxin concentration increases at each trophic level.', topic: 'Ecology', difficulty: 'Hard' },
      { id: 8, question: 'State the functions of oestrogen in the female reproductive system.', hint: 'Thickens uterus lining, triggers LH surge, secondary sexual characteristics.', topic: 'Reproduction', difficulty: 'Medium' },
    ],
  },
  {
    subject: 'English Language',
    slug: 'english-language',
    color: 'green',
    prediction: 'Summary writing, comprehension and letter/essay writing are perennial WAEC favourites.',
    questions: [
      { id: 1, question: 'Write a letter to your local government chairman requesting the repair of roads in your community. (120-150 words)', hint: 'Use formal letter format: address, date, salutation, body, closing.', topic: 'Letter Writing', difficulty: 'Medium' },
      { id: 2, question: 'Summarise the following passage in not more than 80 words in continuous prose.', hint: 'Identify the main idea and 3-4 key supporting points. Avoid examples.', topic: 'Summary Writing', difficulty: 'Medium' },
      { id: 3, question: 'Write a speech on the theme "Social Media: Its Benefits and Dangers to Youth".', hint: 'Open with a salutation, state your position, give balanced arguments, conclude with recommendation.', topic: 'Speech Writing', difficulty: 'Hard' },
      { id: 4, question: 'From the passage, what does the word "ubiquitous" mean as used in paragraph 2?', hint: 'Use context clues from the sentence and surrounding text.', topic: 'Comprehension', difficulty: 'Easy' },
      { id: 5, question: 'Identify the figure of speech in: "The soldiers marched into battle like lions."', hint: 'It compares soldiers to lions using "like". What figure is that?', topic: 'Literary Devices', difficulty: 'Easy' },
      { id: 6, question: 'Rewrite the following sentence in passive voice: "The teacher marked the scripts."', hint: 'Object becomes subject: "The scripts were marked by the teacher."', topic: 'Grammar', difficulty: 'Easy' },
      { id: 7, question: 'Write an article for your school magazine on the importance of reading.', hint: 'Include a title, introduction, body with examples, and conclusion.', topic: 'Article Writing', difficulty: 'Medium' },
      { id: 8, question: 'Give the phonetic symbol for the vowel sound in the word "bird".', hint: 'The /ɜː/ sound — as in bird, word, heard.', topic: 'Oral English', difficulty: 'Medium' },
    ],
  },
  {
    subject: 'Geography',
    slug: 'geography',
    color: 'orange',
    prediction: 'Population, West African rivers and climate zones are strongly predicted for 2026.',
    questions: [
      { id: 1, question: 'State three problems associated with rapid population growth in West Africa.', hint: 'Think of unemployment, housing, food security, infrastructure.', topic: 'Population', difficulty: 'Easy' },
      { id: 2, question: 'Describe the characteristics of the tropical rainforest climate.', hint: 'Temperature range, rainfall pattern, humidity, distinct seasons.', topic: 'Climate', difficulty: 'Medium' },
      { id: 3, question: 'Explain how a meander is formed in a river.', hint: 'Outer bank erosion, inner bank deposition, lateral erosion widens the bend.', topic: 'Rivers', difficulty: 'Medium' },
      { id: 4, question: 'Give three factors that determine the location of industries.', hint: 'Think of raw materials, labour, transport, market, energy.', topic: 'Industry', difficulty: 'Easy' },
      { id: 5, question: 'Explain the significance of the Greenwich Meridian.', hint: 'It defines longitude 0°, divides East and West, used for time zones.', topic: 'Map Reading', difficulty: 'Easy' },
      { id: 6, question: 'Describe three methods of soil conservation used by West African farmers.', hint: 'Contour ploughing, terracing, crop rotation, planting cover crops.', topic: 'Soils', difficulty: 'Medium' },
      { id: 7, question: 'State the differences between immigration and emigration.', hint: 'Immigration = moving INTO a country; Emigration = moving OUT of a country.', topic: 'Migration', difficulty: 'Easy' },
      { id: 8, question: 'Describe the formation of a lagoon along the West African coast.', hint: 'Coastal deposition builds a bar across a bay, trapping water inland.', topic: 'Coastal Features', difficulty: 'Hard' },
    ],
  },
];

const COLOR_MAP: Record<string, { header: string; card: string; badge: string; diff: string; btn: string }> = {
  blue: { header: 'from-blue-600 to-blue-700', card: 'bg-blue-50 border-blue-200', badge: 'bg-blue-100 text-blue-700', diff: 'text-blue-600', btn: 'bg-blue-600 hover:bg-blue-700' },
  red: { header: 'from-red-600 to-red-700', card: 'bg-red-50 border-red-200', badge: 'bg-red-100 text-red-700', diff: 'text-red-600', btn: 'bg-red-600 hover:bg-red-700' },
  teal: { header: 'from-teal-600 to-teal-700', card: 'bg-teal-50 border-teal-200', badge: 'bg-teal-100 text-teal-700', diff: 'text-teal-600', btn: 'bg-teal-600 hover:bg-teal-700' },
  emerald: { header: 'from-emerald-600 to-emerald-700', card: 'bg-emerald-50 border-emerald-200', badge: 'bg-emerald-100 text-emerald-700', diff: 'text-emerald-600', btn: 'bg-emerald-600 hover:bg-emerald-700' },
  green: { header: 'from-green-600 to-green-700', card: 'bg-green-50 border-green-200', badge: 'bg-green-100 text-green-700', diff: 'text-green-600', btn: 'bg-green-600 hover:bg-green-700' },
  orange: { header: 'from-orange-600 to-orange-700', card: 'bg-orange-50 border-orange-200', badge: 'bg-orange-100 text-orange-700', diff: 'text-orange-600', btn: 'bg-orange-600 hover:bg-orange-700' },
};

const DIFF_COLOR: Record<string, string> = {
  Easy: 'bg-green-100 text-green-700',
  Medium: 'bg-yellow-100 text-yellow-700',
  Hard: 'bg-red-100 text-red-700',
};

export default function LikelyQuestionsPage({ onNavigate }: LikelyQuestionsPageProps) {
  const [activeSubject, setActiveSubject] = useState(SUBJECTS_DATA[0].subject);
  const [expandedQuestions, setExpandedQuestions] = useState<Set<number>>(new Set());

  useEffect(() => {
    updateMetaTags(PAGE_SEO['likely-questions']);
  }, []);

  const current = SUBJECTS_DATA.find(s => s.subject === activeSubject) || SUBJECTS_DATA[0];
  const colors = COLOR_MAP[current.color];

  function toggleQuestion(id: number) {
    setExpandedQuestions(prev => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  }

  return (
    <div className="min-h-screen bg-white">
      <div className="bg-gradient-to-br from-slate-900 via-yellow-950 to-slate-900 text-white py-14 px-4">
        <div className="max-w-4xl mx-auto">
          <button
            onClick={() => onNavigate('home')}
            className="flex items-center gap-2 text-yellow-300 hover:text-white text-sm mb-6 transition-colors"
          >
            <ArrowLeft className="w-4 h-4" /> Back to Home
          </button>
          <div className="flex items-center gap-3 mb-4">
            <div className="w-10 h-10 rounded-xl bg-yellow-600 flex items-center justify-center">
              <Star className="w-5 h-5 text-white" />
            </div>
            <span className="text-yellow-300 font-medium text-sm uppercase tracking-widest">2026 Exam Prediction</span>
          </div>
          <h1 className="text-3xl sm:text-4xl font-extrabold leading-tight mb-4">
            Top Likely WASSCE Questions for 2026<br />
            <span className="text-yellow-400">Predicted WAEC Topics & High-Yield Questions</span>
          </h1>
          <p className="text-slate-300 text-lg max-w-2xl mb-8">
            Based on past WAEC patterns from 2019–2024, these are the most likely questions for each subject in the 2026 WASSCE exam. Study these topics first.
          </p>
          <div className="flex flex-wrap gap-3">
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium flex items-center gap-2">
              <TrendingUp className="w-4 h-4" /> Based on Past Trends
            </div>
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium flex items-center gap-2">
              <Target className="w-4 h-4" /> High-Yield Topics
            </div>
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium flex items-center gap-2">
              <Zap className="w-4 h-4" /> Hints Included
            </div>
          </div>
        </div>
      </div>

      <div className="max-w-4xl mx-auto px-4 py-8">
        <div className="flex flex-wrap gap-2 mb-8">
          {SUBJECTS_DATA.map(sub => (
            <button
              key={sub.subject}
              onClick={() => { setActiveSubject(sub.subject); setExpandedQuestions(new Set()); }}
              className={`text-sm px-4 py-2 rounded-xl font-semibold transition-colors border-2 ${activeSubject === sub.subject ? `bg-gradient-to-r ${COLOR_MAP[sub.color].header} text-white border-transparent` : 'bg-white text-slate-600 border-slate-200 hover:border-slate-300'}`}
            >
              {sub.subject}
            </button>
          ))}
        </div>

        <div className={`rounded-2xl border-2 p-6 mb-8 ${colors.card}`}>
          <div className="flex items-center gap-3 mb-2">
            <TrendingUp className="w-5 h-5 text-slate-600" />
            <h2 className="font-bold text-slate-900 text-lg">{current.subject} — 2026 Prediction</h2>
          </div>
          <p className="text-slate-700 text-sm">{current.prediction}</p>
        </div>

        <div className="space-y-4 mb-12">
          {current.questions.map((q, i) => (
            <div key={q.id} className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm hover:shadow-md transition-shadow">
              <button
                className="w-full flex items-center gap-4 p-5 text-left"
                onClick={() => toggleQuestion(q.id)}
              >
                <div className={`w-8 h-8 rounded-lg flex items-center justify-center flex-shrink-0 bg-gradient-to-r ${colors.header} text-white font-bold text-sm`}>
                  {i + 1}
                </div>
                <div className="flex-1 min-w-0">
                  <div className="flex flex-wrap items-center gap-2 mb-1">
                    <span className={`text-xs px-2 py-0.5 rounded-full font-semibold ${colors.badge}`}>{q.topic}</span>
                    <span className={`text-xs px-2 py-0.5 rounded-full font-semibold ${DIFF_COLOR[q.difficulty]}`}>{q.difficulty}</span>
                  </div>
                  <p className="text-slate-800 font-medium text-sm leading-snug">{q.question}</p>
                </div>
                <ChevronRight className={`w-5 h-5 text-slate-400 flex-shrink-0 transition-transform ${expandedQuestions.has(q.id) ? 'rotate-90' : ''}`} />
              </button>
              {expandedQuestions.has(q.id) && (
                <div className="px-5 pb-5 border-t border-slate-100 pt-4">
                  <div className="flex items-start gap-2 bg-amber-50 border border-amber-200 rounded-xl p-4">
                    <Star className="w-4 h-4 text-amber-500 flex-shrink-0 mt-0.5" />
                    <div>
                      <div className="text-xs font-bold text-amber-700 mb-1">Exam Hint</div>
                      <p className="text-sm text-amber-800">{q.hint}</p>
                    </div>
                  </div>
                </div>
              )}
            </div>
          ))}
        </div>

        <div className="bg-slate-50 rounded-3xl p-8 text-center mb-12">
          <BookOpen className="w-10 h-10 mx-auto mb-4 text-slate-400" />
          <h2 className="text-xl font-bold text-slate-900 mb-2">Master These Topics with Full Notes</h2>
          <p className="text-slate-500 text-sm mb-6 max-w-md mx-auto">
            Read the comprehensive notes for {current.subject} to understand each topic in depth before attempting these questions.
          </p>
          <div className="flex flex-col sm:flex-row gap-3 justify-center">
            <button
              onClick={() => onNavigate('subject', { subjectId: current.slug })}
              className={`text-white font-bold px-6 py-3 rounded-xl transition-colors bg-gradient-to-r ${colors.header}`}
            >
              {current.subject} Notes
            </button>
            <button
              onClick={() => onNavigate('past-questions' as Page)}
              className="bg-white text-slate-700 font-bold px-6 py-3 rounded-xl hover:bg-slate-100 transition-colors border border-slate-200"
            >
              Past Questions
            </button>
          </div>
        </div>

        <div className="border-t border-slate-100 pt-8">
          <h3 className="font-bold text-slate-700 mb-3 text-sm uppercase tracking-wider">More Resources</h3>
          <div className="flex flex-wrap gap-3">
            {[
              { label: 'Exam Tips & Strategies', page: 'exam-tips' as Page },
              { label: 'Past Questions 2024', page: 'past-questions' as Page },
              { label: 'Science Glossary', page: 'glossary' as Page },
              { label: 'Study All Subjects', page: 'subject' as Page },
            ].map((link, i) => (
              <button
                key={i}
                onClick={() => onNavigate(link.page)}
                className="text-slate-600 text-sm font-medium px-4 py-2 rounded-lg bg-slate-100 hover:bg-slate-200 transition-colors"
              >
                {link.label}
              </button>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
