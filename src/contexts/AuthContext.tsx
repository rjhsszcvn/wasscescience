import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { User, Session } from '@supabase/supabase-js';
import { supabase } from '../lib/supabase';
import { UserProfile } from '../lib/types';

const PROFILE_CACHE_KEY = 'wassce_profile';
const SESSION_CACHE_KEY = 'wassce_session_user';

function getCachedProfile(): UserProfile | null {
  try {
    const raw = localStorage.getItem(PROFILE_CACHE_KEY);
    return raw ? JSON.parse(raw) : null;
  } catch {
    return null;
  }
}

function setCachedProfile(profile: UserProfile | null) {
  try {
    if (profile) {
      localStorage.setItem(PROFILE_CACHE_KEY, JSON.stringify(profile));
    } else {
      localStorage.removeItem(PROFILE_CACHE_KEY);
      localStorage.removeItem(SESSION_CACHE_KEY);
    }
  } catch {}
}

function getCachedUserId(): string | null {
  try {
    return localStorage.getItem(SESSION_CACHE_KEY);
  } catch {
    return null;
  }
}

function setCachedUserId(id: string | null) {
  try {
    if (id) {
      localStorage.setItem(SESSION_CACHE_KEY, id);
    } else {
      localStorage.removeItem(SESSION_CACHE_KEY);
    }
  } catch {}
}

interface AuthContextType {
  user: User | null;
  session: Session | null;
  profile: UserProfile | null;
  loading: boolean;
  isGuest: boolean;
  isPremium: boolean;
  isPasswordRecovery: boolean;
  signUp: (email: string, password: string, name: string) => Promise<{ error: Error | null; needsConfirmation?: boolean }>;
  signIn: (email: string, password: string) => Promise<{ error: Error | null }>;
  resetPassword: (email: string) => Promise<{ error: Error | null }>;
  signOut: () => Promise<void>;
  updateProfile: (updates: Partial<UserProfile>) => Promise<void>;
  refreshProfile: () => Promise<void>;
  clearPasswordRecovery: () => void;
}

const AuthContext = createContext<AuthContextType | null>(null);

export function AuthProvider({ children }: { children: ReactNode }) {
  const cachedProfile = getCachedProfile();
  void getCachedUserId();

  const isRecoveryLink = typeof window !== 'undefined' &&
    (window.location.hash.includes('type=recovery') || window.location.search.includes('type=recovery'));

  const [user, setUser] = useState<User | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  const [profile, setProfile] = useState<UserProfile | null>(cachedProfile);
  const [loading, setLoading] = useState(true);
  const [isPasswordRecovery, setIsPasswordRecovery] = useState(isRecoveryLink);

  const isGuest = !user;

  const isPremium = (() => {
    if (!profile?.premium_expires_at) return false;
    return new Date(profile.premium_expires_at) > new Date();
  })();

  async function fetchProfile(userId: string) {
    const { data } = await supabase
      .from('user_profiles')
      .select('*')
      .eq('id', userId)
      .maybeSingle();

    if (data) {
      setProfile(data as UserProfile);
      setCachedProfile(data as UserProfile);
    }
    return data;
  }

  useEffect(() => {
    const loadingTimeout = setTimeout(() => {
      setLoading(false);
    }, 6000);

    supabase.auth.getSession().then(({ data: { session } }) => {
      clearTimeout(loadingTimeout);
      if (isRecoveryLink) {
        if (session) {
          setSession(session);
          setUser(session.user);
        }
        setLoading(false);
        return;
      }
      if (session?.user) {
        setSession(session);
        setUser(session.user);
        setCachedUserId(session.user.id);
        const cached = getCachedProfile();
        if (cached && cached.id === session.user.id) {
          setProfile(cached);
          setLoading(false);
          fetchProfile(session.user.id);
        } else {
          if (cached && cached.id !== session.user.id) {
            setCachedProfile(null);
            setProfile(null);
          }
          fetchProfile(session.user.id).then(() => setLoading(false));
        }
      } else {
        setSession(null);
        setUser(null);
        setProfile(null);
        setCachedProfile(null);
        setLoading(false);
      }
    }).catch(() => {
      clearTimeout(loadingTimeout);
      setLoading(false);
    });

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'PASSWORD_RECOVERY') {
        setIsPasswordRecovery(true);
        setSession(session);
        setUser(session?.user ?? null);
        setLoading(false);
        return;
      }

      if (event === 'INITIAL_SESSION') return;

      setSession(session);
      const u = session?.user ?? null;
      setUser(u);
      setCachedUserId(u?.id ?? null);

      if (u) {
        (async () => {
          const cached = getCachedProfile();
          if (cached && cached.id === u.id) {
            setProfile(cached);
            setLoading(false);
            fetchProfile(u.id);
          } else {
            const existing = await fetchProfile(u.id);
            if (!existing) {
              const displayName =
                u.user_metadata?.full_name ||
                u.user_metadata?.name ||
                u.email?.split('@')[0] ||
                'Student';
              await supabase.from('user_profiles').upsert({
                id: u.id,
                email: u.email ?? '',
                display_name: displayName,
                avatar_url: u.user_metadata?.avatar_url ?? null,
                role: 'student',
                country: 'Ghana',
                weak_subjects: [],
                onboarding_complete: false,
              }, { onConflict: 'id' });
              await fetchProfile(u.id);
            }
            setLoading(false);
          }
        })();
      } else {
        setProfile(null);
        setCachedProfile(null);
        setLoading(false);
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  async function signUp(email: string, password: string, name: string) {
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        data: { display_name: name },
      },
    });

    if (error) return { error };

    if (data.user && !data.session) {
      return { error: null, needsConfirmation: true };
    }

    if (data.user && data.session) {
      await supabase.from('user_profiles').upsert({
        id: data.user.id,
        email,
        display_name: name,
        role: 'student',
        country: 'Ghana',
        weak_subjects: [],
        onboarding_complete: false,
      }, { onConflict: 'id' });
    }

    return { error: null, needsConfirmation: false };
  }

  async function signIn(email: string, password: string) {
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    return { error };
  }

  async function resetPassword(email: string) {
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: `${window.location.origin}/reset-password`,
    });
    return { error };
  }

  async function signOut() {
    await supabase.auth.signOut();
    setProfile(null);
    setCachedProfile(null);
    setCachedUserId(null);
  }

  async function updateProfile(updates: Partial<UserProfile>) {
    if (!user) return;
    const previous = profile;
    const optimistic = { ...profile, ...updates } as UserProfile;
    setProfile(optimistic);
    setCachedProfile(optimistic);
    const { error } = await supabase
      .from('user_profiles')
      .update({ ...updates, updated_at: new Date().toISOString() })
      .eq('id', user.id);
    if (error) {
      setProfile(previous);
      setCachedProfile(previous);
      throw new Error(error.message);
    }
    await refreshProfile();
  }

  async function refreshProfile() {
    if (user) await fetchProfile(user.id);
  }

  function clearPasswordRecovery() {
    setIsPasswordRecovery(false);
  }

  return (
    <AuthContext.Provider value={{
      user, session, profile, loading, isGuest, isPremium, isPasswordRecovery,
      signUp, signIn, signOut, resetPassword, updateProfile, refreshProfile, clearPasswordRecovery,
    }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}
