import { useEffect } from 'react';
import { Lightbulb, Clock, Target, CheckCircle, BookOpen, Brain, ChevronRight, ArrowLeft, TrendingUp } from 'lucide-react';
import { updateMetaTags, PAGE_SEO } from '../../lib/seo';
import { Page } from '../../lib/types';

interface ExamTipsPageProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

const GENERAL_TIPS = [
  {
    icon: Clock,
    title: 'Start Revision Early',
    color: 'blue',
    tips: [
      'Begin WASSCE revision at least 3–4 months before the exam date.',
      'Create a daily study timetable covering all subjects equally.',
      'Allocate more time to your weakest subjects without neglecting your strengths.',
      'Study in 45-minute focused sessions with 10-minute breaks.',
    ],
  },
  {
    icon: Target,
    title: 'Use Past Questions Strategically',
    color: 'green',
    tips: [
      'Complete at least 5 years of WAEC past questions per subject.',
      'Time yourself strictly when practising past papers.',
      'Review every wrong answer carefully to understand your mistakes.',
      'Identify recurring question patterns and topic frequencies.',
    ],
  },
  {
    icon: Brain,
    title: 'Active Learning Techniques',
    color: 'red',
    tips: [
      'Summarise each topic in your own words after reading notes.',
      'Use mind maps and diagrams for complex biology and geography topics.',
      'Teach topics out loud to yourself — the Feynman technique.',
      'Create flashcards for key formulas, definitions and dates.',
    ],
  },
  {
    icon: CheckCircle,
    title: 'During the Exam',
    color: 'teal',
    tips: [
      'Read all instructions carefully before starting any section.',
      'Answer questions you know first, then return to harder ones.',
      'For objective questions: eliminate obviously wrong options first.',
      'Leave 10 minutes at the end to review your answers.',
    ],
  },
];

const SUBJECT_TIPS = [
  {
    subject: 'Mathematics',
    color: 'blue',
    tips: [
      'Show all working steps even if the final answer is wrong — you earn method marks.',
      'Memorise key formulas: quadratic formula, area, volume, trigonometric identities.',
      'Practice drawing accurate graphs with labelled axes and scales.',
      'For word problems: extract the numbers, identify the operation, then solve.',
    ],
    hotTopics: ['Algebra', 'Trigonometry', 'Statistics', 'Coordinate Geometry'],
  },
  {
    subject: 'Physics',
    color: 'red',
    tips: [
      'Always include units in your answers — marks are deducted for missing units.',
      'Know all fundamental constants: g = 10 m/s², speed of light, Planck\'s constant.',
      'Practice drawing circuit diagrams, ray diagrams and free body diagrams.',
      'For calculation questions: write formula first, substitute values, then calculate.',
    ],
    hotTopics: ['Electricity', 'Waves & Light', 'Mechanics', 'Heat & Thermodynamics'],
  },
  {
    subject: 'Chemistry',
    color: 'teal',
    tips: [
      'Balance all chemical equations before attempting stoichiometry calculations.',
      'Know the periodic table trends: electronegativity, atomic radius, ionisation energy.',
      'For organic chemistry: memorise functional groups and their reactions.',
      'Practice naming organic compounds using IUPAC nomenclature rules.',
    ],
    hotTopics: ['Organic Chemistry', 'Electrochemistry', 'Acid-Base Reactions', 'Mole Concept'],
  },
  {
    subject: 'Biology',
    color: 'emerald',
    tips: [
      'Draw and label diagrams neatly — they earn significant marks in WASSCE.',
      'Understand processes: photosynthesis, respiration, excretion — know the steps.',
      'Link structure to function: explain WHY a part looks the way it does.',
      'For ecology questions: use specific examples from West African ecosystems.',
    ],
    hotTopics: ['Cell Biology', 'Genetics', 'Ecology', 'Human Physiology'],
  },
  {
    subject: 'English Language',
    color: 'green',
    tips: [
      'In comprehension: use evidence from the passage to support your answers.',
      'For essays: plan your structure (introduction, 3 body paragraphs, conclusion).',
      'Vary your sentence structure — avoid starting every sentence with "I".',
      'Practise writing within word limits: 250 words for summary, 450 for essays.',
    ],
    hotTopics: ['Comprehension', 'Essay Writing', 'Summary Skills', 'Oral English'],
  },
  {
    subject: 'Geography',
    color: 'orange',
    tips: [
      'Use compass directions accurately when describing map locations.',
      'Always give specific examples of countries, rivers or regions when required.',
      'For climate questions: describe temperature range AND rainfall pattern.',
      'Practice sketch map drawing with labels and a north arrow.',
    ],
    hotTopics: ['Climate & Vegetation', 'Population', 'Agriculture', 'Map Reading'],
  },
];

const COLOR_MAP: Record<string, { card: string; badge: string; icon: string; tag: string }> = {
  blue: { card: 'border-blue-200 bg-blue-50', badge: 'bg-blue-600', icon: 'text-white', tag: 'bg-blue-100 text-blue-700' },
  green: { card: 'border-green-200 bg-green-50', badge: 'bg-green-600', icon: 'text-white', tag: 'bg-green-100 text-green-700' },
  red: { card: 'border-red-200 bg-red-50', badge: 'bg-red-600', icon: 'text-white', tag: 'bg-red-100 text-red-700' },
  teal: { card: 'border-teal-200 bg-teal-50', badge: 'bg-teal-600', icon: 'text-white', tag: 'bg-teal-100 text-teal-700' },
  emerald: { card: 'border-emerald-200 bg-emerald-50', badge: 'bg-emerald-600', icon: 'text-white', tag: 'bg-emerald-100 text-emerald-700' },
  orange: { card: 'border-orange-200 bg-orange-50', badge: 'bg-orange-600', icon: 'text-white', tag: 'bg-orange-100 text-orange-700' },
};

const STUDY_SCHEDULE = [
  { day: 'Monday', focus: 'Mathematics — Algebra & Calculus', duration: '2 hours' },
  { day: 'Tuesday', focus: 'Biology — Cell Biology & Genetics', duration: '2 hours' },
  { day: 'Wednesday', focus: 'Physics — Mechanics & Electricity', duration: '2 hours' },
  { day: 'Thursday', focus: 'Chemistry — Organic & Physical Chem', duration: '2 hours' },
  { day: 'Friday', focus: 'English Language — Essays & Comprehension', duration: '2 hours' },
  { day: 'Saturday', focus: 'Geography + Past Question Practice', duration: '3 hours' },
  { day: 'Sunday', focus: 'Review weak topics + Mock Exam', duration: '3 hours' },
];

export default function ExamTipsPage({ onNavigate }: ExamTipsPageProps) {
  useEffect(() => {
    updateMetaTags(PAGE_SEO['exam-tips']);
  }, []);

  return (
    <div className="min-h-screen bg-white">
      <div className="bg-gradient-to-br from-slate-900 via-green-950 to-slate-900 text-white py-14 px-4">
        <div className="max-w-4xl mx-auto">
          <button
            onClick={() => onNavigate('home')}
            className="flex items-center gap-2 text-green-300 hover:text-white text-sm mb-6 transition-colors"
          >
            <ArrowLeft className="w-4 h-4" /> Back to Home
          </button>
          <div className="flex items-center gap-3 mb-4">
            <div className="w-10 h-10 rounded-xl bg-green-600 flex items-center justify-center">
              <Lightbulb className="w-5 h-5 text-white" />
            </div>
            <span className="text-green-300 font-medium text-sm uppercase tracking-widest">Expert Exam Strategy</span>
          </div>
          <h1 className="text-3xl sm:text-4xl font-extrabold leading-tight mb-4">
            WASSCE Exam Tips & Study Strategies 2026<br />
            <span className="text-green-400">How to Pass WAEC with Confidence</span>
          </h1>
          <p className="text-slate-300 text-lg max-w-2xl mb-8">
            Proven strategies from top-scoring students and education experts. Apply these WASSCE exam tips across all subjects to maximise your grade in WAEC 2026.
          </p>
          <div className="flex flex-wrap gap-3">
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium">General Study Tips</div>
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium">Per-Subject Strategies</div>
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium">Exam Day Tactics</div>
            <div className="bg-white/10 rounded-lg px-4 py-2 text-sm font-medium">Weekly Study Plan</div>
          </div>
        </div>
      </div>

      <div className="max-w-4xl mx-auto px-4 py-12">
        <h2 className="text-2xl font-bold text-slate-900 mb-2">General WASSCE Study Strategies</h2>
        <p className="text-slate-500 mb-8">Apply these core principles to every subject for maximum results.</p>
        <div className="grid sm:grid-cols-2 gap-6 mb-16">
          {GENERAL_TIPS.map((section, i) => {
            const colors = COLOR_MAP[section.color];
            return (
              <div key={i} className={`rounded-2xl border-2 p-6 ${colors.card}`}>
                <div className="flex items-center gap-3 mb-4">
                  <div className={`w-9 h-9 rounded-xl ${colors.badge} flex items-center justify-center`}>
                    <section.icon className={`w-5 h-5 ${colors.icon}`} />
                  </div>
                  <h3 className="font-bold text-slate-900">{section.title}</h3>
                </div>
                <ul className="space-y-2">
                  {section.tips.map((tip, j) => (
                    <li key={j} className="flex items-start gap-2 text-sm text-slate-700">
                      <CheckCircle className="w-4 h-4 mt-0.5 text-green-500 flex-shrink-0" />
                      <span>{tip}</span>
                    </li>
                  ))}
                </ul>
              </div>
            );
          })}
        </div>

        <h2 className="text-2xl font-bold text-slate-900 mb-2">Subject-by-Subject Exam Tips</h2>
        <p className="text-slate-500 mb-8">Targeted strategies for each WASSCE subject with hot topics to prioritise.</p>
        <div className="space-y-6 mb-16">
          {SUBJECT_TIPS.map((sub, i) => {
            const colors = COLOR_MAP[sub.color];
            return (
              <div key={i} className={`rounded-2xl border-2 p-6 ${colors.card}`}>
                <div className="flex items-center justify-between mb-4">
                  <h3 className="font-bold text-slate-900 text-lg">{sub.subject}</h3>
                  <button
                    onClick={() => onNavigate('subject', { subjectId: sub.subject.toLowerCase().replace(/ /g, '-') })}
                    className={`text-xs font-semibold px-3 py-1.5 rounded-lg ${colors.tag} flex items-center gap-1`}
                  >
                    Study Notes <ChevronRight className="w-3 h-3" />
                  </button>
                </div>
                <ul className="space-y-2 mb-4">
                  {sub.tips.map((tip, j) => (
                    <li key={j} className="flex items-start gap-2 text-sm text-slate-700">
                      <CheckCircle className="w-4 h-4 mt-0.5 text-green-500 flex-shrink-0" />
                      <span>{tip}</span>
                    </li>
                  ))}
                </ul>
                <div>
                  <div className="text-xs font-bold text-slate-500 uppercase tracking-wider mb-2">Hot Topics for 2026</div>
                  <div className="flex flex-wrap gap-2">
                    {sub.hotTopics.map((topic, j) => (
                      <span key={j} className={`text-xs px-3 py-1 rounded-full font-medium ${colors.tag}`}>{topic}</span>
                    ))}
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        <h2 className="text-2xl font-bold text-slate-900 mb-2">Recommended Weekly Study Schedule</h2>
        <p className="text-slate-500 mb-6">A proven 7-day plan for balanced WASSCE preparation.</p>
        <div className="bg-slate-50 rounded-2xl overflow-hidden border border-slate-200 mb-16">
          {STUDY_SCHEDULE.map((day, i) => (
            <div key={i} className={`flex items-center gap-4 p-4 ${i < STUDY_SCHEDULE.length - 1 ? 'border-b border-slate-200' : ''}`}>
              <div className="w-24 flex-shrink-0">
                <div className="font-bold text-slate-900 text-sm">{day.day}</div>
              </div>
              <div className="flex-1 min-w-0">
                <div className="text-sm text-slate-700">{day.focus}</div>
              </div>
              <div className="flex items-center gap-1 text-xs text-slate-500 flex-shrink-0">
                <Clock className="w-3.5 h-3.5" />
                {day.duration}
              </div>
            </div>
          ))}
        </div>

        <div className="bg-gradient-to-br from-green-600 to-green-700 rounded-3xl p-8 text-white text-center mb-12">
          <TrendingUp className="w-10 h-10 mx-auto mb-4 opacity-90" />
          <h2 className="text-2xl font-bold mb-3">Put These Tips Into Practice</h2>
          <p className="text-green-100 mb-6 max-w-md mx-auto">
            Start applying these strategies today with our free quizzes, notes and past questions.
          </p>
          <div className="flex flex-col sm:flex-row gap-3 justify-center">
            <button
              onClick={() => onNavigate('subject')}
              className="bg-white text-green-700 font-bold px-6 py-3 rounded-xl hover:bg-green-50 transition-colors"
            >
              Start Studying Now
            </button>
            <button
              onClick={() => onNavigate('past-questions' as Page)}
              className="bg-green-500 text-white font-bold px-6 py-3 rounded-xl hover:bg-green-400 transition-colors border border-green-400"
            >
              Practice Past Questions
            </button>
          </div>
        </div>

        <div className="border-t border-slate-100 pt-8">
          <h3 className="font-bold text-slate-700 mb-3 text-sm uppercase tracking-wider">Also Explore</h3>
          <div className="flex flex-wrap gap-3">
            {[
              { label: 'WASSCE Past Questions', page: 'past-questions' as Page },
              { label: 'Likely 2026 Questions', page: 'likely-questions' as Page },
              { label: 'Science Glossary', page: 'glossary' as Page },
              { label: 'Take a Subject Quiz', page: 'subject' as Page },
              { label: 'Full Timed Exam', page: 'subject' as Page },
            ].map((link, i) => (
              <button
                key={i}
                onClick={() => onNavigate(link.page)}
                className="text-green-700 text-sm font-medium px-4 py-2 rounded-lg bg-green-50 hover:bg-green-100 transition-colors"
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
