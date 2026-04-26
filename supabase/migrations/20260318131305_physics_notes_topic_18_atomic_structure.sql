
/*
  # Physics Notes: Topic 18 - Atomic Structure and Spectra
  5 sections: overview, definitions, explanation, examples, practice
*/

DO $$
DECLARE
  v_subj_id uuid;
  v_topic_id uuid;
  v_content text;
BEGIN
  SELECT id INTO v_subj_id FROM subjects WHERE name = 'Physics';
  SELECT id INTO v_topic_id FROM topics WHERE subject_id = v_subj_id AND name = 'Atomic Structure and Spectra';
  
  IF v_topic_id IS NOT NULL THEN

    v_content := 'OVERVIEW: Atomic Structure and Spectra

The atom was once thought to be indivisible (the word "atom" means "uncuttable" in Greek). We now know it has a rich internal structure that explains chemical properties, the light emitted by stars, and how lasers and fluorescent lights work.

HISTORICAL MODELS OF THE ATOM

Thomson''s Plum Pudding Model (1897): After discovering the electron, Thomson proposed atoms as spheres of positive charge with electrons embedded like plums in a pudding.

Rutherford''s Nuclear Model (1911): The gold foil experiment -- firing alpha particles at thin gold foil -- showed:
- Most of the atom is empty space (most alpha particles passed straight through)
- The positive charge and almost all the mass are in a tiny, dense NUCLEUS (a few alpha particles bounced straight back)
- Electrons orbit the nucleus at relatively large distances

Bohr''s Model (1913): Niels Bohr improved Rutherford''s model:
- Electrons occupy specific, fixed ENERGY LEVELS (shells or orbits)
- Electrons in a fixed orbit do NOT radiate energy (unlike classical physics predicted)
- Electrons jump between energy levels by absorbing or emitting PHOTONS of specific energy
- Energy of photon = difference in energy levels: E = hf

Modern Quantum Model: Electrons exist as probability clouds (orbitals) rather than fixed paths. However for WASSCE, the Bohr model is sufficient.

ENERGY LEVELS IN HYDROGEN (simplest atom: 1 proton, 1 electron)
Ground state (n=1): E = -13.6 eV
First excited state (n=2): E = -3.4 eV
Second excited state (n=3): E = -1.5 eV
Third excited state (n=4): E = -0.85 eV
Ionised (n = infinity): E = 0 eV

Negative energies mean the electron is BOUND to the nucleus (energy must be added to remove it).
Ionisation energy of hydrogen = 13.6 eV (energy to remove electron from ground state)

SPECTRAL SERIES
- Lyman series: transitions ending at n=1 (ultraviolet radiation)
- Balmer series: transitions ending at n=2 (visible and near-UV -- the colourful hydrogen spectrum)
- Paschen series: transitions ending at n=3 (infrared)';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Overview: Atomic Structure and Spectra', v_content, 'overview', 1);

    v_content := 'KEY DEFINITIONS: Atomic Structure and Spectra

Atom: The smallest unit of an element that retains the chemical properties of that element. Consists of nucleus (protons + neutrons) surrounded by electrons.

Proton: Positively charged particle in the nucleus.
Charge = +1.6 x 10^-19 C
Mass = 1.673 x 10^-27 kg

Neutron: Electrically neutral particle in the nucleus.
Mass = 1.675 x 10^-27 kg (approximately equal to proton mass)

Electron: Negatively charged particle orbiting the nucleus.
Charge = -1.6 x 10^-19 C
Mass = 9.11 x 10^-31 kg (about 1/1840 of proton mass)

Atomic Number (Z): Number of protons in the nucleus. Determines which element it is. Equals number of electrons in a neutral atom.

Mass Number (A): Total number of nucleons (protons + neutrons) in the nucleus. A = Z + N.

Energy Level: A specific, quantised amount of energy an electron can have in an atom. Electrons can only exist at these discrete levels, not between them.

Ground State: The lowest energy level available to an electron. The most stable state of an atom.

Excited State: Any energy level above the ground state. Electrons in excited states are unstable and will quickly fall back to lower levels, emitting photons.

Photon: A quantum (particle) of electromagnetic radiation.
Energy: E = hf = hc/lambda
h = Planck''s constant = 6.63 x 10^-34 J s
f = frequency of radiation
lambda = wavelength

Emission Spectrum: Bright lines on a dark background. Produced when electrons in excited atoms fall to lower energy levels, emitting photons. Each element has a unique emission spectrum (its spectral fingerprint).

Absorption Spectrum: Dark lines on a bright continuous background. Produced when cool gas absorbs specific photon frequencies, exciting electrons to higher levels.

Continuous Spectrum: A spectrum containing all wavelengths in a range (like a rainbow). Produced by hot, dense objects.

Line Spectrum: A spectrum of discrete, sharp lines at specific wavelengths. Characteristic of excited gases.

Photoelectric Effect: Emission of electrons from a metal surface when electromagnetic radiation above a threshold frequency strikes it.

Work Function (phi): Minimum energy needed to release one electron from a metal surface.
phi = h x f_threshold

Threshold Frequency (f_0): Minimum frequency of radiation that will cause the photoelectric effect in a given metal.

Einstein''s Photoelectric Equation: hf = phi + (1/2)mv^2_max
where (1/2)mv^2_max is the maximum kinetic energy of ejected electrons.

Wave-Particle Duality: Light (and matter) exhibit both wave-like and particle-like behaviour.
Wave nature: diffraction, interference, polarisation.
Particle nature: photoelectric effect, photon momentum.

de Broglie Wavelength: A moving particle has an associated wavelength.
lambda = h / (mv) where m = mass and v = speed.

Ionisation: Complete removal of one or more electrons from an atom, leaving a positive ion.

Ionisation Energy: Energy required to completely remove an electron from an atom in its ground state.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Key Definitions: Atomic Physics Terms', v_content, 'definitions', 2);

    v_content := 'DEEP EXPLANATION: Energy Levels, Spectra and the Photoelectric Effect

BOHR''S ENERGY LEVEL FORMULA FOR HYDROGEN
E_n = -13.6 / n^2  (in electron volts, eV)

n=1 (ground state): E = -13.6 eV
n=2: E = -3.4 eV
n=3: E = -1.51 eV
n=4: E = -0.85 eV
n=5: E = -0.54 eV
n = infinity (ionised): E = 0

Why negative? Because we define E = 0 at infinity (free electron). Bound electrons have LESS energy than a free electron, hence negative values. To remove an electron, we must ADD energy to bring it from negative to zero.

ELECTRON TRANSITIONS AND PHOTON EMISSION
When an electron falls from energy level E_2 (higher) to E_1 (lower):
Energy of emitted photon: Delta E = E_2 - E_1 = hf
Frequency: f = Delta E / h
Wavelength: lambda = hc / Delta E

WORKED EXAMPLE -- Hydrogen Balmer Red Line:
Transition from n=3 to n=2:
E_3 = -1.51 eV = -1.51 x 1.6 x 10^-19 = -2.416 x 10^-19 J
E_2 = -3.4 eV = -3.4 x 1.6 x 10^-19 = -5.44 x 10^-19 J
Delta E = E_3 - E_2 = -2.416 x 10^-19 - (-5.44 x 10^-19) = 3.024 x 10^-19 J
f = 3.024 x 10^-19 / 6.63 x 10^-34 = 4.56 x 10^14 Hz
lambda = c/f = 3 x 10^8 / 4.56 x 10^14 = 6.58 x 10^-7 m = 658 nm (RED light)

This is the famous H-alpha line -- the red glow of hydrogen discharge tubes!

ABSORPTION SPECTRUM
When white light passes through cool hydrogen gas:
- Photons of exactly the right frequency are ABSORBED by electrons jumping up
- Those frequencies appear as dark lines in the otherwise continuous spectrum
- The dark lines in the absorption spectrum match exactly the bright lines in the emission spectrum (same energy differences)

Why emission and absorption spectra are COMPLEMENTARY: Both involve the same energy differences between the same energy levels.

THE PHOTOELECTRIC EFFECT
Einstein (1905) explained this using the photon model of light:

Key observations that CANNOT be explained by wave theory:
1. No electrons emitted below threshold frequency (f_0), regardless of light intensity.
   Wave theory PREDICTION: enough intensity at any frequency should eventually eject electrons.
2. Above f_0, increasing intensity increases NUMBER of electrons (not their energy).
   Wave theory PREDICTION: more intensity should give more energy per electron.
3. Above f_0, increasing frequency increases MAXIMUM KE of electrons.
4. Emission is INSTANTANEOUS -- no time delay.
   Wave theory PREDICTION: energy should build up gradually, causing a delay.

Einstein''s explanation: Light consists of photons. Each photon has energy E = hf. ONE photon ejects ONE electron. If photon energy is less than work function, no ejection is possible regardless of how many photons arrive.

Einstein''s Photoelectric Equation:
hf = phi + KE_max
hf = hf_0 + (1/2)mv^2_max
KE_max = hf - phi = h(f - f_0)

Stopping voltage V_s: The minimum voltage needed to stop the most energetic photoelectrons.
eV_s = KE_max = hf - phi

Applications of photoelectric effect: Photocells, light meters, automatic doors, digital cameras (CCDs), solar cells, night vision equipment.

WAVE-PARTICLE DUALITY
Light as a wave: demonstrates diffraction, interference, polarisation.
Light as particles (photons): photoelectric effect, Compton scattering.

de Broglie (1924) extended this: ALL matter has wave-particle duality.
lambda = h / (mv) -- de Broglie wavelength

For an electron at v = 2 x 10^6 m/s:
lambda = 6.63 x 10^-34 / (9.11 x 10^-31 x 2 x 10^6) = 3.64 x 10^-10 m = 0.364 nm

This wavelength is similar to X-ray wavelengths -- electrons DO diffract from crystals, confirming their wave nature. This is the basis of electron microscopes, which achieve much higher resolution than light microscopes.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Deep Explanation: Energy Levels, Spectra and Photoelectric Effect', v_content, 'explanation', 3);

    v_content := 'WORKED EXAMPLES: Atomic Structure and Spectra

EXAMPLE 1: Energy of Emitted Photon
Question: Calculate the energy and frequency of the photon emitted when hydrogen''s electron falls from n=4 to n=2. h = 6.63 x 10^-34 J s.

Solution:
E_4 = -13.6 / 16 = -0.85 eV
E_2 = -13.6 / 4 = -3.4 eV

Delta E = E_4 - E_2 = -0.85 - (-3.4) = 2.55 eV

In joules: Delta E = 2.55 x 1.6 x 10^-19 = 4.08 x 10^-19 J

f = Delta E / h = 4.08 x 10^-19 / 6.63 x 10^-34 = 6.15 x 10^14 Hz (visible -- blue/violet light)

---

EXAMPLE 2: Photoelectric Effect -- Finding KE_max
Question: Light of frequency 8.0 x 10^14 Hz falls on a metal with work function 2.0 eV. Calculate (a) photon energy, (b) maximum KE of emitted electrons. h = 6.63 x 10^-34 J s.

Solution:
(a) E = hf = 6.63 x 10^-34 x 8.0 x 10^14 = 5.304 x 10^-19 J
In eV: 5.304 x 10^-19 / 1.6 x 10^-19 = 3.315 eV

(b) KE_max = hf - phi = 3.315 - 2.0 = 1.315 eV = 1.315 x 1.6 x 10^-19 = 2.1 x 10^-19 J

---

EXAMPLE 3: Threshold Frequency
Question: A metal has work function 3.5 eV. Calculate threshold frequency and threshold wavelength.

Solution:
f_0 = phi / h = (3.5 x 1.6 x 10^-19) / (6.63 x 10^-34)
f_0 = 5.6 x 10^-19 / 6.63 x 10^-34
f_0 = 8.45 x 10^14 Hz (ultraviolet range)

lambda_0 = c / f_0 = 3 x 10^8 / 8.45 x 10^14 = 3.55 x 10^-7 m = 355 nm (UV)
Visible light (400-700 nm) cannot eject electrons from this metal.

---

EXAMPLE 4: Identifying the Spectral Series
Question: An electron in hydrogen falls from n=5 to n=1. (a) Calculate photon energy. (b) Identify the spectral series.

Solution:
(a) E_5 = -13.6/25 = -0.544 eV
E_1 = -13.6 eV
Delta E = -0.544 - (-13.6) = 13.056 eV = 13.056 x 1.6 x 10^-19 = 2.089 x 10^-18 J

(b) Transition to n=1 belongs to the LYMAN SERIES (ultraviolet).

---

EXAMPLE 5: de Broglie Wavelength
Question: Calculate the de Broglie wavelength of an electron moving at 2.0 x 10^6 m/s. m_e = 9.11 x 10^-31 kg, h = 6.63 x 10^-34 J s.

Solution:
lambda = h / (mv)
lambda = 6.63 x 10^-34 / (9.11 x 10^-31 x 2.0 x 10^6)
lambda = 6.63 x 10^-34 / 1.822 x 10^-24
lambda = 3.64 x 10^-10 m = 0.364 nm

This is similar to X-ray wavelengths, explaining why electrons diffract from crystal lattices.

---

EXAMPLE 6: Rutherford''s Gold Foil Experiment
Question: Describe THREE key observations from Rutherford''s gold foil experiment and the conclusion from each.

Solution:
Observation 1: Most alpha particles passed straight through the foil with little deflection.
Conclusion: The atom is mostly empty space.

Observation 2: A small fraction of alpha particles were deflected through large angles.
Conclusion: A small, concentrated region of positive charge exists inside the atom (the nucleus).

Observation 3: A very small number of alpha particles bounced almost straight back.
Conclusion: The nucleus is extremely dense and contains most of the atom''s mass. The bouncing-back means a direct near-hit with a very massive, positively charged nucleus.';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'Worked Examples: Atomic Structure and Photoelectric Effect', v_content, 'examples', 4);

    v_content := 'WASSCE PAST QUESTIONS AND PRACTICE: Atomic Structure and Spectra

WASSCE 2021
Question: (a) Explain the photoelectric effect. (b) State TWO observations that cannot be explained by wave theory. (c) Work function of sodium = 2.3 eV. Calculate threshold frequency. h = 6.6 x 10^-34 J s.

Model Answer:
(a) The photoelectric effect is the emission of electrons from a metal surface when electromagnetic radiation of sufficient frequency (above the threshold frequency) strikes it.

(b) Observation 1: No electrons are emitted below the threshold frequency, regardless of how intense the light is. Wave theory predicts emission should occur at any frequency given sufficient intensity and time.
Observation 2: Emission is instantaneous above threshold. Wave theory predicts a time delay for energy to accumulate.

(c) f_0 = phi / h = (2.3 x 1.6 x 10^-19) / (6.6 x 10^-34)
f_0 = 3.68 x 10^-19 / 6.6 x 10^-34
f_0 = 5.57 x 10^14 Hz

---

WASSCE 2020
Question: (a) Draw an energy level diagram for hydrogen with at least 4 levels. Mark ground state and show ONE transition in the Balmer series with the energy of the emitted photon.

Model Answer:
Energy levels:
n=4: -0.85 eV
n=3: -1.51 eV
n=2: -3.40 eV (draw arrow FROM n=3 TO n=2)
n=1: -13.6 eV (ground state)

Balmer transition (n=3 to n=2):
Delta E = -1.51 - (-3.40) = 1.89 eV (emits photon of energy 1.89 eV = 3.02 x 10^-19 J)
This is visible red light (656 nm).

---

WASSCE 2019
Question: State the main conclusions from Rutherford''s alpha particle scattering experiment.

Model Answer:
1. The atom is mostly empty space (most alpha particles passed straight through undeflected).
2. The positive charge and most of the mass are concentrated in a tiny, dense region called the nucleus (small fraction of particles deflected through large angles or back-scattered).
3. The nucleus occupies an extremely small fraction of the atom''s volume.
4. Electrons orbit at relatively large distances from the nucleus.

---

WASSCE 2018
Question: Light of wavelength 250 nm falls on a metal with work function 4.0 eV. Determine whether photoelectric emission occurs. If so, calculate the maximum KE of emitted electrons. c = 3 x 10^8 m/s, h = 6.63 x 10^-34 J s.

Model Answer:
Photon energy: E = hc/lambda = (6.63 x 10^-34 x 3 x 10^8) / (250 x 10^-9)
E = 1.989 x 10^-25 / 2.5 x 10^-7 = 7.956 x 10^-19 J
E = 7.956 x 10^-19 / 1.6 x 10^-19 = 4.97 eV

Since photon energy (4.97 eV) > work function (4.0 eV), photoelectric emission DOES occur.

KE_max = 4.97 - 4.0 = 0.97 eV = 0.97 x 1.6 x 10^-19 = 1.55 x 10^-19 J

---

PRACTICE QUESTIONS

Q1: What is the ionisation energy of hydrogen? Give your answer in eV and in joules.
[Answer: 13.6 eV = 13.6 x 1.6 x 10^-19 = 2.18 x 10^-18 J]

Q2: Explain why different elements produce different line spectra.
[Answer: Each element has a unique set of energy levels determined by its atomic number and electron configuration. The specific energy differences between levels are unique to each element, producing unique photon frequencies/wavelengths.]

Q3: An electron transitions from n=3 to n=1 in hydrogen. Which series does this belong to and what region of the EM spectrum is the photon?
[Answer: Lyman series (transitions to n=1). Energy = -1.51 - (-13.6) = 12.09 eV. High energy -- ultraviolet radiation.]

Q4: State the difference between an emission spectrum and an absorption spectrum.
[Answer: Emission spectrum shows bright coloured lines on a dark background; produced by excited atoms emitting photons as electrons fall to lower levels. Absorption spectrum shows dark lines on a bright continuous background; produced when cool gas absorbs specific photon frequencies to excite electrons to higher levels. The dark lines in absorption match the bright lines in emission for the same element.]

Q5: Explain wave-particle duality of light using two experiments as evidence.
[Answer: Wave nature -- demonstrated by Young''s double slit experiment (light diffracts and forms interference fringes, only possible for waves). Particle nature -- demonstrated by the photoelectric effect (light ejects electrons as discrete photon packets; no emission below threshold frequency regardless of intensity, which only makes sense for particles).]';

    INSERT INTO topic_sections (topic_id, title, content, section_type, order_index)
    VALUES (v_topic_id, 'WASSCE Practice: Atomic Structure and Spectra', v_content, 'practice', 5);

  END IF;
END $$;
