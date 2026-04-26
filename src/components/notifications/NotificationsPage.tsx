import { useEffect, useState } from 'react';
import { Bell, CheckCheck, Info, AlertTriangle, CheckCircle, XCircle, MessageSquare, FileText, Megaphone, Award, Heart } from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { Notification } from '../../lib/types';
import { Page } from '../../lib/types';
import { NotificationsSkeleton } from '../ui/Skeleton';
import { cacheGet, cacheSet, cacheGetStale, TTL } from '../../lib/cache';

interface NotificationsPageProps {
  onNavigate: (page: Page) => void;
  onUnreadChange: (count: number) => void;
}

const TYPE_ICONS: Record<string, typeof Info> = {
  info: Info,
  warning: AlertTriangle,
  success: CheckCircle,
  error: XCircle,
};

const TYPE_COLORS: Record<string, string> = {
  info: 'text-blue-600 bg-blue-100',
  warning: 'text-amber-600 bg-amber-100',
  success: 'text-green-600 bg-green-100',
  error: 'text-red-600 bg-red-100',
};

function getHubIcon(title: string) {
  if (title.includes('Answer') || title.includes('answer')) return MessageSquare;
  if (title.includes('Material') || title.includes('material') || title.includes('file') || title.includes('File')) return FileText;
  if (title.includes('Announcement') || title.includes('announcement')) return Megaphone;
  if (title.includes('solved') || title.includes('Solution') || title.includes('solution')) return Award;
  if (title.includes('thank') || title.includes('Thank')) return Heart;
  return null;
}

function getHubIconColor(title: string) {
  if (title.includes('Answer') || title.includes('answer')) return 'text-blue-600 bg-blue-100';
  if (title.includes('Material') || title.includes('material')) return 'text-emerald-600 bg-emerald-100';
  if (title.includes('Announcement') || title.includes('announcement')) return 'text-amber-600 bg-amber-100';
  if (title.includes('solved') || title.includes('Solution')) return 'text-green-600 bg-green-100';
  if (title.includes('thank') || title.includes('Thank')) return 'text-rose-600 bg-rose-100';
  return null;
}

export default function NotificationsPage({ onNavigate, onUnreadChange }: NotificationsPageProps) {
  const { profile } = useAuth();
  const [notifications, setNotifications] = useState<Notification[]>([]);
  const [loading, setLoading] = useState(true);
  const [filter, setFilter] = useState<'all' | 'unread'>('all');

  useEffect(() => {
    loadNotifications();
  }, [profile]);

  async function loadNotifications() {
    if (!profile) return;
    const cacheKey = `notifications:${profile.id}`;
    const stale = cacheGetStale<Notification[]>(cacheKey);
    if (stale && stale.length > 0) {
      setNotifications(stale);
      onUnreadChange(stale.filter(n => !n.read).length);
      setLoading(false);
    } else {
      setLoading(true);
    }
    const fresh = cacheGet<Notification[]>(cacheKey, TTL.short);
    if (fresh) {
      setLoading(false);
      return;
    }
    const { data } = await supabase
      .from('notifications')
      .select('*')
      .eq('user_id', profile.id)
      .order('created_at', { ascending: false });
    const result = data || [];
    cacheSet(cacheKey, result);
    setNotifications(result);
    const unread = result.filter(n => !n.read).length;
    onUnreadChange(unread);
    setLoading(false);
  }

  async function markAllRead() {
    if (!profile) return;
    await supabase
      .from('notifications')
      .update({ read: true })
      .eq('user_id', profile.id)
      .eq('read', false);
    const updated = notifications.map(n => ({ ...n, read: true }));
    setNotifications(updated);
    cacheSet(`notifications:${profile.id}`, updated);
    onUnreadChange(0);
  }

  async function markRead(id: string) {
    await supabase.from('notifications').update({ read: true }).eq('id', id);
    const updated = notifications.map(n => n.id === id ? { ...n, read: true } : n);
    setNotifications(updated);
    if (profile) cacheSet(`notifications:${profile.id}`, updated);
    const unread = updated.filter(n => !n.read).length;
    onUnreadChange(unread);
  }

  const formatDate = (d: string) => {
    const diff = (Date.now() - new Date(d).getTime()) / 1000;
    if (diff < 60) return 'Just now';
    if (diff < 3600) return `${Math.floor(diff / 60)}m ago`;
    if (diff < 86400) return `${Math.floor(diff / 3600)}h ago`;
    if (diff < 604800) return `${Math.floor(diff / 86400)}d ago`;
    return new Date(d).toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
  };

  if (loading) {
    return <NotificationsSkeleton />;
  }

  const unreadCount = notifications.filter(n => !n.read).length;
  const filtered = filter === 'unread' ? notifications.filter(n => !n.read) : notifications;

  return (
    <div className="max-w-2xl mx-auto space-y-5 pb-8">
      <div className="flex items-start justify-between">
        <div>
          <h1 className="text-2xl font-bold text-slate-800 mb-1">Notifications</h1>
          <p className="text-slate-500 text-sm">
            {unreadCount > 0 ? `${unreadCount} unread notification${unreadCount !== 1 ? 's' : ''}` : 'All caught up!'}
          </p>
        </div>
        {unreadCount > 0 && (
          <button
            onClick={markAllRead}
            className="flex items-center gap-1.5 text-sm text-blue-600 font-semibold hover:underline mt-1"
          >
            <CheckCheck size={16} /> Mark all read
          </button>
        )}
      </div>

      <div className="flex gap-2">
        {(['all', 'unread'] as const).map(f => (
          <button
            key={f}
            onClick={() => setFilter(f)}
            className={`px-4 py-1.5 rounded-full text-sm font-semibold transition-all capitalize ${
              filter === f
                ? 'bg-blue-600 text-white shadow-sm'
                : 'bg-white border border-slate-200 text-slate-600 hover:bg-slate-50'
            }`}
          >
            {f}{f === 'unread' && unreadCount > 0 ? ` (${unreadCount})` : ''}
          </button>
        ))}
      </div>

      {filtered.length === 0 ? (
        <div className="text-center py-16">
          <Bell size={40} className="text-slate-300 mx-auto mb-3" />
          <h3 className="font-semibold text-slate-700 mb-1">
            {filter === 'unread' ? 'No Unread Notifications' : 'No Notifications'}
          </h3>
          <p className="text-slate-400 text-sm">
            {filter === 'unread'
              ? 'You have read all your notifications.'
              : 'Activity from the Student Hub and platform updates will appear here.'}
          </p>
          {filter === 'unread' && (
            <button onClick={() => setFilter('all')} className="mt-3 text-sm text-blue-600 font-semibold hover:underline">
              View all notifications
            </button>
          )}
          <button
            onClick={() => onNavigate('hub')}
            className="mt-4 px-5 py-2 bg-blue-600 text-white rounded-xl text-sm font-semibold hover:bg-blue-700 transition-colors block mx-auto"
          >
            Go to Student Hub
          </button>
        </div>
      ) : (
        <div className="space-y-2">
          {filtered.map(n => {
            const hubIcon = getHubIcon(n.title);
            const hubColor = getHubIconColor(n.title);
            const Icon = hubIcon || TYPE_ICONS[n.type] || Info;
            const color = hubColor || TYPE_COLORS[n.type] || TYPE_COLORS.info;
            const isHubNotification = hubIcon !== null;

            return (
              <button
                key={n.id}
                onClick={() => {
                  if (!n.read) markRead(n.id);
                  if (isHubNotification) onNavigate('hub');
                }}
                className={`w-full flex items-start gap-4 p-4 rounded-2xl border text-left transition-all hover:shadow-sm group ${
                  n.read ? 'bg-white border-slate-200' : 'bg-blue-50 border-blue-200'
                }`}
              >
                <div className={`w-10 h-10 rounded-xl flex items-center justify-center flex-shrink-0 ${color}`}>
                  <Icon size={18} />
                </div>
                <div className="flex-1 min-w-0">
                  <div className="flex items-start justify-between gap-2">
                    <p className={`text-sm font-semibold ${n.read ? 'text-slate-700' : 'text-slate-900'}`}>
                      {n.title}
                    </p>
                    <span className="text-xs text-slate-400 flex-shrink-0 mt-0.5">{formatDate(n.created_at)}</span>
                  </div>
                  <p className="text-sm text-slate-500 mt-0.5 leading-relaxed">{n.message}</p>
                  {isHubNotification && (
                    <p className="text-xs text-blue-600 font-semibold mt-1.5 group-hover:underline">
                      View in Student Hub →
                    </p>
                  )}
                </div>
                {!n.read && (
                  <div className="w-2 h-2 bg-blue-500 rounded-full flex-shrink-0 mt-2" />
                )}
              </button>
            );
          })}
        </div>
      )}
    </div>
  );
}
