import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { createHash } from 'crypto';
import { readFileSync, writeFileSync, readdirSync } from 'fs';
import { resolve } from 'path';
import type { Plugin } from 'vite';

function swVersionPlugin(): Plugin {
  return {
    name: 'sw-version',
    apply: 'build',
    closeBundle() {
      const outDir = resolve(__dirname, 'dist');
      const swPath = resolve(outDir, 'sw.js');
      const indexPath = resolve(outDir, 'index.html');
      try {
        const indexContent = readFileSync(indexPath, 'utf-8');
        const hash = createHash('sha256').update(indexContent).digest('hex').slice(0, 8);

        const assetsDir = resolve(outDir, 'assets');
        const allAssets = readdirSync(assetsDir);

        const criticalChunkPatterns = [
          /^vendor-/,
          /^app-shell-/,
          /^app-core-/,
          /^app-auth-/,
          /^supabase-/,
          /^icons-/,
          /^index-/,
        ];

        const precacheAssets = allAssets
          .filter(name =>
            criticalChunkPatterns.some(p => p.test(name)) &&
            (name.endsWith('.js') || name.endsWith('.css'))
          )
          .map(name => `/assets/${name}`);

        let sw = readFileSync(swPath, 'utf-8');
        sw = sw.replace(/const CACHE_VERSION = '[^']*'/, `const CACHE_VERSION = '${hash}'`);

        const precacheList = JSON.stringify([
          '/',
          '/index.html',
          '/manifest.json',
          '/icons/icon.svg',
          '/.well-known/assetlinks.json',
          ...precacheAssets,
        ], null, 2);

        sw = sw.replace(
          /const STATIC_ASSETS = \[[\s\S]*?\];/,
          `const STATIC_ASSETS = ${precacheList};`
        );

        writeFileSync(swPath, sw);
      } catch {
      }
    },
  };
}

export default defineConfig({
  plugins: [react(), swVersionPlugin()],
  optimizeDeps: {
    include: ['react', 'react-dom', '@supabase/supabase-js', 'lucide-react'],
  },
  build: {
    target: 'es2020',
    minify: 'esbuild',
    cssMinify: true,
    cssCodeSplit: true,
    reportCompressedSize: false,
    chunkSizeWarningLimit: 600,
    rollupOptions: {
      output: {
        manualChunks(id) {
          if (id.includes('node_modules/react') || id.includes('node_modules/react-dom')) {
            return 'vendor';
          }
          if (id.includes('@supabase')) {
            return 'supabase';
          }
          if (id.includes('lucide-react')) {
            return 'icons';
          }
          if (
            id.includes('components/hub/') ||
            id.includes('components/exam/') ||
            id.includes('components/quiz/') ||
            id.includes('components/leaderboard/') ||
            id.includes('components/profile/') ||
            id.includes('components/notifications/')
          ) {
            return 'app-heavy';
          }
          if (
            id.includes('components/dashboard/') ||
            id.includes('components/subjects/')
          ) {
            return 'app-core';
          }
          if (
            id.includes('components/pages/') ||
            id.includes('components/auth/')
          ) {
            return 'app-auth';
          }
          if (
            id.includes('components/landing/') ||
            id.includes('components/layout/') ||
            id.includes('components/ads/') ||
            id.includes('components/pwa/') ||
            id.includes('components/ui/') ||
            id.includes('components/subscription/') ||
            id.includes('components/trial/')
          ) {
            return 'app-shell';
          }
        },
        compact: true,
      },
    },
  },
  preview: {
    headers: {
      'Cache-Control': 'public, max-age=31536000, immutable',
    },
  },
  server: {
    historyApiFallback: true,
  },
});
