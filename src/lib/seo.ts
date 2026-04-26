export interface SEOMeta {
  title: string;
  description: string;
  keywords?: string;
  canonical?: string;
  ogTitle?: string;
  ogDescription?: string;
  ogImage?: string;
  noindex?: boolean;
  structuredData?: object | object[];
}

const BASE_URL = 'https://wasscescience.com';
const DEFAULT_IMAGE = `${BASE_URL}/favicon-64x64.png`;

export function updateMetaTags(meta: SEOMeta): void {
  document.title = meta.title;

  setMeta('name', 'description', meta.description);
  if (meta.keywords) setMeta('name', 'keywords', meta.keywords);
  setMeta('name', 'robots', meta.noindex ? 'noindex, nofollow' : 'index, follow');

  const canonical = document.getElementById('canonical-tag') as HTMLLinkElement | null;
  if (canonical && meta.canonical) {
    canonical.href = meta.canonical;
  }

  setMeta('property', 'og:title', meta.ogTitle || meta.title);
  setMeta('property', 'og:description', meta.ogDescription || meta.description);
  setMeta('property', 'og:image', meta.ogImage || DEFAULT_IMAGE);
  setMeta('property', 'og:url', meta.canonical || BASE_URL);

  setMeta('name', 'twitter:title', meta.ogTitle || meta.title);
  setMeta('name', 'twitter:description', meta.ogDescription || meta.description);
  setMeta('name', 'twitter:image', meta.ogImage || DEFAULT_IMAGE);

  updateStructuredData(meta.structuredData);
}

function setMeta(attr: 'name' | 'property', key: string, value: string): void {
  let el = document.querySelector(`meta[${attr}="${key}"]`) as HTMLMetaElement | null;
  if (!el) {
    el = document.createElement('meta');
    el.setAttribute(attr, key);
    document.head.appendChild(el);
  }
  el.content = value;
}

function updateStructuredData(data?: object | object[]): void {
  const existing = document.querySelectorAll('script[type="application/ld+json"][data-dynamic]');
  existing.forEach(el => el.remove());

  if (!data) return;

  const items = Array.isArray(data) ? data : [data];
  items.forEach(item => {
    const script = document.createElement('script');
    script.type = 'application/ld+json';
    script.setAttribute('data-dynamic', 'true');
    script.textContent = JSON.stringify(item);
    document.head.appendChild(script);
  });
}

export const SUBJECT_SEO: Record<string, SEOMeta> = {
  mathematics: {
    title: 'WASSCE Mathematics Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Mathematics study notes, topic quizzes, past questions with answers, and exam tips. Master Algebra, Calculus, Statistics and more for WAEC 2026.',
    keywords: 'WASSCE Mathematics notes 2026, WAEC Maths past questions, WASSCE Maths quiz, WAEC Mathematics PDF free',
    canonical: `${BASE_URL}/subject/mathematics`,
  },
  'english-language': {
    title: 'WASSCE English Language Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE English Language notes, comprehension quizzes, essay writing tips and past questions with answers. Ace your WAEC English 2026 exam.',
    keywords: 'WASSCE English notes 2026, WAEC English past questions, WASSCE English comprehension quiz, WAEC English PDF free',
    canonical: `${BASE_URL}/subject/english-language`,
  },
  physics: {
    title: 'WASSCE Physics Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Physics study notes, topic-by-topic quizzes and past questions with full solutions. Master Mechanics, Electricity, Waves and more for WAEC 2026.',
    keywords: 'WASSCE Physics notes 2026, WAEC Physics past questions, WASSCE Physics quiz, WAEC Physics PDF free',
    canonical: `${BASE_URL}/subject/physics`,
  },
  chemistry: {
    title: 'WASSCE Chemistry Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Chemistry study notes covering Organic, Inorganic and Physical Chemistry. Practice with quizzes and past questions with answers for WAEC 2026.',
    keywords: 'WASSCE Chemistry notes 2026, WAEC Chemistry past questions, WASSCE Chemistry quiz, WAEC Chemistry PDF free',
    canonical: `${BASE_URL}/subject/chemistry`,
  },
  biology: {
    title: 'WASSCE Biology Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Biology study notes, topic quizzes and past questions with answers. Cover Cell Biology, Genetics, Ecology and all WAEC Biology topics for 2026.',
    keywords: 'WASSCE Biology notes 2026, WAEC Biology past questions, WASSCE Biology quiz, WAEC Biology PDF free',
    canonical: `${BASE_URL}/subject/biology`,
  },
  geography: {
    title: 'WASSCE Geography Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Geography study notes, quizzes and past questions with answers. Master Physical, Human and Regional Geography for WAEC 2026.',
    keywords: 'WASSCE Geography notes 2026, WAEC Geography past questions, WASSCE Geography quiz, WAEC Geography PDF free',
    canonical: `${BASE_URL}/subject/geography`,
  },
  'further-mathematics': {
    title: 'WASSCE Further Mathematics Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Further Mathematics notes, practice quizzes and past questions with worked solutions. Master Calculus, Matrices, Complex Numbers for WAEC 2026.',
    keywords: 'WASSCE Further Maths notes 2026, WAEC Further Mathematics past questions, WASSCE Further Maths quiz',
    canonical: `${BASE_URL}/subject/further-mathematics`,
  },
  'agricultural-science': {
    title: 'WASSCE Agricultural Science Notes, Quizzes & Past Questions 2026 — WASSCEScience',
    description: 'Free WASSCE Agricultural Science study notes, quizzes and past questions with answers. Cover Crop Production, Animal Husbandry and Soil Science for WAEC 2026.',
    keywords: 'WASSCE Agricultural Science notes 2026, WAEC Agric Science past questions, WASSCE Agric quiz',
    canonical: `${BASE_URL}/subject/agricultural-science`,
  },
};

export function getSubjectSEO(subjectName: string, subjectId: string): SEOMeta {
  const slug = subjectId;
  if (SUBJECT_SEO[slug]) return SUBJECT_SEO[slug];

  const name = subjectName || 'Subject';
  return {
    title: `WASSCE ${name} Notes, Quizzes & Past Questions 2026 — WASSCEScience`,
    description: `Free WASSCE ${name} study notes, quizzes and past questions with answers. Prepare for WAEC 2026 with comprehensive ${name} resources.`,
    keywords: `WASSCE ${name} notes 2026, WAEC ${name} past questions, WASSCE ${name} quiz`,
    canonical: `${BASE_URL}/subject/${slug}`,
  };
}

export function getTopicSEO(topicName: string, subjectName: string, topicId: string): SEOMeta {
  return {
    title: `${topicName} — WASSCE ${subjectName} Notes 2026 | WASSCEScience`,
    description: `Free WASSCE ${subjectName} notes on ${topicName}. Clear explanations, key formulas, examples and practice questions. Study for WAEC 2026 exam.`,
    keywords: `WASSCE ${subjectName} ${topicName} notes, WAEC ${subjectName} ${topicName}, ${topicName} WASSCE 2026`,
    canonical: `${BASE_URL}/topic/${topicId}`,
    structuredData: {
      '@context': 'https://schema.org',
      '@type': 'Article',
      headline: `${topicName} — WASSCE ${subjectName} Notes`,
      description: `Study notes for ${topicName} in WASSCE ${subjectName}`,
      author: { '@type': 'Organization', name: 'WASSCEScience' },
      publisher: { '@type': 'Organization', name: 'WASSCEScience', url: BASE_URL },
      educationalLevel: 'Secondary School',
      learningResourceType: 'Study Notes',
      inLanguage: 'en',
    },
  };
}

export function getQuizSEO(topicName: string, subjectName: string, topicId: string): SEOMeta {
  return {
    title: `WASSCE ${subjectName} ${topicName} Quiz 2026 with Answers | WASSCEScience`,
    description: `Practice WASSCE ${subjectName} ${topicName} quiz with multiple-choice questions and detailed answer explanations. Test your knowledge for WAEC 2026.`,
    keywords: `WASSCE ${subjectName} ${topicName} quiz 2026, WAEC ${subjectName} ${topicName} questions, ${subjectName} ${topicName} answers`,
    canonical: `${BASE_URL}/quiz/${topicId}`,
    noindex: false,
    structuredData: {
      '@context': 'https://schema.org',
      '@type': 'Quiz',
      name: `WASSCE ${subjectName} ${topicName} Quiz`,
      description: `Multiple choice quiz on ${topicName} for WASSCE ${subjectName}`,
      educationalLevel: 'Secondary School',
      about: { '@type': 'Thing', name: topicName },
    },
  };
}

export const PAGE_SEO: Record<string, SEOMeta> = {
  home: {
    title: 'WASSCEScience — Free WASSCE Exam Prep Platform 2026 | Notes, Quizzes & Past Questions',
    description: 'The most complete free WASSCE preparation platform. Study notes, quizzes, timed exams and past questions for all 11 WASSCE subjects. Trusted by 10,000+ West African students.',
    keywords: 'WASSCE exam prep 2026, WAEC past questions free, WASSCE notes free, WAEC quiz Ghana Nigeria',
    canonical: BASE_URL,
    structuredData: [
      {
        '@context': 'https://schema.org',
        '@type': 'WebSite',
        name: 'WASSCEScience',
        url: BASE_URL,
        potentialAction: {
          '@type': 'SearchAction',
          target: `${BASE_URL}/subjects?q={search_term_string}`,
          'query-input': 'required name=search_term_string',
        },
      },
      {
        '@context': 'https://schema.org',
        '@type': 'EducationalOrganization',
        name: 'WASSCEScience',
        url: BASE_URL,
        description: 'Free WASSCE exam preparation platform for West African students',
        courseMode: 'online',
        offers: { '@type': 'Offer', price: '0', priceCurrency: 'USD' },
      },
    ],
  },
  subjects: {
    title: 'WASSCE Subjects 2026 — All Study Notes, Quizzes & Past Questions | WASSCEScience',
    description: 'Browse all WASSCE subjects: Mathematics, Physics, Chemistry, Biology, English, Geography and more. Free notes, quizzes and past questions for every subject.',
    keywords: 'WASSCE subjects 2026, WAEC subjects Ghana Nigeria, WASSCE study materials all subjects, WAEC notes free',
    canonical: `${BASE_URL}/subjects`,
  },
  about: {
    title: 'About WASSCEScience — Free WASSCE Exam Prep for West African Students',
    description: 'Learn about WASSCEScience, the free platform helping West African students excel in their WASSCE exams with comprehensive notes, quizzes and past questions.',
    canonical: `${BASE_URL}/about`,
  },
  faq: {
    title: 'FAQs — WASSCE Exam Preparation Questions Answered | WASSCEScience',
    description: 'Frequently asked questions about WASSCE exam preparation, how to study for WAEC, free resources, quiz formats and platform features.',
    keywords: 'WASSCE exam FAQ, WAEC preparation questions, how to pass WASSCE 2026',
    canonical: `${BASE_URL}/faq`,
  },
  contact: {
    title: 'Contact WASSCEScience — Get Help with WASSCE Exam Prep',
    description: 'Contact the WASSCEScience team for help with WASSCE exam preparation, platform issues or feedback. We support students across West Africa.',
    canonical: `${BASE_URL}/contact`,
  },
  'past-questions': {
    title: 'WASSCE Past Questions 2024 2023 2022 with Answers — Free Download | WASSCEScience',
    description: 'Free WASSCE past questions for all subjects from 2018 to 2024 with full answers and step-by-step solutions. Prepare for WAEC 2026 with real past papers.',
    keywords: 'WASSCE past questions 2024, WAEC past questions free download, WASSCE past papers with answers, WAEC 2023 past questions solutions',
    canonical: `${BASE_URL}/past-questions`,
  },
  'exam-tips': {
    title: 'WASSCE Exam Tips & Study Strategies 2026 — How to Pass WAEC | WASSCEScience',
    description: 'Expert WASSCE exam tips and study strategies for all subjects. Learn how to pass WAEC 2026 with effective revision techniques, time management and exam tactics.',
    keywords: 'WASSCE exam tips 2026, how to pass WAEC 2026, WASSCE study strategy, WAEC exam preparation tips',
    canonical: `${BASE_URL}/exam-tips`,
  },
  glossary: {
    title: 'WASSCE Science Glossary — Key Terms & Definitions 2026 | WASSCEScience',
    description: 'Comprehensive glossary of key terms and definitions for WASSCE Biology, Chemistry, Physics, Mathematics and other science subjects. Essential vocabulary for WAEC 2026.',
    keywords: 'WASSCE science glossary, WAEC key terms definitions, WASSCE Biology Chemistry Physics vocabulary',
    canonical: `${BASE_URL}/glossary`,
  },
  'likely-questions': {
    title: 'Top 50 Likely WASSCE Questions 2026 — Predicted WAEC Topics | WASSCEScience',
    description: 'Most likely WASSCE exam questions for 2026 based on past trends. High-yield topics and predicted questions for Biology, Chemistry, Physics, Maths and more.',
    keywords: 'likely WASSCE questions 2026, WAEC 2026 predicted questions, WASSCE 2026 hot topics, likely WAEC questions Ghana Nigeria',
    canonical: `${BASE_URL}/likely-questions`,
  },
};
