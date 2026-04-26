import { useState } from 'react';
import { Download, Smartphone, X, Share, CheckCircle, Monitor, Chrome } from 'lucide-react';
import { usePWAInstall } from '../../hooks/usePWAInstall';

interface InstallButtonProps {
  variant?: 'hero' | 'header' | 'sticky' | 'sidebar' | 'footer';
  className?: string;
}

export function InstallButton({ variant = 'hero', className = '' }: InstallButtonProps) {
  const { canInstall, isInstalled, isIOS, isAndroid, install } = usePWAInstall();
  const [showGuide, setShowGuide] = useState(false);
  const [showSuccess, setShowSuccess] = useState(false);
  const [installing, setInstalling] = useState(false);
  const [installed, setInstalled] = useState(false);

  if (isInstalled || installed || !canInstall) return null;

  const platform: 'ios' | 'android' | 'desktop' = isIOS ? 'ios' : isAndroid ? 'android' : 'desktop';

  const handleInstall = async () => {
    setInstalling(true);
    const result = await install();
    setInstalling(false);
    if (result === 'installed') {
      setInstalled(true);
      setShowSuccess(true);
    } else if (result === 'guide') {
      setShowGuide(true);
    }
  };

  const overlays = (
    <>
      {showGuide && <InstallGuideModal platform={platform} onClose={() => setShowGuide(false)} />}
      {showSuccess && <InstallSuccessModal onClose={() => setShowSuccess(false)} />}
    </>
  );

  if (variant === 'header') {
    return (
      <>
        <button
          onClick={handleInstall}
          disabled={installing}
          className={`hidden sm:flex items-center gap-1.5 px-3 py-2 text-white text-xs font-bold rounded-xl transition-all active:scale-95 disabled:opacity-60 ${className}`}
          style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 2px 8px rgba(37,99,235,0.3)' }}
        >
          {installing ? (
            <span className="w-3.5 h-3.5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          ) : (
            <Download size={13} />
          )}
          {installing ? 'Installing...' : 'Install App'}
        </button>
        {overlays}
      </>
    );
  }

  if (variant === 'sidebar') {
    return (
      <>
        <button
          onClick={handleInstall}
          disabled={installing}
          className={`w-full flex items-center gap-2.5 px-3.5 py-3 text-white text-sm font-bold rounded-xl transition-all active:scale-[0.98] disabled:opacity-60 ${className}`}
          style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.3)' }}
        >
          {installing ? (
            <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          ) : (
            <Download size={16} className="flex-shrink-0" />
          )}
          <span className="flex-1 text-left">{installing ? 'Installing...' : 'Install App'}</span>
          <span className="text-blue-200 text-xs font-semibold bg-blue-900/40 px-1.5 py-0.5 rounded-full">Free</span>
        </button>
        {overlays}
      </>
    );
  }

  if (variant === 'footer') {
    return (
      <>
        <button
          onClick={handleInstall}
          disabled={installing}
          className={`inline-flex items-center gap-2 px-5 py-2.5 text-white text-sm font-bold rounded-xl transition-all active:scale-[0.98] disabled:opacity-60 ${className}`}
          style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 14px rgba(37,99,235,0.3)' }}
        >
          {installing ? (
            <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          ) : (
            <Download size={15} />
          )}
          {installing ? 'Installing...' : 'Install App'}
          <span className="text-blue-200 text-xs font-semibold ml-0.5">Free</span>
        </button>
        {overlays}
      </>
    );
  }

  if (variant === 'sticky') {
    return (
      <>
        <div className="fixed bottom-0 left-0 right-0 z-50 pb-safe">
          <div className="mx-4 mb-4 overflow-hidden rounded-2xl shadow-2xl shadow-black/50" style={{ background: 'linear-gradient(135deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }}>
            <div className="flex items-center gap-3 p-4">
              <div className="w-11 h-11 rounded-xl flex items-center justify-center flex-shrink-0 shadow-lg" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 14px rgba(37,99,235,0.4)' }}>
                <Smartphone size={20} className="text-white" />
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-white font-black text-sm leading-tight">Install WASCCEScience</p>
                <p className="text-slate-400 text-xs mt-0.5 leading-tight">Study offline · Faster · App-like</p>
              </div>
              <button
                onClick={handleInstall}
                disabled={installing}
                className="flex-shrink-0 flex items-center gap-1.5 px-4 py-2.5 text-white text-sm font-bold rounded-xl transition-all active:scale-95 disabled:opacity-60"
                style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 12px rgba(37,99,235,0.35)' }}
              >
                {installing ? (
                  <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                ) : (
                  <Download size={14} />
                )}
                {installing ? '...' : 'Install'}
              </button>
            </div>
          </div>
        </div>
        {overlays}
      </>
    );
  }

  return (
    <>
      <HeroInstallButton onClick={handleInstall} installing={installing} platform={platform} className={className} />
      {overlays}
    </>
  );
}

function HeroInstallButton({
  onClick,
  installing,
  platform,
  className = '',
}: {
  onClick: () => void;
  installing: boolean;
  platform: 'ios' | 'android' | 'desktop';
  className?: string;
}) {
  const label = platform === 'ios' ? 'Add to Home Screen' : platform === 'android' ? 'Install on Android' : 'Install App';
  const sub = platform === 'ios' ? 'iPhone & iPad' : platform === 'android' ? 'No app store needed' : 'Works on all devices';

  return (
    <button
      onClick={onClick}
      disabled={installing}
      className={`group relative flex items-center gap-3 px-7 py-4 text-white font-black text-base rounded-2xl transition-all hover:-translate-y-1 active:scale-[0.98] overflow-hidden disabled:opacity-70 ${className}`}
      style={{
        background: 'linear-gradient(135deg, #1a56db 0%, #1e40af 60%, #1a56db 100%)',
        backgroundSize: '200% 100%',
        boxShadow: '0 8px 32px rgba(37,99,235,0.45), 0 0 0 1px rgba(255,255,255,0.1)',
      }}
    >
      <span className="absolute inset-0 rounded-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-300" style={{ background: 'linear-gradient(135deg, rgba(255,255,255,0.08) 0%, transparent 100%)' }} />
      <div className="relative flex items-center gap-3">
        <div className="flex items-center justify-center w-8 h-8 rounded-xl bg-white/15 flex-shrink-0">
          {installing ? (
            <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          ) : (
            <Smartphone size={18} className="text-white" />
          )}
        </div>
        <div className="flex flex-col items-start">
          <span className="text-[10px] font-semibold text-blue-200 uppercase tracking-widest leading-none mb-0.5">{sub}</span>
          <span className="text-base font-black leading-none">{installing ? 'Installing...' : label}</span>
        </div>
        {!installing && (
          <Download size={16} className="ml-1 group-hover:translate-y-0.5 transition-transform text-blue-200" />
        )}
      </div>
    </button>
  );
}

function InstallSuccessModal({ onClose }: { onClose: () => void }) {
  return (
    <div
      className="fixed inset-0 z-[60] flex items-center justify-center p-4"
      style={{ background: 'rgba(0,0,0,0.75)', backdropFilter: 'blur(6px)' }}
      onClick={onClose}
    >
      <div
        className="w-full max-w-sm overflow-hidden rounded-3xl shadow-2xl text-center"
        style={{ background: 'linear-gradient(160deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }}
        onClick={(e) => e.stopPropagation()}
      >
        <div className="px-6 pt-8 pb-6">
          <div className="w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-5 shadow-xl" style={{ background: 'linear-gradient(135deg, #16a34a, #15803d)', boxShadow: '0 8px 32px rgba(22,163,74,0.4)' }}>
            <CheckCircle size={38} className="text-white" />
          </div>
          <h2 className="text-white font-black text-xl leading-tight mb-2">App Installed!</h2>
          <p className="text-slate-400 text-sm leading-relaxed mb-6">
            WASSCEScience has been added to your device. You can now open it from your home screen or app drawer and study offline.
          </p>
          <button
            onClick={onClose}
            className="w-full px-4 py-3 rounded-xl text-white font-black text-sm transition-all active:scale-[0.98]"
            style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.3)' }}
          >
            Got it
          </button>
        </div>
      </div>
    </div>
  );
}

function InstallGuideModal({ platform, onClose }: { platform: 'ios' | 'android' | 'desktop'; onClose: () => void }) {
  const config = {
    ios: {
      icon: Smartphone,
      title: 'Install on iPhone / iPad',
      subtitle: 'Add to your Home Screen in seconds',
      steps: [
        { icon: Share, text: 'Open this page in Safari, then tap the Share button at the bottom' },
        { icon: null, text: 'Scroll down and tap "Add to Home Screen"' },
        { icon: CheckCircle, text: 'Tap "Add" in the top-right corner — done!' },
      ],
      note: 'Works best in Safari. The app will appear on your home screen like any native app.',
      cta: 'Got it',
    },
    android: {
      icon: Smartphone,
      title: 'Install on Android',
      subtitle: 'Add to your home screen in seconds',
      steps: [
        { icon: Chrome, text: 'Tap the three-dot menu ( \u22ee ) at the top-right of Chrome' },
        { icon: null, text: 'Tap "Add to Home screen" or "Install app"' },
        { icon: CheckCircle, text: 'Tap "Install" — done! The app appears on your home screen.' },
      ],
      note: 'No app store needed. Works offline and loads instantly.',
      cta: 'Got it',
    },
    desktop: {
      icon: Monitor,
      title: 'Install on Your Computer',
      subtitle: 'Install directly from your browser',
      steps: [
        { icon: Chrome, text: 'Look for the install icon (\u2295 or a download arrow) in the right side of your address bar' },
        { icon: null, text: 'Click it, then click "Install" in the popup' },
        { icon: CheckCircle, text: 'WASSCEScience opens as a standalone app instantly!' },
      ],
      note: 'Supported in Chrome and Edge. Firefox does not support PWA install.',
      cta: 'Got it',
    },
  }[platform];

  const HeaderIcon = config.icon;

  return (
    <div
      className="fixed inset-0 z-[60] flex items-end sm:items-center justify-center p-4"
      style={{ background: 'rgba(0,0,0,0.75)', backdropFilter: 'blur(6px)' }}
      onClick={onClose}
    >
      <div
        className="w-full max-w-sm overflow-hidden rounded-3xl shadow-2xl"
        style={{ background: 'linear-gradient(160deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }}
        onClick={(e) => e.stopPropagation()}
      >
        <div className="relative px-5 pt-5 pb-4 border-b border-white/[0.06]">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl flex items-center justify-center flex-shrink-0 shadow-lg" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 6px 20px rgba(37,99,235,0.4)' }}>
              <HeaderIcon size={22} className="text-white" />
            </div>
            <div>
              <p className="text-white font-black text-base leading-tight">{config.title}</p>
              <p className="text-slate-400 text-xs mt-0.5">{config.subtitle}</p>
            </div>
          </div>
          <button onClick={onClose} className="absolute top-4 right-4 p-2 rounded-xl text-slate-500 hover:text-white hover:bg-white/10 transition-all">
            <X size={16} />
          </button>
        </div>

        <div className="px-5 py-5 space-y-3.5">
          {config.steps.map(({ icon: Icon, text }, i) => (
            <div key={i} className="flex items-start gap-3">
              <div className="w-7 h-7 rounded-full flex items-center justify-center flex-shrink-0 mt-0.5 text-blue-400" style={{ background: 'rgba(37,99,235,0.15)', border: '1px solid rgba(37,99,235,0.3)' }}>
                {Icon ? <Icon size={13} /> : <span className="text-xs font-black text-blue-400">{i + 1}</span>}
              </div>
              <p className="text-slate-300 text-sm leading-relaxed">{text}</p>
            </div>
          ))}

          <div className="mt-1 px-3.5 py-3 rounded-xl text-slate-400 text-xs leading-relaxed" style={{ background: 'rgba(255,255,255,0.03)', border: '1px solid rgba(255,255,255,0.05)' }}>
            {config.note}
          </div>

          <button
            onClick={onClose}
            className="w-full mt-1 px-4 py-3 rounded-xl text-white font-black text-sm transition-all active:scale-[0.98]"
            style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 16px rgba(37,99,235,0.3)' }}
          >
            {config.cta}
          </button>
        </div>
      </div>
    </div>
  );
}

export function StickyInstallBanner() {
  const { canInstall, isInstalled, install, isIOS, isAndroid } = usePWAInstall();
  const [dismissed, setDismissed] = useState(() => {
    try {
      return localStorage.getItem('pwa-banner-dismissed') === 'true';
    } catch {
      return false;
    }
  });
  const [showGuide, setShowGuide] = useState(false);
  const [showSuccess, setShowSuccess] = useState(false);
  const [installing, setInstalling] = useState(false);
  const [installed, setInstalled] = useState(false);

  if (!canInstall || isInstalled || installed || dismissed) return null;

  const platform: 'ios' | 'android' | 'desktop' = isIOS ? 'ios' : isAndroid ? 'android' : 'desktop';

  const handleDismiss = () => {
    try {
      localStorage.setItem('pwa-banner-dismissed', 'true');
    } catch {
      // ignore
    }
    setDismissed(true);
  };

  const handleInstall = async () => {
    setInstalling(true);
    const result = await install();
    setInstalling(false);
    if (result === 'installed') {
      setInstalled(true);
      setShowSuccess(true);
    } else if (result === 'guide') {
      setShowGuide(true);
    }
  };

  return (
    <>
      <div className="fixed bottom-0 left-0 right-0 z-40" style={{ paddingBottom: 'env(safe-area-inset-bottom, 0px)' }}>
        <div className="mx-3 sm:mx-4 mb-3 sm:mb-4">
          <div className="relative overflow-hidden rounded-2xl shadow-2xl shadow-black/50" style={{ background: 'linear-gradient(135deg, #0f172a 0%, #1e293b 100%)', border: '1px solid rgba(255,255,255,0.08)' }}>
            <div className="flex items-center gap-3 p-4 pr-14">
              <div className="w-11 h-11 rounded-xl flex items-center justify-center flex-shrink-0" style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 14px rgba(37,99,235,0.4)' }}>
                <Smartphone size={20} className="text-white" />
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-white font-black text-sm leading-tight">Install WASCCEScience</p>
                <p className="text-slate-400 text-xs mt-0.5 leading-tight">Study offline · Faster · App-like</p>
              </div>
              <button
                onClick={handleInstall}
                disabled={installing}
                className="flex-shrink-0 flex items-center gap-1.5 px-4 py-2.5 text-white text-sm font-bold rounded-xl transition-all active:scale-95 disabled:opacity-60"
                style={{ background: 'linear-gradient(135deg, #2563eb, #1d4ed8)', boxShadow: '0 4px 12px rgba(37,99,235,0.35)' }}
              >
                {installing ? (
                  <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                ) : (
                  <Download size={14} />
                )}
                {installing ? '...' : 'Install'}
              </button>
            </div>
            <button
              onClick={handleDismiss}
              className="absolute top-2 right-2 w-9 h-9 flex items-center justify-center text-slate-500 hover:text-slate-200 hover:bg-white/10 rounded-xl transition-all"
              aria-label="Dismiss install banner"
            >
              <X size={15} />
            </button>
          </div>
        </div>
      </div>
      {showGuide && <InstallGuideModal platform={platform} onClose={() => setShowGuide(false)} />}
      {showSuccess && <InstallSuccessModal onClose={() => setShowSuccess(false)} />}
    </>
  );
}
