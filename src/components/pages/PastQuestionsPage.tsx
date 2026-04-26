import { useEffect, useState, useCallback } from 'react';
import { ArrowLeft, ChevronRight, BookOpen, CheckCircle, XCircle, RotateCcw, Trophy, Filter, Loader2, AlertCircle } from 'lucide-react';
import { updateMetaTags, PAGE_SEO } from '../../lib/seo';
import { Page } from '../../lib/types';
import { supabase } from '../../lib/supabase';

interface PastQuestionsPageProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

interface Subject {
  id: string;
  name: string;
  question_count: number;
}

interface Topic {
  id: string;
  name: string;
  question_count: number;
}

interface Question {
  id: string;
  question: string;
  options: string[];
  correct_answer: number;
  explanation: string;
  difficulty: string;
  topic: string;
}

type ViewMode = 'subjects' | 'topics' | 'quiz' | 'results';

const COLOR_MAP: Record<string, { header: string; border: string; badge: string; btn: string; light: string }> = {
  Mathematics: { header: 'from-blue-600 to-blue-700', border: 'border-blue-200 hover:border-blue-400', badge: 'bg-blue-100 text-blue-700', btn: 'bg-blue-600 hover:bg-blue-700', light: 'bg-blue-50' },
  'English Language': { header: 'from-green-600 to-green-700', border: 'border-green-200 hover:border-green-400', badge: 'bg-green-100 text-green-700', btn: 'bg-green-600 hover:bg-green-700', light: 'bg-green-50' },
  Physics: { header: 'from-red-600 to-red-700', border: 'border-red-200 hover:border-red-400', badge: 'bg-red-100 text-red-700', btn: 'bg-red-600 hover:bg-red-700', light: 'bg-red-50' },
  Chemistry: { header: 'from-teal-600 to-teal-700', border: 'border-teal-200 hover:border-teal-400', badge: 'bg-teal-100 text-teal-700', btn: 'bg-teal-600 hover:bg-teal-700', light: 'bg-teal-50' },
  Biology: { header: 'from-emerald-600 to-emerald-700', border: 'border-emerald-200 hover:border-emerald-400', badge: 'bg-emerald-100 text-emerald-700', btn: 'bg-emerald-600 hover:bg-emerald-700', light: 'bg-emerald-50' },
  Geography: { header: 'from-orange-600 to-orange-700', border: 'border-orange-200 hover:border-orange-400', badge: 'bg-orange-100 text-orange-700', btn: 'bg-orange-600 hover:bg-orange-700', light: 'bg-orange-50' },
  'Further Mathematics': { header: 'from-cyan-600 to-cyan-700', border: 'border-cyan-200 hover:border-cyan-400', badge: 'bg-cyan-100 text-cyan-700', btn: 'bg-cyan-600 hover:bg-cyan-700', light: 'bg-cyan-50' },
  'Agricultural Science': { header: 'from-lime-600 to-lime-700', border: 'border-lime-200 hover:border-lime-400', badge: 'bg-lime-100 text-lime-700', btn: 'bg-lime-600 hover:bg-lime-700', light: 'bg-lime-50' },
  'Core Science': { header: 'from-sky-600 to-sky-700', border: 'border-sky-200 hover:border-sky-400', badge: 'bg-sky-100 text-sky-700', btn: 'bg-sky-600 hover:bg-sky-700', light: 'bg-sky-50' },
  'Health Science': { header: 'from-rose-600 to-rose-700', border: 'border-rose-200 hover:border-rose-400', badge: 'bg-rose-100 text-rose-700', btn: 'bg-rose-600 hover:bg-rose-700', light: 'bg-rose-50' },
  'Physical Education': { header: 'from-amber-600 to-amber-700', border: 'border-amber-200 hover:border-amber-400', badge: 'bg-amber-100 text-amber-700', btn: 'bg-amber-600 hover:bg-amber-700', light: 'bg-amber-50' },
};

const DEFAULT_COLORS = { header: 'from-slate-600 to-slate-700', border: 'border-slate-200 hover:border-slate-400', badge: 'bg-slate-100 text-slate-700', btn: 'bg-slate-600 hover:bg-slate-700', light: 'bg-slate-50' };

const DIFF_COLOR: Record<string, string> = {
  easy: 'bg-green-100 text-green-700',
  medium: 'bg-yellow-100 text-yellow-700',
  hard: 'bg-red-100 text-red-700',
};

const OPTION_LETTERS = ['A', 'B', 'C', 'D'];

function getLetterGrade(pct: number) {
  if (pct >= 80) return { grade: 'A1', color: 'text-green-600', msg: 'Excellent! You are well prepared.' };
  if (pct >= 70) return { grade: 'B2', color: 'text-green-500', msg: 'Very good! Keep practising.' };
  if (pct >= 60) return { grade: 'B3', color: 'text-blue-600', msg: 'Good effort. Review the ones you missed.' };
  if (pct >= 50) return { grade: 'C4', color: 'text-yellow-600', msg: 'Fair. Study the explanations carefully.' };
  if (pct >= 45) return { grade: 'C5', color: 'text-orange-500', msg: 'Needs improvement. Review your notes.' };
  return { grade: 'F9', color: 'text-red-600', msg: 'Keep studying. You can do it.' };
}

export default function PastQuestionsPage({ onNavigate }: PastQuestionsPageProps) {
  const [view, setView] = useState<ViewMode>('subjects');
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [topics, setTopics] = useState<Topic[]>([]);
  const [questions, setQuestions] = useState<Question[]>([]);
  const [selectedSubject, setSelectedSubject] = useState<Subject | null>(null);
  const [selectedTopic, setSelectedTopic] = useState<Topic | null>(null);
  const [diffFilter, setDiffFilter] = useState<string>('all');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const [current, setCurrent] = useState(0);
  const [chosen, setChosen] = useState<(number | null)[]>([]);
  const [revealed, setRevealed] = useState<boolean[]>([]);
  const [quizDone, setQuizDone] = useState(false);

  useEffect(() => {
    updateMetaTags(PAGE_SEO['past-questions']);
    loadSubjects();
  }, []);

  async function loadSubjects() {
    setLoading(true);
    setError('');
    const { data, error: err } = await supabase
      .from('subjects')
      .select('id, name, quiz_questions(count)')
      .order('name');

    if (err) { setError('Failed to load subjects.'); setLoading(false); return; }

    const result: Subject[] = (data || [])
      .map((s: { id: string; name: string; quiz_questions: { count: number }[] }) => ({
        id: s.id,
        name: s.name,
        question_count: s.quiz_questions?.[0]?.count ?? 0,
      }))
      .filter(s => s.question_count > 0);

    setSubjects(result);
    setLoading(false);
  }

  async function loadTopics(subjectId: string) {
    setLoading(true);
    setError('');
    const { data, error: err } = await supabase
      .from('topics')
      .select('id, name, quiz_questions(count)')
      .eq('subject_id', subjectId)
      .order('name');

    if (err) { setError('Failed to load topics.'); setLoading(false); return; }

    const result: Topic[] = (data || [])
      .map((t: { id: string; name: string; quiz_questions: { count: number }[] }) => ({
        id: t.id,
        name: t.name,
        question_count: t.quiz_questions?.[0]?.count ?? 0,
      }))
      .filter(t => t.question_count > 0);

    setTopics(result);
    setLoading(false);
  }

  async function loadQuestions(topicId: string, diff: string) {
    setLoading(true);
    setError('');
    let query = supabase
      .from('quiz_questions')
      .select('id, question, options, correct_answer, explanation, difficulty, topics!inner(name)')
      .eq('topic_id', topicId);

    if (diff !== 'all') query = query.eq('difficulty', diff);

    const { data, error: err } = await query.limit(20);

    if (err) { setError('Failed to load questions.'); setLoading(false); return; }

    const qs: Question[] = (data || []).map((r: {
      id: string; question: string; options: string[]; correct_answer: number;
      explanation: string; difficulty: string; topics: { name: string };
    }) => ({
      id: r.id,
      question: r.question,
      options: r.options,
      correct_answer: r.correct_answer,
      explanation: r.explanation,
      difficulty: r.difficulty,
      topic: r.topics.name,
    }));

    setQuestions(qs);
    setChosen(new Array(qs.length).fill(null));
    setRevealed(new Array(qs.length).fill(false));
    setCurrent(0);
    setQuizDone(false);
    setLoading(false);
  }

  const handleSelectSubject = useCallback(async (sub: Subject) => {
    setSelectedSubject(sub);
    await loadTopics(sub.id);
    setView('topics');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }, []);

  const handleSelectTopic = useCallback(async (topic: Topic) => {
    setSelectedTopic(topic);
    setDiffFilter('all');
    await loadQuestions(topic.id, 'all');
    setView('quiz');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }, []);

  const handleChangeDiff = useCallback(async (diff: string) => {
    if (!selectedTopic) return;
    setDiffFilter(diff);
    await loadQuestions(selectedTopic.id, diff);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }, [selectedTopic]);

  function handleChoose(optionIndex: number) {
    if (revealed[current]) return;
    const newChosen = [...chosen];
    const newRevealed = [...revealed];
    newChosen[current] = optionIndex;
    newRevealed[current] = true;
    setChosen(newChosen);
    setRevealed(newRevealed);
  }

  function handleNext() {
    if (current < questions.length - 1) {
      setCurrent(c => c + 1);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    } else {
      setQuizDone(true);
      setView('results');
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  }

  function handleRestart() {
    setChosen(new Array(questions.length).fill(null));
    setRevealed(new Array(questions.length).fill(false));
    setCurrent(0);
    setQuizDone(false);
    setView('quiz');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  const colors = selectedSubject ? (COLOR_MAP[selectedSubject.name] || DEFAULT_COLORS) : DEFAULT_COLORS;
  const score = chosen.filter((c, i) => c === questions[i]?.correct_answer).length;
  const pct = questions.length ? Math.round((score / questions.length) * 100) : 0;
  const gradeInfo = getLetterGrade(pct);

  if (view === 'subjects') {
    return (
      <div className="min-h-screen bg-white">
        <div className="bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 text-white py-14 px-4">
          <div className="max-w-4xl mx-auto">
            <button onClick={() => onNavigate('home')} className="flex items-center gap-2 text-blue-300 hover:text-white text-sm mb-6 transition-colors">
              <ArrowLeft className="w-4 h-4" /> Back to Home
            </button>
            <h1 className="text-3xl sm:text-4xl font-extrabold mb-3">WASSCE Past Questions — Practice by Subject</h1>
            <p className="text-slate-300 text-lg max-w-2xl">
              Choose a subject to practise real WASSCE-style questions with instant answers and explanations. No account needed.
            </p>
          </div>
        </div>

        <div className="max-w-4xl mx-auto px-4 py-10">
          {loading && (
            <div className="flex items-center justify-center py-20 gap-3 text-slate-400">
              <Loader2 className="w-6 h-6 animate-spin" /> Loading subjects...
            </div>
          )}
          {error && (
            <div className="flex items-center gap-2 bg-red-50 border border-red-200 rounded-xl p-4 text-red-700 mb-6">
              <AlertCircle className="w-5 h-5 flex-shrink-0" /> {error}
            </div>
          )}
          {!loading && !error && (
            <>
              <h2 className="text-xl font-bold text-slate-900 mb-6">Select a Subject to Begin</h2>
              <div className="grid sm:grid-cols-2 gap-4">
                {subjects.map(sub => {
                  const c = COLOR_MAP[sub.name] || DEFAULT_COLORS;
                  return (
                    <button
                      key={sub.id}
                      onClick={() => handleSelectSubject(sub)}
                      className={`group flex items-center justify-between p-5 rounded-2xl border-2 bg-white transition-all hover:shadow-md text-left ${c.border}`}
                    >
                      <div>
                        <div className="font-bold text-slate-900 text-base mb-1">{sub.name}</div>
                        <div className={`text-xs font-semibold px-2.5 py-1 rounded-full inline-block ${c.badge}`}>
                          {sub.question_count} questions available
                        </div>
                      </div>
                      <ChevronRight className="w-5 h-5 text-slate-400 group-hover:text-slate-700 group-hover:translate-x-1 transition-all flex-shrink-0" />
                    </button>
                  );
                })}
              </div>
            </>
          )}
        </div>
      </div>
    );
  }

  if (view === 'topics') {
    return (
      <div className="min-h-screen bg-white">
        <div className={`bg-gradient-to-r ${colors.header} text-white py-12 px-4`}>
          <div className="max-w-4xl mx-auto">
            <button onClick={() => { setView('subjects'); setSelectedSubject(null); }} className="flex items-center gap-2 text-white/70 hover:text-white text-sm mb-6 transition-colors">
              <ArrowLeft className="w-4 h-4" /> Back to Subjects
            </button>
            <h1 className="text-2xl sm:text-3xl font-extrabold mb-2">{selectedSubject?.name} — Past Questions</h1>
            <p className="text-white/80">Choose a topic to start practising questions with answers.</p>
          </div>
        </div>

        <div className="max-w-4xl mx-auto px-4 py-8">
          {loading && (
            <div className="flex items-center justify-center py-20 gap-3 text-slate-400">
              <Loader2 className="w-6 h-6 animate-spin" /> Loading topics...
            </div>
          )}
          {!loading && (
            <>
              <h2 className="text-lg font-bold text-slate-900 mb-4">Select a Topic ({topics.length} topics)</h2>
              <div className="space-y-3">
                {topics.map(topic => (
                  <button
                    key={topic.id}
                    onClick={() => handleSelectTopic(topic)}
                    className={`group w-full flex items-center justify-between p-4 rounded-xl border-2 bg-white transition-all hover:shadow-md text-left ${colors.border}`}
                  >
                    <div>
                      <div className="font-semibold text-slate-800 text-sm">{topic.name}</div>
                      <div className={`text-xs mt-1 px-2 py-0.5 rounded-full inline-block font-medium ${colors.badge}`}>
                        {topic.question_count} question{topic.question_count !== 1 ? 's' : ''}
                      </div>
                    </div>
                    <ChevronRight className="w-5 h-5 text-slate-400 group-hover:translate-x-1 transition-transform flex-shrink-0" />
                  </button>
                ))}
              </div>
            </>
          )}
        </div>
      </div>
    );
  }

  if (view === 'quiz' && questions.length > 0) {
    const q = questions[current];
    const isRevealed = revealed[current];
    const userChoice = chosen[current];
    const isCorrect = userChoice === q.correct_answer;

    return (
      <div className="min-h-screen bg-slate-50">
        <div className={`bg-gradient-to-r ${colors.header} text-white py-4 px-4`}>
          <div className="max-w-3xl mx-auto flex items-center justify-between">
            <button onClick={() => setView('topics')} className="flex items-center gap-2 text-white/70 hover:text-white text-sm transition-colors">
              <ArrowLeft className="w-4 h-4" /> Topics
            </button>
            <div className="text-sm font-semibold">
              {selectedSubject?.name} — {selectedTopic?.name}
            </div>
            <div className="text-sm font-bold">
              {current + 1} / {questions.length}
            </div>
          </div>
          <div className="max-w-3xl mx-auto mt-3">
            <div className="w-full bg-white/20 rounded-full h-1.5">
              <div
                className="bg-white rounded-full h-1.5 transition-all duration-500"
                style={{ width: `${((current + 1) / questions.length) * 100}%` }}
              />
            </div>
          </div>
        </div>

        <div className="max-w-3xl mx-auto px-4 py-8">
          <div className="flex items-center gap-3 mb-3">
            <Filter className="w-4 h-4 text-slate-400" />
            <span className="text-xs text-slate-500 font-medium mr-2">Difficulty:</span>
            {['all', 'easy', 'medium', 'hard'].map(d => (
              <button
                key={d}
                onClick={() => handleChangeDiff(d)}
                className={`text-xs px-3 py-1 rounded-full font-semibold transition-colors capitalize ${diffFilter === d ? `${colors.btn} text-white` : 'bg-white text-slate-600 border border-slate-200 hover:border-slate-400'}`}
              >
                {d === 'all' ? 'All' : d.charAt(0).toUpperCase() + d.slice(1)}
              </button>
            ))}
          </div>

          <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 mb-5">
            <div className="flex items-center gap-2 mb-4">
              <span className={`text-xs px-2.5 py-1 rounded-full font-semibold capitalize ${DIFF_COLOR[q.difficulty] || DIFF_COLOR.easy}`}>{q.difficulty}</span>
              <span className="text-xs text-slate-400">{q.topic}</span>
            </div>
            <p className="text-slate-900 font-semibold text-base leading-relaxed">{q.question}</p>
          </div>

          <div className="space-y-3 mb-6">
            {q.options.map((opt, i) => {
              let style = 'border-slate-200 bg-white text-slate-800 hover:border-slate-400 hover:bg-slate-50';
              if (isRevealed) {
                if (i === q.correct_answer) style = 'border-green-400 bg-green-50 text-green-800';
                else if (i === userChoice && i !== q.correct_answer) style = 'border-red-400 bg-red-50 text-red-800';
                else style = 'border-slate-100 bg-slate-50 text-slate-400';
              }
              return (
                <button
                  key={i}
                  onClick={() => handleChoose(i)}
                  disabled={isRevealed}
                  className={`w-full flex items-center gap-3 p-4 rounded-xl border-2 text-left transition-all ${style} ${isRevealed ? 'cursor-default' : 'cursor-pointer'}`}
                >
                  <span className={`w-7 h-7 rounded-full flex items-center justify-center text-xs font-black flex-shrink-0 ${isRevealed && i === q.correct_answer ? 'bg-green-500 text-white' : isRevealed && i === userChoice && i !== q.correct_answer ? 'bg-red-500 text-white' : 'bg-slate-100 text-slate-600'}`}>
                    {OPTION_LETTERS[i]}
                  </span>
                  <span className="text-sm font-medium flex-1">{opt}</span>
                  {isRevealed && i === q.correct_answer && <CheckCircle className="w-5 h-5 text-green-500 flex-shrink-0" />}
                  {isRevealed && i === userChoice && i !== q.correct_answer && <XCircle className="w-5 h-5 text-red-500 flex-shrink-0" />}
                </button>
              );
            })}
          </div>

          {isRevealed && (
            <div className={`rounded-xl border-2 p-4 mb-6 ${isCorrect ? 'bg-green-50 border-green-200' : 'bg-amber-50 border-amber-200'}`}>
              <div className={`flex items-center gap-2 font-bold text-sm mb-1 ${isCorrect ? 'text-green-700' : 'text-amber-700'}`}>
                {isCorrect ? <CheckCircle className="w-4 h-4" /> : <XCircle className="w-4 h-4" />}
                {isCorrect ? 'Correct!' : `Correct answer: ${OPTION_LETTERS[q.correct_answer]}`}
              </div>
              {q.explanation && <p className="text-sm text-slate-700 leading-relaxed">{q.explanation}</p>}
            </div>
          )}

          <div className="flex items-center justify-between">
            <div className="text-sm text-slate-500">
              Score so far: <span className="font-bold text-slate-700">{chosen.filter((c, i) => c !== null && c === questions[i]?.correct_answer).length}/{revealed.filter(Boolean).length || 0}</span>
            </div>
            {isRevealed && (
              <button
                onClick={handleNext}
                className={`flex items-center gap-2 px-6 py-3 rounded-xl font-bold text-white text-sm transition-all ${colors.btn} active:scale-95`}
              >
                {current < questions.length - 1 ? 'Next Question' : 'See Results'}
                <ChevronRight className="w-4 h-4" />
              </button>
            )}
          </div>
        </div>
      </div>
    );
  }

  if (view === 'results') {
    return (
      <div className="min-h-screen bg-slate-50">
        <div className={`bg-gradient-to-r ${colors.header} text-white py-8 px-4`}>
          <div className="max-w-3xl mx-auto">
            <div className="text-white/70 text-sm mb-1">{selectedSubject?.name} — {selectedTopic?.name}</div>
            <h2 className="text-2xl font-extrabold">Results</h2>
          </div>
        </div>

        <div className="max-w-3xl mx-auto px-4 py-8">
          <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-8 text-center mb-8">
            <Trophy className="w-12 h-12 mx-auto mb-4 text-amber-500" />
            <div className={`text-5xl font-black mb-1 ${gradeInfo.color}`}>{gradeInfo.grade}</div>
            <div className="text-2xl font-bold text-slate-900 mb-2">{pct}%</div>
            <div className="text-slate-500 mb-4">{score} correct out of {questions.length} questions</div>
            <p className="text-slate-700 font-medium">{gradeInfo.msg}</p>
          </div>

          <h3 className="font-bold text-slate-900 text-lg mb-4">Review All Questions</h3>
          <div className="space-y-4 mb-8">
            {questions.map((q, i) => {
              const userAns = chosen[i];
              const correct = userAns === q.correct_answer;
              return (
                <div key={q.id} className={`bg-white rounded-xl border-2 p-5 ${correct ? 'border-green-200' : 'border-red-200'}`}>
                  <div className="flex items-start gap-3 mb-3">
                    <div className={`w-7 h-7 rounded-full flex items-center justify-center flex-shrink-0 mt-0.5 ${correct ? 'bg-green-100' : 'bg-red-100'}`}>
                      {correct ? <CheckCircle className="w-4 h-4 text-green-600" /> : <XCircle className="w-4 h-4 text-red-600" />}
                    </div>
                    <p className="text-slate-800 font-medium text-sm leading-snug flex-1">
                      <span className="text-slate-400 text-xs mr-2">Q{i + 1}</span>{q.question}
                    </p>
                  </div>
                  <div className="ml-10 space-y-1 mb-3">
                    {q.options.map((opt, j) => (
                      <div key={j} className={`text-xs px-3 py-1.5 rounded-lg flex items-center gap-2 ${j === q.correct_answer ? 'bg-green-50 text-green-700 font-semibold' : j === userAns && !correct ? 'bg-red-50 text-red-600 line-through' : 'text-slate-400'}`}>
                        <span className="font-bold">{OPTION_LETTERS[j]}.</span> {opt}
                      </div>
                    ))}
                  </div>
                  {q.explanation && (
                    <div className="ml-10 text-xs text-slate-600 bg-slate-50 rounded-lg p-2.5 leading-relaxed">
                      <span className="font-bold text-slate-700">Explanation: </span>{q.explanation}
                    </div>
                  )}
                </div>
              );
            })}
          </div>

          <div className="flex flex-col sm:flex-row gap-3">
            <button onClick={handleRestart} className={`flex items-center justify-center gap-2 px-6 py-3 rounded-xl font-bold text-white ${colors.btn} transition-colors`}>
              <RotateCcw className="w-4 h-4" /> Try Again
            </button>
            <button onClick={() => setView('topics')} className="flex items-center justify-center gap-2 px-6 py-3 rounded-xl font-bold bg-white text-slate-700 border-2 border-slate-200 hover:border-slate-400 transition-colors">
              <BookOpen className="w-4 h-4" /> Different Topic
            </button>
            <button onClick={() => { setView('subjects'); setSelectedSubject(null); }} className="flex items-center justify-center gap-2 px-6 py-3 rounded-xl font-bold bg-slate-100 text-slate-700 hover:bg-slate-200 transition-colors">
              All Subjects
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="flex items-center gap-3 text-slate-400">
          <Loader2 className="w-6 h-6 animate-spin" /> Loading questions...
        </div>
      </div>
    );
  }

  return null;
}
