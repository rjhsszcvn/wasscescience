import { useState, useEffect } from 'react';
import {
  BookOpen, CheckCircle, Trophy, Zap, Users, BarChart2, ChevronRight, Play, Star,
  Clock, Globe, Calculator, BookText, Atom, FlaskConical, Leaf, Sigma, Sprout,
  ArrowRight, Shield, Target, TrendingUp, Award, MessageSquare, Lightbulb,
  FileText, Brain, ChevronUp, Microscope, HeartPulse, Dumbbell, Lock, ClipboardList
} from 'lucide-react';
import { InstallButton } from '../pwa/InstallButton';

interface LandingPageProps {
  onGetStarted: () => void;
  onSignIn: () => void;
  onBrowseSubjects?: () => void;
  onAdmin?: () => void;
  onNavigate?: (page: string) => void;
}

const SUBJECTS = [
  { name: 'Mathematics', icon: Calculator, color: 'from-blue-500 to-blue-600', topics: 25, desc: 'Algebra, Trigonometry, Statistics, Vectors & more', free: true },
  { name: 'English Language', icon: BookText, color: 'from-green-500 to-green-600', topics: 20, desc: 'Essay Writing, Comprehension, Grammar & Literature', free: true },
  { name: 'Physics', icon: Atom, color: 'from-red-500 to-red-600', topics: 20, desc: 'Mechanics, Waves, Electricity, Electronics & more', free: false },
  { name: 'Chemistry', icon: FlaskConical, color: 'from-teal-500 to-teal-600', topics: 20, desc: 'Organic Chemistry, Acids, Metals, Electrochemistry', free: false },
  { name: 'Biology', icon: Leaf, color: 'from-emerald-500 to-emerald-600', topics: 20, desc: 'Cell Biology, Genetics, Ecology, Reproduction & more', free: false },
  { name: 'Geography', icon: Globe, color: 'from-orange-500 to-orange-600', topics: 20, desc: 'Physical Geography, Maps, Climate & Human Geography', free: false },
  { name: 'Further Mathematics', icon: Sigma, color: 'from-cyan-500 to-cyan-600', topics: 20, desc: 'Calculus, Complex Numbers, Differential Equations', free: false },
  { name: 'Agricultural Science', icon: Sprout, color: 'from-lime-500 to-lime-600', topics: 20, desc: 'Crop Farming, Livestock, Soils & Farm Management', free: false },
  { name: 'Core Science', icon: Microscope, color: 'from-violet-500 to-violet-600', topics: 20, desc: 'Scientific Method, Physics, Chemistry & Biology Fundamentals', free: false },
  { name: 'Health Science', icon: HeartPulse, color: 'from-rose-500 to-rose-600', topics: 20, desc: 'Human Body, Disease Prevention, Nutrition & First Aid', free: false },
  { name: 'Physical Education', icon: Dumbbell, color: 'from-amber-500 to-amber-600', topics: 20, desc: 'Sports Science, Fitness, Athletics & PE Theory', free: false },
];

const FEATURES = [
  { icon: Brain, title: 'Smart Study Notes', desc: 'Comprehensive, exam-focused notes written for WASSCE. Each topic broken into clear, digestible sections with real examples.', color: '#2563eb', bg: '#eff6ff' },
  { icon: Zap, title: 'Timed Exam Engine', desc: 'Simulate real WASSCE conditions. 40-question exams with a 45-minute timer, just like the actual paper.', color: '#d97706', bg: '#fffbeb' },
  { icon: Target, title: 'Topic Quizzes', desc: '10-question quizzes per topic with instant feedback, full explanations, and difficulty tracking.', color: '#16a34a', bg: '#f0fdf4' },
  { icon: BarChart2, title: 'Progress Tracking', desc: 'Track exactly which topics you have mastered and where you need more practice across all 11 subjects.', color: '#0d9488', bg: '#f0fdfa' },
  { icon: Users, title: 'Student Hub', desc: 'Post questions, get answers from peers, and help others. A supportive community of West African students.', color: '#dc2626', bg: '#fef2f2' },
  { icon: Trophy, title: 'Leaderboard', desc: 'See how you rank against students across Ghana, Nigeria, Sierra Leone, and more. Stay motivated.', color: '#ea580c', bg: '#fff7ed' },
  { icon: Shield, title: 'Premium Ad-Free Access', desc: 'Upgrade once for 75 Leones and enjoy a completely ad-free, uninterrupted learning experience for a full year.', color: '#059669', bg: '#ecfdf5' },
  { icon: Award, title: 'Past Questions', desc: 'Practice with questions modeled on real past WAEC exams. Know what to expect before exam day.', color: '#0891b2', bg: '#ecfeff' },
];

const TESTIMONIALS = [
  { name: 'Ama Owusu', country: 'Ghana', role: 'WASSCE 2025 Candidate', text: 'I improved my Physics score from C6 to A1 after just 3 weeks of daily practice on WASCCEScience. The timed exams are incredibly realistic.', stars: 5 },
  { name: 'Emeka Nwosu', country: 'Nigeria', role: 'Science Student', text: 'The timed exam engine is exactly like the real WAEC. This is the best free revision resource I have ever used and I have tried many.', stars: 5 },
  { name: 'Fatou Diallo', country: 'Gambia', role: 'Form 5 Student', text: 'My teachers recommend WASCCEScience to the whole class. The topic breakdowns and explanations make everything so clear and easy.', stars: 5 },
  { name: 'Kojo Mensah', country: 'Ghana', role: 'Science Student', text: 'The Biology notes here are the most detailed I have found anywhere online. I used them to ace my mocks. A1 in Biology!', stars: 5 },
  { name: 'Ngozi Eze', country: 'Nigeria', role: 'WASSCE Candidate', text: 'I love the Student Hub feature. Any question I post gets answered within hours. Feels like having a study group online.', stars: 5 },
  { name: 'Abdul Jalloh', country: 'Sierra Leone', role: 'Form 5 Student', text: 'The leaderboard keeps me motivated every single day. I try to stay in the top 10 and it pushes me to study harder.', stars: 5 },
];

const HOW_IT_WORKS = [
  { step: '01', title: 'Create Your Account', desc: 'Sign up with just your email. Takes 30 seconds. Maths and English are fully free — no payment needed.' },
  { step: '02', title: 'Choose Your Subjects', desc: 'Select the subjects you are studying and tell us which ones you find difficult.' },
  { step: '03', title: 'Read, Practice, Repeat', desc: 'Study the notes, take topic quizzes, then test yourself with the full exam engine.' },
  { step: '04', title: 'Upgrade for Full Access', desc: 'Upgrade to Premium for 75 Leones. Pay once via WhatsApp or PayPal — access for a full year.' },
];


const STATS = [
  { value: '10K+', label: 'Active Students' },
  { value: '2,400+', label: 'Practice Questions' },
  { value: '11', label: 'Subjects Covered' },
  { value: '94%', label: 'Pass Rate Improvement' },
];

export default function LandingPage({ onGetStarted, onSignIn, onBrowseSubjects, onAdmin, onNavigate }: LandingPageProps) {
  const [activeTestimonial, setActiveTestimonial] = useState(0);
  const [showBackToTop, setShowBackToTop] = useState(false);
  const [headerCompact, setHeaderCompact] = useState(false);

  useEffect(() => {
    const timer = setInterval(() => {
      setActiveTestimonial(prev => (prev + 1) % TESTIMONIALS.length);
    }, 5000);
    return () => clearInterval(timer);
  }, []);

  useEffect(() => {
    let rafId: number;
    let lastScrollY = window.scrollY;

    function onScroll() {
      cancelAnimationFrame(rafId);
      rafId = requestAnimationFrame(() => {
        const y = window.scrollY;
        setShowBackToTop(y > 600);
        setHeaderCompact(y > 24);
        lastScrollY = y;
      });
    }

    window.addEventListener('scroll', onScroll, { passive: true });
    return () => {
      window.removeEventListener('scroll', onScroll);
      cancelAnimationFrame(rafId);
      void lastScrollY;
    };
  }, []);

  function scrollToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  return (
    <div className="min-h-dvh bg-white text-slate-900">

      <div style={{ height: headerCompact ? '52px' : '64px', transition: 'height 180ms ease-out' }} />
      <header
        className="fixed top-0 left-0 right-0 z-50 glass border-b border-slate-200/60 will-change-transform"
        style={{
          boxShadow: headerCompact
            ? '0 2px 12px rgba(0,0,0,0.07), 0 1px 3px rgba(0,0,0,0.04)'
            : '0 1px 3px rgba(0,0,0,0.04)',
          transition: 'box-shadow 180ms ease-out',
        }}
      >
        <div
          className="max-w-7xl mx-auto flex items-center justify-between px-4 sm:px-6 lg:px-8"
          style={{
            height: headerCompact ? '52px' : '64px',
            transition: 'height 180ms ease-out',
          }}
        >
          <div
            className="flex items-center gap-2.5"
            style={{
              transform: headerCompact ? 'scale(0.93)' : 'scale(1)',
              transformOrigin: 'left center',
              transition: 'transform 180ms ease-out',
            }}
          >
            <div className="w-9 h-9 bg-gradient-to-br from-blue-600 to-blue-700 rounded-xl flex items-center justify-center shadow-sm shadow-blue-200/50">
              <BookOpen size={17} className="text-white" />
            </div>
            <span className="font-black text-slate-900 text-[17px] tracking-tight">WASSCE<span className="text-blue-600">Science</span></span>
          </div>
          <nav className="hidden md:flex items-center gap-0.5">
            {onBrowseSubjects && (
              <button onClick={onBrowseSubjects} className="px-4 py-2 text-sm font-medium text-slate-600 hover:text-slate-900 hover:bg-slate-100/80 rounded-xl transition-all">
                Subjects
              </button>
            )}
            <button onClick={() => onNavigate?.('past-questions')} className="px-4 py-2 text-sm font-medium text-slate-600 hover:text-slate-900 hover:bg-slate-100/80 rounded-xl transition-all">
              Past Questions
            </button>
            <button onClick={() => onNavigate?.('exam-tips')} className="px-4 py-2 text-sm font-medium text-slate-600 hover:text-slate-900 hover:bg-slate-100/80 rounded-xl transition-all">
              Exam Tips
            </button>
            <button onClick={() => onNavigate?.('faq')} className="px-4 py-2 text-sm font-medium text-slate-600 hover:text-slate-900 hover:bg-slate-100/80 rounded-xl transition-all">
              FAQ
            </button>
          </nav>
          <div className="flex items-center gap-2">
            <button onClick={onSignIn} className="px-4 py-2 text-sm font-semibold text-slate-700 hover:bg-slate-100/80 rounded-xl transition-all hidden sm:block">
              Sign In
            </button>
            <button
              onClick={onGetStarted}
              className="bg-blue-600 hover:bg-blue-500 text-white text-sm font-bold rounded-xl transition-all active:scale-95"
              style={{
                boxShadow: '0 2px 8px rgba(37,99,235,0.25)',
                padding: headerCompact ? '7px 14px' : '8px 16px',
                transition: 'padding 180ms ease-out',
              }}
            >
              Get Started Free
            </button>
          </div>
        </div>
      </header>

      <section className="relative overflow-hidden text-white" style={{ background: 'linear-gradient(160deg, #0c1120 0%, #0f172a 40%, #111827 100%)' }}>
        <div className="absolute inset-0 pointer-events-none overflow-hidden">
          <div className="absolute top-0 left-1/4 w-[600px] h-[600px] rounded-full" style={{ background: 'radial-gradient(circle, rgba(37,99,235,0.12) 0%, transparent 70%)' }} />
          <div className="absolute top-1/3 right-0 w-[400px] h-[400px] rounded-full" style={{ background: 'radial-gradient(circle, rgba(14,165,233,0.08) 0%, transparent 70%)' }} />
          <div className="absolute bottom-0 left-0 w-[300px] h-[300px] rounded-full" style={{ background: 'radial-gradient(circle, rgba(37,99,235,0.06) 0%, transparent 70%)' }} />
          <div className="absolute inset-0 opacity-[0.03]" style={{ backgroundImage: 'radial-gradient(circle, #fff 1px, transparent 1px)', backgroundSize: '32px 32px' }} />
        </div>

        <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 pt-20 sm:pt-28 pb-16 sm:pb-24 text-center">
          <div className="flex items-center justify-center gap-2 mb-6">
            <div className="flex -space-x-2">
              {['#2563eb','#16a34a','#dc2626','#d97706','#0d9488'].map((c, i) => (
                <div key={i} className="w-7 h-7 rounded-full border-2 border-slate-900 flex items-center justify-center text-white text-[10px] font-black" style={{ background: c }}>
                  {['GH','NG','SL','GM','LR'][i]}
                </div>
              ))}
            </div>
            <p className="text-slate-400 text-xs font-medium">10,000+ students across West Africa</p>
          </div>

          <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full text-xs font-bold mb-6 tracking-wide border" style={{ background: 'rgba(34,197,94,0.1)', borderColor: 'rgba(34,197,94,0.2)', color: '#86efac' }}>
            <div className="w-1.5 h-1.5 bg-green-400 rounded-full animate-pulse" />
            MATHS &amp; ENGLISH FREE — UNLOCK ALL 11 SUBJECTS FOR 75 LEONES
          </div>

          <h1 className="text-[2.6rem] sm:text-5xl lg:text-[4rem] xl:text-7xl font-black leading-[1.04] tracking-tight mb-6 text-balance">
            Ace Your{' '}
            <span style={{ background: 'linear-gradient(135deg, #60a5fa, #38bdf8, #60a5fa)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent', backgroundClip: 'text' }}>
              WASSCE
            </span>
            <br />
            Science Exams
          </h1>

          <p className="text-base sm:text-lg lg:text-xl max-w-2xl mx-auto leading-relaxed mb-10 text-balance" style={{ color: '#94a3b8' }}>
            The most complete WASSCE preparation platform for West African students.
            11 subjects. 2,400+ questions. Maths &amp; English free — unlock everything for 75 Leones once.
          </p>

          <div className="flex flex-col items-center justify-center gap-3 mb-8">
            <div className="flex flex-col sm:flex-row items-center justify-center gap-3 w-full">
              <button
                onClick={onGetStarted}
                className="group flex items-center justify-center gap-2.5 w-full sm:w-auto px-8 py-4 text-white font-bold text-base rounded-2xl transition-all hover:scale-[1.02] active:scale-95"
                style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 8px 32px rgba(37,99,235,0.35)' }}
              >
                <Play size={15} className="fill-white" />
                Get Started Free
                <ChevronRight size={14} className="group-hover:translate-x-1 transition-transform" />
              </button>
              {onBrowseSubjects && (
                <button
                  onClick={onBrowseSubjects}
                  className="group flex items-center justify-center gap-2.5 w-full sm:w-auto px-8 py-4 font-semibold text-base rounded-2xl transition-all hover:scale-[1.02] active:scale-95"
                  style={{ background: 'rgba(255,255,255,0.07)', border: '1px solid rgba(255,255,255,0.15)', color: '#e2e8f0' }}
                >
                  <BookOpen size={15} />
                  Browse Subjects
                  <ChevronRight size={14} className="group-hover:translate-x-1 transition-transform" />
                </button>
              )}
            </div>
            <InstallButton variant="hero" className="w-full sm:w-auto" />
          </div>

          <div className="flex flex-wrap items-center justify-center gap-x-5 gap-y-2 mb-10">
            {[
              { icon: CheckCircle, text: '11 subjects covered' },
              { icon: CheckCircle, text: '2,400+ practice questions' },
              { icon: CheckCircle, text: 'Maths & English free' },
              { icon: CheckCircle, text: 'Works offline' },
            ].map(({ icon: Icon, text }) => (
              <div key={text} className="flex items-center gap-1.5 text-sm" style={{ color: '#64748b' }}>
                <Icon size={13} className="text-green-400 flex-shrink-0" />
                {text}
              </div>
            ))}
          </div>

          <div className="rounded-2xl p-6 sm:p-8" style={{ background: 'rgba(255,255,255,0.04)', border: '1px solid rgba(255,255,255,0.08)' }}>
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-6 text-center">
              {STATS.map(({ value, label }) => (
                <div key={label}>
                  <p className="text-3xl sm:text-4xl font-black text-white mb-1 tracking-tight">{value}</p>
                  <p className="text-xs sm:text-sm" style={{ color: '#64748b' }}>{label}</p>
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-24" style={{ background: '#f8fafc' }}>
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <span className="inline-block px-3 py-1 bg-blue-100 text-blue-700 text-xs font-black rounded-full mb-4 tracking-wider uppercase">11 Subjects</span>
            <h2 className="text-3xl sm:text-4xl font-black text-slate-900 mb-4 tracking-tight">Complete WASSCE Subject Coverage</h2>
            <p className="text-slate-500 text-base max-w-2xl mx-auto">Every subject you need for your WASSCE exams. Maths and English are free for everyone — unlock the rest with Premium.</p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {SUBJECTS.map(({ name, icon: Icon, color, topics, desc, free }) => (
              <div
                key={name}
                onClick={free ? onBrowseSubjects : onGetStarted}
                className={`group bg-white border rounded-2xl overflow-hidden cursor-pointer transition-all duration-200 hover:-translate-y-1 ${free ? 'border-slate-200/80' : 'border-slate-200/60'}`}
                style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
              >
                <div className={`h-1 bg-gradient-to-r ${free ? color : 'from-slate-300 to-slate-400'}`} />
                <div className={`p-5 ${!free ? 'opacity-75' : ''}`}>
                  <div className="flex items-center gap-3 mb-3">
                    <div className={`w-10 h-10 rounded-xl flex items-center justify-center text-white flex-shrink-0 ${free ? `bg-gradient-to-br ${color}` : 'bg-slate-300'}`}
                      style={{ boxShadow: free ? '0 4px 12px rgba(0,0,0,0.15)' : 'none' }}>
                      {free ? <Icon size={19} /> : <Lock size={16} className="text-slate-500" />}
                    </div>
                    <div className="flex-1 min-w-0">
                      <h3 className="font-black text-slate-800 text-sm leading-tight truncate">{name}</h3>
                      {free ? (
                        <span className="inline-block mt-0.5 text-[10px] font-bold text-green-700 bg-green-100 px-1.5 py-0.5 rounded-full">FREE</span>
                      ) : (
                        <span className="inline-flex items-center gap-0.5 mt-0.5 text-[10px] font-bold text-amber-700 bg-amber-100 px-1.5 py-0.5 rounded-full">
                          <Lock size={8} />PREMIUM
                        </span>
                      )}
                    </div>
                  </div>
                  <p className="text-xs text-slate-500 mb-4 leading-relaxed line-clamp-2">{desc}</p>
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-bold text-slate-500 bg-slate-100 px-2.5 py-1 rounded-full">{topics} Topics</span>
                    {free ? (
                      <ArrowRight size={14} className="text-slate-300 group-hover:text-slate-600 group-hover:translate-x-0.5 transition-all" />
                    ) : (
                      <span className="text-[10px] font-bold text-amber-600 bg-amber-50 px-2 py-1 rounded-full border border-amber-200">Unlock</span>
                    )}
                  </div>
                </div>
              </div>
            ))}
          </div>

          <div className="mt-8 text-center">
            <button
              onClick={onBrowseSubjects}
              className="inline-flex items-center gap-2 px-6 py-3 bg-slate-900 hover:bg-slate-800 text-white font-bold text-sm rounded-xl transition-all active:scale-95"
            >
              <BookOpen size={15} />
              Browse All Subjects
              <ChevronRight size={13} />
            </button>
          </div>
        </div>
      </section>

      <section id="features" className="py-16 sm:py-24 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <span className="inline-block px-3 py-1 bg-green-100 text-green-700 text-xs font-black rounded-full mb-4 tracking-wider uppercase">Features</span>
            <h2 className="text-3xl sm:text-4xl font-black text-slate-900 mb-4 tracking-tight">Everything You Need to Pass WASSCE</h2>
            <p className="text-slate-500 text-base max-w-2xl mx-auto">Built specifically for the WASSCE exam. Maths and English free for all — Premium unlocks 9 more subjects, Student Hub, Leaderboard, and an ad-free experience.</p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {FEATURES.map(({ icon: Icon, title, desc, color, bg }) => (
              <div
                key={title}
                className="group bg-white border border-slate-200/80 rounded-2xl p-5 hover:border-slate-300 transition-all duration-200 hover:-translate-y-0.5"
                style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
              >
                <div
                  className="w-10 h-10 rounded-xl flex items-center justify-center mb-4"
                  style={{ background: bg }}
                >
                  <Icon size={18} style={{ color }} />
                </div>
                <h3 className="font-black text-slate-800 mb-2 text-sm tracking-tight">{title}</h3>
                <p className="text-slate-500 text-xs leading-relaxed">{desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-24 text-white" style={{ background: 'linear-gradient(160deg, #0c1120 0%, #0f172a 100%)' }}>
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <span className="inline-block px-3 py-1 text-xs font-black rounded-full mb-4 tracking-wider uppercase border" style={{ background: 'rgba(37,99,235,0.15)', borderColor: 'rgba(37,99,235,0.3)', color: '#93c5fd' }}>How It Works</span>
            <h2 className="text-3xl sm:text-4xl font-black text-white mb-4 tracking-tight">Start in 4 Simple Steps</h2>
            <p className="text-base max-w-xl mx-auto" style={{ color: '#64748b' }}>Get from zero to exam-ready faster than any other platform. Here is how students use WASCCEScience.</p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            {HOW_IT_WORKS.map(({ step, title, desc }, i) => (
              <div key={step} className="relative">
                {i < HOW_IT_WORKS.length - 1 && (
                  <div className="hidden lg:block absolute top-8 left-full w-full h-px" style={{ background: 'linear-gradient(to right, rgba(37,99,235,0.4), transparent)' }} />
                )}
                <div className="text-[3.5rem] font-black leading-none mb-3 tracking-tight" style={{ color: 'rgba(30,64,175,0.5)' }}>{step}</div>
                <h3 className="font-black text-white text-base mb-2 tracking-tight">{title}</h3>
                <p className="text-sm leading-relaxed" style={{ color: '#64748b' }}>{desc}</p>
              </div>
            ))}
          </div>

          <div className="mt-14 text-center">
            <button
              onClick={onGetStarted}
              className="group inline-flex items-center gap-2.5 px-8 py-4 text-white font-bold text-base rounded-2xl transition-all hover:scale-[1.02] active:scale-95"
              style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 8px 32px rgba(37,99,235,0.35)' }}
            >
              <Play size={15} className="fill-white" />
              Get Started Free
              <ChevronRight size={14} className="group-hover:translate-x-1 transition-transform" />
            </button>
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-24 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <span className="inline-block px-3 py-1 bg-amber-100 text-amber-700 text-xs font-black rounded-full mb-4 tracking-wider uppercase">Testimonials</span>
            <h2 className="text-3xl sm:text-4xl font-black text-slate-900 mb-4 tracking-tight">Real Students, Real Results</h2>
            <p className="text-slate-500 text-base">Hear from WASSCE students across West Africa who used this platform to prepare.</p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 mb-6">
            {TESTIMONIALS.map((t, i) => (
              <div
                key={t.name}
                onClick={() => setActiveTestimonial(i)}
                className={`cursor-pointer bg-white rounded-2xl p-5 sm:p-6 transition-all duration-200 border ${
                  activeTestimonial === i
                    ? 'border-blue-200 shadow-lg'
                    : 'border-slate-200/80 hover:border-slate-300 hover:-translate-y-0.5'
                }`}
                style={activeTestimonial === i ? { boxShadow: '0 8px 32px rgba(37,99,235,0.08)' } : { boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
              >
                <div className="flex gap-0.5 mb-3">
                  {Array.from({ length: t.stars }).map((_, j) => (
                    <Star key={j} size={11} className="fill-amber-400 text-amber-400" />
                  ))}
                </div>
                <p className="text-slate-600 text-sm leading-relaxed mb-4">"{t.text}"</p>
                <div>
                  <p className="font-black text-slate-900 text-sm tracking-tight">{t.name}</p>
                  <p className="text-slate-400 text-xs mt-0.5">{t.role} · {t.country}</p>
                </div>
              </div>
            ))}
          </div>

          <div className="flex items-center justify-center gap-1.5">
            {TESTIMONIALS.map((_, i) => (
              <button
                key={i}
                onClick={() => setActiveTestimonial(i)}
                className={`h-1.5 rounded-full transition-all duration-300 ${i === activeTestimonial ? 'bg-blue-500 w-6' : 'bg-slate-200 w-1.5 hover:bg-slate-300'}`}
              />
            ))}
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-24" style={{ background: '#f8fafc' }}>
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <span className="inline-block px-3 py-1 bg-teal-100 text-teal-700 text-xs font-black rounded-full mb-4 tracking-wider uppercase">Study Tips</span>
            <h2 className="text-3xl sm:text-4xl font-black text-slate-900 mb-4 tracking-tight">How to Maximise Your WASSCE Preparation</h2>
            <p className="text-slate-500 text-base max-w-2xl mx-auto">Proven strategies used by top-scoring WASSCE students across West Africa.</p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {[
              { icon: Clock, title: 'Study in Focused Blocks', body: 'Research shows 25–45 minute focused study sessions with 5-minute breaks outperform long, unfocused sessions. Use the Pomodoro technique and take one topic per sitting.' },
              { icon: FileText, title: 'Practice with Past Questions', body: 'WAEC repeats question patterns year after year. Practising with past-paper-style questions — like those in our quiz engine — is the single best way to predict what will come up.' },
              { icon: Lightbulb, title: 'Do Not Just Read — Test Yourself', body: 'Reading notes is passive. After each topic, close the notes and take the quiz. The act of retrieving information strengthens memory far more than re-reading does.' },
              { icon: MessageSquare, title: 'Teach What You Have Learned', body: 'Explaining a concept to someone else — or posting about it in the Student Hub — forces you to identify and fill the gaps in your understanding. Teaching is the deepest form of learning.' },
              { icon: TrendingUp, title: 'Start With Your Weakest Subject', body: 'It is tempting to study what you already know. But spending 60% of your time on your weakest 1–2 subjects will raise your overall grade far more than polishing your strengths.' },
              { icon: Target, title: 'Simulate Exam Conditions', body: 'At least once a week, sit the full 45-minute timed exam with no interruptions. Getting used to the time pressure is a skill in itself — and our exam engine makes this easy.' },
            ].map(({ icon: Icon, title, body }) => (
              <div
                key={title}
                className="bg-white border border-slate-200/80 rounded-2xl p-5 sm:p-6 flex gap-4 transition-all duration-200 hover:-translate-y-0.5"
                style={{ boxShadow: '0 1px 3px rgba(0,0,0,0.04)' }}
              >
                <div className="w-9 h-9 rounded-xl bg-blue-50 flex items-center justify-center flex-shrink-0 mt-0.5">
                  <Icon size={16} className="text-blue-600" />
                </div>
                <div>
                  <h3 className="font-black text-slate-800 text-sm mb-1.5 tracking-tight">{title}</h3>
                  <p className="text-slate-500 text-xs sm:text-sm leading-relaxed">{body}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-20 bg-slate-50" id="resources">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-12">
            <div className="inline-flex items-center gap-2 px-4 py-2 bg-blue-50 border border-blue-100 rounded-full text-xs font-bold text-blue-700 mb-4">
              <Star size={12} /> FREE STUDY RESOURCES
            </div>
            <h2 className="text-2xl sm:text-3xl lg:text-4xl font-black text-slate-900 tracking-tight mb-3">
              Everything You Need to Pass WASSCE 2026
            </h2>
            <p className="text-slate-500 max-w-xl mx-auto text-base">
              Free past questions, exam tips, likely questions and a science glossary — all in one place.
            </p>
          </div>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {[
              {
                icon: ClipboardList,
                color: 'blue',
                bg: 'bg-blue-600',
                card: 'bg-white border-blue-100 hover:border-blue-300',
                tag: 'bg-blue-50 text-blue-700',
                title: 'Past Questions',
                desc: 'WASSCE past papers from 2020 to 2024 with full answer keys and step-by-step solutions.',
                cta: 'Browse Past Papers',
                page: 'past-questions',
              },
              {
                icon: Star,
                color: 'amber',
                bg: 'bg-amber-500',
                card: 'bg-white border-amber-100 hover:border-amber-300',
                tag: 'bg-amber-50 text-amber-700',
                title: 'Likely Questions 2026',
                desc: 'High-yield predicted WAEC questions based on 5+ years of past exam patterns.',
                cta: 'See Predictions',
                page: 'likely-questions',
              },
              {
                icon: Lightbulb,
                color: 'green',
                bg: 'bg-green-600',
                card: 'bg-white border-green-100 hover:border-green-300',
                tag: 'bg-green-50 text-green-700',
                title: 'Exam Tips & Strategy',
                desc: 'Proven study strategies, per-subject tips and a 7-day revision schedule for every student.',
                cta: 'Read Tips',
                page: 'exam-tips',
              },
              {
                icon: BookOpen,
                color: 'teal',
                bg: 'bg-teal-600',
                card: 'bg-white border-teal-100 hover:border-teal-300',
                tag: 'bg-teal-50 text-teal-700',
                title: 'Science Glossary',
                desc: '75+ key terms defined for Biology, Chemistry, Physics, Maths and Geography.',
                cta: 'Explore Glossary',
                page: 'glossary',
              },
            ].map(item => (
              <button
                key={item.page}
                onClick={() => onNavigate?.(item.page)}
                className={`group flex flex-col items-start p-6 rounded-2xl border-2 transition-all text-left hover:-translate-y-1 hover:shadow-lg ${item.card}`}
              >
                <div className={`w-10 h-10 rounded-xl ${item.bg} flex items-center justify-center mb-4`}>
                  <item.icon size={18} className="text-white" />
                </div>
                <div className={`text-xs font-bold px-2.5 py-1 rounded-full mb-3 ${item.tag}`}>FREE</div>
                <h3 className="font-black text-slate-900 text-sm mb-2 leading-tight">{item.title}</h3>
                <p className="text-slate-500 text-xs leading-relaxed mb-4 flex-1">{item.desc}</p>
                <div className="flex items-center gap-1 text-xs font-bold text-slate-700 group-hover:gap-2 transition-all">
                  {item.cta} <ChevronRight size={12} />
                </div>
              </button>
            ))}
          </div>
        </div>
      </section>

      <section className="py-16 sm:py-24 text-white relative overflow-hidden" style={{ background: 'linear-gradient(135deg, #1e40af 0%, #2563eb 50%, #1d4ed8 100%)' }}>
        <div className="absolute inset-0 pointer-events-none">
          <div className="absolute top-0 right-0 w-64 h-64 rounded-full" style={{ background: 'radial-gradient(circle, rgba(255,255,255,0.08), transparent)', transform: 'translate(30%, -30%)' }} />
          <div className="absolute bottom-0 left-0 w-48 h-48 rounded-full" style={{ background: 'radial-gradient(circle, rgba(255,255,255,0.06), transparent)', transform: 'translate(-30%, 30%)' }} />
        </div>
        <div className="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full text-xs font-bold mb-6 border" style={{ background: 'rgba(255,255,255,0.12)', borderColor: 'rgba(255,255,255,0.2)', color: '#bfdbfe' }}>
            <CheckCircle size={12} />
            FREE ACCESS — MATHS &amp; ENGLISH INCLUDED
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-black mb-5 leading-tight tracking-tight">
            Start Preparing for Your<br className="hidden sm:block" /> WASSCE Today
          </h2>
          <p className="text-base sm:text-lg max-w-xl mx-auto mb-8 leading-relaxed" style={{ color: 'rgba(219,234,254,0.9)' }}>
            Join over 10,000 West African students using WASCCEScience. Free access to Maths and English — unlock all subjects for just 75 Leones, one time.
          </p>
          <div className="flex flex-col sm:flex-row items-center justify-center gap-3">
            <button
              onClick={onGetStarted}
              className="group flex items-center justify-center gap-2.5 w-full sm:w-auto px-8 py-4 bg-white text-blue-700 font-bold text-base rounded-2xl hover:bg-blue-50 transition-all active:scale-95"
              style={{ boxShadow: '0 8px 24px rgba(0,0,0,0.2)' }}
            >
              <Play size={15} className="fill-blue-700" />
              Get Started Free
              <ChevronRight size={14} className="group-hover:translate-x-1 transition-transform" />
            </button>
            {onBrowseSubjects && (
              <button
                onClick={onBrowseSubjects}
                className="flex items-center justify-center gap-2 w-full sm:w-auto px-8 py-4 font-semibold text-base rounded-2xl transition-all active:scale-95"
                style={{ background: 'rgba(255,255,255,0.12)', border: '1px solid rgba(255,255,255,0.25)', color: 'white' }}
              >
                <BookOpen size={15} />
                Browse as Guest
              </button>
            )}
          </div>
          <p className="text-xs mt-6 flex items-center justify-center gap-5 flex-wrap" style={{ color: 'rgba(191,219,254,0.8)' }}>
            <span className="flex items-center gap-1.5"><CheckCircle size={11} /> Maths &amp; English always free</span>
            <span className="flex items-center gap-1.5"><CheckCircle size={11} /> Full access for 75 Leones one-time</span>
            <span className="flex items-center gap-1.5"><Globe size={11} /> All of West Africa</span>
          </p>
        </div>
      </section>

      <footer style={{ background: '#080f1e' }} className="text-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8 mb-12">
            <div>
              <div className="flex items-center gap-2.5 mb-4">
                <div className="w-8 h-8 bg-blue-600 rounded-xl flex items-center justify-center">
                  <BookOpen size={15} className="text-white" />
                </div>
                <span className="font-black text-white text-base tracking-tight">WASSCE<span className="text-blue-400">Science</span></span>
              </div>
              <p className="text-sm leading-relaxed" style={{ color: '#475569' }}>The most complete WASSCE exam preparation platform for West African students. Maths &amp; English free. Upgrade once for everything else.</p>
            </div>
            <div>
              <h4 className="font-black text-white text-sm mb-4 tracking-tight">Subjects</h4>
              <ul className="space-y-2">
                {['Mathematics', 'English Language', 'Physics', 'Chemistry', 'Biology', 'Geography'].map(s => (
                  <li key={s}>
                    <button onClick={onBrowseSubjects} className="text-sm transition-colors hover:text-white" style={{ color: '#475569' }}>{s}</button>
                  </li>
                ))}
              </ul>
            </div>
            <div>
              <h4 className="font-black text-white text-sm mb-4 tracking-tight">Study Resources</h4>
              <ul className="space-y-2">
                {[
                  { label: 'Past Questions', action: () => onNavigate?.('past-questions') },
                  { label: 'Likely Questions 2026', action: () => onNavigate?.('likely-questions') },
                  { label: 'Exam Tips & Strategy', action: () => onNavigate?.('exam-tips') },
                  { label: 'Science Glossary', action: () => onNavigate?.('glossary') },
                  { label: 'FAQ', action: () => onNavigate?.('faq') },
                ].map(({ label, action }) => (
                  <li key={label}>
                    <button onClick={action} className="text-sm transition-colors hover:text-white" style={{ color: '#475569' }}>{label}</button>
                  </li>
                ))}
              </ul>
            </div>
            <div>
              <h4 className="font-black text-white text-sm mb-4 tracking-tight">Countries Served</h4>
              <ul className="space-y-1.5">
                {['Ghana', 'Nigeria', 'Sierra Leone', 'Liberia', 'The Gambia', 'All West Africa'].map(c => (
                  <li key={c} className="text-sm flex items-center gap-1.5" style={{ color: '#475569' }}>
                    <CheckCircle size={10} className="text-green-500 flex-shrink-0" />
                    {c}
                  </li>
                ))}
              </ul>
            </div>
          </div>
          <div className="border-t pt-8 flex flex-col sm:flex-row items-center justify-between gap-4" style={{ borderColor: 'rgba(255,255,255,0.06)' }}>
            <p className="text-sm" style={{ color: '#475569' }}>© {new Date().getFullYear()} WASCCEScience. All rights reserved.</p>
            <div className="flex items-center gap-5">
              <p className="text-sm" style={{ color: '#475569' }}>Premium WASSCE exam preparation for West African students</p>
              {onAdmin && (
                <button
                  onClick={onAdmin}
                  className="text-xs font-semibold px-3 py-1.5 rounded-lg border transition-all hover:text-slate-300"
                  style={{ color: '#64748b', borderColor: 'rgba(255,255,255,0.1)', background: 'rgba(255,255,255,0.04)' }}
                >
                  Admin
                </button>
              )}
            </div>
          </div>
        </div>
      </footer>

      <button
        onClick={scrollToTop}
        aria-label="Back to top"
        className={`fixed bottom-24 sm:bottom-8 right-5 sm:right-8 z-[55] group flex items-center justify-center transition-all duration-300 ease-out ${
          showBackToTop
            ? 'opacity-100 translate-y-0 pointer-events-auto'
            : 'opacity-0 translate-y-4 pointer-events-none'
        }`}
      >
        <span
          className="relative flex items-center justify-center w-11 h-11 rounded-xl transition-all duration-200 hover:scale-105 active:scale-95"
          style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.35)' }}
        >
          <ChevronUp size={18} className="text-white group-hover:-translate-y-0.5 transition-transform duration-200" />
        </span>
      </button>
    </div>
  );
}
