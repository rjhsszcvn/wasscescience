import { useState, useEffect, useRef, useCallback } from 'react';
import {
  Search, BookOpen, Bookmark, BookmarkCheck, Trash2,
  ChevronRight, Clock, Lightbulb, CheckCircle2,
  Zap, X, RotateCcw, ChevronDown, ChevronUp, ArrowLeft,
} from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { ResearchAnswer, BreakdownSection, SavedResearch, Page } from '../../lib/types';
import {
  searchKnowledge, buildCompositeAnswer, getFallbackAnswer,
} from '../../lib/research-data';
import { cacheGet, cacheSet, TTL } from '../../lib/cache';

const SUGGESTED_QUERIES = [
  'What is photosynthesis?',
  'Explain Newton\'s laws of motion',
  'How does osmosis work?',
  'Types of chemical bonding',
  'Mendel\'s laws of heredity',
  'What is the pH scale?',
  'How to solve quadratic equations',
  'What causes climate change?',
  'Explain cellular respiration',
  'What are enzymes and how do they work?',
  'Soil types and their properties',
  'How does DNA replication work?',
  'What is the periodic table?',
  'Trigonometry SOHCAHTOA explained',
  'Natural selection and evolution',
];

const SECTION_TYPE_STYLE: Record<BreakdownSection['type'], { bg: string; border: string; badge: string }> = {
  concept: { bg: 'bg-blue-50', border: 'border-blue-200', badge: 'bg-blue-100 text-blue-700' },
  process: { bg: 'bg-emerald-50', border: 'border-emerald-200', badge: 'bg-emerald-100 text-emerald-700' },
  formula: { bg: 'bg-amber-50', border: 'border-amber-200', badge: 'bg-amber-100 text-amber-700' },
  fact: { bg: 'bg-slate-50', border: 'border-slate-200', badge: 'bg-slate-100 text-slate-600' },
  comparison: { bg: 'bg-rose-50', border: 'border-rose-200', badge: 'bg-rose-100 text-rose-700' },
};

const SUBJECT_COLORS: Record<string, string> = {
  'Biology': 'bg-green-100 text-green-700',
  'Chemistry': 'bg-orange-100 text-orange-700',
  'Physics': 'bg-blue-100 text-blue-700',
  'Mathematics': 'bg-violet-100 text-violet-700',
  'Further Mathematics': 'bg-purple-100 text-purple-700',
  'English': 'bg-rose-100 text-rose-700',
  'Geography': 'bg-teal-100 text-teal-700',
  'Agricultural Science': 'bg-lime-100 text-lime-700',
};

function getSubjectColor(subject: string): string {
  for (const [key, cls] of Object.entries(SUBJECT_COLORS)) {
    if (subject.includes(key)) return cls;
  }
  return 'bg-slate-100 text-slate-600';
}

function ConfidenceBadge({ confidence }: { confidence: ResearchAnswer['confidence'] }) {
  if (confidence === 'high') {
    return (
      <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full bg-emerald-100 text-emerald-700 uppercase tracking-wide">
        <CheckCircle2 size={9} />
        Verified
      </span>
    );
  }
  if (confidence === 'medium') {
    return (
      <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full bg-amber-100 text-amber-700 uppercase tracking-wide">
        <Zap size={9} />
        Good Match
      </span>
    );
  }
  return (
    <span className="inline-flex items-center gap-1 text-[10px] font-bold px-2 py-0.5 rounded-full bg-slate-100 text-slate-600 uppercase tracking-wide">
      <Lightbulb size={9} />
      Partial
    </span>
  );
}

function BreakdownCard({ section, index }: { section: BreakdownSection; index: number }) {
  const [expanded, setExpanded] = useState(index < 3);
  const style = SECTION_TYPE_STYLE[section.type] || SECTION_TYPE_STYLE.concept;

  return (
    <div
      className={`rounded-xl border ${style.border} ${style.bg} overflow-hidden transition-all duration-200`}
    >
      <button
        onClick={() => setExpanded(e => !e)}
        className="w-full flex items-center gap-3 px-4 py-3 text-left"
      >
        <span className={`text-[10px] font-bold px-2 py-0.5 rounded-full uppercase tracking-wider flex-shrink-0 ${style.badge}`}>
          {section.type}
        </span>
        <span className="flex-1 font-semibold text-slate-800 text-sm leading-tight">{section.heading}</span>
        <span className="flex-shrink-0 text-slate-400">
          {expanded ? <ChevronUp size={14} /> : <ChevronDown size={14} />}
        </span>
      </button>
      {expanded && (
        <div className="px-4 pb-4 pt-0">
          <p className="text-sm text-slate-700 leading-relaxed">{section.content}</p>
        </div>
      )}
    </div>
  );
}

function AnswerDisplay({
  answer,
  query,
  isSaved,
  onSave,
  onUnsave,
  saving,
}: {
  answer: ResearchAnswer;
  query: string;
  isSaved: boolean;
  onSave: () => void;
  onUnsave: () => void;
  saving: boolean;
}) {
  return (
    <div className="animate-fade-in">
      <div className="bg-white rounded-2xl border border-slate-200 shadow-sm overflow-hidden">
        <div
          className="px-5 py-4"
          style={{ background: 'linear-gradient(135deg, #f0f7ff 0%, #f8fafc 100%)', borderBottom: '1px solid rgba(219,234,254,0.6)' }}
        >
          <div className="flex items-start justify-between gap-3 mb-3">
            <div className="flex-1 min-w-0">
              <div className="flex flex-wrap items-center gap-2 mb-2">
                <span className={`text-[10px] font-bold px-2 py-0.5 rounded-full ${getSubjectColor(answer.subject)}`}>
                  {answer.subject}
                </span>
                <ConfidenceBadge confidence={answer.confidence} />
              </div>
              <h2 className="text-lg font-black text-slate-900 leading-tight">{answer.title}</h2>
            </div>
            <button
              onClick={isSaved ? onUnsave : onSave}
              disabled={saving}
              className={`flex-shrink-0 flex items-center gap-1.5 px-3 py-2 rounded-xl text-xs font-bold transition-all active:scale-95 ${
                isSaved
                  ? 'bg-blue-600 text-white shadow-sm'
                  : 'bg-white border border-slate-200 text-slate-600 hover:border-blue-300 hover:text-blue-600'
              }`}
            >
              {isSaved ? (
                <><BookmarkCheck size={13} /> Saved</>
              ) : (
                <><Bookmark size={13} /> Save</>
              )}
            </button>
          </div>

          <div className="flex items-start gap-2">
            <div className="flex-shrink-0 w-1 self-stretch rounded-full bg-blue-500 mt-0.5" />
            <p className="text-sm text-slate-700 leading-relaxed font-medium">{answer.directExplanation}</p>
          </div>
        </div>

        <div className="px-5 py-4 border-b border-slate-100">
          <h3 className="text-[11px] font-black uppercase tracking-widest text-slate-400 mb-3">Key Points</h3>
          <div className="space-y-2">
            {answer.keyPoints.map((point, i) => (
              <div key={i} className="flex items-start gap-2.5">
                <span className="flex-shrink-0 w-5 h-5 rounded-full bg-blue-600 text-white text-[10px] font-black flex items-center justify-center mt-0.5">
                  {i + 1}
                </span>
                <p className="text-sm text-slate-700 leading-relaxed">{point}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="px-5 py-4 border-b border-slate-100">
          <h3 className="text-[11px] font-black uppercase tracking-widest text-slate-400 mb-3">Detailed Breakdown</h3>
          <div className="space-y-2">
            {answer.breakdown.map((section, i) => (
              <BreakdownCard key={i} section={section} index={i} />
            ))}
          </div>
        </div>

        {answer.example && (
          <div className="px-5 py-4 border-b border-slate-100">
            <h3 className="text-[11px] font-black uppercase tracking-widest text-slate-400 mb-3">Worked Example</h3>
            <div
              className="rounded-xl p-4 text-sm text-slate-700 leading-relaxed"
              style={{ background: 'linear-gradient(135deg, #fffbeb 0%, #fff7ed 50%, #fffbeb 100%)', border: '1px solid rgba(251,191,36,0.25)' }}
            >
              <div className="flex items-center gap-2 mb-2">
                <Lightbulb size={13} className="text-amber-500 flex-shrink-0" />
                <span className="text-[10px] font-black text-amber-700 uppercase tracking-wider">Example</span>
              </div>
              {answer.example}
            </div>
          </div>
        )}

        <div className="px-5 py-4 border-b border-slate-100">
          <h3 className="text-[11px] font-black uppercase tracking-widest text-slate-400 mb-3">Summary</h3>
          <div
            className="rounded-xl p-4"
            style={{ background: 'linear-gradient(135deg, #f0fdf4 0%, #f8fafc 100%)', border: '1px solid rgba(134,239,172,0.3)' }}
          >
            <p className="text-sm text-slate-700 leading-relaxed">{answer.summary}</p>
          </div>
        </div>

        {answer.relatedTopics.length > 0 && (
          <div className="px-5 py-4">
            <h3 className="text-[11px] font-black uppercase tracking-widest text-slate-400 mb-3">Related Topics</h3>
            <div className="flex flex-wrap gap-2">
              {answer.relatedTopics.map((topic, i) => (
                <span
                  key={i}
                  className="text-xs font-semibold px-2.5 py-1 rounded-lg bg-slate-100 text-slate-600 border border-slate-200 hover:bg-blue-50 hover:border-blue-200 hover:text-blue-700 transition-colors cursor-default"
                >
                  {topic}
                </span>
              ))}
            </div>
          </div>
        )}
      </div>

      <div className="mt-3 px-2">
        <p className="text-[10px] text-slate-400 text-center">
          Answer generated from WASCCEScience academic knowledge base · Query: "{query}"
        </p>
      </div>
    </div>
  );
}

function SavedCard({
  item,
  onOpen,
  onDelete,
}: {
  item: SavedResearch;
  onOpen: (item: SavedResearch) => void;
  onDelete: (id: string) => void;
}) {
  return (
    <div className="bg-white rounded-xl border border-slate-200 p-4 flex items-start gap-3 group hover:border-blue-200 hover:shadow-sm transition-all duration-150">
      <div className="flex-shrink-0 w-9 h-9 bg-blue-50 rounded-xl flex items-center justify-center border border-blue-100">
        <BookOpen size={15} className="text-blue-600" />
      </div>
      <div className="flex-1 min-w-0">
        <p className="font-bold text-slate-800 text-sm leading-tight truncate">{item.answer_title}</p>
        <p className="text-xs text-slate-500 mt-0.5 italic truncate">"{item.query}"</p>
        <p className="text-xs text-slate-400 mt-1 line-clamp-2 leading-relaxed">{item.answer_preview}</p>
        <div className="flex items-center gap-2 mt-2">
          <Clock size={10} className="text-slate-300" />
          <span className="text-[10px] text-slate-400">
            {new Date(item.created_at).toLocaleDateString('en-GB', { day: 'numeric', month: 'short', year: 'numeric' })}
          </span>
        </div>
      </div>
      <div className="flex flex-col gap-1.5 flex-shrink-0 opacity-0 group-hover:opacity-100 transition-opacity">
        <button
          onClick={() => onOpen(item)}
          className="p-1.5 rounded-lg bg-blue-50 text-blue-600 hover:bg-blue-100 transition-colors"
          title="Open"
        >
          <ChevronRight size={13} />
        </button>
        <button
          onClick={() => onDelete(item.id)}
          className="p-1.5 rounded-lg bg-red-50 text-red-400 hover:bg-red-100 transition-colors"
          title="Delete"
        >
          <Trash2 size={13} />
        </button>
      </div>
      <button
        onClick={() => onOpen(item)}
        className="absolute inset-0 sm:hidden"
        aria-label="Open saved research"
      />
    </div>
  );
}

type Tab = 'search' | 'saved';

interface ResearchEngineProps {
  onNavigate?: (page: Page) => void;
}

export default function ResearchEngine({ onNavigate }: ResearchEngineProps) {
  const { user, profile } = useAuth();
  const [tab, setTab] = useState<Tab>('search');
  const [query, setQuery] = useState('');
  const [inputValue, setInputValue] = useState('');
  const [answer, setAnswer] = useState<ResearchAnswer | null>(null);
  const [searching, setSearching] = useState(false);
  const [savedResearch, setSavedResearch] = useState<SavedResearch[]>([]);
  const [savedIds, setSavedIds] = useState<Set<string>>(new Set());
  const [saving, setSaving] = useState(false);
  const [loadingSaved, setLoadingSaved] = useState(false);
  const [activeQueryKey, setActiveQueryKey] = useState<string | null>(null);
  const inputRef = useRef<HTMLInputElement>(null);
  const searchTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    if (user) loadSavedResearch();
  }, [user]);

  const loadSavedResearch = useCallback(async () => {
    if (!user) return;
    setLoadingSaved(true);
    const cached = cacheGet<SavedResearch[]>(`research:saved:${user.id}`, TTL.short);
    if (cached) {
      setSavedResearch(cached);
      setSavedIds(new Set(cached.map(r => buildAnswerKey(r.answer_title, r.query))));
      setLoadingSaved(false);
      return;
    }
    const { data } = await supabase
      .from('saved_research')
      .select('*')
      .eq('user_id', user.id)
      .order('created_at', { ascending: false })
      .limit(50);
    const list = (data as SavedResearch[] | null) || [];
    cacheSet(`research:saved:${user.id}`, list);
    setSavedResearch(list);
    setSavedIds(new Set(list.map(r => buildAnswerKey(r.answer_title, r.query))));
    setLoadingSaved(false);
  }, [user]);

  const mountedRef = useRef(true);
  useEffect(() => {
    mountedRef.current = true;
    return () => {
      mountedRef.current = false;
      if (searchTimerRef.current) clearTimeout(searchTimerRef.current);
    };
  }, []);

  function buildAnswerKey(title: string, q: string): string {
    return `${title}::${q}`;
  }

  const performSearch = useCallback((q: string) => {
    if (!q.trim()) return;
    const trimmed = q.trim();
    setSearching(true);
    setAnswer(null);

    const cached = cacheGet<ResearchAnswer>(`research:q:${trimmed.toLowerCase()}`, TTL.long);
    if (cached) {
      if (!mountedRef.current) return;
      setAnswer(cached);
      setQuery(trimmed);
      setActiveQueryKey(buildAnswerKey(cached.title, trimmed));
      setSearching(false);
      return;
    }

    if (searchTimerRef.current) clearTimeout(searchTimerRef.current);
    searchTimerRef.current = setTimeout(() => {
      if (!mountedRef.current) return;
      const results = searchKnowledge(trimmed);
      const built = buildCompositeAnswer(results, trimmed) || getFallbackAnswer(trimmed);
      cacheSet(`research:q:${trimmed.toLowerCase()}`, built);
      setAnswer(built);
      setQuery(trimmed);
      setActiveQueryKey(buildAnswerKey(built.title, trimmed));
      setSearching(false);
    }, 180);
  }, []);

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!inputValue.trim()) return;
    performSearch(inputValue);
  }

  function handleSuggestion(q: string) {
    setInputValue(q);
    performSearch(q);
    inputRef.current?.focus();
  }

  async function handleSave() {
    if (!answer || !user) return;
    setSaving(true);
    const key = buildAnswerKey(answer.title, query);
    const preview = answer.directExplanation.slice(0, 180) + (answer.directExplanation.length > 180 ? '…' : '');
    const { data, error } = await supabase.from('saved_research').insert({
      user_id: user.id,
      query,
      answer_title: answer.title,
      answer_preview: preview,
      answer_data: answer as unknown as Record<string, unknown>,
    }).select().maybeSingle();
    if (!error && data) {
      const newItem = data as SavedResearch;
      setSavedResearch(prev => [newItem, ...prev]);
      setSavedIds(prev => new Set([...prev, key]));
      cacheSet(`research:saved:${user.id}`, [newItem, ...savedResearch]);
    }
    setSaving(false);
  }

  async function handleUnsave() {
    if (!answer || !user || !activeQueryKey) return;
    const target = savedResearch.find(r => buildAnswerKey(r.answer_title, r.query) === activeQueryKey);
    if (!target) return;
    setSaving(true);
    await supabase.from('saved_research').delete().eq('id', target.id).eq('user_id', user.id);
    const updated = savedResearch.filter(r => r.id !== target.id);
    setSavedResearch(updated);
    setSavedIds(prev => { const s = new Set(prev); s.delete(activeQueryKey); return s; });
    cacheSet(`research:saved:${user.id}`, updated);
    setSaving(false);
  }

  async function handleDeleteSaved(id: string) {
    if (!user) return;
    await supabase.from('saved_research').delete().eq('id', id).eq('user_id', user.id);
    const updated = savedResearch.filter(r => r.id !== id);
    setSavedResearch(updated);
    cacheSet(`research:saved:${user.id}`, updated);
  }

  function handleOpenSaved(item: SavedResearch) {
    const restored = item.answer_data as ResearchAnswer;
    setAnswer(restored);
    setQuery(item.query);
    setInputValue(item.query);
    setActiveQueryKey(buildAnswerKey(item.answer_title, item.query));
    setTab('search');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  function handleClear() {
    setAnswer(null);
    setQuery('');
    setInputValue('');
    setActiveQueryKey(null);
    inputRef.current?.focus();
  }

  const isSaved = activeQueryKey ? savedIds.has(activeQueryKey) : false;
  const hasSaved = savedResearch.length > 0;

  return (
    <div className="min-h-screen">
      <div className="max-w-2xl mx-auto">

        <div className="mb-6">
          <div className="flex items-center gap-3 mb-1">
            {onNavigate && (
              <button
                onClick={() => onNavigate('dashboard')}
                className="flex-shrink-0 flex items-center justify-center w-8 h-8 rounded-xl hover:bg-slate-100 text-slate-500 hover:text-slate-800 transition-all active:scale-95"
                aria-label="Back to dashboard"
              >
                <ArrowLeft size={18} />
              </button>
            )}
            <div className="flex-shrink-0 w-10 h-10 rounded-2xl bg-gradient-to-br from-blue-600 to-blue-700 flex items-center justify-center shadow-sm">
              <Search size={18} className="text-white" />
            </div>
            <div>
              <h1 className="text-xl font-black text-slate-900 leading-tight">Research</h1>
              <p className="text-xs text-slate-500 mt-0.5">Ask any WASSCE academic question</p>
            </div>
          </div>
        </div>

        <div className="flex gap-1 p-1 bg-slate-100 rounded-xl mb-5">
          <button
            onClick={() => setTab('search')}
            className={`flex-1 flex items-center justify-center gap-2 py-2 px-3 rounded-lg text-sm font-bold transition-all duration-200 ${
              tab === 'search'
                ? 'bg-white text-slate-900 shadow-sm'
                : 'text-slate-500 hover:text-slate-700'
            }`}
          >
            <Search size={13} />
            Ask a Question
          </button>
          <button
            onClick={() => { setTab('saved'); loadSavedResearch(); }}
            className={`flex-1 flex items-center justify-center gap-2 py-2 px-3 rounded-lg text-sm font-bold transition-all duration-200 ${
              tab === 'saved'
                ? 'bg-white text-slate-900 shadow-sm'
                : 'text-slate-500 hover:text-slate-700'
            }`}
          >
            <Bookmark size={13} />
            Saved
            {hasSaved && (
              <span className="ml-0.5 min-w-[18px] h-[18px] flex items-center justify-center text-[10px] font-black bg-blue-600 text-white rounded-full px-1">
                {savedResearch.length > 99 ? '99+' : savedResearch.length}
              </span>
            )}
          </button>
        </div>

        {tab === 'search' && (
          <div>
            <form onSubmit={handleSubmit} className="mb-5">
              <div className="relative">
                <div className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400">
                  <Search size={17} />
                </div>
                <input
                  ref={inputRef}
                  type="text"
                  value={inputValue}
                  onChange={e => setInputValue(e.target.value)}
                  placeholder="Ask any academic question…"
                  className="w-full pl-11 pr-24 py-3.5 bg-white border border-slate-200 rounded-xl text-sm text-slate-900 placeholder-slate-400 outline-none focus:ring-2 focus:ring-blue-500/20 focus:border-blue-400 transition-all shadow-sm"
                  autoComplete="off"
                  autoCorrect="off"
                  spellCheck={false}
                />
                <div className="absolute right-2 top-1/2 -translate-y-1/2 flex items-center gap-1">
                  {inputValue && (
                    <button
                      type="button"
                      onClick={handleClear}
                      className="p-1.5 rounded-lg text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition-colors"
                    >
                      <X size={13} />
                    </button>
                  )}
                  <button
                    type="submit"
                    disabled={!inputValue.trim() || searching}
                    className="px-3 py-1.5 bg-blue-600 text-white text-xs font-bold rounded-lg hover:bg-blue-700 disabled:opacity-50 disabled:cursor-not-allowed transition-all active:scale-95 shadow-sm"
                  >
                    {searching ? (
                      <span className="flex items-center gap-1.5">
                        <span className="w-3 h-3 border border-white border-t-transparent rounded-full animate-spin" />
                        Looking…
                      </span>
                    ) : 'Search'}
                  </button>
                </div>
              </div>
            </form>

            {!answer && !searching && (
              <div>
                <div
                  className="rounded-2xl p-5 mb-5"
                  style={{ background: 'linear-gradient(135deg, #eff6ff 0%, #f0fdf4 100%)', border: '1px solid rgba(219,234,254,0.8)' }}
                >
                  <div className="flex items-center gap-2 mb-3">
                    <Zap size={14} className="text-blue-600" />
                    <span className="text-xs font-black text-slate-700 uppercase tracking-wider">Try these questions</span>
                  </div>
                  <div className="flex flex-wrap gap-2">
                    {SUGGESTED_QUERIES.slice(0, 8).map((q, i) => (
                      <button
                        key={i}
                        onClick={() => handleSuggestion(q)}
                        className="text-xs font-medium px-3 py-1.5 bg-white border border-slate-200 rounded-full text-slate-700 hover:border-blue-300 hover:text-blue-700 hover:bg-blue-50 transition-all active:scale-95 shadow-sm"
                      >
                        {q}
                      </button>
                    ))}
                  </div>
                </div>

                <div className="grid grid-cols-2 gap-3 mb-5">
                  {[
                    { label: 'Biology', topics: 'Cells, Genetics, Ecology', color: 'bg-green-50 border-green-200', textColor: 'text-green-700', count: '6 topics' },
                    { label: 'Chemistry', topics: 'Bonding, Reactions, Organic', color: 'bg-orange-50 border-orange-200', textColor: 'text-orange-700', count: '5 topics' },
                    { label: 'Physics', topics: 'Mechanics, Waves, Circuits', color: 'bg-blue-50 border-blue-200', textColor: 'text-blue-700', count: '4 topics' },
                    { label: 'Mathematics', topics: 'Algebra, Trigonometry, Stats', color: 'bg-violet-50 border-violet-200', textColor: 'text-violet-700', count: '4 topics' },
                  ].map(sub => (
                    <button
                      key={sub.label}
                      onClick={() => handleSuggestion(`Explain ${sub.label} core concepts`)}
                      className={`p-3 rounded-xl border ${sub.color} text-left transition-all hover:shadow-sm active:scale-[0.98]`}
                    >
                      <span className={`text-xs font-black ${sub.textColor} block mb-0.5`}>{sub.label}</span>
                      <span className="text-[10px] text-slate-500 leading-tight">{sub.topics}</span>
                    </button>
                  ))}
                </div>

                <div className="rounded-xl border border-slate-200 bg-white p-4">
                  <div className="flex items-center gap-2 mb-2">
                    <BookOpen size={13} className="text-slate-400" />
                    <span className="text-[11px] font-black uppercase tracking-widest text-slate-400">More suggested topics</span>
                  </div>
                  <div className="space-y-1">
                    {SUGGESTED_QUERIES.slice(8).map((q, i) => (
                      <button
                        key={i}
                        onClick={() => handleSuggestion(q)}
                        className="w-full text-left flex items-center gap-2 py-1.5 px-2 rounded-lg hover:bg-slate-50 transition-colors group"
                      >
                        <ChevronRight size={12} className="text-slate-300 group-hover:text-blue-500 flex-shrink-0 transition-colors" />
                        <span className="text-sm text-slate-600 group-hover:text-slate-900 transition-colors">{q}</span>
                      </button>
                    ))}
                  </div>
                </div>
              </div>
            )}

            {searching && (
              <div className="flex flex-col items-center justify-center py-16 gap-4">
                <div className="relative">
                  <div className="w-14 h-14 rounded-2xl bg-blue-600 flex items-center justify-center shadow-lg">
                    <Search size={24} className="text-white" />
                  </div>
                  <div className="absolute -inset-2 rounded-2xl border-2 border-blue-200 animate-ping opacity-40" />
                </div>
                <div className="text-center">
                  <p className="text-sm font-semibold text-slate-700">Searching knowledge base…</p>
                  <p className="text-xs text-slate-400 mt-1">Analysing and structuring your answer</p>
                </div>
                <div className="flex gap-1.5">
                  {[0, 1, 2].map(i => (
                    <div
                      key={i}
                      className="w-2 h-2 rounded-full bg-blue-400"
                      style={{ animation: `bounce 1s ease-in-out infinite ${i * 0.15}s` }}
                    />
                  ))}
                </div>
              </div>
            )}

            {answer && !searching && (
              <div>
                <div className="flex items-center justify-between mb-4">
                  <div className="flex items-center gap-2">
                    <span className="text-xs text-slate-400">Result for:</span>
                    <span className="text-xs font-bold text-slate-700 bg-slate-100 px-2 py-0.5 rounded-full max-w-[200px] truncate">"{query}"</span>
                  </div>
                  <button
                    onClick={handleClear}
                    className="flex items-center gap-1.5 text-xs text-slate-500 hover:text-slate-700 transition-colors"
                  >
                    <RotateCcw size={12} />
                    New search
                  </button>
                </div>
                <AnswerDisplay
                  answer={answer}
                  query={query}
                  isSaved={isSaved}
                  onSave={handleSave}
                  onUnsave={handleUnsave}
                  saving={saving}
                />
              </div>
            )}
          </div>
        )}

        {tab === 'saved' && (
          <div>
            {!user && (
              <div className="flex flex-col items-center justify-center py-16 text-center gap-4">
                <div className="w-14 h-14 rounded-2xl bg-slate-100 flex items-center justify-center">
                  <Bookmark size={24} className="text-slate-400" />
                </div>
                <div>
                  <p className="font-bold text-slate-700 mb-1">Sign in to save research</p>
                  <p className="text-sm text-slate-500">Create a free account to save and revisit your research answers anytime.</p>
                </div>
              </div>
            )}

            {user && loadingSaved && (
              <div className="space-y-3">
                {[1, 2, 3].map(i => (
                  <div key={i} className="bg-white rounded-xl border border-slate-200 p-4 animate-pulse">
                    <div className="flex gap-3">
                      <div className="w-9 h-9 bg-slate-100 rounded-xl flex-shrink-0" />
                      <div className="flex-1 space-y-2">
                        <div className="h-4 bg-slate-100 rounded-full w-3/4" />
                        <div className="h-3 bg-slate-100 rounded-full w-1/2" />
                        <div className="h-3 bg-slate-100 rounded-full w-5/6" />
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            )}

            {user && !loadingSaved && savedResearch.length === 0 && (
              <div className="flex flex-col items-center justify-center py-16 text-center gap-4">
                <div className="w-14 h-14 rounded-2xl bg-slate-100 flex items-center justify-center">
                  <Bookmark size={24} className="text-slate-400" />
                </div>
                <div>
                  <p className="font-bold text-slate-700 mb-1">No saved research yet</p>
                  <p className="text-sm text-slate-500">Ask a question and save the answer to revisit it anytime.</p>
                </div>
                <button
                  onClick={() => setTab('search')}
                  className="px-4 py-2 bg-blue-600 text-white text-sm font-bold rounded-xl hover:bg-blue-700 transition-colors active:scale-95"
                >
                  Ask a Question
                </button>
              </div>
            )}

            {user && !loadingSaved && savedResearch.length > 0 && (
              <div>
                <div className="flex items-center justify-between mb-4">
                  <p className="text-xs font-bold text-slate-500 uppercase tracking-wider">
                    {savedResearch.length} saved {savedResearch.length === 1 ? 'answer' : 'answers'}
                  </p>
                </div>
                <div className="space-y-3">
                  {savedResearch.map(item => (
                    <div key={item.id} className="relative">
                      <SavedCard
                        item={item}
                        onOpen={handleOpenSaved}
                        onDelete={handleDeleteSaved}
                      />
                    </div>
                  ))}
                </div>
              </div>
            )}
          </div>
        )}
      </div>

      <style>{`
        @keyframes bounce {
          0%, 100% { transform: translateY(0); opacity: 0.5; }
          50% { transform: translateY(-6px); opacity: 1; }
        }
        @keyframes fade-in {
          from { opacity: 0; transform: translateY(8px); }
          to { opacity: 1; transform: translateY(0); }
        }
        .animate-fade-in {
          animation: fade-in 0.25s ease-out forwards;
        }
      `}</style>
    </div>
  );
}
