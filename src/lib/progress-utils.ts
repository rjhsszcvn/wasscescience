import type { UserProgress } from './types';

export interface ExtendedProgress extends UserProgress {
  reading_progress_percent?: number;
  sections_viewed?: string[];
}

export interface TopicSectionCount {
  topic_id: string;
  count: number;
}

export function computeStreak(prog: ExtendedProgress[]): number {
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

export function formatLastSeen(iso?: string): string | null {
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
