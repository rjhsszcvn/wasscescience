import { X, LogIn, UserPlus, Sparkles, BookOpen, Trophy, BarChart2, Users } from 'lucide-react';

interface AuthPromptModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSignUp: () => void;
  onSignIn: () => void;
  reason?: 'progress' | 'quiz' | 'hub' | 'leaderboard' | 'notifications' | 'dashboard' | 'general';
}

const REASON_CONFIG = {
  progress: {
    title: 'Save Your Progress',
    desc: 'Create an account to track your scores, see your performance history, and pick up right where you left off.',
    highlight: 'Your quiz results will be lost as a guest.',
  },
  quiz: {
    title: 'Unlock Full Quiz Results',
    desc: 'Sign up to save your scores, review answers, and track your improvement across all topics.',
    highlight: 'Guests can still take quizzes — sign up to save results.',
  },
  hub: {
    title: 'Join the Student Hub',
    desc: 'Ask questions, share study tips, and connect with thousands of WASSCE students across West Africa.',
    highlight: 'The Student Hub is exclusive to registered students.',
  },
  leaderboard: {
    title: 'Join the Leaderboard',
    desc: 'Compete with top students, track your rank, and stay motivated every day.',
    highlight: 'Sign up to appear on the leaderboard.',
  },
  notifications: {
    title: 'Get Notifications',
    desc: 'Stay updated with new questions, study reminders, and replies from the Student Hub.',
    highlight: 'Notifications are available to registered students.',
  },
  dashboard: {
    title: 'Your Personal Dashboard',
    desc: 'Track your progress across all 8 subjects, see your weak areas, and stay on top of your study plan.',
    highlight: 'The dashboard is available to registered students only.',
  },
  general: {
    title: 'Create Your Account',
    desc: 'Save your progress, access all features, and join thousands of WASSCE students preparing smarter.',
    highlight: 'It takes less than a minute to sign up.',
  },
};

const BENEFITS = [
  { icon: BarChart2, text: 'Track progress across all subjects' },
  { icon: Trophy, text: 'Compete on the leaderboard' },
  { icon: Users, text: 'Join the Student Hub' },
  { icon: BookOpen, text: 'Unlimited quizzes with saved results' },
];

export default function AuthPromptModal({ isOpen, onClose, onSignUp, onSignIn, reason = 'general' }: AuthPromptModalProps) {
  if (!isOpen) return null;

  const config = REASON_CONFIG[reason];

  return (
    <div className="fixed inset-0 z-[100] flex items-end sm:items-center justify-center p-4">
      <div
        className="absolute inset-0 bg-black/60 backdrop-blur-sm"
        onClick={onClose}
      />

      <div className="relative w-full max-w-md bg-white rounded-3xl shadow-2xl overflow-hidden animate-slide-up">
        <div className="absolute top-0 left-0 right-0 h-1.5 bg-gradient-to-r from-blue-500 via-cyan-400 to-blue-600" />

        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 rounded-xl text-slate-400 hover:text-slate-600 hover:bg-slate-100 transition-colors"
        >
          <X size={18} />
        </button>

        <div className="p-7 pt-8">
          <div className="flex items-center gap-3 mb-5">
            <div className="w-12 h-12 bg-blue-100 rounded-2xl flex items-center justify-center">
              <Sparkles size={22} className="text-blue-600" />
            </div>
            <div>
              <h2 className="text-xl font-black text-slate-900">{config.title}</h2>
              <p className="text-xs text-blue-600 font-semibold">Free access to Maths &amp; English — Upgrade for everything</p>
            </div>
          </div>

          <p className="text-slate-600 text-sm leading-relaxed mb-4">{config.desc}</p>

          <div className="bg-amber-50 border border-amber-200 rounded-xl px-4 py-3 mb-5">
            <p className="text-amber-800 text-xs font-semibold">{config.highlight}</p>
          </div>

          <div className="grid grid-cols-2 gap-2 mb-6">
            {BENEFITS.map(({ icon: Icon, text }) => (
              <div key={text} className="flex items-center gap-2 text-slate-600 text-xs">
                <div className="w-6 h-6 bg-blue-50 rounded-lg flex items-center justify-center flex-shrink-0">
                  <Icon size={13} className="text-blue-500" />
                </div>
                {text}
              </div>
            ))}
          </div>

          <div className="space-y-3">
            <button
              onClick={onSignUp}
              className="w-full flex items-center justify-center gap-2.5 px-5 py-3.5 bg-blue-600 hover:bg-blue-500 text-white font-bold rounded-2xl transition-all shadow-lg shadow-blue-600/25 hover:shadow-blue-500/30 hover:scale-[1.02] active:scale-[0.98]"
            >
              <UserPlus size={17} />
              Create Account
            </button>

            <button
              onClick={onSignIn}
              className="w-full flex items-center justify-center gap-2.5 px-5 py-3.5 bg-slate-100 hover:bg-slate-200 text-slate-700 font-bold rounded-2xl transition-colors"
            >
              <LogIn size={17} />
              Sign In
            </button>

            <button
              onClick={onClose}
              className="w-full py-2.5 text-slate-400 text-sm hover:text-slate-600 transition-colors"
            >
              Continue as guest
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
