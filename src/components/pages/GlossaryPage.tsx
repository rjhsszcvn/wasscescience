import { useEffect, useState } from 'react';
import { BookOpen, Search, ChevronRight, ArrowLeft, Filter } from 'lucide-react';
import { updateMetaTags, PAGE_SEO } from '../../lib/seo';
import { Page } from '../../lib/types';

interface GlossaryPageProps {
  onNavigate: (page: Page, data?: Record<string, unknown>) => void;
}

interface GlossaryTerm {
  term: string;
  subject: string;
  definition: string;
  example?: string;
}

const TERMS: GlossaryTerm[] = [
  { term: 'Acceleration', subject: 'Physics', definition: 'The rate of change of velocity with respect to time. Measured in m/s².', example: 'A car increasing speed from 0 to 60 km/h in 10 seconds has acceleration of 1.67 m/s².' },
  { term: 'Acid', subject: 'Chemistry', definition: 'A substance that donates protons (H⁺ ions) in solution, has a pH less than 7, and turns litmus paper red.', example: 'Hydrochloric acid (HCl), Sulphuric acid (H₂SO₄), Ethanoic acid (CH₃COOH).' },
  { term: 'Adaptation', subject: 'Biology', definition: 'A feature of an organism that makes it well suited to its environment, increasing its chances of survival and reproduction.', example: 'The cactus has thick waxy skin and shallow wide roots to survive in desert environments.' },
  { term: 'Algebra', subject: 'Mathematics', definition: 'A branch of mathematics dealing with symbols and rules for manipulating those symbols to solve equations.', example: 'Solving 2x + 5 = 13 gives x = 4.' },
  { term: 'Allele', subject: 'Biology', definition: 'One of two or more alternative forms of a gene that arise by mutation and are found at the same place on a chromosome.', example: 'The gene for eye colour has alleles for blue and brown eyes.' },
  { term: 'Amplitude', subject: 'Physics', definition: 'The maximum displacement of a wave from its equilibrium position. Determines the loudness of sound or brightness of light.', example: 'A sound wave with large amplitude produces a loud sound.' },
  { term: 'Atom', subject: 'Chemistry', definition: 'The smallest unit of a chemical element that retains the properties of that element. Consists of protons, neutrons and electrons.' },
  { term: 'Bearings', subject: 'Mathematics', definition: 'A compass direction expressed as an angle measured clockwise from north, written as a three-digit number.', example: 'Due East has a bearing of 090°; Due South has a bearing of 180°.' },
  { term: 'Biomass', subject: 'Biology', definition: 'The total mass of living organisms in a given area or ecosystem, usually expressed in grams or kg per unit area.' },
  { term: 'Catalyst', subject: 'Chemistry', definition: 'A substance that increases the rate of a chemical reaction without being consumed in the reaction.', example: 'Manganese(IV) oxide catalyses the decomposition of hydrogen peroxide.' },
  { term: 'Cell membrane', subject: 'Biology', definition: 'The thin, flexible barrier surrounding all cells that controls what enters and exits the cell. Composed of a phospholipid bilayer.' },
  { term: 'Chlorophyll', subject: 'Biology', definition: 'The green pigment found in plants responsible for absorbing light energy for photosynthesis. Located in chloroplasts.' },
  { term: 'Chord', subject: 'Mathematics', definition: 'A line segment that connects two points on a circle. The longest chord in a circle is the diameter.' },
  { term: 'Climate', subject: 'Geography', definition: 'The average weather conditions of a region over a long period, typically 30 years. Includes temperature, rainfall and humidity.' },
  { term: 'Combustion', subject: 'Chemistry', definition: 'A chemical reaction between a fuel and oxygen that produces heat and light. Can be complete or incomplete.', example: 'CH₄ + 2O₂ → CO₂ + 2H₂O (complete combustion of methane).' },
  { term: 'Condensation', subject: 'Chemistry', definition: 'The change of state from gas to liquid when a gas is cooled to its boiling point. The opposite of evaporation.' },
  { term: 'Conduction', subject: 'Physics', definition: 'The transfer of thermal energy through a material by direct contact, without the bulk movement of the material.' },
  { term: 'Covalent Bond', subject: 'Chemistry', definition: 'A chemical bond formed by the sharing of electron pairs between atoms. Usually forms between non-metal atoms.' },
  { term: 'Decomposer', subject: 'Biology', definition: 'An organism (bacteria or fungi) that breaks down dead organic matter into simpler substances, recycling nutrients in the ecosystem.' },
  { term: 'Density', subject: 'Physics', definition: 'Mass per unit volume of a substance, measured in kg/m³ or g/cm³. Formula: ρ = m/V.', example: 'Water has density 1000 kg/m³; iron has density 7874 kg/m³.' },
  { term: 'Differentiation', subject: 'Mathematics', definition: 'A calculus operation that finds the rate of change (gradient) of a function. The derivative of xⁿ is nxⁿ⁻¹.' },
  { term: 'Diffusion', subject: 'Biology', definition: 'The net movement of particles from an area of high concentration to low concentration along a concentration gradient. Requires no energy.' },
  { term: 'Displacement', subject: 'Physics', definition: 'A vector quantity describing the shortest distance from start to finish of a journey, in a specified direction. Measured in metres.' },
  { term: 'DNA', subject: 'Biology', definition: 'Deoxyribonucleic acid — the molecule that carries genetic information in living organisms. Found in the nucleus, made of nucleotides.' },
  { term: 'Ecosystem', subject: 'Biology', definition: 'A community of living organisms interacting with each other and their physical environment as a system.', example: 'A tropical rainforest, a coral reef, or a freshwater pond.' },
  { term: 'Electrolysis', subject: 'Chemistry', definition: 'The decomposition of a compound by passing an electric current through its molten or dissolved (aqueous) state.' },
  { term: 'Elevation', subject: 'Geography', definition: 'The height of a geographic location above sea level, measured in metres. Affects climate, vegetation and human settlement.' },
  { term: 'Enzyme', subject: 'Biology', definition: 'A biological catalyst made of protein that speeds up chemical reactions in living organisms. Each enzyme is specific to one substrate.' },
  { term: 'Equilibrium', subject: 'Chemistry', definition: 'A state in a reversible reaction where the rate of the forward reaction equals the rate of the reverse reaction.' },
  { term: 'Erosion', subject: 'Geography', definition: 'The wearing away of the Earth\'s surface by water, wind, ice or other agents. Removes rock particles from one location to another.' },
  { term: 'Excretion', subject: 'Biology', definition: 'The removal of metabolic waste products from the body. In humans: kidneys excrete urea, lungs excrete CO₂, skin excretes salts.' },
  { term: 'Fertilisation', subject: 'Biology', definition: 'The fusion of a male gamete (sperm) with a female gamete (egg) to form a zygote, which develops into a new organism.' },
  { term: 'Force', subject: 'Physics', definition: 'A push or pull acting on an object that can change its shape, speed or direction. Measured in Newtons (N). F = ma.' },
  { term: 'Frequency', subject: 'Physics', definition: 'The number of complete waves (cycles) passing a point per second. Measured in Hertz (Hz). f = 1/T.', example: 'Sound at 440 Hz is the musical note A.' },
  { term: 'Gene', subject: 'Biology', definition: 'A sequence of DNA nucleotides that codes for a specific protein or trait. Located at a specific locus on a chromosome.' },
  { term: 'Gradient', subject: 'Mathematics', definition: 'The steepness of a line, calculated as rise divided by run (change in y divided by change in x). Also called slope.' },
  { term: 'Gravity', subject: 'Physics', definition: 'The attractive force between two masses. On Earth\'s surface, g = 10 m/s² (or 9.8 m/s² precisely). F = mg.' },
  { term: 'Hormone', subject: 'Biology', definition: 'A chemical messenger produced by endocrine glands, transported in the blood to target organs where it causes specific effects.' },
  { term: 'Hybridisation', subject: 'Agricultural Science', definition: 'The crossing of two genetically different plants or animals to produce offspring (hybrids) with improved characteristics.' },
  { term: 'Igneous Rock', subject: 'Geography', definition: 'Rock formed from the cooling and solidification of magma or lava. Examples: granite (intrusive), basalt (extrusive).' },
  { term: 'Integration', subject: 'Mathematics', definition: 'A calculus operation that finds the area under a curve or the reverse of differentiation. ∫xⁿ dx = xⁿ⁺¹/(n+1) + C.' },
  { term: 'Ionic Bond', subject: 'Chemistry', definition: 'A chemical bond formed by the transfer of electrons from a metal to a non-metal, creating oppositely charged ions.' },
  { term: 'Isomer', subject: 'Chemistry', definition: 'Compounds with the same molecular formula but different structural arrangements of atoms, giving different properties.' },
  { term: 'Isotope', subject: 'Chemistry', definition: 'Atoms of the same element with the same number of protons but different numbers of neutrons, hence different mass numbers.' },
  { term: 'Kinetic Energy', subject: 'Physics', definition: 'The energy an object possesses due to its motion. KE = ½mv². Measured in Joules.', example: 'A 2 kg ball moving at 3 m/s has KE = ½ × 2 × 9 = 9 J.' },
  { term: 'Latitude', subject: 'Geography', definition: 'Angular distance north or south of the equator, measured in degrees. The equator is 0°, poles are 90° N or S.' },
  { term: 'Locus', subject: 'Mathematics', definition: 'The set of all points satisfying a given condition. A circle is the locus of points equidistant from a centre.' },
  { term: 'Longitude', subject: 'Geography', definition: 'Angular distance east or west of the Prime Meridian (0°), measured in degrees. Ranges from 180°W to 180°E.' },
  { term: 'Meiosis', subject: 'Biology', definition: 'Cell division that produces four genetically different daughter cells (gametes) each with half the chromosome number of the parent cell.' },
  { term: 'Metabolism', subject: 'Biology', definition: 'All the chemical reactions that occur in a living organism. Includes anabolism (building up) and catabolism (breaking down).' },
  { term: 'Mitosis', subject: 'Biology', definition: 'Cell division producing two genetically identical daughter cells, each with the same chromosome number as the parent cell. For growth and repair.' },
  { term: 'Mole', subject: 'Chemistry', definition: 'The amount of substance containing 6.02 × 10²³ (Avogadro\'s number) particles. Molar mass = mass of 1 mole in grams.' },
  { term: 'Momentum', subject: 'Physics', definition: 'The product of mass and velocity. p = mv. A vector quantity measured in kg⋅m/s. Conserved in collisions.' },
  { term: 'Mutation', subject: 'Biology', definition: 'A change in the DNA sequence of an organism. Can be caused by radiation, chemicals or errors during cell division.' },
  { term: 'Newton\'s Laws', subject: 'Physics', definition: 'Three fundamental laws of motion: (1) inertia, (2) F = ma, (3) equal and opposite reactions.' },
  { term: 'Osmosis', subject: 'Biology', definition: 'The movement of water molecules through a semi-permeable membrane from high water potential to low water potential.' },
  { term: 'Oxidation', subject: 'Chemistry', definition: 'Loss of electrons, increase in oxidation number, or addition of oxygen. Remember OIL RIG (Oxidation Is Loss).' },
  { term: 'Periodic Table', subject: 'Chemistry', definition: 'A tabular arrangement of elements ordered by atomic number, showing recurring chemical properties in periods and groups.' },
  { term: 'Photosynthesis', subject: 'Biology', definition: 'The process by which plants use sunlight, water and CO₂ to produce glucose and oxygen. 6CO₂ + 6H₂O → C₆H₁₂O₆ + 6O₂.' },
  { term: 'Polygon', subject: 'Mathematics', definition: 'A closed plane figure with three or more straight sides. Sum of interior angles = (n-2) × 180°.' },
  { term: 'Population', subject: 'Geography', definition: 'The total number of people living in a defined area at a given time. Affected by birth rate, death rate and migration.' },
  { term: 'Power', subject: 'Physics', definition: 'The rate of doing work or transferring energy. P = W/t = Fv. Measured in Watts (W).' },
  { term: 'Pressure', subject: 'Physics', definition: 'Force applied per unit area. P = F/A. Measured in Pascals (Pa) or N/m².', example: 'A 100 N force over 2 m² gives pressure = 50 Pa.' },
  { term: 'Probability', subject: 'Mathematics', definition: 'A measure of how likely an event is to occur, ranging from 0 (impossible) to 1 (certain). P(event) = favourable outcomes / total outcomes.' },
  { term: 'Protein', subject: 'Biology', definition: 'A large biomolecule made of amino acid chains. Functions include enzymes, antibodies, structural proteins and hormones.' },
  { term: 'Quadratic Equation', subject: 'Mathematics', definition: 'An equation in the form ax² + bx + c = 0. Solved by factoring, completing the square, or using the quadratic formula.' },
  { term: 'Radiation', subject: 'Physics', definition: 'The transfer of energy through electromagnetic waves (heat radiation) or emission of particles from unstable nuclei.' },
  { term: 'Reduction', subject: 'Chemistry', definition: 'Gain of electrons, decrease in oxidation number, or removal of oxygen. The opposite of oxidation (OIL RIG).' },
  { term: 'Refraction', subject: 'Physics', definition: 'The bending of light (or other waves) as it passes from one medium to another of different density. Governed by Snell\'s Law.' },
  { term: 'Respiration', subject: 'Biology', definition: 'The release of energy from glucose in living cells. Aerobic: C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + ATP.' },
  { term: 'Resultant Force', subject: 'Physics', definition: 'The single force that has the same effect as all the forces acting on an object combined. Also called net force.' },
  { term: 'Sedimentary Rock', subject: 'Geography', definition: 'Rock formed from compressed layers of sediment. Examples: sandstone, limestone, shale. Often contains fossils.' },
  { term: 'Set Theory', subject: 'Mathematics', definition: 'The branch of mathematics studying collections (sets) of objects. Key operations: union (∪), intersection (∩), complement.' },
  { term: 'Soil Profile', subject: 'Agricultural Science', definition: 'A vertical cross-section of soil showing distinct layers (horizons): O (organic), A (topsoil), B (subsoil), C (parent material).' },
  { term: 'Stomata', subject: 'Biology', definition: 'Tiny pores on the underside of leaves that open and close to control gas exchange (CO₂ in, O₂ and water vapour out).' },
  { term: 'Transpiration', subject: 'Biology', definition: 'The loss of water vapour from plant leaves through stomata. Creates a water potential gradient that pulls water up from roots.' },
  { term: 'Urbanisation', subject: 'Geography', definition: 'The increase in the proportion of people living in urban areas (towns and cities) compared to rural areas.' },
  { term: 'Velocity', subject: 'Physics', definition: 'Speed in a given direction. A vector quantity. v = displacement/time. Measured in m/s.' },
  { term: 'Voltage', subject: 'Physics', definition: 'The potential difference between two points in a circuit. Measured in Volts (V). V = IR (Ohm\'s Law).' },
  { term: 'Work', subject: 'Physics', definition: 'Energy transferred when a force moves an object in the direction of the force. W = Fd. Measured in Joules (J).' },
];

const SUBJECTS = ['All', 'Biology', 'Chemistry', 'Physics', 'Mathematics', 'Geography', 'Agricultural Science'];

const SUBJECT_COLOR: Record<string, string> = {
  Biology: 'bg-emerald-100 text-emerald-700',
  Chemistry: 'bg-teal-100 text-teal-700',
  Physics: 'bg-red-100 text-red-700',
  Mathematics: 'bg-blue-100 text-blue-700',
  Geography: 'bg-orange-100 text-orange-700',
  'Agricultural Science': 'bg-lime-100 text-lime-700',
  'English Language': 'bg-green-100 text-green-700',
};

export default function GlossaryPage({ onNavigate }: GlossaryPageProps) {
  const [search, setSearch] = useState('');
  const [activeSubject, setActiveSubject] = useState('All');

  useEffect(() => {
    updateMetaTags(PAGE_SEO['glossary']);
  }, []);

  const filtered = TERMS.filter(t => {
    const matchesSearch = !search || t.term.toLowerCase().includes(search.toLowerCase()) || t.definition.toLowerCase().includes(search.toLowerCase());
    const matchesSubject = activeSubject === 'All' || t.subject === activeSubject;
    return matchesSearch && matchesSubject;
  }).sort((a, b) => a.term.localeCompare(b.term));

  const letters = Array.from(new Set(filtered.map(t => t.term[0].toUpperCase()))).sort();

  return (
    <div className="min-h-screen bg-white">
      <div className="bg-gradient-to-br from-slate-900 via-teal-950 to-slate-900 text-white py-14 px-4">
        <div className="max-w-4xl mx-auto">
          <button
            onClick={() => onNavigate('home')}
            className="flex items-center gap-2 text-teal-300 hover:text-white text-sm mb-6 transition-colors"
          >
            <ArrowLeft className="w-4 h-4" /> Back to Home
          </button>
          <div className="flex items-center gap-3 mb-4">
            <div className="w-10 h-10 rounded-xl bg-teal-600 flex items-center justify-center">
              <BookOpen className="w-5 h-5 text-white" />
            </div>
            <span className="text-teal-300 font-medium text-sm uppercase tracking-widest">Complete Reference</span>
          </div>
          <h1 className="text-3xl sm:text-4xl font-extrabold leading-tight mb-4">
            WASSCE Science Glossary 2026<br />
            <span className="text-teal-400">Key Terms & Definitions for All Subjects</span>
          </h1>
          <p className="text-slate-300 text-lg max-w-2xl mb-6">
            Over 75 essential WASSCE terms defined clearly with examples. Master the vocabulary for Biology, Chemistry, Physics, Mathematics, Geography and more.
          </p>
          <div className="relative max-w-md">
            <Search className="w-4 h-4 absolute left-4 top-1/2 -translate-y-1/2 text-slate-400" />
            <input
              value={search}
              onChange={e => setSearch(e.target.value)}
              placeholder="Search terms..."
              className="w-full bg-white/10 text-white placeholder-slate-400 rounded-xl pl-10 pr-4 py-3 text-sm border border-white/20 focus:outline-none focus:border-teal-400"
            />
          </div>
        </div>
      </div>

      <div className="max-w-4xl mx-auto px-4 py-8">
        <div className="flex items-center gap-2 mb-6 flex-wrap">
          <Filter className="w-4 h-4 text-slate-400" />
          {SUBJECTS.map(sub => (
            <button
              key={sub}
              onClick={() => setActiveSubject(sub)}
              className={`text-sm px-3 py-1.5 rounded-full font-medium transition-colors ${activeSubject === sub ? 'bg-teal-600 text-white' : 'bg-slate-100 text-slate-600 hover:bg-slate-200'}`}
            >
              {sub}
            </button>
          ))}
        </div>

        <div className="text-sm text-slate-500 mb-6">{filtered.length} terms found</div>

        {letters.map(letter => {
          const group = filtered.filter(t => t.term[0].toUpperCase() === letter);
          return (
            <div key={letter} className="mb-8">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-8 h-8 rounded-lg bg-teal-600 text-white flex items-center justify-center font-bold text-sm">{letter}</div>
                <div className="h-px flex-1 bg-slate-200" />
              </div>
              <div className="space-y-4">
                {group.map((term, i) => (
                  <div key={i} className="bg-slate-50 rounded-2xl p-5 hover:bg-slate-100 transition-colors">
                    <div className="flex items-start justify-between gap-3 mb-2">
                      <h3 className="font-bold text-slate-900 text-base">{term.term}</h3>
                      <span className={`text-xs px-2.5 py-1 rounded-full font-semibold flex-shrink-0 ${SUBJECT_COLOR[term.subject] || 'bg-slate-200 text-slate-600'}`}>{term.subject}</span>
                    </div>
                    <p className="text-slate-700 text-sm leading-relaxed mb-2">{term.definition}</p>
                    {term.example && (
                      <div className="bg-white border border-slate-200 rounded-lg px-3 py-2 text-sm text-slate-600 italic">
                        <span className="font-semibold not-italic text-slate-700">Example: </span>{term.example}
                      </div>
                    )}
                  </div>
                ))}
              </div>
            </div>
          );
        })}

        {filtered.length === 0 && (
          <div className="text-center py-12 text-slate-400">
            <BookOpen className="w-10 h-10 mx-auto mb-3 opacity-50" />
            <p>No terms found. Try a different search.</p>
          </div>
        )}

        <div className="mt-12 bg-gradient-to-br from-teal-600 to-teal-700 rounded-3xl p-8 text-white text-center">
          <h2 className="text-2xl font-bold mb-3">Test Your Knowledge</h2>
          <p className="text-teal-100 mb-6">Now that you know the terms, practise using them in quizzes and past questions.</p>
          <div className="flex flex-col sm:flex-row gap-3 justify-center">
            <button
              onClick={() => onNavigate('subject')}
              className="bg-white text-teal-700 font-bold px-6 py-3 rounded-xl hover:bg-teal-50 transition-colors"
            >
              Browse Subject Notes
            </button>
            <button
              onClick={() => onNavigate('past-questions' as Page)}
              className="bg-teal-500 text-white font-bold px-6 py-3 rounded-xl hover:bg-teal-400 transition-colors border border-teal-400"
            >
              Practise Past Questions
            </button>
          </div>
        </div>

        <div className="mt-8 border-t border-slate-100 pt-8">
          <h3 className="font-bold text-slate-700 mb-3 text-sm uppercase tracking-wider">Related Resources</h3>
          <div className="flex flex-wrap gap-3">
            {[
              { label: 'WASSCE Exam Tips', page: 'exam-tips' as Page },
              { label: 'Likely 2026 Questions', page: 'likely-questions' as Page },
              { label: 'Past Questions', page: 'past-questions' as Page },
              { label: 'Biology Notes', page: 'subject' as Page, data: { subjectId: 'biology' } },
              { label: 'Chemistry Notes', page: 'subject' as Page, data: { subjectId: 'chemistry' } },
            ].map((link, i) => (
              <button
                key={i}
                onClick={() => onNavigate(link.page, link.data)}
                className="text-teal-700 text-sm font-medium px-4 py-2 rounded-lg bg-teal-50 hover:bg-teal-100 transition-colors"
              >
                {link.label} <ChevronRight className="inline w-3 h-3" />
              </button>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
