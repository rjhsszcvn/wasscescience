import { FileText, ArrowLeft } from 'lucide-react';

interface TermsPageProps {
  onNavigate?: (page: string) => void;
}

const SECTIONS = [
  {
    id: 'acceptance',
    title: '1. Acceptance of Terms',
    content: `By accessing or using WASCCEScience, you agree to be bound by these Terms of Service and all applicable laws and regulations. If you do not agree with any of these terms, you are prohibited from using or accessing this platform. These terms apply to all users, visitors, and others who access or use the service.`,
    isContact: false,
  },
  {
    id: 'description',
    title: '2. Description of Service',
    content: `WASCCEScience provides a free online educational platform for West African Secondary School Certificate Examination (WASSCE) preparation. Our services include study notes, quizzes, timed examinations, progress tracking, a student community hub, and a leaderboard. We reserve the right to modify, suspend, or discontinue any part of our service at any time.`,
    isContact: false,
  },
  {
    id: 'accounts',
    title: '3. User Accounts',
    content: `To access personalised features, you must create an account using a valid email address. You are responsible for maintaining the confidentiality of your account credentials. You agree to provide accurate and complete information during registration and to update your information to keep it accurate. You must immediately notify us of any unauthorised use of your account.`,
    isContact: false,
  },
  {
    id: 'acceptable-use',
    title: '4. Acceptable Use',
    content: `You agree to use WASCCEScience only for lawful educational purposes. You must not: post offensive, harmful, or misleading content in the Student Hub; attempt to hack, disrupt, or overload our systems; scrape or copy our content without permission; impersonate other users or create fake accounts; use the platform to distribute spam or malware. Violations may result in immediate account termination.`,
    isContact: false,
  },
  {
    id: 'intellectual-property',
    title: '5. Intellectual Property',
    content: `All content on WASCCEScience, including study notes, questions, designs, graphics, and software, is the intellectual property of WASCCEScience or its content providers and is protected by copyright and other intellectual property laws. You may not reproduce, distribute, or create derivative works from our content without explicit written permission, except for personal educational use.`,
    isContact: false,
  },
  {
    id: 'user-content',
    title: '6. User-Generated Content',
    content: `By posting content in the Student Hub or other community features, you grant WASCCEScience a non-exclusive, royalty-free licence to use, display, and moderate that content. You retain ownership of your content but are responsible for ensuring it does not violate any laws or the rights of others. We reserve the right to remove any content that violates these terms.`,
    isContact: false,
  },
  {
    id: 'privacy',
    title: '7. Privacy',
    content: `Your use of WASCCEScience is also governed by our Privacy Policy, which is incorporated into these Terms of Service by reference. Please review our Privacy Policy to understand our practices regarding collection and use of your personal information.`,
    isContact: false,
  },
  {
    id: 'disclaimer',
    title: '8. Disclaimer of Warranties',
    content: `WASCCEScience is provided on an "as is" and "as available" basis without warranties of any kind, either express or implied. We do not warrant that the platform will be uninterrupted, error-free, or completely secure. While we strive for content accuracy, we do not guarantee that all information is current or correct. Use of our content for exam preparation is at your own risk.`,
    isContact: false,
  },
  {
    id: 'liability',
    title: '9. Limitation of Liability',
    content: `To the maximum extent permitted by law, WASCCEScience shall not be liable for any indirect, incidental, special, consequential, or punitive damages, including loss of data, profits, or goodwill, arising from your use of or inability to use our service, even if we have been advised of the possibility of such damages.`,
    isContact: false,
  },
  {
    id: 'changes',
    title: '10. Changes to Terms',
    content: `We reserve the right to modify these Terms of Service at any time. We will provide notice of significant changes by posting an updated version on our platform with a new effective date. Your continued use of WASCCEScience after changes are posted constitutes acceptance of the revised terms.`,
    isContact: false,
  },
  {
    id: 'governing-law',
    title: '11. Governing Law',
    content: `These Terms of Service shall be governed by and construed in accordance with applicable laws, without regard to conflict of law provisions. Any disputes arising from these terms or your use of the platform shall be resolved through good-faith negotiation before any legal proceedings are initiated.`,
    isContact: false,
  },
  {
    id: 'contact',
    title: '12. Contact Information',
    content: null,
    isContact: true,
  },
];

export default function TermsPage({ onNavigate }: TermsPageProps) {
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
          <FileText size={28} className="text-blue-400" />
          <h1 className="text-3xl font-black tracking-tight">Terms of Service</h1>
        </div>
        <p className="text-slate-500 text-sm mb-8">Last updated: March 18, 2026</p>

        <p className="text-slate-300 leading-relaxed mb-8 text-base">
          Welcome to WASCCEScience. These Terms of Service govern your access to and use of our educational platform. By using our services, you agree to be bound by these terms. Please read them carefully before using the platform.
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
                  For questions about these Terms of Service, please contact us at{' '}
                  <a href="mailto:support@wasccescience.com" className="text-blue-400 hover:text-blue-300 underline underline-offset-2 transition-colors">
                    support@wasccescience.com
                  </a>
                  . We are committed to addressing your concerns fairly and promptly.
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
