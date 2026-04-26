import { Shield, ArrowLeft } from 'lucide-react';

interface PrivacyPageProps {
  onNavigate?: (page: string) => void;
}

const SECTIONS = [
  {
    id: 'information-we-collect',
    title: '1. Information We Collect',
    content: `We collect information you provide directly to us when you create an account, including your name, email address, country, and school year. We also collect information about how you use our platform, including subjects studied, quiz attempts, progress data, and time spent on topics. This data is used solely to improve your learning experience.`,
  },
  {
    id: 'how-we-use',
    title: '2. How We Use Your Information',
    content: `We use the information we collect to provide, maintain, and improve our services; track your learning progress and generate personalised insights; send you important updates about the platform; and analyse usage patterns to improve content quality. We do not sell your personal data to third parties.`,
  },
  {
    id: 'data-storage',
    title: '3. Data Storage and Security',
    content: `Your data is stored securely using Supabase, a trusted cloud database provider with industry-standard encryption. We implement appropriate technical and organisational measures to protect your personal information against unauthorised access, alteration, disclosure, or destruction. All data is encrypted in transit using TLS.`,
  },
  {
    id: 'cookies',
    title: '4. Cookies and Tracking',
    content: `We use cookies and similar tracking technologies to maintain your session, remember your preferences, and measure platform performance. You can control cookie preferences through your browser settings. Disabling cookies may affect platform functionality.`,
  },
  {
    id: 'childrens-privacy',
    title: "5. Children's Privacy",
    content: `Our platform is designed for secondary school students. We take children's privacy seriously. We do not knowingly collect personal information from children under 13 without parental consent. If you are a parent or guardian and believe your child has provided us with personal information, please contact us immediately and we will take steps to delete such information.`,
  },
  {
    id: 'data-sharing',
    title: '6. Data Sharing',
    content: `We do not sell, trade, or transfer your personal information to third parties. We may share anonymised, aggregated data (which cannot identify any individual) for research and educational improvement purposes. We may disclose information if required by law or to protect the rights, property, or safety of our users.`,
  },
  {
    id: 'your-rights',
    title: '7. Your Rights',
    content: `You have the right to access, correct, or delete your personal data at any time. You can update your profile information from your account settings. To request deletion of your account and associated data, contact us at support@wasccescience.com. We will process your request within 30 days.`,
  },
  {
    id: 'policy-changes',
    title: '8. Changes to This Policy',
    content: `We may update this Privacy Policy from time to time. We will notify you of significant changes by posting a notice on our platform or sending an email. Your continued use of WASCCEScience after changes are posted constitutes your acceptance of the updated policy.`,
  },
  {
    id: 'contact',
    title: '9. Contact Us',
    content: null,
    isContact: true,
  },
];

export default function PrivacyPage({ onNavigate }: PrivacyPageProps) {
  const scrollTo = (id: string) => {
    document.getElementById(id)?.scrollIntoView({ behavior: 'smooth', block: 'start' });
  };

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

        <div className="flex items-center gap-3 mb-2">
          <Shield size={28} className="text-blue-400" />
          <h1 className="text-3xl font-black tracking-tight">Privacy Policy</h1>
        </div>
        <p className="text-slate-500 text-sm mb-8">Last updated: March 18, 2026</p>

        <p className="text-slate-300 leading-relaxed mb-8 text-base">
          WASCCEScience ("we", "our", or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our platform. Please read this policy carefully.
        </p>

        <div className="bg-slate-900 border border-slate-800 rounded-2xl p-5 mb-10">
          <p className="text-xs font-bold text-slate-500 uppercase tracking-widest mb-3">Table of Contents</p>
          <nav className="space-y-1.5">
            {SECTIONS.map(({ id, title }) => (
              <button
                key={id}
                onClick={() => scrollTo(id)}
                className="block text-sm text-blue-400 hover:text-blue-300 hover:underline underline-offset-2 transition-colors text-left"
              >
                {title}
              </button>
            ))}
          </nav>
        </div>

        <div className="space-y-8">
          {SECTIONS.map(({ id, title, content, isContact }) => (
            <section key={id} id={id} className="scroll-mt-8">
              <h2 className="text-lg font-bold text-white mb-2">{title}</h2>
              {isContact ? (
                <p className="text-slate-400 leading-relaxed text-sm">
                  If you have questions or concerns about this Privacy Policy or how we handle your data, please contact us at{' '}
                  <a href="mailto:support@wasccescience.com" className="text-blue-400 hover:text-blue-300 underline underline-offset-2 transition-colors">
                    support@wasccescience.com
                  </a>
                  . We are committed to resolving privacy concerns promptly and transparently.
                </p>
              ) : (
                <p className="text-slate-400 leading-relaxed text-sm">{content}</p>
              )}
            </section>
          ))}
        </div>
      </div>
    </div>
  );
}
