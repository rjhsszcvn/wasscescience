import { QuizQuestion } from './types';

export interface ShuffledQuestion {
  original: QuizQuestion;
  shuffledOptions: string[];
  correctShuffledIndex: number;
}

export function shuffleArray<T>(arr: T[]): T[] {
  const copy = [...arr];
  for (let i = copy.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
}

export function shuffleQuestionOptions(question: QuizQuestion): ShuffledQuestion {
  const originalOptions = question.options;
  const correctOptionText = originalOptions[question.correct_answer];

  const shuffled = shuffleArray([...originalOptions]);
  const correctShuffledIndex = shuffled.indexOf(correctOptionText);

  return {
    original: question,
    shuffledOptions: shuffled,
    correctShuffledIndex,
  };
}

export function shuffleAndPickQuestions(
  questions: QuizQuestion[],
  seenIds: Set<string>,
  count: number
): ShuffledQuestion[] {
  const unseen = questions.filter(q => !seenIds.has(q.id));
  const seen = questions.filter(q => seenIds.has(q.id));

  let pool = shuffleArray(unseen);

  if (pool.length < count) {
    pool = [...pool, ...shuffleArray(seen)];
  }

  const selected = pool.slice(0, count);
  return selected.map(shuffleQuestionOptions);
}

export const OPTION_LABELS = ['A', 'B', 'C', 'D'];

export function formatTime(seconds: number): string {
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
}
