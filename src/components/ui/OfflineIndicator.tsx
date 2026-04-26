import { useState, useEffect, useRef } from 'react';
import { WifiOff, Wifi } from 'lucide-react';

export default function OfflineIndicator() {
  const [showBanner, setShowBanner] = useState(!navigator.onLine);
  const [bannerType, setBannerType] = useState<'offline' | 'online'>(!navigator.onLine ? 'offline' : 'online');
  const wasOfflineRef = useRef(!navigator.onLine);
  const hideTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  const clearHideTimer = () => {
    if (hideTimerRef.current) {
      clearTimeout(hideTimerRef.current);
      hideTimerRef.current = null;
    }
  };

  useEffect(() => {
    function handleOnline() {
      clearHideTimer();
      if (wasOfflineRef.current) {
        setBannerType('online');
        setShowBanner(true);
        hideTimerRef.current = setTimeout(() => {
          setShowBanner(false);
          wasOfflineRef.current = false;
        }, 3000);
      }
    }

    function handleOffline() {
      wasOfflineRef.current = true;
      clearHideTimer();
      setBannerType('offline');
      setShowBanner(true);
    }

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
      clearHideTimer();
    };
  }, []);

  if (!showBanner) return null;

  const isOfflineBanner = bannerType === 'offline';

  return (
    <div
      className={`fixed top-16 left-1/2 -translate-x-1/2 z-[9998] flex items-center gap-2 px-4 py-2.5 text-white text-sm font-semibold rounded-full shadow-lg pointer-events-none select-none ${
        isOfflineBanner ? 'bg-slate-800' : 'bg-green-600'
      }`}
      style={{ animation: 'floatUp 0.35s cubic-bezier(0.16, 1, 0.3, 1) both' }}
      role="status"
      aria-live="polite"
    >
      {isOfflineBanner ? (
        <>
          <WifiOff size={15} className="flex-shrink-0" />
          <span>No internet connection</span>
        </>
      ) : (
        <>
          <Wifi size={15} className="flex-shrink-0" />
          <span>Back online</span>
        </>
      )}
    </div>
  );
}
