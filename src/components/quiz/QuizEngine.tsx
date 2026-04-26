import { useEffect, useState, useCallback, useRef } from 'react';
import { ChevronLeft, CheckCircle, XCircle, Clock, Trophy, BookOpen, Shuffle, Zap, Target, AlertCircle, RefreshCw } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { QuizQuestion } from '../../lib/types';
import { useToast } from '../ui/Toast';
import { Page } from '../../lib/types';
import { ShuffledQuestion, shuffleAndPickQuestions, OPTION_LABELS, formatTime } from '../../lib/quiz-utils';
import { cacheInvalidate } from '../../lib/cache';

type AuthPromptReason = 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';

interface QuizEngineProps {
  topicId: string;
  subjectId: string;
  topicName?: string;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
  onAuthPrompt?: (reason: AuthPromptReason) => void;
}

const QUIZ_QUESTION_COUNT = 10;
const LOAD_TIMEOUT_MS = 15000;

export default function QuizEngine({ topicId, subjectId, topicName, onNavigate, onAuthPrompt }: QuizEngineProps) {
  const { profile, isGuest } = useAuth();
  const { toast } = useToast();
  const [allQuestions, setAllQuestions] = useState<QuizQuestion[]>([]);
  const [shuffled, setShuffled] = useState<ShuffledQuestion[]>([]);
  const [current, setCurrent] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [answers, setAnswers] = useState<(number | null)[]>([]);
  const [showExplanation, setShowExplanation] = useState(false);
  const [answerAnimation, setAnswerAnimation] = useState<'correct' | 'wrong' | null>(null);
  const [quizComplete, setQuizComplete] = useState(false);
  const [startTime] = useState(Date.now());
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState(false);
  const [timeElapsed, setTimeElapsed] = useState(0);
  const seenIdsRef = useRef<Set<string>>(new Set());
  const finishingRef = useRef(false);

  useEffect(() => {
    loadQuestions();
  }, [topicId]);

  useEffect(() => {
    if (quizComplete) return;
    const timer = setInterval(() => setTimeElapsed(Math.floor((Date.now() - startTime) / 1000)), 1000);
    return () => clearInterval(timer);
  }, [quizComplete, startTime]);

  async function loadQuestions() {
    setLoading(true);
    setLoadError(false);

    const timeoutId = setTimeout(() => {
      setLoading(false);
      setLoadError(true);
    }, LOAD_TIMEOUT_MS);

    try {
      const [questionsResult, historyResult] = await Promise.all([
        supabase.from('quiz_questions').select('*').eq('subject_id', subjectId),
        profile
          ? supabase
              .from('user_question_history')
              .select('question_id')
              .eq('user_id', profile.id)
              .eq('subject_id', subjectId)
          : Promise.resolve({ data: [] }),
      ]);

      clearTimeout(timeoutId);

      const questions: QuizQuestion[] = (questionsResult.data || []).map(q => {
        let options: string[] = [];
        try {
          options = Array.isArray(q.options) ? q.options : JSON.parse(q.options);
        } catch {
          options = [];
        }
        return { ...q, options };
      });

      const seen = new Set<string>((historyResult.data || []).map((h: { question_id: string }) => h.question_id));
      seenIdsRef.current = seen;
      setAllQuestions(questions);

      const picked = shuffleAndPickQuestions(questions, seenIdsRef.current, QUIZ_QUESTION_COUNT);
      setShuffled(picked);
      setAnswers(new Array(picked.length).fill(null));
      setLoading(false);
    } catch {
      clearTimeout(timeoutId);
      setLoading(false);
      setLoadError(true);
    }
  }

  function handleSelect(idx: number) {
    if (selected !== null) return;
    setSelected(idx);
    setShowExplanation(true);
    const newAnswers = [...answers];
    newAnswers[current] = idx;
    setAnswers(newAnswers);
    const isCorrect = idx === shuffled[current]?.correctShuffledIndex;
    setAnswerAnimation(isCorrect ? 'correct' : 'wrong');
    if (isCorrect) {
      toast('Correct!', 'success', 1800);
    }
    setTimeout(() => setAnswerAnimation(null), 500);
  }

  function handleNext() {
    if (current + 1 >= shuffled.length) {
      finishQuiz();
    } else {
      setCurrent(current + 1);
      setSelected(null);
      setShowExplanation(false);
      setAnswerAnimation(null);
    }
  }

  async function finishQuiz() {
    if (finishingRef.current) return;
    finishingRef.current = true;
    setQuizComplete(true);
    const score = answers.filter((a, i) => a === shuffled[i]?.correctShuffledIndex).length;
    const timeTaken = Math.floor((Date.now() - startTime) / 1000);

    const questionIds = shuffled.map(sq => sq.original.id);
    seenIdsRef.current = new Set([...seenIdsRef.current, ...questionIds]);

    if (!profile) return;
    const userAnswers = answers;
    const correctAnswers = shuffled.map(sq => sq.correctShuffledIndex);

    try {
      await Promise.all([
        supabase.from('quiz_attempts').insert({
          user_id: profile.id,
          topic_id: topicId,
          subject_id: subjectId,
          score,
          total_questions: shuffled.length,
          time_taken: timeTaken,
        }),
        supabase.from('user_progress').upsert({
          user_id: profile.id,
          topic_id: topicId,
          completed: score / shuffled.length >= 0.6,
          notes_read: true,
          last_accessed: new Date().toISOString(),
        }, { onConflict: 'user_id,topic_id' }),
        supabase.from('quiz_sessions').insert({
          user_id: profile.id,
          topic_id: topicId,
          subject_id: subjectId,
          session_type: 'quiz',
          question_ids: questionIds,
          user_answers: userAnswers,
          shuffled_options: shuffled.map(sq => sq.shuffledOptions),
          correct_answers: correctAnswers,
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
      cacheInvalidate(`progress:${profile.id}`);
      cacheInvalidate(`quiz_attempts:${profile.id}`);
    } catch {
      // Results still displayed; data will sync when online
    }
  }

  const handleRestart = useCallback(() => {
    finishingRef.current = false;
    const picked = shuffleAndPickQuestions(allQuestions, seenIdsRef.current, QUIZ_QUESTION_COUNT);
    setShuffled(picked);
    setAnswers(new Array(picked.length).fill(null));
    setCurrent(0);
    setSelected(null);
    setShowExplanation(false);
    setQuizComplete(false);
    setTimeElapsed(0);
  }, [allQuestions]);

  if (loading) {
    return (
      <div className="flex flex-col items-center justify-center h-64 gap-4">
        <div className="w-12 h-12 border-4 border-blue-600 border-t-transparent rounded-full animate-spin" />
        <p className="text-slate-500 text-sm font-medium">Preparing your unique quiz session...</p>
      </div>
    );
  }

  if (loadError) {
    return (
      <div className="text-center py-16 max-w-sm mx-auto">
        <div className="w-16 h-16 bg-red-50 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <AlertCircle size={28} className="text-red-400" />
        </div>
        <h3 className="font-bold text-slate-700 mb-2 text-lg">Failed to Load Quiz</h3>
        <p className="text-slate-500 text-sm mb-6">Check your internet connection and try again.</p>
        <button
          onClick={loadQuestions}
          className="inline-flex items-center gap-2 px-5 py-2.5 bg-blue-600 text-white rounded-xl font-semibold text-sm hover:bg-blue-700 transition-colors"
        >
          <RefreshCw size={16} /> Try Again
        </button>
      </div>
    );
  }

  if (allQuestions.length === 0) {
    return (
      <div className="text-center py-16 max-w-sm mx-auto">
        <div className="w-16 h-16 bg-slate-100 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <BookOpen size={28} className="text-slate-400" />
        </div>
        <h3 className="font-bold text-slate-700 mb-2 text-lg">No Questions Yet</h3>
        <p className="text-slate-500 text-sm mb-6">This topic doesn't have quiz questions yet. Check back soon!</p>
        <button
          onClick={() => onNavigate('topic', { topicId, subjectId })}
          className="inline-flex items-center gap-2 px-5 py-2.5 bg-blue-600 text-white rounded-xl font-semibold text-sm hover:bg-blue-700 transition-colors"
        >
          <ChevronLeft size={16} /> Back to Topic
        </button>
      </div>
    );
  }

  if (quizComplete) {
    const score = answers.filter((a, i) => a === shuffled[i]?.correctShuffledIndex).length;
    const percentage = Math.round((score / shuffled.length) * 100);
    const passed = percentage >= 60;
    const perfect = percentage === 100;

    return (
      <div className="max-w-lg mx-auto space-y-4 pb-8">
        <div className={`relative overflow-hidden rounded-2xl p-5 xs:p-7 text-center text-white shadow-xl ${
          perfect
            ? 'bg-gradient-to-br from-amber-400 via-orange-500 to-amber-600'
            : passed
            ? 'bg-gradient-to-br from-green-500 via-emerald-600 to-green-700'
            : 'bg-gradient-to-br from-slate-600 via-slate-700 to-slate-800'
        }`}>
          <div className="absolute top-0 left-0 w-full h-full opacity-10">
            <div className="absolute top-4 right-8 w-20 h-20 bg-white rounded-full" />
            <div className="absolute bottom-4 left-4 w-12 h-12 bg-white rounded-full" />
          </div>
          <div className="relative">
            <div className="w-20 h-20 bg-white/20 rounded-full flex items-center justify-center mx-auto mb-4 shadow-inner">
              {perfect ? <Trophy size={38} className="text-amber-100" /> : passed ? <Trophy size={38} /> : <Target size={38} />}
            </div>
            <p className="text-sm font-bold uppercase tracking-widest mb-1 text-white/80">
              {perfect ? 'Perfect Score!' : passed ? 'Great Work!' : 'Keep Practicing!'}
            </p>
            <p className="text-5xl xs:text-7xl font-black mb-1 leading-none">{percentage}%</p>
            <p className="text-white/80 text-lg font-semibold">{score} / {shuffled.length} correct</p>
            <div className="flex items-center justify-center gap-1.5 mt-2 text-white/60 text-sm">
              <Clock size={13} />
              <span>{formatTime(timeElapsed)}</span>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-3 gap-2 xs:gap-2.5">
          {[
            { label: 'Correct', value: score, color: 'text-green-700', bg: 'bg-green-50 border-green-200', icon: '✓' },
            { label: 'Wrong', value: shuffled.length - score, color: 'text-red-600', bg: 'bg-red-50 border-red-200', icon: '✗' },
            { label: 'Score', value: `${percentage}%`, color: 'text-blue-700', bg: 'bg-blue-50 border-blue-200', icon: '★' },
          ].map(({ label, value, color, bg, icon }) => (
            <div key={label} className={`${bg} border rounded-2xl p-3 text-center`}>
              <p className="text-lg font-bold text-slate-400 mb-0.5">{icon}</p>
              <p className={`text-2xl font-black ${color} leading-none`}>{value}</p>
              <p className="text-xs text-slate-500 mt-1 font-medium">{label}</p>
            </div>
          ))}
        </div>

        <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
          <div className="px-4 py-3 border-b border-slate-100 bg-slate-50 flex items-center justify-between">
            <p className="text-sm font-bold text-slate-700">Question Review</p>
            <span className="text-xs text-slate-400 font-medium">{shuffled.length} questions</span>
          </div>
          <div className="divide-y divide-slate-100">
            {shuffled.map((sq, i) => {
              const correct = answers[i] === sq.correctShuffledIndex;
              const userAnswer = answers[i];
              return (
                <div key={sq.original.id} className={`p-4 ${correct ? 'bg-green-50/30' : 'bg-red-50/20'}`}>
                  <div className="flex items-start gap-3">
                    <div className={`w-7 h-7 rounded-full flex-shrink-0 flex items-center justify-center mt-0.5 shadow-sm ${correct ? 'bg-green-500' : 'bg-red-500'}`}>
                      {correct
                        ? <CheckCircle size={14} className="text-white" />
                        : <XCircle size={14} className="text-white" />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-semibold text-slate-800 mb-2 leading-relaxed">{sq.original.question}</p>
                      {!correct && userAnswer !== null && (
                        <p className="text-xs text-red-600 mb-1.5 bg-red-50 px-2 py-1 rounded-lg border border-red-100">
                          Your answer: <span className="font-bold">{OPTION_LABELS[userAnswer]}.</span> {sq.shuffledOptions[userAnswer]}
                        </p>
                      )}
                      <p className={`text-xs font-bold px-2 py-1 rounded-lg border ${correct ? 'text-green-700 bg-green-50 border-green-100' : 'text-green-700 bg-green-50 border-green-100'}`}>
                        {correct ? 'Correct: ' : 'Right answer: '}<span className="font-black">{OPTION_LABELS[sq.correctShuffledIndex]}.</span> {sq.shuffledOptions[sq.correctShuffledIndex]}
                      </p>
                      {sq.original.explanation && (
                        <p className="text-xs text-slate-500 mt-2 leading-relaxed border-l-2 border-slate-200 pl-2">{sq.original.explanation}</p>
                      )}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {isGuest && (
          <div className="bg-gradient-to-br from-blue-600 to-blue-700 rounded-2xl p-5 text-white">
            <p className="font-black text-base mb-1">Results not saved</p>
            <p className="text-blue-100 text-sm mb-4 leading-relaxed">Create a free account to save your progress, track improvement, and unlock all features.</p>
            <button
              onClick={() => onAuthPrompt?.('quiz')}
              className="w-full py-3 bg-white text-blue-700 font-black rounded-xl hover:bg-blue-50 active:scale-95 transition-all text-sm"
            >
              Create Free Account
            </button>
          </div>
        )}

        <div className="flex gap-3" style={{ minWidth: 0 }}>
          <button
            onClick={handleRestart}
            className="flex-1 min-w-0 flex items-center justify-center gap-2 py-3.5 border-2 border-slate-200 text-slate-700 font-bold rounded-2xl hover:bg-slate-50 hover:border-slate-300 active:scale-[0.98] transition-all"
          >
            <Shuffle size={16} /> New Quiz
          </button>
          <button
            onClick={() => onNavigate('topic', { topicId, subjectId })}
            className="flex-1 min-w-0 flex items-center justify-center gap-2 py-3.5 bg-blue-600 text-white font-bold rounded-2xl hover:bg-blue-700 active:scale-[0.98] transition-all shadow-sm"
          >
            <BookOpen size={16} /> Back to Notes
          </button>
        </div>
      </div>
    );
  }

  const sq = shuffled[current];
  const progressPct = ((current + 1) / shuffled.length) * 100;
  const correctSoFar = answers.slice(0, current).filter((a, i) => a === shuffled[i]?.correctShuffledIndex).length;

  return (
    <div className="max-w-2xl mx-auto space-y-3 xs:space-y-4 pb-8">
      <div className="flex items-center justify-between">
        <button
          onClick={() => onNavigate('topic', { topicId, subjectId })}
          className="flex items-center gap-1.5 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors group"
        >
          <ChevronLeft size={16} className="group-hover:-translate-x-0.5 transition-transform" /> {topicName || 'Topic'}
        </button>
        <div className="flex items-center gap-2">
          <div className="flex items-center gap-1.5 text-sm font-bold text-slate-600 bg-slate-100 px-3 py-1.5 rounded-full">
            <Clock size={13} className="text-blue-500" />
            <span>{formatTime(timeElapsed)}</span>
          </div>
          {current > 0 && (
            <div className="flex items-center gap-1.5 text-xs font-bold text-green-700 bg-green-50 border border-green-200 px-2.5 py-1.5 rounded-full">
              <CheckCircle size={12} />
              {correctSoFar}/{current}
            </div>
          )}
        </div>
      </div>

      <div className="space-y-2">
        <div className="flex items-center justify-between">
          <span className="text-xs font-bold text-slate-500">Question {current + 1} of {shuffled.length}</span>
          <span className="text-xs text-slate-400 flex items-center gap-1">
            <Zap size={10} className="text-blue-400" />
            Randomized session
          </span>
        </div>
        <div className="h-2.5 bg-slate-100 rounded-full overflow-hidden">
          <div
            className="h-2.5 bg-gradient-to-r from-blue-500 to-blue-600 rounded-full transition-all duration-500"
            style={{ width: `${progressPct}%` }}
          />
        </div>
        <div className="flex gap-1">
          {shuffled.map((_, i) => {
            const ans = answers[i];
            const isCorrect = ans !== null && ans === shuffled[i]?.correctShuffledIndex;
            const isWrong = ans !== null && ans !== shuffled[i]?.correctShuffledIndex;
            return (
              <div
                key={i}
                className={`flex-1 h-1 rounded-full transition-all duration-300 ${
                  i === current ? 'bg-blue-400' :
                  isCorrect ? 'bg-green-500' :
                  isWrong ? 'bg-red-400' :
                  'bg-slate-200'
                }`}
              />
            );
          })}
        </div>
      </div>

      <div className={`bg-white border-2 rounded-2xl p-4 xs:p-5 sm:p-6 shadow-sm transition-all duration-200 ${
        answerAnimation === 'correct' ? 'border-green-400 shadow-green-100' :
        answerAnimation === 'wrong' ? 'border-red-400 shadow-red-100' :
        'border-slate-200'
      }`}>
        <div className="flex items-center gap-2 mb-4">
          <span className={`text-xs px-2.5 py-1 rounded-full font-bold ${
            sq.original.difficulty === 'easy' ? 'bg-green-100 text-green-700' :
            sq.original.difficulty === 'hard' ? 'bg-red-100 text-red-700' :
            'bg-amber-100 text-amber-700'
          }`}>
            {sq.original.difficulty}
          </span>
        </div>

        <h2 className="text-sm xs:text-base sm:text-lg font-bold text-slate-800 mb-4 xs:mb-5 leading-relaxed">{sq.original.question}</h2>

        <div className="space-y-2 xs:space-y-2.5">
          {sq.shuffledOptions.map((option, idx) => {
            const isCorrectOption = idx === sq.correctShuffledIndex;
            const isSelectedOption = idx === selected;
            const isWrongSelection = isSelectedOption && !isCorrectOption;

            let containerStyle = 'border-slate-200 bg-white hover:border-blue-400 hover:bg-blue-50/50 cursor-pointer hover:shadow-sm';
            let labelStyle = 'border-2 border-slate-300 text-slate-500 bg-white';
            let labelContent: React.ReactNode = OPTION_LABELS[idx];

            if (selected !== null) {
              if (isCorrectOption) {
                containerStyle = 'border-green-500 bg-green-50 shadow-sm shadow-green-100';
                labelStyle = 'border-2 border-green-500 bg-green-500 text-white';
                labelContent = <CheckCircle size={14} />;
              } else if (isWrongSelection) {
                containerStyle = 'border-red-400 bg-red-50 shadow-sm shadow-red-100';
                labelStyle = 'border-2 border-red-400 bg-red-400 text-white';
                labelContent = <XCircle size={14} />;
              } else {
                containerStyle = 'border-slate-200 bg-slate-50/50 opacity-40';
              }
            }

            return (
              <button
                key={idx}
                onClick={() => handleSelect(idx)}
                disabled={selected !== null}
                className={`w-full flex items-center gap-2.5 xs:gap-3 p-3 xs:p-3.5 rounded-xl border-2 text-left transition-all duration-200 ${containerStyle}`}
              >
                <div className={`w-8 h-8 xs:w-9 xs:h-9 rounded-xl flex-shrink-0 flex items-center justify-center text-sm font-black transition-all ${labelStyle}`}>
                  {labelContent}
                </div>
                <span className="text-xs xs:text-sm text-slate-700 font-medium leading-snug min-w-0 flex-1">{option}</span>
              </button>
            );
          })}
        </div>

        {showExplanation && sq.original.explanation && (
          <div className={`mt-5 p-4 rounded-xl border-l-4 ${selected === sq.correctShuffledIndex ? 'bg-green-50 border-green-400 border border-green-100' : 'bg-blue-50 border-blue-400 border border-blue-100'}`}>
            <p className="text-xs font-black text-slate-600 mb-1.5 uppercase tracking-widest">Explanation</p>
            <p className="text-sm text-slate-700 leading-relaxed">{sq.original.explanation}</p>
          </div>
        )}
      </div>

      {selected !== null && (
        <button
          onClick={handleNext}
          className="w-full py-4 bg-blue-600 text-white font-black rounded-2xl hover:bg-blue-700 active:scale-[0.98] transition-all text-base shadow-sm shadow-blue-200"
        >
          {current + 1 >= shuffled.length ? 'View Results →' : 'Next Question →'}
        </button>
      )}
    </div>
  );
}
