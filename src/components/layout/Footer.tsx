import { memo } from 'react';
import { BookOpen, Mail, Shield, FileText, Info, ExternalLink, HelpCircle, Star, Lightbulb, ClipboardList } from 'lucide-react';
import { InstallButton } from '../pwa/InstallButton';

interface FooterProps {
  onNavigate?: (page: string) => void;
}

const NAV_LINKS = [
  { label: 'About Us', page: 'about', icon: Info },
  { label: 'FAQ', page: 'faq', icon: HelpCircle },
  { label: 'Privacy Policy', page: 'privacy', icon: Shield },
  { label: 'Terms of Service', page: 'terms', icon: FileText },
  { label: 'Contact Us', page: 'contact', icon: Mail },
];

const RESOURCE_LINKS = [
  { label: 'Past Questions', page: 'past-questions', icon: ClipboardList },
  { label: 'Exam Tips 2026', page: 'exam-tips', icon: Lightbulb },
  { label: 'Likely Questions', page: 'likely-questions', icon: Star },
  { label: 'Science Glossary', page: 'glossary', icon: BookOpen },
];

const Footer = memo(function Footer({ onNavigate }: FooterProps) {
  const handleLink = (page: string) => {
    if (onNavigate) {
      onNavigate(page);
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }
  };

  return (
    <footer className="bg-slate-900 border-t border-slate-700/50 mt-auto">
      <div className="max-w-6xl mx-auto px-4 xs:px-5 sm:px-6 py-8 sm:py-10">
        <div className="flex flex-col md:flex-row md:items-start md:justify-between gap-6 sm:gap-8">
          <div className="flex flex-col gap-3 max-w-xs">
            <div className="flex items-center gap-2.5">
              <div className="w-8 h-8 bg-blue-600 rounded-lg flex items-center justify-center shadow-sm shadow-blue-500/30">
                <BookOpen size={16} className="text-white" />
              </div>
              <span className="font-black text-white text-lg tracking-tight">
                WASSCE<span className="text-blue-400">Science</span>
              </span>
            </div>
            <p className="text-slate-400 text-sm leading-relaxed">
              Premium WASSCE Science Learning Platform designed for top performance across West Africa.
            </p>
            <div className="flex items-center gap-1.5 mt-1">
              <span className="inline-block w-2 h-2 rounded-full bg-green-400 animate-pulse" />
              <span className="text-xs text-slate-500 font-medium">Free for all students</span>
            </div>
            <InstallButton variant="footer" className="mt-2" />
          </div>

          <div className="flex flex-col gap-3">
            <p className="text-xs font-bold text-slate-500 uppercase tracking-widest">Quick Links</p>
            <nav className="flex flex-col gap-2">
              {NAV_LINKS.map(({ label, page, icon: Icon }) => (
                <button
                  key={page}
                  onClick={() => handleLink(page)}
                  className="flex items-center gap-2 text-sm text-slate-400 hover:text-white transition-colors duration-150 group w-fit"
                >
                  <Icon size={13} className="text-slate-600 group-hover:text-blue-400 transition-colors" />
                  <span className="group-hover:underline underline-offset-2">{label}</span>
                </button>
              ))}
            </nav>
          </div>

          <div className="flex flex-col gap-3">
            <p className="text-xs font-bold text-slate-500 uppercase tracking-widest">Study Resources</p>
            <nav className="flex flex-col gap-2">
              {RESOURCE_LINKS.map(({ label, page, icon: Icon }) => (
                <button
                  key={page}
                  onClick={() => handleLink(page)}
                  className="flex items-center gap-2 text-sm text-slate-400 hover:text-white transition-colors duration-150 group w-fit"
                >
                  <Icon size={13} className="text-slate-600 group-hover:text-blue-400 transition-colors" />
                  <span className="group-hover:underline underline-offset-2">{label}</span>
                </button>
              ))}
            </nav>
          </div>

          <div className="flex flex-col gap-3">
            <p className="text-xs font-bold text-slate-500 uppercase tracking-widest">Supported Countries</p>
            <div className="flex flex-wrap gap-2">
              {['Ghana', 'Nigeria', 'Sierra Leone', 'Liberia', 'Gambia'].map((country) => (
                <span
                  key={country}
                  className="text-xs text-slate-400 bg-slate-800 px-2.5 py-1 rounded-full border border-slate-700"
                >
                  {country}
                </span>
              ))}
            </div>
            <a
              href="mailto:support@wasccescience.com"
              className="flex items-center gap-1.5 text-sm text-blue-400 hover:text-blue-300 transition-colors mt-1 w-fit"
            >
              <Mail size={13} />
              support@wasccescience.com
              <ExternalLink size={11} className="opacity-60" />
            </a>
          </div>
        </div>

        <div className="mt-6 sm:mt-8 pt-5 sm:pt-6 border-t border-slate-800 flex flex-col sm:flex-row items-center justify-between gap-3">
          <p className="text-xs text-slate-600 text-center sm:text-left">
            © {new Date().getFullYear()} WASCCEScience. All rights reserved.
          </p>
          <p className="text-xs text-slate-700 text-center sm:text-right">
            Built for West African students. Powered by dedication.
          </p>
        </div>
      </div>
    </footer>
  );
});

export default Footer;
