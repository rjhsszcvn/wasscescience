import {
  BookOpen, Calculator, FlaskConical, Atom, Leaf, Globe,
  Sigma, Sprout, BookText, Microscope, HeartPulse, Dumbbell,
} from 'lucide-react';
import type { LucideIcon } from 'lucide-react';

export const FREE_SUBJECTS = ['Mathematics', 'English Language'];

export const SUBJECT_COLORS: Record<string, string> = {
  'Mathematics': 'from-blue-500 to-blue-600',
  'English Language': 'from-green-500 to-green-600',
  'Physics': 'from-red-500 to-red-600',
  'Chemistry': 'from-teal-500 to-teal-600',
  'Biology': 'from-emerald-500 to-emerald-600',
  'Geography': 'from-orange-500 to-orange-600',
  'Further Mathematics': 'from-cyan-500 to-cyan-600',
  'Agricultural Science': 'from-lime-500 to-lime-600',
  'Core Science': 'from-sky-500 to-sky-600',
  'Health Science': 'from-rose-500 to-rose-600',
  'Physical Education': 'from-emerald-500 to-teal-600',
};

export const SUBJECT_BAR_COLORS: Record<string, string> = {
  'Mathematics': 'bg-blue-500',
  'English Language': 'bg-green-500',
  'Physics': 'bg-red-500',
  'Chemistry': 'bg-teal-500',
  'Biology': 'bg-emerald-500',
  'Geography': 'bg-orange-500',
  'Further Mathematics': 'bg-cyan-500',
  'Agricultural Science': 'bg-lime-500',
  'Core Science': 'bg-sky-500',
  'Health Science': 'bg-rose-500',
  'Physical Education': 'bg-emerald-500',
};

export const SUBJECT_LIGHT_COLORS: Record<string, string> = {
  'Mathematics': 'bg-blue-50 border-blue-100',
  'English Language': 'bg-green-50 border-green-100',
  'Physics': 'bg-red-50 border-red-100',
  'Chemistry': 'bg-teal-50 border-teal-100',
  'Biology': 'bg-emerald-50 border-emerald-100',
  'Geography': 'bg-orange-50 border-orange-100',
  'Further Mathematics': 'bg-cyan-50 border-cyan-100',
  'Agricultural Science': 'bg-lime-50 border-lime-100',
  'Core Science': 'bg-sky-50 border-sky-100',
  'Health Science': 'bg-rose-50 border-rose-100',
  'Physical Education': 'bg-emerald-50 border-emerald-100',
};

export const SUBJECT_TEXT_COLORS: Record<string, string> = {
  'Mathematics': 'text-blue-600',
  'English Language': 'text-green-600',
  'Physics': 'text-red-600',
  'Chemistry': 'text-teal-600',
  'Biology': 'text-emerald-600',
  'Geography': 'text-orange-600',
  'Further Mathematics': 'text-cyan-600',
  'Agricultural Science': 'text-lime-600',
  'Core Science': 'text-sky-600',
  'Health Science': 'text-rose-600',
  'Physical Education': 'text-emerald-600',
};

export const SUBJECT_ICONS: Record<string, LucideIcon> = {
  'Mathematics': Calculator,
  'English Language': BookText,
  'Physics': Atom,
  'Chemistry': FlaskConical,
  'Biology': Leaf,
  'Geography': Globe,
  'Further Mathematics': Sigma,
  'Agricultural Science': Sprout,
  'Core Science': Microscope,
  'Health Science': HeartPulse,
  'Physical Education': Dumbbell,
};

export function getSubjectIcon(name: string): LucideIcon {
  return SUBJECT_ICONS[name] || BookOpen;
}
