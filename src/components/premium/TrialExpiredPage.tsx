import { useState } from 'react';
import { Crown, MessageCircle, ArrowRight, CheckCircle, Key, Star, Zap, Eye, Shield } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Page } from '../../lib/types';

interface TrialExpiredPageProps {
  onNavigate: (page: Page) => void;
}

const BENEFITS = [
  { icon: Zap, title: 'Full Platform Access', desc: 'Every feature unlocked with no restrictions.' },
  { icon: Eye, title: 'Clean Learning Experience', desc: 'Focused, distraction-free interface on every page.' },
  { icon: Shield, title: 'Permanent Account Unlock', desc: 'Tied to your account, works on any device.' },
  { icon: Star, title: 'One-Time Payment', desc: 'No subscription. 1 year of full access.' },
];

export default function TrialExpiredPage({ onNavigate }: TrialExpiredPageProps) {
  const { refreshProfile } = useAuth();
  const [code, setCode] = useState('');
  const [codeError, setCodeError] = useState('');
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);

  async function handleRedeemCode() {
    const trimmed = code.trim().toUpperCase();
    if (!trimmed) {
      setCodeError('Please enter a code.');
      return;
    }
    if (trimmed.length < 6 || trimmed.length > 32 || !/^[A-Z0-9\-_]+$/.test(trimmed)) {
      setCodeError('Invalid code format. Codes contain letters, numbers, and hyphens only.');
      return;
    }
    setLoading(true);
    setCodeError('');
    const { data: { session } } = await supabase.auth.getSession();
    if (!session) {
      setCodeError('Please sign in again.');
      setLoading(false);
      return;
    }
    const { data, error } = await supabase.rpc('redeem_premium_code', {
      p_code: trimmed,
      p_user_id: session.user.id,
    });
    setLoading(false);
    if (error || !data) {
      setCodeError('Something went wrong. Please try again.');
      return;
    }
    if (!data.success) {
      if (data.error === 'already_used') {
        setCodeError('This code has already been used.');
      } else {
        setCodeError('Invalid premium access code.');
      }
      return;
    }
    await refreshProfile();
    setSuccess(true);
    setTimeout(() => onNavigate('dashboard'), 2000);
  }

  if (success) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 p-4">
        <div className="max-w-sm w-full text-center">
          <div className="w-20 h-20 bg-gradient-to-br from-amber-400 to-orange-500 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-2xl">
            <Crown size={36} className="text-white" />
          </div>
          <h2 className="text-2xl font-black text-white mb-2">Premium Active!</h2>
          <p className="text-slate-400 text-sm">Taking you to your dashboard...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 p-4">
      <div className="max-w-lg w-full">

        <div className="text-center mb-8">
          <div className="w-20 h-20 bg-gradient-to-br from-amber-400 to-orange-500 rounded-3xl flex items-center justify-center mx-auto mb-6 shadow-2xl"
            style={{ boxShadow: '0 16px 40px rgba(251,191,36,0.3)' }}>
            <Crown size={36} className="text-white" />
          </div>
          <h1 className="text-3xl font-black text-white mb-3 leading-tight">
            Your Free Trial Has Ended
          </h1>
          <p className="text-slate-400 text-base leading-relaxed max-w-sm mx-auto">
            Upgrade to Premium for 75 Leones to continue your WASSCE preparation — full access, no interruptions, for a full year.
          </p>
        </div>

        <div className="bg-slate-800/60 border border-slate-700/60 rounded-2xl overflow-hidden mb-4"
          style={{ backdropFilter: 'blur(12px)' }}>
          <div className="p-5 border-b border-slate-700/40">
            <div className="flex items-center justify-between">
              <h2 className="text-sm font-black text-white">Premium Benefits</h2>
              <div className="flex items-end gap-1.5">
                <span className="text-2xl font-black text-amber-400">75</span>
                <span className="text-amber-300 text-sm font-bold mb-0.5">Leones</span>
                <span className="text-slate-500 text-xs mb-0.5">/ year</span>
              </div>
            </div>
          </div>
          <div className="divide-y divide-slate-700/30">
            {BENEFITS.map(({ icon: Icon, title, desc }) => (
              <div key={title} className="flex items-center gap-3 px-5 py-3.5">
                <div className="w-8 h-8 bg-amber-400/15 border border-amber-400/20 rounded-xl flex items-center justify-center flex-shrink-0">
                  <Icon size={14} className="text-amber-400" />
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-sm font-bold text-white">{title}</p>
                  <p className="text-xs text-slate-500 mt-0.5">{desc}</p>
                </div>
                <CheckCircle size={13} className="text-green-400 flex-shrink-0" />
              </div>
            ))}
          </div>
        </div>

        <a
          href="https://wa.link/fzqhpw"
          target="_blank"
          rel="noopener noreferrer"
          className="flex items-center justify-center gap-2.5 w-full py-4 rounded-2xl font-bold text-white text-base mb-4 transition-all hover:scale-[1.01] active:scale-95"
          style={{ background: 'linear-gradient(135deg, #25d366, #128c7e)', boxShadow: '0 8px 24px rgba(37,211,102,0.3)' }}
        >
          <MessageCircle size={18} />
          Pay 75 Leones via WhatsApp
          <ArrowRight size={15} />
        </a>
        <p className="text-center text-xs text-slate-500 mb-6">
          Include your email in the WhatsApp message · Receive your code instantly
        </p>

        <div className="bg-slate-800/60 border border-slate-700/60 rounded-2xl p-5"
          style={{ backdropFilter: 'blur(12px)' }}>
          <div className="flex items-center gap-2 mb-3">
            <Key size={14} className="text-slate-400" />
            <p className="text-sm font-bold text-white">Already have a code?</p>
          </div>
          <div className="space-y-2.5">
            <input
              type="text"
              value={code}
              onChange={e => { setCode(e.target.value.toUpperCase()); setCodeError(''); }}
              onKeyDown={e => e.key === 'Enter' && handleRedeemCode()}
              placeholder="WS-2026-XXXX"
              maxLength={12}
              className="w-full px-4 py-3 bg-slate-700/60 border border-slate-600/60 rounded-xl font-mono text-sm text-white placeholder-slate-500 focus:outline-none focus:border-slate-500 tracking-widest text-center uppercase"
              style={{ letterSpacing: '0.15em' }}
            />
            {codeError && (
              <p className="text-red-400 text-xs font-semibold">{codeError}</p>
            )}
            <button
              onClick={handleRedeemCode}
              disabled={loading || !code.trim()}
              className="w-full py-3 bg-white hover:bg-slate-100 disabled:opacity-40 disabled:cursor-not-allowed text-slate-900 font-bold rounded-xl text-sm transition-all active:scale-95"
            >
              {loading ? 'Verifying...' : 'Activate Code'}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
