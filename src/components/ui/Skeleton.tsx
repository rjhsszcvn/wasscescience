export function Skeleton({ className = '' }: { className?: string }) {
  return (
    <div className={`animate-pulse bg-slate-200 rounded-lg ${className}`} />
  );
}

export function DashboardSkeleton() {
  return (
    <div className="space-y-6 pb-8">
      <div className="h-8 w-48 animate-pulse bg-slate-200 rounded-lg" />
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-4">
        {[...Array(4)].map((_, i) => (
          <div key={i} className="bg-white rounded-2xl border border-slate-200 p-4 shadow-sm space-y-3">
            <div className="w-9 h-9 rounded-xl animate-pulse bg-slate-200" />
            <div className="h-7 w-16 animate-pulse bg-slate-200 rounded" />
            <div className="h-3 w-24 animate-pulse bg-slate-200 rounded" />
          </div>
        ))}
      </div>
      <div className="h-40 w-full animate-pulse bg-slate-200 rounded-2xl" />
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {[...Array(6)].map((_, i) => (
          <div key={i} className="bg-white rounded-2xl border border-slate-200 p-5 space-y-3">
            <div className="w-12 h-12 rounded-xl animate-pulse bg-slate-200" />
            <div className="h-4 w-28 animate-pulse bg-slate-200 rounded" />
            <div className="h-2 w-full animate-pulse bg-slate-200 rounded-full" />
          </div>
        ))}
      </div>
    </div>
  );
}

export function LeaderboardSkeleton() {
  return (
    <div className="space-y-6 pb-8">
      <div className="h-8 w-40 animate-pulse bg-slate-200 rounded-lg" />
      <div className="h-48 w-full animate-pulse bg-slate-200 rounded-2xl" />
      <div className="bg-white border border-slate-200 rounded-2xl overflow-hidden shadow-sm">
        {[...Array(8)].map((_, i) => (
          <div key={i} className="flex items-center gap-3 p-3 border-b last:border-0 border-slate-100">
            <div className="w-8 h-8 rounded-full animate-pulse bg-slate-200 flex-shrink-0" />
            <div className="flex-1 h-4 animate-pulse bg-slate-200 rounded" />
            <div className="w-12 h-4 animate-pulse bg-slate-200 rounded" />
            <div className="w-8 h-4 animate-pulse bg-slate-200 rounded" />
          </div>
        ))}
      </div>
    </div>
  );
}

export function NotificationsSkeleton() {
  return (
    <div className="max-w-2xl mx-auto space-y-5 pb-8">
      <div className="flex items-start justify-between">
        <div className="space-y-2">
          <div className="h-7 w-36 animate-pulse bg-slate-200 rounded-lg" />
          <div className="h-4 w-28 animate-pulse bg-slate-200 rounded" />
        </div>
      </div>
      <div className="flex gap-2">
        <div className="h-8 w-16 animate-pulse bg-slate-200 rounded-full" />
        <div className="h-8 w-20 animate-pulse bg-slate-200 rounded-full" />
      </div>
      <div className="space-y-2">
        {[...Array(5)].map((_, i) => (
          <div key={i} className="flex items-start gap-4 p-4 rounded-2xl border border-slate-100 bg-white">
            <div className="w-10 h-10 rounded-xl animate-pulse bg-slate-200 flex-shrink-0" />
            <div className="flex-1 space-y-2">
              <div className="flex items-start justify-between gap-2">
                <div className="h-4 w-40 animate-pulse bg-slate-200 rounded" />
                <div className="h-3 w-12 animate-pulse bg-slate-200 rounded flex-shrink-0" />
              </div>
              <div className="h-3 w-full animate-pulse bg-slate-200 rounded" />
              <div className="h-3 w-3/4 animate-pulse bg-slate-200 rounded" />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export function HubSkeleton() {
  return (
    <div className="space-y-4 pb-8">
      <div className="h-8 w-40 animate-pulse bg-slate-200 rounded-lg" />
      <div className="h-10 w-full animate-pulse bg-slate-200 rounded-xl" />
      <div className="flex gap-2">
        {[...Array(4)].map((_, i) => (
          <div key={i} className="h-8 w-20 animate-pulse bg-slate-200 rounded-xl flex-shrink-0" />
        ))}
      </div>
      {[...Array(5)].map((_, i) => (
        <div key={i} className="bg-white border border-slate-200 rounded-2xl p-4 space-y-3">
          <div className="flex items-start gap-3">
            <div className="w-8 h-8 rounded-full animate-pulse bg-slate-200 flex-shrink-0" />
            <div className="flex-1 space-y-2">
              <div className="h-3 w-24 animate-pulse bg-slate-200 rounded" />
              <div className="h-4 w-3/4 animate-pulse bg-slate-200 rounded" />
              <div className="h-3 w-full animate-pulse bg-slate-200 rounded" />
              <div className="h-3 w-2/3 animate-pulse bg-slate-200 rounded" />
            </div>
          </div>
        </div>
      ))}
    </div>
  );
}
