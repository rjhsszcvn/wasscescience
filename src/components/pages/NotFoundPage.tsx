import { BookOpen, ArrowLeft, Home } from 'lucide-react';

interface NotFoundPageProps {
  onNavigate?: (page: string) => void;
}

export default function NotFoundPage({ onNavigate }: NotFoundPageProps) {
  return (
    <div className="min-h-screen bg-slate-950 text-white flex items-center justify-center px-4">
      <div className="max-w-md w-full text-center">
        <div className="w-20 h-20 bg-blue-600/15 border border-blue-500/20 rounded-3xl flex items-center justify-center mx-auto mb-6">
          <BookOpen size={36} className="text-blue-400" />
        </div>

        <h1 className="text-8xl font-black text-slate-800 mb-2 leading-none">404</h1>
        <h2 className="text-2xl font-black text-white mb-3">Page Not Found</h2>
        <p className="text-slate-400 text-sm leading-relaxed mb-8">
          The page you are looking for does not exist or may have been moved. Head back to the dashboard to continue studying.
        </p>

        <div className="flex flex-col sm:flex-row items-center justify-center gap-3">
          <button
            onClick={() => onNavigate?.('back')}
            className="flex items-center gap-2 px-5 py-2.5 bg-slate-800 hover:bg-slate-700 text-white text-sm font-semibold rounded-xl transition-colors"
          >
            <ArrowLeft size={15} />
            Go Back
          </button>
          <button
            onClick={() => onNavigate?.('dashboard')}
            className="flex items-center gap-2 px-5 py-2.5 bg-blue-600 hover:bg-blue-500 text-white text-sm font-semibold rounded-xl transition-colors"
          >
            <Home size={15} />
            Go to Dashboard
          </button>
        </div>
      </div>
    </div>
  );
}
