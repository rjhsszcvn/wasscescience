import { useEffect, useState } from 'react';
import { updateMetaTags, getSubjectSEO, PAGE_SEO } from '../../lib/seo';
import { ChevronLeft, BookOpen, Clock, CheckCircle, ChevronRight, Zap, Play, TrendingUp, Calculator, BookText, Atom, FlaskConical, Leaf, Globe, Sigma, Sprout, Lock, Star, Crown, Microscope, HeartPulse, Dumbbell } from 'lucide-react';
import type { LucideIcon } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Subject, Topic, UserProgress, QuizAttempt } from '../../lib/types';
import { Page } from '../../lib/types';
import { cacheGet, cacheSet, cacheGetStale, TTL } from '../../lib/cache';

interface ExtendedProgress extends UserProgress {
  reading_progress_percent?: number;
}

type AuthPromptReason = 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';

interface SubjectPageProps {
  subjectId?: string;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
  onAuthPrompt?: (reason: AuthPromptReason) => void;
}

const SUBJECT_GRADIENTS: Record<string, string> = {
  'Mathematics': 'from-blue-600 to-blue-700',
  'English Language': 'from-green-600 to-green-700',
  'Physics': 'from-red-600 to-red-700',
  'Chemistry': 'from-teal-600 to-teal-700',
  'Biology': 'from-emerald-600 to-emerald-700',
  'Geography': 'from-orange-600 to-orange-700',
  'Further Mathematics': 'from-cyan-600 to-cyan-700',
  'Agricultural Science': 'from-lime-600 to-lime-700',
};

const SUBJECT_LIGHT: Record<string, string> = {
  'Mathematics': 'bg-blue-50 border-blue-100 text-blue-700',
  'English Language': 'bg-green-50 border-green-100 text-green-700',
  'Physics': 'bg-red-50 border-red-100 text-red-700',
  'Chemistry': 'bg-teal-50 border-teal-100 text-teal-700',
  'Biology': 'bg-emerald-50 border-emerald-100 text-emerald-700',
  'Geography': 'bg-orange-50 border-orange-100 text-orange-700',
  'Further Mathematics': 'bg-cyan-50 border-cyan-100 text-cyan-700',
  'Agricultural Science': 'bg-lime-50 border-lime-100 text-lime-700',
};

const SUBJECT_PROGRESS_BAR: Record<string, string> = {
  'Mathematics': 'bg-blue-500',
  'English Language': 'bg-green-500',
  'Physics': 'bg-red-500',
  'Chemistry': 'bg-teal-500',
  'Biology': 'bg-emerald-500',
  'Geography': 'bg-orange-500',
  'Further Mathematics': 'bg-cyan-500',
  'Agricultural Science': 'bg-lime-500',
};

const SUBJECT_ICONS: Record<string, LucideIcon> = {
  'Mathematics': Calculator,
  'English Language': BookText,
  'Physics': Atom,
  'Chemistry': FlaskConical,
  'Biology': Leaf,
  'Geography': Globe,
  'Further Mathematics': Sigma,
  'Agricultural Science': Sprout,
  'Core Science': Microscope,
  'Health Science': HeartPulse,
  'Physical Education': Dumbbell,
};

const FREE_SUBJECT_NAMES = ['Mathematics', 'English Language'];

export default function SubjectPage({ subjectId, onNavigate, onAuthPrompt }: SubjectPageProps) {
  const { profile, isGuest, isPremium } = useAuth();
  const [subjects, setSubjects] = useState<Subject[]>(() => cacheGetStale<Subject[]>('subjects') || []);
  const [selectedSubject, setSelectedSubject] = useState<Subject | null>(null);
  const [topics, setTopics] = useState<Topic[]>(() => subjectId ? (cacheGetStale<Topic[]>(`topics:${subjectId}`) || []) : []);
  const [progress, setProgress] = useState<ExtendedProgress[]>([]);
  const [quizAttempts, setQuizAttempts] = useState<QuizAttempt[]>([]);
  const [loading, setLoading] = useState(() => {
    if (!subjectId) return !(cacheGetStale<Subject[]>('subjects')?.length);
    return !(cacheGetStale<Topic[]>(`topics:${subjectId}`)?.length);
  });
  const [topicQuestionCounts, setTopicQuestionCounts] = useState<Record<string, number>>({});

  useEffect(() => {
    if (subjectId) {
      loadSubjectDetails(subjectId);
    } else {
      loadSubjects();
      setSelectedSubject(null);
      updateMetaTags(PAGE_SEO['subjects']);
    }
  }, [subjectId, profile?.id]);

  async function loadSubjects() {
    const cached = cacheGet<Subject[]>('subjects', TTL.long);
    if (cached) {
      setSubjects(cached);
      setLoading(false);
      return;
    }
    const stale = cacheGetStale<Subject[]>('subjects');
    if (stale) setLoading(false);
    else setLoading(true);
    const { data } = await supabase.from('subjects').select('*').order('order_index');
    const list = data || [];
    cacheSet('subjects', list);
    setSubjects(list);
    setLoading(false);
  }

  async function loadSubjectDetails(id: string) {
    const cachedSubject = cacheGet<Subject>(`subject:${id}`, TTL.long);
    const cachedTopics = cacheGet<Topic[]>(`topics:${id}`, TTL.long);
    const cachedCounts = cacheGet<Record<string, number>>(`qcounts:${id}`, TTL.long);

    if (cachedSubject && cachedTopics) {
      setSelectedSubject(cachedSubject);
      setTopics(cachedTopics);
      if (cachedCounts) setTopicQuestionCounts(cachedCounts);
      setLoading(false);
    } else {
      const staleTopics = cacheGetStale<Topic[]>(`topics:${id}`);
      if (staleTopics?.length) setLoading(false);
      else setLoading(true);
    }

    const baseQueries = [
      supabase.from('subjects').select('*').eq('id', id).maybeSingle(),
      supabase.from('topics').select('*').eq('subject_id', id).order('order_index'),
    ];

    const [subjectRes, topicsRes] = await Promise.all(baseQueries);
    const topicList: Topic[] = (topicsRes as { data: Topic[] | null }).data || [];

    const subjectData = (subjectRes as { data: Subject | null }).data;
    if (subjectData) cacheSet(`subject:${id}`, subjectData);
    cacheSet(`topics:${id}`, topicList);

    if (!cachedCounts) {
      const questionCountsRes = await supabase
        .from('quiz_questions')
        .select('topic_id')
        .in('topic_id', topicList.map(t => t.id));

      const counts: Record<string, number> = {};
      for (const row of (questionCountsRes.data || [])) {
        counts[row.topic_id] = (counts[row.topic_id] || 0) + 1;
      }
      cacheSet(`qcounts:${id}`, counts);
      setTopicQuestionCounts(counts);
    }

    let progressData: ExtendedProgress[] = [];
    let attemptsData: QuizAttempt[] = [];

    if (profile?.id) {
      const [progressRes, attemptsRes] = await Promise.all([
        supabase.from('user_progress').select('*').eq('user_id', profile.id),
        supabase.from('quiz_attempts').select('*').eq('user_id', profile.id).eq('subject_id', id),
      ]);
      progressData = (progressRes.data || []) as ExtendedProgress[];
      attemptsData = attemptsRes.data || [];
    }

    setSelectedSubject(subjectData);
    setTopics(topicList);
    setProgress(progressData);
    setQuizAttempts(attemptsData);
    setLoading(false);

    if (subjectData) {
      updateMetaTags(getSubjectSEO(subjectData.name, id));
    }
  }

  const getTopicProgress = (topicId: string) => progress.find(p => p.topic_id === topicId);
  const getTopicBestScore = (topicId: string) => {
    const attempts = quizAttempts.filter(a => a.topic_id === topicId);
    if (!attempts.length) return null;
    return Math.max(...attempts.map(a => Math.round(a.score / a.total_questions * 100)));
  };

  const getLastAccessedTopic = () => {
    const withAccess = progress.filter(p => p.last_accessed);
    if (!withAccess.length) return null;
    const latest = withAccess.sort((a, b) =>
      new Date(b.last_accessed!).getTime() - new Date(a.last_accessed!).getTime()
    )[0];
    return topics.find(t => t.id === latest.topic_id) || null;
  };

  if (loading) {
    return (
      <div className="flex flex-col items-center justify-center h-64 gap-4">
        <div className="w-10 h-10 border-4 border-blue-600 border-t-transparent rounded-full animate-spin" />
        <p className="text-slate-400 text-sm animate-pulse">Loading...</p>
      </div>
    );
  }

  if (selectedSubject) {
    const completedCount = topics.filter(t => getTopicProgress(t.id)?.completed).length;
    const gradient = SUBJECT_GRADIENTS[selectedSubject.name] || 'from-blue-600 to-blue-700';
    const barColor = SUBJECT_PROGRESS_BAR[selectedSubject.name] || 'bg-blue-500';
    const pct = topics.length > 0 ? Math.round(completedCount / topics.length * 100) : 0;

    return (
      <div className="space-y-5 pb-8">
        <button
          onClick={() => onNavigate(isGuest ? 'subject' : 'dashboard')}
          className="flex items-center gap-2 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors group"
        >
          <ChevronLeft size={16} className="group-hover:-translate-x-0.5 transition-transform" />
          {isGuest ? 'All Subjects' : 'Back to Dashboard'}
        </button>

        <div className={`relative overflow-hidden bg-gradient-to-br ${gradient} rounded-2xl p-6 text-white shadow-lg`}>
          <div className="absolute top-0 right-0 w-40 h-40 bg-white/5 rounded-full -translate-y-12 translate-x-12" />
          <div className="absolute bottom-0 left-0 w-28 h-28 bg-white/5 rounded-full translate-y-8 -translate-x-8" />
          <div className="relative">
            <div className="flex items-start gap-4 mb-5">
              <div className="w-14 h-14 bg-white/20 rounded-2xl flex items-center justify-center flex-shrink-0 shadow-inner">
                {(() => { const Icon = SUBJECT_ICONS[selectedSubject.name] || BookOpen; return <Icon size={28} />; })()}
              </div>
              <div className="flex-1 min-w-0">
                <h1 className="text-2xl font-black mb-1 leading-tight">{selectedSubject.name}</h1>
                <p className="text-white/70 text-sm leading-relaxed">{selectedSubject.description}</p>
              </div>
            </div>

            <div className="grid grid-cols-3 gap-2 xs:gap-3 mb-4">
              {[
                { label: 'Topics', value: topics.length },
                { label: 'Completed', value: completedCount },
                { label: 'Progress', value: `${pct}%` },
              ].map(({ label, value }) => (
                <div key={label} className="bg-white/10 backdrop-blur-sm rounded-xl p-2.5 xs:p-3 text-center border border-white/10">
                  <p className="text-xl xs:text-2xl font-black leading-none">{value}</p>
                  <p className="text-white/60 text-[10px] xs:text-xs mt-1">{label}</p>
                </div>
              ))}
            </div>

            <div className="space-y-1.5">
              <div className="flex items-center justify-between text-xs">
                <span className="text-white/60">{completedCount} of {topics.length} topics done</span>
                <span className="text-white font-bold">{pct}%</span>
              </div>
              <div className="w-full bg-white/20 rounded-full h-2.5 overflow-hidden">
                <div
                  className="h-2.5 rounded-full bg-white transition-all duration-700"
                  style={{ width: `${pct}%` }}
                />
              </div>
            </div>
          </div>
        </div>

        <button
          onClick={() => {
            if (isGuest) { onAuthPrompt?.('quiz'); return; }
            onNavigate('exam', { subjectId: selectedSubject.id, subjectName: selectedSubject.name });
          }}
          className={`w-full py-4 rounded-2xl font-black text-sm flex items-center justify-center gap-2.5 transition-all bg-gradient-to-r ${gradient} text-white shadow-md hover:shadow-xl hover:-translate-y-0.5 active:scale-[0.98]`}
        >
          <Zap size={16} className="fill-white" />
          {isGuest ? 'Take Full Timed Exam — Sign Up Required' : 'Start Timed Exam — 40 Questions · 45 min'}
        </button>
        {isGuest && (
          <div className="grid grid-cols-2 gap-2.5">
            {[
              { icon: CheckCircle, text: 'Save quiz scores' },
              { icon: CheckCircle, text: 'Track topic progress' },
              { icon: CheckCircle, text: 'Join leaderboard' },
              { icon: CheckCircle, text: 'Free Maths & English' },
            ].map(({ icon: Icon, text }) => (
              <div key={text} className="flex items-center gap-2 bg-green-50 border border-green-100 rounded-xl px-3 py-2">
                <Icon size={12} className="text-green-500 flex-shrink-0" />
                <span className="text-xs text-green-700 font-semibold">{text}</span>
              </div>
            ))}
          </div>
        )}

        {(() => {
          const lastTopic = getLastAccessedTopic();
          const lastProgress = lastTopic ? getTopicProgress(lastTopic.id) : null;
          if (lastTopic && !lastProgress?.completed) {
            const readPct = lastProgress?.reading_progress_percent || 0;
            return (
              <div className={`relative overflow-hidden bg-gradient-to-r ${gradient} rounded-2xl p-4 text-white`}>
                <div className="absolute top-0 right-0 w-20 h-20 bg-white/5 rounded-full -translate-y-4 translate-x-4" />
                <div className="relative">
                  <div className="flex items-center gap-2 mb-1">
                    <Play size={12} className="opacity-70" />
                    <p className="text-xs font-bold uppercase tracking-wider opacity-70">Continue where you stopped</p>
                  </div>
                  <p className="font-black text-base mb-2 leading-tight">{lastTopic.name}</p>
                  <div className="w-full bg-white/20 rounded-full h-1.5 mb-3 overflow-hidden">
                    <div className="h-1.5 rounded-full bg-white transition-all" style={{ width: `${readPct}%` }} />
                  </div>
                  <button
                    onClick={() => onNavigate('topic', { topicId: lastTopic.id, subjectId: selectedSubject.id, subjectName: selectedSubject.name })}
                    className="flex items-center gap-1.5 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl text-sm font-bold transition-all active:scale-95"
                  >
                    <Play size={13} className="fill-white" /> Resume — {readPct}% read
                  </button>
                </div>
              </div>
            );
          }
          return null;
        })()}

        <div>
          <div className="flex items-center justify-between mb-3">
            <h2 className="text-lg font-black text-slate-900">Topics</h2>
            <div className="flex items-center gap-1.5 text-xs font-semibold text-slate-500 bg-slate-100 px-2.5 py-1 rounded-full">
              <TrendingUp size={11} />
              <span>{topics.filter(t => getTopicProgress(t.id)?.completed).length}/{topics.length} done</span>
            </div>
          </div>
          <div className="space-y-2.5">
            {topics.map((topic, index) => {
              const topicProgress = getTopicProgress(topic.id);
              const bestScore = getTopicBestScore(topic.id);
              const isCompleted = topicProgress?.completed;
              const readPct = topicProgress?.reading_progress_percent || 0;
              const isInProgress = !isCompleted && readPct > 0;
              const questionCount = topicQuestionCounts[topic.id] || 0;

              return (
                <button
                  key={topic.id}
                  onClick={() => onNavigate('topic', { topicId: topic.id, subjectId: selectedSubject.id, subjectName: selectedSubject.name })}
                  className={`w-full bg-white border rounded-2xl p-4 text-left transition-all group hover:shadow-md hover:-translate-y-px ${
                    isCompleted
                      ? 'border-green-200 bg-green-50/30 hover:border-green-300'
                      : isInProgress
                      ? 'border-blue-200 bg-blue-50/20 hover:border-blue-300'
                      : 'border-slate-200 hover:border-slate-300'
                  }`}
                >
                  <div className="flex items-start gap-3">
                    <div className={`w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0 text-sm font-black transition-all ${
                      isCompleted
                        ? 'bg-green-500 text-white shadow-sm'
                        : isInProgress
                        ? `bg-gradient-to-br ${gradient} text-white shadow-sm`
                        : 'bg-slate-100 text-slate-500'
                    }`}>
                      {isCompleted ? <CheckCircle size={16} /> : index + 1}
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-0.5 flex-wrap">
                        <h3 className="font-bold text-slate-800 text-sm">{topic.name}</h3>
                        {isInProgress && (
                          <span className="text-xs px-2 py-0.5 bg-blue-100 text-blue-700 rounded-full font-bold">In Progress</span>
                        )}
                        {isCompleted && bestScore !== null && bestScore >= 70 && (
                          <span className="text-xs px-2 py-0.5 bg-amber-50 text-amber-600 rounded-full font-bold flex items-center gap-0.5">
                            <Star size={9} className="fill-amber-400" /> {bestScore}%
                          </span>
                        )}
                      </div>
                      <p className="text-xs text-slate-500 line-clamp-1 mb-2 leading-relaxed">{topic.description}</p>
                      {isInProgress && (
                        <div className="mb-2">
                          <div className="w-full bg-slate-100 rounded-full h-1.5 overflow-hidden">
                            <div
                              className={`h-1.5 rounded-full ${barColor} transition-all`}
                              style={{ width: `${readPct}%` }}
                            />
                          </div>
                          <span className="text-xs text-blue-600 font-semibold mt-1 block">{readPct}% read</span>
                        </div>
                      )}
                      <div className="flex items-center gap-3 flex-wrap">
                        <span className="flex items-center gap-1 text-xs text-slate-400">
                          <Clock size={11} /> {topic.duration_minutes} min
                        </span>
                        <span className="flex items-center gap-1 text-xs text-slate-400">
                          <BookOpen size={11} /> Notes
                        </span>
                        {questionCount > 0 && (
                          <span className="flex items-center gap-1 text-xs text-blue-600 font-semibold">
                            <Play size={9} className="fill-blue-600" /> {questionCount} Questions
                          </span>
                        )}
                        {bestScore !== null && !(isCompleted && bestScore >= 70) && (
                          <span className={`flex items-center gap-1 text-xs font-bold ${bestScore >= 70 ? 'text-green-600' : bestScore >= 50 ? 'text-amber-600' : 'text-red-500'}`}>
                            Best: {bestScore}%
                          </span>
                        )}
                        {!isCompleted && !isInProgress && !isGuest && (
                          <span className="flex items-center gap-1 text-xs text-slate-300">
                            <Lock size={10} /> Not started
                          </span>
                        )}
                      </div>
                    </div>
                    <ChevronRight size={16} className="text-slate-300 group-hover:text-slate-500 group-hover:translate-x-0.5 transition-all flex-shrink-0 mt-1" />
                  </div>
                </button>
              );
            })}
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6 pb-8">
      {isGuest && (
        <button
          onClick={() => onNavigate('home')}
          className="flex items-center gap-2 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors group"
        >
          <ChevronLeft size={16} className="group-hover:-translate-x-0.5 transition-transform" /> Back to Home
        </button>
      )}

      <div>
        <h1 className="text-2xl font-black text-slate-900 mb-1">All Subjects</h1>
        <p className="text-slate-500 text-sm">Select a subject to view topics, take quizzes, and run exams</p>
      </div>

      {isGuest && (
        <div className="space-y-3">
          <div className="relative overflow-hidden bg-gradient-to-br from-blue-600 to-blue-800 rounded-2xl p-5 text-white flex items-center gap-4">
            <div className="absolute top-0 right-0 w-24 h-24 bg-white/5 rounded-full -translate-y-6 translate-x-6" />
            <div className="flex-1 min-w-0 relative">
              <p className="font-black text-base mb-1">Create a free account</p>
              <p className="text-blue-100 text-sm leading-relaxed">Sign up to save your progress, take full quizzes, and track your performance.</p>
            </div>
            <button
              onClick={() => onAuthPrompt?.('general')}
              className="flex-shrink-0 px-4 py-2.5 bg-white text-blue-700 text-sm font-black rounded-xl hover:bg-blue-50 active:scale-95 transition-all shadow-sm"
            >
              Sign Up
            </button>
          </div>
          <div className="grid grid-cols-3 gap-2.5">
            {[
              { value: '8', label: 'Subjects', sub: 'Full coverage' },
              { value: '145+', label: 'Topics', sub: 'Full notes' },
              { value: '2,400+', label: 'Questions', sub: 'With answers' },
            ].map(({ value, label, sub }) => (
              <div key={label} className="bg-slate-50 border border-slate-200 rounded-xl p-3 text-center">
                <p className="text-xl font-black text-slate-900">{value}</p>
                <p className="text-xs font-bold text-slate-700">{label}</p>
                <p className="text-[10px] text-slate-400">{sub}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {!isGuest && !isPremium && (
        <div className="flex items-center gap-3 px-4 py-3.5 rounded-2xl border bg-gradient-to-r from-amber-50 to-orange-50 border-amber-200/80">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0 bg-gradient-to-br from-amber-500 to-orange-500">
            <Crown size={15} className="text-white" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-sm font-black text-amber-900">Upgrade to unlock all subjects</p>
            <p className="text-xs mt-0.5 text-amber-700/80">Premium gives you full WASSCE preparation experience.</p>
          </div>
          <button
            onClick={() => onNavigate('premium')}
            className="flex-shrink-0 flex items-center gap-1.5 px-3.5 py-2 text-white text-xs font-black rounded-xl transition-all active:scale-95 bg-gradient-to-br from-amber-500 to-orange-500"
          >
            <Crown size={11} /> Upgrade
          </button>
        </div>
      )}

      {!isGuest && isPremium && (
        <div className="flex items-center gap-3 px-4 py-3 rounded-2xl bg-gradient-to-r from-amber-50 to-yellow-50 border border-amber-200/80">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center flex-shrink-0 bg-gradient-to-br from-amber-500 to-yellow-500">
            <Crown size={15} className="text-white" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-sm font-black text-amber-900">Premium Access</p>
            <p className="text-xs text-amber-700/80 mt-0.5">Full access to all subjects, quizzes, and exams.</p>
          </div>
        </div>
      )}

      <div className="grid grid-cols-1 xs:grid-cols-2 lg:grid-cols-3 gap-3 xs:gap-4">
        {subjects.map(subject => {
          const gradient = SUBJECT_GRADIENTS[subject.name] || 'from-blue-600 to-blue-700';
          const isFree = FREE_SUBJECT_NAMES.includes(subject.name);
          const isLocked = !isPremium && !isFree;
          const SubjectIcon = SUBJECT_ICONS[subject.name] || BookOpen;

          const handleClick = () => {
            if (isGuest && isLocked) { onAuthPrompt?.('general'); return; }
            if (!isGuest && isLocked) { onNavigate('premium'); return; }
            onNavigate('subject', { subjectId: subject.id });
          };

          return (
            <button
              key={subject.id}
              onClick={handleClick}
              className={`group bg-white border rounded-2xl overflow-hidden transition-all duration-200 text-left ${
                isLocked
                  ? 'border-slate-200/60 hover:shadow-md hover:-translate-y-0.5 opacity-80'
                  : 'border-slate-200 hover:shadow-xl hover:border-slate-300 hover:-translate-y-1'
              }`}
            >
              <div className={`h-1.5 bg-gradient-to-r ${isLocked ? 'from-slate-300 to-slate-400' : gradient}`} />
              <div className="p-5">
                <div className="flex items-center gap-3 mb-3">
                  <div className={`w-11 h-11 rounded-xl flex items-center justify-center shadow-md text-white flex-shrink-0 ${isLocked ? 'bg-slate-300' : `bg-gradient-to-br ${gradient}`}`}>
                    {isLocked ? <Lock size={18} className="text-slate-500" /> : <SubjectIcon size={21} />}
                  </div>
                  <h3 className={`font-black text-sm leading-tight ${isLocked ? 'text-slate-500' : 'text-slate-800'}`}>{subject.name}</h3>
                </div>
                <p className="text-xs text-slate-500 mb-4 line-clamp-2 leading-relaxed">{subject.description}</p>
                <div className="flex items-center justify-between">
                  {isPremium ? (
                    <span className="text-xs font-bold px-2.5 py-1 rounded-full border bg-amber-50 border-amber-200 text-amber-700 flex items-center gap-1">
                      <Crown size={9} /> Premium
                    </span>
                  ) : isFree ? (
                    <span className="text-xs font-bold px-2.5 py-1 rounded-full border bg-green-50 border-green-200 text-green-700 flex items-center gap-1">
                      <CheckCircle size={9} /> Free
                    </span>
                  ) : (
                    <span className="text-xs font-bold px-2.5 py-1 rounded-full border bg-amber-50 border-amber-200 text-amber-600 flex items-center gap-1">
                      <Lock size={9} /> Premium Only
                    </span>
                  )}
                  {isLocked
                    ? <span className="text-[10px] font-bold text-amber-600 bg-amber-50 px-2 py-1 rounded-full border border-amber-200">Unlock</span>
                    : <ChevronRight size={16} className="text-slate-300 group-hover:text-slate-600 group-hover:translate-x-0.5 transition-all" />
                  }
                </div>
              </div>
            </button>
          );
        })}
      </div>
    </div>
  );
}
