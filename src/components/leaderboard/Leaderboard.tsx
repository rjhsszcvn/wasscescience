import { useEffect, useState, useCallback } from 'react';
import { Trophy, Medal, Crown, TrendingUp, TrendingDown, Minus, Star, Zap, RefreshCw, Lock } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Page } from '../../lib/types';
import { LeaderboardSkeleton } from '../ui/Skeleton';
import { cacheGet, cacheSet, cacheGetStale, TTL } from '../../lib/cache';

interface LeaderboardProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

interface LeaderEntry {
  user_id: string;
  display_name: string;
  avatar_url: string | null;
  country: string;
  total_score: number;
  exams_taken: number;
  avg_pct: number;
  rankChange?: number;
}

const AVATAR_GRADIENTS = [
  { bg: 'linear-gradient(135deg, #0ea5e9, #0369a1)', shadow: 'rgba(14,165,233,0.4)' },
  { bg: 'linear-gradient(135deg, #10b981, #047857)', shadow: 'rgba(16,185,129,0.4)' },
  { bg: 'linear-gradient(135deg, #f59e0b, #b45309)', shadow: 'rgba(245,158,11,0.4)' },
  { bg: 'linear-gradient(135deg, #f43f5e, #be123c)', shadow: 'rgba(244,63,94,0.4)' },
  { bg: 'linear-gradient(135deg, #06b6d4, #0e7490)', shadow: 'rgba(6,182,212,0.4)' },
  { bg: 'linear-gradient(135deg, #8b5cf6, #6d28d9)', shadow: 'rgba(139,92,246,0.4)' },
  { bg: 'linear-gradient(135deg, #ec4899, #9d174d)', shadow: 'rgba(236,72,153,0.4)' },
  { bg: 'linear-gradient(135deg, #14b8a6, #0f766e)', shadow: 'rgba(20,184,166,0.4)' },
  { bg: 'linear-gradient(135deg, #f97316, #c2410c)', shadow: 'rgba(249,115,22,0.4)' },
  { bg: 'linear-gradient(135deg, #6366f1, #4338ca)', shadow: 'rgba(99,102,241,0.4)' },
];

function getAvatarGradient(name: string) {
  let hash = 0;
  for (let i = 0; i < name.length; i++) {
    hash = name.charCodeAt(i) + ((hash << 5) - hash);
  }
  return AVATAR_GRADIENTS[Math.abs(hash) % AVATAR_GRADIENTS.length];
}

function Avatar({ name, avatarUrl, size = 'md', ring }: { name: string; avatarUrl: string | null; size?: 'sm' | 'md' | 'lg'; ring?: string }) {
  const [imgError, setImgError] = useState(false);
  const initial = name?.[0]?.toUpperCase() || '?';

  const sizeClasses = {
    sm: 'w-8 h-8 text-xs',
    md: 'w-10 h-10 text-sm',
    lg: 'w-14 h-14 text-xl',
  };

  const baseClass = `rounded-full flex items-center justify-center font-bold flex-shrink-0 overflow-hidden ${sizeClasses[size]} ${ring || ''}`;

  if (avatarUrl && !imgError) {
    return (
      <div className={baseClass}>
        <img
          src={avatarUrl}
          alt={name}
          className="w-full h-full object-cover"
          onError={() => setImgError(true)}
        />
      </div>
    );
  }

  const gradient = getAvatarGradient(name || '?');

  return (
    <div
      className={`text-white ${baseClass}`}
      style={{ background: gradient.bg, boxShadow: `0 2px 8px ${gradient.shadow}` }}
    >
      {initial}
    </div>
  );
}

function RankBadge({ change }: { change?: number }) {
  if (change === undefined || change === 0) return <Minus size={11} className="text-slate-400" />;
  if (change > 0) return (
    <span className="flex items-center gap-0.5 text-[10px] font-bold text-emerald-600">
      <TrendingUp size={11} /> +{change}
    </span>
  );
  return (
    <span className="flex items-center gap-0.5 text-[10px] font-bold text-red-500">
      <TrendingDown size={11} /> {change}
    </span>
  );
}

function ScoreBadge({ pct }: { pct: number }) {
  if (pct >= 80) return <span className="inline-flex items-center gap-0.5 text-[10px] font-bold px-1.5 py-0.5 bg-emerald-100 text-emerald-700 rounded-full"><Star size={8} className="fill-emerald-500" /> Elite</span>;
  if (pct >= 60) return <span className="inline-flex items-center gap-0.5 text-[10px] font-bold px-1.5 py-0.5 bg-blue-100 text-blue-700 rounded-full"><Zap size={8} /> Strong</span>;
  return null;
}

function PremiumGateLeaderboard({ onNavigate }: { onNavigate: (page: Page, data?: Record<string, unknown>) => void }) {
  return (
    <div className="flex flex-col items-center justify-center min-h-[60vh] px-4 text-center">
      <div className="w-20 h-20 rounded-3xl flex items-center justify-center mb-6" style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 8px 32px rgba(245,158,11,0.3)' }}>
        <Trophy size={36} className="text-white" />
      </div>
      <div className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full border mb-4 text-xs font-bold" style={{ background: 'rgba(245,158,11,0.08)', borderColor: 'rgba(245,158,11,0.25)', color: '#b45309' }}>
        <Lock size={10} /> Premium Feature
      </div>
      <h2 className="text-2xl font-black text-slate-900 mb-3 leading-tight">Leaderboard</h2>
      <p className="text-slate-500 text-sm mb-6 leading-relaxed max-w-xs">
        See how you rank against the best WASSCE students across West Africa. Upgrade to compete, earn badges, and climb the ranks.
      </p>
      <button
        onClick={() => onNavigate('premium')}
        className="flex items-center gap-2 px-6 py-3.5 rounded-2xl font-black text-sm text-white transition-all hover:scale-[1.02] active:scale-95"
        style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 4px 16px rgba(245,158,11,0.3)' }}
      >
        <Crown size={15} /> Unlock Full Access — Premium
      </button>
    </div>
  );
}

export default function Leaderboard({ onNavigate: _onNavigate }: LeaderboardProps) {
  const { profile, isPremium } = useAuth();

  if (!isPremium) return <PremiumGateLeaderboard onNavigate={_onNavigate} />;
  const cacheKey = profile ? `leaderboard_v2:${profile.country}` : '';
  const [leaders, setLeaders] = useState<LeaderEntry[]>(() =>
    cacheKey ? (cacheGetStale<LeaderEntry[]>(cacheKey) || []) : []
  );
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [animateIn, setAnimateIn] = useState(false);

  useEffect(() => {
    loadLeaderboard(false);
  }, [profile?.id]);

  const handleRefresh = useCallback(() => {
    if (cacheKey) cacheSet(cacheKey, null as unknown as LeaderEntry[]);
    setAnimateIn(false);
    loadLeaderboard(true);
  }, [cacheKey]);

  async function loadLeaderboard(forceRefresh = false) {
    if (!profile) return;

    if (!forceRefresh) {
      const cached = cacheGet<LeaderEntry[]>(cacheKey, TTL.medium);
      if (cached) {
        setLeaders(cached);
        setLoading(false);
        setTimeout(() => setAnimateIn(true), 50);
        return;
      }
    }

    const stale = cacheGetStale<LeaderEntry[]>(cacheKey);
    if (stale && !forceRefresh) {
      setLoading(false);
    }

    if (forceRefresh) setRefreshing(true);

    const { data: sessionData } = await supabase
      .from('exam_sessions')
      .select('user_id, score, total_questions')
      .eq('country', profile.country);

    if (!sessionData || sessionData.length === 0) { setLoading(false); setRefreshing(false); return; }

    const userMap: Record<string, { scores: number[]; totals: number[] }> = {};
    for (const row of sessionData) {
      if (!userMap[row.user_id]) userMap[row.user_id] = { scores: [], totals: [] };
      userMap[row.user_id].scores.push(row.score);
      userMap[row.user_id].totals.push(row.total_questions);
    }

    const profileIds = Object.keys(userMap);
    const { data: profileData } = await supabase
      .from('user_profiles')
      .select('id, display_name, avatar_url, country')
      .in('id', profileIds);

    const profileMap: Record<string, { display_name: string; avatar_url: string | null; country: string }> = {};
    for (const p of profileData || []) {
      profileMap[p.id] = {
        display_name: p.display_name?.trim() || 'Unknown',
        avatar_url: p.avatar_url || null,
        country: p.country || profile.country,
      };
    }

    const entries: LeaderEntry[] = profileIds.map(uid => {
      const u = userMap[uid];
      const p = profileMap[uid];
      const totalScore = u.scores.reduce((a, b) => a + b, 0);
      const totalPossible = u.totals.reduce((a, b) => a + b, 0);
      const avgPct = totalPossible > 0 ? Math.round((totalScore / totalPossible) * 100) : 0;
      return {
        user_id: uid,
        display_name: p?.display_name || 'Unknown',
        avatar_url: p?.avatar_url || null,
        country: p?.country || profile.country,
        total_score: totalScore,
        exams_taken: u.scores.length,
        avg_pct: avgPct,
        rankChange: 0,
      };
    }).sort((a, b) => b.avg_pct - a.avg_pct || b.total_score - a.total_score);

    cacheSet(cacheKey, entries);
    setLeaders(entries);
    setLoading(false);
    setRefreshing(false);
    setTimeout(() => setAnimateIn(true), 50);
  }

  if (loading && leaders.length === 0) return <LeaderboardSkeleton />;

  const myRank = leaders.findIndex(l => l.user_id === profile?.id);
  const top3 = leaders.slice(0, 3);
  const podiumOrder = top3.length === 3 ? [top3[1], top3[0], top3[2]] : top3;
  const podiumHeights = ['h-20 sm:h-24', 'h-28 sm:h-32', 'h-14 sm:h-16'];
  const podiumColors = ['from-slate-300 to-slate-400', 'from-amber-300 to-amber-500', 'from-amber-600 to-amber-800'];
  const podiumRings = ['ring-2 ring-slate-300 ring-offset-2', 'ring-4 ring-amber-300 ring-offset-2', 'ring-2 ring-amber-600 ring-offset-2'];
  const podiumPositions = [2, 1, 3];

  return (
    <div className="space-y-5 sm:space-y-6 pb-8">
      <div className="flex items-start justify-between">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-slate-800 mb-1">Leaderboard</h1>
          <p className="text-slate-500 text-sm">{profile?.country} · Ranked by exam performance</p>
        </div>
        <button
          onClick={handleRefresh}
          disabled={refreshing}
          className="flex items-center gap-1.5 px-3 py-2 text-sm font-semibold text-slate-600 hover:text-slate-800 hover:bg-slate-100 rounded-xl transition-all disabled:opacity-50"
          title="Refresh leaderboard"
        >
          <RefreshCw size={14} className={refreshing ? 'animate-spin' : ''} />
          <span className="hidden sm:inline">Refresh</span>
        </button>
      </div>

      {top3.length === 3 && (
        <div className={`relative overflow-hidden rounded-2xl bg-gradient-to-b from-amber-50 via-orange-50 to-white border border-amber-200/60 p-6 sm:p-8 transition-all duration-700 ${animateIn ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-4'}`}>
          <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top,rgba(251,191,36,0.15),transparent_70%)]" />
          <div className="relative flex items-end justify-center gap-4 sm:gap-8">
            {podiumOrder.map((entry, podiumIdx) => {
              const isMe = entry.user_id === profile?.id;
              const isFirst = podiumIdx === 1;
              return (
                <div
                  key={entry.user_id}
                  className={`flex flex-col items-center gap-1 transition-all duration-500 ${animateIn ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-6'}`}
                  style={{ transitionDelay: `${podiumIdx * 120}ms` }}
                >
                  {isFirst && (
                    <Crown size={20} className="text-amber-500 drop-shadow mb-1 animate-bounce" style={{ animationDuration: '2s' }} />
                  )}
                  {!isFirst && <div className="h-6 mb-1" />}
                  <div className="relative">
                    <Avatar
                      name={entry.display_name}
                      avatarUrl={entry.avatar_url}
                      size={isFirst ? 'lg' : 'md'}
                      ring={podiumRings[podiumIdx]}
                    />
                    {isMe && (
                      <div className="absolute -right-1 -bottom-1 w-4 h-4 bg-blue-500 rounded-full border-2 border-white shadow-sm" />
                    )}
                  </div>
                  <p className={`font-bold text-slate-800 text-center truncate mt-1 ${isFirst ? 'text-sm max-w-[80px]' : 'text-xs max-w-[64px]'}`}>
                    {entry.display_name}
                  </p>
                  <p className={`font-black ${isFirst ? 'text-amber-600 text-base' : 'text-slate-500 text-sm'}`}>
                    {entry.avg_pct}%
                  </p>
                  <div className={`w-14 sm:w-16 rounded-t-xl flex items-end justify-center pb-2 bg-gradient-to-t ${podiumColors[podiumIdx]} shadow-inner ${podiumHeights[podiumIdx]}`}>
                    <span className="text-white text-xs font-black">#{podiumPositions[podiumIdx]}</span>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {myRank >= 0 && (
        <div className="bg-gradient-to-r from-blue-600 to-blue-700 rounded-2xl p-4 flex items-center gap-3 shadow-md shadow-blue-200">
          <div className="relative">
            <Avatar
              name={profile?.display_name || 'You'}
              avatarUrl={profile?.avatar_url || null}
              size="md"
              ring="ring-2 ring-white/50 ring-offset-1 ring-offset-blue-600"
            />
          </div>
          <div className="flex-1 min-w-0">
            <p className="text-sm font-bold text-white">{profile?.display_name}</p>
            <p className="text-xs text-blue-200">Rank #{myRank + 1} · {leaders[myRank]?.avg_pct}% avg · {leaders[myRank]?.exams_taken} exam{leaders[myRank]?.exams_taken !== 1 ? 's' : ''}</p>
          </div>
          <div className="bg-white/20 rounded-xl px-3 py-1.5 text-center">
            <p className="text-white font-black text-lg leading-none">{leaders[myRank]?.avg_pct}%</p>
            <p className="text-blue-200 text-[10px] font-semibold">avg score</p>
          </div>
        </div>
      )}

      {leaders.length === 0 ? (
        <div className="text-center py-16 bg-white border border-dashed border-slate-200 rounded-2xl">
          <div className="w-20 h-20 bg-amber-50 rounded-full flex items-center justify-center mx-auto mb-4">
            <Trophy size={36} className="text-amber-400" />
          </div>
          <h3 className="font-bold text-slate-700 text-lg mb-1">No Rankings Yet</h3>
          <p className="text-slate-500 text-sm max-w-xs mx-auto">Complete exams to appear on the {profile?.country} leaderboard. Be the first to claim the top spot!</p>
          <button
            onClick={() => _onNavigate('subject')}
            className="mt-5 inline-flex items-center gap-2 px-5 py-2.5 bg-blue-600 text-white rounded-xl font-semibold text-sm hover:bg-blue-700 transition-colors"
          >
            Start an Exam
          </button>
        </div>
      ) : (
        <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
          <div className="hidden sm:grid sm:grid-cols-[3rem_1fr_5.5rem_5rem_5rem] gap-2 px-5 py-3 bg-slate-50 border-b border-slate-200 text-[11px] font-bold text-slate-400 uppercase tracking-widest">
            <span>#</span>
            <span>Student</span>
            <span className="text-center">Avg Score</span>
            <span className="text-center">Exams</span>
            <span className="text-center">Points</span>
          </div>
          <div className="divide-y divide-slate-100">
            {leaders.map((entry, i) => {
              const isMe = entry.user_id === profile?.id;
              const isTop3 = i < 3;
              return (
                <div
                  key={entry.user_id}
                  className={`transition-colors group ${
                    isMe
                      ? 'bg-blue-50 hover:bg-blue-100/70'
                      : isTop3
                      ? 'bg-amber-50/40 hover:bg-amber-50'
                      : 'hover:bg-slate-50/80'
                  }`}
                >
                  <div className="hidden sm:grid sm:grid-cols-[3rem_1fr_5.5rem_5rem_5rem] gap-2 px-5 py-3.5 items-center">
                    <div className="flex items-center justify-center">
                      {i === 0 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-amber-300 to-amber-500 rounded-full flex items-center justify-center shadow-sm">
                          <Trophy size={13} className="text-white" />
                        </div>
                      ) : i === 1 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-slate-300 to-slate-400 rounded-full flex items-center justify-center shadow-sm">
                          <Medal size={13} className="text-white" />
                        </div>
                      ) : i === 2 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-amber-600 to-amber-800 rounded-full flex items-center justify-center shadow-sm">
                          <Medal size={13} className="text-white" />
                        </div>
                      ) : (
                        <span className="text-xs font-bold text-slate-400 text-center w-full">{i + 1}</span>
                      )}
                    </div>
                    <div className="flex items-center gap-3 min-w-0">
                      <Avatar
                        name={entry.display_name}
                        avatarUrl={entry.avatar_url}
                        size="sm"
                        ring={isMe ? 'ring-2 ring-blue-400 ring-offset-1' : undefined}
                      />
                      <div className="min-w-0">
                        <p className={`text-sm font-semibold truncate ${isMe ? 'text-blue-700' : 'text-slate-800'}`}>
                          {entry.display_name}
                        </p>
                        <div className="flex items-center gap-1.5 mt-0.5">
                          <ScoreBadge pct={entry.avg_pct} />
                          <RankBadge change={entry.rankChange} />
                        </div>
                      </div>
                    </div>
                    <div className="flex flex-col items-center">
                      <span className={`text-base font-black ${entry.avg_pct >= 70 ? 'text-emerald-600' : entry.avg_pct >= 50 ? 'text-amber-600' : 'text-red-500'}`}>
                        {entry.avg_pct}%
                      </span>
                    </div>
                    <span className="text-center text-sm text-slate-500 font-medium">{entry.exams_taken}</span>
                    <span className="text-center text-sm text-slate-500 font-medium">{entry.total_score}</span>
                  </div>

                  <div className="sm:hidden flex items-center gap-3 px-4 py-3.5">
                    <div className="flex items-center justify-center w-7 flex-shrink-0">
                      {i === 0 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-amber-300 to-amber-500 rounded-full flex items-center justify-center">
                          <Trophy size={12} className="text-white" />
                        </div>
                      ) : i === 1 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-slate-300 to-slate-400 rounded-full flex items-center justify-center">
                          <Medal size={12} className="text-white" />
                        </div>
                      ) : i === 2 ? (
                        <div className="w-7 h-7 bg-gradient-to-br from-amber-600 to-amber-800 rounded-full flex items-center justify-center">
                          <Medal size={12} className="text-white" />
                        </div>
                      ) : (
                        <span className="text-xs font-bold text-slate-400 w-full text-center">{i + 1}</span>
                      )}
                    </div>
                    <Avatar
                      name={entry.display_name}
                      avatarUrl={entry.avatar_url}
                      size="sm"
                      ring={isMe ? 'ring-2 ring-blue-400 ring-offset-1' : undefined}
                    />
                    <div className="flex-1 min-w-0">
                      <p className={`text-sm font-semibold truncate ${isMe ? 'text-blue-700' : 'text-slate-800'}`}>
                        {entry.display_name}
                      </p>
                      <div className="flex items-center gap-2 mt-0.5">
                        <p className="text-xs text-slate-500">{entry.exams_taken} exam{entry.exams_taken !== 1 ? 's' : ''}</p>
                        <ScoreBadge pct={entry.avg_pct} />
                      </div>
                    </div>
                    <div className="flex-shrink-0 text-right">
                      <span className={`text-base font-black ${entry.avg_pct >= 70 ? 'text-emerald-600' : entry.avg_pct >= 50 ? 'text-amber-600' : 'text-red-500'}`}>
                        {entry.avg_pct}%
                      </span>
                      <div className="flex justify-end mt-0.5">
                        <RankBadge change={entry.rankChange} />
                      </div>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}
    </div>
  );
}
