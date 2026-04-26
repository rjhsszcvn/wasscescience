import { useEffect, useRef } from 'react';
import { BookOpen, Loader2 } from 'lucide-react';
import { supabase } from '../../lib/supabase';

export default function AuthCallbackPage() {
  const processed = useRef(false);

  useEffect(() => {
    if (processed.current) return;
    processed.current = true;

    const url = new URL(window.location.href);
    const errorParam = url.searchParams.get('error');

    if (errorParam) {
      return;
    }

    let done = false;
    let timeoutId: ReturnType<typeof setTimeout>;

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (done) return;
      if (event === 'PASSWORD_RECOVERY') {
        done = true;
        subscription.unsubscribe();
        clearTimeout(timeoutId);
        return;
      }
      if ((event === 'SIGNED_IN' || event === 'TOKEN_REFRESHED') && session) {
        done = true;
        subscription.unsubscribe();
        clearTimeout(timeoutId);
        window.location.href = '/dashboard';
      }
    });

    supabase.auth.getSession().then(({ data: { session } }) => {
      if (done) return;
      if (session) {
        done = true;
        subscription.unsubscribe();
        clearTimeout(timeoutId);
        window.location.href = '/dashboard';
      }
    });

    timeoutId = setTimeout(() => {
      if (done) return;
      done = true;
      subscription.unsubscribe();
    }, 20000);

    return () => {
      subscription.unsubscribe();
      clearTimeout(timeoutId);
    };
  }, []);

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-blue-950 to-slate-900 flex items-center justify-center p-4">
      <div className="bg-white/5 backdrop-blur-xl border border-white/10 rounded-2xl p-10 shadow-2xl flex flex-col items-center gap-5 w-full max-w-sm">
        <div className="w-14 h-14 bg-blue-600 rounded-2xl flex items-center justify-center shadow-lg shadow-blue-600/30">
          <BookOpen size={26} className="text-white" />
        </div>
        <div className="text-center">
          <h2 className="text-xl font-bold text-white mb-1">WASSCE Science</h2>
          <p className="text-slate-400 text-sm">Completing sign-in...</p>
        </div>
        <Loader2 size={28} className="animate-spin text-blue-400" />
      </div>
    </div>
  );
}
