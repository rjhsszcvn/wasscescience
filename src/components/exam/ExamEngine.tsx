import { useEffect, useState, useRef } from 'react';
import { ChevronLeft, Clock, AlertTriangle, CheckCircle, XCircle, Trophy, Target, Flag, Shuffle, BarChart3 } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { QuizQuestion } from '../../lib/types';
import { Page } from '../../lib/types';
import { ShuffledQuestion, shuffleArray, shuffleQuestionOptions, OPTION_LABELS, formatTime } from '../../lib/quiz-utils';

interface ExamEngineProps {
  subjectId: string;
  subjectName?: string;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

const EXAM_DURATION = 45 * 60;
const EXAM_QUESTION_COUNT = 40;

type ExamPhase = 'instructions' | 'exam' | 'results';

export default function ExamEngine({ subjectId, subjectName, onNavigate }: ExamEngineProps) {
  const { profile } = useAuth();
  const [allQuestions, setAllQuestions] = useState<QuizQuestion[]>([]);
  const [shuffled, setShuffled] = useState<ShuffledQuestion[]>([]);
  const [current, setCurrent] = useState(0);
  const [answers, setAnswers] = useState<(number | null)[]>([]);
  const [flagged, setFlagged] = useState<Set<number>>(new Set());
  const [timeLeft, setTimeLeft] = useState(EXAM_DURATION);
  const [phase, setPhase] = useState<ExamPhase>('instructions');
  const [loading, setLoading] = useState(true);
  const [startTime, setStartTime] = useState(0);
  const [seenIds, setSeenIds] = useState<Set<string>>(new Set());
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);
  const answersRef = useRef<(number | null)[]>([]);
  const startTimeRef = useRef<number>(0);

  useEffect(() => {
    loadQuestions();
    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, []);

  async function loadQuestions() {
    const [topicsResult, historyResult] = await Promise.all([
      supabase.from('topics').select('id').eq('subject_id', subjectId),
      profile
        ? supabase
            .from('user_question_history')
            .select('question_id')
            .eq('user_id', profile.id)
            .eq('subject_id', subjectId)
        : Promise.resolve({ data: [] }),
    ]);

    const topics = topicsResult.data || [];
    if (topics.length === 0) { setLoading(false); return; }

    const topicIds = topics.map(t => t.id);
    const { data: rawQuestions } = await supabase
      .from('quiz_questions')
      .select('*')
      .in('topic_id', topicIds);

    const questions: QuizQuestion[] = (rawQuestions || []).map(q => {
      let options: string[] = [];
      try {
        options = Array.isArray(q.options) ? q.options : JSON.parse(q.options);
      } catch {
        options = [];
      }
      return { ...q, options };
    });

    const seen = new Set<string>((historyResult.data || []).map((h: { question_id: string }) => h.question_id));
    setSeenIds(seen);
    setAllQuestions(questions);

    const picked = buildExamSet(questions, seen);
    setShuffled(picked);
    const initialAnswers = new Array(picked.length).fill(null);
    setAnswers(initialAnswers);
    answersRef.current = initialAnswers;
    setLoading(false);
  }

  function buildExamSet(questions: QuizQuestion[], seen: Set<string>): ShuffledQuestion[] {
    const topicMap = new Map<string, QuizQuestion[]>();
    for (const q of questions) {
      if (!topicMap.has(q.topic_id)) topicMap.set(q.topic_id, []);
      topicMap.get(q.topic_id)!.push(q);
    }

    const topicIds = shuffleArray([...topicMap.keys()]);
    const selected: QuizQuestion[] = [];
    const perTopic = Math.max(1, Math.ceil(EXAM_QUESTION_COUNT / topicIds.length));

    for (const tid of topicIds) {
      const topicQs = topicMap.get(tid)!;
      const unseen = shuffleArray(topicQs.filter(q => !seen.has(q.id)));
      const seenQs = shuffleArray(topicQs.filter(q => seen.has(q.id)));
      const pool = [...unseen, ...seenQs].slice(0, perTopic);
      selected.push(...pool);
    }

    const finalPool = shuffleArray(selected).slice(0, EXAM_QUESTION_COUNT);

    if (finalPool.length < EXAM_QUESTION_COUNT) {
      const selectedIds = new Set(finalPool.map(q => q.id));
      const remaining = shuffleArray(questions.filter(q => !selectedIds.has(q.id)));
      finalPool.push(...remaining.slice(0, EXAM_QUESTION_COUNT - finalPool.length));
    }

    return finalPool.map(shuffleQuestionOptions);
  }

  function startExam() {
    const now = Date.now();
    setPhase('exam');
    setStartTime(now);
    startTimeRef.current = now;
    timerRef.current = setInterval(() => {
      const elapsed = Math.floor((Date.now() - startTimeRef.current) / 1000);
      const remaining = Math.max(0, EXAM_DURATION - elapsed);
      setTimeLeft(remaining);
      if (remaining <= 0) {
        if (timerRef.current) clearInterval(timerRef.current);
        finishExamWithAnswers(startTimeRef.current, answersRef.current);
      }
    }, 1000);
  }

  async function finishExamWithAnswers(examStartTime: number, finalAnswers: (number | null)[]) {
    if (timerRef.current) clearInterval(timerRef.current);
    setPhase('results');

    if (!profile) return;

    const score = finalAnswers.filter((a, i) => a === shuffled[i]?.correctShuffledIndex).length;
    const timeTaken = Math.min(EXAM_DURATION, Math.floor((Date.now() - examStartTime) / 1000));
    const questionIds = shuffled.map(sq => sq.original.id);

    await Promise.all([
      supabase.from('exam_sessions').insert({
        user_id: profile.id,
        subject_id: subjectId,
        score,
        total_questions: shuffled.length,
        time_taken: timeTaken,
        country: profile.country,
      }),
      supabase.from('quiz_sessions').insert({
        user_id: profile.id,
        subject_id: subjectId,
        session_type: 'exam',
        question_ids: questionIds,
        user_answers: finalAnswers,
        shuffled_options: shuffled.map(sq => sq.shuffledOptions),
        correct_answers: shuffled.map(sq => sq.correctShuffledIndex),
        score,
        total_questions: shuffled.length,
        time_taken: timeTaken,
      }),
      supabase.from('user_question_history').upsert(
        questionIds.map(qid => ({
          user_id: profile.id,
          question_id: qid,
          subject_id: subjectId,
          seen_at: new Date().toISOString(),
        })),
        { onConflict: 'user_id,question_id' }
      ),
    ]);
  }

  function finishExam() {
    finishExamWithAnswers(startTimeRef.current, answersRef.current);
  }

  function toggleFlag(idx: number) {
    setFlagged(prev => {
      const next = new Set(prev);
      if (next.has(idx)) next.delete(idx);
      else next.add(idx);
      return next;
    });
  }

  function retakeExam() {
    if (timerRef.current) clearInterval(timerRef.current);
    const picked = buildExamSet(allQuestions, seenIds);
    const freshAnswers = new Array(picked.length).fill(null);
    setShuffled(picked);
    setAnswers(freshAnswers);
    answersRef.current = freshAnswers;
    setFlagged(new Set());
    setCurrent(0);
    setTimeLeft(EXAM_DURATION);
    setPhase('instructions');
  }

  if (loading) {
    return (
      <div className="flex flex-col items-center justify-center h-64 gap-4">
        <div className="w-12 h-12 border-4 border-blue-600 border-t-transparent rounded-full animate-spin" />
        <p className="text-slate-500 text-sm font-medium">Assembling your personalised exam paper...</p>
      </div>
    );
  }

  if (allQuestions.length === 0) {
    return (
      <div className="text-center py-16 max-w-sm mx-auto">
        <div className="w-16 h-16 bg-slate-100 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <BarChart3 size={28} className="text-slate-400" />
        </div>
        <h3 className="font-bold text-slate-700 mb-2 text-lg">No Questions Available</h3>
        <p className="text-slate-500 text-sm mb-6">No exam questions are available for this subject yet.</p>
        <button
          onClick={() => onNavigate('subject', { subjectId })}
          className="inline-flex items-center gap-2 px-5 py-2.5 bg-blue-600 text-white rounded-xl font-semibold text-sm hover:bg-blue-700 transition-colors"
        >
          <ChevronLeft size={16} /> Back to Subject
        </button>
      </div>
    );
  }

  if (phase === 'instructions') {
    return (
      <div className="max-w-lg mx-auto space-y-6 pb-8">
        <button
          onClick={() => onNavigate('subject', { subjectId })}
          className="flex items-center gap-1.5 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors"
        >
          <ChevronLeft size={16} /> {subjectName}
        </button>

        <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
          <div className="bg-gradient-to-r from-blue-600 to-blue-700 px-8 py-6 text-white text-center">
            <div className="w-14 h-14 bg-white/20 rounded-2xl flex items-center justify-center mx-auto mb-3">
              <Clock size={28} className="text-white" />
            </div>
            <h1 className="text-2xl font-bold mb-1">{subjectName}</h1>
            <p className="text-blue-100 text-sm">WASSCE Exam Simulation</p>
          </div>

          <div className="p-6">
            <div className="grid grid-cols-3 gap-2 sm:gap-3 mb-6">
              {[
                { label: 'Questions', value: shuffled.length, icon: '📝' },
                { label: 'Duration', value: '45 min', icon: '⏱️' },
                { label: 'Pass Mark', value: '50%', icon: '🎯' },
              ].map(({ label, value, icon }) => (
                <div key={label} className="bg-slate-50 rounded-xl p-2.5 sm:p-3 text-center border border-slate-100">
                  <p className="text-base sm:text-lg mb-0.5">{icon}</p>
                  <p className="text-lg sm:text-xl font-bold text-slate-800">{value}</p>
                  <p className="text-xs text-slate-500">{label}</p>
                </div>
              ))}
            </div>

            <div className="bg-amber-50 border border-amber-200 rounded-xl p-4 mb-6">
              <div className="flex items-start gap-2.5">
                <AlertTriangle size={16} className="text-amber-600 mt-0.5 flex-shrink-0" />
                <div>
                  <p className="text-sm font-bold text-amber-800 mb-2">Exam Instructions</p>
                  <ul className="text-xs text-amber-700 space-y-1.5">
                    <li>• Timer begins immediately when you click "Begin Exam"</li>
                    <li>• Navigate freely between all questions using the question grid</li>
                    <li>• Flag questions to review them before submission</li>
                    <li>• Exam auto-submits when the 45-minute timer expires</li>
                    <li>• Questions and answer options are randomly ordered</li>
                    <li>• Your result contributes to the leaderboard</li>
                  </ul>
                </div>
              </div>
            </div>

            <div className="bg-blue-50 border border-blue-100 rounded-xl p-4 mb-6">
              <p className="text-xs font-semibold text-blue-700 mb-1 flex items-center gap-1.5">
                <Shuffle size={12} /> Unique Exam Session
              </p>
              <p className="text-xs text-blue-600">
                Questions are randomly selected from the full {subjectName} question bank and answer options are shuffled — every exam attempt is unique.
              </p>
            </div>

            <button
              onClick={startExam}
              className="w-full py-4 bg-blue-600 text-white font-bold rounded-xl hover:bg-blue-700 transition-colors text-lg"
            >
              Begin Exam
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (phase === 'results') {
    const score = answers.filter((a, i) => a === shuffled[i]?.correctShuffledIndex).length;
    const pct = Math.round((score / shuffled.length) * 100);
    const passed = pct >= 50;
    const timeTaken = EXAM_DURATION - timeLeft;
    const answered = answers.filter(a => a !== null).length;
    const skipped = shuffled.length - answered;

    const byDifficulty = {
      easy: { total: 0, correct: 0 },
      medium: { total: 0, correct: 0 },
      hard: { total: 0, correct: 0 },
    };
    shuffled.forEach((sq, i) => {
      const d = sq.original.difficulty as 'easy' | 'medium' | 'hard';
      byDifficulty[d].total++;
      if (answers[i] === sq.correctShuffledIndex) byDifficulty[d].correct++;
    });

    return (
      <div className="max-w-lg mx-auto space-y-5 pb-8">
        <div className={`rounded-2xl p-8 text-center text-white shadow-lg ${passed ? 'bg-gradient-to-br from-green-500 to-emerald-600' : 'bg-gradient-to-br from-slate-700 to-slate-800'}`}>
          <div className="w-20 h-20 bg-white/20 rounded-full flex items-center justify-center mx-auto mb-4">
            {passed ? <Trophy size={40} /> : <Target size={40} />}
          </div>
          <p className="text-sm font-semibold text-white/80 mb-1 uppercase tracking-widest">
            {passed ? 'Examination Passed' : 'Keep Studying'}
          </p>
          <p className="text-7xl font-black mb-2">{pct}%</p>
          <p className="text-white/80 text-lg">{score} / {shuffled.length} correct</p>
          <p className="text-white/60 text-sm mt-1">Time used: {formatTime(timeTaken)}</p>
        </div>

        <div className="grid grid-cols-2 gap-3">
          {[
            { label: 'Score', value: `${score}/${shuffled.length}`, color: 'text-blue-700', bg: 'bg-blue-50 border-blue-200' },
            { label: 'Percentage', value: `${pct}%`, color: passed ? 'text-green-700' : 'text-red-700', bg: passed ? 'bg-green-50 border-green-200' : 'bg-red-50 border-red-200' },
            { label: 'Answered', value: answered, color: 'text-slate-700', bg: 'bg-slate-50 border-slate-200' },
            { label: 'Skipped', value: skipped, color: 'text-amber-700', bg: 'bg-amber-50 border-amber-200' },
          ].map(({ label, value, color, bg }) => (
            <div key={label} className={`${bg} border rounded-xl p-4 text-center`}>
              <p className={`text-2xl font-bold ${color}`}>{value}</p>
              <p className="text-xs text-slate-500 mt-0.5">{label}</p>
            </div>
          ))}
        </div>

        <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
          <div className="px-4 py-3 border-b border-slate-100 bg-slate-50">
            <p className="text-sm font-semibold text-slate-700">Performance by Difficulty</p>
          </div>
          <div className="divide-y divide-slate-100">
            {(['easy', 'medium', 'hard'] as const).map(d => {
              const stat = byDifficulty[d];
              if (stat.total === 0) return null;
              const pct = Math.round((stat.correct / stat.total) * 100);
              return (
                <div key={d} className="px-4 py-3 flex items-center gap-3">
                  <span className={`text-xs px-2 py-0.5 rounded-full font-semibold w-16 text-center ${
                    d === 'easy' ? 'bg-green-100 text-green-700' :
                    d === 'hard' ? 'bg-red-100 text-red-700' :
                    'bg-amber-100 text-amber-700'
                  }`}>{d}</span>
                  <div className="flex-1 h-2 bg-slate-100 rounded-full overflow-hidden">
                    <div
                      className={`h-2 rounded-full transition-all ${pct >= 60 ? 'bg-green-500' : pct >= 40 ? 'bg-amber-500' : 'bg-red-500'}`}
                      style={{ width: `${pct}%` }}
                    />
                  </div>
                  <span className="text-sm font-semibold text-slate-600 w-16 text-right">{stat.correct}/{stat.total}</span>
                </div>
              );
            })}
          </div>
        </div>

        <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
          <div className="px-4 py-3 border-b border-slate-100 bg-slate-50 flex items-center justify-between">
            <p className="text-sm font-semibold text-slate-700">Question Review</p>
            <p className="text-xs text-slate-400">{shuffled.length} questions</p>
          </div>
          <div className="divide-y divide-slate-100 max-h-96 overflow-y-auto">
            {shuffled.map((sq, i) => {
              const correct = answers[i] === sq.correctShuffledIndex;
              const userAnswer = answers[i];
              return (
                <div key={sq.original.id} className="p-4">
                  <div className="flex items-start gap-3">
                    <div className={`w-7 h-7 rounded-full flex-shrink-0 flex items-center justify-center mt-0.5 text-xs font-bold ${
                      correct ? 'bg-green-100 text-green-700' :
                      userAnswer === null ? 'bg-slate-100 text-slate-500' :
                      'bg-red-100 text-red-700'
                    }`}>
                      {correct
                        ? <CheckCircle size={14} />
                        : userAnswer === null
                        ? '−'
                        : <XCircle size={14} />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-semibold text-slate-400 mb-1">Q{i + 1}</p>
                      <p className="text-sm font-medium text-slate-800 mb-1.5 leading-relaxed">{sq.original.question}</p>
                      {userAnswer !== null && !correct && (
                        <p className="text-xs text-red-600 mb-0.5">
                          Your answer: {OPTION_LABELS[userAnswer]}. {sq.shuffledOptions[userAnswer]}
                        </p>
                      )}
                      {userAnswer === null && (
                        <p className="text-xs text-slate-400 mb-0.5">Not answered</p>
                      )}
                      <p className="text-xs text-green-700 font-semibold">
                        Correct: {OPTION_LABELS[sq.correctShuffledIndex]}. {sq.shuffledOptions[sq.correctShuffledIndex]}
                      </p>
                      {sq.original.explanation && (
                        <p className="text-xs text-slate-500 mt-1.5 leading-relaxed">{sq.original.explanation}</p>
                      )}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        <div className="flex gap-3" style={{ minWidth: 0 }}>
          <button
            onClick={retakeExam}
            className="flex-1 min-w-0 flex items-center justify-center gap-2 py-3 border border-slate-200 text-slate-700 font-semibold rounded-xl hover:bg-slate-50 transition-colors"
          >
            <Shuffle size={16} /> New Exam
          </button>
          <button
            onClick={() => onNavigate('leaderboard')}
            className="flex items-center justify-center gap-2 px-4 py-3 border border-slate-200 text-slate-700 font-semibold rounded-xl hover:bg-slate-50 transition-colors flex-shrink-0"
          >
            <Trophy size={16} />
          </button>
          <button
            onClick={() => onNavigate('subject', { subjectId })}
            className="flex-1 min-w-0 flex items-center justify-center gap-2 py-3 bg-blue-600 text-white font-semibold rounded-xl hover:bg-blue-700 transition-colors"
          >
            <ChevronLeft size={16} /> Back
          </button>
        </div>
      </div>
    );
  }

  const sq = shuffled[current];
  const isUrgent = timeLeft <= 300;
  const answeredCount = answers.filter(a => a !== null).length;

  return (
    <div className="max-w-2xl mx-auto space-y-4 pb-8">
      <div className={`flex items-center justify-between gap-2 p-3 rounded-xl border ${isUrgent ? 'bg-red-50 border-red-200' : 'bg-slate-50 border-slate-200'}`}>
        <div className="min-w-0">
          <p className="text-sm font-bold text-slate-700 truncate">{subjectName} — WASSCE Exam</p>
          <p className="text-xs text-slate-400">{answeredCount}/{shuffled.length} answered</p>
        </div>
        <div className={`flex items-center gap-2 font-bold text-lg flex-shrink-0 ${isUrgent ? 'text-red-600' : 'text-slate-700'}`}>
          <Clock size={18} className={isUrgent ? 'animate-pulse' : ''} />
          {formatTime(timeLeft)}
        </div>
      </div>

      <div className="bg-white border border-slate-200 rounded-xl p-3 shadow-sm">
        <p className="text-xs text-slate-500 font-medium mb-2">Question Navigator</p>
        <div className="flex gap-1 flex-wrap">
          {shuffled.map((_, i) => (
            <button
              key={i}
              onClick={() => setCurrent(i)}
              className={`w-9 h-9 rounded-lg text-xs font-bold transition-all ${
                i === current ? 'bg-blue-600 text-white ring-2 ring-blue-300' :
                flagged.has(i) ? 'bg-amber-400 text-white' :
                answers[i] !== null ? 'bg-green-500 text-white' :
                'bg-slate-100 text-slate-500 hover:bg-slate-200'
              }`}
            >
              {i + 1}
            </button>
          ))}
        </div>
        <div className="flex items-center gap-4 mt-2.5 text-xs text-slate-400">
          <span className="flex items-center gap-1.5"><span className="w-3 h-3 rounded bg-blue-600 inline-block" />Current</span>
          <span className="flex items-center gap-1.5"><span className="w-3 h-3 rounded bg-green-500 inline-block" />Answered</span>
          <span className="flex items-center gap-1.5"><span className="w-3 h-3 rounded bg-amber-400 inline-block" />Flagged</span>
          <span className="flex items-center gap-1.5"><span className="w-3 h-3 rounded bg-slate-100 border border-slate-300 inline-block" />Skipped</span>
        </div>
      </div>

      <div className="bg-white border border-slate-200 rounded-2xl p-6 shadow-sm">
        <div className="flex items-center justify-between mb-5">
          <div className="flex items-center gap-2">
            <span className="text-sm text-slate-500 font-medium">Question {current + 1} of {shuffled.length}</span>
            <span className={`text-xs px-2 py-0.5 rounded-full font-semibold ${
              sq.original.difficulty === 'easy' ? 'bg-green-100 text-green-700' :
              sq.original.difficulty === 'hard' ? 'bg-red-100 text-red-700' :
              'bg-amber-100 text-amber-700'
            }`}>
              {sq.original.difficulty}
            </span>
          </div>
          <button
            onClick={() => toggleFlag(current)}
            className={`flex items-center gap-1.5 text-xs font-semibold px-3 py-2 rounded-lg border transition-all min-h-[36px] ${
              flagged.has(current)
                ? 'bg-amber-100 border-amber-300 text-amber-700'
                : 'bg-slate-50 border-slate-200 text-slate-500 hover:border-amber-300 hover:text-amber-600'
            }`}
          >
            <Flag size={12} />
            {flagged.has(current) ? 'Flagged' : 'Flag'}
          </button>
        </div>

        <h2 className="text-base font-semibold text-slate-800 mb-5 leading-relaxed">{sq.original.question}</h2>

        <div className="space-y-2">
          {sq.shuffledOptions.map((option, idx) => (
            <button
              key={idx}
              onClick={() => {
                const newAnswers = [...answers];
                newAnswers[current] = idx;
                answersRef.current = newAnswers;
                setAnswers(newAnswers);
              }}
              className={`w-full flex items-center gap-3 p-3.5 rounded-xl border-2 text-left transition-all ${
                answers[current] === idx
                  ? 'border-blue-500 bg-blue-50'
                  : 'border-slate-200 hover:border-blue-300 hover:bg-blue-50/30'
              }`}
            >
              <div className={`w-9 h-9 sm:w-10 sm:h-10 rounded-full border-2 flex-shrink-0 flex items-center justify-center text-sm font-bold transition-all ${
                answers[current] === idx
                  ? 'border-blue-500 bg-blue-500 text-white'
                  : 'border-slate-300 text-slate-500'
              }`}>
                {answers[current] === idx ? <CheckCircle size={14} /> : OPTION_LABELS[idx]}
              </div>
              <span className="text-sm text-slate-700 leading-snug min-w-0 flex-1">{option}</span>
            </button>
          ))}
        </div>
      </div>

      <div className="flex gap-3" style={{ minWidth: 0 }}>
        <button
          onClick={() => setCurrent(Math.max(0, current - 1))}
          disabled={current === 0}
          className="flex-1 min-w-0 py-3 border border-slate-200 text-slate-700 font-semibold rounded-xl hover:bg-slate-50 disabled:opacity-40 transition-colors"
        >
          ← Previous
        </button>
        {current < shuffled.length - 1 ? (
          <button
            onClick={() => setCurrent(current + 1)}
            className="flex-1 min-w-0 py-3 bg-blue-600 text-white font-semibold rounded-xl hover:bg-blue-700 transition-colors"
          >
            Next →
          </button>
        ) : (
          <button
            onClick={finishExam}
            className="flex-1 min-w-0 py-3 bg-green-600 text-white font-bold rounded-xl hover:bg-green-700 transition-colors"
          >
            Submit Exam
          </button>
        )}
      </div>

      {answeredCount < shuffled.length && current === shuffled.length - 1 && (
        <div className="bg-amber-50 border border-amber-200 rounded-xl p-3">
          <p className="text-xs text-amber-700 font-medium text-center">
            {shuffled.length - answeredCount} question{shuffled.length - answeredCount !== 1 ? 's' : ''} unanswered — use the navigator above to go back and answer them before submitting.
          </p>
        </div>
      )}
    </div>
  );
}
