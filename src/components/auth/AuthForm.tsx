import { useState } from 'react';
import { BookOpen, Eye, EyeOff, Loader2, GraduationCap, Mail, CheckCircle, ArrowLeft } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';

interface AuthFormProps {
  initialMode?: 'login' | 'signup';
  onBackToLanding?: () => void;
}

export default function AuthForm({ initialMode = 'login', onBackToLanding }: AuthFormProps) {
  const { signIn, signUp, resetPassword } = useAuth();
  const [mode, setMode] = useState<'login' | 'signup' | 'forgot'>(initialMode);
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [name, setName] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  const [confirmationSent, setConfirmationSent] = useState(false);
  const [resetSent, setResetSent] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');
    setLoading(true);

    if (mode === 'forgot') {
      const { error } = await resetPassword(email);
      if (error) {
        setError(error.message || 'Failed to send reset email. Please try again.');
      } else {
        setResetSent(true);
      }
      setLoading(false);
      return;
    }

    if (mode === 'signup') {
      if (!name.trim()) {
        setError('Please enter your full name.');
        setLoading(false);
        return;
      }
      const { error, needsConfirmation } = await signUp(email, password, name);
      if (error) {
        const msg = error.message || '';
        if (msg.includes('rate limit') || msg.includes('over_email')) {
          setError('Too many signup attempts. Please wait a few minutes and try again.');
        } else if (msg.includes('already registered') || msg.includes('already been registered')) {
          setError('An account with this email already exists. Please sign in instead.');
        } else {
          setError(msg || 'Signup failed. Please try again.');
        }
      } else if (needsConfirmation) {
        setConfirmationSent(true);
      }
    } else {
      const { error } = await signIn(email, password);
      if (error) {
        const msg = error.message || '';
        if (msg.includes('Invalid login credentials') || msg.includes('invalid_credentials')) {
          setError('Incorrect email or password. Please try again.');
        } else if (msg.includes('Email not confirmed')) {
          setError('Please confirm your email address first. Check your inbox for the verification link.');
        } else {
          setError(msg || 'Sign in failed. Please try again.');
        }
      }
    }
    setLoading(false);
  };

  if (confirmationSent) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 flex items-center justify-center p-4">
        <div className="w-full max-w-md text-center">
          <div className="bg-white/5 backdrop-blur-xl border border-white/10 rounded-2xl p-10 shadow-2xl">
            <div className="w-16 h-16 bg-green-500/20 border border-green-500/30 rounded-full flex items-center justify-center mx-auto mb-4">
              <Mail size={28} className="text-green-400" />
            </div>
            <h2 className="text-2xl font-bold text-white mb-2">Check Your Email</h2>
            <p className="text-slate-300 mb-2">A confirmation link was sent to:</p>
            <p className="text-blue-300 font-semibold mb-4">{email}</p>
            <p className="text-slate-400 text-sm mb-6">
              Click the link in the email to verify your account, then come back here to sign in.
            </p>
            <button
              onClick={() => { setConfirmationSent(false); setMode('login'); }}
              className="w-full py-3 bg-blue-600 hover:bg-blue-500 text-white font-semibold rounded-xl transition-all flex items-center justify-center gap-2"
            >
              <CheckCircle size={16} /> Back to Sign In
            </button>
          </div>
        </div>
      </div>
    );
  }

  if (resetSent) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 flex items-center justify-center p-4">
        <div className="w-full max-w-md text-center">
          <div className="bg-white/5 backdrop-blur-xl border border-white/10 rounded-2xl p-10 shadow-2xl">
            <div className="w-16 h-16 bg-blue-500/20 border border-blue-500/30 rounded-full flex items-center justify-center mx-auto mb-4">
              <Mail size={28} className="text-blue-400" />
            </div>
            <h2 className="text-2xl font-bold text-white mb-2">Reset Email Sent</h2>
            <p className="text-slate-300 mb-2">Password reset instructions were sent to:</p>
            <p className="text-blue-300 font-semibold mb-4">{email}</p>
            <p className="text-slate-400 text-sm mb-6">
              Check your inbox and click the link to set a new password. The link expires in 1 hour.
            </p>
            <button
              onClick={() => { setResetSent(false); setMode('login'); setEmail(''); }}
              className="w-full py-3 bg-blue-600 hover:bg-blue-500 text-white font-semibold rounded-xl transition-all flex items-center justify-center gap-2"
            >
              <ArrowLeft size={16} /> Back to Sign In
            </button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 flex items-center justify-center p-4">
      <div className="absolute inset-0 overflow-hidden pointer-events-none">
        <div className="absolute top-1/4 left-1/4 w-96 h-96 bg-blue-500/10 rounded-full blur-3xl" />
        <div className="absolute bottom-1/4 right-1/4 w-96 h-96 bg-cyan-500/10 rounded-full blur-3xl" />
      </div>

      <div className="w-full max-w-md relative">
        {(onBackToLanding || mode === 'forgot') && (
          <button
            onClick={() => {
              if (mode === 'forgot') {
                setMode('login');
                setError('');
                setEmail('');
              } else {
                onBackToLanding?.();
              }
            }}
            className="flex items-center gap-2 text-slate-400 hover:text-white text-sm font-medium mb-6 transition-colors"
          >
            <ArrowLeft size={16} /> {mode === 'forgot' ? 'Back to Sign In' : 'Back to home'}
          </button>
        )}

        <div className="text-center mb-8">
          <div className="inline-flex items-center justify-center w-16 h-16 bg-blue-600 rounded-2xl shadow-lg shadow-blue-600/30 mb-4">
            <BookOpen size={28} className="text-white" />
          </div>
          <h1 className="text-3xl font-bold text-white mb-1">
            WASSCE<span className="text-blue-400">Science</span>
          </h1>
          <p className="text-slate-400 text-sm">Your premium WASSCE learning platform</p>
        </div>

        <div className="bg-white/5 backdrop-blur-xl border border-white/10 rounded-2xl p-8 shadow-2xl">
          {mode !== 'forgot' && (
            <div className="flex items-center gap-2 p-1 bg-white/5 rounded-xl mb-6">
              <button
                onClick={() => { setMode('login'); setError(''); }}
                className={`flex-1 py-2 px-4 rounded-lg text-sm font-semibold transition-all ${
                  mode === 'login'
                    ? 'bg-blue-600 text-white shadow-sm'
                    : 'text-slate-300 hover:text-white'
                }`}
              >
                Sign In
              </button>
              <button
                onClick={() => { setMode('signup'); setError(''); }}
                className={`flex-1 py-2 px-4 rounded-lg text-sm font-semibold transition-all ${
                  mode === 'signup'
                    ? 'bg-blue-600 text-white shadow-sm'
                    : 'text-slate-300 hover:text-white'
                }`}
              >
                Sign Up
              </button>
            </div>
          )}

          {mode === 'forgot' && (
            <div className="mb-5">
              <h2 className="text-xl font-bold text-white mb-1">Forgot Password</h2>
              <p className="text-slate-400 text-sm">Enter your email and we'll send a reset link.</p>
            </div>
          )}

          {mode === 'signup' && (
            <div className="mb-4 p-3 bg-blue-500/10 border border-blue-500/20 rounded-xl flex items-start gap-2">
              <GraduationCap size={16} className="text-blue-400 flex-shrink-0 mt-0.5" />
              <p className="text-xs text-blue-200">
                <strong>Free access</strong> — Mathematics and English are fully free. Upgrade to Premium for 75 Leones to unlock all subjects, quizzes, and exams.
              </p>
            </div>
          )}


          <form onSubmit={handleSubmit} className="space-y-4">
            {mode === 'signup' && (
              <div>
                <label className="block text-xs font-medium text-slate-300 mb-1.5">Full Name</label>
                <input
                  type="text"
                  value={name}
                  onChange={e => setName(e.target.value)}
                  placeholder="e.g. Kwame Mensah"
                  required
                  className="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition-all"
                />
              </div>
            )}

            <div>
              <label className="block text-xs font-medium text-slate-300 mb-1.5">Email Address</label>
              <input
                type="email"
                value={email}
                onChange={e => setEmail(e.target.value)}
                placeholder="your@email.com"
                required
                className="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white placeholder-slate-500 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition-all"
              />
            </div>

            {mode !== 'forgot' && (
              <div>
                <label className="block text-xs font-medium text-slate-300 mb-1.5">Password</label>
                <div className="relative">
                  <input
                    type={showPassword ? 'text' : 'password'}
                    value={password}
                    onChange={e => setPassword(e.target.value)}
                    placeholder={mode === 'signup' ? 'Minimum 6 characters' : 'Enter your password'}
                    required
                    minLength={6}
                    className="w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 pr-11 text-white placeholder-slate-500 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition-all"
                  />
                  <button
                    type="button"
                    onClick={() => setShowPassword(!showPassword)}
                    className="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-200"
                  >
                    {showPassword ? <EyeOff size={16} /> : <Eye size={16} />}
                  </button>
                </div>
              </div>
            )}

            {mode === 'login' && (
              <div className="flex justify-end -mt-1">
                <button
                  type="button"
                  onClick={() => { setMode('forgot'); setError(''); setPassword(''); }}
                  className="text-xs text-blue-400 hover:text-blue-300 transition-colors"
                >
                  Forgot password?
                </button>
              </div>
            )}

            {error && (
              <div className="p-3 bg-red-500/10 border border-red-500/20 rounded-xl">
                <p className="text-xs text-red-300">{error}</p>
              </div>
            )}

            <button
              type="submit"
              disabled={loading}
              className="w-full py-3 bg-blue-600 hover:bg-blue-500 disabled:opacity-60 text-white font-semibold rounded-xl transition-all shadow-lg shadow-blue-600/30 flex items-center justify-center gap-2"
            >
              {loading && <Loader2 size={18} className="animate-spin" />}
              {loading
                ? 'Please wait...'
                : mode === 'login'
                ? 'Sign In with Email'
                : mode === 'signup'
                ? 'Create Free Account'
                : 'Send Reset Link'}
            </button>
          </form>
        </div>

        <p className="text-center text-slate-600 text-xs mt-6">
          Ghana · Nigeria · Sierra Leone · Liberia · Gambia
        </p>
      </div>
    </div>
  );
}
