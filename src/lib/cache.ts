interface CacheEntry<T> {
  data: T;
  timestamp: number;
}

const STORAGE_PREFIX = 'wc_';
const CACHE_VERSION = '4';
const store = new Map<string, CacheEntry<unknown>>();

(function bustOldCache() {
  try {
    const storedVersion = localStorage.getItem(STORAGE_PREFIX + '__version');
    if (storedVersion !== CACHE_VERSION) {
      for (let i = localStorage.length - 1; i >= 0; i--) {
        const k = localStorage.key(i);
        if (k && k.startsWith(STORAGE_PREFIX)) localStorage.removeItem(k);
      }
      localStorage.setItem(STORAGE_PREFIX + '__version', CACHE_VERSION);
    }
  } catch {}
})();

export const TTL = {
  short: 30_000,
  medium: 2 * 60_000,
  long: 10 * 60_000,
};

function lsKey(key: string): string {
  return STORAGE_PREFIX + key;
}

function lsGet<T>(key: string): CacheEntry<T> | null {
  try {
    const raw = localStorage.getItem(lsKey(key));
    if (!raw) return null;
    return JSON.parse(raw) as CacheEntry<T>;
  } catch {
    return null;
  }
}

function lsSet<T>(key: string, entry: CacheEntry<T>): void {
  try {
    localStorage.setItem(lsKey(key), JSON.stringify(entry));
  } catch {
  }
}

export function cacheGet<T>(key: string, maxAge: number = TTL.medium): T | null {
  let entry = store.get(key) as CacheEntry<T> | undefined;
  if (!entry) {
    const persisted = lsGet<T>(key);
    if (persisted) {
      store.set(key, persisted);
      entry = persisted;
    }
  }
  if (!entry) return null;
  if (Date.now() - entry.timestamp > maxAge) {
    store.delete(key);
    return null;
  }
  return entry.data;
}

export function cacheSet<T>(key: string, data: T): void {
  const entry: CacheEntry<T> = { data, timestamp: Date.now() };
  store.set(key, entry);
  lsSet(key, entry);
}

export function cacheInvalidate(prefix: string): void {
  for (const key of store.keys()) {
    if (key.startsWith(prefix)) store.delete(key);
  }
  try {
    for (let i = localStorage.length - 1; i >= 0; i--) {
      const k = localStorage.key(i);
      if (k && k.startsWith(STORAGE_PREFIX + prefix)) {
        localStorage.removeItem(k);
      }
    }
  } catch {}
}

export function cacheGetStale<T>(key: string): T | null {
  let entry = store.get(key) as CacheEntry<T> | undefined;
  if (!entry) {
    const persisted = lsGet<T>(key);
    if (persisted) {
      store.set(key, persisted);
      entry = persisted;
    }
  }
  return entry ? entry.data : null;
}
