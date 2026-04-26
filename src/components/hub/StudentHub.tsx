import { useEffect, useState, useRef } from 'react';
import {
  MessageSquare, ThumbsUp, Plus, Send, ChevronLeft, Search, Tag, Clock,
  Paperclip, Download, Share2, CheckCircle, Megaphone, HelpCircle,
  FileText, X, Upload, ChevronRight, Image as ImageIcon, Trash2, Crown, Lock, Users
} from 'lucide-react';
import { useAuth } from '../../contexts/AuthContext';
import { supabase } from '../../lib/supabase';
import { HubPost, HubAnswer, Subject } from '../../lib/types';
import { Page } from '../../lib/types';
import { HubSkeleton } from '../ui/Skeleton';
import { useToast } from '../ui/Toast';

interface StudentHubProps {
  postId?: string;
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

type TabType = 'feed' | 'questions' | 'materials' | 'announcements';
type PostType = 'question' | 'announcement' | 'material';

function Avatar({ name, avatarUrl, size = 'sm' }: { name: string; avatarUrl?: string | null; size?: 'sm' | 'md' }) {
  const dim = size === 'md' ? 'w-10 h-10 text-sm' : 'w-8 h-8 text-xs';
  if (avatarUrl) {
    return <img src={avatarUrl} alt={name} className={`${dim} rounded-full object-cover flex-shrink-0`} />;
  }
  return (
    <div className={`${dim} rounded-full bg-gradient-to-br from-blue-500 to-blue-700 flex items-center justify-center text-white font-bold flex-shrink-0`}>
      {name?.[0]?.toUpperCase() || 'S'}
    </div>
  );
}

function PostTypeBadge({ type }: { type: PostType }) {
  if (type === 'announcement') {
    return (
      <span className="inline-flex items-center gap-1 text-[11px] px-2 py-0.5 bg-amber-50 text-amber-700 border border-amber-200 rounded-full font-semibold">
        <Megaphone size={9} /> Announcement
      </span>
    );
  }
  if (type === 'material') {
    return (
      <span className="inline-flex items-center gap-1 text-[11px] px-2 py-0.5 bg-emerald-50 text-emerald-700 border border-emerald-200 rounded-full font-semibold">
        <Paperclip size={9} /> Material
      </span>
    );
  }
  return (
    <span className="inline-flex items-center gap-1 text-[11px] px-2 py-0.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-full font-semibold">
      <HelpCircle size={9} /> Question
    </span>
  );
}

function formatDate(d: string) {
  const diff = (Date.now() - new Date(d).getTime()) / 1000;
  if (diff < 60) return 'just now';
  if (diff < 3600) return `${Math.floor(diff / 60)}m ago`;
  if (diff < 86400) return `${Math.floor(diff / 3600)}h ago`;
  return `${Math.floor(diff / 86400)}d ago`;
}

function isImageFile(mimeType: string | null | undefined) {
  return mimeType?.startsWith('image/') || false;
}

function PremiumGate({ onNavigate }: { onNavigate: (page: Page, data?: Record<string, unknown>) => void }) {
  return (
    <div className="flex flex-col items-center justify-center min-h-[60vh] px-4 text-center">
      <div className="w-20 h-20 rounded-3xl flex items-center justify-center mb-6" style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 8px 32px rgba(245,158,11,0.3)' }}>
        <Users size={36} className="text-white" />
      </div>
      <div className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full border mb-4 text-xs font-bold" style={{ background: 'rgba(245,158,11,0.08)', borderColor: 'rgba(245,158,11,0.25)', color: '#b45309' }}>
        <Lock size={10} /> Premium Feature
      </div>
      <h2 className="text-2xl font-black text-slate-900 mb-3 leading-tight">Student Hub</h2>
      <p className="text-slate-500 text-sm mb-6 leading-relaxed max-w-xs">
        Ask questions, share materials, and collaborate with WASSCE students across West Africa. Upgrade to access the full community.
      </p>
      <button
        onClick={() => onNavigate('premium')}
        className="flex items-center gap-2 px-6 py-3.5 rounded-2xl font-black text-sm text-white transition-all hover:scale-[1.02] active:scale-95"
        style={{ background: 'linear-gradient(135deg, #f59e0b, #f97316)', boxShadow: '0 4px 16px rgba(245,158,11,0.3)' }}
      >
        <Crown size={15} /> Unlock Full Access — Premium
      </button>
    </div>
  );
}

export default function StudentHub({ postId, onNavigate }: StudentHubProps) {
  const { profile, isPremium } = useAuth();

  if (!isPremium) return <PremiumGate onNavigate={onNavigate} />;
  const { toast } = useToast();
  const [posts, setPosts] = useState<HubPost[]>([]);
  const [selectedPost, setSelectedPost] = useState<HubPost | null>(null);
  const [answers, setAnswers] = useState<HubAnswer[]>([]);
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [authorAvatars, setAuthorAvatars] = useState<Record<string, string | null>>({});
  const [answerAvatars, setAnswerAvatars] = useState<Record<string, string | null>>({});
  const [loading, setLoading] = useState(true);
  const [showCreatePost, setShowCreatePost] = useState(false);
  const [activeTab, setActiveTab] = useState<TabType>('feed');
  const [search, setSearch] = useState('');
  const [postType, setPostType] = useState<PostType>('question');
  const [newPost, setNewPost] = useState({ title: '', content: '', subject_id: '' });
  const [materialFile, setMaterialFile] = useState<File | null>(null);
  const [uploadingMaterial, setUploadingMaterial] = useState(false);
  const [newAnswer, setNewAnswer] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [markingSolved, setMarkingSolved] = useState<string | null>(null);
  const [deletingPost, setDeletingPost] = useState<string | null>(null);
  const [confirmDeleteId, setConfirmDeleteId] = useState<string | null>(null);
  const [votedPosts, setVotedPosts] = useState<Set<string>>(new Set());
  const votingRef = useRef<Set<string>>(new Set());
  const fileInputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    loadSubjects();
    if (postId) loadPost(postId);
    else loadPosts();
  }, [postId]);

  async function loadSubjects() {
    const { data } = await supabase.from('subjects').select('*').order('order_index');
    setSubjects(data || []);
  }

  async function fetchAvatarsForPosts(postsData: HubPost[]) {
    const userIds = [...new Set(postsData.map(p => p.user_id))];
    if (!userIds.length) return;
    const { data } = await supabase.from('user_profiles').select('id, avatar_url').in('id', userIds);
    if (data) {
      const map: Record<string, string | null> = {};
      data.forEach(u => { map[u.id] = u.avatar_url; });
      setAuthorAvatars(prev => ({ ...prev, ...map }));
    }
  }

  async function fetchAvatarsForAnswers(answersData: HubAnswer[]) {
    const userIds = [...new Set(answersData.map(a => a.user_id as string).filter(Boolean))];
    if (!userIds.length) return;
    const { data } = await supabase.from('user_profiles').select('id, avatar_url').in('id', userIds);
    if (data) {
      const map: Record<string, string | null> = {};
      data.forEach(u => { map[u.id] = u.avatar_url; });
      setAnswerAvatars(prev => ({ ...prev, ...map }));
    }
  }

  async function loadPosts() {
    setLoading(true);
    const { data } = await supabase.from('hub_posts').select('*').order('created_at', { ascending: false });
    const fetched = (data || []) as HubPost[];
    setPosts(fetched);
    fetchAvatarsForPosts(fetched);
    setLoading(false);
  }

  async function loadPost(id: string) {
    setLoading(true);
    const [postRes, answersRes] = await Promise.all([
      supabase.from('hub_posts').select('*').eq('id', id).maybeSingle(),
      supabase.from('hub_answers').select('*').eq('post_id', id).order('created_at'),
    ]);
    if (postRes.data) {
      setSelectedPost(postRes.data as HubPost);
      fetchAvatarsForPosts([postRes.data as HubPost]);
    }
    const fetchedAnswers = answersRes.data || [];
    setAnswers(fetchedAnswers as HubAnswer[]);
    fetchAvatarsForAnswers(fetchedAnswers as HubAnswer[]);
    setLoading(false);
  }

  async function createPost() {
    if (!newPost.title.trim() || !newPost.content.trim()) return;
    setSubmitting(true);

    let materialUrl: string | null = null;
    let materialName: string | null = null;
    let materialType: string | null = null;

    if (postType === 'material' && materialFile) {
      setUploadingMaterial(true);
      const ext = materialFile.name.split('.').pop() || 'bin';
      const path = `${profile!.id}/${Date.now()}.${ext}`;
      const { error: uploadError } = await supabase.storage.from('hub-materials').upload(path, materialFile);
      if (!uploadError) {
        const { data: urlData } = supabase.storage.from('hub-materials').getPublicUrl(path);
        materialUrl = urlData.publicUrl;
        materialName = materialFile.name;
        materialType = materialFile.type;
      } else {
        setUploadingMaterial(false);
        setSubmitting(false);
        toast('File upload failed. Please try again.', 'error');
        return;
      }
      setUploadingMaterial(false);
    }

    const { data } = await supabase.from('hub_posts').insert({
      user_id: profile!.id,
      author_name: profile!.display_name || 'Student',
      country: profile!.country,
      title: newPost.title,
      content: newPost.content,
      subject_id: newPost.subject_id || null,
      post_type: postType,
      is_solved: false,
      material_url: materialUrl,
      material_name: materialName,
      material_type: materialType,
    }).select().maybeSingle();

    if (data) {
      const created = data as HubPost;
      setPosts(prev => [created, ...prev]);
      setAuthorAvatars(prev => ({ ...prev, [profile!.id]: profile!.avatar_url || null }));
      setNewPost({ title: '', content: '', subject_id: '' });
      setMaterialFile(null);
      setShowCreatePost(false);
      toast(
        postType === 'question' ? 'Question posted!' : postType === 'material' ? 'Material shared!' : 'Announcement posted!',
        'success'
      );

    }
    setSubmitting(false);
  }

  async function submitAnswer() {
    if (!newAnswer.trim() || !selectedPost) return;
    setSubmitting(true);
    const { data } = await supabase.from('hub_answers').insert({
      post_id: selectedPost.id,
      user_id: profile!.id,
      author_name: profile!.display_name || 'Student',
      content: newAnswer,
    }).select().maybeSingle();

    if (data) {
      setAnswers(prev => [...prev, data as HubAnswer]);
      setAnswerAvatars(prev => ({ ...prev, [profile!.id]: profile!.avatar_url || null }));
      setNewAnswer('');
      toast('Answer posted!', 'success');
      const newCount = answers.length + 1;
      await supabase.from('hub_posts').update({ answer_count: newCount }).eq('id', selectedPost.id);
      setSelectedPost(prev => prev ? { ...prev, answer_count: newCount } : prev);
    }
    setSubmitting(false);
  }

  async function markSolved(answerId: string, _answerAuthorId: string) {
    if (!selectedPost || markingSolved) return;
    setMarkingSolved(answerId);
    await Promise.all([
      supabase.from('hub_answers').update({ is_accepted: true }).eq('id', answerId),
      supabase.from('hub_posts').update({ is_solved: true }).eq('id', selectedPost.id),
    ]);
    setAnswers(prev => prev.map(a => a.id === answerId ? { ...a, is_accepted: true } : a));
    setSelectedPost(prev => prev ? { ...prev, is_solved: true } : prev);

    setMarkingSolved(null);
    toast('Question marked as solved!', 'success');
  }

  async function deletePost(postId: string, e: React.MouseEvent) {
    e.stopPropagation();
    if (confirmDeleteId !== postId) {
      setConfirmDeleteId(postId);
      return;
    }
    setDeletingPost(postId);
    setConfirmDeleteId(null);
    await supabase.from('hub_answers').delete().eq('post_id', postId);
    await supabase.from('hub_posts').delete().eq('id', postId);
    setPosts(prev => prev.filter(p => p.id !== postId));
    setDeletingPost(null);
    toast('Post deleted.', 'info');
  }

  async function upvotePost(postId: string, e: React.MouseEvent) {
    e.stopPropagation();
    if (votedPosts.has(postId) || votingRef.current.has(postId)) return;
    const post = posts.find(p => p.id === postId);
    if (!post) return;
    votingRef.current.add(postId);
    setVotedPosts(prev => new Set(prev).add(postId));
    setPosts(prev => prev.map(p => p.id === postId ? { ...p, upvotes: p.upvotes + 1 } : p));
    await supabase.from('hub_posts').update({ upvotes: post.upvotes + 1 }).eq('id', postId);
    votingRef.current.delete(postId);
    toast('Marked as helpful!', 'info', 2000);
  }

  async function sharePost(post: HubPost, e: React.MouseEvent) {
    e.stopPropagation();
    const text = `Check this out on WASCCEScience Student Hub: "${post.title}"`;
    if (navigator.share) {
      await navigator.share({ title: post.title, text }).catch(() => {});
    } else {
      await navigator.clipboard.writeText(text);
      toast('Link copied to clipboard!', 'success', 2500);
    }
  }

  const filteredPosts = posts.filter(p => {
    const matchesSearch = !search ||
      p.title.toLowerCase().includes(search.toLowerCase()) ||
      p.content.toLowerCase().includes(search.toLowerCase());
    if (activeTab === 'questions') return matchesSearch && (p.post_type === 'question' || !p.post_type);
    if (activeTab === 'materials') return matchesSearch && p.post_type === 'material';
    if (activeTab === 'announcements') return matchesSearch && p.post_type === 'announcement';
    return matchesSearch;
  });

  if (loading) return <HubSkeleton />;

  if (selectedPost) {
    const subjectName = subjects.find(s => s.id === selectedPost.subject_id)?.name;
    return (
      <div className="space-y-5 pb-8">
        <button
          onClick={() => { setSelectedPost(null); onNavigate('hub'); }}
          className="flex items-center gap-1.5 text-slate-500 hover:text-slate-800 text-sm font-medium"
        >
          <ChevronLeft size={16} /> Student Hub
        </button>

        <div className="bg-white border border-slate-200 rounded-2xl p-5 shadow-sm">
          <div className="flex items-start gap-3 mb-4">
            <Avatar name={selectedPost.author_name} avatarUrl={authorAvatars[selectedPost.user_id]} size="md" />
            <div className="flex-1 min-w-0">
              <div className="flex items-center gap-2 flex-wrap mb-1">
                <PostTypeBadge type={(selectedPost.post_type as PostType) || 'question'} />
                {selectedPost.is_solved && (
                  <span className="inline-flex items-center gap-1 text-[11px] px-2 py-0.5 bg-green-50 text-green-700 border border-green-200 rounded-full font-bold">
                    <CheckCircle size={9} /> Solved
                  </span>
                )}
                {subjectName && (
                  <span className="inline-flex items-center gap-1 text-[11px] px-2 py-0.5 bg-slate-100 text-slate-600 rounded-full">
                    <Tag size={9} /> {subjectName}
                  </span>
                )}
              </div>
              <h1 className="text-lg font-bold text-slate-800 leading-snug">{selectedPost.title}</h1>
              <div className="flex items-center gap-2 text-xs text-slate-400 mt-0.5 flex-wrap">
                <span className="font-semibold text-slate-600">{selectedPost.author_name}</span>
                <span>·</span>
                <span>{selectedPost.country}</span>
                <span>·</span>
                <Clock size={10} />
                <span>{formatDate(selectedPost.created_at)}</span>
              </div>
            </div>
          </div>

          <p className="text-slate-700 text-sm leading-relaxed whitespace-pre-wrap mb-4">{selectedPost.content}</p>

          {selectedPost.material_url && (
            <div className="bg-slate-50 border border-slate-200 rounded-xl p-3 mb-4">
              {isImageFile(selectedPost.material_type) ? (
                <div>
                  <img
                    src={selectedPost.material_url}
                    alt={selectedPost.material_name || 'Material'}
                    className="w-full max-h-64 object-contain rounded-lg mb-2"
                  />
                  <div className="flex items-center gap-2">
                    <ImageIcon size={13} className="text-slate-400" />
                    <span className="text-xs text-slate-600 flex-1 truncate">{selectedPost.material_name}</span>
                    <a
                      href={selectedPost.material_url}
                      download
                      target="_blank"
                      rel="noopener noreferrer"
                      className="flex items-center gap-1 text-xs px-3 py-1.5 bg-blue-600 text-white rounded-lg font-bold hover:bg-blue-700 transition-colors"
                    >
                      <Download size={11} /> Download
                    </a>
                    <button
                      onClick={e => sharePost(selectedPost, e)}
                      className="flex items-center gap-1 text-xs px-2.5 py-1.5 bg-slate-200 text-slate-700 rounded-lg font-semibold hover:bg-slate-300 transition-colors"
                    >
                      <Share2 size={11} /> Share
                    </button>
                  </div>
                </div>
              ) : (
                <div className="flex items-center gap-2">
                  <FileText size={16} className="text-slate-400 flex-shrink-0" />
                  <span className="text-xs text-slate-700 flex-1 font-medium truncate">{selectedPost.material_name}</span>
                  <a
                    href={selectedPost.material_url}
                    download
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center gap-1 text-xs px-3 py-1.5 bg-blue-600 text-white rounded-lg font-bold hover:bg-blue-700 transition-colors flex-shrink-0"
                  >
                    <Download size={12} /> Download
                  </a>
                  <button
                    onClick={e => sharePost(selectedPost, e)}
                    className="flex items-center gap-1 text-xs px-2.5 py-1.5 bg-slate-200 text-slate-700 rounded-lg font-semibold hover:bg-slate-300 transition-colors flex-shrink-0"
                  >
                    <Share2 size={12} /> Share
                  </button>
                </div>
              )}
            </div>
          )}

          <div className="flex items-center gap-3 pt-3 border-t border-slate-100">
            <button
              onClick={e => upvotePost(selectedPost.id, e)}
              disabled={votedPosts.has(selectedPost.id)}
              className={`flex items-center gap-1.5 text-xs transition-colors font-medium disabled:cursor-default ${
                votedPosts.has(selectedPost.id)
                  ? 'text-blue-600'
                  : 'text-slate-500 hover:text-blue-600'
              }`}
            >
              <ThumbsUp size={13} /> {selectedPost.upvotes} helpful
            </button>
            <button
              onClick={e => sharePost(selectedPost, e)}
              className="flex items-center gap-1.5 text-xs text-slate-500 hover:text-blue-600 transition-colors font-medium"
            >
              <Share2 size={13} /> Share
            </button>
            {selectedPost.user_id === profile?.id && (
              <button
                onClick={async e => {
                  e.stopPropagation();
                  if (confirmDeleteId !== selectedPost.id) {
                    setConfirmDeleteId(selectedPost.id);
                    return;
                  }
                  setDeletingPost(selectedPost.id);
                  setConfirmDeleteId(null);
                  await supabase.from('hub_answers').delete().eq('post_id', selectedPost.id);
                  await supabase.from('hub_posts').delete().eq('id', selectedPost.id);
                  setPosts(prev => prev.filter(p => p.id !== selectedPost.id));
                  setDeletingPost(null);
                  setSelectedPost(null);
                  onNavigate('hub');
                  toast('Post deleted.', 'info');
                }}
                disabled={deletingPost === selectedPost.id}
                className={`ml-auto flex items-center gap-1.5 text-xs font-semibold transition-colors disabled:opacity-50 ${
                  confirmDeleteId === selectedPost.id
                    ? 'text-red-600'
                    : 'text-slate-400 hover:text-red-500'
                }`}
              >
                <Trash2 size={13} />
                {confirmDeleteId === selectedPost.id ? 'Tap again to delete' : 'Delete Post'}
              </button>
            )}
          </div>
        </div>


        <div>
          <h2 className="text-base font-bold text-slate-800 mb-3 flex items-center gap-2">
            <MessageSquare size={15} className="text-slate-400" />
            {answers.length} Answer{answers.length !== 1 ? 's' : ''}
          </h2>
          <div className="space-y-3">
            {answers.length === 0 && (
              <div className="text-center py-8 bg-white border border-dashed border-slate-200 rounded-2xl">
                <MessageSquare size={28} className="text-slate-300 mx-auto mb-2" />
                <p className="text-slate-500 text-sm font-medium">No answers yet</p>
                <p className="text-slate-400 text-xs mt-0.5">Be the first to help!</p>
              </div>
            )}
            {answers.map(answer => (
              <div
                key={answer.id}
                className={`bg-white border rounded-2xl p-4 ${answer.is_accepted ? 'border-green-300 bg-green-50/40 shadow-sm' : 'border-slate-200'}`}
              >
                {answer.is_accepted && (
                  <div className="inline-flex items-center gap-1.5 text-green-700 text-xs font-bold mb-3 bg-green-100 border border-green-200 px-3 py-1 rounded-full">
                    <CheckCircle size={12} /> Accepted Solution
                  </div>
                )}
                <div className="flex items-start gap-2">
                  <Avatar name={answer.author_name} avatarUrl={answerAvatars[answer.user_id as string]} size="sm" />
                  <div className="flex-1 min-w-0">
                    <p className="text-slate-700 text-sm leading-relaxed whitespace-pre-wrap">{answer.content}</p>
                    <div className="flex items-center gap-2 mt-2 flex-wrap">
                      <span className="text-xs font-semibold text-slate-600">{answer.author_name}</span>
                      <span className="text-xs text-slate-400">{formatDate(answer.created_at)}</span>
                      {selectedPost.user_id === profile!.id && !selectedPost.is_solved && !answer.is_accepted && (
                        <button
                          onClick={() => markSolved(answer.id, answer.user_id as string)}
                          disabled={markingSolved === answer.id}
                          className="flex items-center gap-1 text-xs px-3 py-1 bg-green-600 text-white rounded-full font-bold hover:bg-green-700 transition-colors disabled:opacity-60"
                        >
                          <CheckCircle size={11} />
                          {markingSolved === answer.id ? 'Marking...' : 'Mark Solved'}
                        </button>
                      )}
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>

        <div className="bg-white border border-slate-200 rounded-2xl p-4 shadow-sm">
          <div className="flex items-center gap-2 mb-3">
            <Avatar name={profile!.display_name || 'You'} avatarUrl={profile!.avatar_url} size="sm" />
            <p className="text-sm font-semibold text-slate-700">Your Answer</p>
          </div>
          <textarea
            value={newAnswer}
            onChange={e => setNewAnswer(e.target.value)}
            placeholder="Share your knowledge or solution..."
            rows={4}
            className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm text-slate-700 focus:outline-none focus:ring-2 focus:ring-blue-500 resize-none mb-3"
          />
          <button
            onClick={submitAnswer}
            disabled={!newAnswer.trim() || submitting}
            className="flex items-center gap-2 px-5 py-2 bg-blue-600 text-white rounded-xl text-sm font-bold hover:bg-blue-700 disabled:opacity-50 transition-colors"
          >
            <Send size={14} /> {submitting ? 'Posting...' : 'Post Answer'}
          </button>
        </div>
      </div>
    );
  }

  const tabDefs: { id: TabType; label: string; count: number; icon: React.ReactNode }[] = [
    { id: 'feed', label: 'All', count: posts.length, icon: <MessageSquare size={12} /> },
    { id: 'questions', label: 'Questions', count: posts.filter(p => p.post_type === 'question' || !p.post_type).length, icon: <HelpCircle size={12} /> },
    { id: 'materials', label: 'Materials', count: posts.filter(p => p.post_type === 'material').length, icon: <Paperclip size={12} /> },
    { id: 'announcements', label: 'Notices', count: posts.filter(p => p.post_type === 'announcement').length, icon: <Megaphone size={12} /> },
  ];

  return (
    <div className="space-y-5 pb-8">
      <button
        onClick={() => onNavigate('dashboard')}
        className="flex items-center gap-1.5 text-slate-500 hover:text-slate-800 text-sm font-medium transition-colors"
      >
        <ChevronLeft size={16} /> Back to Dashboard
      </button>

      <div className="flex items-start justify-between">
        <div>
          <h1 className="text-2xl font-bold text-slate-800 mb-1">Student Hub</h1>
          <p className="text-slate-500 text-sm">{profile?.country} community · {posts.length} posts</p>
        </div>
        <button
          onClick={() => setShowCreatePost(!showCreatePost)}
          className="flex items-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-xl font-bold text-sm hover:bg-blue-700 transition-colors shadow-sm shadow-blue-200"
        >
          <Plus size={16} /> Post
        </button>
      </div>

      {showCreatePost && (
        <div className="bg-white border border-blue-200 rounded-2xl p-5 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <h3 className="font-bold text-slate-800">Create a Post</h3>
            <button onClick={() => { setShowCreatePost(false); setMaterialFile(null); }} className="p-1.5 hover:bg-slate-100 rounded-lg">
              <X size={15} className="text-slate-500" />
            </button>
          </div>

          <div className="flex flex-col xs:grid xs:grid-cols-3 gap-2 mb-4">
            {([
              { type: 'question' as PostType, label: 'Question', icon: <HelpCircle size={15} />, active: 'border-blue-500 bg-blue-50 text-blue-700' },
              { type: 'material' as PostType, label: 'Material', icon: <Paperclip size={15} />, active: 'border-emerald-500 bg-emerald-50 text-emerald-700' },
              { type: 'announcement' as PostType, label: 'Announce', icon: <Megaphone size={15} />, active: 'border-amber-500 bg-amber-50 text-amber-700' },
            ]).map(({ type, label, icon, active }) => (
              <button
                key={type}
                onClick={() => setPostType(type)}
                className={`flex items-center justify-center gap-2 xs:flex-col xs:gap-1.5 py-3 rounded-xl border-2 text-xs font-bold transition-all min-h-[44px] ${
                  postType === type ? active : 'border-slate-200 text-slate-500 hover:border-slate-300'
                }`}
              >
                {icon} {label}
              </button>
            ))}
          </div>

          <div className="space-y-3">
            <input
              type="text"
              value={newPost.title}
              onChange={e => setNewPost(prev => ({ ...prev, title: e.target.value }))}
              placeholder={postType === 'question' ? 'Your question title...' : postType === 'announcement' ? 'Announcement title...' : 'Material title...'}
              className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <select
              value={newPost.subject_id}
              onChange={e => setNewPost(prev => ({ ...prev, subject_id: e.target.value }))}
              className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="">Select subject (optional)</option>
              {subjects.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
            </select>
            <textarea
              value={newPost.content}
              onChange={e => setNewPost(prev => ({ ...prev, content: e.target.value }))}
              placeholder={postType === 'question' ? 'Describe your question in detail...' : postType === 'announcement' ? 'Write your announcement...' : 'Describe the material...'}
              rows={3}
              className="w-full border border-slate-200 rounded-xl px-3 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 resize-none"
            />

            {postType === 'material' && (
              <div>
                <input
                  ref={fileInputRef}
                  type="file"
                  accept="image/*,.pdf,.doc,.docx,.ppt,.pptx,.xls,.xlsx,.txt,.zip"
                  className="hidden"
                  onChange={e => { const f = e.target.files?.[0]; if (f) setMaterialFile(f); e.target.value = ''; }}
                />
                {materialFile ? (
                  <div className="flex items-center gap-2 p-3 bg-slate-50 border border-slate-200 rounded-xl">
                    <FileText size={15} className="text-slate-400 flex-shrink-0" />
                    <span className="text-sm text-slate-700 flex-1 truncate">{materialFile.name}</span>
                    <span className="text-xs text-slate-400 flex-shrink-0">{(materialFile.size / 1024).toFixed(0)} KB</span>
                    <button onClick={() => setMaterialFile(null)} className="p-1 hover:bg-slate-200 rounded-lg flex-shrink-0">
                      <X size={13} className="text-slate-500" />
                    </button>
                  </div>
                ) : (
                  <button
                    onClick={() => fileInputRef.current?.click()}
                    className="w-full flex items-center justify-center gap-2 py-3 border-2 border-dashed border-slate-300 text-slate-500 rounded-xl text-sm font-medium hover:border-blue-400 hover:text-blue-600 transition-colors"
                  >
                    <Upload size={16} /> Attach File (PDF, Word, Image, etc.)
                  </button>
                )}
              </div>
            )}

            <div className="flex gap-2">
              <button
                onClick={() => { setShowCreatePost(false); setMaterialFile(null); }}
                className="flex-1 py-2.5 border border-slate-200 text-slate-600 rounded-xl text-sm font-semibold hover:bg-slate-50"
              >
                Cancel
              </button>
              <button
                onClick={createPost}
                disabled={!newPost.title.trim() || !newPost.content.trim() || submitting || uploadingMaterial}
                className="flex-1 py-2.5 bg-blue-600 text-white rounded-xl text-sm font-bold hover:bg-blue-700 disabled:opacity-50 flex items-center justify-center gap-2"
              >
                {submitting || uploadingMaterial ? (
                  <><div className="w-4 h-4 border-2 border-white border-t-transparent rounded-full animate-spin" /> Posting...</>
                ) : (
                  <><Send size={13} /> Post</>
                )}
              </button>
            </div>
          </div>
        </div>
      )}

      <div className="relative">
        <Search size={15} className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" />
        <input
          type="text"
          value={search}
          onChange={e => setSearch(e.target.value)}
          placeholder="Search posts..."
          className="w-full pl-9 pr-4 py-2.5 border border-slate-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
      </div>

      <div className="flex gap-2 overflow-x-auto pb-1">
        {tabDefs.map(tab => (
          <button
            key={tab.id}
            onClick={() => setActiveTab(tab.id)}
            className={`flex items-center gap-1.5 px-3 py-2 rounded-xl text-xs font-bold whitespace-nowrap transition-all flex-shrink-0 ${
              activeTab === tab.id
                ? 'bg-blue-600 text-white shadow-sm'
                : 'bg-white border border-slate-200 text-slate-600 hover:border-slate-300'
            }`}
          >
            {tab.icon} {tab.label}
            <span className={`ml-0.5 px-1.5 py-0.5 rounded-full text-[10px] font-bold ${
              activeTab === tab.id ? 'bg-blue-500 text-white' : 'bg-slate-100 text-slate-500'
            }`}>
              {tab.count}
            </span>
          </button>
        ))}
      </div>

      <div className="space-y-3">
        {filteredPosts.length === 0 ? (
          <div className="text-center py-14 bg-white border border-dashed border-slate-200 rounded-2xl">
            <div className="w-16 h-16 bg-slate-50 border border-slate-200 rounded-full flex items-center justify-center mx-auto mb-4">
              <MessageSquare size={28} className="text-slate-300" />
            </div>
            <p className="text-slate-600 font-semibold mb-1">
              {search ? 'No matching posts found' : activeTab === 'questions' ? 'No questions yet' : activeTab === 'materials' ? 'No materials shared yet' : activeTab === 'announcements' ? 'No announcements yet' : 'No posts yet'}
            </p>
            <p className="text-slate-400 text-sm mb-5">
              {search ? 'Try a different search term.' : 'Be the first to post something for the community!'}
            </p>
            {!search && (
              <button
                onClick={() => setShowCreatePost(true)}
                className="inline-flex items-center gap-2 px-5 py-2.5 bg-blue-600 text-white rounded-xl font-semibold text-sm hover:bg-blue-700 transition-colors"
              >
                <Plus size={15} /> Create a Post
              </button>
            )}
          </div>
        ) : (
          filteredPosts.map(post => {
            const subjectName = subjects.find(s => s.id === post.subject_id)?.name;
            return (
              <button
                key={post.id}
                onClick={() => { setSelectedPost(post); onNavigate('hub-post', { postId: post.id }); }}
                className="w-full bg-white border border-slate-200 rounded-2xl p-4 text-left hover:shadow-md hover:border-slate-300 transition-all"
              >
                <div className="flex items-start gap-3">
                  <Avatar name={post.author_name} avatarUrl={authorAvatars[post.user_id]} size="sm" />
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-1.5 flex-wrap mb-1.5">
                      <PostTypeBadge type={(post.post_type as PostType) || 'question'} />
                      {post.is_solved && (
                        <span className="inline-flex items-center gap-1 text-[10px] px-1.5 py-0.5 bg-green-50 text-green-700 border border-green-200 rounded-full font-bold">
                          <CheckCircle size={8} /> Solved
                        </span>
                      )}
                      {subjectName && (
                        <span className="inline-flex items-center gap-1 text-[10px] px-1.5 py-0.5 bg-slate-100 text-slate-500 rounded-full">
                          <Tag size={8} /> {subjectName}
                        </span>
                      )}
                    </div>

                    <h3 className="font-semibold text-slate-800 text-sm leading-snug mb-1">{post.title}</h3>
                    <p className="text-xs text-slate-500 line-clamp-2 mb-2">{post.content}</p>

                    {post.material_name && (
                      <div className="flex items-center gap-1 text-xs text-emerald-600 font-medium mb-2">
                        {isImageFile(post.material_type) ? <ImageIcon size={10} /> : <FileText size={10} />}
                        <span className="truncate max-w-[120px] sm:max-w-[200px]">{post.material_name}</span>
                      </div>
                    )}

                    <div className="flex items-center gap-2 text-xs text-slate-400 flex-wrap">
                      <span className="font-semibold text-slate-600">{post.author_name}</span>
                      <span>·</span>
                      <Clock size={10} />
                      <span>{formatDate(post.created_at)}</span>
                      <span className="ml-auto flex items-center gap-1">
                        <MessageSquare size={10} /> {post.answer_count}
                      </span>
                      <button
                        onClick={e => upvotePost(post.id, e)}
                        disabled={votedPosts.has(post.id)}
                        className={`flex items-center gap-1 transition-colors disabled:cursor-default ${
                          votedPosts.has(post.id) ? 'text-blue-600' : 'hover:text-blue-600'
                        }`}
                      >
                        <ThumbsUp size={10} /> {post.upvotes}
                      </button>
                      <button
                        onClick={e => sharePost(post, e)}
                        className="flex items-center gap-1 hover:text-blue-600 transition-colors"
                      >
                        <Share2 size={10} />
                      </button>
                      {post.user_id === profile?.id && (
                        <button
                          onClick={e => deletePost(post.id, e)}
                          disabled={deletingPost === post.id}
                          className={`flex items-center gap-1 transition-colors disabled:opacity-50 ${
                            confirmDeleteId === post.id
                              ? 'text-red-600 font-semibold'
                              : 'hover:text-red-500'
                          }`}
                        >
                          <Trash2 size={10} />
                          {confirmDeleteId === post.id && <span>Confirm?</span>}
                        </button>
                      )}
                    </div>
                  </div>
                  <ChevronRight size={14} className="text-slate-300 flex-shrink-0 mt-1" />
                </div>
              </button>
            );
          })
        )}
      </div>
    </div>
  );
}
