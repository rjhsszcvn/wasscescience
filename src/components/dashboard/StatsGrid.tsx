import { BookOpen, Target, BarChart3, Trophy } from 'lucide-react';
import CircularProgress from '../ui/CircularProgress';

interface StatsGridProps {
  totalCompleted: number;
  totalTopics: number;
  totalQuizzes: number;
  avgScore: number;
  overallPct: number;
  streak: number;
}

export default function StatsGrid({ totalCompleted, totalTopics, totalQuizzes, avgScore, overallPct, streak }: StatsGridProps) {
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
  );
}
