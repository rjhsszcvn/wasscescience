import { useState } from 'react';
import { GraduationCap, Users, ChevronRight, CheckCircle, BookOpen, Globe, Brain } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { Country, UserRole } from '../../lib/types';

const COUNTRIES: { value: Country; flag: string; description: string }[] = [
  { value: 'Ghana', flag: '🇬🇭', description: 'WASSCE administered by WAEC Ghana' },
  { value: 'Nigeria', flag: '🇳🇬', description: 'WASSCE administered by WAEC Nigeria' },
  { value: 'Sierra Leone', flag: '🇸🇱', description: 'WASSCE administered by WAEC Sierra Leone' },
  { value: 'Liberia', flag: '🇱🇷', description: 'WASSCE administered by WAEC Liberia' },
  { value: 'Gambia', flag: '🇬🇲', description: 'WASSCE administered by WAEC Gambia' },
];

const SUBJECTS = [
  'Mathematics', 'English Language', 'Physics', 'Chemistry', 'Biology',
  'Geography', 'Further Mathematics',
];

interface OnboardingFlowProps {
  onComplete: () => void;
}

export default function OnboardingFlow({ onComplete }: OnboardingFlowProps) {
  const { updateProfile } = useAuth();
  const [step, setStep] = useState(1);
  const [role, setRole] = useState<UserRole>('student');
  const [country, setCountry] = useState<Country | ''>('');
  const [weakSubjects, setWeakSubjects] = useState<string[]>([]);
  const [loading, setLoading] = useState(false);

  const toggleSubject = (s: string) => {
    setWeakSubjects(prev => prev.includes(s) ? prev.filter(x => x !== s) : [...prev, s]);
  };

  const handleComplete = async () => {
    if (!country) return;
    setLoading(true);
    await updateProfile({
      role,
      country: country as Country,
      weak_subjects: weakSubjects,
      onboarding_complete: true,
    });
    onComplete();
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 flex items-center justify-center p-4">
      <div className="absolute inset-0 overflow-hidden pointer-events-none">
        <div className="absolute top-1/3 left-1/3 w-96 h-96 bg-blue-500/10 rounded-full blur-3xl" />
      </div>

      <div className="w-full max-w-lg relative">
        <div className="flex items-center justify-center gap-2 mb-8">
          {[1, 2, 3].map(i => (
            <div key={i} className="flex items-center gap-2">
              <div className={`w-8 h-8 rounded-full flex items-center justify-center text-xs font-bold transition-all ${
                step > i ? 'bg-green-500 text-white' :
                step === i ? 'bg-blue-600 text-white ring-4 ring-blue-600/30' :
                'bg-white/10 text-slate-400'
              }`}>
                {step > i ? <CheckCircle size={16} /> : i}
              </div>
              {i < 3 && <div className={`w-12 h-0.5 transition-all ${step > i ? 'bg-green-500' : 'bg-white/10'}`} />}
            </div>
          ))}
        </div>

        <div className="bg-white/5 backdrop-blur-xl border border-white/10 rounded-2xl p-8 shadow-2xl">
          {step === 1 && (
            <div>
              <div className="text-center mb-6">
                <BookOpen size={32} className="text-blue-400 mx-auto mb-3" />
                <h2 className="text-2xl font-bold text-white mb-1">Welcome to WASCCEScience</h2>
                <p className="text-slate-400 text-sm">How will you be using this platform?</p>
              </div>

              <div className="grid grid-cols-2 gap-4 mb-6">
                <button
                  onClick={() => setRole('student')}
                  className={`p-5 rounded-2xl border-2 transition-all text-center ${
                    role === 'student'
                      ? 'border-blue-500 bg-blue-500/10'
                      : 'border-white/10 hover:border-white/20'
                  }`}
                >
                  <GraduationCap size={32} className={`mx-auto mb-3 ${role === 'student' ? 'text-blue-400' : 'text-slate-400'}`} />
                  <p className={`font-bold text-sm ${role === 'student' ? 'text-white' : 'text-slate-300'}`}>Student</p>
                  <p className="text-xs text-slate-500 mt-1">Preparing for WASSCE</p>
                </button>

                <button
                  onClick={() => setRole('teacher')}
                  className={`p-5 rounded-2xl border-2 transition-all text-center ${
                    role === 'teacher'
                      ? 'border-blue-500 bg-blue-500/10'
                      : 'border-white/10 hover:border-white/20'
                  }`}
                >
                  <Users size={32} className={`mx-auto mb-3 ${role === 'teacher' ? 'text-blue-400' : 'text-slate-400'}`} />
                  <p className={`font-bold text-sm ${role === 'teacher' ? 'text-white' : 'text-slate-300'}`}>Teacher</p>
                  <p className="text-xs text-slate-500 mt-1">Teaching WASSCE subjects</p>
                </button>
              </div>

              <button
                onClick={() => setStep(2)}
                className="w-full py-3 bg-blue-600 hover:bg-blue-500 text-white font-semibold rounded-xl transition-all flex items-center justify-center gap-2"
              >
                Continue <ChevronRight size={18} />
              </button>
            </div>
          )}

          {step === 2 && (
            <div>
              <div className="text-center mb-6">
                <Globe size={32} className="text-blue-400 mx-auto mb-3" />
                <h2 className="text-2xl font-bold text-white mb-1">Select Your Country</h2>
                <p className="text-slate-400 text-sm">Your country determines your WASSCE region and Student Hub community</p>
              </div>

              <div className="space-y-2 mb-6">
                {COUNTRIES.map(c => (
                  <button
                    key={c.value}
                    onClick={() => setCountry(c.value)}
                    className={`w-full flex items-center gap-4 p-4 rounded-xl border-2 transition-all ${
                      country === c.value
                        ? 'border-blue-500 bg-blue-500/10'
                        : 'border-white/10 hover:border-white/20'
                    }`}
                  >
                    <span className="text-2xl">{c.flag}</span>
                    <div className="text-left">
                      <p className={`font-semibold text-sm ${country === c.value ? 'text-white' : 'text-slate-300'}`}>{c.value}</p>
                      <p className="text-xs text-slate-500">{c.description}</p>
                    </div>
                    {country === c.value && (
                      <CheckCircle size={18} className="ml-auto text-blue-400" />
                    )}
                  </button>
                ))}
              </div>

              <div className="flex gap-3">
                <button
                  onClick={() => setStep(1)}
                  className="flex-1 py-3 border border-white/10 text-slate-300 font-semibold rounded-xl hover:bg-white/5 transition-all"
                >
                  Back
                </button>
                <button
                  onClick={() => setStep(3)}
                  disabled={!country}
                  className="flex-1 py-3 bg-blue-600 hover:bg-blue-500 disabled:opacity-40 text-white font-semibold rounded-xl transition-all flex items-center justify-center gap-2"
                >
                  Continue <ChevronRight size={18} />
                </button>
              </div>
            </div>
          )}

          {step === 3 && (
            <div>
              <div className="text-center mb-6">
                <Brain size={32} className="text-blue-400 mx-auto mb-3" />
                <h2 className="text-2xl font-bold text-white mb-1">Personalize Your Learning</h2>
                <p className="text-slate-400 text-sm">Select subjects you find difficult (optional — helps us personalize your dashboard)</p>
              </div>

              <div className="grid grid-cols-2 gap-2 mb-6">
                {SUBJECTS.map(s => (
                  <button
                    key={s}
                    onClick={() => toggleSubject(s)}
                    className={`p-3 rounded-xl border-2 text-xs font-semibold transition-all ${
                      weakSubjects.includes(s)
                        ? 'border-red-500 bg-red-500/10 text-red-300'
                        : 'border-white/10 text-slate-400 hover:border-white/20'
                    }`}
                  >
                    {weakSubjects.includes(s) ? '⚠ ' : ''}{s}
                  </button>
                ))}
              </div>

              <p className="text-xs text-slate-500 text-center mb-4">
                {weakSubjects.length > 0
                  ? `${weakSubjects.length} subject${weakSubjects.length > 1 ? 's' : ''} selected as weak areas`
                  : 'No subjects selected — you can update this later in your profile'
                }
              </p>

              <div className="flex gap-3">
                <button
                  onClick={() => setStep(2)}
                  className="flex-1 py-3 border border-white/10 text-slate-300 font-semibold rounded-xl hover:bg-white/5 transition-all"
                >
                  Back
                </button>
                <button
                  onClick={handleComplete}
                  disabled={loading}
                  className="flex-1 py-3 bg-green-600 hover:bg-green-500 disabled:opacity-40 text-white font-semibold rounded-xl transition-all flex items-center justify-center gap-2"
                >
                  {loading ? 'Setting up...' : 'Get Started!'}
                </button>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
