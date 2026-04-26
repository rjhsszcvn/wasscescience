import { useState, useEffect, useRef, useCallback } from 'react';
import { Send, MessageCircle, Users, Crown, Lock, Sparkles, Smile, ChevronDown, Trash2, Globe } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { ChatMessage, Page } from '../../lib/types';
import { cacheGet, cacheSet, cacheGetStale, TTL } from '../../lib/cache';

const COUNTRY_FLAGS: Record<string, string> = {
  'Sierra Leone': '🇸🇱',
  'Nigeria': '🇳🇬',
  'Ghana': '🇬🇭',
  'Liberia': '🇱🇷',
  'Gambia': '🇬🇲',
};

const COUNTRY_COLORS: Record<string, { bg: string; ring: string; badge: string }> = {
  'Sierra Leone': { bg: 'from-green-600 to-green-800', ring: 'ring-green-500', badge: 'bg-green-100 text-green-700' },
  'Nigeria': { bg: 'from-green-600 to-emerald-800', ring: 'ring-emerald-500', badge: 'bg-emerald-100 text-emerald-700' },
  'Ghana': { bg: 'from-yellow-500 to-red-700', ring: 'ring-yellow-500', badge: 'bg-yellow-100 text-yellow-700' },
  'Liberia': { bg: 'from-red-600 to-red-800', ring: 'ring-red-500', badge: 'bg-red-100 text-red-700' },
  'Gambia': { bg: 'from-blue-600 to-red-700', ring: 'ring-blue-500', badge: 'bg-blue-100 text-blue-700' },
};

const PAGE_SIZE = 40;
const MAX_MESSAGES = 200;

const EMOJI_LIST = ['😊','😂','🤔','👍','❤️','🔥','✅','📚','🧠','💪','🎯','🙏','😅','😭','💯','🤣','😍','🥰','😎','🤓'];

interface StudyLoungeProps {
  onNavigate: (page: Page) => void;
}

function Avatar({ name, avatarUrl, size = 'md' }: { name: string; avatarUrl: string | null; size?: 'sm' | 'md' }) {
  const [imgError, setImgError] = useState(false);
  const dim = size === 'sm' ? 'w-7 h-7 text-[11px]' : 'w-9 h-9 text-sm';
  if (avatarUrl && !imgError) {
    return (
      <img
        src={avatarUrl}
        alt={name}
        className={`${dim} rounded-full object-cover flex-shrink-0 ring-2 ring-white shadow-sm`}
        onError={() => setImgError(true)}
      />
    );
  }
  return (
    <div className={`${dim} rounded-full bg-gradient-to-br from-blue-500 to-blue-700 flex items-center justify-center text-white font-black flex-shrink-0 ring-2 ring-white shadow-sm`}>
      {name?.[0]?.toUpperCase() || 'S'}
    </div>
  );
}

function formatTime(iso: string) {
  const d = new Date(iso);
  const now = new Date();
  const isToday = d.toDateString() === now.toDateString();
  if (isToday) {
    return d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
  }
  return d.toLocaleDateString([], { month: 'short', day: 'numeric' }) + ' ' + d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
}

function formatDateDivider(iso: string) {
  const d = new Date(iso);
  const now = new Date();
  const yesterday = new Date(now);
  yesterday.setDate(yesterday.getDate() - 1);
  if (d.toDateString() === now.toDateString()) return 'Today';
  if (d.toDateString() === yesterday.toDateString()) return 'Yesterday';
  return d.toLocaleDateString([], { weekday: 'long', month: 'long', day: 'numeric' });
}

function shouldShowDateDivider(current: ChatMessage, prev: ChatMessage | undefined) {
  if (!prev) return true;
  return new Date(current.created_at).toDateString() !== new Date(prev.created_at).toDateString();
}

export default function StudyLounge({ onNavigate }: StudyLoungeProps) {
  const { profile, isPremium } = useAuth();
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [input, setInput] = useState('');
  const [sending, setSending] = useState(false);
  const [loading, setLoading] = useState(true);
  const [onlineCount, setOnlineCount] = useState(1);
  const [showEmoji, setShowEmoji] = useState(false);
  const [showScrollDown, setShowScrollDown] = useState(false);
  const [deleteTarget, setDeleteTarget] = useState<string | null>(null);

  const messagesEndRef = useRef<HTMLDivElement>(null);
  const messagesContainerRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);
  const channelRef = useRef<ReturnType<typeof supabase.channel> | null>(null);
  const presenceChannelRef = useRef<ReturnType<typeof supabase.channel> | null>(null);

  const country = profile?.country || 'Ghana';
  const flag = COUNTRY_FLAGS[country] || '🌍';
  const colors = COUNTRY_COLORS[country] || COUNTRY_COLORS['Ghana'];
  const canAccess = isPremium;

  const scrollToBottom = useCallback((smooth = false) => {
    messagesEndRef.current?.scrollIntoView({ behavior: smooth ? 'smooth' : 'auto' });
  }, []);

  const handleScroll = useCallback(() => {
    const el = messagesContainerRef.current;
    if (!el) return;
    const distanceFromBottom = el.scrollHeight - el.scrollTop - el.clientHeight;
    setShowScrollDown(distanceFromBottom > 150);
  }, []);

  useEffect(() => {
    if (!profile?.country || !canAccess) return;
    loadMessages();
    subscribeToMessages();
    subscribePresence();
    return () => {
      if (channelRef.current) supabase.removeChannel(channelRef.current);
      if (presenceChannelRef.current) supabase.removeChannel(presenceChannelRef.current);
    };
  }, [profile?.country, canAccess]);

  async function loadMessages() {
    const cacheKey = `lounge:${country}`;
    const stale = cacheGetStale<ChatMessage[]>(cacheKey);
    if (stale && stale.length > 0) {
      setMessages(stale);
      setLoading(false);
      setTimeout(() => scrollToBottom(false), 30);
    } else {
      setLoading(true);
    }
    const fresh = cacheGet<ChatMessage[]>(cacheKey, TTL.short);
    if (fresh) {
      setLoading(false);
      return;
    }
    const { data } = await supabase
      .from('country_chat_messages')
      .select('*')
      .eq('country', country)
      .order('created_at', { ascending: false })
      .limit(PAGE_SIZE);
    if (data) {
      const sorted = data.reverse();
      cacheSet(cacheKey, sorted);
      setMessages(sorted);
      setTimeout(() => scrollToBottom(false), 30);
    }
    setLoading(false);
  }

  function subscribeToMessages() {
    const ch = supabase
      .channel(`lounge:${country}`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'country_chat_messages',
          filter: `country=eq.${country}`,
        },
        (payload) => {
          const newMsg = payload.new as ChatMessage;
          setMessages(prev => {
            if (prev.find(m => m.id === newMsg.id)) return prev;
            const updated = [...prev, newMsg].slice(-MAX_MESSAGES);
            cacheSet(`lounge:${country}`, updated);
            return updated;
          });
          const el = messagesContainerRef.current;
          if (el) {
            const distanceFromBottom = el.scrollHeight - el.scrollTop - el.clientHeight;
            if (distanceFromBottom < 200 || newMsg.user_id === profile?.id) {
              setTimeout(() => scrollToBottom(true), 60);
            }
          }
        }
      )
      .on(
        'postgres_changes',
        {
          event: 'DELETE',
          schema: 'public',
          table: 'country_chat_messages',
          filter: `country=eq.${country}`,
        },
        (payload) => {
          setMessages(prev => prev.filter(m => m.id !== payload.old.id));
        }
      )
      .subscribe();
    channelRef.current = ch;
  }

  function subscribePresence() {
    const presenceCh = supabase.channel(`presence:lounge:${country}`, {
      config: { presence: { key: profile?.id || 'anon' } },
    });
    presenceCh
      .on('presence', { event: 'sync' }, () => {
        const state = presenceCh.presenceState();
        setOnlineCount(Object.keys(state).length);
      })
      .subscribe(async (status) => {
        if (status === 'SUBSCRIBED') {
          await presenceCh.track({ user_id: profile?.id, name: profile?.display_name });
        }
      });
    presenceChannelRef.current = presenceCh;
  }

  async function sendMessage() {
    if (!input.trim() || sending || !profile) return;
    const text = input.trim();
    setInput('');
    setSending(true);
    setShowEmoji(false);

    const optimisticId = `optimistic:${Date.now()}`;
    const optimisticMsg: ChatMessage = {
      id: optimisticId,
      country,
      user_id: profile.id,
      display_name: profile.display_name || 'Student',
      avatar_url: profile.avatar_url || null,
      content: text,
      created_at: new Date().toISOString(),
    };
    setMessages(prev => {
      const updated = [...prev, optimisticMsg].slice(-MAX_MESSAGES);
      cacheSet(`lounge:${country}`, updated);
      return updated;
    });
    setTimeout(() => scrollToBottom(true), 30);

    const { data } = await supabase.from('country_chat_messages').insert({
      country,
      user_id: profile.id,
      display_name: profile.display_name || 'Student',
      avatar_url: profile.avatar_url || null,
      content: text,
    }).select().single();

    setMessages(prev => {
      const without = prev.filter(m => m.id !== optimisticId);
      const updated = data ? [...without, data as ChatMessage] : without;
      cacheSet(`lounge:${country}`, updated);
      return updated;
    });

    setSending(false);
    inputRef.current?.focus();
  }

  async function deleteMessage(id: string) {
    setDeleteTarget(null);
    await supabase.from('country_chat_messages').delete().eq('id', id).eq('user_id', profile!.id);
  }

  function handleKeyDown(e: React.KeyboardEvent<HTMLTextAreaElement>) {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      sendMessage();
    }
  }

  function addEmoji(emoji: string) {
    setInput(prev => prev + emoji);
    inputRef.current?.focus();
  }

  if (!canAccess) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] px-4 text-center">
        <div className="w-20 h-20 rounded-3xl bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center mb-5 shadow-lg">
          <Lock size={32} className="text-white" />
        </div>
        <h2 className="text-2xl font-black text-slate-800 mb-2">Study Lounge</h2>
        <p className="text-slate-500 max-w-xs mb-6 text-sm leading-relaxed">
          Real-time group chat for students in your country. Chat, share tips, and study together — exclusively for premium members.
        </p>
        <button
          onClick={() => onNavigate('premium')}
          className="flex items-center gap-2 px-6 py-3 rounded-2xl bg-gradient-to-r from-amber-500 to-orange-500 text-white font-black shadow-lg hover:shadow-xl transition-all active:scale-95"
        >
          <Crown size={18} />
          Unlock Premium Access
        </button>
      </div>
    );
  }

  return (
    <div className="flex flex-col flex-1 overflow-hidden py-3 w-full lg:max-w-[900px] lg:mx-auto">
      <div className={`rounded-2xl bg-gradient-to-r ${colors.bg} px-4 py-3 mb-2 flex items-center justify-between shadow-md flex-shrink-0`}>
        <div className="flex items-center gap-3">
          <div className="text-3xl">{flag}</div>
          <div>
            <div className="flex items-center gap-1.5">
              <h1 className="text-white font-black text-base leading-tight">Study Lounge</h1>
              <span className="text-[10px] font-black text-white/80 bg-white/20 px-1.5 py-0.5 rounded-full uppercase tracking-wide flex items-center gap-0.5">
                <Sparkles size={8} />
                Premium
              </span>
            </div>
            <p className="text-white/70 text-xs font-medium mt-0.5">{country} Student Room</p>
          </div>
        </div>
        <div className="flex items-center gap-1.5 bg-white/20 rounded-xl px-2.5 py-1.5">
          <span className="w-2 h-2 rounded-full bg-green-400 animate-pulse" />
          <Users size={12} className="text-white/90" />
          <span className="text-white/90 text-xs font-bold">{onlineCount}</span>
        </div>
      </div>

      <div
        ref={messagesContainerRef}
        onScroll={handleScroll}
        className="flex-1 min-h-0 overflow-y-auto overscroll-contain space-y-1 px-1 pb-2"
        style={{ scrollbarWidth: 'thin' }}
      >
        {loading ? (
          <div className="flex items-center justify-center h-40">
            <div className="w-6 h-6 border-2 border-blue-500 border-t-transparent rounded-full animate-spin" />
          </div>
        ) : messages.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-40 text-center px-6">
            <MessageCircle size={32} className="text-slate-300 mb-3" />
            <p className="text-slate-500 font-semibold text-sm">No messages yet</p>
            <p className="text-slate-400 text-xs mt-1">Be the first to say hi to {country} students!</p>
          </div>
        ) : (
          <>
            {messages.map((msg, idx) => {
              const prev = messages[idx - 1];
              const isMine = msg.user_id === profile?.id;
              const showDivider = shouldShowDateDivider(msg, prev);
              const showAvatar = !isMine && (idx === 0 || prev?.user_id !== msg.user_id || shouldShowDateDivider(msg, prev));
              const isFirstInGroup = idx === 0 || prev?.user_id !== msg.user_id || shouldShowDateDivider(msg, prev);

              return (
                <div key={msg.id}>
                  {showDivider && (
                    <div className="flex items-center justify-center my-3">
                      <span className="text-[11px] text-slate-400 font-semibold bg-slate-100 px-3 py-0.5 rounded-full">
                        {formatDateDivider(msg.created_at)}
                      </span>
                    </div>
                  )}
                  <div className={`flex items-end gap-1.5 w-full ${isMine ? 'justify-end' : 'justify-start'} ${isFirstInGroup ? 'mt-2' : 'mt-0.5'}`}>
                    {!isMine && (
                      <div className="w-8 flex-shrink-0 flex justify-center">
                        {showAvatar && <Avatar name={msg.display_name} avatarUrl={msg.avatar_url} size="sm" />}
                      </div>
                    )}
                    <div className={`group relative max-w-[75%] flex flex-col ${isMine ? 'items-end' : 'items-start'}`}>
                      {!isMine && isFirstInGroup && (
                        <span className="text-[11px] font-bold text-slate-500 mb-0.5 ml-1">{msg.display_name}</span>
                      )}
                      <div className="relative flex items-end gap-1">
                        {isMine && (
                          <button
                            onClick={() => setDeleteTarget(msg.id)}
                            className="opacity-0 group-hover:opacity-100 transition-opacity p-1 rounded-full hover:bg-red-50 text-red-400 mb-1 flex-shrink-0"
                          >
                            <Trash2 size={11} />
                          </button>
                        )}
                        <div
                          className={`px-3 py-2 rounded-2xl text-sm leading-relaxed shadow-sm ${
                            isMine
                              ? 'bg-blue-600 text-white rounded-br-md'
                              : 'bg-white text-slate-800 rounded-bl-md border border-slate-100'
                          }`}
                          style={{ wordBreak: 'break-word', maxWidth: '100%' }}
                        >
                          {msg.content}
                        </div>
                      </div>
                      <span className={`text-[10px] text-slate-400 mt-0.5 ${isMine ? 'mr-1' : 'ml-1'}`}>
                        {formatTime(msg.created_at)}
                      </span>
                    </div>
                  </div>
                </div>
              );
            })}
            <div ref={messagesEndRef} />
          </>
        )}
      </div>

      {showScrollDown && (
        <div className="flex justify-center -mt-1 mb-1">
          <button
            onClick={() => scrollToBottom(true)}
            className="flex items-center gap-1 bg-blue-600 text-white text-xs font-bold px-3 py-1 rounded-full shadow-md hover:bg-blue-700 transition-all"
          >
            <ChevronDown size={12} />
            New messages
          </button>
        </div>
      )}

      {deleteTarget && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 backdrop-blur-sm px-4" onClick={() => setDeleteTarget(null)}>
          <div className="bg-white rounded-2xl p-5 max-w-xs w-full shadow-xl" onClick={e => e.stopPropagation()}>
            <h3 className="font-black text-slate-800 text-base mb-2">Delete message?</h3>
            <p className="text-slate-500 text-sm mb-4">This will remove your message for everyone in the room.</p>
            <div className="flex gap-2">
              <button onClick={() => setDeleteTarget(null)} className="flex-1 py-2 rounded-xl border border-slate-200 text-slate-600 font-semibold text-sm">Cancel</button>
              <button onClick={() => deleteMessage(deleteTarget)} className="flex-1 py-2 rounded-xl bg-red-500 text-white font-black text-sm">Delete</button>
            </div>
          </div>
        </div>
      )}

      <div className="relative flex-shrink-0">
        {showEmoji && (
          <div className="absolute bottom-full left-0 mb-2 bg-white border border-slate-200 rounded-2xl shadow-xl p-2 flex flex-wrap gap-1 max-w-[280px] z-30">
            {EMOJI_LIST.map(emoji => (
              <button key={emoji} onClick={() => addEmoji(emoji)} className="text-xl hover:scale-125 transition-transform active:scale-95 p-0.5">
                {emoji}
              </button>
            ))}
          </div>
        )}
        <div className="flex items-end gap-2 bg-white rounded-2xl border border-slate-200 shadow-sm px-2 py-2">
          <button
            onClick={() => setShowEmoji(p => !p)}
            className={`p-2 rounded-xl transition-colors flex-shrink-0 mb-0.5 ${showEmoji ? 'bg-blue-50 text-blue-600' : 'text-slate-400 hover:bg-slate-50'}`}
          >
            <Smile size={18} />
          </button>
          <textarea
            ref={inputRef}
            value={input}
            onChange={e => setInput(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder={`Message ${country} students...`}
            rows={1}
            maxLength={2000}
            className="flex-1 resize-none text-sm text-slate-800 placeholder-slate-400 outline-none bg-transparent leading-relaxed py-1"
            style={{ maxHeight: '100px', overflowY: 'auto' }}
          />
          <button
            onClick={sendMessage}
            disabled={!input.trim() || sending}
            className={`p-2 rounded-xl flex-shrink-0 mb-0.5 transition-all active:scale-95 ${
              input.trim() && !sending
                ? 'bg-blue-600 text-white shadow-sm hover:bg-blue-700'
                : 'bg-slate-100 text-slate-400 cursor-not-allowed'
            }`}
          >
            <Send size={16} strokeWidth={2.5} />
          </button>
        </div>
        <div className="flex items-center justify-between mt-1 px-1 pb-0.5">
          <div className="flex items-center gap-1 text-[10px] text-slate-400">
            <Globe size={9} />
            <span>Visible to all {country} students</span>
          </div>
          <span className="text-[10px] text-slate-400">{input.length}/2000</span>
        </div>
      </div>
    </div>
  );
}
