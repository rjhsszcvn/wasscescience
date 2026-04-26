import { useEffect, useState, useRef, useCallback } from 'react';
import { updateMetaTags, getTopicSEO } from '../../lib/seo';
import {
  ChevronLeft, ChevronRight, Clock, BookOpen, CheckCircle,
  Play, ChevronDown, Star, PartyPopper
} from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Topic, Subject } from '../../lib/types';
import { Page } from '../../lib/types';
import { useToast } from '../ui/Toast';
import { cacheGet, cacheSet, cacheGetStale, cacheInvalidate, TTL } from '../../lib/cache';

type AuthPromptReason = 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';

interface TopicPageProps {
  topicId: string;
  subjectId: string;
  subjectName?: string;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
  onAuthPrompt?: (reason: AuthPromptReason) => void;
}

interface TopicSection {
  id: string;
  topic_id: string;
  title: string;
  content: string;
  section_type: string;
  order_index: number;
}

interface ExtendedProgress {
  sections_viewed?: string[];
  completed?: boolean;
  reading_progress_percent?: number;
}

const SECTION_TYPE_COLORS: Record<string, string> = {
  overview: 'bg-blue-50',
  definitions: 'bg-amber-50',
  explanation: 'bg-emerald-50',
  examples: 'bg-slate-50',
  practice: 'bg-rose-50',
  content: 'bg-white',
};

const SECTION_TYPE_BADGE: Record<string, string> = {
  overview: 'bg-blue-100 text-blue-700',
  definitions: 'bg-amber-100 text-amber-700',
  explanation: 'bg-emerald-100 text-emerald-700',
  examples: 'bg-slate-200 text-slate-700',
  practice: 'bg-rose-100 text-rose-700',
  content: 'bg-slate-100 text-slate-600',
};

function isHtmlContent(text: string): boolean {
  return /<\/?[a-z][\s\S]*>/i.test(text?.slice(0, 200) || '');
}

function applyInline(text: string): string {
  return text
    .replace(/\*\*(.+?)\*\*/g, '<strong style="font-weight:700;color:#0f172a">$1</strong>')
    .replace(/\*(.+?)\*/g, '<em style="font-style:italic">$1</em>')
    .replace(/`(.+?)`/g, '<code style="background:#eff6ff;color:#1d4ed8;padding:2px 6px;border-radius:4px;font-size:0.85em;font-family:monospace;font-weight:600">$1</code>');
}

function renderContent(text: string): string {
  if (!text) return '';
  const lines = text.split('\n');
  const result: string[] = [];
  let inTable = false;
  let tableRows: string[] = [];
  let inBulletGroup = false;
  let inNumberGroup = false;

  function flushTable() {
    if (tableRows.length > 0) {
      const header = tableRows[0];
      const headerCells = header.split('|').filter(c => c.trim());
      const headerHtml = headerCells.map(c =>
        `<th style="background:#1e40af;color:white;padding:10px 14px;text-align:left;font-weight:600;border:1px solid #1d4ed8;font-size:0.875rem">${c.trim()}</th>`
      ).join('');
      let tableHtml = `<div style="overflow-x:auto;margin:20px 0;border-radius:10px;border:1px solid #e2e8f0;overflow:hidden"><table style="width:100%;border-collapse:collapse;font-size:0.9rem"><thead><tr>${headerHtml}</tr></thead><tbody>`;
      for (let i = 2; i < tableRows.length; i++) {
        const cells = tableRows[i].split('|').filter(c => c.trim());
        const bg = i % 2 === 0 ? '#f8fafc' : '#ffffff';
        const rowHtml = cells.map(c =>
          `<td style="padding:10px 14px;border:1px solid #e2e8f0;background:${bg};color:#374151">${applyInline(c.trim())}</td>`
        ).join('');
        tableHtml += `<tr>${rowHtml}</tr>`;
      }
      tableHtml += '</tbody></table></div>';
      result.push(tableHtml);
      tableRows = [];
    }
    inTable = false;
  }

  function closeLists() {
    if (inBulletGroup) { result.push('</div>'); inBulletGroup = false; }
    if (inNumberGroup) { result.push('</div>'); inNumberGroup = false; }
  }

  for (const line of lines) {
    if (line.startsWith('|')) {
      if (line.includes('---')) continue;
      closeLists();
      inTable = true;
      tableRows.push(line.replace(/^\||\|$/g, ''));
      continue;
    }
    if (inTable) flushTable();

    if (line.startsWith('## ')) {
      closeLists();
      result.push(`<h2 style="font-size:1.2rem;font-weight:800;color:#0f172a;margin:28px 0 12px;padding-bottom:8px;border-bottom:2px solid #2563eb;display:flex;align-items:center;gap:8px">${applyInline(line.slice(3))}</h2>`);
    } else if (line.startsWith('### ')) {
      closeLists();
      result.push(`<h3 style="font-size:1.05rem;font-weight:700;color:#1d4ed8;margin:20px 0 8px">${applyInline(line.slice(4))}</h3>`);
    } else if (line.startsWith('#### ')) {
      closeLists();
      result.push(`<h4 style="font-size:0.95rem;font-weight:700;color:#374151;margin:16px 0 6px">${applyInline(line.slice(5))}</h4>`);
    } else if (line.startsWith('- ')) {
      if (!inBulletGroup) { result.push('<div style="margin:8px 0">'); inBulletGroup = true; }
      result.push(`<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;margin-top:3px;font-weight:700">•</span><span style="color:#374151;line-height:1.7">${applyInline(line.slice(2))}</span></div>`);
    } else if (/^\d+\.\s/.test(line)) {
      if (inBulletGroup) { result.push('</div>'); inBulletGroup = false; }
      if (!inNumberGroup) { result.push('<div style="margin:8px 0">'); inNumberGroup = true; }
      const match = line.match(/^(\d+)\.\s(.+)$/);
      if (match) {
        result.push(`<div style="display:flex;align-items:flex-start;gap:10px;margin:5px 0 5px 8px"><span style="color:#2563eb;flex-shrink:0;font-weight:700;min-width:22px">${match[1]}.</span><span style="color:#374151;line-height:1.7">${applyInline(match[2])}</span></div>`);
      }
    } else if (line.startsWith('---')) {
      closeLists();
      result.push('<hr style="border:none;border-top:1px solid #e2e8f0;margin:20px 0">');
    } else if (line.trim() === '') {
      closeLists();
      result.push('<div style="height:6px"></div>');
    } else {
      closeLists();
      result.push(`<p style="color:#374151;line-height:1.75;margin:6px 0">${applyInline(line)}</p>`);
    }
  }
  if (inTable) flushTable();
  closeLists();
  return result.join('\n');
}

export default function TopicPage({ topicId, subjectId, subjectName, onNavigate, onAuthPrompt }: TopicPageProps) {
  const { profile, isGuest } = useAuth();
  const { toast } = useToast();
  const [topic, setTopic] = useState<Topic | null>(() => cacheGetStale<Topic>(`topic:${topicId}`) || null);
  const [subject, setSubject] = useState<Subject | null>(() => cacheGetStale<Subject>(`subject:${subjectId}`) || null);
  const [allTopics, setAllTopics] = useState<Topic[]>(() => cacheGetStale<Topic[]>(`topics:${subjectId}`) || []);
  const [sections, setSections] = useState<TopicSection[]>(() => cacheGetStale<TopicSection[]>(`sections:${topicId}`) || []);
  const [loading, setLoading] = useState(() => !(cacheGetStale<TopicSection[]>(`sections:${topicId}`)?.length));
  const [, setActiveSection] = useState<string>('');
  const [viewedSections, setViewedSections] = useState<Set<string>>(new Set());
  const [expandedSections, setExpandedSections] = useState<Set<string>>(new Set());
  const [isCompleted, setIsCompleted] = useState(false);
  const [markingComplete, setMarkingComplete] = useState(false);
  const [showCelebration, setShowCelebration] = useState(false);
  const [hasQuestions, setHasQuestions] = useState(false);
  const saveTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    if (profile || isGuest) loadData();
  }, [topicId, profile, isGuest]);

  async function loadData() {
    setExpandedSections(new Set());
    setIsCompleted(false);

    const cachedTopic = cacheGet<Topic>(`topic:${topicId}`, TTL.long);
    const cachedSubject = cacheGet<Subject>(`subject:${subjectId}`, TTL.long);
    const cachedTopics = cacheGet<Topic[]>(`topics:${subjectId}`, TTL.long);
    const cachedSections = cacheGet<TopicSection[]>(`sections:${topicId}`, TTL.long);
    const cachedHasQ = cacheGet<boolean>(`hasq:${topicId}`, TTL.long);

    if (cachedSections?.length) {
      if (cachedTopic) setTopic(cachedTopic);
      if (cachedSubject) setSubject(cachedSubject);
      if (cachedTopics) setAllTopics(cachedTopics);
      setSections(cachedSections);
      if (cachedHasQ !== null) setHasQuestions(cachedHasQ);
      setLoading(false);
    } else {
      setLoading(true);
    }

    const fetches: Promise<void>[] = [];

    if (!cachedTopic || !cachedSubject || !cachedTopics || !cachedSections || cachedHasQ === null) {
      fetches.push(
        Promise.all([
          cachedTopic ? Promise.resolve({ data: cachedTopic }) : supabase.from('topics').select('*').eq('id', topicId).maybeSingle(),
          cachedSubject ? Promise.resolve({ data: cachedSubject }) : supabase.from('subjects').select('*').eq('id', subjectId).maybeSingle(),
          cachedTopics ? Promise.resolve({ data: cachedTopics }) : supabase.from('topics').select('*').eq('subject_id', subjectId).order('order_index'),
          cachedSections ? Promise.resolve({ data: cachedSections }) : supabase.from('topic_sections').select('*').eq('topic_id', topicId).order('order_index'),
          cachedHasQ !== null ? Promise.resolve({ count: cachedHasQ ? 1 : 0 }) : supabase.from('quiz_questions').select('id', { count: 'exact', head: true }).eq('topic_id', topicId),
        ]).then(([topicRes, subjectRes, topicsRes, sectionsRes, questionsRes]) => {
          const t = topicRes.data as Topic | null;
          const s = subjectRes.data as Subject | null;
          const tl = (topicsRes.data as Topic[] | null) || [];
          const secs = (sectionsRes.data as TopicSection[] | null) || [];
          const hq = ((questionsRes as { count?: number | null }).count ?? 0) > 0;

          if (t) { cacheSet(`topic:${topicId}`, t); setTopic(t); }
          if (s) { cacheSet(`subject:${subjectId}`, s); setSubject(s); }
          cacheSet(`topics:${subjectId}`, tl); setAllTopics(tl);
          cacheSet(`sections:${topicId}`, secs); setSections(secs);
          cacheSet(`hasq:${topicId}`, hq); setHasQuestions(hq);

          if (t && s) {
            updateMetaTags(getTopicSEO(t.name, s.name, topicId));
          }

          if (secs.length > 0) setActiveSection(secs[0].id);
          setLoading(false);
        })
      );
    }

    await Promise.all(fetches);

    const secs = cacheGetStale<TopicSection[]>(`sections:${topicId}`) || [];
    let progress: ExtendedProgress | null = null;

    if (profile?.id) {
      const progressRes = await supabase
        .from('user_progress').select('*')
        .eq('user_id', profile.id).eq('topic_id', topicId).maybeSingle();
      progress = progressRes.data as ExtendedProgress | null;
    }

    setIsCompleted(progress?.completed || false);

    const viewed = new Set<string>(progress?.sections_viewed || []);
    setViewedSections(viewed);

    if (secs.length > 0) {
      setActiveSection(secs[0].id);
      setExpandedSections(new Set([secs[0].id]));
    }

    if (profile?.id) {
      await supabase.from('user_profiles').update({ last_topic_id: topicId }).eq('id', profile.id);
      await supabase.from('user_progress').upsert({
        user_id: profile.id,
        topic_id: topicId,
        notes_read: true,
        last_accessed: new Date().toISOString(),
      }, { onConflict: 'user_id,topic_id' });
    }

    setLoading(false);
  }

  const saveProgress = useCallback(async (viewed: Set<string>, totalSections: number) => {
    if (!profile?.id) return;
    const pct = totalSections > 0 ? Math.round((viewed.size / totalSections) * 100) : 0;
    await supabase.from('user_progress').upsert({
      user_id: profile.id,
      topic_id: topicId,
      sections_viewed: Array.from(viewed),
      reading_progress_percent: pct,
      last_accessed: new Date().toISOString(),
    }, { onConflict: 'user_id,topic_id' });
    cacheInvalidate(`progress:${profile.id}`);
  }, [topicId, profile]);

  const markSectionViewed = useCallback((sectionId: string, totalSections: number) => {
    setViewedSections(prev => {
      if (prev.has(sectionId)) return prev;
      const next = new Set(prev);
      next.add(sectionId);

      if (saveTimer.current) clearTimeout(saveTimer.current);
      saveTimer.current = setTimeout(() => {
        saveProgress(next, totalSections);
      }, 500);

      return next;
    });
  }, [saveProgress]);

  function toggleSection(sectionId: string) {
    setExpandedSections(prev => {
      const next = new Set(prev);
      if (next.has(sectionId)) {
        next.delete(sectionId);
      } else {
        next.add(sectionId);
        markSectionViewed(sectionId, sections.length);
        setActiveSection(sectionId);
      }
      return next;
    });
  }

  async function handleMarkComplete() {
    if (!profile?.id) return;
    setMarkingComplete(true);
    const newCompleted = !isCompleted;
    setIsCompleted(newCompleted);
    const pct = sections.length > 0 ? Math.round((viewedSections.size / sections.length) * 100) : 100;
    await supabase.from('user_progress').upsert({
      user_id: profile.id,
      topic_id: topicId,
      completed: newCompleted,
      notes_read: true,
      sections_viewed: Array.from(viewedSections),
      reading_progress_percent: newCompleted ? 100 : pct,
      last_accessed: new Date().toISOString(),
    }, { onConflict: 'user_id,topic_id' });
    cacheInvalidate(`progress:${profile.id}`);
    setMarkingComplete(false);
    if (newCompleted) {
      setShowCelebration(true);
      toast('Topic completed! Keep up the great work!', 'success', 4000);
      setTimeout(() => setShowCelebration(false), 3000);
    }
  }

  const currentIndex = allTopics.findIndex(t => t.id === topicId);
  const prevTopic = allTopics[currentIndex - 1];
  const nextTopic = allTopics[currentIndex + 1];

  const viewedCount = sections.filter(s => viewedSections.has(s.id)).length;
  const progressPct = sections.length > 0 ? Math.round((viewedCount / sections.length) * 100) : 0;
  const allSectionsViewed = sections.length > 0 && sections.every(s => viewedSections.has(s.id));

  if (loading) {
    return (
      <div className="flex items-center justify-center h-64">
        <div className="w-10 h-10 border-4 border-blue-600 border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  if (!topic) {
    return <div className="text-center py-16 text-slate-500">Topic not found.</div>;
  }

  const hasNav = !!(prevTopic || nextTopic);

  return (
    <div className={`space-y-4 ${hasNav ? 'pb-36 lg:pb-24' : 'pb-8'}`}>
      <div className="flex items-center gap-2 min-w-0">
        <button
          onClick={() => onNavigate('subject', { subjectId })}
          className="flex items-center gap-1.5 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors flex-shrink-0 min-h-[44px] py-2"
        >
          <ChevronLeft size={16} /> <span className="hidden xs:inline">{subjectName || 'Subject'}</span><span className="xs:hidden">Back</span>
        </button>
        <span className="text-slate-300 flex-shrink-0">/</span>
        <span className="text-slate-700 text-sm font-medium truncate min-w-0">{topic.name}</span>
      </div>

      <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
        <div className={`p-4 xs:p-5 text-white ${isCompleted ? 'bg-gradient-to-r from-green-600 to-emerald-700' : 'bg-gradient-to-r from-blue-600 to-blue-800'}`}>
          <div className="flex items-start justify-between gap-4">
            <div className="flex-1">
              <p className={`text-xs font-bold uppercase tracking-wider mb-1 ${isCompleted ? 'text-green-200' : 'text-blue-200'}`}>
                Topic {currentIndex + 1} of {allTopics.length}
              </p>
              <h1 className="text-xl font-bold mb-2 leading-tight">{topic.name}</h1>
              <div className="flex items-center gap-4 flex-wrap">
                <span className={`flex items-center gap-1.5 text-sm ${isCompleted ? 'text-green-200' : 'text-blue-200'}`}>
                  <Clock size={14} /> {topic.duration_minutes} min
                </span>
                <span className={`flex items-center gap-1.5 text-sm ${isCompleted ? 'text-green-200' : 'text-blue-200'}`}>
                  <BookOpen size={14} /> {sections.length} sections
                </span>
                {isCompleted && (
                  <span className="flex items-center gap-1 text-sm text-white font-semibold">
                    <CheckCircle size={14} /> Completed
                  </span>
                )}
                {!isCompleted && allSectionsViewed && (
                  <span className="flex items-center gap-1 text-sm text-green-300 font-semibold">
                    <CheckCircle size={14} /> All read
                  </span>
                )}
              </div>
            </div>
            {isCompleted && (
              <div className="flex-shrink-0 w-11 h-11 bg-white/20 rounded-xl flex items-center justify-center">
                <Star size={22} className="text-white fill-white" />
              </div>
            )}
          </div>

          {sections.length > 0 && (
            <div className="mt-4">
              <div className="flex items-center justify-between mb-1.5">
                <span className={`text-xs font-medium ${isCompleted ? 'text-green-200' : 'text-blue-200'}`}>Reading progress</span>
                <span className="text-xs text-white font-bold">{viewedCount}/{sections.length} sections</span>
              </div>
              <div className={`w-full rounded-full h-2 ${isCompleted ? 'bg-green-500/40' : 'bg-blue-500/50'}`}>
                <div
                  className="h-2 rounded-full transition-all duration-500 bg-white"
                  style={{ width: `${isCompleted ? 100 : progressPct}%` }}
                />
              </div>
            </div>
          )}
        </div>

        <div className="p-3 xs:p-4 border-b border-slate-100 flex items-center justify-between gap-3 flex-wrap">
          <button
            onClick={() => {
              if (isGuest) { onAuthPrompt?.('progress'); return; }
              handleMarkComplete();
            }}
            disabled={markingComplete && !isGuest}
            className={`flex items-center gap-1.5 px-4 py-2 rounded-lg text-sm font-bold transition-all ${
              isCompleted && !isGuest
                ? 'bg-green-50 text-green-700 border border-green-200 hover:bg-green-100'
                : 'bg-green-600 text-white hover:bg-green-700 shadow-sm'
            }`}
          >
            <CheckCircle size={14} />
            {isGuest ? 'Save Progress' : markingComplete ? 'Saving...' : isCompleted ? 'Completed' : 'Mark as Complete'}
          </button>
          {hasQuestions && (
            <button
              onClick={() => onNavigate('quiz', { topicId, subjectId, topicName: topic.name })}
              className="flex items-center gap-1.5 px-3 py-2 bg-slate-100 text-slate-700 rounded-lg text-sm font-semibold hover:bg-slate-200 transition-colors"
            >
              <Play size={13} /> Practice Quiz
            </button>
          )}
        </div>

        <div className="divide-y divide-slate-100">
          {sections.map((section, idx) => {
            const isViewed = viewedSections.has(section.id);
            const isExpanded = expandedSections.has(section.id);

            return (
              <div key={section.id}>
                <button
                  onClick={() => toggleSection(section.id)}
                  className={`w-full flex items-center justify-between p-3.5 xs:p-4 text-left transition-colors ${
                    isExpanded
                      ? 'bg-blue-50/70'
                      : 'hover:bg-slate-50'
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <div className={`w-7 h-7 rounded-full flex items-center justify-center flex-shrink-0 ${
                      isViewed ? 'bg-green-100' : 'bg-blue-100'
                    }`}>
                      {isViewed ? (
                        <CheckCircle size={14} className="text-green-600" />
                      ) : (
                        <span className="text-xs font-bold text-blue-600">{idx + 1}</span>
                      )}
                    </div>
                    <div>
                      <p className="font-semibold text-sm leading-tight text-slate-800">
                        {section.title}
                      </p>
                      <span className={`text-xs px-2 py-0.5 rounded-full font-medium mt-0.5 inline-block ${
                        SECTION_TYPE_BADGE[section.section_type] || 'bg-slate-100 text-slate-600'
                      }`}>
                        {section.section_type.charAt(0).toUpperCase() + section.section_type.slice(1)}
                      </span>
                    </div>
                  </div>
                  <ChevronDown size={16} className={`text-slate-400 transition-transform flex-shrink-0 ${isExpanded ? 'rotate-180' : ''}`} />
                </button>

                {isExpanded && (
                  <div className={`border-t border-slate-100 animate-slide-down ${SECTION_TYPE_COLORS[section.section_type] || 'bg-white'}`}>
                    <div
                      className="p-3 xs:p-4 sm:p-5 md:p-6 overflow-x-auto prose-section"
                      dangerouslySetInnerHTML={{ __html: isHtmlContent(section.content) ? section.content : renderContent(section.content) }}
                    />
                  </div>
                )}
              </div>
            );
          })}

          {sections.length === 0 && (
            <div className="p-8 text-center text-slate-400 text-sm">
              <BookOpen size={32} className="mx-auto mb-3 text-slate-200" />
              <p>Notes content is being prepared for this topic.</p>
            </div>
          )}
        </div>
      </div>

      {isCompleted && (
        <div className={`bg-green-50 border rounded-xl p-4 flex items-center gap-3 transition-all ${showCelebration ? 'border-green-400 shadow-md shadow-green-100 animate-celebrate' : 'border-green-200'}`}>
          <div className={`w-9 h-9 rounded-full flex items-center justify-center flex-shrink-0 ${showCelebration ? 'bg-green-500' : 'bg-green-100'}`}>
            {showCelebration
              ? <PartyPopper size={18} className="text-white" />
              : <CheckCircle size={18} className="text-green-600" />}
          </div>
          <div>
            <p className="font-semibold text-green-800 text-sm">{showCelebration ? 'Congratulations! Topic completed!' : 'Topic completed!'}</p>
            <p className="text-green-700 text-xs mt-0.5">{showCelebration ? 'Amazing work — your progress is saved.' : 'Your progress has been saved. Keep going!'}</p>
          </div>
        </div>
      )}

      {isGuest && (
        <div className="bg-blue-50 border border-blue-200 rounded-2xl p-5 flex items-start gap-4">
          <div className="w-10 h-10 bg-blue-600 rounded-xl flex items-center justify-center flex-shrink-0">
            <BookOpen size={18} className="text-white" />
          </div>
          <div className="flex-1 min-w-0">
            <p className="font-bold text-blue-900 text-sm mb-0.5">Save your reading progress</p>
            <p className="text-blue-700 text-xs mb-3 leading-relaxed">Create a free account to track which topics you have read, save quiz results, and unlock your personal dashboard.</p>
            <button
              onClick={() => onAuthPrompt?.('progress')}
              className="px-4 py-2 bg-blue-600 text-white text-xs font-bold rounded-lg hover:bg-blue-700 transition-colors"
            >
              Create Free Account
            </button>
          </div>
        </div>
      )}

      {hasNav && (
        <div className="fixed bottom-[3.75rem] lg:bottom-0 left-0 right-0 z-40 bg-white/95 backdrop-blur-sm border-t border-slate-200 shadow-lg">
          <div className="flex items-stretch gap-2 px-3 py-2.5 max-w-2xl mx-auto" style={{ paddingBottom: 'env(safe-area-inset-bottom, 0px)' }}>
            {prevTopic ? (
              <button
                onClick={() => onNavigate('topic', { topicId: prevTopic.id, subjectId, subjectName: subject?.name })}
                className="flex-1 flex items-center gap-2 px-3 py-2.5 bg-white border border-slate-200 rounded-xl hover:bg-slate-50 active:bg-slate-100 transition-all text-left min-w-0"
              >
                <ChevronLeft size={18} className="text-slate-500 flex-shrink-0" />
                <div className="min-w-0 overflow-hidden">
                  <p className="text-xs text-slate-400 font-medium leading-none mb-0.5">Previous</p>
                  <p className="font-semibold text-slate-700 text-sm truncate leading-tight">{prevTopic.name}</p>
                </div>
              </button>
            ) : (
              <div className="flex-1" />
            )}
            {nextTopic ? (
              <button
                onClick={() => onNavigate('topic', { topicId: nextTopic.id, subjectId, subjectName: subject?.name })}
                className="flex-1 flex items-center justify-end gap-2 px-3 py-2.5 bg-blue-600 text-white rounded-xl hover:bg-blue-700 active:bg-blue-800 transition-all text-right shadow-sm min-w-0"
              >
                <div className="min-w-0 overflow-hidden">
                  <p className="text-xs text-blue-200 font-medium leading-none mb-0.5">Next</p>
                  <p className="font-semibold text-sm truncate leading-tight">{nextTopic.name}</p>
                </div>
                <ChevronRight size={18} className="flex-shrink-0" />
              </button>
            ) : (
              <button
                onClick={() => onNavigate('subject', { subjectId })}
                className="flex-1 flex items-center justify-end gap-2 px-3 py-2.5 bg-green-600 text-white rounded-xl hover:bg-green-700 active:bg-green-800 transition-all text-right shadow-sm"
              >
                <div className="text-right">
                  <p className="text-xs text-green-200 font-medium leading-none mb-0.5">All done!</p>
                  <p className="font-semibold text-sm leading-tight">Finish</p>
                </div>
                <CheckCircle size={18} className="flex-shrink-0" />
              </button>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
