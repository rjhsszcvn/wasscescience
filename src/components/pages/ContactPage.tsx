import { useState } from 'react';
import { Mail, MessageSquare, Send, CheckCircle, ArrowLeft, Clock, Globe } from 'lucide-react';
import { supabase } from '../../lib/supabase';

interface ContactPageProps {
  onNavigate?: (page: string) => void;
}

export default function ContactPage({ onNavigate }: ContactPageProps) {
  const [form, setForm] = useState({ name: '', email: '', subject: '', message: '' });
  const [submitted, setSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitting(true);
    setError('');

    const { error: dbError } = await supabase.from('contact_messages').insert({
      name: form.name,
      email: form.email,
      subject: form.subject,
      message: form.message,
    });

    if (dbError) {
      setError('Failed to send your message. Please try again or email us directly.');
      setSubmitting(false);
      return;
    }

    setSubmitted(true);
    setSubmitting(false);
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
          <Mail size={28} className="text-blue-400" />
          <h1 className="text-3xl font-black tracking-tight">Contact Us</h1>
        </div>
        <p className="text-slate-400 text-sm mb-10">
          Have a question, feedback, or need support? We are here to help.
        </p>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-10">
          {[
            {
              icon: Mail,
              label: 'Email',
              value: 'support@wasccescience.com',
              sub: 'Best for detailed queries',
              href: 'mailto:support@wasccescience.com',
            },
            { icon: Clock, label: 'Response Time', value: '24–48 hours', sub: 'Monday to Friday', href: null },
            { icon: Globe, label: 'Coverage', value: '5 Countries', sub: 'Ghana, Nigeria + more', href: null },
          ].map(({ icon: Icon, label, value, sub, href }) => (
            <div key={label} className="bg-slate-900 border border-slate-800 rounded-2xl p-4 text-center">
              <Icon size={20} className="text-blue-400 mx-auto mb-2" />
              <p className="text-xs text-slate-500 font-semibold uppercase tracking-wide mb-1">{label}</p>
              {href ? (
                <a href={href} className="text-blue-400 hover:text-blue-300 font-bold text-sm transition-colors">{value}</a>
              ) : (
                <p className="text-white font-bold text-sm">{value}</p>
              )}
              <p className="text-slate-500 text-xs mt-0.5">{sub}</p>
            </div>
          ))}
        </div>

        {submitted ? (
          <div className="bg-green-950/40 border border-green-800/50 rounded-2xl p-8 text-center">
            <CheckCircle size={48} className="text-green-400 mx-auto mb-4" />
            <h2 className="text-xl font-bold text-white mb-2">Message Sent!</h2>
            <p className="text-slate-400 text-sm">
              Thank you for reaching out. We will get back to you at <strong className="text-white">{form.email}</strong> within 24–48 hours.
            </p>
            <button
              onClick={() => { setSubmitted(false); setForm({ name: '', email: '', subject: '', message: '' }); }}
              className="mt-6 px-6 py-2.5 bg-slate-800 hover:bg-slate-700 text-white text-sm font-semibold rounded-xl transition-colors"
            >
              Send Another Message
            </button>
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="bg-slate-900 border border-slate-800 rounded-2xl p-6 sm:p-8 space-y-5">
            <div className="flex items-center gap-2 mb-2">
              <MessageSquare size={18} className="text-blue-400" />
              <h2 className="text-lg font-bold text-white">Send a Message</h2>
            </div>

            {error && (
              <div className="p-3 bg-red-950/50 border border-red-800/50 rounded-xl text-sm text-red-300">
                {error}
              </div>
            )}

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-xs font-semibold text-slate-400 mb-1.5 uppercase tracking-wide">
                  Full Name <span className="text-red-400">*</span>
                </label>
                <input
                  type="text"
                  required
                  value={form.name}
                  onChange={(e) => setForm({ ...form, name: e.target.value })}
                  placeholder="Your full name"
                  className="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white placeholder-slate-500 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500/30 transition-colors"
                />
              </div>
              <div>
                <label className="block text-xs font-semibold text-slate-400 mb-1.5 uppercase tracking-wide">
                  Email Address <span className="text-red-400">*</span>
                </label>
                <input
                  type="email"
                  required
                  value={form.email}
                  onChange={(e) => setForm({ ...form, email: e.target.value })}
                  placeholder="your@email.com"
                  className="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white placeholder-slate-500 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500/30 transition-colors"
                />
              </div>
            </div>

            <div>
              <label className="block text-xs font-semibold text-slate-400 mb-1.5 uppercase tracking-wide">
                Subject <span className="text-red-400">*</span>
              </label>
              <select
                required
                value={form.subject}
                onChange={(e) => setForm({ ...form, subject: e.target.value })}
                className="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500/30 transition-colors"
              >
                <option value="" disabled>Select a topic</option>
                <option>General Question</option>
                <option>Report a Bug or Error</option>
                <option>Content Feedback</option>
                <option>Account Issue</option>
                <option>Partnership or Collaboration</option>
                <option>Advertising Inquiry</option>
                <option>Other</option>
              </select>
            </div>

            <div>
              <label className="block text-xs font-semibold text-slate-400 mb-1.5 uppercase tracking-wide">
                Message <span className="text-red-400">*</span>
              </label>
              <textarea
                required
                rows={5}
                value={form.message}
                onChange={(e) => setForm({ ...form, message: e.target.value })}
                placeholder="Write your message here..."
                className="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-sm text-white placeholder-slate-500 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500/30 transition-colors resize-none"
              />
            </div>

            <button
              type="submit"
              disabled={submitting}
              className="flex items-center justify-center gap-2 w-full py-3.5 bg-blue-600 hover:bg-blue-500 disabled:bg-blue-800 disabled:cursor-not-allowed text-white font-bold text-sm rounded-xl transition-all shadow-lg shadow-blue-600/20"
            >
              {submitting ? (
                <>
                  <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                  Sending...
                </>
              ) : (
                <>
                  <Send size={16} />
                  Send Message
                </>
              )}
            </button>
          </form>
        )}
      </div>
    </div>
  );
}
