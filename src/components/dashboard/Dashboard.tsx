import { useEffect, useState, useMemo, useCallback } from 'react';
import {
  BookOpen, CheckCircle, Play, ChevronRight, Trophy, Clock,
  ArrowRight, BookMarked, Flame, Users, Calculator, FlaskConical, Atom,
  Leaf, Globe, Sigma, Sprout, BookText, Star, Zap, Download, Smartphone,
  Crown, Target, BarChart3, Lock, TrendingUp, Microscope, HeartPulse, Dumbbell,
} from 'lucide-react';
import { usePWAInstall } from '../../hooks/usePWAInstall';
import type { LucideIcon } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Subject, Topic, UserProgress, QuizAttempt } from '../../lib/types';
import { Page } from '../../lib/types';
import { DashboardSkeleton } from '../ui/Skeleton';
import { cacheGet, cacheSet, cacheGetStale, TTL } from '../../lib/cache';

interface DashboardProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

const FREE_SUBJECTS = ['Mathematics', 'English Language'];

const SUBJECT_COLORS: Record<string, string> = {
  'Mathematics': 'from-blue-500 to-blue-600',
  'English Language': 'from-green-500 to-green-600',
  'Physics': 'from-red-500 to-red-600',
  'Chemistry': 'from-teal-500 to-teal-600',
  'Biology': 'from-emerald-500 to-emerald-600',
  'Geography': 'from-orange-500 to-orange-600',
  'Further Mathematics': 'from-cyan-500 to-cyan-600',
  'Agricultural Science': 'from-lime-500 to-lime-600',
  'Core Science': 'from-sky-500 to-sky-600',
  'Health Science': 'from-rose-500 to-rose-600',
  'Physical Education': 'from-emerald-500 to-teal-600',
};

const SUBJECT_BAR_COLORS: Record<string, string> = {
  'Mathematics': 'bg-blue-500',
  'English Language': 'bg-green-500',
  'Physics': 'bg-red-500',
  'Chemistry': 'bg-teal-500',
  'Biology': 'bg-emerald-500',
  'Geography': 'bg-orange-500',
  'Further Mathematics': 'bg-cyan-500',
  'Agricultural Science': 'bg-lime-500',
  'Core Science': 'bg-sky-500',
  'Health Science': 'bg-rose-500',
  'Physical Education': 'bg-emerald-500',
};

const SUBJECT_LIGHT_COLORS: Record<string, string> = {
  'Mathematics': 'bg-blue-50 border-blue-100',
  'English Language': 'bg-green-50 border-green-100',
  'Physics': 'bg-red-50 border-red-100',
  'Chemistry': 'bg-teal-50 border-teal-100',
  'Biology': 'bg-emerald-50 border-emerald-100',
  'Geography': 'bg-orange-50 border-orange-100',
  'Further Mathematics': 'bg-cyan-50 border-cyan-100',
  'Agricultural Science': 'bg-lime-50 border-lime-100',
  'Core Science': 'bg-sky-50 border-sky-100',
  'Health Science': 'bg-rose-50 border-rose-100',
  'Physical Education': 'bg-emerald-50 border-emerald-100',
};

const SUBJECT_TEXT_COLORS: Record<string, string> = {
  'Mathematics': 'text-blue-600',
  'English Language': 'text-green-600',
  'Physics': 'text-red-600',
  'Chemistry': 'text-teal-600',
  'Biology': 'text-emerald-600',
  'Geography': 'text-orange-600',
  'Further Mathematics': 'text-cyan-600',
  'Agricultural Science': 'text-lime-600',
  'Core Science': 'text-sky-600',
  'Health Science': 'text-rose-600',
  'Physical Education': 'text-emerald-600',
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

interface ExtendedProgress extends UserProgress {
  reading_progress_percent?: number;
  sections_viewed?: string[];
}

interface TopicSectionCount {
  topic_id: string;
  count: number;
}

function CircularProgress({ pct, size = 52, strokeWidth = 4, color = '#2563eb' }: { pct: number; size?: number; strokeWidth?: number; color?: string }) {
  const radius = (size - strokeWidth * 2) / 2;
  const circumference = 2 * Math.PI * radius;
  const offset = circumference - (pct / 100) * circumference;
  return (
    <svg width={size} height={size} className="-rotate-90">
      <circle cx={size / 2} cy={size / 2} r={radius} stroke="#f1f5f9" strokeWidth={strokeWidth} fill="none" />
      <circle
        cx={size / 2} cy={size / 2} r={radius}
        stroke={color} strokeWidth={strokeWidth} fill="none"
        strokeDasharray={circumference} strokeDashoffset={offset}
        strokeLinecap="round"
        style={{ transition: 'stroke-dashoffset 1s ease' }}
      />
    </svg>
  );
}

function computeStreak(prog: ExtendedProgress[]): number {
  const accessDates = prog
    .filter(p => p.last_accessed)
    .map(p => {
      const d = new Date(p.last_accessed!);
      return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
    });
  const uniqueDays = [...new Set(accessDates)].sort().reverse();
  if (!uniqueDays.length) return 0;
  let count = 0;
  const today = new Date();
  for (let i = 0; i < uniqueDays.length; i++) {
    const check = new Date(today);
    check.setDate(today.getDate() - i);
    const key = `${check.getFullYear()}-${String(check.getMonth() + 1).padStart(2, '0')}-${String(check.getDate()).padStart(2, '0')}`;
    if (uniqueDays.includes(key)) count++;
    else break;
  }
  return count;
}

function formatLastSeen(iso?: string) {
  if (!iso) return null;
  const d = new Date(iso);
  const now = new Date();
  const diffMs = now.getTime() - d.getTime();
  const diffMins = Math.floor(diffMs / 60000);
  const diffHours = Math.floor(diffMins / 60);
  const diffDays = Math.floor(diffHours / 24);
  if (diffMins < 1) return 'Just now';
  if (diffMins < 60) return `${diffMins}m ago`;
  if (diffHours < 24) return `${diffHours}h ago`;
  if (diffDays === 1) return 'Yesterday';
  if (diffDays < 7) return `${diffDays}d ago`;
  return d.toLocaleDateString('en-GB', { day: 'numeric', month: 'short' });
}

export default function Dashboard({ onNavigate }: DashboardProps) {
  const { profile, isPremium } = useAuth();
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [allTopics, setAllTopics] = useState<Topic[]>([]);
  const [progress, setProgress] = useState<ExtendedProgress[]>([]);
  const [quizAttempts, setQuizAttempts] = useState<QuizAttempt[]>([]);
  const [sectionCounts, setSectionCounts] = useState<TopicSectionCount[]>([]);
  const [loading, setLoading] = useState(true);
  const [streak, setStreak] = useState(0);

  useEffect(() => {
    if (!profile?.id) return;

    const staleSubjects = cacheGetStale<Subject[]>('subjects') || [];
    const staleTopics = cacheGetStale<Topic[]>('topics') || [];
    const staleProgress = cacheGetStale<ExtendedProgress[]>(`progress:${profile.id}`) || [];
    const staleAttempts = cacheGetStale<QuizAttempt[]>(`quiz_attempts:${profile.id}`) || [];
    const staleSections = cacheGetStale<TopicSectionCount[]>('section_counts') || [];

    if (staleSubjects.length > 0) {
      setSubjects(staleSubjects);
      setAllTopics(staleTopics);
      setProgress(staleProgress);
      setQuizAttempts(staleAttempts);
      setSectionCounts(staleSections);
      setStreak(computeStreak(staleProgress));
      setLoading(false);
    }

    loadData(profile.id);
  }, [profile?.id]);

  async function loadData(userId: string) {
    const cachedSubjects = cacheGet<Subject[]>('subjects', TTL.long);
    const cachedTopics = cacheGet<Topic[]>('topics', TTL.long);
    const cachedProgress = null;
    const cachedAttempts = cacheGet<QuizAttempt[]>(`quiz_attempts:${userId}`, TTL.short);
    const cachedSections = cacheGet<TopicSectionCount[]>('section_counts', TTL.long);

    const fetches: Promise<void>[] = [];

    if (!cachedSubjects) {
      fetches.push(
        supabase.from('subjects').select('*').order('order_index').limit(100).then(res => {
          const data = res.data || [];
          if (data.length > 0) cacheSet('subjects', data);
          setSubjects(data);
        })
      );
    } else {
      setSubjects(cachedSubjects);
    }

    if (!cachedTopics) {
      fetches.push(
        supabase.from('topics').select('*').order('order_index').limit(2000).then(res => {
          const data = res.data || [];
          if (data.length > 0) cacheSet('topics', data);
          setAllTopics(data);
        })
      );
    } else {
      setAllTopics(cachedTopics);
    }

    if (!cachedSections) {
      fetches.push(
        supabase.from('topic_sections').select('topic_id').limit(5000).then(res => {
          if (!res.data) return;
          const counts: Record<string, number> = {};
          for (const row of res.data) {
            counts[row.topic_id] = (counts[row.topic_id] || 0) + 1;
          }
          const data = Object.entries(counts).map(([topic_id, count]) => ({ topic_id, count }));
          cacheSet('section_counts', data);
          setSectionCounts(data);
        })
      );
    } else {
      setSectionCounts(cachedSections);
    }

    if (!cachedProgress) {
      fetches.push(
        supabase.from('user_progress').select('*').eq('user_id', userId).then(res => {
          const data = (res.data || []) as ExtendedProgress[];
          cacheSet(`progress:${userId}`, data);
          setProgress(data);
          setStreak(computeStreak(data));
        })
      );
    } else {
      setProgress(cachedProgress);
      setStreak(computeStreak(cachedProgress));
    }

    if (!cachedAttempts) {
      fetches.push(
        supabase.from('quiz_attempts').select('*').eq('user_id', userId).then(res => {
          const data = res.data || [];
          cacheSet(`quiz_attempts:${userId}`, data);
          setQuizAttempts(data);
        })
      );
    } else {
      setQuizAttempts(cachedAttempts);
    }

    await Promise.all(fetches);
    setLoading(false);
  }

  const sectionCountMap = useMemo(() => {
    const map: Record<string, number> = {};
    for (const s of sectionCounts) map[s.topic_id] = s.count;
    return map;
  }, [sectionCounts]);

  const progressMap = useMemo(() => {
    const map: Record<string, ExtendedProgress> = {};
    for (const p of progress) map[p.topic_id] = p;
    return map;
  }, [progress]);

  const topicsBySubject = useMemo(() => {
    const map: Record<string, Topic[]> = {};
    for (const t of allTopics) {
      if (!map[t.subject_id]) map[t.subject_id] = [];
      map[t.subject_id].push(t);
    }
    return map;
  }, [allTopics]);

  const getSectionCount = useCallback((topicId: string) => {
    return sectionCountMap[topicId] || 5;
  }, [sectionCountMap]);

  const getTopicReadingProgress = useCallback((topicId: string) => {
    const p = progressMap[topicId];
    if (!p) return 0;
    if (p.completed) return 100;
    return p.reading_progress_percent || 0;
  }, [progressMap]);

  const getTopicSectionsViewed = useCallback((topicId: string) => {
    return progressMap[topicId]?.sections_viewed?.length || 0;
  }, [progressMap]);

  const subjectProgressMap = useMemo(() => {
    const result: Record<string, {
      total: number;
      completed: number;
      inProgressTopic: Topic | undefined;
      inProgressEntry: ExtendedProgress | undefined;
      lastAccessed: string | undefined;
    }> = {};

    for (const subject of subjects) {
      const topics = topicsBySubject[subject.id] || [];
      const completed = topics.filter(t => progressMap[t.id]?.completed);

      const progressEntries = topics
        .map(t => progressMap[t.id])
        .filter(Boolean)
        .filter(p => p!.last_accessed) as ExtendedProgress[];

      const lastAccessed = progressEntries
        .sort((a, b) => new Date(b.last_accessed!).getTime() - new Date(a.last_accessed!).getTime())[0];

      const lastTopicForSubject = lastAccessed
        ? topics.find(t => t.id === lastAccessed.topic_id)
        : undefined;

      const inProgressTopic = topics.find(t => {
        const p = progressMap[t.id];
        return p && !p.completed && (p.reading_progress_percent || 0) > 0;
      }) || lastTopicForSubject;

      const inProgressEntry = inProgressTopic ? progressMap[inProgressTopic.id] : undefined;

      result[subject.id] = {
        total: topics.length,
        completed: completed.length,
        inProgressTopic,
        inProgressEntry,
        lastAccessed: lastAccessed?.last_accessed,
      };
    }
    return result;
  }, [subjects, topicsBySubject, progressMap]);

  const { lastTopic, lastSubjectId, lastTopicProgress } = useMemo(() => {
    if (!profile?.last_topic_id) return { lastTopic: null, lastSubjectId: null, lastTopicProgress: null };
    const topic = allTopics.find(t => t.id === profile.last_topic_id);
    if (!topic) return { lastTopic: null, lastSubjectId: null, lastTopicProgress: null };
    return {
      lastTopic: topic,
      lastSubjectId: topic.subject_id,
      lastTopicProgress: progressMap[profile.last_topic_id] || null,
    };
  }, [profile?.last_topic_id, allTopics, progressMap]);

  const freeSubjects = useMemo(() => subjects.filter(s => FREE_SUBJECTS.includes(s.name)), [subjects]);
  const premiumSubjects = useMemo(() => subjects.filter(s => !FREE_SUBJECTS.includes(s.name)), [subjects]);

  const freeTopics = useMemo(() => {
    return freeSubjects.flatMap(s => topicsBySubject[s.id] || []);
  }, [freeSubjects, topicsBySubject]);

  const totalCompleted = useMemo(() => {
    const accessibleTopics = isPremium ? allTopics : freeTopics;
    const accessibleTopicIds = new Set(accessibleTopics.map(t => t.id));
    return progress.filter(p => p.completed && accessibleTopicIds.has(p.topic_id)).length;
  }, [progress, freeTopics, allTopics, isPremium]);

  const totalTopics = isPremium ? allTopics.length : freeTopics.length;
  const totalQuizzes = quizAttempts.length;
  const avgScore = useMemo(() =>
    quizAttempts.length > 0
      ? Math.round(quizAttempts.reduce((sum, a) => sum + (a.score / a.total_questions * 100), 0) / quizAttempts.length)
      : 0,
    [quizAttempts]
  );

  const overallPct = totalTopics > 0 ? Math.round((totalCompleted / totalTopics) * 100) : 0;

  const hour = new Date().getHours();
  const greeting = hour < 12 ? 'Good morning' : hour < 17 ? 'Good afternoon' : 'Good evening';

  const lastTopicSectionCount = lastTopic ? getSectionCount(lastTopic.id) : 5;
  const lastTopicSectionsViewed = lastTopic ? getTopicSectionsViewed(lastTopic.id) : 0;
  const lastTopicReadingPct = lastTopic ? getTopicReadingProgress(lastTopic.id) : 0;
  const lastTopicIsComplete = lastTopicProgress?.completed || false;

  const premiumSubjectTopicCount = useMemo(() => {
    return premiumSubjects.reduce((sum, s) => sum + (topicsBySubject[s.id]?.length || 0), 0);
  }, [premiumSubjects, topicsBySubject]);

  if (loading && subjects.length === 0) return <DashboardSkeleton />;

  const statItems = [
    {
      icon: BookOpen, label: 'Topics Done', value: `${totalCompleted}`, sub: `of ${totalTopics}`,
      color: '#2563eb', bg: '#eff6ff', ring: '#2563eb', pct: overallPct,
      trend: overallPct > 0 ? `${overallPct}% complete` : 'Get started',
    },
    {
      icon: Target, label: 'Quizzes', value: String(totalQuizzes), sub: 'completed',
      color: '#16a34a', bg: '#f0fdf4', ring: '#16a34a', pct: Math.min(totalQuizzes * 5, 100),
      trend: totalQuizzes > 0 ? `${totalQuizzes} taken` : 'Take first quiz',
    },
    {
      icon: BarChart3, label: 'Avg Score', value: `${avgScore}%`, sub: 'accuracy',
      color: '#0d9488', bg: '#f0fdfa', ring: '#0d9488', pct: avgScore,
      trend: avgScore >= 70 ? 'Above target' : avgScore > 0 ? 'Keep practising' : 'No data yet',
    },
    {
      icon: Trophy, label: 'Progress', value: `${overallPct}%`, sub: 'of curriculum',
      color: '#d97706', bg: '#fffbeb', ring: '#d97706', pct: overallPct,
      trend: streak > 0 ? `${streak}-day streak` : 'Start studying',
    },
  ];

  return (
    <div className="space-y-5 xs:space-y-6 pb-8">

      <div className="flex items-start justify-between gap-3 flex-wrap pt-1">
        <div>
          <p className="text-slate-400 text-[10px] xs:text-xs font-semibold uppercase tracking-widest mb-1">
            {profile?.country || 'West Africa'} · WASSCE Student
          </p>
          <h1 className="text-xl xs:text-2xl font-black text-slate-900 leading-tight tracking-tight">
            {greeting},{' '}
            <span className="text-blue-600">{profile?.display_name?.split(' ')[0] || 'Student'}</span>
          </h1>
          <p className="text-slate-400 text-xs mt-1 hidden sm:block">
            {totalCompleted > 0
              ? `${totalCompleted} topic${totalCompleted !== 1 ? 's' : ''} completed · keep going!`
              : 'Start your WASSCE preparation today'}
          </p>
        </div>
        <div className="flex items-center gap-1.5 flex-wrap">
          {streak > 0 && (
            <div className={`flex items-center gap-1.5 px-2.5 py-1.5 rounded-full border text-xs font-bold shadow-sm ${
              streak >= 7
                ? 'bg-orange-50 border-orange-200/80 text-orange-700'
                : 'bg-amber-50 border-amber-200/80 text-amber-700'
            }`}>
              <Flame size={12} className={streak >= 7 ? 'text-orange-500' : 'text-amber-500'} />
              {streak}d streak
            </div>
          )}
          {isPremium && (
            <div className="flex items-center gap-1 px-2.5 py-1.5 rounded-full border text-xs font-bold shadow-sm"
              style={{ background: 'rgba(245,158,11,0.08)', borderColor: 'rgba(245,158,11,0.25)', color: '#92400e' }}>
              <Crown size={11} className="text-amber-500" />
              Premium
            </div>
          )}
          {!isPremium && overallPct >= 50 && (
            <div className="flex items-center gap-1.5 px-2.5 py-1.5 bg-amber-50 border border-amber-200/80 rounded-full shadow-sm">
              <Star size={11} className="text-amber-500 fill-amber-400" />
              <span className="text-[10px] xs:text-xs font-bold text-amber-700">Top Performer</span>
            </div>
          )}
        </div>
      </div>

      <div className="grid grid-cols-2 md:grid-cols-4 gap-2.5 xs:gap-3">
        {statItems.map(({ icon: Icon, label, value, sub, color, bg, ring, pct, trend }) => (
          <div
            key={label}
            className="bg-white rounded-2xl border border-slate-200/80 p-3.5 xs:p-4 transition-all duration-200 hover:-translate-y-0.5"
            style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04), 0 1px 2px rgba(0,0,0,0.04)' }}
          >
            <div className="flex items-start justify-between mb-2.5">
              <div className="w-8 h-8 rounded-xl flex items-center justify-center flex-shrink-0" style={{ background: bg }}>
                <Icon size={15} style={{ color }} />
              </div>
              <CircularProgress pct={pct} size={34} strokeWidth={3} color={ring} />
            </div>
            <p className="text-xl xs:text-2xl font-black text-slate-900 leading-none tracking-tight">{value}</p>
            <p className="text-[10px] text-slate-400 mt-0.5">{sub}</p>
            <p className="text-[10px] xs:text-[11px] font-semibold mt-1.5" style={{ color }}>{trend}</p>
          </div>
        ))}
      </div>

      {!isPremium && (
        <div
          className="relative overflow-hidden rounded-2xl p-5 text-white"
          style={{ background: 'linear-gradient(135deg, #1e293b 0%, #0f172a 100%)', boxShadow: '0 8px 32px rgba(0,0,0,0.2)' }}
        >
          <div className="absolute top-0 right-0 w-48 h-48 rounded-full pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(245,158,11,0.15), transparent)', transform: 'translate(30%, -30%)' }} />
          <div className="absolute bottom-0 left-0 w-32 h-32 rounded-full pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(245,158,11,0.08), transparent)', transform: 'translate(-30%, 30%)' }} />
          <div className="relative">
            <div className="flex items-center gap-2 mb-3">
              <div className="w-8 h-8 rounded-xl flex items-center justify-center" style={{ background: 'rgba(245,158,11,0.2)' }}>
                <Crown size={15} className="text-amber-400" />
              </div>
              <div>
                <p className="text-amber-400 text-xs font-black uppercase tracking-widest">You're on the Free Plan</p>
              </div>
            </div>

            <h3 className="font-black text-lg mb-1 leading-tight">
              You're missing {premiumSubjects.length > 0 ? Math.round((premiumSubjects.length / subjects.length) * 100) : 80}% of content
            </h3>
            <p className="text-slate-400 text-sm mb-4 leading-relaxed">
              Unlock {premiumSubjects.length} more subjects, Student Hub, Leaderboard, and full WASSCE exam practice.
            </p>

            <div className="grid grid-cols-2 gap-2 mb-4">
              {[
                { label: `${premiumSubjects.length} Premium Subjects`, icon: BookOpen },
                { label: `${premiumSubjectTopicCount}+ Locked Topics`, icon: Lock },
                { label: 'Student Hub Access', icon: Users },
                { label: 'Leaderboard & Rankings', icon: Trophy },
              ].map(({ label, icon: Icon }) => (
                <div key={label} className="flex items-center gap-2">
                  <div className="w-5 h-5 rounded-full flex items-center justify-center flex-shrink-0" style={{ background: 'rgba(245,158,11,0.15)' }}>
                    <Icon size={10} className="text-amber-400" />
                  </div>
                  <span className="text-xs text-slate-300 font-medium">{label}</span>
                </div>
              ))}
            </div>

            <div className="mb-4">
              <div className="flex items-center justify-between mb-1.5">
                <span className="text-slate-400 text-xs">Content unlocked</span>
                <span className="text-amber-400 text-xs font-black">{freeSubjects.length}/{subjects.length} subjects</span>
              </div>
              <div className="w-full bg-white/10 rounded-full h-2 overflow-hidden">
                <div
                  className="h-2 rounded-full"
                  style={{
                    width: `${subjects.length > 0 ? Math.round((freeSubjects.length / subjects.length) * 100) : 20}%`,
                    background: 'linear-gradient(90deg, #f59e0b, #fbbf24)',
                  }}
                />
              </div>
            </div>

            <button
              onClick={() => onNavigate('premium')}
              className="flex items-center justify-center gap-2 w-full py-3 rounded-xl font-black text-sm transition-all hover:scale-[1.01] active:scale-95"
              style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 4px 16px rgba(245,158,11,0.35)' }}
            >
              <Crown size={14} />
              Unlock Full Access — Premium
              <ChevronRight size={14} />
            </button>
          </div>
        </div>
      )}

      {lastTopic && (
        <div
          className="relative overflow-hidden rounded-2xl p-5 text-white"
          style={{ background: 'linear-gradient(135deg, #1d4ed8 0%, #1e40af 60%, #1e3a8a 100%)', boxShadow: '0 8px 24px rgba(29,78,216,0.25)' }}
        >
          <div className="absolute top-0 right-0 w-48 h-48 rounded-full pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(255,255,255,0.06), transparent)', transform: 'translate(30%, -30%)' }} />
          <div className="absolute bottom-0 left-0 w-32 h-32 rounded-full pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(255,255,255,0.04), transparent)', transform: 'translate(-30%, 30%)' }} />
          <div className="relative">
            <div className="flex items-center gap-2 mb-1.5">
              <div className="w-5 h-5 bg-white/15 rounded-full flex items-center justify-center">
                <Clock size={10} className="text-blue-100" />
              </div>
              <p className="text-blue-200 text-xs font-semibold uppercase tracking-wider">Continue where you left off</p>
            </div>
            <h3 className="font-black text-lg mb-0.5 leading-tight tracking-tight">{lastTopic.name}</h3>
            <p className="text-blue-300 text-sm mb-3">
              {subjects.find(s => s.id === lastSubjectId)?.name || 'Resume your study session'}
            </p>

            {!lastTopicIsComplete && (
              <div className="mb-4">
                <div className="flex items-center justify-between mb-1.5">
                  <span className="text-blue-200 text-xs flex items-center gap-1.5">
                    <BookMarked size={10} />
                    {lastTopicSectionsViewed > 0
                      ? `${lastTopicSectionsViewed} of ${lastTopicSectionCount} sections read`
                      : 'Not started yet'}
                  </span>
                  <span className="text-white text-xs font-bold bg-white/15 px-2 py-0.5 rounded-full">{lastTopicReadingPct}%</span>
                </div>
                <div className="w-full bg-white/10 rounded-full h-1.5 overflow-hidden">
                  <div
                    className="h-1.5 rounded-full transition-all duration-700"
                    style={{ width: `${lastTopicReadingPct}%`, background: 'linear-gradient(90deg, rgba(255,255,255,0.6), rgba(255,255,255,0.9))' }}
                  />
                </div>
              </div>
            )}

            {lastTopicIsComplete && (
              <p className="text-blue-200 text-xs mb-4 flex items-center gap-1.5">
                <CheckCircle size={12} className="text-green-300" /> Topic completed — great work!
              </p>
            )}

            <button
              onClick={() => onNavigate('topic', { topicId: lastTopic.id, subjectId: lastTopic.subject_id })}
              className="flex items-center gap-2 px-4 py-2.5 bg-white text-blue-700 rounded-xl font-bold text-sm hover:bg-blue-50 active:scale-95 transition-all"
              style={{ boxShadow: '0 2px 8px rgba(0,0,0,0.12)' }}
            >
              <Play size={13} className="fill-blue-700" />
              {lastTopicIsComplete ? 'Review Topic' : lastTopicSectionsViewed > 0 ? 'Continue Reading' : 'Start Topic'}
            </button>
          </div>
        </div>
      )}

      <div className="grid grid-cols-1 xs:grid-cols-3 gap-3 xs:gap-3.5">
        {[
          {
            label: 'Student Hub',
            desc: isPremium ? 'Ask questions, help peers' : 'Premium feature — upgrade to access',
            page: 'hub' as Page,
            gradient: isPremium ? 'linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%)' : 'linear-gradient(135deg, #94a3b8 0%, #64748b 100%)',
            shadow: isPremium ? 'rgba(37,99,235,0.3)' : 'rgba(0,0,0,0.1)',
            Icon: isPremium ? Users : Lock,
            locked: !isPremium,
          },
          {
            label: 'Leaderboard',
            desc: isPremium ? 'Rank across West Africa' : 'Premium feature — upgrade to access',
            page: 'leaderboard' as Page,
            gradient: isPremium ? 'linear-gradient(135deg, #f59e0b 0%, #f97316 100%)' : 'linear-gradient(135deg, #94a3b8 0%, #64748b 100%)',
            shadow: isPremium ? 'rgba(245,158,11,0.3)' : 'rgba(0,0,0,0.1)',
            Icon: isPremium ? Trophy : Lock,
            locked: !isPremium,
          },
          {
            label: 'All Subjects',
            desc: 'Browse all topics',
            page: 'subject' as Page,
            gradient: 'linear-gradient(135deg, #0d9488 0%, #059669 100%)',
            shadow: 'rgba(13,148,136,0.3)',
            Icon: BookOpen,
            locked: false,
          },
        ].map(({ label, desc, page, gradient, shadow, Icon, locked }) => (
          <button
            key={label}
            onClick={() => locked ? onNavigate('premium') : onNavigate(page)}
            className="group relative overflow-hidden rounded-2xl p-4 xs:p-5 text-left transition-all duration-200 hover:-translate-y-0.5"
            style={{ background: gradient, boxShadow: `0 4px 16px ${shadow}` }}
          >
            <div className="absolute top-0 right-0 w-24 h-24 rounded-full pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(255,255,255,0.12), transparent)', transform: 'translate(30%, -30%)' }} />
            <div className="relative">
              <div className="w-9 h-9 bg-white/20 rounded-xl flex items-center justify-center mb-3">
                <Icon size={18} className="text-white" />
              </div>
              <p className="font-black text-white text-sm mb-0.5 tracking-tight">{label}</p>
              <p className="text-xs text-white/70 leading-relaxed">{desc}</p>
              <div className="flex items-center gap-1 mt-3 text-white/80 text-xs font-semibold">
                <span>{locked ? 'Upgrade' : 'Open'}</span>
                {locked ? <Crown size={10} /> : <Zap size={10} />}
              </div>
            </div>
          </button>
        ))}
      </div>

      <div>
        <div className="flex items-center justify-between mb-3 xs:mb-4">
          <div>
            <h2 className="text-base xs:text-lg font-black text-slate-900 tracking-tight">Free Subjects</h2>
            <p className="text-[10px] xs:text-xs text-slate-400 mt-0.5">{freeSubjects.length} subjects · full access included</p>
          </div>
          <button
            onClick={() => onNavigate('subject')}
            className="flex items-center gap-1 text-blue-600 text-xs xs:text-sm font-bold hover:text-blue-700 transition-colors px-2 py-2 min-h-[44px] rounded-xl hover:bg-blue-50"
          >
            View All <ChevronRight size={13} />
          </button>
        </div>

        <div className="grid grid-cols-1 xs:grid-cols-2 lg:grid-cols-3 gap-3 xs:gap-3.5">
          {freeSubjects.map(subject => {
            const prog = subjectProgressMap[subject.id] || { total: 0, completed: 0, inProgressTopic: undefined, inProgressEntry: undefined, lastAccessed: undefined };
            const isWeak = profile?.weak_subjects?.includes(subject.name);
            const pct = prog.total > 0 ? Math.round((prog.completed / prog.total) * 100) : 0;
            const lastSeen = formatLastSeen(prog.lastAccessed);
            const barColor = SUBJECT_BAR_COLORS[subject.name] || 'bg-blue-500';
            const textColor = SUBJECT_TEXT_COLORS[subject.name] || 'text-blue-600';
            const lightColor = SUBJECT_LIGHT_COLORS[subject.name] || 'bg-blue-50 border-blue-100';
            const isComplete = pct === 100;

            const inProgTopicReadingPct = prog.inProgressTopic
              ? getTopicReadingProgress(prog.inProgressTopic.id)
              : 0;
            const inProgSectionsViewed = prog.inProgressTopic
              ? getTopicSectionsViewed(prog.inProgressTopic.id)
              : 0;
            const inProgSectionCount = prog.inProgressTopic
              ? getSectionCount(prog.inProgressTopic.id)
              : 5;

            return (
              <div
                key={subject.id}
                className="group bg-white border border-slate-200/80 rounded-2xl overflow-hidden transition-all duration-200 hover:-translate-y-0.5"
                style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
              >
                <button
                  onClick={() => onNavigate('subject', { subjectId: subject.id })}
                  className="w-full p-4 xs:p-5 text-left"
                >
                  <div className="flex items-start justify-between mb-3.5">
                    <div
                      className={`w-11 h-11 rounded-xl bg-gradient-to-br ${SUBJECT_COLORS[subject.name] || 'from-blue-500 to-blue-600'} flex items-center justify-center flex-shrink-0`}
                      style={{ boxShadow: '0 4px 12px rgba(0,0,0,0.12)' }}
                    >
                      {(() => { const Icon = SUBJECT_ICONS[subject.name] || BookOpen; return <Icon size={20} className="text-white" />; })()}
                    </div>
                    <div className="flex flex-col items-end gap-1">
                      {isWeak && (
                        <span className="text-[10px] px-2 py-0.5 bg-red-50 text-red-500 border border-red-100 rounded-full font-semibold">Needs Work</span>
                      )}
                      {isComplete && (
                        <span className="text-[10px] px-2 py-0.5 bg-green-50 text-green-700 border border-green-200 rounded-full font-bold flex items-center gap-1">
                          <CheckCircle size={9} /> Done
                        </span>
                      )}
                      {lastSeen && !isComplete && (
                        <span className="text-[10px] text-slate-400 flex items-center gap-1 bg-slate-50 px-2 py-0.5 rounded-full border border-slate-100">
                          <Clock size={9} /> {lastSeen}
                        </span>
                      )}
                    </div>
                  </div>

                  <h3 className="font-bold text-slate-800 mb-2.5 text-sm leading-tight">{subject.name}</h3>

                  <div className="mb-3">
                    <div className="flex items-center justify-between mb-1.5">
                      <span className="text-[11px] text-slate-400 font-medium">{prog.completed}/{prog.total} topics</span>
                      <span className={`text-[11px] font-black ${pct === 100 ? 'text-green-600' : pct > 0 ? textColor : 'text-slate-300'}`}>{pct}%</span>
                    </div>
                    <div className="w-full bg-slate-100 rounded-full h-1.5 overflow-hidden">
                      <div
                        className={`h-1.5 rounded-full transition-all duration-700 ${isComplete ? 'bg-gradient-to-r from-green-400 to-green-500' : barColor}`}
                        style={{ width: `${pct}%` }}
                      />
                    </div>
                  </div>

                  {prog.inProgressTopic && !isComplete && (
                    <div className={`${lightColor} rounded-xl px-3 py-2 border`}>
                      <p className="text-[11px] text-slate-500 truncate mb-1.5">
                        <span className="text-slate-400">Reading: </span>
                        <span className="font-semibold text-slate-700">{prog.inProgressTopic.name}</span>
                      </p>
                      <div className="flex items-center gap-2">
                        <div className="flex-1 bg-white/60 rounded-full h-1 overflow-hidden">
                          <div
                            className={`h-1 rounded-full transition-all duration-500 ${barColor}`}
                            style={{ width: `${inProgTopicReadingPct}%` }}
                          />
                        </div>
                        <span className={`text-[10px] font-bold ${textColor} flex-shrink-0`}>
                          {inProgSectionsViewed > 0
                            ? `${inProgSectionsViewed}/${inProgSectionCount}`
                            : '0%'}
                        </span>
                      </div>
                    </div>
                  )}

                  {!prog.inProgressTopic && !isComplete && pct === 0 && (
                    <div className="flex items-center gap-1.5 text-slate-300">
                      <div className="w-1.5 h-1.5 bg-slate-200 rounded-full" />
                      <p className="text-[11px] text-slate-400">Not started yet</p>
                    </div>
                  )}
                </button>

                {prog.inProgressTopic && !isComplete && (
                  <div className="border-t border-slate-100 px-4 xs:px-5 py-2.5 bg-slate-50/50">
                    <button
                      onClick={() => onNavigate('topic', {
                        topicId: prog.inProgressTopic!.id,
                        subjectId: subject.id,
                        subjectName: subject.name,
                      })}
                      className={`flex items-center gap-1.5 text-xs font-bold transition-all ${textColor} hover:gap-2.5`}
                    >
                      <ArrowRight size={11} />
                      {inProgSectionsViewed > 0
                        ? `Resume — Section ${inProgSectionsViewed + 1} of ${inProgSectionCount}`
                        : `Start: ${prog.inProgressTopic.name}`}
                    </button>
                  </div>
                )}

                {isComplete && (
                  <div className="border-t border-green-100 px-4 xs:px-5 py-2.5 bg-green-50/50">
                    <button
                      onClick={() => onNavigate('subject', { subjectId: subject.id })}
                      className="flex items-center gap-1.5 text-xs font-bold text-green-600 hover:gap-2.5 transition-all"
                    >
                      <Trophy size={11} /> All complete — take an exam
                    </button>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      </div>

      {!isPremium && premiumSubjects.length > 0 && (
        <div>
          <div className="flex items-center justify-between mb-3 xs:mb-4">
            <div>
              <h2 className="text-base xs:text-lg font-black text-slate-900 tracking-tight">Premium Subjects</h2>
              <p className="text-[10px] xs:text-xs text-slate-400 mt-0.5">Upgrade to unlock {premiumSubjects.length} subjects</p>
            </div>
            <button
              onClick={() => onNavigate('premium')}
              className="flex items-center gap-1 text-amber-600 text-xs xs:text-sm font-bold hover:text-amber-700 transition-colors px-2 py-2 min-h-[44px] rounded-xl hover:bg-amber-50"
            >
              Unlock <Crown size={13} />
            </button>
          </div>

          <div className="grid grid-cols-1 xs:grid-cols-2 lg:grid-cols-3 gap-3 xs:gap-3.5">
            {premiumSubjects.map(subject => {
              const prog = subjectProgressMap[subject.id] || { total: 0, completed: 0 };
              return (
                <button
                  key={subject.id}
                  onClick={() => onNavigate('premium')}
                  className="group bg-white border border-slate-200/80 rounded-2xl overflow-hidden transition-all duration-200 hover:-translate-y-0.5 relative text-left"
                  style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
                >
                  <div className="p-4 xs:p-5">
                    <div className="flex items-start justify-between mb-3.5">
                      <div
                        className={`w-11 h-11 rounded-xl bg-gradient-to-br ${SUBJECT_COLORS[subject.name] || 'from-slate-400 to-slate-500'} flex items-center justify-center flex-shrink-0 opacity-40`}
                        style={{ boxShadow: '0 4px 12px rgba(0,0,0,0.08)' }}
                      >
                        {(() => { const Icon = SUBJECT_ICONS[subject.name] || BookOpen; return <Icon size={20} className="text-white" />; })()}
                      </div>
                      <div className="w-8 h-8 rounded-xl bg-amber-50 border border-amber-200 flex items-center justify-center flex-shrink-0">
                        <Lock size={13} className="text-amber-500" />
                      </div>
                    </div>

                    <h3 className="font-bold text-slate-500 mb-2 text-sm leading-tight">{subject.name}</h3>

                    <div className="mb-3">
                      <div className="flex items-center justify-between mb-1.5">
                        <span className="text-[11px] text-slate-300 font-medium">{prog.total} topics</span>
                        <span className="text-[11px] font-black text-slate-300">Locked</span>
                      </div>
                      <div className="w-full bg-slate-100 rounded-full h-1.5 overflow-hidden">
                        <div className="h-1.5 rounded-full bg-slate-200" style={{ width: '100%' }} />
                      </div>
                    </div>

                    <div className="flex items-center gap-1.5 text-amber-600">
                      <Crown size={11} />
                      <span className="text-[11px] font-black">Premium Required</span>
                    </div>
                  </div>
                  <div className="border-t border-amber-100 px-4 xs:px-5 py-2.5 bg-amber-50/50">
                    <span className="flex items-center gap-1.5 text-xs font-bold text-amber-600">
                      <ChevronRight size={11} /> Upgrade to unlock
                    </span>
                  </div>
                </button>
              );
            })}
          </div>

          <button
            onClick={() => onNavigate('premium')}
            className="mt-4 w-full py-4 rounded-2xl font-black text-sm flex items-center justify-center gap-2.5 transition-all hover:scale-[1.01] active:scale-95"
            style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', color: 'white', boxShadow: '0 4px 16px rgba(245,158,11,0.3)' }}
          >
            <Crown size={16} />
            Unlock Full Access — Upgrade to Premium
            <ChevronRight size={14} />
          </button>
        </div>
      )}

      {isPremium && (
        <div>
          <div className="flex items-center justify-between mb-3 xs:mb-4">
            <div>
              <h2 className="text-base xs:text-lg font-black text-slate-900 tracking-tight">All Subjects</h2>
              <p className="text-[10px] xs:text-xs text-slate-400 mt-0.5">{subjects.length} subjects · {totalCompleted} topics done</p>
            </div>
            <button
              onClick={() => onNavigate('subject')}
              className="flex items-center gap-1 text-blue-600 text-xs xs:text-sm font-bold hover:text-blue-700 transition-colors px-2 py-2 min-h-[44px] rounded-xl hover:bg-blue-50"
            >
              View All <ChevronRight size={13} />
            </button>
          </div>
          <div className="grid grid-cols-1 xs:grid-cols-2 lg:grid-cols-3 gap-3 xs:gap-3.5">
            {subjects.map(subject => {
              const prog = subjectProgressMap[subject.id] || { total: 0, completed: 0, inProgressTopic: undefined, inProgressEntry: undefined, lastAccessed: undefined };
              const isWeak = profile?.weak_subjects?.includes(subject.name);
              const pct = prog.total > 0 ? Math.round((prog.completed / prog.total) * 100) : 0;
              const lastSeen = formatLastSeen(prog.lastAccessed);
              const barColor = SUBJECT_BAR_COLORS[subject.name] || 'bg-blue-500';
              const textColor = SUBJECT_TEXT_COLORS[subject.name] || 'text-blue-600';
              const lightColor = SUBJECT_LIGHT_COLORS[subject.name] || 'bg-blue-50 border-blue-100';
              const isComplete = pct === 100;
              const inProgTopicReadingPct = prog.inProgressTopic ? getTopicReadingProgress(prog.inProgressTopic.id) : 0;
              const inProgSectionsViewed = prog.inProgressTopic ? getTopicSectionsViewed(prog.inProgressTopic.id) : 0;
              const inProgSectionCount = prog.inProgressTopic ? getSectionCount(prog.inProgressTopic.id) : 5;

              return (
                <div key={subject.id} className="group bg-white border border-slate-200/80 rounded-2xl overflow-hidden transition-all duration-200 hover:-translate-y-0.5" style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}>
                  <button onClick={() => onNavigate('subject', { subjectId: subject.id })} className="w-full p-4 xs:p-5 text-left">
                    <div className="flex items-start justify-between mb-3.5">
                      <div className={`w-11 h-11 rounded-xl bg-gradient-to-br ${SUBJECT_COLORS[subject.name] || 'from-blue-500 to-blue-600'} flex items-center justify-center flex-shrink-0`} style={{ boxShadow: '0 4px 12px rgba(0,0,0,0.12)' }}>
                        {(() => { const Icon = SUBJECT_ICONS[subject.name] || BookOpen; return <Icon size={20} className="text-white" />; })()}
                      </div>
                      <div className="flex flex-col items-end gap-1">
                        {isWeak && <span className="text-[10px] px-2 py-0.5 bg-red-50 text-red-500 border border-red-100 rounded-full font-semibold">Needs Work</span>}
                        {isComplete && <span className="text-[10px] px-2 py-0.5 bg-green-50 text-green-700 border border-green-200 rounded-full font-bold flex items-center gap-1"><CheckCircle size={9} /> Done</span>}
                        {lastSeen && !isComplete && <span className="text-[10px] text-slate-400 flex items-center gap-1 bg-slate-50 px-2 py-0.5 rounded-full border border-slate-100"><Clock size={9} /> {lastSeen}</span>}
                      </div>
                    </div>
                    <h3 className="font-bold text-slate-800 mb-2.5 text-sm leading-tight">{subject.name}</h3>
                    <div className="mb-3">
                      <div className="flex items-center justify-between mb-1.5">
                        <span className="text-[11px] text-slate-400 font-medium">{prog.completed}/{prog.total} topics</span>
                        <span className={`text-[11px] font-black ${pct === 100 ? 'text-green-600' : pct > 0 ? textColor : 'text-slate-300'}`}>{pct}%</span>
                      </div>
                      <div className="w-full bg-slate-100 rounded-full h-1.5 overflow-hidden">
                        <div className={`h-1.5 rounded-full transition-all duration-700 ${isComplete ? 'bg-gradient-to-r from-green-400 to-green-500' : barColor}`} style={{ width: `${pct}%` }} />
                      </div>
                    </div>
                    {prog.inProgressTopic && !isComplete && (
                      <div className={`${lightColor} rounded-xl px-3 py-2 border`}>
                        <p className="text-[11px] text-slate-500 truncate mb-1.5"><span className="text-slate-400">Reading: </span><span className="font-semibold text-slate-700">{prog.inProgressTopic.name}</span></p>
                        <div className="flex items-center gap-2">
                          <div className="flex-1 bg-white/60 rounded-full h-1 overflow-hidden"><div className={`h-1 rounded-full transition-all duration-500 ${barColor}`} style={{ width: `${inProgTopicReadingPct}%` }} /></div>
                          <span className={`text-[10px] font-bold ${textColor} flex-shrink-0`}>{inProgSectionsViewed > 0 ? `${inProgSectionsViewed}/${inProgSectionCount}` : '0%'}</span>
                        </div>
                      </div>
                    )}
                    {!prog.inProgressTopic && !isComplete && pct === 0 && (
                      <div className="flex items-center gap-1.5 text-slate-300"><div className="w-1.5 h-1.5 bg-slate-200 rounded-full" /><p className="text-[11px] text-slate-400">Not started yet</p></div>
                    )}
                  </button>
                  {prog.inProgressTopic && !isComplete && (
                    <div className="border-t border-slate-100 px-4 xs:px-5 py-2.5 bg-slate-50/50">
                      <button onClick={() => onNavigate('topic', { topicId: prog.inProgressTopic!.id, subjectId: subject.id, subjectName: subject.name })} className={`flex items-center gap-1.5 text-xs font-bold transition-all ${textColor} hover:gap-2.5`}>
                        <ArrowRight size={11} />
                        {inProgSectionsViewed > 0 ? `Resume — Section ${inProgSectionsViewed + 1} of ${inProgSectionCount}` : `Start: ${prog.inProgressTopic.name}`}
                      </button>
                    </div>
                  )}
                  {isComplete && (
                    <div className="border-t border-green-100 px-4 xs:px-5 py-2.5 bg-green-50/50">
                      <button onClick={() => onNavigate('subject', { subjectId: subject.id })} className="flex items-center gap-1.5 text-xs font-bold text-green-600 hover:gap-2.5 transition-all">
                        <Trophy size={11} /> All complete — take an exam
                      </button>
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        </div>
      )}

      <DashboardAppBanner />
    </div>
  );
}

function DashboardAppBanner() {
  const { isAndroid, isInstalled, canInstall, install } = usePWAInstall();
  const [showModal, setShowModal] = useState(false);
  const [showSuccess, setShowSuccess] = useState(false);
  const [installing, setInstalling] = useState(false);
  const [installed, setInstalled] = useState(false);
  const APK_URL = 'https://wasccescience.com/download/wasccescience.apk';

  if (isInstalled || installed || !canInstall) return null;

  const handleInstall = async () => {
    setInstalling(true);
    const result = await install();
    setInstalling(false);
    if (result === 'installed') {
      setInstalled(true);
      setShowSuccess(true);
    }
  };

  if (isAndroid) {
    return (
      <>
        <div
          className="relative overflow-hidden rounded-2xl p-5 flex items-center gap-4"
          style={{ background: 'linear-gradient(135deg, #0f172a 0%, #1e3a5f 100%)', border: '1px solid rgba(37,99,235,0.2)', boxShadow: '0 4px 24px rgba(37,99,235,0.12)' }}
        >
          <div className="absolute top-0 right-0 w-48 h-48 pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(37,99,235,0.15), transparent 70%)', transform: 'translate(20%, -20%)' }} />
          <div className="w-12 h-12 rounded-2xl flex items-center justify-center flex-shrink-0" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 14px rgba(37,99,235,0.4)' }}>
            <Smartphone size={22} className="text-white" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-white font-black text-sm leading-tight">Install the App</p>
            <p className="text-slate-400 text-xs mt-0.5 leading-snug">Faster · Offline access · Native feel</p>
          </div>
          <button
            onClick={handleInstall}
            disabled={installing}
            className="flex-shrink-0 flex items-center gap-1.5 px-4 py-2.5 rounded-xl text-white text-sm font-black transition-all active:scale-95 disabled:opacity-60"
            style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 12px rgba(37,99,235,0.35)' }}
          >
            {installing ? <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" /> : <Download size={14} />}
            {installing ? '...' : 'Install'}
          </button>
        </div>
        <div className="mt-2">
          <button onClick={() => setShowModal(true)} className="text-slate-400 text-xs hover:text-slate-300 transition-colors underline underline-offset-2">
            Download APK instead
          </button>
        </div>
        {showModal && (
          <div className="fixed inset-0 z-[60] flex items-end sm:items-center justify-center p-4" style={{ background: 'rgba(0,0,0,0.75)', backdropFilter: 'blur(6px)' }} onClick={() => setShowModal(false)}>
            <div className="w-full max-w-sm overflow-hidden rounded-3xl" style={{ background: 'linear-gradient(160deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }} onClick={e => e.stopPropagation()}>
              <div className="px-5 pt-6 pb-4 border-b border-white/[0.06]">
                <p className="text-white font-black text-lg">WASCCEScience Android APK</p>
                <p className="text-slate-400 text-sm mt-1">Faster · Offline · Native experience</p>
              </div>
              <div className="px-5 py-5 space-y-3">
                {['Download the APK below', 'Open your Downloads folder', 'Tap to install — allow unknown sources if asked', 'Launch and enjoy the native experience!'].map((s, i) => (
                  <div key={i} className="flex items-start gap-3">
                    <div className="w-6 h-6 rounded-full flex items-center justify-center flex-shrink-0 mt-0.5 text-xs font-black text-blue-400" style={{ background: 'rgba(37,99,235,0.15)', border: '1px solid rgba(37,99,235,0.3)' }}>{i + 1}</div>
                    <p className="text-slate-300 text-sm leading-relaxed">{s}</p>
                  </div>
                ))}
                <button onClick={() => { window.open(APK_URL, '_blank', 'noopener,noreferrer'); setShowModal(false); }} className="w-full flex items-center justify-center gap-2 py-3.5 rounded-xl text-white font-black text-sm mt-2 active:scale-[0.98] transition-all" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 20px rgba(37,99,235,0.4)' }}>
                  <Download size={16} />
                  Download APK — Free
                </button>
                <button onClick={() => setShowModal(false)} className="w-full py-2.5 rounded-xl text-slate-400 text-sm font-semibold hover:text-white transition-all">Cancel</button>
              </div>
            </div>
          </div>
        )}
        {showSuccess && (
          <div className="fixed inset-0 z-[60] flex items-center justify-center p-4" style={{ background: 'rgba(0,0,0,0.75)', backdropFilter: 'blur(6px)' }} onClick={() => setShowSuccess(false)}>
            <div className="w-full max-w-sm overflow-hidden rounded-3xl shadow-2xl text-center" style={{ background: 'linear-gradient(160deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }} onClick={e => e.stopPropagation()}>
              <div className="px-6 pt-8 pb-6">
                <div className="w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-5 shadow-xl" style={{ background: 'linear-gradient(135deg, #16a34a, #15803d)', boxShadow: '0 8px 32px rgba(22,163,74,0.4)' }}>
                  <CheckCircle size={38} className="text-white" />
                </div>
                <h2 className="text-white font-black text-xl leading-tight mb-2">App Installed!</h2>
                <p className="text-slate-400 text-sm leading-relaxed mb-6">WASCCEScience has been added to your device. Open it from your home screen and study offline.</p>
                <button onClick={() => setShowSuccess(false)} className="w-full px-4 py-3 rounded-xl text-white font-black text-sm transition-all active:scale-[0.98]" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.3)' }}>Got it</button>
              </div>
            </div>
          </div>
        )}
      </>
    );
  }

  return (
    <>
      <div
        className="relative overflow-hidden rounded-2xl p-5 flex items-center gap-4"
        style={{ background: 'linear-gradient(135deg, #0f172a 0%, #1e3a5f 100%)', border: '1px solid rgba(37,99,235,0.2)', boxShadow: '0 4px 24px rgba(37,99,235,0.12)' }}
      >
        <div className="absolute top-0 right-0 w-48 h-48 pointer-events-none" style={{ background: 'radial-gradient(circle, rgba(37,99,235,0.15), transparent 70%)', transform: 'translate(20%, -20%)' }} />
        <div className="w-12 h-12 rounded-2xl flex items-center justify-center flex-shrink-0" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 14px rgba(37,99,235,0.4)' }}>
          <Smartphone size={22} className="text-white" />
        </div>
        <div className="flex-1 min-w-0">
          <p className="text-white font-black text-sm leading-tight">Install the App</p>
          <p className="text-slate-400 text-xs mt-0.5 leading-snug">Offline access · Faster loading · No browser bar</p>
        </div>
        <button
          onClick={handleInstall}
          disabled={installing}
          className="flex-shrink-0 flex items-center gap-1.5 px-4 py-2.5 rounded-xl text-white text-sm font-black transition-all active:scale-95 disabled:opacity-60"
          style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 12px rgba(37,99,235,0.35)' }}
        >
          {installing ? <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" /> : <Download size={14} />}
          {installing ? '...' : 'Install'}
        </button>
      </div>
      {showSuccess && (
        <div className="fixed inset-0 z-[60] flex items-center justify-center p-4" style={{ background: 'rgba(0,0,0,0.75)', backdropFilter: 'blur(6px)' }} onClick={() => setShowSuccess(false)}>
          <div className="w-full max-w-sm overflow-hidden rounded-3xl shadow-2xl text-center" style={{ background: 'linear-gradient(160deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }} onClick={e => e.stopPropagation()}>
            <div className="px-6 pt-8 pb-6">
              <div className="w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-5 shadow-xl" style={{ background: 'linear-gradient(135deg, #16a34a, #15803d)', boxShadow: '0 8px 32px rgba(22,163,74,0.4)' }}>
                <CheckCircle size={38} className="text-white" />
              </div>
              <h2 className="text-white font-black text-xl leading-tight mb-2">App Installed!</h2>
              <p className="text-slate-400 text-sm leading-relaxed mb-6">WASCCEScience has been added to your device. Open it from your home screen and study offline.</p>
              <button onClick={() => setShowSuccess(false)} className="w-full px-4 py-3 rounded-xl text-white font-black text-sm transition-all active:scale-[0.98]" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.3)' }}>Got it</button>
            </div>
          </div>
        </div>
      )}
    </>
  );
}
