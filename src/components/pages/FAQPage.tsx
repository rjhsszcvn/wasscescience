import { useState } from 'react';
import { BookOpen, ChevronDown, HelpCircle, ArrowLeft } from 'lucide-react';

interface FAQPageProps {
  onNavigate?: (page: string) => void;
}

interface FAQItem {
  question: string;
  answer: string;
}

interface FAQCategory {
  title: string;
  items: FAQItem[];
}

const FAQ_CATEGORIES: FAQCategory[] = [
  {
    title: 'Getting Started',
    items: [
      {
        question: 'What is WASCCEScience?',
        answer: 'WASCCEScience is a free, comprehensive WASSCE exam preparation platform built for West African students. It provides in-depth study notes, practice quizzes, timed mock exams, a student discussion hub, and progress tracking — all in one place.',
      },
      {
        question: 'Is WASCCEScience really free?',
        answer: 'Yes, completely free. WASCCEScience is and always will be free for every student. We are supported by non-intrusive advertising. There are no subscriptions, no paywalls, and no credit cards required — ever.',
      },
      {
        question: 'Do I need to create an account to use the platform?',
        answer: 'You can browse subjects and read study notes as a guest without creating an account. However, creating a free account unlocks progress tracking, quiz history, the Student Hub, the leaderboard, and personalised recommendations.',
      },
      {
        question: 'Which countries is WASCCEScience available in?',
        answer: 'WASCCEScience is available for students in Ghana, Nigeria, Sierra Leone, Liberia, and The Gambia — all countries that participate in the WASSCE examination.',
      },
    ],
  },
  {
    title: 'Subjects & Content',
    items: [
      {
        question: 'Which subjects does WASCCEScience cover?',
        answer: 'We currently cover 8 core WASSCE subjects: Mathematics, Physics, Chemistry, Biology, English Language, Geography, Further Mathematics, and Agricultural Science. Each subject contains comprehensive topic notes and practice questions.',
      },
      {
        question: 'How up to date is the content?',
        answer: 'All content is aligned with the current WASSCE syllabus. Our study notes, questions, and exam materials are regularly reviewed and updated to reflect the latest WAEC guidelines and past question trends.',
      },
      {
        question: 'Can I access study notes without an internet connection?',
        answer: 'WASCCEScience is a Progressive Web App (PWA). You can install it on your phone or computer and access previously loaded content offline. Install it from your browser\'s "Add to Home Screen" or install prompt.',
      },
    ],
  },
  {
    title: 'Quizzes & Exams',
    items: [
      {
        question: 'What is the difference between a quiz and an exam?',
        answer: 'Quizzes are short, topic-focused practice sets designed to test your understanding of a specific area. Exams are full-length, timed mock papers that simulate the real WASSCE experience, drawing questions from across an entire subject.',
      },
      {
        question: 'Are the quiz and exam questions from real WASSCE past papers?',
        answer: 'Our questions are modelled on the style, difficulty, and format of real WASSCE past questions. They are carefully written by subject specialists to match WAEC standards and cover all likely exam topics.',
      },
      {
        question: 'Is my quiz and exam progress saved?',
        answer: 'Yes. When you are logged in, all your quiz scores, exam sessions, and topic completion status are automatically saved to your profile. You can review your history and track your improvement over time from the dashboard.',
      },
      {
        question: 'Can I retake quizzes and exams?',
        answer: 'Yes, you can retake any quiz or exam as many times as you like. Each attempt is tracked separately so you can see how your performance improves with practice.',
      },
    ],
  },
  {
    title: 'Student Hub',
    items: [
      {
        question: 'What is the Student Hub?',
        answer: 'The Student Hub is a community discussion space where students can ask subject questions, share study materials, and help each other prepare for exams. It is moderated to keep discussions focused and constructive.',
      },
      {
        question: 'Do I need an account to use the Student Hub?',
        answer: 'Yes. You need a free WASCCEScience account to post questions, share materials, and interact with other students in the hub. This helps maintain a safe and accountable community.',
      },
      {
        question: 'Can I share study materials with other students?',
        answer: 'Yes. In the Student Hub you can upload and share study materials such as notes and reference documents with the wider community. All shared materials are visible to all logged-in students.',
      },
    ],
  },
  {
    title: 'Account & Profile',
    items: [
      {
        question: 'How do I create an account?',
        answer: 'Click "Get Started Free" on the homepage and enter your email address and a password. No verification email is required — your account is active immediately. You will then be guided through a short onboarding to personalise your experience.',
      },
      {
        question: 'Can I change my display name or profile picture?',
        answer: 'Yes. Navigate to your Profile page after logging in to update your display name and upload a profile picture. Your profile is visible to other students on the leaderboard and in the Student Hub.',
      },
      {
        question: 'I forgot my password. How do I reset it?',
        answer: 'On the sign-in screen, click "Forgot password?" and enter your email address. You will receive a password reset link. Follow the link to set a new password and regain access to your account.',
      },
      {
        question: 'How do I delete my account?',
        answer: 'If you would like your account and all associated data deleted, please contact us at support@wasccescience.com. We will process your request promptly in line with our privacy policy.',
      },
    ],
  },
  {
    title: 'Technical',
    items: [
      {
        question: 'Which devices and browsers does WASCCEScience support?',
        answer: 'WASCCEScience works on any modern device — smartphones, tablets, and desktop computers. It is optimised for mobile use. We support all up-to-date browsers including Chrome, Firefox, Safari, and Edge.',
      },
      {
        question: 'How do I install WASCCEScience as an app on my phone?',
        answer: 'On Android, open the site in Chrome and tap "Add to Home Screen" in the browser menu, or tap the install banner that appears automatically. On iPhone, open the site in Safari, tap the Share button, then tap "Add to Home Screen".',
      },
      {
        question: 'I found a bug or something is not working. How do I report it?',
        answer: 'Please email us at support@wasccescience.com with a description of the problem, the device and browser you are using, and any screenshots if possible. We aim to respond within 48 hours.',
      },
    ],
  },
];

function FAQAccordionItem({ item, isOpen, onToggle }: { item: FAQItem; isOpen: boolean; onToggle: () => void }) {
  return (
    <div className="border border-slate-800 rounded-xl overflow-hidden">
      <button
        onClick={onToggle}
        className="w-full flex items-start justify-between gap-4 px-5 py-4 text-left hover:bg-slate-800/50 transition-colors duration-150 group"
        aria-expanded={isOpen}
      >
        <span className="text-sm sm:text-base font-semibold text-white leading-snug">{item.question}</span>
        <ChevronDown
          size={18}
          className={`flex-shrink-0 mt-0.5 text-slate-400 group-hover:text-blue-400 transition-all duration-200 ${isOpen ? 'rotate-180 text-blue-400' : ''}`}
        />
      </button>
      {isOpen && (
        <div className="px-5 pb-5">
          <div className="pt-1 border-t border-slate-800/60">
            <p className="text-slate-300 text-sm leading-relaxed mt-3">{item.answer}</p>
          </div>
        </div>
      )}
    </div>
  );
}

export default function FAQPage({ onNavigate }: FAQPageProps) {
  const [openItems, setOpenItems] = useState<Record<string, boolean>>({});

  function toggleItem(key: string) {
    setOpenItems(prev => ({ ...prev, [key]: !prev[key] }));
  }

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

        <div className="flex items-center gap-3 mb-3">
          <div className="w-10 h-10 bg-blue-600 rounded-xl flex items-center justify-center shadow-lg shadow-blue-600/30">
            <HelpCircle size={20} className="text-white" />
          </div>
          <div>
            <h1 className="text-3xl font-black tracking-tight">
              Frequently Asked <span className="text-blue-400">Questions</span>
            </h1>
            <p className="text-slate-400 text-sm mt-0.5">Everything you need to know about WASCCEScience</p>
          </div>
        </div>

        <p className="text-slate-400 text-sm leading-relaxed mb-10 pl-[3.25rem]">
          Can't find what you're looking for?{' '}
          <button
            onClick={() => onNavigate?.('contact')}
            className="text-blue-400 hover:text-blue-300 underline underline-offset-2 transition-colors"
          >
            Contact us
          </button>{' '}
          and we'll be happy to help.
        </p>

        <div className="space-y-10">
          {FAQ_CATEGORIES.map((category) => (
            <section key={category.title}>
              <div className="flex items-center gap-2.5 mb-4">
                <div className="w-1 h-5 bg-blue-500 rounded-full" />
                <h2 className="text-base font-bold text-white uppercase tracking-wider">{category.title}</h2>
              </div>
              <div className="space-y-2">
                {category.items.map((item, idx) => {
                  const key = `${category.title}-${idx}`;
                  return (
                    <FAQAccordionItem
                      key={key}
                      item={item}
                      isOpen={!!openItems[key]}
                      onToggle={() => toggleItem(key)}
                    />
                  );
                })}
              </div>
            </section>
          ))}
        </div>

        <div className="mt-12 bg-slate-900 border border-slate-800 rounded-2xl p-6 flex flex-col sm:flex-row items-start sm:items-center gap-4">
          <div className="w-10 h-10 bg-blue-600/20 border border-blue-600/30 rounded-xl flex items-center justify-center flex-shrink-0">
            <BookOpen size={18} className="text-blue-400" />
          </div>
          <div>
            <h3 className="font-bold text-white text-sm mb-1">Still have questions?</h3>
            <p className="text-slate-400 text-sm leading-relaxed">
              Reach us at{' '}
              <a
                href="mailto:support@wasccescience.com"
                className="text-blue-400 hover:text-blue-300 transition-colors underline underline-offset-2"
              >
                support@wasccescience.com
              </a>{' '}
              and we will get back to you within 48 hours.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
