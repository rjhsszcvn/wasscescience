import { BookOpen, Target, Users, Globe, Zap, CheckCircle, ArrowLeft } from 'lucide-react';

interface AboutPageProps {
  onNavigate?: (page: string) => void;
}

const VALUES = [
  { icon: Target, title: 'Excellence', desc: 'We set the highest standards for content quality so every student gets accurate, exam-aligned material.' },
  { icon: Users, title: 'Accessibility', desc: 'Education should not be a privilege. Our platform offers free access to Mathematics and English, with affordable one-time premium plans for full access.' },
  { icon: Zap, title: 'Efficiency', desc: 'We help students study smarter, not just harder — with structured notes, timed exams, and progress tracking.' },
  { icon: Globe, title: 'Community', desc: 'We build a pan-West African learning community where students support and motivate each other.' },
];

const SUBJECTS = ['Mathematics', 'Physics', 'Chemistry', 'Biology', 'English Language', 'Geography', 'Further Mathematics', 'Agricultural Science', 'Core Science', 'Health Science', 'Physical Education'];

export default function AboutPage({ onNavigate }: AboutPageProps) {
  return (
    <div className="min-h-screen bg-slate-950 text-white">
      <div className="max-w-3xl mx-auto px-4 sm:px-6 py-12">
        <button
          onClick={() => onNavigate?.('back')}
          className="flex items-center gap-2 text-slate-400 hover:text-white transition-colors mb-8 text-sm group"
        >
          <ArrowLeft size={16} className="group-hover:-translate-x-1 transition-transform" />
          Back
        </button>

        <div className="flex items-center gap-3 mb-8">
          <div className="w-10 h-10 bg-blue-600 rounded-xl flex items-center justify-center shadow-lg shadow-blue-600/30">
            <BookOpen size={20} className="text-white" />
          </div>
          <div>
            <h1 className="text-3xl font-black tracking-tight">About <span className="text-blue-400">WASCCEScience</span></h1>
            <p className="text-slate-400 text-sm mt-0.5">Empowering students across West Africa</p>
          </div>
        </div>

        <section className="mb-10">
          <h2 className="text-xl font-bold text-white mb-3">Our Mission</h2>
          <p className="text-slate-300 leading-relaxed text-base">
            WASCCEScience is a free, premium-quality WASSCE preparation platform built specifically for West African students. Our mission is to make world-class science education accessible to every student — regardless of location, school quality, or economic background.
          </p>
          <p className="text-slate-400 leading-relaxed text-base mt-3">
            We believe that every student in Ghana, Nigeria, Sierra Leone, Liberia, and The Gambia deserves the same tools and resources as students at the best-funded schools. WASCCEScience levels the playing field.
          </p>
        </section>

        <section className="mb-10">
          <h2 className="text-xl font-bold text-white mb-5">What We Offer</h2>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {[
              'Comprehensive notes for all 8 core WASSCE subjects',
              'Timed exam engine with WASSCE-style questions',
              'Real-time progress tracking per topic and subject',
              'Student Hub for peer learning and discussion',
              'Leaderboard to keep students motivated',
              'Mobile-optimised for studying anywhere',
            ].map((item) => (
              <div key={item} className="flex items-start gap-2.5">
                <CheckCircle size={16} className="text-green-400 mt-0.5 flex-shrink-0" />
                <span className="text-slate-300 text-sm">{item}</span>
              </div>
            ))}
          </div>
        </section>

        <section className="mb-10">
          <h2 className="text-xl font-bold text-white mb-5">Subjects Covered</h2>
          <div className="flex flex-wrap gap-2">
            {SUBJECTS.map((s) => (
              <span
                key={s}
                className="text-sm text-blue-300 bg-blue-950/60 border border-blue-800/50 px-3 py-1.5 rounded-full font-medium"
              >
                {s}
              </span>
            ))}
          </div>
        </section>

        <section className="mb-10">
          <h2 className="text-xl font-bold text-white mb-5">Our Values</h2>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {VALUES.map(({ icon: Icon, title, desc }) => (
              <div key={title} className="bg-slate-900 border border-slate-800 rounded-2xl p-5">
                <div className="flex items-center gap-2.5 mb-2">
                  <Icon size={18} className="text-blue-400" />
                  <h3 className="font-bold text-white">{title}</h3>
                </div>
                <p className="text-slate-400 text-sm leading-relaxed">{desc}</p>
              </div>
            ))}
          </div>
        </section>

        <section className="bg-slate-900 border border-slate-800 rounded-2xl p-6">
          <h2 className="text-xl font-bold text-white mb-2">Free & Premium Access</h2>
          <p className="text-slate-400 text-sm leading-relaxed">
            WASCCEScience offers free access to Mathematics and English Language — always, with no time limit. For the full WASSCE preparation experience including all subjects, Student Hub, Leaderboard, and ad-free access, a one-time Premium upgrade of 75 Leones unlocks everything for a full year. Our commitment is to your education.
          </p>
        </section>
      </div>
    </div>
  );
}
