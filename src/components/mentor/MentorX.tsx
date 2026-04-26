import React, { useState, useEffect, useRef, useCallback } from 'react';
import { ArrowLeft, Send, Trash2, Brain, Sparkles, ChevronDown } from 'lucide-react';
import { Page } from '../../lib/types';
import { useAuth } from '../../contexts/AuthContext';
import {
  MentorMessage,
  loadHistory,
  saveHistory,
  clearHistory,
  isFirstOpen,
  markOpened,
  createMessage,
  generateResponse,
} from './mentorBrain';

interface MentorXProps {
  onNavigate: (page: Page) => void;
}

const SUGGESTED_QUESTIONS = [
  'How do I solve quadratic equations?',
  'Explain photosynthesis for WASSCE',
  "What are Newton's Laws of Motion?",
  'How do I write a formal letter?',
  'Explain genetics and Punnett squares',
  'What is the Quadratic Formula?',
  'Explain acids and bases',
  'How do I calculate probability?',
];

function TypingIndicator() {
  return (
    <div className="flex items-end gap-2.5 mb-4">
      <div className="w-8 h-8 rounded-full bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center flex-shrink-0 shadow-sm">
        <Brain size={14} className="text-white" />
      </div>
      <div className="bg-white border border-slate-100 rounded-2xl rounded-bl-sm px-4 py-3 shadow-sm">
        <div className="flex gap-1 items-center h-4">
          <span className="w-2 h-2 bg-amber-400 rounded-full animate-bounce" style={{ animationDelay: '0ms' }} />
          <span className="w-2 h-2 bg-amber-400 rounded-full animate-bounce" style={{ animationDelay: '150ms' }} />
          <span className="w-2 h-2 bg-amber-400 rounded-full animate-bounce" style={{ animationDelay: '300ms' }} />
        </div>
      </div>
    </div>
  );
}

function MessageBubble({ message }: { message: MentorMessage }) {
  const isUser = message.role === 'user';

  const renderInline = (text: string, keyPrefix: string) => {
    const parts = text.split(/(\*\*[^*]+\*\*|\*[^*]+\*)/g);
    return parts.map((part, j) => {
      if (part.startsWith('**') && part.endsWith('**')) {
        return <strong key={`${keyPrefix}-${j}`}>{part.slice(2, -2)}</strong>;
      }
      if (part.startsWith('*') && part.endsWith('*') && part.length > 2) {
        return <em key={`${keyPrefix}-${j}`} className="text-slate-500 text-[13px] not-italic">{part.slice(1, -1)}</em>;
      }
      return part;
    });
  };

  const renderContent = (content: string) => {
    const lines = content.split('\n');
    const elements: React.ReactNode[] = [];
    let i = 0;
    while (i < lines.length) {
      const line = lines[i];
      if (line === '---') {
        elements.push(<hr key={i} className="border-slate-200 my-2" />);
      } else if (line.trim() === '') {
        elements.push(<div key={i} className="h-1.5" />);
      } else if (line.match(/^\d+\. /) || line.startsWith('- ') || line.startsWith('• ')) {
        const listItems: React.ReactNode[] = [];
        let j = i;
        while (j < lines.length && (lines[j].match(/^\d+\. /) || lines[j].startsWith('- ') || lines[j].startsWith('• '))) {
          const itemLine = lines[j];
          const text = itemLine.startsWith('- ') || itemLine.startsWith('• ')
            ? itemLine.slice(2)
            : itemLine.replace(/^\d+\.\s+/, '');
          listItems.push(
            <li key={j} className="leading-relaxed mb-0.5">{renderInline(text, String(j))}</li>
          );
          j++;
        }
        elements.push(<ul key={i} className="list-disc pl-5 my-1 space-y-0.5">{listItems}</ul>);
        i = j;
        continue;
      } else if (line.startsWith('| ')) {
        elements.push(
          <p key={i} className="font-mono text-xs bg-slate-50 px-2 py-0.5 rounded my-0.5 border border-slate-100 overflow-x-auto">{line}</p>
        );
      } else if (line.startsWith('#')) {
        const text = line.replace(/^#+\s*/, '');
        elements.push(<p key={i} className="font-bold text-base mt-3 mb-1">{renderInline(text, String(i))}</p>);
      } else {
        const isBoldHeading = line.startsWith('**') && (line.endsWith('**') || line.endsWith(':**') || line.endsWith('*'));
        if (isBoldHeading) {
          elements.push(<p key={i} className="font-bold mt-2.5 mb-0.5 text-slate-800">{renderInline(line, String(i))}</p>);
        } else {
          elements.push(<p key={i} className="leading-relaxed">{renderInline(line, String(i))}</p>);
        }
      }
      i++;
    }
    return elements;
  };

  return (
    <div className={`flex items-end gap-2.5 mb-4 ${isUser ? 'flex-row-reverse' : 'flex-row'}`}>
      {!isUser && (
        <div className="w-8 h-8 rounded-full bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center flex-shrink-0 shadow-sm self-start mt-1">
          <Brain size={14} className="text-white" />
        </div>
      )}
      <div
        className={`max-w-[82%] text-[13.5px] leading-relaxed ${
          isUser
            ? 'bg-gradient-to-br from-amber-500 to-orange-500 text-white rounded-2xl rounded-br-sm px-4 py-3 shadow-sm'
            : 'bg-white border border-slate-100 rounded-2xl rounded-bl-sm px-4 py-3 shadow-sm text-slate-700'
        }`}
      >
        {renderContent(message.content)}
      </div>
    </div>
  );
}

function WelcomeScreen({ onDismiss }: { onDismiss: () => void }) {
  return (
    <div className="fixed inset-0 z-50 flex items-end sm:items-center justify-center bg-slate-950/80 backdrop-blur-sm px-4 pb-safe sm:pb-0" style={{ paddingBottom: 'max(1rem, env(safe-area-inset-bottom))' }}>
      <div
        className="bg-white rounded-3xl max-w-sm w-full shadow-2xl flex flex-col"
        style={{ animation: 'slideUp 0.5s cubic-bezier(0.34,1.56,0.64,1) forwards', maxHeight: '92dvh', overflow: 'hidden' }}
      >
        <div className="relative bg-gradient-to-br from-amber-400 via-orange-500 to-rose-500 px-6 pt-7 pb-8 overflow-hidden flex-shrink-0">
          <div className="absolute inset-0 overflow-hidden pointer-events-none">
            <div className="absolute -top-6 -right-6 w-32 h-32 bg-white/10 rounded-full" />
            <div className="absolute -bottom-4 -left-4 w-24 h-24 bg-white/10 rounded-full" />
            <div className="absolute top-1/2 left-1/3 w-16 h-16 bg-white/10 rounded-full" />
          </div>
          <div className="relative text-center">
            <div className="w-14 h-14 bg-white/20 rounded-2xl mx-auto flex items-center justify-center mb-3 backdrop-blur-sm border border-white/30">
              <Brain size={26} className="text-white" />
            </div>
            <div className="flex items-center justify-center gap-1.5 mb-1.5">
              <Sparkles size={12} className="text-amber-200" />
              <span className="text-amber-100 text-[10px] font-semibold uppercase tracking-widest">Premium Feature</span>
              <Sparkles size={12} className="text-amber-200" />
            </div>
            <h1 className="text-3xl font-black text-white mb-0.5 tracking-tight">MentorX</h1>
            <p className="text-white/80 text-sm font-medium">Your WASSCE Study Brain</p>
          </div>
        </div>

        <div className="overflow-y-auto flex-1 px-6 py-5">
          <div className="bg-slate-50 rounded-2xl border border-slate-100 p-4 mb-4">
            <p className="text-slate-600 text-sm leading-relaxed text-center">
              Ask me any WASSCE question — from algebra to biology, essay writing to wave theory. I give deep, exam-focused answers with worked examples and tips.
            </p>
          </div>

          <div className="space-y-2.5 mb-5">
            {['Deep explanations with worked examples', 'WASSCE exam tips and patterns', 'Covers all 8 major subjects', 'Chat history saved on your device'].map((feat) => (
              <div key={feat} className="flex items-center gap-3">
                <div className="w-5 h-5 bg-amber-100 rounded-full flex items-center justify-center flex-shrink-0">
                  <div className="w-1.5 h-1.5 bg-amber-500 rounded-full" />
                </div>
                <p className="text-slate-600 text-[13px]">{feat}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="px-6 pb-6 flex-shrink-0">
          <button
            onClick={onDismiss}
            className="w-full py-4 bg-gradient-to-r from-amber-500 to-orange-500 text-white font-bold rounded-2xl text-[15px] shadow-lg active:scale-[0.97] transition-transform"
            style={{ boxShadow: '0 4px 20px rgba(245,158,11,0.4)' }}
          >
            Ask MentorX
          </button>
        </div>
      </div>
    </div>
  );
}

export default function MentorX({ onNavigate }: MentorXProps) {
  const { isPremium } = useAuth();
  const [messages, setMessages] = useState<MentorMessage[]>([]);
  const [input, setInput] = useState('');
  const [isTyping, setIsTyping] = useState(false);
  const [showWelcome, setShowWelcome] = useState(false);
  const [showScrollButton, setShowScrollButton] = useState(false);
  const [showClearConfirm, setShowClearConfirm] = useState(false);
  const messagesEndRef = useRef<HTMLDivElement>(null);
  const scrollContainerRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  useEffect(() => {
    const history = loadHistory();
    setMessages(history);
    if (isFirstOpen()) {
      setTimeout(() => setShowWelcome(true), 300);
    }
  }, []);

  const scrollToBottom = useCallback((smooth = true) => {
    messagesEndRef.current?.scrollIntoView({ behavior: smooth ? 'smooth' : 'auto' });
  }, []);

  useEffect(() => {
    scrollToBottom();
  }, [messages, isTyping]);

  function handleScroll() {
    const el = scrollContainerRef.current;
    if (!el) return;
    const distFromBottom = el.scrollHeight - el.scrollTop - el.clientHeight;
    setShowScrollButton(distFromBottom > 120);
  }

  function handleDismissWelcome() {
    setShowWelcome(false);
    markOpened();
    inputRef.current?.focus();
  }

  async function handleSend(text?: string) {
    const content = (text || input).trim();
    if (!content || isTyping) return;

    const userMsg = createMessage('user', content);
    const newMessages = [...messages, userMsg];
    setMessages(newMessages);
    saveHistory(newMessages);
    setInput('');
    setIsTyping(true);

    const delay = 600 + Math.random() * 800;
    setTimeout(() => {
      const response = generateResponse(content, newMessages);
      const mentorMsg = createMessage('mentor', response);
      const updated = [...newMessages, mentorMsg];
      setMessages(updated);
      saveHistory(updated);
      setIsTyping(false);
    }, delay);
  }

  function handleKeyDown(e: React.KeyboardEvent<HTMLTextAreaElement>) {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      handleSend();
    }
  }

  function handleClearHistory() {
    clearHistory();
    setMessages([]);
    setShowClearConfirm(false);
  }

  if (!isPremium) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] text-center px-4 py-12">
        <div className="w-20 h-20 bg-gradient-to-br from-amber-100 to-orange-100 rounded-3xl flex items-center justify-center mb-6 shadow-sm">
          <Brain size={36} className="text-amber-500" />
        </div>
        <div className="flex items-center gap-2 mb-3">
          <Sparkles size={14} className="text-amber-500" />
          <span className="text-amber-600 text-xs font-bold uppercase tracking-widest">Premium Only</span>
          <Sparkles size={14} className="text-amber-500" />
        </div>
        <h2 className="text-2xl font-black text-slate-800 mb-3">Unlock MentorX</h2>
        <p className="text-slate-500 text-sm leading-relaxed max-w-xs mb-8">
          MentorX is your personal WASSCE study brain. Get deep explanations, worked examples, and exam-focused answers for all subjects — exclusively for Premium members.
        </p>
        <button
          onClick={() => onNavigate('premium')}
          className="px-8 py-3.5 bg-gradient-to-r from-amber-500 to-orange-500 text-white font-bold rounded-2xl text-sm shadow-lg active:scale-[0.97] transition-transform"
          style={{ boxShadow: '0 4px 20px rgba(245,158,11,0.4)' }}
        >
          Upgrade to Premium
        </button>
        <button
          onClick={() => onNavigate('dashboard')}
          className="mt-4 text-slate-400 text-sm flex items-center gap-1 hover:text-slate-600 transition-colors"
        >
          <ArrowLeft size={14} />
          Back to Dashboard
        </button>
      </div>
    );
  }

  return (
    <div className="flex flex-col flex-1 overflow-hidden pt-3 pb-2">
      {showWelcome && <WelcomeScreen onDismiss={handleDismissWelcome} />}

      <div className="flex items-center justify-between mb-3 flex-shrink-0">
        <div className="flex items-center gap-3">
          <button
            onClick={() => onNavigate('dashboard')}
            className="p-2 rounded-xl hover:bg-slate-100 text-slate-500 hover:text-slate-700 transition-colors active:scale-95"
          >
            <ArrowLeft size={18} />
          </button>
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 bg-gradient-to-br from-amber-400 to-orange-500 rounded-xl flex items-center justify-center shadow-sm">
              <Brain size={18} className="text-white" />
            </div>
            <div>
              <div className="flex items-center gap-1.5">
                <h1 className="font-black text-slate-800 text-base leading-tight">MentorX</h1>
                <span className="text-[9px] font-black text-amber-600 bg-amber-100 px-1.5 py-0.5 rounded-full uppercase tracking-wide">PRO</span>
              </div>
              <p className="text-[11px] text-slate-400 leading-tight">WASSCE Study Brain</p>
            </div>
          </div>
        </div>
        {messages.length > 0 && (
          <button
            onClick={() => setShowClearConfirm(true)}
            className="p-2 rounded-xl text-slate-400 hover:text-red-500 hover:bg-red-50 transition-colors"
            title="Clear chat"
          >
            <Trash2 size={16} />
          </button>
        )}
      </div>

      {showClearConfirm && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/50 backdrop-blur-sm px-4">
          <div className="bg-white rounded-2xl p-6 max-w-xs w-full shadow-2xl">
            <h3 className="font-bold text-slate-800 mb-2">Clear chat history?</h3>
            <p className="text-slate-500 text-sm mb-5">This will permanently delete all your MentorX conversations stored on this device.</p>
            <div className="flex gap-3">
              <button onClick={() => setShowClearConfirm(false)} className="flex-1 py-2.5 rounded-xl border border-slate-200 text-slate-600 text-sm font-semibold hover:bg-slate-50">
                Cancel
              </button>
              <button onClick={handleClearHistory} className="flex-1 py-2.5 rounded-xl bg-red-500 text-white text-sm font-bold hover:bg-red-600">
                Clear
              </button>
            </div>
          </div>
        </div>
      )}

      <div
        ref={scrollContainerRef}
        onScroll={handleScroll}
        className="flex-1 overflow-y-auto overscroll-contain scrollbar-hide relative"
        style={{ minHeight: 0 }}
      >
        {messages.length === 0 && (
          <div className="py-6">
            <div className="text-center mb-6">
              <div className="w-14 h-14 bg-gradient-to-br from-amber-100 to-orange-100 rounded-2xl flex items-center justify-center mx-auto mb-3">
                <Brain size={24} className="text-amber-500" />
              </div>
              <h2 className="font-black text-slate-700 text-lg mb-1">Ask MentorX anything</h2>
              <p className="text-slate-400 text-[13px]">WASSCE-focused answers across all subjects</p>
            </div>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
              {SUGGESTED_QUESTIONS.map((q) => (
                <button
                  key={q}
                  onClick={() => handleSend(q)}
                  className="text-left px-3.5 py-3 bg-white border border-slate-200 rounded-xl text-[12.5px] text-slate-600 hover:bg-amber-50 hover:border-amber-200 hover:text-amber-700 transition-all active:scale-[0.97] shadow-sm"
                >
                  {q}
                </button>
              ))}
            </div>
          </div>
        )}

        {messages.length > 0 && (
          <div className="py-4">
            {messages.map((msg) => (
              <MessageBubble key={msg.id} message={msg} />
            ))}
            {isTyping && <TypingIndicator />}
            <div ref={messagesEndRef} />
          </div>
        )}
      </div>

      {showScrollButton && (
        <button
          onClick={() => scrollToBottom()}
          className="absolute right-4 bottom-24 w-8 h-8 bg-white border border-slate-200 rounded-full shadow-md flex items-center justify-center text-slate-400 hover:text-slate-600 transition-colors z-10"
        >
          <ChevronDown size={16} />
        </button>
      )}

      <div className="flex-shrink-0 pt-3 pb-1">
        {messages.length > 0 && !isTyping && (
          <div className="flex gap-1.5 mb-2 overflow-x-auto scrollbar-hide pb-1">
            {SUGGESTED_QUESTIONS.slice(0, 4).map((q) => (
              <button
                key={q}
                onClick={() => handleSend(q)}
                className="flex-shrink-0 px-3 py-1.5 bg-white border border-slate-200 rounded-full text-[11px] text-slate-500 hover:bg-amber-50 hover:border-amber-200 hover:text-amber-600 transition-all whitespace-nowrap"
              >
                {q.length > 30 ? q.slice(0, 28) + '…' : q}
              </button>
            ))}
          </div>
        )}
        <div className="flex items-end gap-2 bg-white border border-slate-200 rounded-2xl px-3 py-2 shadow-sm focus-within:border-amber-400 focus-within:ring-2 focus-within:ring-amber-100 transition-all">
          <textarea
            ref={inputRef}
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={handleKeyDown}
            placeholder="Ask about any WASSCE topic..."
            rows={1}
            className="flex-1 resize-none outline-none text-[13.5px] text-slate-700 placeholder-slate-400 bg-transparent leading-relaxed max-h-28 overflow-y-auto"
            style={{ minHeight: '1.75rem' }}
          />
          <button
            onClick={() => handleSend()}
            disabled={!input.trim() || isTyping}
            className="w-8 h-8 rounded-xl flex items-center justify-center flex-shrink-0 transition-all mb-0.5 disabled:opacity-40 disabled:cursor-not-allowed bg-gradient-to-br from-amber-500 to-orange-500 text-white active:scale-90 shadow-sm"
          >
            <Send size={14} />
          </button>
        </div>
        <p className="text-center text-[10px] text-slate-300 mt-1.5">MentorX focuses on WASSCE curriculum. Saved locally on your device.</p>
      </div>

      <style>{`
        @keyframes slideUp {
          from { opacity: 0; transform: translateY(40px) scale(0.95); }
          to { opacity: 1; transform: translateY(0) scale(1); }
        }
      `}</style>
    </div>
  );
}
