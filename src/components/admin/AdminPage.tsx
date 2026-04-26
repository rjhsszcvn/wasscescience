import { useState, useEffect, useRef, useCallback } from 'react';
import { Key, Copy, CheckCircle, Lock, Plus, RefreshCw, Crown, AlertCircle, X, ArrowLeft, ShieldX, Eye, EyeOff } from 'lucide-react';
import { supabase } from '../../lib/supabase';
import { PremiumCode } from '../../lib/types';

const ADMIN_KEY = 'Allah_is_great';
const MAX_ATTEMPTS = 3;
const LOCKOUT_STORAGE_KEY = 'adm_lk';

interface AdminPageProps {
  onBack?: () => void;
}

function generateFingerprint(): string {
  const parts: string[] = [];
  parts.push(navigator.userAgent);
  parts.push(navigator.language);
  parts.push(String(screen.width) + 'x' + String(screen.height) + 'x' + String(screen.colorDepth));
  parts.push(Intl.DateTimeFormat().resolvedOptions().timeZone);
  parts.push(String(navigator.hardwareConcurrency || 0));
  parts.push(String((navigator as Navigator & { deviceMemory?: number }).deviceMemory || 0));

  try {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    if (ctx) {
      ctx.textBaseline = 'top';
      ctx.font = '14px Arial';
      ctx.fillText('admin-fp-probe', 2, 2);
      parts.push(canvas.toDataURL().slice(-32));
    }
  } catch {
    parts.push('no-canvas');
  }

  let hash = 0;
  const str = parts.join('|');
  for (let i = 0; i < str.length; i++) {
    const char = str.charCodeAt(i);
    hash = (hash << 5) - hash + char;
    hash = hash & hash;
  }
  return Math.abs(hash).toString(36) + str.length.toString(36);
}

async function getClientIp(): Promise<string> {
  try {
    const res = await fetch('https://api.ipify.org?format=json', { signal: AbortSignal.timeout(3000) });
    const data = await res.json();
    return data.ip || 'unknown';
  } catch {
    return 'unknown';
  }
}

async function logAttempt(fingerprint: string, ip: string, succeeded: boolean) {
  await supabase.from('admin_login_attempts').insert({ fingerprint, ip_address: ip, succeeded });
}

async function banDevice(fingerprint: string, ip: string, count: number) {
  await supabase.from('admin_banned_devices').upsert(
    { fingerprint, ip_address: ip, attempt_count: count },
    { onConflict: 'fingerprint' }
  );
}

async function checkIfBanned(fingerprint: string): Promise<boolean> {
  const { data } = await supabase
    .from('admin_banned_devices')
    .select('id')
    .eq('fingerprint', fingerprint)
    .maybeSingle();
  return !!data;
}

export default function AdminPage({ onBack }: AdminPageProps) {
  const [authenticated, setAuthenticated] = useState(false);
  const [keyInput, setKeyInput] = useState('');
  const [showKey, setShowKey] = useState(false);
  const [keyError, setKeyError] = useState('');
  const [codes, setCodes] = useState<PremiumCode[]>([]);
  const [loadingCodes, setLoadingCodes] = useState(false);
  const [generating, setGenerating] = useState(false);
  const [generateCount, setGenerateCount] = useState(1);
  const [newCodes, setNewCodes] = useState<string[]>([]);
  const [copiedCode, setCopiedCode] = useState<string | null>(null);
  const [error, setError] = useState('');
  const [attemptCount, setAttemptCount] = useState(0);
  const [banned, setBanned] = useState(false);
  const [checking, setChecking] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const fingerprintRef = useRef<string>('');
  const ipRef = useRef<string>('unknown');
  const inputRef = useRef<HTMLInputElement>(null);

  const initSecurity = useCallback(async () => {
    setChecking(true);
    const fp = generateFingerprint();
    fingerprintRef.current = fp;

    const localLocked = localStorage.getItem(LOCKOUT_STORAGE_KEY + fp);
    if (localLocked === 'banned') {
      setBanned(true);
      setChecking(false);
      return;
    }

    const isBanned = await checkIfBanned(fp);
    if (isBanned) {
      localStorage.setItem(LOCKOUT_STORAGE_KEY + fp, 'banned');
      setBanned(true);
      setChecking(false);
      return;
    }

    const stored = localStorage.getItem(LOCKOUT_STORAGE_KEY + fp + '_count');
    if (stored) {
      const count = parseInt(stored, 10);
      if (count >= MAX_ATTEMPTS) {
        setBanned(true);
        setChecking(false);
        return;
      }
      setAttemptCount(count);
    }

    ipRef.current = await getClientIp();
    setChecking(false);
  }, []);

  useEffect(() => {
    initSecurity();
  }, [initSecurity]);

  async function handleAuth() {
    if (banned || submitting || checking) return;

    setSubmitting(true);
    const fp = fingerprintRef.current;
    const ip = ipRef.current;

    if (keyInput === ADMIN_KEY) {
      await logAttempt(fp, ip, true);
      setAuthenticated(true);
      setKeyError('');
      setSubmitting(false);
    } else {
      const newCount = attemptCount + 1;
      setAttemptCount(newCount);
      localStorage.setItem(LOCKOUT_STORAGE_KEY + fp + '_count', String(newCount));

      await logAttempt(fp, ip, false);

      if (newCount >= MAX_ATTEMPTS) {
        await banDevice(fp, ip, newCount);
        localStorage.setItem(LOCKOUT_STORAGE_KEY + fp, 'banned');
        setBanned(true);
        setKeyInput('');
        setSubmitting(false);
        return;
      }

      const remaining = MAX_ATTEMPTS - newCount;
      setKeyError(
        remaining === 1
          ? 'Incorrect key. Final attempt — this device will be permanently locked.'
          : `Incorrect key. ${remaining} attempts remaining.`
      );
      setKeyInput('');
      setSubmitting(false);
      setTimeout(() => inputRef.current?.focus(), 50);
    }
  }

  async function loadCodes() {
    setLoadingCodes(true);
    setError('');
    const { data, error: rpcErr } = await supabase.rpc('list_all_premium_codes');
    setLoadingCodes(false);
    if (rpcErr || !data?.success) {
      setError('Failed to load codes.');
      return;
    }
    setCodes(data.codes || []);
  }

  async function generateCodes() {
    setGenerating(true);
    setError('');
    setNewCodes([]);
    const { data, error: rpcErr } = await supabase.rpc('generate_premium_codes', { p_count: generateCount });
    setGenerating(false);
    if (rpcErr || !data?.success) {
      setError('Failed to generate codes.');
      return;
    }
    const generated: string[] = data.codes || [];
    setNewCodes(generated);
    await loadCodes();
  }

  async function copyCode(code: string) {
    try {
      await navigator.clipboard.writeText(code);
      setCopiedCode(code);
      setTimeout(() => setCopiedCode(null), 2000);
    } catch {
      setCopiedCode(null);
    }
  }

  useEffect(() => {
    if (authenticated) {
      loadCodes();
    }
  }, [authenticated]);

  if (checking) {
    return (
      <div className="min-h-screen bg-slate-950 flex items-center justify-center">
        <div className="w-8 h-8 border-2 border-slate-700 border-t-slate-400 rounded-full animate-spin" />
      </div>
    );
  }

  if (banned) {
    return (
      <div className="min-h-screen bg-slate-950 flex items-center justify-center p-4">
        <div className="w-full max-w-sm text-center">
          <div className="w-16 h-16 bg-red-950 border border-red-800 rounded-2xl flex items-center justify-center mx-auto mb-5">
            <ShieldX size={28} className="text-red-400" />
          </div>
          <h1 className="text-xl font-black text-white mb-2">Access Permanently Denied</h1>
          <p className="text-slate-400 text-sm leading-relaxed mb-4">
            This device has been permanently locked due to too many failed access attempts.
            Your device fingerprint and IP address have been logged.
          </p>
          <div className="bg-red-950/40 border border-red-900/60 rounded-xl p-4">
            <p className="text-red-400 text-xs font-mono">
              Device flagged · IP logged · Access revoked
            </p>
          </div>
        </div>
      </div>
    );
  }

  if (!authenticated) {
    const remaining = MAX_ATTEMPTS - attemptCount;
    const isLastAttempt = remaining === 1;

    return (
      <div className="min-h-screen bg-slate-950 flex items-center justify-center p-4">
        <div className="w-full max-w-sm">
          {onBack && (
            <button
              onClick={onBack}
              className="flex items-center gap-2 text-slate-500 hover:text-slate-300 text-sm font-medium mb-6 transition-colors"
            >
              <ArrowLeft size={15} /> Back to home
            </button>
          )}
          <div className="text-center mb-8">
            <div className={`w-14 h-14 border rounded-2xl flex items-center justify-center mx-auto mb-4 transition-colors ${isLastAttempt ? 'bg-red-950/50 border-red-800' : 'bg-slate-800 border-slate-700'}`}>
              <Lock size={22} className={isLastAttempt ? 'text-red-400' : 'text-slate-300'} />
            </div>
            <h1 className="text-xl font-black text-white mb-1">Admin Access</h1>
            <p className="text-slate-500 text-sm">Enter the admin key to continue.</p>
          </div>

          <div className={`bg-slate-900 border rounded-2xl p-6 transition-colors ${isLastAttempt ? 'border-red-900/60' : 'border-slate-800'}`}>
            {attemptCount > 0 && (
              <div className={`flex items-center gap-2 text-xs font-semibold mb-4 px-3 py-2 rounded-lg ${isLastAttempt ? 'bg-red-950/50 border border-red-800/60 text-red-400' : 'bg-amber-950/40 border border-amber-800/40 text-amber-400'}`}>
                <AlertCircle size={12} />
                {isLastAttempt
                  ? 'Final attempt — next failure permanently locks this device'
                  : `${remaining} attempt${remaining !== 1 ? 's' : ''} remaining before lockout`}
              </div>
            )}

            <div className="relative mb-3">
              <input
                ref={inputRef}
                type={showKey ? 'text' : 'password'}
                value={keyInput}
                onChange={e => { setKeyInput(e.target.value); setKeyError(''); }}
                onKeyDown={e => e.key === 'Enter' && handleAuth()}
                placeholder="Admin key"
                disabled={submitting}
                autoComplete="off"
                autoCorrect="off"
                autoCapitalize="off"
                spellCheck={false}
                className="w-full px-4 py-3 pr-11 bg-slate-800 border border-slate-700 rounded-xl text-white placeholder-slate-500 focus:outline-none focus:border-slate-500 text-sm disabled:opacity-50 disabled:cursor-not-allowed"
              />
              <button
                type="button"
                onClick={() => setShowKey(v => !v)}
                className="absolute right-3 top-1/2 -translate-y-1/2 text-slate-500 hover:text-slate-300 transition-colors"
                tabIndex={-1}
              >
                {showKey ? <EyeOff size={15} /> : <Eye size={15} />}
              </button>
            </div>

            {keyError && (
              <p className="text-red-400 text-xs mb-3 flex items-center gap-1.5">
                <AlertCircle size={12} /> {keyError}
              </p>
            )}

            <button
              onClick={handleAuth}
              disabled={submitting || !keyInput}
              className={`w-full py-3 font-bold rounded-xl text-sm transition-all active:scale-95 disabled:opacity-50 disabled:cursor-not-allowed ${isLastAttempt ? 'bg-red-600 hover:bg-red-500 text-white' : 'bg-white hover:bg-slate-100 text-slate-900'}`}
            >
              {submitting ? 'Verifying...' : 'Enter'}
            </button>
          </div>
        </div>
      </div>
    );
  }

  const unusedCodes = codes.filter(c => !c.used_at);
  const usedCodes = codes.filter(c => c.used_at);

  return (
    <div className="min-h-screen bg-slate-950 text-white">
      <div className="max-w-3xl mx-auto px-4 py-10">

        {onBack && (
          <button
            onClick={onBack}
            className="flex items-center gap-2 text-slate-500 hover:text-slate-300 text-sm font-medium mb-6 transition-colors"
          >
            <ArrowLeft size={15} /> Back to home
          </button>
        )}

        <div className="flex items-center justify-between mb-8">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-amber-500/20 border border-amber-500/30 rounded-xl flex items-center justify-center">
              <Crown size={18} className="text-amber-400" />
            </div>
            <div>
              <h1 className="text-xl font-black text-white">Premium Code Admin</h1>
              <p className="text-slate-500 text-xs">Generate and manage premium access codes</p>
            </div>
          </div>
          <button
            onClick={loadCodes}
            disabled={loadingCodes}
            className="flex items-center gap-2 px-3 py-2 bg-slate-800 hover:bg-slate-700 border border-slate-700 rounded-xl text-slate-300 text-xs font-semibold transition-all"
          >
            <RefreshCw size={12} className={loadingCodes ? 'animate-spin' : ''} />
            Refresh
          </button>
        </div>

        {error && (
          <div className="flex items-center gap-2 p-4 bg-red-950 border border-red-800 rounded-xl text-red-400 text-sm mb-6">
            <AlertCircle size={14} />
            <span>{error}</span>
            <button onClick={() => setError('')} className="ml-auto"><X size={14} /></button>
          </div>
        )}

        <div className="bg-slate-900 border border-slate-800 rounded-2xl p-6 mb-6">
          <h2 className="text-base font-black text-white mb-4 flex items-center gap-2">
            <Plus size={16} className="text-green-400" />
            Generate New Codes
          </h2>
          <div className="flex items-center gap-3">
            <div className="flex items-center gap-2">
              <label className="text-slate-400 text-sm font-medium">Count:</label>
              <input
                type="number"
                min={1}
                max={50}
                value={generateCount}
                onChange={e => setGenerateCount(Math.min(50, Math.max(1, parseInt(e.target.value) || 1)))}
                className="w-20 px-3 py-2 bg-slate-800 border border-slate-700 rounded-lg text-white text-sm focus:outline-none focus:border-slate-500"
              />
            </div>
            <button
              onClick={generateCodes}
              disabled={generating}
              className="flex items-center gap-2 px-5 py-2.5 bg-green-600 hover:bg-green-500 disabled:opacity-50 text-white font-bold rounded-xl text-sm transition-all active:scale-95"
            >
              <Key size={14} />
              {generating ? 'Generating...' : `Generate ${generateCount > 1 ? `${generateCount} Codes` : 'Code'}`}
            </button>
          </div>

          {newCodes.length > 0 && (
            <div className="mt-5 p-4 bg-green-950/50 border border-green-800/50 rounded-xl">
              <p className="text-green-400 text-xs font-bold uppercase tracking-wider mb-3">
                {newCodes.length} new {newCodes.length === 1 ? 'code' : 'codes'} generated
              </p>
              <div className="space-y-2">
                {newCodes.map(c => (
                  <div key={c} className="flex items-center justify-between bg-slate-800 rounded-lg px-4 py-2.5">
                    <code className="font-mono text-sm font-bold text-green-300 tracking-widest">{c}</code>
                    <button
                      onClick={() => copyCode(c)}
                      className="flex items-center gap-1.5 text-xs text-slate-400 hover:text-white transition-colors"
                    >
                      {copiedCode === c ? <CheckCircle size={12} className="text-green-400" /> : <Copy size={12} />}
                      {copiedCode === c ? 'Copied' : 'Copy'}
                    </button>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>

        <div className="bg-slate-900 border border-slate-800 rounded-2xl overflow-hidden mb-6">
          <div className="p-5 border-b border-slate-800">
            <h2 className="text-base font-black text-white flex items-center gap-2">
              <Key size={15} className="text-slate-400" />
              Available Codes
              <span className="ml-auto text-xs font-semibold text-slate-500 bg-slate-800 px-2 py-0.5 rounded-full">{unusedCodes.length}</span>
            </h2>
          </div>
          {loadingCodes ? (
            <div className="p-8 text-center text-slate-500 text-sm">Loading codes...</div>
          ) : unusedCodes.length === 0 ? (
            <div className="p-8 text-center text-slate-500 text-sm">No available codes. Generate some above.</div>
          ) : (
            <div className="divide-y divide-slate-800/50">
              {unusedCodes.map(c => (
                <div key={c.id} className="flex items-center justify-between px-5 py-3 hover:bg-slate-800/30 transition-colors">
                  <div>
                    <code className="font-mono text-sm font-bold text-white tracking-widest">{c.code}</code>
                    <p className="text-[10px] text-slate-500 mt-0.5">
                      Created {new Date(c.created_at).toLocaleDateString('en-GB', { day: 'numeric', month: 'short', year: 'numeric' })}
                    </p>
                  </div>
                  <button
                    onClick={() => copyCode(c.code)}
                    className="flex items-center gap-1.5 text-xs text-slate-400 hover:text-white transition-colors px-3 py-1.5 rounded-lg hover:bg-slate-700"
                  >
                    {copiedCode === c.code ? <CheckCircle size={12} className="text-green-400" /> : <Copy size={12} />}
                    {copiedCode === c.code ? 'Copied!' : 'Copy'}
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>

        {usedCodes.length > 0 && (
          <div className="bg-slate-900 border border-slate-800 rounded-2xl overflow-hidden">
            <div className="p-5 border-b border-slate-800">
              <h2 className="text-base font-black text-white flex items-center gap-2">
                <CheckCircle size={15} className="text-green-500" />
                Redeemed Codes
                <span className="ml-auto text-xs font-semibold text-slate-500 bg-slate-800 px-2 py-0.5 rounded-full">{usedCodes.length}</span>
              </h2>
            </div>
            <div className="divide-y divide-slate-800/50">
              {usedCodes.map(c => (
                <div key={c.id} className="flex items-center justify-between px-5 py-3">
                  <div>
                    <code className="font-mono text-sm font-bold text-slate-500 tracking-widest line-through">{c.code}</code>
                    <p className="text-[10px] text-slate-500 mt-0.5">
                      Used by {c.used_by_name || c.used_by_email || 'Unknown'} · {c.used_at ? new Date(c.used_at).toLocaleDateString('en-GB', { day: 'numeric', month: 'short', year: 'numeric' }) : ''}
                    </p>
                  </div>
                  <span className="text-[10px] font-bold text-green-500 bg-green-950/50 border border-green-800/40 px-2 py-0.5 rounded-full">Used</span>
                </div>
              ))}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
