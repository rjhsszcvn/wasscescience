import { useState, useRef, useEffect } from 'react';
import { User, Globe, BookOpen, Calendar, Save, X, Camera, Upload, AlertCircle, Crown, Clock, Lock } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Country, UserRole } from '../../lib/types';
import { useToast } from '../ui/Toast';
import { Page } from '../../lib/types';

interface ProfilePageProps {
  onNavigate: (page: Page) => void;
}

const COUNTRIES: Country[] = ['Sierra Leone', 'Nigeria', 'Ghana', 'Liberia', 'Gambia'];
const SUBJECTS = ['Mathematics', 'English Language', 'Physics', 'Chemistry', 'Biology', 'Geography', 'Further Mathematics', 'Agricultural Science'];

const COUNTRY_FLAGS: Record<string, string> = {
  'Ghana': '🇬🇭',
  'Nigeria': '🇳🇬',
  'Sierra Leone': '🇸🇱',
  'Liberia': '🇱🇷',
  'Gambia': '🇬🇲',
};

export default function ProfilePage({ onNavigate: _onNavigate }: ProfilePageProps) {
  const { profile, updateProfile, user, isPremium } = useAuth();
  const { toast } = useToast();
  const [editing, setEditing] = useState(false);
  const [saving, setSaving] = useState(false);
  const [uploadingAvatar, setUploadingAvatar] = useState(false);
  const [avatarPreview, setAvatarPreview] = useState<string | null>(null);
  const [displayName, setDisplayName] = useState(profile?.display_name || '');
  const [country, setCountry] = useState<Country>(profile?.country || 'Ghana');
  const [role, setRole] = useState<UserRole>(profile?.role || 'student');
  const [weakSubjects, setWeakSubjects] = useState<string[]>(profile?.weak_subjects || []);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const cameraInputRef = useRef<HTMLInputElement>(null);
  const blobUrlRef = useRef<string | null>(null);

  useEffect(() => {
    return () => {
      if (blobUrlRef.current) URL.revokeObjectURL(blobUrlRef.current);
    };
  }, []);

  const toggleSubject = (s: string) => {
    setWeakSubjects(prev => prev.includes(s) ? prev.filter(x => x !== s) : [...prev, s]);
  };

  const handleSave = async () => {
    setSaving(true);
    await updateProfile({ display_name: displayName, country, role, weak_subjects: weakSubjects });
    setEditing(false);
    setSaving(false);
    toast('Profile updated successfully!', 'success');
  };

  const handleCancel = () => {
    setDisplayName(profile?.display_name || '');
    setCountry(profile?.country || 'Ghana');
    setRole(profile?.role || 'student');
    setWeakSubjects(profile?.weak_subjects || []);
    setAvatarPreview(null);
    setEditing(false);
  };

  const handleAvatarUpload = async (file: File) => {
    if (!user || !file) return;
    if (file.size > 5 * 1024 * 1024) {
      toast('Image must be under 5MB.', 'error');
      return;
    }
    if (blobUrlRef.current) URL.revokeObjectURL(blobUrlRef.current);
    const preview = URL.createObjectURL(file);
    blobUrlRef.current = preview;
    setAvatarPreview(preview);
    setUploadingAvatar(true);

    const ext = file.name.split('.').pop() || 'jpg';
    const path = `${user.id}/avatar.${ext}`;

    const { error } = await supabase.storage
      .from('profile-pictures')
      .upload(path, file, { upsert: true });

    if (!error) {
      const { data } = supabase.storage.from('profile-pictures').getPublicUrl(path);
      await updateProfile({ avatar_url: `${data.publicUrl}?t=${Date.now()}` });
      toast('Profile photo updated!', 'success');
    } else {
      if (blobUrlRef.current) { URL.revokeObjectURL(blobUrlRef.current); blobUrlRef.current = null; }
      setAvatarPreview(null);
      toast('Upload failed. Please try again.', 'error');
    }
    setUploadingAvatar(false);
  };

  if (!profile) return null;

  const avatarUrl = avatarPreview || profile.avatar_url;

  const completionSteps = [
    { label: 'Profile photo', done: !!profile.avatar_url },
    { label: 'Display name', done: !!profile.display_name },
    { label: 'Country set', done: !!profile.country },
    { label: 'Weak subjects', done: (profile.weak_subjects?.length || 0) > 0 },
  ];
  const completionPct = Math.round((completionSteps.filter(s => s.done).length / completionSteps.length) * 100);
  const missing = completionSteps.filter(s => !s.done);

  return (
    <div className="max-w-2xl mx-auto space-y-5 pb-8">
      {completionPct < 100 && (
        <div className="bg-white border border-slate-200 rounded-2xl p-4 shadow-sm">
          <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-2">
              <AlertCircle size={15} className="text-amber-500" />
              <p className="text-sm font-bold text-slate-700">Complete your profile</p>
            </div>
            <span className="text-sm font-black text-amber-600">{completionPct}%</span>
          </div>
          <div className="w-full bg-slate-100 rounded-full h-2 mb-2.5">
            <div
              className="h-2 rounded-full bg-gradient-to-r from-amber-400 to-amber-500 transition-all duration-700"
              style={{ width: `${completionPct}%` }}
            />
          </div>
          <div className="flex flex-wrap gap-1.5">
            {missing.map(s => (
              <span key={s.label} className="text-[11px] px-2 py-0.5 bg-amber-50 text-amber-700 border border-amber-200 rounded-full font-medium">
                Add {s.label}
              </span>
            ))}
          </div>
        </div>
      )}

      <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
        <div className="bg-gradient-to-r from-blue-600 to-blue-700 h-24" />
        <div className="px-6 pb-6">
          <div className="flex items-end justify-between -mt-10 mb-3">
            <div className="relative">
              <div className="w-20 h-20 rounded-2xl border-4 border-white shadow-lg overflow-hidden bg-blue-600 flex items-center justify-center relative">
                {avatarUrl ? (
                  <img src={avatarUrl} alt="Profile" className="w-full h-full object-cover" />
                ) : (
                  <span className="text-white text-3xl font-black">
                    {profile.display_name?.[0]?.toUpperCase() || 'S'}
                  </span>
                )}
                {uploadingAvatar && (
                  <div className="absolute inset-0 bg-black/50 flex items-center justify-center">
                    <div className="w-6 h-6 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  </div>
                )}
              </div>
              <div className="absolute -bottom-1 -right-1 flex gap-1">
                <button
                  onClick={() => fileInputRef.current?.click()}
                  title="Upload from device"
                  className="w-7 h-7 bg-blue-600 border-2 border-white rounded-full flex items-center justify-center hover:bg-blue-700 transition-colors shadow-sm"
                >
                  <Upload size={11} className="text-white" />
                </button>
                <button
                  onClick={() => cameraInputRef.current?.click()}
                  title="Take photo"
                  className="w-7 h-7 bg-slate-700 border-2 border-white rounded-full flex items-center justify-center hover:bg-slate-800 transition-colors shadow-sm"
                >
                  <Camera size={11} className="text-white" />
                </button>
              </div>
              <input
                ref={fileInputRef}
                type="file"
                accept="image/*"
                className="hidden"
                onChange={e => { const f = e.target.files?.[0]; if (f) handleAvatarUpload(f); }}
              />
              <input
                ref={cameraInputRef}
                type="file"
                accept="image/*"
                capture="environment"
                className="hidden"
                onChange={e => { const f = e.target.files?.[0]; if (f) handleAvatarUpload(f); }}
              />
            </div>

            {!editing ? (
              <button
                onClick={() => setEditing(true)}
                className="flex items-center gap-2 px-4 py-2 border border-slate-200 text-slate-600 rounded-xl text-sm font-semibold hover:bg-slate-50 transition-colors"
              >
                Edit Profile
              </button>
            ) : (
              <div className="flex gap-2">
                <button
                  onClick={handleCancel}
                  className="flex items-center gap-1.5 px-3 py-2 border border-slate-200 text-slate-600 rounded-xl text-sm font-semibold hover:bg-slate-50"
                >
                  <X size={14} /> Cancel
                </button>
                <button
                  onClick={handleSave}
                  disabled={saving}
                  className="flex items-center gap-1.5 px-3 py-2 bg-blue-600 text-white rounded-xl text-sm font-semibold hover:bg-blue-700 disabled:opacity-60"
                >
                  <Save size={14} /> {saving ? 'Saving...' : 'Save'}
                </button>
              </div>
            )}
          </div>

          <p className="text-xs text-slate-400 mb-4 flex items-center gap-1.5">
            <Camera size={11} />
            Tap the icons on your photo to upload from device or take a photo
          </p>

          {editing ? (
            <div className="space-y-4">
              <div>
                <label className="text-xs font-semibold text-slate-500 mb-1.5 block">Display Name</label>
                <input
                  type="text"
                  value={displayName}
                  onChange={e => setDisplayName(e.target.value)}
                  className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>
              <div>
                <label className="text-xs font-semibold text-slate-500 mb-1.5 block">Role</label>
                <div className="grid grid-cols-2 gap-2">
                  {(['student', 'teacher'] as UserRole[]).map(r => (
                    <button
                      key={r}
                      onClick={() => setRole(r)}
                      className={`py-2 rounded-xl border-2 text-sm font-semibold capitalize transition-all ${
                        role === r ? 'border-blue-500 bg-blue-50 text-blue-700' : 'border-slate-200 text-slate-500'
                      }`}
                    >
                      {r}
                    </button>
                  ))}
                </div>
              </div>
              <div>
                <label className="text-xs font-semibold text-slate-500 mb-1.5 block">Country</label>
                <select
                  value={country}
                  onChange={e => setCountry(e.target.value as Country)}
                  className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
                >
                  {COUNTRIES.map(c => <option key={c} value={c}>{COUNTRY_FLAGS[c]} {c}</option>)}
                </select>
              </div>
              <div>
                <label className="text-xs font-semibold text-slate-500 mb-1.5 block">Weak Subjects</label>
                <div className="grid grid-cols-2 gap-2">
                  {SUBJECTS.map(s => (
                    <button
                      key={s}
                      onClick={() => toggleSubject(s)}
                      className={`py-2 px-3 rounded-xl border-2 text-xs font-semibold transition-all text-left ${
                        weakSubjects.includes(s) ? 'border-red-400 bg-red-50 text-red-700' : 'border-slate-200 text-slate-500'
                      }`}
                    >
                      {weakSubjects.includes(s) ? '⚠ ' : ''}{s}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          ) : (
            <div>
              <h2 className="text-xl font-bold text-slate-800">{profile.display_name || 'Student'}</h2>
              <p className="text-slate-500 text-sm">{profile.email}</p>
              <div className="flex items-center gap-3 mt-3 flex-wrap">
                <span className="flex items-center gap-1.5 text-sm text-slate-600">
                  <Globe size={14} /> {COUNTRY_FLAGS[profile.country]} {profile.country}
                </span>
                <span className="flex items-center gap-1.5 text-sm text-slate-600 capitalize">
                  <User size={14} /> {profile.role}
                </span>
              </div>
              {profile.weak_subjects && profile.weak_subjects.length > 0 && (
                <div className="flex flex-wrap gap-1.5 mt-3">
                  {profile.weak_subjects.map(s => (
                    <span key={s} className="text-xs px-2 py-0.5 bg-red-50 text-red-600 border border-red-100 rounded-full font-medium">⚠ {s}</span>
                  ))}
                </div>
              )}
            </div>
          )}
        </div>
      </div>

      <div className="bg-white border border-slate-200 rounded-2xl p-5 shadow-sm">
        <h3 className="font-bold text-slate-800 mb-4">Account Info</h3>
        <div className="space-y-3">
          {isPremium ? (
            <div className="flex items-center gap-3 p-3 bg-amber-50 border border-amber-200 rounded-xl">
              <Crown size={20} className="text-amber-600" />
              <div>
                <p className="font-bold text-amber-800 text-sm">Premium Access</p>
                <p className="text-xs text-amber-600">Full access to all subjects, quizzes, and exams.</p>
              </div>
            </div>
          ) : (
            <div className="flex items-center gap-3 p-3 bg-amber-50 border border-amber-200 rounded-xl">
              <Crown size={20} className="text-amber-500" />
              <div>
                <p className="font-bold text-amber-800 text-sm">Free Plan</p>
                <p className="text-xs text-amber-600">Upgrade to unlock all subjects and premium features.</p>
              </div>
            </div>
          )}
          <div className="grid grid-cols-2 gap-3">
            <div className="p-3 bg-slate-50 rounded-xl">
              <div className="flex items-center gap-2 mb-1">
                <Calendar size={14} className="text-slate-400" />
                <p className="text-xs text-slate-500">Member Since</p>
              </div>
              <p className="text-sm font-bold text-slate-700">
                {new Date(profile.created_at).toLocaleDateString('en-US', { month: 'short', year: 'numeric' })}
              </p>
            </div>
            <div className="p-3 bg-slate-50 rounded-xl">
              <div className="flex items-center gap-2 mb-1">
                <BookOpen size={14} className="text-slate-400" />
                <p className="text-xs text-slate-500">Account Type</p>
              </div>
              <p className="text-sm font-bold text-slate-700">Free Student</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
