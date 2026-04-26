/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    screens: {
      xs: '375px',
      sm: '640px',
      md: '768px',
      lg: '1024px',
      xl: '1280px',
      '2xl': '1536px',
    },
    extend: {
      spacing: {
        safe: 'env(safe-area-inset-bottom, 0px)',
      },
      height: {
        'dvh': '100dvh',
        'svh': '100svh',
      },
      minHeight: {
        'dvh': '100dvh',
      },
      maxWidth: {
        'content': '72rem',
      },
      fontSize: {
        'fluid-sm': 'clamp(0.75rem, 2vw, 0.875rem)',
        'fluid-base': 'clamp(0.875rem, 2.5vw, 1rem)',
        'fluid-lg': 'clamp(1rem, 3vw, 1.125rem)',
        'fluid-xl': 'clamp(1.125rem, 3.5vw, 1.25rem)',
        'fluid-2xl': 'clamp(1.25rem, 4vw, 1.5rem)',
        'fluid-3xl': 'clamp(1.5rem, 5vw, 1.875rem)',
        'fluid-4xl': 'clamp(1.875rem, 6vw, 2.25rem)',
        'fluid-5xl': 'clamp(2.25rem, 7vw, 3rem)',
        'fluid-6xl': 'clamp(2.5rem, 8vw, 3.75rem)',
        'fluid-7xl': 'clamp(3rem, 10vw, 4.5rem)',
      },
      transitionTimingFunction: {
        'spring': 'cubic-bezier(0.34, 1.56, 0.64, 1)',
        'out-expo': 'cubic-bezier(0.16, 1, 0.3, 1)',
      },
      boxShadow: {
        'premium': '0 4px 6px -1px rgba(0,0,0,0.07), 0 2px 4px -2px rgba(0,0,0,0.05)',
        'premium-md': '0 10px 15px -3px rgba(0,0,0,0.08), 0 4px 6px -4px rgba(0,0,0,0.04)',
        'premium-lg': '0 20px 25px -5px rgba(0,0,0,0.09), 0 8px 10px -6px rgba(0,0,0,0.04)',
        'premium-xl': '0 25px 50px -12px rgba(0,0,0,0.18)',
      },
      borderRadius: {
        '4xl': '2rem',
        '5xl': '2.5rem',
      },
    },
  },
  plugins: [],
};
