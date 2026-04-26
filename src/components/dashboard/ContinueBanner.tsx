import { Clock, BookMarked, CheckCircle, Play } from 'lucide-react';
import { Topic, Subject, Page } from '../../lib/types';

interface ContinueBannerProps {
  lastTopic: Topic;
  lastSubjectId: string;
  subjects: Subject[];
  sectionCount: number;
  sectionsViewed: number;
  readingPct: number;
  isComplete: boolean;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

export default function ContinueBanner({
  lastTopic, lastSubjectId, subjects, sectionCount, sectionsViewed, readingPct, isComplete, onNavigate
}: ContinueBannerProps) {
  return (
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

        {!isComplete && (
          <div className="mb-4">
            <div className="flex items-center justify-between mb-1.5">
              <span className="text-blue-200 text-xs flex items-center gap-1.5">
                <BookMarked size={10} />
                {sectionsViewed > 0
                  ? `${sectionsViewed} of ${sectionCount} sections read`
                  : 'Not started yet'}
              </span>
              <span className="text-white text-xs font-bold bg-white/15 px-2 py-0.5 rounded-full">{readingPct}%</span>
            </div>
            <div className="w-full bg-white/10 rounded-full h-1.5 overflow-hidden">
              <div
                className="h-1.5 rounded-full transition-all duration-700"
                style={{ width: `${readingPct}%`, background: 'linear-gradient(90deg, rgba(255,255,255,0.6), rgba(255,255,255,0.9))' }}
              />
            </div>
          </div>
        )}

        {isComplete && (
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
          {isComplete ? 'Review Topic' : sectionsViewed > 0 ? 'Continue Reading' : 'Start Topic'}
        </button>
      </div>
    </div>
  );
}
