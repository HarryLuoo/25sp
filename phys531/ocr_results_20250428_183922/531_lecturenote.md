# Introduction to Quantum Mechanics 

Elio J. König

Physics 531.
Lecture course taught in Spring 2025 @ U Wisconsin-Madison

If you find misprints, please feel free to contact me (click here).

# Contents 

I THE GOOD: Finite dimensional Hilbert spaces ..... 6
1 Spin-1/2 systems and qubits ..... 6
1.1 Stern-Gerlach-Experiment ..... 6
1.2 Projective Measurement, superposition principle ..... 10
1.3 Basics of the vector space of state vectors ("Hilbert space") ..... 11
2 Angular Momentum ..... 17
2.1 Algebra of angular momenta ..... 18
2.2 Basic properties of non-commuting operators ..... 21
2.3 The angular momentum algebra and its representations ..... 23
3 Time evolution and Schrödinger equation ..... 25
3.1 Quantization as an eigenvalue problem ..... 26
3.2 Time independent perturbation theory ..... 33
4 More than one particle: Entanglement ..... 36
4.1 Addition of angular momenta ..... 36
4.2 Example: Addition of angular momenta for two spin-1/2 particles ..... 39
4.3 Einstein-Podolsky-Rosen paradox and Bell inequalities. ..... 43
4.4 Entanglement in quantum information science. ..... 47
II THE BAD: Infinite dimensional Hilbert spaces: discrete spectrum ..... 53

5 Approaching quantum mechanics in the continuum: Position and mo- mentum operators. ..... 53
5.1 Quantum mechanical hopping on a chain ..... 53
5.2 Recapitulation of finite dimensional Hilbert space, eigenstates of the chain and discrete Fourier Transform ..... 54
5.3 Taking the limit $a \rightarrow 0$ : Continuum Schrödinger equation and vector spaces of functions ..... 59
5.4 Position and momentum: Heisenberg uncertainty principle and equations of motion ..... 63
6 Quantum mechanics in a trap: The Harmonic Oscillator ..... 64
6.1 Algebraic solution ..... 65
6.2 Eigenfunctions in real space ..... 67
7 Atomic Physics ..... 69
7.1 Bound states of the Hydrogen Atom ..... 69
7.2 Periodic table of elements ..... 77
III THE UGLY: Infinite dimensional Hilbert spaces: Continuous Spectrum ..... 84
8 Electromagnetic fields and quantum interference ..... 84
8.1 Minimal coupling ..... 84
8.2 Aharonov-Bohm effect ..... 84
9 Tunneling, decay rates, basics of scattering theory ..... 88
9.1 1D Scattering potential ..... 89
9.2 Double Quantum well and tunneling ..... 92

9.3 Decay of a bound state ..... 95

# Literature and comments 

- John Townsend "A modern approach to quantum mechanics"
- J. J. Sakurai and J. Napolitano, "Modern Quantum Mechanics";
- Claude Cohen-Tannoudji "Quantum Mechanics",
- Albert Messiah "Quantum Mechanics";
- Lev Landau and Evgeny Lifshitz "Quantum Mechanics: Non-relativistic Theory"
- For the couple of lectures on quantum information theory: Michael Nielsen and Isaac Chuang "Quantum Computation and Quantum information". (It also contains a useful summary of linear algebra).

There are multiple mathematical methods books on the market that might help with recap of linear algebra. Examples are

- Alex Altland and Jan von Delft "Mathematics for physicists"
- Ramamurti Shankar "Basic Training in Mathematics"
- Christian Lang, Norbert Pucker "Mathematische Methoden in der Physik" (in German, but AI may help)

In addition to the many things that are covered within one semester, there are several important topics which are left for a second QM class or for grad school. This course does deliberately not cover

- the Dirac equation
- Relativistic corrections to the Hydrogen Atom
- Most of scattering theory (e.g. no Lippmann-Schwinger)
- time-dependent perturbation theory
- Semiclassical methods and quantization schemes different from the canonical operator formalism
- The WKB method
- The Feynman path integral and instanton calculus
- The Moyal product

# Part I 

## THE GOOD: Finite dimensional Hilbert spaces

## 1 Spin-1/2 systems and qubits

### 1.1 Stern-Gerlach-Experiment

Summary of this section:

- It was known previously that atoms can carry a magnetic dipole moment $\vec{\mu}$.
- This experiment demonstrates a quantization of $\vec{\mu}$. (In the simplest case of Ag atoms, it takes only two values).
- Just as classical theory, quantum mechanics relates magnetic moments to angular momentum. Thus this experiments demonstrates the quantization of angular momentum.

Otto Stern 1888 - 1969, German-American Experimentalist (originally a theorist). Emigrated to the US (Pittsburgh) in 1933 in response to the take of power of the Nazis (Stern was Jewish). Nobel prize 1943 (awarded 1944).

Walther Gerlach 1889-1979, German Experimentalist, Prominent member of the Uranverein (analogue to Manhattan Project), even though never a member of the Nationalsocialist movement. Potentially the reason for not being awarded a Nobel prize.

## Description of the experiment and phenomenology.

- Setup (cf. Fig 1 a))
- Silver atoms are evaporated at oven and collimated
- The beam is passed through region with inhomogeneous magnetic field, created by the unequal nature of the magnetic pole pieces, cf. Fig. 1 b)
- Classical Expectation:

![img-0.jpeg](img-0.jpeg)

FIGURE 1.1
(a) A schematic diagram of the Stern-Gerlach experiment. (b) A cross-sectional view of the pole pieces of the magnet depicting the inhomogeneous magnetic field they produce.

Figure 1: Graphical representation of the Stern-Gerlach experiment (adapted from Townsend).

- Force exerted by inhomogeneous field on the atoms

$$
\vec{F}=\nabla(\vec{\mu} \cdot \vec{B}) \simeq \mu_{z} \partial_{z} B_{z} \hat{e}_{z}
$$

- Bohr-Sommerfeld semiclassical model (Bohr 1913, Bohr-Sommerfeld 1916) of the atom with electrons circulating around the nucleus was already known at the time of the experiment an.
So were Bohr-Sommerfeld quantization rules - Gerlach and Stern did not actually expect the classical response, but a quantization in integer angular momenta!
It is still up-to-date to attribute the magnetic moment of the Ag to its valence electron. (Ag has 47 electrons, 46 are tightly bound in inner shells, the 47th one is the only main player)
Note however: the effect actually stems from the electron spin, see more below Niels Bohr 1885-1962, Danish theorist, major contributions: Bohr-Sommerfeld model of the atom, correspondence principle, interpretation of Quantum Mechanics.
Arnold Sommerfeld 1868-1951, German Theorist, "Grey eminence of Quantum theory": Supervised 7 Nobel prize winners in his group, but never was awarded the prize himself. Guest professor at UW-Madison in the winter semester 19221923.
- For classical particles the magnetic dipole moment is related to the angular momentum $\vec{L}$ as

$$
\vec{\mu}=\frac{q}{2 m c} \vec{L}
$$

where $q$ is the charge of the particle $(q=-|e|$ for electrons $), m$ the particle mass, $c$ the speed of light.

- Incoming beam of Ag is unpolarized (random orientation of magnetic moment): $\mu_{z} \sim|\vec{\mu}| \cos (\theta)$.
- $\Rightarrow$ Expect continuum distribution of atoms on the screen corresponding to values from $+|\vec{\mu}|$ to $-|\vec{\mu}|$.
- Observation: The distribution of deposited atoms splits in a magnetic field, but does not without field, cf. Fig. 2
- Quantum mechanical interpretation:
- Eq. (1) is still applicable, but $\mu_{z}$ takes two quantized values.
- Eq. (2) relates quantization of $\vec{\mu}$ to quantization of orbital angular momentum $\vec{L}$.
- However, the effect is actually not carried by the orbital angular momentum of the electron, but by its spin $\vec{S}$ (intrinsic angular momentum)

$$
\vec{\mu}=\frac{g q}{2 m c} \vec{S}
$$

- We denote the quantized levels as $S_{z}= \pm \hbar / 2$, contrary to $L_{z}=-\hbar, 0, \hbar$ in the simplest case. $\hbar=h / 2 \pi$ with $h=6.62607015 \times 10^{-34} \mathrm{~J} / \mathrm{Hz}$ is the (reduced) Planck constant. It has units of an action, but also of an angular momentum
- For electrons $g=2+\ldots$ where $\ldots$ are quantum corrections which can be calculated in quantum field theory
- It's one of the most well determined constant of nature with excellent theory-experiment agreement
- The electron spin was discovered only in 1926 by Goudsmith and Uhlenbeck (graduate students in the group of Paul Ehrenfest). After discussions with Lorentz they tried to stop publication of their paper, (concerns: overly large speed of electrons or size of electrons, the fact that $g=2$ instead of 1 as in the case of orbital angular momentum). Ehrenfest went ahead and submitted their paper already, with the remark that they were "young enough to afford a stupidity".
To really understand why spin is half-integer: grad-level quantum mechanics: Dirac equation and quantum field theory: representation of Lorentz group, spin-statistics theorem.

![img-1.jpeg](img-1.jpeg)

Figure 2: Postcard from Gerlach to Bohr, as displaying in Townsend book. a) Left: Control experiment without magnetic field. b) Right: splitting of the deposited atoms in a magnetic field. To make connection to the setup as depicted in Fig. 1 rotate by 90 degrees. The text reads (translation see Townsend) "Hochverehrter Herr Bohr, anbei die Fortsetzung unserer Arbeit (vide Zeitschr. f. Physik, VIII, Seite ii0, 1921): Der eperimentelle Nachweis der Richtungsquantelung (maybe: -quantisierung)." Left of left picture: "Silber ohne Magnetfeld". Right of right picture "mit Feld". Below: "Wir gratulieren zur Bestätigung Ihrer Theorie! Mit hochachtungsvollen Grüssen, Ergebenst, Walther Gerlach."
![img-2.jpeg](img-2.jpeg)
(a)
![img-3.jpeg](img-3.jpeg)
(b)
![img-4.jpeg](img-4.jpeg)

Figure 3: Multiple SG-inspired Gedankenexperiments.

# 1.2 Projective Measurement, superposition principle 

Summary of this section:
Here we discuss multiple Gedankenexperiments which illustrate two basic principles of quantum mechanics:

- Projective measurements
- The superposition principle

Part of these Gedankenexperiments go back to Richard Feynman's lectures on physics.

Richard Feynman (1918- 1988), American theorist, Nobel prize in 1965 for his work on quantum electrodynamics.
i The Stern-Gerlach-apparatus (SGz) acts thus as device which splits particles with spin $S_{z}=+\hbar / 2$, denoted $|\uparrow\rangle$ from those with spin $S_{z}=-\hbar / 2$, denoted $|\downarrow\rangle$ ( $|\ldots\rangle$ are state vectors in an abstract quantum mechanical vector space, more later)
ii By blocking the path of one of the beams, one may design a polarizer, cf Fig 3 a). In this sense the (SGz) measurement is projective.
iii One may, of course, equally design a Stern-Gerlach-apparatus with magnetic field in $x$ direction (SGx) which splits particles with $S_{x}=+\hbar / 2$, denoted $|\rightarrow\rangle$ from those with spin $S_{x}=-\hbar / 2$, denoted $|\leftarrow\rangle$.
iv If a particle is in state $|\uparrow\rangle$ it has $50-50$ chance of being subsequently measured in $S_{x}=\hbar / 2$ or $-\hbar / 2$, cf Fig. 3 b).
v Note that concatenating SGx, SGz, SGx with blocked beams, Fig. 3 c) has a different outcome than the same setup without the internal SGz, 3 a). Thus the z-polarizer in the center has altered the state!
vi Finally, Fig. 4, we consider a modified SGz setup to illustrate the superposition principle:

- The modified SGz has the form of sequentially posed, mutually opposite, magnets, such that particle beams split according to $S_{z}$ and then recombine.
- If we block the lower of the two intermediate paths, we get the same as in Fig. 3 c) (But here with x basis instead of z ), with outcomes $N_{0} / 4$ in $|\rightarrow\rangle$ and $N_{0} / 4$ in $|\leftarrow\rangle$.
- If we block the upper of the two intermediate paths, again we expect outcomes $N_{0} / 4$ in $|\rightarrow\rangle$ and $N_{0} / 4$ in $|\leftarrow\rangle$.

![img-5.jpeg](img-5.jpeg)

Figure 4: A variant of the SGz apparatus

- If we do not block the two paths, the whole thing acts like a Fig 3 a), with $100 \%$ (i.e. $N_{0}$ ) of particles reaching the screen on the right in state $|\rightarrow\rangle$.
- Thus, if we thought of the experiment without blocking any of the paths in terms of probability theory, we'd expect to add up the result of Fig. 3 c) (hence expect $|\rightarrow\rangle,|\leftarrow\rangle$ each with $N_{0} / 2$ probability).
- Instead, if we do not block the two paths, the whole thing acts like a Fig 3 a), with $100 \%$ (i.e. $N_{0}$ ) of particles reaching the screen on the right in state $|\rightarrow\rangle$.
- That implies that at intermediate positions within the modified SGx, the quantum particles are both in $|\uparrow\rangle$ and $|\downarrow\rangle$ at the same time. This is called the superposition principle!


# 1.3 Basics of the vector space of state vectors ("Hilbert space") 

"You will destroy Heisenberg's physical ideas with your useless mathematics." Wolfgang Pauli to Max Born, quoted from Born, M., "Mein Leben" (1978), p 300.

Summary of this section:

- We here introduce the basics of the space of state vectors.
- As well as the notion of how to extract the quantum mechanical expectation value for a given observable.

So far we have introduced the state vectors $|\psi\rangle$ (called "ket) by means of four examples $|\uparrow\rangle,|\downarrow\rangle,|\rightarrow\rangle,|\leftarrow\rangle$. The goal here is to characterize the space $\mathcal{H}=\{|\psi\rangle\}$, and the basic representation of physical observables.

The bra-ket notation used here is due to
P.A.M. Dirac (1902- 1984), British mathematical and theoretical physicist, Nobel laureate in 1933 with Schrödinger "for the discovery of new productive forms of atomic theory".

We here use the two-level system introduced above as a motivation, but the statements summarized in this section are mostly generically valid (it should be obvious when we generalize from 2 states to many).

# 1. Quantum mechanical states 

- We required the possibility of (linear) superposition of states, for example we saw

$$
|\rightarrow\rangle \propto|\uparrow\rangle+|\downarrow\rangle
$$

More generally, we require that any quantum mechanical state may be expanded as

$$
|\psi\rangle=c_{\uparrow}|\uparrow\rangle+c_{\downarrow}|\downarrow\rangle=\sum_{\sigma=\uparrow, \downarrow} c_{\sigma}|\sigma\rangle
$$

with two arbitrary (even complex) numbers $c_{\uparrow, \downarrow}$ (in the more general case there are more than two coefficients $c_{\sigma}$ ).
Mathematically, we implicitly assumed the notion of

- "multiplication with a scalar":

$$
\begin{aligned}
\mathbb{C} \times \mathcal{H} & \rightarrow \mathcal{H} \\
\lambda,|\psi\rangle & \mapsto|\lambda \psi\rangle=\lambda|\psi\rangle
\end{aligned}
$$

- of "addition" (linear, commutative, associative) which maps a pair of states onto a third state in the same vector space of state vectors.

$$
\begin{aligned}
+: \mathcal{H} \times \mathcal{H} & \rightarrow \mathcal{H} \\
|\psi\rangle,|\phi\rangle & \mapsto|\chi\rangle=|\psi\rangle+|\phi\rangle
\end{aligned}
$$

and that there is a unique inverse to this operator

$$
|\psi\rangle+|-\psi\rangle \equiv=|\psi\rangle-|\psi\rangle=0
$$

with a unique 0 element.
Comment: This should be seen analogously as the expansion of any vector $\vec{x} \in \mathbb{R}^{3}$ in, e.g., $\hat{e}_{x}, \hat{e}_{y}, \hat{e}_{z}$.

- By combining the coefficients into $\binom{c_{\uparrow}}{c_{\downarrow}}$ we see that
![img-6.jpeg](img-6.jpeg)

The addition on our abstract Hilbert space $\mathcal{H}$ is thus inherited from the addition on $\mathbb{C}^{2}$ (later we generalize to $\mathbb{C}^{N}$ with arbitrary $N \in \mathbb{N}$ ).

- We also required the possibility for projective measurements, e.g. in $z$-basis

$$
\begin{aligned}
& \hat{P}_{\uparrow}|\uparrow\rangle=|\uparrow\rangle, \\
& \hat{P}_{\downarrow}|\downarrow\rangle=|\downarrow\rangle, \\
& \hat{P}_{\uparrow}|\downarrow\rangle=0=\hat{P}_{\downarrow}|\uparrow\rangle .
\end{aligned}
$$

- Here we have implicitly introduced the notion of an operator (i.e. linear maps $\left.\hat{O}: \mathcal{H} \rightarrow \mathcal{H},|\psi\rangle \mapsto\left|\psi_{O}\right\rangle=\hat{O}|\psi\rangle\right)$.
- From linear algebra we remember that there is a standard inner product on $\mathbb{C}^{2}$

$$
\left\langle\binom{a_{\uparrow}}{a_{\downarrow}},\binom{c_{\uparrow}}{c_{\downarrow}}\right\rangle=\sum_{\sigma=\uparrow, \downarrow} a_{\sigma}^{*} c_{\sigma}
$$

which defines a dual vector space obtained from $\binom{c_{\uparrow}}{c_{\downarrow}}$ by Hermitian conjugation. This dual vector space and the inner product can be pulled back to the abstract $\mathcal{H}$ as follows: For any

$$
|\phi\rangle=a_{\uparrow}|\uparrow\rangle+a_{\downarrow}|\downarrow\rangle, \in \mathcal{H}
$$

we define the dual vector as a "bra"

$$
\langle\phi|=\langle\uparrow| a_{\uparrow}^{*}+\langle\downarrow| a_{\downarrow}^{*} \in \mathcal{H}^{*}
$$

with a pulled back inner product

$$
\begin{aligned}
\langle. \mid\rangle & : \mathcal{H} \times \mathcal{H} \rightarrow \mathcal{H} \\
& |\phi\rangle,|\psi\rangle \mapsto\langle\phi \mid \psi\rangle=\sum_{\sigma=\uparrow, \downarrow} a_{\sigma}^{*} c_{\sigma}, \quad \text { for vectors defined in Eqs. (5), (13) }
\end{aligned}
$$

For larger Hilbert space, $\sigma$ of course runs over more than two values.

- It follows that $\langle\uparrow \mid \downarrow\rangle=0$, i.e. the basis vectors are orthogonal, and it is convenient to orthonormalize them $\left(\sigma, \sigma^{\prime}=\uparrow, \downarrow\right.$ throughout)

$$
\begin{aligned}
\langle\sigma| \sigma^{\prime}\rangle & =\delta_{\sigma, \sigma^{\prime}} \quad(\text { orthonormality condition }) \\
\hat{P}_{\sigma} & =|\sigma\rangle\langle\sigma| \\
\mathrm{Id} & =\sum_{\sigma} \hat{P}_{\sigma}=\sum_{\sigma}|\sigma\rangle\langle\sigma| \quad \text { (completeness relation) }
\end{aligned}
$$

Here we used the notation $|\psi\rangle\langle p h i|$ for the outer product (mapping to vectors to a matrix, i.e. two states to an operator).

- By applying $\hat{P}_{\sigma}$ on $|\psi\rangle$, we see that the amplitude of $\operatorname{spin} \sigma$ within an arbitrary wavefunction $|\psi\rangle$ is $c_{\sigma}=\langle\sigma \mid \psi\rangle$.
- It is convenient to fix from now on $\||\psi\rangle\|^{2} \equiv\langle\psi \mid \psi\rangle=1$. It then follows that $\sum_{\sigma}\left|c_{\sigma}\right|^{2}=1$, where each $\left|c_{\sigma}\right|^{2}$ can be interpreted as the probability of a particle in a superposition state $|\psi\rangle$ to be found in state $|\sigma\rangle$ ("Born-probability", see also QM expectation value below) and the normalization of wave vectors can be understood as conservation of probability.
Comment: Many operators as well as the addition may not preserve the norm. In this case the previously defined operations are to be understood in a broader vector space, into which $\mathcal{H}$ is embedded.

David Hilbert (1862-1943) German mathematician working mostly in Göttingen. Amongst his contributions to many parts of mathematics, the ones on functional analysis are most important here. Adviser of John von Neumann.
Max Born (1882-1970), German-British theorist, Nobel prize in 1954 for his "fundamental research in quantum mechanics, especially in the statistical interpretation of the wave function". Had to leave his professorship in Göttingen and to emigrate to the UK in 1933 because he was Jewish. Doctoral adviser of J. Robert Oppenheimer.

# 2. Observables in quantum mechanics 

- Generally, observables are represented as operators (i.e. linear maps) and we have already implicitly seen this: Since there are only two states in z-direction, the spin operator can be constructed as follows

$$
\hat{S}_{z}=\frac{\hbar}{2}\left[\hat{P}_{\uparrow}-\hat{P}_{\downarrow}\right] \simeq \underbrace{\frac{\hbar}{2}}_{=\sigma_{z}}\left(\begin{array}{cc}
1 & 0 \\
0 & -1 \\
=\sigma_{z}
\end{array}\right)
$$

- We again use the pullback to define the quantum mechanical expectation value

$$
\langle\psi| \hat{S}_{z}|\psi\rangle=\frac{\hbar}{2}\left(c_{\uparrow}^{*} c_{\downarrow}^{*}\right) \sigma_{z}\binom{c_{\uparrow}}{c_{\downarrow}}
$$

By construction, if $c_{\downarrow}=0\left(c_{\uparrow}=0\right)$ the expectation value is just $\hbar / 2(-\hbar / 2)$, consistent with the previously discussed notion of probability of finding the QM particle in state $|\sigma\rangle$ (the normalization $\langle\psi \mid \psi\rangle$ is used here!).

- Since any physical observable $\hat{O}$ must have real expectation values, it follows that it must be Hermitian

$$
\langle\psi| \hat{O}|\psi\rangle=\langle\psi| \hat{O}|\psi\rangle^{*}=\langle\psi| \hat{O}^{\dagger}|\psi\rangle \rightarrow \hat{O}=\hat{O}^{\dagger}
$$

where the notion of Hermitian conjugate " $\dagger$ " is defined by complex conjugation and transposition of matrices acting in $\mathbb{C}^{2}$ (or $\mathbb{C}^{N}$ in the general case) and pulled back to the abstract Hilbert space $\mathcal{H}$.

- Any Hermitian $2 \times 2$ matrix $H=H^{\dagger}$ can be expanded uniquely as (see exercise sheet)

$$
\begin{aligned}
H & =h_{0} \mathbf{1}_{2 \times 2}+\sum_{i=x, y, z} h_{i} \sigma_{i} \\
h_{0} & =\operatorname{tr}[H] / 2 \in \mathbb{R} \\
h_{i} & =\operatorname{tr}\left[H \sigma_{i}\right] / 2 \in \mathbb{R}
\end{aligned}
$$

where $\sigma_{x, y, z}$ are called Pauli-Matrices and define spin-operators in the three Cartesian directions.

$$
\begin{gathered}
\hat{S}_{x} \simeq \underbrace{\frac{\hbar}{2}}_{=\sigma_{x}} \underbrace{\left(\begin{array}{cc}
0 & 1 \\
1 & 0
\end{array}\right)}_{=\sigma_{x}} \\
\hat{S}_{y} \simeq \underbrace{\frac{\hbar}{2}}_{=\sigma_{y}} \underbrace{\left(\begin{array}{cc}
0 & -i \\
i & 0
\end{array}\right)}_{=\sigma_{y}}
\end{gathered}
$$

- We have already seen the effect projective measurements can deduce the action of a spin operator on a state

$$
\hat{S}_{z}|\psi\rangle=\frac{\hbar}{2}\left[c_{\uparrow}|\uparrow\rangle-c_{\downarrow}|\downarrow\rangle\right]
$$

The right hand side is proportional to $|\psi\rangle$ itself in the case when either $c_{\downarrow}=0$ or $c_{\uparrow}=0$, i.e. they are eigenvectors of $S_{z}$ with eigenvalue $\pm \hbar / 2$. (i.e. by construction, they carry $\widehat{\operatorname{spin} \pm \hbar / 2)}$

- Hermitian operators have real eigenvalues and orthonormal eigenstates (see exercise).

$$
\begin{gathered}
\hat{H}\left|h_{i}\right\rangle=h_{i}\left|h_{i}\right\rangle \\
\left\langle h_{i}\right| \hat{H}=h_{i}\left\langle h_{i}\right| \\
\left\langle h_{i} \mid h_{j}\right\rangle=\delta_{i j}
\end{gathered}
$$

(assuming each eigenvalue $h_{i}$ appears only once.)

- The basis of eigenvectors of a given operator is called the eigenbasis, obviously in this basis this given operator is represented by a diagonal matrix.
- In addition to the expectation value of an observable one may also study its uncertainty (i.e. variance)

$$
\left\langle\Delta \hat{H}^{2}\right\rangle_{\psi}=\langle\psi|(\hat{H}-\langle\psi| \hat{H}|\psi\rangle)^{2}|\psi\rangle=\langle\psi| \hat{H}^{2}|\psi\rangle-\langle\psi| \hat{H}|\psi\rangle^{2}
$$

We can use the Schwarz inequality

$$
\langle\phi \mid \phi\rangle\langle\psi \mid \psi\rangle \geq|\langle\psi \mid \phi\rangle|^{2}
$$

with the identification $|\phi\rangle=\hat{H}|\psi\rangle$ to realize that

$$
\left\langle\Delta \hat{H}^{2}\right\rangle_{\psi} \geq 0
$$

and that the lower bound is saturated for eigenstates.
Charles Hermite (1822 - 1901), French mathematician, with contributions from number theory to algebra. Adviser of Henri Poincaré.
Wolfgang Pauli (1900-1958), Austrian (+ American and Swiss) theorist, Nobel laureate in 1945 for the Pauli exclusion principle. Student of Sommerfeld. Worked primarily in Zurich and in Princeton from 1940-1946. (Pauli was of Jewish descent and a foreigner whilst working in Zurich: after the Annexation of Austria, he held German citizenship).

# 3 The Hilbert space for a two level system 

- We are now ready to determine which subspace of $\mathbb{C}^{2}$ the space $\mathcal{H}$ for a spin $1 / 2$ particle actually corresponds to. For arbitrary $\binom{c_{\uparrow}}{c_{\downarrow}}$, i.e. 4 real numbers
- an overall phase can always be pulled out (it does not enter the observable quantities, i.e. expectation values)
- there is a normalization condition to unity
which means

$$
\binom{c_{\uparrow}}{c_{\downarrow}} \Rightarrow\binom{e^{i \phi / 2}\left|c_{\uparrow}\right|}{e^{-i \phi / 2}\left|c_{\downarrow}\right|} \Rightarrow\binom{e^{i \phi / 2} \cos (\theta / 2)}{e^{-i \phi / 2} \sin (\theta / 2)}
$$

Where $\phi \in[0,2 \pi), \theta \in[0, \pi]$ (the latter to ensure $\left|c_{\sigma}\right| \geq 0$ ).
Hence $\mathcal{H} \simeq \mathbb{S}^{2}$, the Blochsphere, see Fig. 1.3.

- On the Bloch sphere we see that the north pole corresponds to $\left|\uparrow\right\rangle$ and the south pole to $|\downarrow\rangle$. Analogously we see that eigenstates $|\rightarrow\rangle,|\leftarrow\rangle$ of $\hat{S}_{x}$ live on the equator. It's physically obvious that $\hat{S}_{x}$ eigenstates also form a perfectly fine basis for the space of state vectors. We thus introduce the notation of basis changes to

switch between eigenbases of different operators. A basis change is also encoded in an operator

$$
U:|\psi\rangle \mapsto U|\psi\rangle=\left|\psi^{\prime}\right\rangle
$$

and per definition should be probability conserving, i.e. $\langle\psi \mid \psi\rangle=1=\left\langle\psi^{\prime} \mid \psi^{\prime}\right\rangle=$ $\langle\psi| U^{\dagger} U|\psi\rangle$ for any $|\psi\rangle$. This implies unitarity of basis transformations, i.e.

$$
U^{\dagger} U=\mathbf{1}
$$

We also see that, for any orthonormal basis $\{|\sigma\rangle\}$, the corresponding rotated states $\left|\sigma^{\prime}\right\rangle \equiv U|\sigma\rangle$ are also orthonormal.

# 4 Qubits 

- Quantum mechanical two level systems do not only occur in nature, e.g. in silver atoms, but can also be engineered in solid state, photonic and cold-atomic artificial platforms. In this context
- ... the two-level-systems are called qubits and are the fundamental building blocks of quantum computers.
- ... the linear state-changing operations $U$ are called single-qubit-gates. Their effect is to controllably manipulate the information stored in a given qubit. It is known that any $U$ can be approximated to arbitrary precision by a concatenation of gates from the following finite set

$$
\begin{aligned}
U_{\text {Hadamard }} & =\frac{1}{\sqrt{2}}\left(\begin{array}{cc}
1 & 1 \\
1 & -1
\end{array}\right) \\
U_{\text {phase }} & =\left(\begin{array}{cc}
1 & 0 \\
0 & i
\end{array}\right) \\
U_{\pi / 8} & =\left(\begin{array}{cc}
1 & 0 \\
0 & e^{i \pi / 4}
\end{array}\right)
\end{aligned}
$$

Clearly $U_{\text {phase }}=U_{\pi / 8}^{2}$, so we only need to gates, Hadamard and $\pi / 8$, approximate any single-qubit-gate.

Felix Bloch (1905-1983), Swiss-American physicist, 1952 Nobel laureate "nuclear magnetic precision measurements", student of Heisenberg, contributed to quantum mechanics, nuclear physics and solid state physics. Left Europe in 1933 (Bloch was Jewish) for California (Stanford and Berkeley). Returned to Europe in 1950 as CERN's first director.

## 2 Angular Momentum

The Stern-Gerlach experiment is an experiment to measure quantized angular momentum, so we might as well think about that a bit more.

![img-7.jpeg](img-7.jpeg)

Figure 5: Illustration of the Hilbert space of a two-level system (the "Bloch sphere"). The basis of eigenstates in $x, y, z$ direction are explicitly illustrated, as well as the notation of basis transformation, which are essentially rotations on the sphere.

# 2.1 Algebra of angular momenta 

Summary of this section

- We summarize the nature of rotations in real space and reconsider the notion of non-commuting operations.
- We discuss the impact of rotations on state vectors describing a spin $1 / 2$ particle
- We "derive" the angular momentum algebra (Eq. (42) below).


### 2.1.1 Rotations of physical space

As angular momentum is related to rotating motion we first think about rotations.
Before returning to quantum mechanics, it is worthwhile to remember that the rotations of vectors in 3D physical space do not commute.

- Before doing any math, just take a stick or a book and rotate it first about a fixed and previously defined x axis and then z by $90^{\circ}$. Then reverse the operations of x and z operations. You will see the two operations don't commute.
- Mathematically, rotations in $\mathbb{R}^{3}$ in $x, y$ and $z$ axis are

$$
\begin{aligned}
& O_{x}=\left(\begin{array}{ccc}
1 & 0 & 0 \\
0 & \cos \left(\phi_{x}\right) & -\sin \left(\phi_{x}\right) \\
0 & \sin \left(\phi_{x}\right) & \cos \left(\phi_{x}\right)
\end{array}\right) \stackrel{\left|\phi_{x}\right| \ll 1}{\simeq} 1+\phi_{x} \underbrace{\left(\begin{array}{ccc}
0 & 0 & 0 \\
0 & 0 & -1 \\
0 & 1 & 0
\end{array}\right)}_{\mathcal{L}_{x}} \\
& O_{y}=\left(\begin{array}{ccc}
\cos \left(\phi_{y}\right) & 0 & \sin \left(\phi_{y}\right) \\
0 & 1 & 0 \\
-\sin \left(\phi_{y}\right) & 0 & \cos \left(\phi_{y}\right)
\end{array}\right) \stackrel{\left|\phi_{y}\right| \ll 1}{\simeq} 1+\phi_{y} \underbrace{\left(\begin{array}{ccc}
0 & 0 & 1 \\
0 & 0 & 0 \\
-1 & 0 & 0
\end{array}\right)}_{\mathcal{L}_{x}} \\
& O_{z}=\left(\begin{array}{ccc}
\cos \left(\phi_{z}\right) & -\sin \left(\phi_{z}\right) & 0 \\
\sin \left(\phi_{z}\right) & \cos \left(\phi_{z}\right) & 0 \\
0 & 0 & 1
\end{array}\right) \stackrel{\left|\phi_{z}\right| \ll 1}{\simeq} 1+\phi_{z} \underbrace{\left(\begin{array}{ccc}
0 & -1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 0
\end{array}\right)}_{\mathcal{L}_{z}}
\end{aligned}
$$

- Since rotations can be concatenated by subsequent application (i.e. matrix multiplication) and can be undone by a unique inverse operation, they form a Lie group (the matrix group of real, orthogonal 3x3 matrices is called $\mathrm{O}(3)$ ).
- We expanded the operations to leading order in $\phi_{x, y, z}$ and introduced the generators of (the Lie group of) rotations $\mathcal{L}_{x, y, z}$ with the defining (Lie) algebra

$$
\left[\mathcal{L}_{i}, \mathcal{L}_{j}\right]=\epsilon_{i j k} \mathcal{L}_{k}
$$

where $\epsilon_{i j k}$ is the Levi-Civita tensor (i.e. it is fully antisymmetric and $\epsilon_{x y z}=1$ ) and $[A, B] \equiv A B-B A$ is called the commutator.

- We employed the Einstein summation convention (will be employed throughout the lecture notes unless stated otherwise).


# 2.1.2 Rotations of basis states 

To rotate between various basis states, e.g.

$$
\begin{aligned}
|\uparrow\rangle & \simeq\binom{1}{0} \mapsto|\rightarrow\rangle \simeq \frac{1}{\sqrt{2}}\binom{1}{1} \\
|\downarrow\rangle & \simeq\binom{0}{1} \mapsto|\leftarrow\rangle \simeq \frac{1}{\sqrt{2}}\binom{1}{-1}
\end{aligned}
$$

one needs to perform unitary operations on the Hilbert space, cf. Fig. 1.3, i.e.

$$
\begin{aligned}
\hat{U}_{x} & =\left(\begin{array}{cc}
\cos \left(\phi_{x}\right) & i \sin \left(\phi_{x}\right) \\
i \sin \left(\phi_{x}\right) & \cos \left(\phi_{x}\right)
\end{array}\right) \stackrel{\left|\phi_{x}\right| \ll 1}{\simeq} 1+i \phi_{x} \sigma_{x} \\
\hat{U}_{y} & =\left(\begin{array}{cc}
\cos \left(\phi_{y}\right) & \sin \left(\phi_{y}\right) \\
-\sin \left(\phi_{y}\right) & \cos \left(\phi_{y}\right)
\end{array}\right) \stackrel{\left|\phi_{x}\right| \ll 1}{\simeq} 1+i \phi_{y} \sigma_{y} \\
\hat{U}_{z} & =\left(\begin{array}{cc}
\cos \left(\phi_{z}\right)+i \sin \left(\phi_{z}\right) & 0 \\
0 & \cos \left(\phi_{z}\right)-i \sin \left(\phi_{z}\right)
\end{array}\right) \stackrel{\left|\phi_{z}\right| \ll 1}{\simeq} 1+i \phi_{z} \sigma_{z}
\end{aligned}
$$

Mathematically, the Pauli matrices are the generators of the Lie group of complex, unitary $2 \times 2$ matrices and again we expanded the operations for infinitesimal $\phi_{x, y, z}$. The Pauli matrices form the Lie Algebra of the group of unitary $2 \times 2$ matrices (Left as homework assignment.)

$$
\left[\sigma_{i}, \sigma_{j}\right]=2 i \epsilon_{i j k} \sigma_{k}
$$

and is essentially the same as the one for generators of rotations, Eq. (37) (up to factors of $i$ and 2 that can be absorbed into redefinition of generators).

This is not by chance because the basis change in the Hilbert space is related to the redefinition of what we call $x, y, z$ measurement axis in real space.

# 2.1.3 Angular momentum algebra 

Motivated by this we define the abstract algebra of angular momentum operators $\hat{J}_{x, y, z}$ as

$$
\left[\hat{J}_{i}, \hat{J}_{j}\right]=i \hbar \epsilon_{i j k} \hat{J}_{k}
$$

Comments:

- We see that both the spin operators $\hat{S}_{i}=\hbar \sigma_{i} / 2$ and some redefined operators of rotation $\hat{L}_{i}=i \hbar \mathcal{L}_{i}$ fulfill this algebra.
- Of course, $\hat{J}_{i}$ are assumed to be Hermitian (indeed for the $\hat{S}_{i}, \hat{L}_{i}$ that's the case!), because angular momentum is a physical observable.
- But their matrix size is different: We will see later that they correspond to different representations of the same abstract algebra.

# 2.2 Basic properties of non-commuting operators 

Summary of this section:
Here we show for a general Hilbert space (not necessarily two dimensional):

- Observables whose associated operators commute are called compatible: their eigenstates display degeneracies (i.e. there are multiple eigenstates with the same eigenvalue).
- Non-commuting Hermitian operators cannot share an eigenbasis.


### 2.2.1 Compatible Observables: Commuting operators

- Consider two compatible observables, i.e. their corresponding Hermitian operators $\hat{A}, \hat{B}$ commute, $[\hat{A}, \hat{B}]=0$.
- Suppose $|a\rangle$ is an eigenvalue of $\hat{A}$ with eigenvalue $a$, i.e. $\hat{A}|a\rangle=a|a\rangle$.
- Then, $\hat{B}|a\rangle$ is also an eigenstate of $\hat{A}$ with eigenvalue $a$, because

$$
\hat{A}(\hat{B}|a\rangle)=\hat{B} \hat{A}|a\rangle=a \hat{B}|a\rangle
$$

- Hence,
- either $\hat{B}|a\rangle \propto|a\rangle$, i.e. $|a\rangle$ is also an eigenstate of $\hat{B}$ and we should write $|a, b\rangle$ instead of $|a\rangle$ with

$$
\begin{aligned}
& \hat{A}|a, b\rangle=a|a, b\rangle \\
& \hat{B}|a, b\rangle=b|a, b\rangle
\end{aligned}
$$

If there is more than one $b$ implies that there are multiple eigenstates of $\hat{A}$ with eigenvalue $a$ (i.e. there is a non-trivial degeneracy).

- or $\hat{B}|a\rangle \nsim|a\rangle$, which also implies multiple linearly independent $|a\rangle$.One may then employ a unitary operation in the subspace of $|a\rangle$ states to diagonalize $\hat{B}$ without affecting the property $\hat{A}|a\rangle=a|a\rangle$.
- We thus see that two commuting operators share (typically: degenerate) eigenstates.
- A complete set of commuting observables is a set of commuting operators $\hat{A}_{1}, \hat{A}_{2}, \ldots$ whose shared eigenstates $\left|a_{1}, a_{2}, \ldots\right\rangle$ form a basis of the full Hilbert space.

# 2.2.2 Incompatible Observables: Non-Commuting Operators 

- Consider incompatible observables corresponding to two non-commuting Hermitian operators $\hat{A}, \hat{B}$, such that $[\hat{A}, \hat{B}] \neq 0$.
- For any quantum state $|\psi\rangle$ the product of their variances is bounded from below (Heisenberg's uncertainty relation)

$$
\begin{aligned}
& \left\langle\Delta \hat{A}^{2}\right\rangle_{\psi}\left\langle\Delta \hat{B}^{2}\right\rangle_{\psi} \equiv\langle\psi| \Delta \hat{A}^{2}|\psi\rangle\langle\psi| \Delta \hat{B}^{2}|\psi\rangle \\
& \geq\left|\langle\psi| \underbrace{\Delta \hat{A} \Delta \hat{B}}_{2}|\psi\rangle\right|^{2} \\
& =\frac{1}{4}\left[|\langle\psi|[\hat{A}, \hat{B}]|\psi\rangle+\langle\psi|\{\Delta \hat{A}, \Delta \hat{B}\}|\psi\rangle\right]^{2}\right] \\
& \geq \frac{1}{4}|\langle\psi|[\hat{A}, \hat{B}]|\psi\rangle|^{2}
\end{aligned}
$$

- In the second line, the Schwarz inequality with states $\Delta \hat{A}|\psi\rangle, \Delta \hat{B}|\psi\rangle$ was used.
- In the last line we used that $\langle\psi|\{\Delta \hat{A}, \Delta \hat{B}\}|\psi\rangle=\langle\psi|\{\Delta \hat{A}, \Delta \hat{B}\}|\psi\rangle^{*}$ but $\langle\psi|[\hat{A}, \hat{B}]|\psi\rangle=$ $-\langle\psi|[\hat{A}, \hat{B}]|\psi\rangle^{*}$ so that the modulus of the sum is the sum of muduli, which is turn is bounded from below by one of the two moduli.
- Since the variance vanishes for eigenstates, incompatible eigenstates the Heisenberg uncertainty suggests do not share a set of eigenstates (i.e. they cannot be diagonalized simultaneously).
Proof by contradiction: Assume $\hat{A}$ and $\hat{B}$ don't commute but share a set of eigenstates. Then, in their shared eigenbasis both $\hat{A}$ and $\hat{B}$ are diagonal matrices. However diagonal matrices commute, which violates the assumption.
- An example for incompatible observables are $J_{x}$ and $J_{z}$ : In quantum mechanics it is impossible to simultaneously fix angular momentum in $\mathbf{x}$ and $\mathbf{z}$ direction!!

Werner Heisenberg (1901-1976), German theorist, Nobel prize in 1932 "for the creation of quantum mechanics" (notably the "Umdeutung" paper (1925), i.e. "matrix mechanics", for which the calculations were performed on the island of Heligoland in spring 1925 where Heisenberg tried to evade his severe hay fever.). Later head of the Uranverein (Nazicounterpart to the Manhatten project).

# 2.3 The angular momentum algebra and its representations 

In daily practice, quantum mechanics is about finding eigenstates and eigenvalues of Hermitian operators. Here we do that program for the first time, namely for the case of angular momentum.

Summary of this section:

- Starting from Eq. (42), we algebraically determine the structure of allowed eigenvalues and eigenstates of angular momentum operators (the final result is Eq. (62) below).
- This corresponds to the various "representations" of the abstract angular momentum algebra.
- Physically, the variuos different representations correspond to particles with different spin $j=0, j=1 / 2, j=1, \ldots$.
(A representation of an algebra is a map between the abstract algebra and the space of matrices which encodes the abstract algebraic structure in the commutation relations of the matrices. Depending on the matrix size, different representations for the same algebra are possible.)
- We saw that $\hat{J}_{x, y, z}$ cannot all be diagonalized together.
- However $\hat{\vec{J}}^{2}$ does commute with any $\hat{J}_{i}$

$$
\sum_{i}\left[\hat{J}_{i}^{2}, \hat{J}_{j}\right]=\sum_{i} \hat{J}_{i}\left[\hat{J}_{i}, \hat{J}_{j}\right]+\sum_{i}\left[\hat{J}_{i}, \hat{J}_{j}\right] \hat{J}_{i}=i \hbar \sum_{i, k} \underbrace{\varepsilon_{i j k}}_{\substack{\text { antisymmetricsymmetric } \\ \text { in } i \leftrightarrow k}} \underbrace{\left\{\hat{J}_{i}, \hat{J}_{k}\right\}}_{\text {in } i \leftrightarrow k}=0
$$

We used that the contraction of an antisymmetric tensor with a symmetric tensor vanishes.

- As $\hat{\vec{J}}^{2}$ and one of the $\hat{J}_{i}$, e.g. $\hat{J}_{z}$, form a complete set of commuting operators, we use their eigenstates $|\lambda, m\rangle$ as an orthonormal basis

$$
\begin{aligned}
& \hat{\vec{J}}^{2}|\lambda, m\rangle=\hbar^{2} \lambda|\lambda, m\rangle \\
& \hat{J}_{z}|\lambda, m\rangle=\hbar m|\lambda, m\rangle
\end{aligned}
$$

Here, powers of $\hbar$ have been pulled out from the eigenvalues for dimensional reasons so that $\lambda, m \in \mathbb{R}$ are dimensionless and real (the latter because $\hat{\vec{J}}^{2}, \hat{J}_{z}$ are Hermitian).

- Clearly $\lambda \geq 0$ since

$$
0 \leq \sum_{i=x, y, z}\left\|\hat{J}_{i}|\lambda, m\rangle\right\|^{2}=\langle\lambda, m| \hat{\vec{J}}^{2}|\lambda, m\rangle=\hbar^{2} \lambda
$$

- For a given $\lambda$, the $m$ values are limited to $m^{2}<\lambda$ since

$$
\begin{aligned}
0 & \leq\langle\lambda, m| \hat{J}_{x}^{2}+\hat{J}_{y}^{2}|\lambda, m\rangle \\
& =\langle\lambda, m| \hat{\vec{J}}^{2}-\hat{J}_{z}^{2}|\lambda, m\rangle \\
& =\hbar^{2}\left(\lambda-m^{2}\right)
\end{aligned}
$$

- Our next task is to find out which $m^{2}<\lambda$ are compatible with the angular momentum algebra.
- To this end we introduce raising/lowering operators

$$
\begin{aligned}
\hat{J}_{ \pm} & =\hat{J}_{x} \pm i \hat{J}_{y} \\
{\left[\hat{J}_{z}, \hat{J}_{ \pm}\right] } & =i \hbar\left(\hat{J}_{y} \mp i \hat{J}_{x}\right)= \pm \hbar \hat{J}_{ \pm}
\end{aligned}
$$

- We find

$$
\begin{aligned}
\hat{J}_{z}\left(\hat{J}_{ \pm}|\lambda, m\rangle\right) & =\hat{J}_{ \pm} J_{z}|\lambda, m\rangle+\left[\hat{J}_{z}, \hat{J}_{ \pm}\right]|\lambda, m\rangle \\
& =\hbar m \hat{J}_{ \pm}|\lambda, m\rangle \pm \hbar \hat{J}_{ \pm}|\lambda, m\rangle \\
& =\hbar(m \pm 1)\left(\hat{J}_{ \pm}|\lambda, m\rangle\right)
\end{aligned}
$$

i.e. $\hat{J}_{ \pm}|\lambda, m\rangle \propto|\lambda, m \pm 1\rangle$, hence the name raising lowering operator (the coefficient of proportionality will be determined in the exercises).

- For given $\lambda$, let's consider the highest weight state $\left|\lambda, m_{\max }\right\rangle$, i.e. the state with maximal possible $m_{\max } \in[-\sqrt{\lambda}, \sqrt{\lambda}]$. Since it's maximal, by definition

$$
\hat{J}_{+}\left|\lambda, m_{\max }\right\rangle=0
$$

Analogously we consider the lowest weight state

$$
\hat{J}_{-}\left|\lambda, m_{\min }\right\rangle=0
$$

with minimal $m_{\min } \in[-\sqrt{\lambda}, \sqrt{\lambda}]$ for given $\lambda$.

- We apply

$$
\hat{J}_{ \mp} \hat{J}_{ \pm}=\hat{\vec{J}}^{2}-\hat{J}_{z}^{2} \mp \hbar \hat{J}_{z}
$$

to highest and lowest weight states

$$
\begin{aligned}
& 0=\hat{J}_{-} \hat{J}_{+}\left|\lambda, m_{\max }\right\rangle=\hbar^{2}\left(\lambda-m_{\max }^{2}-m_{\max }\right)\left|\lambda, m_{\max }\right\rangle \\
& 0=\hat{J}_{+} \hat{J}_{-}\left|\lambda, m_{\min }\right\rangle=\hbar^{2}\left(\lambda-m_{\min }^{2}+m_{\min }\right)\left|\lambda, m_{\min }\right\rangle
\end{aligned}
$$

Thus we get two expression for $\lambda$ that we can equate

$$
\begin{aligned}
m_{\max }^{2}+m_{\max } & =\lambda=m_{\min }^{2}-m_{\min } \\
\stackrel{m_{\min } \leq m_{\max }}{=} m_{\max } & =-m_{\min }
\end{aligned}
$$

We will henceforth use the notation $m_{\max }=j$

- We further know that $J_{-}$lowers $m$ in steps of 1 , hence $m_{\max }-m_{\min } \in \mathbb{N}_{0} \Rightarrow$ $2 j \in \mathbb{N}_{0}$.

Summary: We found that all eigenstates $|j, m\rangle$

$$
\begin{aligned}
& \hat{\vec{J}}^{2}|j, m\rangle=\hbar^{2} j(j+1)|j, m\rangle \\
& \hat{J}_{z}|j, m\rangle=\hbar m|j, m\rangle
\end{aligned}
$$

(Note that we have switched the notation for the first entry of the ket) of angular momenta are categorized in groups of orbital/azimuthal quantum number $j \in \mathbb{N}_{0} / 2=\{0,1 / 2,1,3 / 2, \ldots\}$ and magnetic quantum number $m=-j,-j+1, \ldots, j-1, j$ takes $2 j+1$. values for a given $j$.

- thus there are quantum mechanical particles with integer and half-odd-integer angular momentum.
- The silver atoms of the Stern-Gerlach experiments are of the simplest, non-trivial (i.e. $j \neq 0$ ) type: $j=1 / 2$.
- We have also encountered the first examples where the Hilbert-space is larger than two-dimensional.
- The rotation matrices $\hat{L}_{i}$ discussed just after Eq. (42), correspond to the spin-1 (or angular-momentum-1) representation.


# 3 Time evolution and Schrödinger equation 

Time evolution plays a crucial role in non-relativistic classical (= non-quantum) physics as we will see this is in particular true for quantum mechanics as we can use it to motivate Schrödinger's equation.

# 3.1 Quantization as an eigenvalue problem 

Summary of this section:

- We motivate the Schrödinger equation, Eq. (66)..
- ...and from there switch to the time independent Schrödinger equation, Eq. (69).
- Consider a state $|\psi(t)\rangle$ that has evolved from an initial state $|\psi(0)\rangle$. Since both adhere to the same Hilbertspace we can write

$$
|\psi(t)\rangle=\hat{U}(t)|\psi(0)\rangle
$$

where $\hat{U}(t)$ is unitary and called time evolution operator

- Just as for rotations discussed above, Eqs. (36),(40), we may expand w.l.o.g. for small $d t$

$$
\hat{U}(d t) \simeq \mathbf{1}-i \hat{H} d t / \hbar
$$

where $\hat{H}$ is Hermitian and has dimensions of energy (since we decided to pull out $\hbar$ ) and called the Hamiltonian. It is system specific and may itself depend on time.

- The concatenation of $\hat{U}(d t)$ allows to reach the final state $|\psi(t)\rangle$ and hence $\hat{U}(t+d t)=$ $\hat{U}(d t) \hat{U}(t)$
- To this end, we derive a differential equation by using

$$
\hat{U}(t+d t)-\hat{U}(t)=(1-i \hat{H}(t) d t / \hbar) \hat{U}(t)-\hat{U}(t)=-i \hat{H}(t) d t \hat{U}(t) / \hbar
$$

Defining the derivative of an operator as $\lim _{d t \rightarrow 0}[\hat{U}(t+d t)-\hat{U}(t)] / d t$ we find

$$
i \hbar \frac{d}{d t} \hat{U}(t)=\hat{H}(t) \hat{U}(t) \Leftrightarrow i \hbar \frac{d}{d t}|\psi(t)\rangle=\hat{H}(t)|\psi(t)\rangle
$$

- This equation is the Schrödinger equation, it is central to quantum mechanics. Note the key features
$-\hbar$ : It's about QM!
- $i$ : Complex numbers are central in QM!
- $d / d t$ : a differential equation describing the evolution of the state (just as $m d^{2} x / d t^{2}=$ $F$ describes the classical evolution of a classical partical)
- It's valid for any $|\psi\rangle$, so it relates $i \hbar d / d t$ to $\hat{H}$, the energy. Since $[i \hbar d / d t, t]=i \hbar$ :

* energy and time are conjugate
* there is a Heisenberg uncertainty relation $\Delta E \Delta t \geq \hbar / 2$. (see exercise)
- Consider an operator $\hat{O}(t)$. Its expectation value changes in time as (we use $|\psi\rangle=$ $|\psi(t=0)\rangle)$

$$
\begin{aligned}
\frac{d}{d t}\langle\psi(t)| \hat{O}(t)|\psi(t)\rangle & =\left(\frac{d}{d t}\langle\psi(t)|\right) \hat{O}(t)|\psi(t)\rangle \\
& +\langle\psi(t)|\left(\frac{d}{d t} \hat{O}(t)\right)|\psi(t)\rangle \\
& +\langle\psi(t)| \hat{O}(t)\left(\frac{d}{d t}|\psi(t)\rangle\right) \\
& =-i\langle\psi(t)|[\hat{O}(t), \hat{H}(t)]|\psi(t)\rangle / \hbar+\langle\psi(t)|\left(\frac{d}{d t} \hat{O}(t)\right)|\psi(t)\rangle
\end{aligned}
$$

In the case of time-independent operators, the last term drops and only the commutator remains $\Rightarrow$ Expection values of operators which are compatible with the Hamiltonian do not change in time!

- If the Hamiltonian $\hat{H}$ is itself independent of time, one may solve the Schrödinger equation with the Ansatz (to make this statement more precise we have to review Fourier decomposition, see part II)

$$
|\psi(t)\rangle=e^{-i E t / \hbar}\left|\Psi_{E}\right\rangle
$$

if $\left|\Psi_{E}\right\rangle$ is an eigenstate of $\hat{H}$, i.e. it fulfills the time-independent Schrödinger equation

$$
\hat{H}\left|\psi_{E}\right\rangle=E\left|\psi_{E}\right\rangle
$$

- In the case of the time independent Hamiltonian, the solution for the time evolution operator based on Eq. (66) is

$$
U(t)=e^{-i \hat{H} t / \hbar}
$$

- The physical energy of the system in state $|\psi\rangle$ is identified with the expectation value $\langle\psi| \hat{H}|\psi\rangle$.
- By construction, the energy sets the frequency at which eigenstates of $\hat{H}$ oscillate in time.

Sir William Rowan Hamilton (1805-1865), Irish Mathematician, Physicist, Astronomer. Major contributions to classical analytical mechanics and algebra ( $\rightarrow$ quaternions).

Erwin Schrödinger (1887-1961), Austrian-Irish theorist, won the Nobel prize in 1933 for his fundamental work on quantum mechanics. Discovered the Schrödinger wave-equation

during his Christmas vacation 1925 in the Swiss Alps. Left continental Europe (his last position was in Graz, Austria) due to his political opposition to the Nazi regime in 1938 and moved to Dublin.

Summary of this section:

- Time evolution of expectation values of operators
- Precession of spin
- Rotations by $2 \pi$ change the sign of the wave-functions of spin $1 / 2$ particles
- The Magnetic resonance illustrates features of driven quantum systems


# 3.1.1 Time evolution of operators and precession in quantum mechanics 

- Let's return to the problem of a particle in a magnetic field, for which the Hamiltonian is

$$
\hat{H}=g \mu_{B} \hat{\vec{J}} \cdot \hat{\vec{B}} / \hbar
$$

where $\mu_{B}=e \hbar /(2 m c)$ is the Bohr magneton and the $g$-factor is $g=2$ for spin- $1 / 2$ particles (but $g=1$ for Bohr's original theory of quantized orbital motion).

- W.l.o.g, consider time indepent $\hat{\vec{B}}\left\|\hat{e}_{z}\right.$, and use the previously determined basis $|j, m\rangle$ in which

$$
\left(\hat{J}_{z}\right)_{m, m^{\prime}}=\hbar\left(\begin{array}{cccc}
j & 0 & \ldots & \\
0 & j-1 & 0 & \vdots \\
\vdots & 0 & \ddots & 0 \\
& \ldots & 0 & -j
\end{array}\right)_{m, m^{\prime}}
$$

- Energy eigenstates thus correspond to $\hat{J}_{z}$ eigenstates and, using $\omega_{0}=g \mu_{B} B / \hbar$ (Larmor frequency)

$$
\hat{U}(t)|j, m\rangle=e^{-i m \omega_{0} t}|j, m\rangle
$$

In this basis it is clear that $\hat{U}(t)=\operatorname{diag}\left(e^{-i j \omega_{0} t}, e^{-i(j-1) \omega_{0} t}, \ldots, e^{i j \omega_{0} t}\right)$. and that

$$
\hat{J}_{ \pm} \hat{U}(t)=e^{ \pm i \omega_{0} t} \hat{U}(t) \hat{J}_{ \pm}
$$

(to understand, conentrate on $\hat{J}_{+}$. On the LHS, the states on which $\hat{U}$ acts have one step lower $m$ eigenvalue than on the RHS)

![img-8.jpeg](img-8.jpeg)

Figure 6: Illustration of precession: Time evolution of angular momenta, semiclassical representation of quantized angular momenta.

- Now consider a state which is initialized in positive x direction, i.e. $\hat{J}_{x}|\psi(0)\rangle=$ $\hbar j|\psi(0)\rangle \rightarrow\langle\psi(0)| \hat{J}_{y, z}|\psi(0)\rangle=0$. Then

$$
\begin{aligned}
\langle\psi(t)| \hat{J}_{x}|\psi(t)\rangle & =\frac{1}{2}\langle\psi(0)| \hat{U}^{\dagger}(t)\left[\hat{J}_{+}+\hat{J}_{-}\right] \hat{U}(t)|\psi(0)\rangle \\
& =\frac{1}{2}\langle\psi(0)| e^{i \omega_{0} t} \hat{J}_{+}+e^{-i \omega_{0} t} \hat{J}_{-}|\psi(0)\rangle=\hbar j \cos \left(\omega_{0} t\right) \\
\langle\psi(t)| \hat{J}_{y}|\psi(t)\rangle & =\frac{1}{2 i}\langle\psi(0)| \hat{U}^{\dagger}(t)\left[\hat{J}_{+}-\hat{J}_{-}\right] \hat{U}(t)|\psi(0)\rangle \\
& =\frac{1}{2 i}\langle\psi(0)| e^{i \omega_{0} t} \hat{J}_{+}-e^{-i \omega_{0} t} \hat{J}_{-}|\psi(0)\rangle=\hbar j \sin \left(\omega_{0} t\right) \\
\langle\psi(t)| \hat{J}_{z}|\psi(t)\rangle & =\langle\psi(0)| \hat{J}_{z}|\psi(0)\rangle=0
\end{aligned}
$$

Thus the spin $j$ rotates with the Larmor frequency. For illustration see Fig. 3.1.1
Joseph Larmor (1857 - 1942), Irish physicist, prominent contributions to electromagnetism and Aether theory (published a state-of-the-art book in 1900 on that matter, just 5 years before Einstein's special relativity theory!)

# 3.1.2 Rotation of $2 \pi$ of spin $1 / 2$ particles: Acquisition of a phase $\pi$. 

The phase accumulated by a state $|j, m\rangle$ in the time of one spin rotation $t=2 \pi / \omega_{0}$ is $m \omega_{0} t=2 \pi m$, cf Eq. (73). Thus the phase is $\pi$ for $m=1 / 2$, i.e. the state does not return back to itself (but rather to the opposite state vector).

To check this, one may consider the setup as in Fig. 3.1.2 [adapted from Townsend's book, original experiment by Werner et al, PRL 35, 1053 (1975)]

![img-9.jpeg](img-9.jpeg)

Figure 7: a)Setup for the interference experiment to check the phase accumulated by neutron wavefunctions under precession. b) Oscillation of precession [adapted from Townsend's book]

- Consider a neutron beam hitting a beam splitter at position A, so that the two beams go through two paths (ABD or ACD) before recombining
- The path ACD has additional magnetic field $B_{0}$ so that the neutron wave functions acquire an additional phase along that trajectory.
- The distance between maxima, $\Delta B=62 \pm 2 G s$ in the interference pattern, Fig. 3.1.2 b), can be directly compared to the Larmor frequency and, by comparison, experimentally demonstrates the acquisition of phase difference $\omega_{0} t / 2$.


# 3.1.3 Rabi Oscillations (magnetic resonance) 

Now we study the simplest time-dependent system: a driven spin in a field. This problem describes magnetic resonance (as it occurs, e.g. in MRI (magnetic resonance imagining)),for illustration see 3.1.3.

For simplicity we consider $S=1 / 2$ particles and ask how to measure their splitting in a magnetic field $B_{z} \hat{e}_{z}$. To this end we add a second magnetic field $B_{x} \cos (\omega t) \hat{e}_{x}$, i.e.

![img-10.jpeg](img-10.jpeg)

Figure 8: Illustration of magnetic resonance.

$$
\begin{aligned}
H(t) & =g \mu_{B} \hat{S} \cdot\left[B_{z} \hat{e}_{z}+B_{x} \cos (\omega t) \hat{e}_{x}\right] / \hbar \\
& =\omega_{0} \hat{S}_{z}+\omega_{1} \cos (\omega t) \hat{S}_{x}
\end{aligned}
$$

where $\omega_{1}=g \mu_{B} B_{x} / \hbar$.
Using the eigenbasis of $\hat{S}_{z}$ and $|\psi(t)\rangle=(a(t), b(t))^{T}$ the Schrödinger equation becomes

$$
i\binom{\dot{a}}{b}=\frac{1}{2}\left(\begin{array}{cc}
\omega_{0} & \omega_{1} \cos (\omega t) \\
\omega_{1} \cos (\omega t) & -\omega_{0}
\end{array}\right)\binom{a}{b}
$$

To approximately solve this, we consider the limit $\omega_{0} \gg \omega_{1}$ and switch to co-moving frame (i.e. the frame which is imposed by the precession of the constant field)

$$
\begin{aligned}
\binom{a(t)}{b(t)} & =\binom{e^{-i \omega_{0} t / 2} c(t)}{e^{i \omega_{0} t / 2} d(t)} \\
\Rightarrow i\binom{\dot{a}}{b} & =\binom{e^{-i \omega_{0} t}\left(\omega_{0}+i \frac{d}{d t}\right) c(t)}{e^{i \omega_{0}}\left(-\omega_{0}+i \frac{d}{d t}\right) d(t)} \\
& =\frac{\omega_{0}}{2} \sigma_{z}\binom{a}{b}+i e^{-i \omega_{0} t \sigma_{z} / 2}\binom{\dot{c}}{d}
\end{aligned}
$$

so that

$$
\begin{aligned}
i\binom{\dot{c}}{d} & =\frac{1}{2}\left(\begin{array}{cc}
0 & e^{i \omega_{0} t} \omega_{1} \cos (\omega t) \\
e^{-i \omega_{0} t} \omega_{1} \cos (\omega t) & 0
\end{array}\right)\binom{c}{d} \\
& =\frac{\omega_{1}}{4}\binom{\left[e^{i\left(\omega_{0}+\omega\right) t}+e^{i\left(\omega_{0}-\omega\right) t}\right] d}{\left[e^{i\left(-\omega_{0}+\omega\right) t}+e^{-i\left(\omega_{0}+\omega\right) t}\right] c}
\end{aligned}
$$

Approximate solution for wave function for $\omega=\omega_{0}$. The response occurs when the driving frequency is at resonance $\omega_{0}$. There are two contribution on the RHS

- a slowly oscillating one with frequency $\omega-\omega_{0}=0$
- a quickly oscillating one with frequency $\omega+\omega_{0}$

We here concentrate on solutions which are slowly rotating, i.e. drop fast rotations. Then, under the boundary condition $|\psi(0)\rangle=|\uparrow\rangle$,

$$
\begin{gathered}
\ddot{c}=-\omega_{1}^{2} c / 16 \Rightarrow c(t)=\cos \left(\omega_{1} t / 4\right) \\
d=i 4 \dot{c} / \omega_{1}=-i \sin \left(\omega_{1} t / 4\right)
\end{gathered}
$$

Using $|\psi\rangle=(a, b)^{T}$ we thus see that

$$
\begin{aligned}
\left\langle S_{x}\right\rangle(t) & =\hbar\left[c^{*} d e^{i \omega_{0} t}+d^{*} c e^{-i \omega_{0} t}\right] / 2 \\
& =\hbar \cos \left(\omega_{1} t / 4\right) \sin \left(\omega_{1} t / 4\right) \sin \left(\omega_{0} t\right)=\frac{\hbar}{2} \sin \left(\omega_{1} t / 2\right) \sin \left(\omega_{0} t\right) \\
\left\langle S_{y}\right\rangle(t) & =-i \hbar\left[c^{*} d e^{i \omega_{0} t}-d^{*} c e^{-i \omega_{0} t}\right] / 2 \\
& =-\hbar \cos \left(\omega_{1} t / 4\right) \sin \left(\omega_{1} t / 4\right) \cos \left(\omega_{0} t\right)=\frac{\hbar}{2} \sin \left(\omega_{1} t / 2\right) \cos \left(\omega_{0} t\right) \\
\left\langle S_{z}\right\rangle(t) & =\hbar\left[|c(t)|^{2}-|d(t)|^{2}\right] / 2 \\
& =\hbar \frac{\cos \left(\omega_{1} t / 4\right)^{2}-\sin \left(\omega_{1} t / 4\right)^{2}}{2}=\frac{\hbar}{2} \cos \left(\omega_{1} t / 2\right)
\end{aligned}
$$

Hence, $\omega_{1}$ sets the frequency at which the $S_{z}$ magnetization switches. In the presence of finite $\omega_{1}$, the $x$ and $y$ components are also non-zero, but they also move rapidly at frequency $\omega_{0}$.

# 3.2 Time independent perturbation theory 

Consider a Hamiltonian $\left(\hat{H}_{0,1}\right.$ Hermitian, $\left.\lambda \in \mathbb{R}\right)$

$$
\hat{H}(\lambda)=\hat{H}_{0}+\lambda \hat{H}_{1}
$$

which might be too compicated to diagonalize, but we will assume that we know how to diagonalize $\hat{H}_{0}$.

Clearly, both energy levels and eigenfunctions depend on $\lambda$, i.e. the time-independent Schrödinger equation is

$$
\hat{H}(\lambda)\left|\psi_{n}(\lambda)\right\rangle=E_{n}(\lambda)\left|\psi_{n}(\lambda)\right\rangle
$$

Summary of this section:

- We explicitely expand $E(\lambda),\left|\Psi_{E}(\lambda)\right\rangle$ in $\lambda$ (just as in a Taylor series)...
- ...by calculating the leading corrections to both $E(\lambda)$ and $\left|\psi_{E}(\lambda)\right\rangle$ beyond the $\lambda \rightarrow 0$ limit.
[N.b.: There are instances of quantum systems where perturbation theory breaks down, i.e. radius of convergence is zero (coefficients of Taylor series explode).]


### 3.2.1 Non-degenerate perturbation theory

For the eigenvalues and eigenvectors of $\hat{H}_{0}$ we use the notation

$$
\hat{H}_{0}\left|\psi_{n}^{(0)}\right\rangle=E_{n}^{(0)}\left|\psi_{n}^{(0)}\right\rangle
$$

We here assume that all $\left|\psi_{n}^{(0)}\right\rangle$ are non-degenerate. We then see that

$$
\begin{aligned}
E_{n}(\lambda) & =E_{n}^{(0)}+\lambda E_{n}^{(1)}+\lambda^{2} E_{n}^{(2)}+\ldots \\
\left|\psi_{n}(\lambda)\right\rangle & =\left|\psi_{n}^{(0)}\right\rangle+\lambda\left|\psi_{n}^{(1)}\right\rangle+\lambda^{2}\left|\psi_{n}^{(2)}\right\rangle+\ldots
\end{aligned}
$$

We plug this Ansatz into the Schrödinger equation (91)

$$
\begin{aligned}
& \left(\hat{H}_{0}+\lambda \hat{H}_{1}\right)\left[\left|\psi_{n}^{(0)}\right\rangle+\lambda\left|\psi_{n}^{(1)}\right\rangle+\lambda^{2}\left|\psi_{n}^{(2)}\right\rangle+\ldots\right] \\
& =\left[E_{n}^{(0)}+\lambda E_{n}^{(1)}+\lambda^{2} E_{n}^{(2)}+\ldots\right]\left[\left|\psi_{n}^{(0)}\right\rangle+\lambda\left|\psi_{n}^{(1)}\right\rangle+\lambda^{2}\left|\psi_{n}^{(2)}\right\rangle+\ldots\right]
\end{aligned}
$$

We now sort terms order by order in $\lambda$ and will solve iteratively in orders of $\lambda$. We find

$$
\begin{array}{ll}
\mathcal{O}\left(\lambda^{0}\right): & \hat{H}_{0}\left|\psi_{n}^{(0)}\right\rangle=E_{n}^{(0)}\left|\psi_{n}^{(0)}\right\rangle \\
\mathcal{O}\left(\lambda^{1}\right): & \hat{H}_{0}\left|\psi_{n}^{(1)}\right\rangle+\hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle=E_{n}^{(0)}\left|\psi_{n}^{(1)}\right\rangle+E_{n}^{(1)}\left|\psi_{n}^{(0)}\right\rangle \\
\mathcal{O}\left(\lambda^{2}\right): & \hat{H}_{0}\left|\psi_{n}^{(2)}\right\rangle+\hat{H}_{1}\left|\psi_{n}^{(1)}\right\rangle=E_{n}^{(0)}\left|\psi_{n}^{(2)}\right\rangle+E_{n}^{(1)}\left|\psi_{n}^{(1)}\right\rangle+E_{n}^{(2)}\left|\psi_{n}^{(0)}\right\rangle
\end{array}
$$

- $\mathcal{O}\left(\lambda^{1}\right)$ terms:
- We first remark that $\left|\psi_{n}^{(1)}\right\rangle=i a\left|\psi_{n}^{(0)}\right\rangle, a \in \mathbb{R}$ because

$$
\begin{aligned}
1 & =\left\langle\psi_{n} \mid \psi_{n}\right\rangle \\
& =\left[\left\langle\psi_{n}^{(0)}\right|+\lambda\left\langle\psi_{n}^{(1)}\right|+\ldots\right]\left[\left|\psi_{n}^{(0)}\right\rangle+\lambda\left|\psi_{n}^{(1)}\right\rangle+\ldots\right] \\
& =1+\lambda\left[\left\langle\psi_{n}^{(1)} \mid \psi_{n}^{(0)}\right\rangle+\left\langle\psi_{n}^{(0)} \mid \psi_{n}^{(1)}\right\rangle\right]+\mathcal{O}\left(\lambda^{2}\right)
\end{aligned}
$$

- We next multiply the $\mathcal{O}\left(\lambda^{1}\right)$ line Eq. (96b) by $\left\langle\psi_{m}^{(0)}\right|$ and use orthonormality of the eigenstates of $\hat{H}_{0}$

$$
\begin{aligned}
\left\langle\psi_{m}^{(0)}\right| \hat{H}_{0}\left|\psi_{n}^{(1)}\right\rangle & +\left\langle\psi_{m}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle=E_{n}^{(0)}\left\langle\psi_{m}^{(0)} \mid \psi_{n}^{(1)}\right\rangle+E_{n}^{(1)}\left\langle\psi_{m}^{(0)} \mid \psi_{n}^{(0)}\right\rangle \\
& \Rightarrow\left\langle\psi_{m}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle=\delta_{n m} E_{n}^{(1)}+\left[E_{n}^{(0)}-E_{m}^{(0)}\right]\left\langle\psi_{m}^{(0)} \mid \psi_{n}^{(1)}\right\rangle
\end{aligned}
$$

- This has two implications
* Set $n=m$ : The first order correction to energy is

$$
E_{n}^{(1)}=\left\langle\psi_{n}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle
$$

i.e. by the expectation value of the perturbation w.r.t to the eigenstate of unperturbed Hamiltonian

* Set $n \neq m$ : We can read off the coefficients $\left\langle\psi_{m}^{(0)} \mid \psi_{n}^{(1)}\right\rangle$ of the series expansion of $\left|\psi_{n}^{(1)}\right\rangle$ in the basis vectors $\left|\psi_{n}^{(0)}\right\rangle$ :

$$
\left|\psi_{n}^{(1)}\right\rangle=i a\left|\psi_{n}^{(0)}\right\rangle+\sum_{m \neq n}\left|\psi_{m}^{(0)}\right\rangle \frac{\left\langle\psi_{m}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle}{E_{n}^{(0)}-E_{m}^{(0)}}
$$

$-\mathcal{O}\left(\lambda^{2}\right)$ terms :

* We here only want to to find out the energy correction to second order.

![img-11.jpeg](img-11.jpeg)

Figure 9: Comparison of numerical solution (black) and perturbation theory (orange, dashed) for Eq. (102) (energy in units of $\hbar B$ ).

* To this end, multiply Eq. (96c) with $\left\langle\psi_{n}^{(0)}\right|$ from the left.

$$
\begin{aligned}
\left\langle\psi_{n}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(1)}\right\rangle & =E_{n}^{(1)}\left\langle\psi_{n}^{(0)}\right| \psi_{n}^{(1)}\rangle+E_{n}^{(2)} \\
\Rightarrow E_{n}^{(2)} & =\left\langle\psi_{n}^{(0)}\right|\left[\hat{H}_{1}-E_{n}^{(1)}\right]\left[\underbrace{i a\left|\psi_{n}^{(0)}\right\rangle}_{\text {vanishing contribution }}+\sum_{m \neq n}\left|\psi_{m}^{(0)}\right\rangle \frac{\left\langle\psi_{m}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle}{E_{n}^{(0)}-E_{m}^{(0)}}\right] \\
& =\sum_{m \neq n} \frac{\left|\left\langle\psi_{m}^{(0)}\right| \hat{H}_{1}\left|\psi_{n}^{(0)}\right\rangle\left.\right|^{2}}{E_{n}^{(0)}-E_{m}^{(0)}}
\end{aligned}
$$

* If $n$ is the label of the ground state we find that the second order correction is always negative!


# 3.2.2 Exemplary calculation 

Consider a Hamiltonian of a spin-1 particle with

$$
\hat{H}=B \hat{L}_{z}+\Gamma\left[\left\{\hat{L}_{z}, \hat{L}_{x}\right\}+\hat{L}_{y}^{2}\right] \quad\left(\hat{L}_{x, y, z} \text { spin-1 operators }\right)
$$

which could for example occur for atoms with spin-1 in a crystal field.
In the mathematica notebook "PertTheory.nb" we compare numerical calculation and perturbation theory in $\gamma=\hbar \Gamma / B \ll 1$, see Fig. 9

# 3.2.3 Degenerate perturbation theory 

The situation is more subtle if the eigenstates $\left|\psi_{n, i}^{(0)}\right\rangle$ of $\hat{H}_{n}^{(0)}$ are degenerate (we use the label $i$ for the extra degeneracy). Leaving details to the textbooks (e.g. Townsend Chapt. 11.3) We summarize the main aspects

- The first order energy $E_{n, i}^{(1)}$ correction is $i$ dependent and obtained from diagonalizing $\hat{H}_{1}$ in the subspace of $\left|\psi_{n, i}^{(0)}\right\rangle$, i.e. diagonalization of

$$
\left\langle\psi_{n, i}^{(0)}\right| \hat{H}_{1}\left|\psi_{n, j}^{(0)}\right\rangle
$$

- This effectively fixes the naively occurring zeros in denominators containing energy differences.


## 4 More than one particle: Entanglement

Until now, the entire lecture course was devoted to problems involving a single quantum mechanical particle (e.g. a single spin) without any type of interaction between various particles. Here we no switch to few-body effects, beginning with the interaction of two (or few) spins.

Most crucially, quantum mechanical entanglement is a unique property of 2 or more quantum mechanical particles - there is no classical analogue and it led to several philosophical puzzles, such as the Einstein-Rosen-Podolsky Paradoxon covered in Sec. 4.3.

### 4.1 Addition of angular momenta

Summary of this section: Here, for the first time in this course, we consider more than one quantum particle:

- For two spins $\hat{\vec{J}}^{(1)}, \hat{\vec{J}}^{(2)}$, with respective orbital angular momentum quantum number $j_{1}, j_{2}, \ldots$
- ... the representations $j$ of total angular momentum $\hat{\vec{J}}=\hat{\vec{J}}_{1}+\hat{\vec{J}}_{2}$, are

$$
j=\left|j_{1}-j_{2}\right|,\left|j_{1}-j_{2}\right|+1, \ldots,\left|j_{1}+j_{2}\right|
$$

# 4.1.1 Hilbert space of 2 particles $=$ Direct product of single-particle Hilbert spaces 

On Exercise Sheet 1, we reviewed the concept of the direct product of Hilbert spaces. This is exploited for the combined Hilbert space of 2 particles $\mathcal{H}$, which is the direct product of single particle Hilbert spaces, i.e. $\mathcal{H}=\mathcal{H}^{(1)} \otimes \mathcal{H}^{(2)}$,

- Let $\left|j_{1}, m_{1}\right\rangle \in \mathcal{H}^{(1)},\left|j_{2}, m_{2}\right\rangle \in \mathcal{H}^{(2)}$ basis states of Hilbertspaces of each of the two single spins.
- Then $\left|j_{1}, m_{1} ; j_{2}, m_{2}\right\rangle \equiv\left|j_{1}, m_{1}\right\rangle \otimes\left|j_{2}, m_{2}\right\rangle \in \mathcal{H}$ are the basis states for the Hilbert space of two spins.
- The inner product is

$$
\left\langle j_{1}, m_{1} ; j_{2}, m_{2}\right| j_{1}^{\prime}, m_{1}^{\prime} ; j_{2}^{\prime}, m_{2}^{\prime}\rangle \equiv\left\langle j_{1}, m_{1} \mid j_{1}^{\prime}, m_{1}^{\prime}\right\rangle\left\langle j_{2}, m_{2} \mid j_{2}^{\prime}, m_{2} ;\right\rangle
$$

- Operators $\hat{J}_{x, y, z}^{(1)}$ are represented as $\hat{J}_{x, y, z}^{(1)} \otimes \mathbf{I}$ on the combined Hilbert space
- Operators $\hat{J}_{x, y, z}^{(2)}$ are represented as $\mathbf{I} \otimes \hat{J}_{x, y, z}^{(2)}$ on the combined Hilbert space


### 4.1.2 Addition of angular momenta

- The total angular momentum operator for the two particle system is

$$
\hat{\vec{J}}=\hat{\vec{J}}^{(1)} \otimes \mathbf{I}^{(2)}+\mathbf{I}^{(1)} \otimes \hat{\vec{J}}^{(2)} \equiv \hat{\vec{J}}^{(1)}+\hat{\vec{J}}^{(2)}
$$

It is slightly sloppy notation, but customary to drop the $\mathbf{I}$ identity operator (right of $\equiv \operatorname{sign}$ ). This implies

$$
\left[\hat{J}_{i}^{(1)}, \hat{J}_{j}^{(2)}\right]=0
$$

- Thus $\hat{J}_{z}^{(1)},\left[\hat{\vec{J}}^{(1)}\right]^{2}, \hat{J}_{z}^{(2)},\left[\hat{\vec{J}}^{(2)}\right]^{2}$ can be used as a complete set of commuting observables. This sets a orthonormal basis $\left|j_{1}, m_{1} ; j_{2}, m_{2}\right\rangle$.
- Since $\hat{\vec{J}}^{(1,2)}$ fulfill the angular momentum algebra, the total $\hat{\vec{J}}$ also does:

$$
\left[\hat{J}_{i}, \hat{J}_{j}\right]=\sum_{\alpha, \beta=1,2}\left[\hat{J}_{i}^{(\alpha)}, \hat{J}_{j}^{(\beta)}\right]=\sum_{\alpha, \beta=1,2} i \hbar \epsilon_{i j k} \delta_{\alpha \beta} \hat{J}_{k}^{(\alpha)}=i \hbar \epsilon_{i j k} \hat{J}_{k}
$$

- Hence, also $\hat{J}_{z}, \hat{\vec{J}}^{2}$ can be used as a complete set of commuting observables.

- In particular, following Sec. 2.3, we have the following basis of eigenstates

$$
\begin{aligned}
& \hat{\vec{J}}^{2}|j, m\rangle=\hbar^{2} j(j+1)|j, m\rangle \\
& \hat{J}_{z}|j, m\rangle=\hbar m|j, m\rangle
\end{aligned}
$$

We thus found a second valid basis, denoted $|j, m\rangle$.

- Next we express the abstract eigenvectors $|j, m\rangle$ in terms of our basis states $\left|j_{1}, m_{1} ; j_{2}, m_{2}\right\rangle$ (recall $j_{1}, j_{2} \in \mathbb{N}_{0} / 2$ arbitrary but fixed):

$$
|j, m\rangle=\sum_{m_{1}, m_{2}}\left|j_{1}, m_{1} ; j_{2}, m_{2}\right\rangle \underbrace{\left\langle j_{1}, m_{1} ; j_{2}, m_{2} \mid j, m\right\rangle}_{\text {"Clebsch-Gordan-coefficient" }}
$$

Where the Clebsch-Gordan coefficients have the following properties
$-m_{1}+m_{2}=m$. To see this consider

$$
\begin{aligned}
\hbar m\left\langle j_{1}, m_{1} ; j_{2}, m_{2} \mid j, m\right\rangle & =\left\langle j_{1}, m_{1} ; j_{2}, m_{2}\right| \hat{J}_{z}|j, m\rangle \\
& =\left\langle j_{1}, m_{1} ; j_{2}, m_{2}\right| \hat{J}_{z}^{(1)}+\hat{J}_{z}^{(2)}|j, m\rangle \\
& =\hbar\left(m_{1}+m_{2}\right)\left\langle j_{1}, m_{1} ; j_{2}, m_{2} \mid j, m\right\rangle
\end{aligned}
$$

hence $\left\langle j_{1}, m_{1} ; j_{2}, m_{2} \mid j, m\right\rangle \propto \delta_{m_{1}+m_{2}, m}$.

- $\left|j_{1}-j_{2}\right| \leq j \leq\left|j_{1}+j_{2}\right|$.
- It is clear that the maximal $j=j_{1}+j_{2}$ since the maximal $m=j_{1}+j_{2}$. However, smaller $j$ are also possible
- We compare the total size of the Hilbert space in $\left|j_{1}, m_{1} ; j_{2}, m_{2}\right\rangle$ and $|j, m\rangle$ bases

$$
\sum_{\substack{m_{1}, m_{2} \\=\left(2 j_{1}+1\right)\left(2 j_{2}+1\right)}}=\sum_{\substack{j=j_{\min } \\=\left(1+j_{1}+j_{2}\right)^{2}-j_{\min }^{2}}}^{\frac{j_{1}+j_{2}}{}}\left(2 j+1\right)
$$

* Solution for positive $j_{\min }$ leads to $j_{\min }=\left|j_{1}-j_{2}\right|$.
- We can thus summarize:

$$
j_{1} \otimes j_{2}=\left|j_{1}-j_{2}\right| \oplus\left(\left|j_{1}-j_{2}\right|+1\right) \oplus \cdots \oplus\left|j_{1}+j_{2}\right|
$$

# 4.2 Example: Addition of angular momenta for two spin-1/2 particles 

Summary of this section: We explicitly apply the above formalism to...

- ... two spins $1 / 2$ and explicitly derive the quantum mechanical wave functions of singlet and triplet states, Eqs. (115), (116).
- ... the Heisenberg dimer, i.e. the problem of two interacting spins, which can be solved using the addition of angular momenta.


### 4.2.1 Explicit basis conversion from $\left|m_{1}, m_{2}\right\rangle$ to $|j, m\rangle$.

Let's consider two spin- $1 / 2$ particles. The total system behaves either as a singlet (no spin) or triplet (i.e. spin 1 .

$$
\frac{1}{2} \otimes \frac{1}{2}=0 \oplus 1
$$

We explicitly demonstrate this here.

- We start from $|j=1, m=1\rangle$ (which is in the triplet sector and move down using ladder operators

$$
\begin{aligned}
& |j=1, m=1\rangle=\left|j_{1}=1 / 2, m_{1}=1 / 2 ; j_{2}=1 / 2, m_{2}=1 / 2\right\rangle=|\uparrow, \uparrow\rangle \\
& |j=1, m=0\rangle=\frac{1}{\sqrt{2 \hbar}} \hat{S}_{-}|\uparrow, \uparrow\rangle=\frac{1}{\sqrt{2 \hbar}}\left[\hat{S}_{-}^{(1)}+\hat{S}_{-}^{(2)}\right]|\uparrow, \uparrow\rangle=\frac{1}{\sqrt{2}}[|\downarrow \uparrow\rangle+|\uparrow \downarrow\rangle] \\
& |j=1, m=-1\rangle=\frac{1}{2 \hbar^{2}} \hat{S}_{-}^{2}|\uparrow, \uparrow\rangle=|\downarrow \downarrow\rangle
\end{aligned}
$$

(The red factors are not a priori obvious, but included to keep all states normalized).

- We see that for $m=0$ there is one more state, which is orthogonal to $|j=1, m=0\rangle$, namely

$$
|j=0, m=0\rangle=\frac{1}{\sqrt{2}}[|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle]
$$

Clearly

$$
\begin{aligned}
{\left[S_{z}^{(1)}+S_{z}^{(2)}\right]|j=0, m=0\rangle } & =0 \\
{\left[\widehat{S}^{(1)}+\widehat{S}^{(2)}\right]^{2}|j=0, m=0\rangle } & =\frac{\hbar^{2}}{4}\left[3+3+2 \vec{\sigma}^{(1)} \cdot \vec{\sigma}^{(2)}\right] \frac{1}{\sqrt{2}}[|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle] \\
& =\frac{\hbar^{2}}{4}\left[3+3-2-2-2\right] \frac{1}{\sqrt{2}}[|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle]=0
\end{aligned}
$$

- We observe two fundamentally different types of states
- Product states, e.g. $|\uparrow, \uparrow\rangle,|\downarrow, \downarrow\rangle$
- States $[|\uparrow \downarrow\rangle \pm|\downarrow \uparrow\rangle] / \sqrt{2}$, which are inherently a superposition of product states. These states (called "Bell pairs") are prime examples for entanglement. (see Sec. 4.3 below.
- It is instructive to compare superposition states of two (or more) particles $[|\uparrow \downarrow\rangle \pm$ $|\downarrow \uparrow\rangle] / \sqrt{2}$ from superpositions states of a single particle $[|\uparrow\rangle \pm|\downarrow\rangle] / \sqrt{2}$
- Both cases rely on the superposition principle
- The first case however is a coherent superposition in the many-body Hilbert space.
- While the second is just a superposition in the single particle Hilbert space.


# 4.2.2 Heisenberg dimer for two spin-1/2 particles 

Consider two spin- $1 / 2$ particles with magnetic Heisenberg interaction

$$
H=\frac{J}{\hbar^{2}} \widehat{S}^{(1)} \cdot \widehat{S}^{(2)}
$$

The energy scale $J$ is called the Heisenberg exchange coupling and we distinguish two cases

- $J<0$ : Spins want to align $=$ "ferromagnetic exchange",
- $J>0$ : Spins want to anti-align: "antiferromagnetic exchange".

We use the addition of angular momenta to readily find the eigensystem of the Hamiltonian.

- Clearly the system is isotropic (=rotationally symmetric): because of the scalar product there is no preferred direction.

- The rotational symmetry is technically encoded in the fact that $\left[H, \hat{S}^{\text {tot }}\right]=0$, where $\hat{S}^{\text {tot }}=\hat{S}^{(1)}+\hat{S}^{(2)}$.
To see this, use $i, k, l=x, y, z ; \mu, \nu=1,2$ (the color coding illustrates a rewriting of the Hamiltonian)

$$
\begin{aligned}
{\left[H, \hat{S}_{i}^{\text {tot }}\right] } & =\left[\frac{1}{2} \frac{J}{\hbar^{2}} \sum_{\nu, k} \hat{S}_{k}^{(3-\nu)} \hat{S}_{k}^{(\nu)}, \sum_{\mu} \hat{S}_{i}^{(\mu)}\right] \\
& =\frac{1}{2} \frac{J}{\hbar^{2}} \sum_{\mu, k} \hat{S}_{k}^{(3-\mu)}\left[\hat{S}_{k}^{(\mu)}, \hat{S}_{i}^{(\mu)}\right] \\
& =\frac{1}{2} \frac{J}{\hbar^{2}} \sum_{\mu, k, l} \hat{S}_{k}^{(3-\mu)} i \hbar \epsilon_{k i l} \hat{S}_{l}^{(\mu)} \\
& =\frac{1}{2} \frac{J}{\hbar^{2}} \sum_{\mu, k, l} i \hbar \epsilon_{k i l}\left[\hat{S}_{k}^{(3-\mu)}, \hat{S}_{l}^{(\mu)}\right] / 2 \\
& =0
\end{aligned}
$$

because $\left[S_{k}^{(1)}, \hat{S}_{l}^{(2)}\right]=0$.

- The fact that $\left[H, \hat{S}^{\text {tot }}\right]=0$ implies that $\left\{\hat{S}^{\text {tot }}\right\}^{2}, \hat{S}_{z}^{\text {tot }}$ are good quantum numbers (i.e. $H,\left\{\hat{S}^{\text {tot }}\right\}^{2}, \hat{S}_{z}^{\text {tot }}$ form a complet set of compatible observables and $\left\{\hat{S}^{\text {tot }}\right\}^{2}, \hat{S}_{z}^{\text {tot }}$ expectation values are time independent)
- Based on the findings for the previous chapter, we thus expect that the eigenstates split into singlet and triplet multiplets.
- To see this explicitly we note that

$$
\hat{S}^{(1)} \cdot \hat{S}^{(2)}=\frac{1}{2}\left\{\left[\hat{S}^{(1)}+\hat{S}^{(2)}\right]^{2}-\left[\hat{S}^{(1)}\right]^{2}-\left[\hat{S}^{(2)}\right]^{2}\right\}=\frac{1}{2}\left\{\left[\hat{S}^{\text {tot }}\right]^{2}-2 \hbar^{2} \frac{3}{4}\right\}
$$

- Using that we can write

$$
H=\frac{J}{2 \hbar^{2}}\left[\hat{S}^{\text {tot }}\right]^{2}-\frac{3 J}{4}
$$

Of course, in this basis it's trivial to see that $\left[H, \hat{S}_{i}^{\text {tot }}\right]=0$.

- In the eigenbasis of total angular momentum $\hat{S}^{\text {tot }} \rightarrow \hbar^{2} j(j+1)$ and $j=0,1$ and we find the following eigenenergies $E_{j, m}=J j(j+1) / 2-3 J / 4$ and two sectors:
- triplet sector: eigenvalues $E_{1, m}=J-3 J / 4=J / 4$, eigenstates $|1,1\rangle,|1,0\rangle,|1,-1\rangle$.
- singlet sector: eigenvalue $E_{0,0}=-3 J / 4$, eigenstate $|0,0\rangle$.

![img-12.jpeg](img-12.jpeg)

Figure 10: Field dependent energy levels for the Heisenberg dimer, Eq. (125).

If we additionally add a magnetic field in $z$ direction which couples equally to both spins the Hamiltonian is

$$
\begin{aligned}
H & =\frac{J}{\hbar^{2}} \hat{\vec{S}}^{(1)} \cdot \hat{\vec{S}}^{(2)}+g \mu_{B} B \hat{e}_{z} \cdot\left[\hat{\vec{S}}^{(1)}+\hat{\vec{S}}^{(2)}\right] / \hbar \\
& =\frac{J}{2 \hbar^{2}}\left[\hat{\vec{S}}^{\mathrm{tot}}\right]^{2}+g \mu_{B} B \hat{S}_{z}^{\mathrm{tot}} / \hbar-\frac{3 J}{4}
\end{aligned}
$$

Now the energy levels are $E_{j, m}=J j(j+1) / 2+g \mu_{B} B m-3 J / 4$ and the triplet is split. For illustration, see Fig. 10

# 4.3 Einstein-Podolsky-Rosen paradox and Bell inequalities. 

Summary of this section: In this question we discuss more about the properties of entangled two-qubit (or two-spin) states.

- We discuss the non-local effect of measuring one spin of an entangled pair
- We discuss the Einstein-Podolsky-Rosen paradoxon and hidden variable theories
- And we discuss the Bell inequalities as an experimental check to disprove hidden variable theories.


### 4.3.1 Einstein-Podolsky-Rosen paradox

In the previous section we encountered Bell states (e.g. the singlet state) which are prime examples of entanglement. To illustrate the conundrum imagine the following Gedankenexperiment:

- Consider a pair of spin- $1 / 2 \mathrm{~s}$ (qubits) in spin singlet state

$$
\text { |singlet〉=\frac{|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle}{\sqrt{2}}
$$

- Now spatially separate the pair:
- The left spin travels to the left where Alice has her detector,
- The right spin travels to the right, where Bob has his detector.
- Now Alice projectively measures her qubit.
- With $50 \%$ probability she finds $\uparrow$. After the projective measurement, Bob's qubit has to be in $\downarrow$ state.

$$
\hat{P}_{\uparrow}^{(1)} \frac{|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle}{\sqrt{2}}=\frac{|\uparrow \downarrow\rangle}{\sqrt{2}}
$$

- With $50 \%$ probability she finds $\downarrow$. After the projective measurement, Bob's qubit has to be in $\uparrow$ state.

$$
\hat{P}_{\downarrow}^{(1)} \frac{|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle}{\sqrt{2}}=-\frac{|\downarrow \uparrow\rangle}{\sqrt{2}}
$$

- Thus,
- Before Alice's measurement the pair of particles was in a superposition state of $|\uparrow \downarrow\rangle-|\downarrow \uparrow\rangle$, so it was both $|\uparrow \downarrow\rangle$ and $|\downarrow \uparrow\rangle$ at the same time.
- By measuring her qubit, Alice lets the entire wave function collapse. This implies non-locally that from the time after Alice's measurement onwards, Bobs qubit is also determined to the value opposite to the one Alice measured.
- This creates philophical problems to Einstein, Podolsky and Rosen:
- How can information propagate instantly from Alice's measurement device to the qubit which sits with Bob? Doesn't that violate relativity theory (information can only travel at the speed of light)?
- Note that Bob's qubit is in a superposition of $\uparrow$ and $\downarrow$ - and there are two problems for "local realists"
- Apart from the (already puzzling aspect) of not having definitive own attributes ...
- ... it's very confusing that the attributes of Bob's qubit furthermore depend on what Alice does in some place fare away.
- In EPR's words, they expect that "The real situation of [the qubit which is with Bob] is independent of what is done with [the qubit which is with Alice], which is spatially separated."
- As a way out of this paradox of the implications of probabilistic QM, Einstein Podolsky and Rosen resort to hidden variables. A hidden variable theory assumes
- a deterministic theory
- with extra degrees of freedom ("hidden variables")
- which we have not discovered yet (or can not discover directly)
- but uniquely characterize the state of the pair of qubits before they were pulled in different directions
- and thereby explain probabilistic effects.

In a sense, the claim is that quantum theory is incomplete as it is known. Bell's inequalities (see next section) are a way to check for hidden variables.

# 4.3.2 Bell's inequalities 

John Stewart Bell (1928 - 1990) Northern Irish theorist working predominantly in the field of high-energy physics, but also on the foundations of quantum mechanics. His fundamental work on the Bell inequalities was written at UW-Madison in 1964 (while Bell was on leave from CERN). The experimental validation of Bell-like inequalities led to the 2022 Nobel Prize in Physics to Alain Aspect, John Clauser, and Anton Zeilinger.

Here we follow Bell to show that an arbitrary hidden variable theory makes predictions that are incompatible with quantum mechanics.

- We start from the setup as above: Alice and Bob met long time ago and created a Bell-pair together. Then the split ways each carrying on of the entangled qubits to their respective place.
- Assume that Alice and Bob measure their respective qubits using an arbitrary measurement axis ( $=$ field direction in a Stern-Gerlach experiments) $\vec{a}, \vec{b}$ (both are unit vectors). The quantum mechanical expectation value for such an experiment is

$$
\begin{aligned}
\mathbb{E}_{\mathrm{QM}}(\vec{a}, \vec{b}) & =\langle\text { singlet }| \vec{a} \cdot \hat{\vec{S}}^{(1)} \vec{b} \cdot \hat{\vec{S}}^{(2)} \mid \text { singlet }\rangle \\
& =\frac{\hbar^{2}}{8}\left\langle\uparrow \downarrow-\downarrow \uparrow\right|\left[\left(a_{x}-i a_{y}\right) \sigma_{+}^{(1)}+\left(a_{x}+i a_{y}\right) \sigma_{-}^{(1)}+a_{z} \sigma_{z}^{(1)}\right] \\
& \times\left[\left(b_{x}-i b_{y}\right) \sigma_{+}^{(2)}+\left(b_{x}+i b_{y}\right) \sigma_{-}^{(2)}+b_{z} \sigma_{z}^{(2)}\right]\left|\uparrow \downarrow-\downarrow \uparrow\right\rangle \\
& =\frac{\hbar^{2}}{8}\left[\left(a_{x}-i a_{y}\right)\left\langle\downarrow \downarrow\right|-\left(a_{x}+i a_{y}\right)\left\langle\uparrow \uparrow\right|+a_{z}\left\langle\uparrow \downarrow+\downarrow \uparrow\right|\right] \\
& \times\left[\left(b_{x}-i b_{y}\right) \mid \uparrow \uparrow\right\rangle-\left(b_{x}+i b_{y}\right)\left|\downarrow \downarrow\right\rangle-b_{z} \sigma_{z}^{(2)}\left|\uparrow \downarrow+\downarrow \uparrow\right\rangle\right] \\
& =\frac{\hbar^{2}}{8}\left[-\left(a_{x}-i a_{y}\right)\left(b_{x}+i b_{y}\right)+c . c .-2 a_{z} b_{z}\right] \\
& =-\frac{\hbar^{2}}{4} \vec{a} \cdot \vec{b}
\end{aligned}
$$

Here, c.c. is complex conjugate and $\sigma_{+}=\left(\begin{array}{ll}0 & 1 \\ 0 & 0\end{array}\right)=\sigma_{-}^{\dagger}$.

- We now switch to the calculation of the same expectation value using a theory with hidden variables.
- To formalize the concept of "local realism" Bell includes a hidden variable $\lambda$ (a scalar, vector, function or anything else).
- For given $\lambda, \vec{a}, \vec{b}$ the measurement outcomes for Alice and Bob are denoted

$$
A(\vec{a}, \lambda)= \pm \hbar / 2 ; \quad B(\vec{b}, \lambda)= \pm \hbar / 2
$$

i.e. they are, two classical, independent stochastic variables which may take two possible values.

* The hidden variable $\lambda$ is introduced to fully (pre-)determine the quantum state at the moment when the singlet separates in space. Hence, both $A(\vec{a}, \lambda)$ and $B(\vec{b}, \lambda)$ depend on the same $\lambda$.

* However, it is crucial to note that Alice's probability $A(\vec{a}, \lambda)$ only depends on her own measurement axis $\vec{a}$, and is independent of $\vec{b}$. Reversely $B(\vec{b}, \lambda)$ is independent of $\vec{a}$. This encodes the locality assumption: Alice's outcome should be independent of whatever Bob decides to do!
- We further assume that there is a probability distribution $\rho(\lambda)$ for the hidden variables (of course it's normalized $\int d \lambda \rho(\lambda)=1$.)
- Then the measurement outcome of Alice measuring her qubit along $\vec{a}$ and Bob measuring his qubit along $\vec{b}$ can be calculated within the hidden variable theory as

$$
\mathbb{E}_{\mathrm{HV}}(\vec{a}, \vec{b})=\int d \lambda \rho(\lambda) A(\vec{a}, \lambda) B(\vec{b}, \lambda)
$$

- Note that $A(\vec{a}, \lambda) B(\vec{b}, \lambda)= \pm \hbar^{2} / 4$. In view of normalization we see that

$$
\mathbb{E}_{\mathrm{HV}}(\vec{a}, \vec{b}) \geq-\hbar^{2} / 4
$$

- Similarly, for $\vec{a}=\vec{b}$ we also see that the minimum $-\hbar^{2} / 4$

$$
-\frac{\hbar^{2}}{4}=\mathbb{E}_{\mathrm{HV}}(\vec{a}, \vec{a}) \equiv \int d \lambda \rho(\lambda) A(\vec{a}, \lambda) B(\vec{a}, \lambda)
$$

implies that the two functions $A(\vec{a}, \lambda), B(\vec{a}, \lambda)$ must be related

$$
A(\vec{a}, \lambda)=-B(\vec{a}, \lambda), \quad \forall \vec{a}
$$

(This is the hidden variable way of saying that we started from singlet state.)

- We can thus rewrite w.l.o.g.

$$
\mathbb{E}_{\mathrm{HV}}(\vec{a}, \vec{b})=-\int d \lambda \rho(\lambda) A(\vec{a}, \lambda) A(\vec{b}, \lambda)
$$

- We now compare Bob's measurement for two different axes of measurement $\vec{b}_{1}, \vec{b}_{2}$.
- Within hidden variable theory we see that

$$
\begin{aligned}
\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{1}\right)-\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{2}\right) & =\int d \lambda \rho(\lambda) A(\vec{a}, \lambda)\left[A\left(\vec{b}_{2}, \lambda\right) \underbrace{4 A\left(\vec{b}_{1}, \lambda\right)^{2} / \hbar^{2}}_{\text {insertion of unity }}-A\left(\vec{b}_{1}, \lambda\right)\right] \\
& =-\int d \lambda \rho(\lambda) \underbrace{A\left(\vec{a}, \lambda\right) A\left(\vec{b}_{1}, \lambda\right)}_{= \pm \hbar^{2} / 4}[1-\underbrace{4 A\left(\vec{b}_{2}, \lambda\right) A\left(\vec{b}_{1}, \lambda\right) / \hbar^{2}}_{= \pm 1}]
\end{aligned}
$$

* The orange term is $\lambda$ dependent but for given $\lambda$ it is just $\pm \hbar^{2} / 4$.
* At the same time $\rho(\lambda)$ and the square bracket are both non-negative.

Hence we can bound the absolute value of differences of expectation values from above

$$
\left|\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{1}\right)-\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{2}\right)\right| \leq \frac{\hbar^{2}}{4} \int d \lambda \rho(\lambda)\left[1-4 A\left(\vec{b}_{2}, \lambda\right) A\left(\vec{b}_{1}, \lambda\right) / \hbar^{2}\right]
$$

or

$$
\left|\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{1}\right)-\mathbb{E}_{\mathrm{HV}}\left(\vec{a}, \vec{b}_{2}\right)\right| \leq \frac{\hbar^{2}}{4}+\mathbb{E}_{\mathrm{HV}}\left(\vec{b}_{1}, \vec{b}_{2}\right)
$$

This is known as Bell's inequality and is sufficed by any expectations values following from a hidden variable theory.

- Note that it relates the difference of two different experiments of Bob with an experiment (LHS), where Bob asks Alice to measure along axis $\vec{b}_{1}$, while he himself measures along $\vec{b}_{2}$.
- We now demonstate that quantum mechanics violates the Bell-bound:

$$
\begin{aligned}
& \mathrm{LHS}=\left|\mathbb{E}_{\mathrm{QM}}\left(\vec{a}, \vec{b}_{1}\right)-\mathbb{E}_{\mathrm{QM}}\left(\vec{a}, \vec{b}_{2}\right)\right|=\frac{\hbar^{2}}{4}\left|\vec{a} \cdot\left(\vec{b}_{1}-\vec{b}_{2}\right)\right| \\
& \mathrm{RHS}=\frac{\hbar^{2}}{4}+\mathbb{E}_{\mathrm{HV}}\left(\vec{b}_{1}, \vec{b}_{2}\right)=\frac{\hbar^{2}}{4}\left(1-\vec{b}_{1} \cdot \vec{b}_{2}\right)
\end{aligned}
$$

For graphical illustration of the violation of the bound, we choose all vectors inside a given plane with $\vec{a} \cdot \vec{b}_{1}=0$ and $\vec{b}_{2}=\sin (\psi) \vec{a}+\cos (\psi) \vec{b}_{1}$. In this case

$$
\begin{aligned}
& \mathrm{LHS}=\frac{\hbar^{2}}{4}|\sin (\psi)| \\
& \mathrm{RHS}=\frac{\hbar^{2}}{4}(1-\cos (\psi))
\end{aligned}
$$

Clearly, for $-\pi / 2<\psi<\pi / 2$ the Bell inequality is violated, Fig. 11.

- By now the violation of Bell-like bounds in quantum experiments has been demonstrated several times ( $=$ hidden variables are inconsistent with experimental observations), see Nobel prize in physics 2022 [link].


# 4.4 Entanglement in quantum information science. 

- Quantum computers are theoretically proven to be able to solve certain decision problems exponentially faster than classical computers.

![img-13.jpeg](img-13.jpeg)

Figure 11: Red area: graphical illustration of the violation of Bell's inequality for quantum expectation values, Eqs. (142).

- A major resource for quantum operations is the use of the entire $2^{N}$ dimensional Hilbert space for a chip consisting of $N$ qubits and entangled states play a crucial role.
- For comparison, note that product states of $N$ qubits, just as classical states of $N$ bits, only span an $N$ dimensional vector space. (We need $N$ binary numbers to fully characterize a bitstring.)

Summary of this section: We summarize how entanglement is being exploited in quantum information science.

- We introduce the most important quantum gate, the CNOT,...
- ..., which combined with the Hadamard gate allows to create Bell pairs, ...
- ... and with the help of which we introduce a universal gate set for quantum computation...
- ... and finally introduce quantum teleportation.


# 4.4.1 CNOT: The most important two-qubit gate 

Assuming we are given a product state of two qubits, what is the unitary gate operation we need to use to perform create a Bell state?

- To answer this question we first introduce the most important two-qubit gate

$$
\text { CNOT : }\left\{\begin{array}{l}
|\uparrow, \uparrow\rangle \rightarrow \mid \uparrow, \uparrow\rangle \\
|\uparrow, \downarrow\rangle \rightarrow \mid \uparrow, \downarrow\rangle \\
|\downarrow, \uparrow\rangle \rightarrow \mid \downarrow, \downarrow\rangle \\
|\downarrow, \downarrow\rangle \rightarrow \mid \downarrow, \uparrow\rangle
\end{array}\right.
$$

In the basis $\{|\uparrow, \uparrow\rangle,|\uparrow, \downarrow\rangle,|\downarrow, \uparrow\rangle,|\downarrow, \downarrow\rangle\}$ this unitary can be written as

$$
U_{\text {CNOT }}=\left(\begin{array}{llll}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{array}\right)
$$

and is represented as in Fig. 12 a).

- Using this we can device a quantum algorithm to create a Bell-pair from a $|\uparrow, \uparrow\rangle$ by...
- ...first applying a Hadamard gate

$$
U_{\text {Hadamard }}=\left(\begin{array}{cc}
1 & 1 \\
1 & -1
\end{array}\right) / \sqrt{2}
$$

on the first qubit ...

- ... and then applying the CNOT gate

$$
\begin{aligned}
U_{\text {CNOT }}\left(U_{\text {Hadamard }} \otimes \mathbf{1}\right)|\uparrow \uparrow\rangle & =\frac{1}{\sqrt{2}} U_{\text {CNOT }}\langle | \uparrow\rangle+|\downarrow\rangle\rangle \otimes|\uparrow\rangle \\
& =\frac{|\uparrow \uparrow\rangle+|\downarrow \downarrow\rangle}{\sqrt{2}}
\end{aligned}
$$

This circuit is represented in Fig. 12 b).

- This state is a Bell-state, but if we insist on having the singlet state introduced above we may apply an $-i \mathbf{1} \otimes Y$ at the very end.


# 4.4.2 Universal set of quantum gates 

In quantum information science, the goal is to perform quantum operations on the quantum state of $N$ qubits.

These correspond to unitary $2^{N} \times 2^{N}$ matrices.

$$
\left|\psi_{\text {final }}\right\rangle=U\left|\psi_{\text {initial }}\right\rangle
$$

![img-14.jpeg](img-14.jpeg)

Figure 12: a) Circuit symbol for the CNOT gate. The upper line is the control qubit. b) Entangling operation. Note that time flows from left to right in the circuit, yet matrix operations on a state follow the rule "Apply the right-most matrix first".

Multi-qubit operations are physically realized by interaction terms, akin to Eq. (125) (see Exercise sheet 4), and it is practically different to have the necessary control in the design $N$-qubit interactions.

Therefore, it as an important theorem that

- starting from a given initial state $\left|\psi_{\text {initial }}\right\rangle$, any final state $\left|\psi_{\text {final }}\right\rangle=U\left|\psi_{\text {initial }}\right\rangle$ can be obtained by concatenation of the CNOT gate and single qubit gates.
- Furthermore, any the single qubit gates can be approximated (up to desired accuracy $\epsilon$ ) by keeping only Hadamard, phase gate and $\pi / 8$ gates, Eq. (35). (And the phase gate is actually anyways applying $\pi / 8$ twice - so we only need two single-qubit gates!)
- Of course the number of gates $N_{\text {gates }}$ increases $\epsilon \rightarrow 0$, but it does so only in a logarithmic fashion (Solovay-Kitaev-theorem) : $N_{\text {gates }} \sim[\log (1 / \epsilon)]^{c}$, where $c \approx 2$.

In summary, the gates, CNOT, Hadamard, and $\pi / 8$ form "universal gate set for quantum computation" in the sense that any state may reached with arbitrary accuracy (and if we add the phase gate, we can even make it faul-tolorant!)

# 4.4.3 Quantum teleportation 

As an illustration of the potential of quantum computing and quantum communication we here discuss the following protocol to teleport a quantum state.

- Alice and Bob, who are at distant places, want to send the state $|\psi\rangle$ of a qubit from Alice's place to Bob's place, without
- destroying the state...

- ...sending the physical qubit (i.e. they want to use teleportation instead of FedEx).
- At their disposal they have...
- ...each an experimental apparatus allowing to do qubit operations at their locations (Alice even will need to do measurements).
- ...they shared a Bell-pair that they created when they last met in person. This means
- When they met they took two qubits and entangled them to create a Bell pair.
- Then Alice took the first qubit of the entangled pair to her place, while Bob took the second qubit to his place.
- The shared Bell-pair is the crucial "entanglement resource" necessary for the teleportation.
- It's clear that Alice cannot just simply measure the qubit and classically communicate to Bob how to prepare a qubit in the same state in his lab. Above all, if Alice wanted to determine the state of her qubit, she'd destroy it by measuring it.

It turns out that, even though neither Alice nor Bob will ever know the state $|\psi\rangle$ at any instant of the protocol that we discuss now, quantum teleportation is actually possible (and experimentally verified!).

To see this, we follow the steps outlined in Fig. 13 one-by-one.

- The initial state is

$$
\left|\Psi_{0}\right\rangle=\underbrace{(\alpha|\uparrow\rangle+\beta|\downarrow\rangle)}_{|\psi\rangle} \frac{|\uparrow \uparrow\rangle+|\downarrow \downarrow\rangle}{\sqrt{2}}
$$

Note that the order of qubits left-to-right in the tensor product corresponds to top-to-bottom in the picture, Fig. 13.

- After the CNOT we obtain

$$
\left|\Psi_{1}\right\rangle=\alpha|\uparrow\rangle \frac{|\uparrow \uparrow\rangle+|\downarrow \downarrow\rangle}{\sqrt{2}}+\beta|\downarrow\rangle \frac{|\downarrow \uparrow\rangle+|\uparrow \downarrow\rangle}{\sqrt{2}}
$$

- Now apply the Hadamard on the first line leading to

$$
\begin{aligned}
& \left|\Psi_{2}\right\rangle=\alpha \frac{|\uparrow\rangle+|\downarrow\rangle}{\sqrt{2}} \frac{|\uparrow \uparrow\rangle+|\downarrow \downarrow\rangle}{\sqrt{2}}+\beta \frac{|\uparrow\rangle-|\downarrow\rangle}{\sqrt{2}} \frac{|\downarrow \uparrow\rangle+|\uparrow \downarrow\rangle}{\sqrt{2}} \\
& =|\uparrow \uparrow\rangle \frac{\alpha|\uparrow\rangle+\beta|\downarrow\rangle}{2}+|\uparrow \downarrow\rangle \frac{\alpha|\downarrow\rangle+\beta|\uparrow\rangle}{2}+|\downarrow \uparrow\rangle \frac{\alpha|\uparrow\rangle-\beta|\downarrow\rangle}{2}+|\downarrow \downarrow\rangle \frac{\alpha|\downarrow\rangle-\beta|\uparrow\rangle}{2}
\end{aligned}
$$

![img-15.jpeg](img-15.jpeg)

Figure 13: Quantum circuit for quantum teleportation

- Now Alice performs her measurement.
- By determining quantum numbers $\left(M_{1}, M_{2}\right)$ she also projects Bob's wave function to $|\psi\rangle_{\text {Bob }}$ as indicated below.
- Depending on the outcome of her measurement, Alice calls Bob and instructs him to perform the operation indicated on top of the arrow.

$$
\begin{array}{lll}
\left(M_{1}, M_{2}\right)=(\uparrow, \uparrow): & |\psi\rangle_{\text {Bob }}=\alpha|\uparrow\rangle+\beta|\downarrow\rangle & \xrightarrow{\mathbf{1}} & \alpha|\uparrow\rangle+\beta|\downarrow\rangle \\
\left(M_{1}, M_{2}\right)=(\uparrow, \downarrow): & |\psi\rangle_{\text {Bob }}=\alpha|\downarrow\rangle+\beta|\uparrow\rangle & \xrightarrow{\boldsymbol{X}} & \alpha|\uparrow\rangle+\beta|\downarrow\rangle \\
\left(M_{1}, M_{2}\right)=(\downarrow, \uparrow): & |\psi\rangle_{\text {Bob }}=\alpha|\uparrow\rangle-\beta|\downarrow\rangle & \xrightarrow{Z} & \alpha|\uparrow\rangle+\beta|\downarrow\rangle \\
\left(M_{1}, M_{2}\right)=(\downarrow, \downarrow): & |\psi\rangle_{\text {Bob }}=\alpha|\downarrow\rangle-\beta|\uparrow\rangle & \xrightarrow{\boldsymbol{\gamma}} & \alpha|\uparrow\rangle+\beta|\downarrow\rangle
\end{array}
$$

In summary, using a well-designed measurement protocol and a means of classical communication, Alice could teleport a quantum state, of which she doesn't know the nature, to Bob.

The first experimental realization of quantum teleportation date back to the late 1990's (Popescu et al. [link], Zeilinger et al. [link]).

# Part II 

## THE BAD: Infinite dimensional Hilbert spaces: discrete spectrum

In the first part of this lecture course we discussed finite dimensional Hilbert spaces (both for a single and many quantum mechanical particles). Here we extend the size of the Hilbert space to be infinite - yet keeping the energy levels discrete.

## 5 Approaching quantum mechanics in the continuum: Position and momentum operators.

### 5.1 Quantum mechanical hopping on a chain

Summary of this section: Before we approach quantum mechanics in the continuum.

- We consider the problem of a quantum particle hopping between different positions on a ring with $N$ lattice sites (this is finite dimensional Hilbert space problem).
- In this context we uncover the duality between momentum and real space and the (discrete) Fourier transform which maps between them, Eq. (172)
- On Exercise sheet 3, we encountered the problem of a quantum mechanical particle (the nitrogen atom) hopping between two different positions (above and below the $H$-triangle) in the ammonia molecule. The Hamiltonian is (see Fig. 14)

$$
\hat{H}=-A\left(\begin{array}{ll}
0 & 1 \\
1 & 0
\end{array}\right)
$$

in the basis of position states $|1\rangle,|2\rangle$. The state vectors are

$$
|\psi\rangle=\binom{\psi_{1}}{\psi_{2}}, \quad \psi_{i} \equiv\langle n \mid \psi\rangle \in \mathbb{C}, \quad \sum_{i=1}^{2}\left|\psi_{i}\right|^{2}=1
$$

The Schrödinger equation is

$$
\begin{aligned}
& -A \psi_{2}=E \psi_{1} \\
& -A \psi_{1}=E \psi_{2}
\end{aligned}
$$

- We remark that the origin of the hopping amplitude $A$ between different positions is not clear yet (and won't be until Sec. 9.2). However having already accepted it in the case of two positions of the $N H_{3}$ molecule, we extend the concept to a ring with $N$ discrete sites. We will call the perimeter of the polygon $L=N a$, where $a$ is the spacing between two adjacent sites.
- The hopping of quantum mechanical particles from one discrete site to another occurs in many experimentally relevant instances, for example ultracold atoms hopping in optical lattices or electrons hopping from ion to ion in solids.
- Consider a quantum mechanical particle which can hop between $N$ different positions, Fig. 14 b). It's time-independent Schrödinger equation can be written as

$$
\begin{aligned}
-A \psi_{2}-A \psi_{N} & =(E-2 A) \psi_{1} \\
-A \psi_{3}-A \psi_{1} & =(E-2 A) \psi_{2} \\
-A \psi_{4}-A \psi_{2} & =(E-2 A) \psi_{3} \\
\ldots & \\
-A \psi_{1}-A \psi_{N-1} & =(E-2 A) \psi_{N}
\end{aligned}
$$

For convenience we shifted the energy $E$ to $E-2 A$. Alternatively, the Schrödinger equation can be compactly written as

$$
-A\left(\psi_{n+1}-2 \psi_{n}+\psi_{n-1}\right)=E \psi_{n}, \quad n=1, \ldots N
$$

and we identify $\psi_{N+1}=\psi_{1}$ and $\psi_{0}=\psi_{N}$.

# 5.2 Recapitulation of finite dimensional Hilbert space, eigenstates of the chain and discrete Fourier Transform 

- Wave function in real space basis:
- Our wave function

$$
|\psi\rangle=\left(\begin{array}{c}
\psi_{1} \\
\psi_{2} \\
\vdots \\
\psi_{N}
\end{array}\right)
$$

![img-16.jpeg](img-16.jpeg)

Figure 14: a) Illustration of the hopping between different positions in the Ammonia molecule. b) Hopping between adjacent sites on a chain.
lives in $\mathbb{C}^{N}$. In the vector notation employed here corresponds, the first entry corresponds to site $n=1$, the second one to $n=2$ etc, i.e. we used the orthonormal basis $\{|n\rangle\}$

$$
\begin{aligned}
\left\langle n^{\prime} \mid n\right\rangle & =\delta_{n, n^{\prime}}, \quad(\text { orthonormality }) \\
\sum_{n}|n\rangle\langle n| & =\mathbf{1}_{N \times N}, \quad \text { (completeness relation) }
\end{aligned}
$$

- Written out explicitly

$$
|1\rangle=\left(\begin{array}{c}
1 \\
0 \\
0 \\
\vdots \\
0
\end{array}\right), \quad|2\rangle=\left(\begin{array}{c}
0 \\
1 \\
0 \\
\vdots \\
0
\end{array}\right), \ldots
$$

and thus $\psi_{n}=\langle n \mid \psi\rangle$. So $\{|n\rangle\}$ is the basis describing the wave function's values at specific positions in real space.

- We impose the condition $\sum_{n}\left|\psi_{n}\right|^{2}=1$ on all wave functions. For given wave function $\left|\psi_{n}\right|^{2}$ is the "Born"-probability to find the particle at site $n$.
- Translational invariance. We also observe that the ring is invariant under translations ( $=$ rotation of the ring by angle $2 \pi / N$ ). We define the translation operator

$$
T: \psi_{n} \equiv\langle n \mid \psi\rangle \rightarrow(T \psi)_{n}=\psi_{n-1} \equiv\langle n-1 \mid \psi\rangle
$$

where $(T \psi)_{n}=\langle n| T|\psi\rangle$, by its action on a given state, but we can also introduce its representation as a unitary matrix, for example for $N=5$

$$
\begin{gathered}
T=\left(\begin{array}{cccccc}
0 & 0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1 & 0
\end{array}\right) \\
T\left(\begin{array}{l}
\psi_{1} \\
\psi_{2} \\
\psi_{3} \\
\psi_{4} \\
\psi_{5}
\end{array}\right)=\left(\begin{array}{l}
\psi_{5} \\
\psi_{1} \\
\psi_{2} \\
\psi_{3} \\
\psi_{4}
\end{array}\right)
\end{gathered}
$$

- Comparison to spin invariance (discussed in part I) Let's remind yourself about the situation in spin systems
$-U(\vec{\alpha})=e^{i \vec{\alpha} \cdot \vec{S} / \hbar}$ generates rotation, cf. Eq. (40) (rotation axis $\vec{\alpha} /|\alpha|$ and rotation angle $|\vec{\alpha}|$ ).
- Isotropic (=rotationally invariant) spin-Hamiltonian commute with $\vec{S}$, see e.g. the Hamiltonain of the Heisenberg dimer 125. Equivalently stated,

$$
U^{\dagger}(\vec{\alpha}) H U(\vec{\alpha})=H
$$

- And we know that some of the generators of rotations (usually $\hat{S}_{z}, \hat{S}^{2}$ ) can be used to form a complete set of commuting observables together with the Hamiltonian. Their eigenvalues are "good quantum numbers".
For example, for the Heisenberg dimer we use the basis set $|j, m\rangle$ and

$$
\begin{aligned}
U\left(\alpha \hat{e}_{z}\right)|j, m\rangle & =e^{i \alpha S_{z} / \hbar}|j, m\rangle=e^{i \alpha m}|j, m\rangle \\
H|j, m\rangle & =E_{j, m}|j, m\rangle
\end{aligned}
$$

i.e. that eigenstates of $U\left(\alpha \hat{e}_{z}\right)$ are eigenstates of $H$.

- Exploiting translational invariance to solve Hamiltonian.
- Returning to the chain we expect that the generator of translation - it turns out to be the momentum - forms a complete set of commuting observables with the Hamiltonian

$$
\begin{aligned}
& T|k\rangle=e^{-i p_{k} a / \hbar}|k\rangle \\
& H|k\rangle=E_{p_{k}}|k\rangle
\end{aligned}
$$

where $p_{k}$ is a discrete quantum number (just like $m$ was a discrete quantum number). We also pulled out the dimensionful quantities $a$ (a length, the lattice spacing between adjacent sites) and $\hbar$ for later convenience.

- We can determine the wave function $|k\rangle$ using the real space basis Eq. (158) by multiplying Eq. (165a) with $\langle n|$ from the left and using Eq. (160)

$$
\begin{aligned}
\langle n| T|k\rangle & =\langle n-1 \mid k\rangle \\
& \equiv e^{-i p_{k} a / \hbar}\langle n \mid k\rangle \\
& \Rightarrow\langle n \mid k\rangle=\frac{1}{\sqrt{N}} e^{i p_{k} x_{n} / \hbar}
\end{aligned}
$$

where $x_{n}=n a$ or

$$
|k\rangle=\frac{1}{\sqrt{N}}\left(\begin{array}{c}
e^{i p_{k} a / \hbar} \\
e^{i 2 p_{k} a / \hbar} \\
e^{i 3 p_{k} a / \hbar} \\
\vdots \\
e^{i p_{k} L / \hbar}
\end{array}\right)
$$

where the prefactor $1 / \sqrt{N}$ is introduced for normalization.
These solutions are called plane waves.

- We plug this into the Schrödinger equation (156), (165b)

$$
\begin{aligned}
& -A(\langle n+1 \mid k\rangle-2\langle n \mid k\rangle+\langle n-1 \mid k\rangle)=E_{p}\langle n \mid k\rangle \\
& -A\left(e^{i p_{k} a / \hbar}-2+e^{-i p_{k} a / \hbar}\right)\langle n \mid k\rangle=E_{p_{k}}\langle n \mid k\rangle \\
\Rightarrow & E_{p_{k}}=2 A\left[1-\cos \left(p_{k} a / \hbar\right)\right]
\end{aligned}
$$

So we found the eigenvalues of $H$ and the form of the wavefunction. What's left to do is the quantization of momenta:

- Quantization condition on $p_{k}$

Since we imposed $\psi_{N} \equiv \psi_{0}$ we find (recall $N a=L$ )

$$
e^{i p_{k} L / \hbar}=e^{i p_{k} 0 / \hbar}=1 \Rightarrow p_{k} L / \hbar \in 2 \pi \mathbb{Z}
$$

Furthermore, the wave functions Eq. (166a) at $p_{k}$ and $p_{k}+2 \pi \hbar / a$ are identical. So it is sufficient to restrict $p_{k}$ values to (cf. Fig. 15

$$
p_{k}=-\frac{\pi \hbar}{a}+\frac{2 \pi \hbar}{L} k, \quad k=1,2, \ldots N
$$

- Momentum space basis. Basis change: "Fourier transform"
- We saw that are as many $p_{k}$ quantum numbers as there are $n$ quantum numbers (namely $N$ ). Moreover the $\{|k\rangle\}$ are orthonormal which we can check using

![img-17.jpeg](img-17.jpeg)

Figure 15: Dispersion, Eq. (167) and quantization condition of momenta for the chain with periodic boundary conditions.
their explicit vector representation

$$
\begin{aligned}
\left\langle k^{\prime} \mid k\right\rangle & =\sum_{n=1}^{N} \frac{e^{i\left(p_{k}-p_{k^{\prime}}\right) n a / \hbar}}{N} \\
& =\sum_{n=1}^{N} \frac{e^{i 2 \pi\left(k-k^{\prime}\right) n / N}}{N} \\
& =\delta_{k, k^{\prime}}=\delta_{p_{k}, p_{k^{\prime}}}
\end{aligned}
$$

- Of course, $\{|k\rangle\}$ forms a basis which is equally good as $\{|n\rangle\}$ (or maybe even better, because it's the eigenbasis to $H$ )

$$
\begin{aligned}
\left\langle k^{\prime} \mid k\right\rangle & =\delta_{p_{k}, p_{k^{\prime}}}, & & \text { (orthonormality) } \\
\sum_{k}|k\rangle\langle k|=\mathbf{1}_{N \times N}, & & \text { (completeness relation) }
\end{aligned}
$$

- Any wavefunction $\psi_{n}=\langle n \mid k\rangle$ represented using the real space basis $\{|n\rangle\}$ can thus be equivalently expressed as $\psi_{k}=\langle k \mid \psi\rangle$ using the momentum space basis $\{|k\rangle\}$ and reverse

$$
\begin{aligned}
& \psi_{n}=\langle n \mid \psi\rangle=\sum_{k} \underbrace{\langle n \mid k\rangle}_{=e^{i p_{k} x_{n} / \hbar} / \sqrt{N}}\langle k \mid \psi\rangle=\frac{1}{\sqrt{N}} \sum_{k} e^{i p_{k} x_{n} / \hbar} \psi_{k} \\
& \psi_{k}=\langle k \mid \psi\rangle=\sum_{n} \underbrace{\langle k \mid n\rangle}_{=e^{-i p_{k} x_{n} / \hbar} / \sqrt{N}}\langle n \mid \psi\rangle=\frac{1}{\sqrt{N}} \sum_{n} e^{-i p_{k} x_{n} / \hbar} \psi_{n}
\end{aligned}
$$

This specific basis change is called (discrete) Fourier transformation. It is crucial for the quantum mechanics of particles moving in real space.

![img-18.jpeg](img-18.jpeg)

Figure 16: Continuum limit of a wave function defined on a chain (periodic boundary conditions) with $N=L / a$ sites sites.

# 5.3 Taking the limit $a \rightarrow 0$ : Continuum Schrödinger equation and vector spaces of functions 

Summary of this section:

- Here we take the infinitely dense limit of sites on the ring to define quantum mechanics in continuum space
- We can use this to motivate the Schrödinger equation of a free particle on a continuous ring, Eq. (174)
- Using this correspondence we carefully introduce vector spaces of functions...
- ...as well as the basis transformation from real to momentum space (Fourier transform, Eq. (187),(193).
- We also take the limit of infinite ring in which the spacing of momenta becomes infinitesimal.

In the remainder of the lecture course, we will study systems in continuous space. In this section we approach this limit by assuming that the sites on the ring, Fig. 14 b) move infinitely close together, i.e. the limit $a \rightarrow 0$.

To this end

- We introduce a wave function $\psi:[-L / 2, L / 2) \rightarrow \mathbb{C} ; x \mapsto \psi(x)$ which is a differentiable function on the strip.
- We further assume that $\psi(a n-L / 2)=\frac{\psi_{0}}{\sqrt{a}}$ and that $\psi(x)$ is varying slowly on the scale $a$. (e.g. the condition $a\left|\partial_{x} \psi(x)\right| \ll|\psi(x)|$ ).

- In this limit

$$
\begin{aligned}
\psi_{n \pm 1} & =\sqrt{a} \psi(a n \pm a-L / 2) \\
& =\sqrt{a}\left[\psi(a n-L / 2) \pm a \partial_{x} \psi(a n-L / 2)+\frac{a^{2}}{2} \partial_{x}^{2} \psi(a n-L / 2)+\ldots\right]
\end{aligned}
$$

the Schrödinger equation, Eq. (156) becomes

$$
-\frac{\hbar^{2}}{2 m} \frac{\partial^{2}}{\partial x^{2}} \psi(x)=E \psi(x)
$$

where $\hbar^{2} / 2 m=a^{2} A$. This is the (time-independent) Schrödinger equation in continuum space, which is of central relevance for everything that follows.

This construction is summarized in Fig. 16. It implicitly introduces a vector space of functions whose properties we summarize in the following.

- Vector space of functions on finite, continuum ring (Limit $a \rightarrow 0$, but $L$ remains finite):
We introduce a dictionary between $\psi_{n}, \phi_{n}$ (N-component complex vectors) and $\psi(x), \phi(x)$ (complex wave functions)
- Superposition of statevectors

$$
\alpha \psi_{n}+\beta \phi_{n}
$$

becomes a superposition of wave functions

$$
\alpha \psi(x)+\beta \phi(x)
$$

- The inner product, or "scalar product" or "dot product", of statevectors becomes in the continuum limit an inner product (or "scalar product" or "dot product") for functions

$$
\sum_{n} \psi_{n}^{*} \phi_{n}=a \sum_{n} \psi^{*}(a n) \phi(a n) \rightarrow \int_{-L / 2}^{L / 2} d x \psi^{*}(x) \phi(x)
$$

Here we took the continuum limit of a Riemann sum.

- The normalization of state vectors implies the normalization of wave functions

$$
1=\sum_{n}\left|\psi_{n}\right|^{2} \rightarrow \int_{-L / 2}^{L / 2} d x|\psi(x)|^{2}
$$

- Just as for finite dimensional wave vectors, operators on the the vectors space of wave functions are linear maps from the vector space to itself (i.e. $O \psi(x)$ is also a wave function).

- As an example we already saw the action of the translation operator, Eq. (160)

$$
\begin{gathered}
T: \psi\left(x_{n}\right)=\frac{\psi_{n}}{\sqrt{a}} \rightarrow \frac{\psi_{n-1}}{\sqrt{a}}=\psi\left(x_{n}-a\right) \\
\text { or } T: \psi(x) \rightarrow \psi(x-a) \simeq \psi(x)-a \partial_{x} \psi(x)
\end{gathered}
$$

We remind ourselves that the generator creates the infinitesimal unitary operatorions, cf. Eq. (36),

$$
T=e^{-i a \hat{p} / \hbar}
$$

where $\hat{p}=-i \hbar \partial_{x}$ is the generator of translations. As any generator, it is Hermitian and it will be interpreted as the momentum operator, analogously to the angular momentum operator generating rotations, Eq. (36), (40) abvoe.

- We saw that the eigenvalues of $T$ are $e^{-i a p_{k}}$. For a finite ring (even when there is continuum space instead of discrete sites) the plane waves still have the property $e^{i p L / \hbar}=1 \Rightarrow p_{k}=2 \pi \hbar k / L, k \in \mathbb{Z}$. (Remember that for the discrete ring the maximal value were $\pm \pi / a$, but $a \rightarrow 0$ implies that we now reach all integers $k$ )
- The notation $\psi_{n}=\langle n \mid \psi\rangle$ suggests the notation $\psi(x)=\langle x \mid \psi\rangle$, where $|x\rangle \doteq \frac{|n\rangle}{\sqrt{a}}$ and we use $\doteq$ to denote the continuum limit.
- In this sense, the real space basis has the properties

$$
\begin{gathered}
\delta\left(x-x^{\prime}\right) \doteq \frac{\delta_{n n^{\prime}}}{a}=\frac{\langle n| n^{\prime}\rangle}{a} \doteq\langle x \mid x^{\prime}\rangle, \quad \text { (orthonormality) } \\
\mathbf{1}=\int_{-L / 2}^{L / 2} d x|x\rangle\langle x| \doteq a \sum_{n} \frac{|n\rangle\langle n|}{a}, \quad \text { (partition of unity) }
\end{gathered}
$$

- As mentioned, for the ring with finite circumference the momentum eigenstates are still discrete (even though infinitely many)

$$
\begin{aligned}
\langle k| k^{\prime}\rangle & =\delta_{p_{k} p_{k}^{\prime}} \\
\sum_{k}|k\rangle\langle k| & =\mathbf{1}
\end{aligned}
$$

Here the unity $\mathbf{1}$ is an $\infty \times \infty$ matrix.

- Since (up to a global phase)

$$
\langle x \mid k\rangle \doteq\langle n \mid k\rangle / \sqrt{a}=\frac{e^{i p_{k} x / \hbar}}{\sqrt{a}}
$$

the Fourier transform, Eq. (172), becomes

$$
\begin{aligned}
\psi(x) & =\langle x \mid \psi\rangle \doteq \frac{\langle n \mid \psi\rangle}{\sqrt{a}}=\frac{1}{\sqrt{L}} \sum_{k} e^{i p_{k} x / \hbar} \psi_{k} \\
\psi_{k} & =\frac{1}{\sqrt{N}} \sum_{n} e^{-i p_{k} x_{n} / \hbar} \psi_{n} \doteq \frac{1}{\sqrt{L}} \int d x e^{-i p_{k} x / \hbar} \psi(x)
\end{aligned}
$$

- Normalization means that

$$
1=\sum_{k=-\infty}^{\infty}\left|\psi_{k}\right|^{2}
$$

Thus, for a finite ring of circumference $L$, the quantum state is defined by an infinite dimensional complex vector $\left(\ldots, \psi_{-2}, \psi_{-1}, \psi_{0}, \psi_{1}, \psi_{2} \ldots\right)^{T}$. The space of infinite vectors (sequences) with convergent sum of square modules is called $\ell^{2}$.

- Infinite continuum ring ( Limit $L \rightarrow \infty$ after $a \rightarrow 0$ ):

In this case we require the wave functions $\psi(x)$ to be square integrable on the real axis (a space denoted $L^{2}(\mathbb{R})$ ).

- In the case of an infinite ring the spacing $2 \pi \hbar / L$ of momenta also vanishes and both real and momentum space become continuous. Here we define

$$
\frac{2 \pi \hbar}{L} \sum_{k} \rightarrow \int d p
$$

and we define

$$
|p\rangle=\sqrt{\frac{L}{2 \pi \hbar}}|k\rangle
$$

so that

$$
\begin{aligned}
\delta\left(p-p^{\prime}\right) & \doteq \frac{\delta_{k k^{\prime}}}{2 \pi \hbar / L}=\frac{\langle k| k^{\prime}\rangle}{2 \pi \hbar / L}=\langle p| p^{\prime}\rangle \quad(\text { orthonormality }) \\
\mathbf{1} & =\int d p|p\rangle\langle p| \doteq \frac{2 \pi \hbar}{L} \sum_{k} \frac{|k\rangle\langle k|}{2 \pi \hbar / L}, \quad \text { (partition of unity) }
\end{aligned}
$$

In this case the Fourier transform Eqs. (172), (187), becomes

$$
\begin{aligned}
& \psi(x) \equiv\langle x \mid \psi\rangle=\frac{1}{\sqrt{L}} \sum_{k} e^{i p_{k} x / \hbar} \underbrace{\langle k \mid \psi\rangle}_{\sqrt{2 \pi \hbar / L\langle p \mid \psi\rangle}}=\frac{1}{\sqrt{2 \pi \hbar}} \int d p e^{i p x / \hbar} \psi(p) \\
& \psi(p) \equiv\langle p \mid \psi\rangle \doteq \sqrt{\frac{L}{2 \pi \hbar}} \frac{1}{\sqrt{L}} \int d x e^{-i p x / \hbar} \psi(x)=\frac{1}{\sqrt{2 \pi \hbar}} \int d x e^{-i p x / \hbar} \psi(x)
\end{aligned}
$$

# 5.4 Position and momentum: Heisenberg uncertainty principle and equations of motion 

Summary of this section:

- Momentum and position do not commute and therefore can never be measured simulateneously.
- The expectation values of momentum and position operators have a time evolution consistent with Newtonian mechanics.

Before we will see that $\hat{p}=-i \hbar \partial_{x}$, the generator of translations, can be interpreted as the momentum we here discuss a necessary Lemma in which we determine that

$$
[\hat{p}, \hat{x}]=-i \hbar
$$

where $\hat{x}$ is the position operator defined by

$$
\hat{x} \psi(x)=x \psi(x)
$$

In the discrete case $\hat{x}=a \operatorname{diag}(1,2, \ldots, N)$ is a diagonal matrix in $n$ space.
Indeed we see for any wave function

$$
\begin{aligned}
\hat{p} \hat{x} \psi(x)-\hat{x} \hat{p} \psi(x) & =-i \hbar \partial_{x}(x \psi(x))+i \hbar x \partial_{x} \psi(x) \\
& =-i \hbar \psi(x)-i x \psi^{\prime}(x)+i \hbar \psi^{\prime}(x)
\end{aligned}
$$

As a consequence, we can use the general Heisenberg uncertainty relation, Eq. (46) to fin

$$
\left\langle\Delta \hat{p}^{2}\right\rangle_{\psi}\left\langle\Delta \hat{x}^{2}\right\rangle_{\psi} \geq \hbar^{2} / 4
$$

We can use the position operator to add a potential to the Hamiltonian entering Eq. (174).

$$
\hat{H}=\frac{\hat{p}^{2}}{2 m}+V(\hat{x}), \quad \hat{H} \psi(x)=E \psi(x)
$$

Eq. (198) will be the object of study for the following chapters.
Why did we interpret $\hat{p}$ as a momentum? We can derive the time dependent differential equations for $\hat{p}$ and $\hat{x}$ expectation values

$$
\begin{aligned}
\frac{d\langle\hat{x}\rangle}{d t} & =i\langle[H, \hat{x}]\rangle / \hbar \\
& =i\left\langle\left[\frac{\hat{p}^{2}}{2 m}, \hat{x}\right]\right\rangle / \hbar \\
& =i\left\langle\frac{\hat{p}}{2 m}[\hat{p}, \hat{x}]+[\hat{p}, \hat{x}] \frac{\hat{p}}{2 m}\right\rangle / \hbar \\
& =\left\langle\frac{\hat{p}}{m}\right\rangle \\
\frac{d\langle\hat{p}\rangle}{d t} & =i\langle[H, \hat{p}]\rangle / \hbar \\
& =-\left\langle\left[\partial_{x}, V(x)\right]\right\rangle \\
& =-\left\langle\partial_{x} V(x)\right\rangle
\end{aligned}
$$

So we see that the expectation values of $\hat{x}, \hat{p}$ describe Newton's equations of motion.

# 6 Quantum mechanics in a trap: The Harmonic Oscillator 

In the previous chapter we saw the first example of a system with continuum space, but discrete (momentum) quantum number: The finite ring. Here we introduce another classic examples of 1D wave mechanics with discrete spectra: the harmonic oscillator.

Apart from the harmonic oscillator and the particle on a ring, there is a third standard example for 1D quantum (wave) mechanics with a discrete spectrum: the particle in a box, which is left to the exercises.

Summary of this section:

- We algebraically determine the spectrum of the harmonic oscillator.
- We discuss the first few wave functions.

Consider the Hamiltonian

$$
\hat{H}=\frac{\hat{p}^{2}}{2 m}+\frac{m \omega^{2}}{2} \hat{x}^{2}
$$

- Both in classical and quantum physics, the harmonic oscillator is of universal importance as it describes the physics in the vicinity of potential minima, see Fig. 17

![img-19.jpeg](img-19.jpeg)

Figure 17: Close to the minumum of any potential, the physics is governed by the harmonic oscillator

- Mathematically, in terms of a Taylor expansion near the position of the minimum $x_{\min }, V(x) \simeq V\left(x_{\min }\right)+V^{\prime \prime}\left(x_{\min }\right)\left[x-x_{\min }\right]^{2} / 2$
- In Eq. (201) we parametrize $V^{\prime \prime}\left(x_{\min }\right)=m \omega^{2}$, where $\omega$ the classical oscillation frequency.
- It is further useful to introduce the characteristic length scale of the harmonic oscillator

$$
\ell=\sqrt{\frac{\hbar}{m \omega}}
$$

[Recall that $\hbar \omega$ is an energy and that $\hbar^{2} / m$ has units of energy times length squared, as can be readily seen by looking at the Hamiltonian of a free particle.]

# 6.1 Algebraic solution 

It is useful to introduce

$$
\hat{a}=\frac{1}{\sqrt{2} \ell}\left(x+\frac{i \ell^{2}}{\hbar} \hat{p}\right), \quad \hat{a}^{\dagger}=\frac{1}{\sqrt{2} \ell}\left(x-\frac{i \ell^{2}}{\hbar} \hat{p}\right) \quad \hat{N}=\hat{a}^{\dagger} \hat{a}
$$

and in the exercises we (you) show that

$$
\begin{aligned}
{\left[\hat{a}, \hat{a}^{\dagger}\right] } & =1 \\
\left\{\hat{a}, \hat{a}^{\dagger}\right\} & =\frac{\hat{x}^{2}}{\ell^{2}}+\frac{\ell^{2} \hat{p}^{2}}{\hbar^{2}} \\
{[\hat{a}, \hat{N}] } & =\hat{a}
\end{aligned}
$$

Hence we can rewrite

$$
\hat{H}=\frac{\hbar \omega}{2}\left[\frac{\hat{x}^{2}}{\ell^{2}}+\frac{\ell^{2} \hat{p}^{2}}{\hbar^{2}}\right]=\frac{\hbar \omega}{2}\left\{\hat{a}, \hat{a}^{\dagger}\right\}=\hbar \omega(\hat{N}+1 / 2)
$$

# 6.1.1 Quantization of $n$ quantum number 

We will use the eigenbasis of $\hat{N}$, defined as

$$
\hat{N}|n\rangle=n|n\rangle
$$

to solve the problem and as a first step use the condition implied by the Algebra, Eq. (204) to find the quantization condition for $n$.

The procedure is somewhat similar to Sec. 2.3, where the angular momentum algebra, Eq. (42) was used to infer the quantization condition of $l, m$

- We use that

$$
\begin{aligned}
0 \leq\|\hat{a}| n\rangle\|=\langle n| \hat{a}^{\dagger} \hat{a}|n\rangle & =n \underbrace{\langle n \mid n\rangle}_{\geq 0} \\
& \Rightarrow 0 \leq n
\end{aligned}
$$

- We next see that

$$
\begin{aligned}
& \hat{N} \hat{a}|n\rangle=\hat{a}[\hat{N}-1]|n\rangle=(n-1) \hat{a}|n\rangle \\
& \Rightarrow \hat{a}|n\rangle \propto|n-1\rangle
\end{aligned}
$$

Similarly

$$
\begin{aligned}
& \hat{N} \hat{a}^{\dagger}|n\rangle=\hat{a}^{\dagger}[\hat{N}+1]|n\rangle=(n+1) \hat{a}^{\dagger}|n\rangle \\
& \Rightarrow \hat{a}^{\dagger}|n\rangle \propto|n+1\rangle
\end{aligned}
$$

- Since the spectrum of $n$ is non-negative, there is a minimal $n_{\min }$ with the property

$$
\hat{a}\left|n_{\min }\right\rangle=0
$$

- Applying $\hat{a}^{\dagger}$ on both sides of Eq. (215) leads to

$$
n_{\min }\left|n_{\min }\right\rangle=0 \Rightarrow n_{\min }=0
$$

- Combining the fact that the eigenstate of $\hat{N}$ with smallest eigenvalue is $|0\rangle$ and that $\hat{a}^{\dagger}$ raises the eigenvalue by one we see that

$$
\{|n\rangle\}_{n=0}^{\infty}, \hat{N}|n\rangle=n|n\rangle
$$

forms an eigenbasis of $\hat{N}$, which we chose to be orthonormalized.

![img-20.jpeg](img-20.jpeg)

Figure 18: Orange: The potential under consideration. Red: Energy spectrum. Blue/Green: Leading wave functions for even/odd $n$.

# 6.1.2 Energy spectrum 

We see as a trivial corollary of the previous section that

$$
\hat{H}|n\rangle=\hbar \omega(n+1 / 2)|n\rangle
$$

Thus, as illustrated in Fig. 18

- The spectrum of the harmonic oscillator is equidistant.
- The energy spacing between adjacent levels is $\hbar \omega$ Remember the Planck/Einstein relation between frequency and energy.)
- There is a zero point energy $\hbar \omega / 2$.


### 6.2 Eigenfunctions in real space

So far we only discussed the eigenvalues of Eq. (201), now we also discuss some aspects of the eigenstates (more is left to the exercises).

- Groundstate wave function: We use that $\psi_{0}(x)=\langle 0 \mid x\rangle$ is determined by a simple

linear differential equation

$$
\begin{aligned}
0 & =\langle x| \hat{a}|0\rangle=\frac{1}{\sqrt{2} \ell}\langle x| \hat{x}+i \ell^{2} \hat{p} / \hbar|0\rangle \\
\Rightarrow 0 & =x \psi_{0}(x)+\ell^{2} \partial_{x} \psi_{0}(x) \\
\Rightarrow \psi_{0}(x) & =\frac{1}{\sqrt{\ell \sqrt{\pi}}} e^{-\frac{x^{2}}{2 \ell^{2}}}
\end{aligned}
$$

Where the red factor is chosen to normalize $\int d x|\psi(x)|^{2}=1$.

- Excited states: For the excited state we simply apply the ladder operator

$$
\begin{aligned}
\psi_{n}(x) & \propto\langle x|\left[\hat{a}^{\dagger}\right]^{n}|0\rangle \\
& \propto\left(x-\ell^{2} \partial_{x}\right)^{n} \psi_{0}(x)
\end{aligned}
$$

We find the first few states

$$
\begin{aligned}
& \psi_{1}(x)=\sqrt{2} \frac{x}{\ell} \psi_{0}(x) \\
& \psi_{2}(x)=\frac{2 x^{2} / \ell^{2}-1}{\sqrt{2}} \psi_{0}(x)
\end{aligned}
$$

Again, red factors are included to normalize the states.

Comments

- The full set of eigenstates and their relationship to the Hermite Polynomials is discussed in the exercises.
- Note that eigenstates are representations of the inversion symmetry

$$
\psi_{n}(-x)=(-1)^{n} \psi_{n}(x)
$$

- One may easily see this by seeing that $\hat{a}^{\dagger}$ is odd under inversion.
- This is just another example where the eigenstates of the Hamiltonian have to have well defined eigenvalues under a symmetry.
- The ground state is even under inversion, this is typical for many quantum mechanical problems.
- The $n$-th wave function has $n$ nodes ( $=$ linear zero crossings), see Fig. 18
- This is not too different from the nodes of a string swinging in a music instrument (see also the problem of a particle in box, Exercise sheet 5).
- At the position of a node, the probability to find a particle vanishes.

# 7 Atomic Physics 

Atomic physics was one of the main scientific problems that led to the development of quantum mechanics.

An atom at rest consists of a central nucleus with charge $Z$ and mass of about $M=A m_{\text {proton }}$ which is enclosed by an electronic cloud of $Z$ electrons with mass $m$. Here we follow the very simplest description of this problem

Since the mass of the nucleus by far exceeds the electron $m_{\text {proton }} \sim 1836 \mathrm{~m}$, the problem of $Z$ electrons and one nucleus reduces effectively to the problem of $Z$ electrons in a time-independent central potential. You are probably aware of similar reduction of, e.g. 2-body problem in classical mechanics to a one-body problem in a central potential, e.g. in Newtonian gravity.

$$
\hat{H}=\sum_{i=1}^{Z}\left[\frac{\hat{\vec{p}}_{i}^{2}}{2 m}+V\left(\hat{\vec{r}}_{i}\right)\right]+\frac{1}{2} \sum_{i \neq j} v\left(\hat{\vec{r}}_{i}-\hat{\vec{r}}_{j}\right)
$$

where

$$
\begin{aligned}
V(\vec{r}) & =-Z \frac{e^{2}}{r} \\
v(\vec{r}) & =\frac{e^{2}}{r}
\end{aligned}
$$

Note that we use natural units, if you prefer SI units, simply replace $e^{2} \rightarrow e^{2} / 4 \pi \epsilon_{0}$ everywhere.

### 7.1 Bound states of the Hydrogen Atom

Summary of this section: We consider the negative energy (i.e. bound state) solutions of the hydrogen atom, Eq. (226).

- We first use rotational symmetry and spherical Harmonics, (238) to...
- ... map to a 1-dimensional problem of a particle on a half-line, Eq. (247).
- The quantization condition follows from the properties of the associated Laguerre polynomials, leading to the energy quantization Eq. (257).
- The quantization condition can also be obtained without any knowledge of Laguerre polynomials from the algebraic structure of the Hamiltonian, Sec. 7.1.3.

We first consider the simplest atom in atomic physics: The hydrogen atom, with one electron and one proton. In this case

$$
\hat{H}=\frac{\hat{\vec{p}}^{2}}{2 m}-\frac{e^{2}}{r}
$$

Note that we now use three vectors of momentum and position with the relationship

$$
\left[p_{j}, r_{k}\right]=-i \hbar \delta_{j k}
$$

The Schrödinger equation is thus

$$
\left(\frac{\hat{\vec{p}}^{2}}{2 m}-\frac{e^{2}}{r}\right) \psi_{E_{n}}(\vec{r})=E_{n} \psi_{E_{n}}(\vec{r})
$$

# 7.1.1 Rotational invariance - particle in a central potential 

We're trying to solve a problem in a central potential - clearly system is isotropic ( $=$ invariant under rotations of the coordinate system). We already encountered multiple times, that a symmetry implies a good quantum number, in this case angular momentum.

- Definition: By analogy to classical mechanics we define the orbital angular momentum opeator

$$
\hat{\vec{L}}=\hat{\vec{r}} \times \hat{\vec{p}}
$$

- In the exercises you demonstrate that

$$
\left[\hat{L}_{i}, \hat{L}_{j}\right]=i \hbar \epsilon_{i j k} \hat{L}_{k}
$$

i.e. that $\hat{\vec{L}}$ fulfills the angular momentum algebra, Eq. (42). Thus we already know its possible eigenvalues and eigenstates!

- It is furthermore convenient to switch to spherical coordinates

$$
\vec{r}=\left(\begin{array}{l}
x \\
y \\
z
\end{array}\right)=r\left(\begin{array}{c}
\sin (\theta) \cos (\phi) \\
\sin (\theta) \sin (\phi) \\
\cos (\theta)
\end{array}\right)
$$

where $\theta \in[0, \pi], \phi \in[0,2 \pi)$.

- Switching from one coordinate system to the other is straightforward but tedious (see exercises). The three most important formulas are

$$
\begin{aligned}
\hat{L}_{z} & =-i \hbar \partial_{\phi} \\
\hat{\vec{L}}^{2} & =-\hbar^{2}\left(\frac{1}{\sin (\theta)} \partial_{\theta}\left[\sin (\theta) \partial_{\theta} \bullet\right]+\frac{1}{\sin ^{2}(\theta)} \partial_{\phi}^{2}\right) \\
\hat{\vec{p}}^{2} & =-\hbar^{2}\left[\frac{1}{r^{2}} \partial_{r}\left(r^{2} \partial_{r} \bullet\right)\right]+\frac{1}{r^{2}} \hat{\vec{L}}^{2}
\end{aligned}
$$

- In radial coordinates it becomes manifest that $[\hat{H}, \hat{\vec{L}}]=0$ (i.e. that rotational symmetry implies commutation of Hamiltonian and angular momentum).
- We can thus use $\hat{H}, \hat{\vec{L}}^{2}, \hat{L}_{z}$ as a complete set of compatible observables. We denote the corresponding eigenvalues $E_{n}, l, m$.

The Schrödinger equation becomes

$$
\left(\frac{1}{2 m}\left[-\frac{\hbar^{2}}{r^{2}} \partial_{r}\left(r^{2} \partial_{r} \bullet\right)+\frac{1}{r^{2}} \hat{\vec{L}}^{2}\right]-\frac{e^{2}}{r}\right) \psi_{E_{n}, l, m}(r, \theta, \phi)=E_{n} \psi_{E_{n}, l, m}(r, \theta, \phi)
$$

- Remember that angular momenta allow for integer and half-integer representations. Here, the wave function $\psi_{E, l, m}(r, \theta, \phi)=\psi_{E, l, m}(r, \theta, \phi+2 \pi)$ must be periodic in $\phi$, which implies that only $l \in \mathbb{N}_{0}$ can be solutions (i.e. integer spin).
- The eigenfunctions of $\hat{\vec{L}}$ are the spherical harmonics $Y_{l}^{m}(\theta, \phi)=\langle\theta, \phi \mid l, m\rangle$, where $|l, m\rangle$ you know from Sec. 2.3

$$
\begin{aligned}
& \hat{L_{z}} Y_{l}^{m}(\theta, \phi)=\hbar m Y_{l}^{m}(\theta, \phi) \\
& \hat{\vec{L}}^{2} Y_{l}^{m}(\theta, \phi)=\hbar^{2} l(l+1) Y_{l}^{m}(\theta, \phi)
\end{aligned}
$$

Which you already know from your E \& M class (see also recap in the exercises).
Here we repeat their definition

$$
Y_{l}^{m}(\theta, \phi)=\mathcal{N} e^{i m \phi} P_{l}^{m}(\cos (\theta))
$$

where

$$
\mathcal{N}=(-1)^{m} \sqrt{\frac{2 l+1}{4 \pi} \frac{(l-m)!}{(l+m)!}}
$$

is a normalization constant and $P_{l}^{m}(x), x \in[-1,1]$, are associated Legendre polynomials and $-l \leq m \leq l, l \in \mathbb{N}_{0}$.

![img-21.jpeg](img-21.jpeg)

Figure 19: Radial potential in the Hydrogen atom in various $l$ channels, along with quantized energy eigenvalues.

- Note that that $\widehat{L}^{2}, \hat{L}_{z}$ form a complete set of compatible observables at fixed $r$ ( $r$ drops out of $\widehat{L}$ !), so that the spherical harmonics actually have to form an orthonormal basis on the sphere

$$
\begin{aligned}
& \int_{-1}^{1} d \cos (\theta) \int_{0}^{2 \pi} d \phi\left[Y_{l}^{m}(\theta, \phi)\right]^{*} Y_{l^{\prime}}^{m^{\prime}}(\theta, \phi)=\delta_{l l^{\prime}} \delta_{m m^{\prime}}, \quad \text { (orthonormality) } \\
& \sum_{l=0}^{\infty} \sum_{m=-l}^{l} Y_{l}^{m}(\theta, \phi) Y_{l}^{m}\left(\theta^{\prime}, \phi^{\prime}\right)\left[{ }^{*}=\frac{1}{\sin (\theta)} \delta\left(\theta-\theta^{\prime}\right) \delta\left(\phi-\phi^{\prime}\right), \quad \text { (completeness }\right)
\end{aligned}
$$

This is actually the reason why you can do multipole expansions.

# 7.1.2 Solution of radial wave function of the Hydrogen atom. 

Everything that we discussed in the previous section is valid for any central (i.e. $\theta, \phi$ independent) potential. Now we solve the problem for the Coulomb case

- It is convenient to split the $\psi_{E_{n}, l, m}(r, \theta, \phi)=\frac{1}{r} u_{E_{n}, l}(r) Y_{l}^{m}(\theta, \phi)$.
- The normalization implies

$$
1=\int_{0}^{\infty} d r r^{2} \int_{-1}^{1} d \cos (\theta) \int_{0}^{2 \pi} d \phi\left|\frac{u_{E_{n}, l}(r)}{r}\right|^{2}\left|Y_{l}^{m}(\theta, \phi)\right|^{2}=\int_{0}^{\infty} d r\left|u_{E_{n}, l}(r)\right|^{2}
$$

Since contrary to the situation in the plane, there is an additional $r^{2}$ in the normalizing integral, square integrable functions may diverge as $1 / r$ (actually even up to half a power faster) at the orgin. We have incorporated this in our Ansatz.

- Plug the Ansatz into the Schrödinger equation (235) and use that

$$
\begin{aligned}
\frac{1}{r^{2}} \partial_{r}\left[r^{2} \partial_{r}\left(\frac{1}{r} u_{E_{n}, l}(r)\right)\right] & =\frac{1}{r^{2}} \partial_{r}\left(-u_{E_{n}, l}(r)+r u_{E_{n}, l}^{\prime}(r)\right) \\
& =\frac{u_{E_{n}, l}^{\prime \prime}(r)}{r}
\end{aligned}
$$

We also readily evaluate the angular part. This leads to

$$
-\frac{\hbar^{2} \partial_{r}^{2}}{2 m} u_{E_{n}, l}(r)+\left[\frac{\hbar^{2} l(l+1)}{2 m r^{2}}-\frac{e^{2}}{r}\right] u_{E_{n}, l}(r)=E_{n, l} u_{E_{n}, l}(r)
$$

- We recognize a typical length and energy scale in the potential

$$
\begin{aligned}
& a_{B}=\frac{\hbar^{2}}{e^{2} m} \approx 5 \times 10^{-11} \mathrm{~m}(\text { Bohr radius }) \\
& R_{y}=\frac{e^{2}}{2 a_{B}}=\frac{\hbar^{2}}{2 m a_{B}^{2}} \approx 13.6 \mathrm{eV}(\text { Rydberg energy })
\end{aligned}
$$

So that

$$
-\frac{\hbar^{2} \partial_{r}^{2}}{2 m} u_{E_{n}, l}(r)+\underbrace{R_{y}\left[\frac{l(l+1) a_{B}^{2}}{r^{2}}-2 \frac{a_{B}}{r}\right]}_{V(r)} u_{E_{n}, l}(r)=E_{n, l} u_{E_{n}, l}(r)$

Comments:

- The 3D problem of the hydrogen atom has been reduced to a 1D problem of a particle in a trap $V(r)$, see Fig. 19.
- for $l>0$ the trap can be expanded near its minimum at $r_{0}=a_{B} l(l+1)$,

$$
V(r) \simeq R_{y}\left[-\frac{1}{l(l+1)}+\frac{\left(r-r_{0}\right)^{2}}{a_{B}^{2} l^{3}(1+l)^{3}}\right]
$$

- The minimum moves outwards with increasing $l$.

- For the derivation of the exact eigenfunctions we measure $r$ in units of $\ell_{n}$, where

$$
\begin{aligned}
\ell_{n} & =\frac{\hbar}{\sqrt{2 m\left|E_{n, l}\right|}}\left(\text { wave length of bound state with energy } E_{n, l}=-\left|E_{n, l}\right|\right) \\
r & =\frac{\rho \ell_{n}}{2}
\end{aligned}
$$

We use $u_{n, l}(\rho)=u_{E_{n}, l}\left(\rho \ell_{n} / 2\right)$ to rewrite (blue for terms from rescaling)

$$
\begin{gathered}
-\frac{\hbar^{2}}{2 m} \frac{4}{\ell_{n}^{2}} u_{n, l}^{\prime \prime}(\rho)+\left[\frac{\hbar^{2}}{2 m} \frac{4}{\ell_{n}^{2}} \frac{l(l+1)}{\rho^{2}}-\frac{2 \hbar^{2}}{m \ell_{n} a_{B}} \frac{1}{\rho}\right] u_{n, l}(\rho)=-\frac{\hbar^{2}}{2 m \ell_{n}^{2}} u_{n, l}(\rho) \\
u_{n, l}^{\prime \prime}(\rho)+\left[\frac{\lambda_{n}}{\rho}-\frac{l(l+1)}{\rho^{2}}-\frac{1}{4}\right] u_{n, l}(\rho)=0
\end{gathered}
$$

Here we used $\lambda_{n}=\ell / a_{B}=\frac{e^{2}}{\hbar} \sqrt{\frac{m}{2\left|E_{n}\right|}}$.
Next, we use the Ansatz $u(\rho)=e^{-\rho / 2} \rho^{l+1} F(\rho)$ to get

$$
\rho F^{\prime \prime}(\rho)+\underbrace{\left[2(l+1)-\rho\right] F^{\prime}(\rho)}_{\equiv \alpha+1}+\underbrace{\left[\lambda_{n}-(l+1)\right] F(\rho)}_{\equiv i}=0
$$

This equation is known as Kummer's equation. Its solution for $i \in \mathbb{N}_{0}$ are finite polynomials called generalized Laguerre polynomials

$$
L_{i}^{(\alpha)}(\rho)=\left\{\begin{array}{l}
1, \quad i=0 \\
-x+\alpha+1, \quad i=1 \\
\frac{1}{2}\left(x^{2}-2(\alpha+2) x+(\alpha+1)(\alpha+2)\right), i=2 \\
\cdots
\end{array}\right.
$$

Comments:

- Note that $i$ has to be an integer, otherwise the wave functions are not normalizable (for simple arguments for this condition without using the word "Laguerre polynomials", see Townsend Chap. 10.2).
- We give some algebraic arguments in the next subsection of these lecture notes.
- We thus find the quantization condition

$$
\lambda_{n}-(l+1)=i ; i=0,1,2,3, \ldots
$$

or equivalently

$$
\lambda_{n}=n, n=l+1, l+2, l+3, \ldots
$$

so that $\ell_{n}=n a_{B}$.

- We summarize the main results
* As $\hat{\vec{L}}$ is a good quantum number, we decompose the Hilbert space into sectors of $l=0,1,2,3, \ldots$, each has degeneracy $2 l+1$.
* Within each sector the energy is, see Fig. 19

$$
E_{n, l}=-\frac{\hbar^{2}}{2 m \ell_{n}^{2}}=-\frac{R_{y}}{n^{2}} \text { with } n=l+1, l+2, l+3 \ldots
$$

The corresponding wave functions have the form

$$
\psi_{n, l, m}(r, \theta, \phi)=\mathcal{N} r^{l} e^{-\frac{r}{n a_{B}}} L_{n-l-1}^{(2 l+1)}\left(\frac{2 r}{n a_{B}}\right) Y_{l}^{m}(\theta, \phi)
$$

# 7.1.3 Algebraic solution of the radial equation 

We have see above how to get the solution using the knowledge of Kummer's equation and the Laguerre polynomials. However, following the spirit of this lecture course, cf. Secs. 2.3, 6 , we also provide an algebraic solution to the problem. This is technically related to a method called "supersymmetric quantum mechanics" but for the sake of the lecture course I will not go into details where the supersymmetry is actually hidden.

- Using units in which we measure energy in units of $R_{y}, \epsilon=E / R_{y}$ and length in units of $a_{B}$ (i.e $\varrho=r / a_{B}$ ). We sometimes switch to ket notation, i.e. $u_{n, l}(r)=\left\langle r \mid u_{n, l}\right\rangle$ (or analogously using $\varrho$ ). We thus rewrite Eq. (247) as (as before $l \geq 0$ and we will see that $n \geq l+1$ )

$$
\hat{H}_{l}|n, l\rangle=\epsilon|n, l\rangle
$$

- It is useful to introduce

$$
\begin{aligned}
\hat{Q}_{l+1} & =-i\left(\partial_{\varrho}+W_{l+1}(\varrho)\right) \\
\hat{Q}_{l+1}^{\dagger} & =-i\left(\partial_{\varrho}-W_{l+1}(\varrho)\right) \\
W_{l+1}(\varrho) & =\frac{1}{l+1}-\frac{l+1}{\varrho}
\end{aligned}
$$

- It is obvious that $\hat{Q}_{l+1} \hat{Q}_{l+1}^{\dagger}$ and $\hat{Q}_{l+1}^{\dagger} \hat{Q}_{l+1}$ are positive semidefinite operators. (This follows from the positive norm of $\hat{Q}_{l+1}|\psi\rangle, \hat{Q}_{l+1}^{\dagger}|\psi\rangle$ for any $|\psi\rangle$.)
- Moreover, the Hamiltonian can be expressed by means of $\hat{Q}_{l+1}$ very similarly to the case of the Harmonic oscillator.

$$
\begin{aligned}
\hat{H}_{l+1} & =\hat{Q}_{l+1} \hat{Q}_{l+1}^{\dagger}-\frac{1}{(l+1)^{2}} \\
\hat{H}_{l} & =\hat{Q}_{l+1}^{\dagger} \hat{Q}_{l+1}-\frac{1}{(l+1)^{2}}
\end{aligned}
$$

- We further observe that $\hat{H}_{l}$ and $\hat{H}_{l+1}$ have related eigenstates
- Indeed, let $\left|\psi_{n, l+1}\right\rangle$ be eigenstate to $\hat{H}_{l+1}: \hat{H}_{l+1}\left|\psi_{n, l+1}\right\rangle=\epsilon_{n, l+1}\left|\psi_{n, l+1}\right\rangle$. Then $\hat{Q}_{l+1}^{\dagger}\left|\psi_{n, l+1}\right\rangle$ is an eigenstate to $\hat{H}_{l}$ with the same energy:

$$
\hat{H}_{l}\left[\hat{Q}_{l+1}^{\dagger}\left|\psi_{n, l+1}\right\rangle\right]=\hat{Q}_{l+1}^{\dagger} \hat{H}_{l+1}\left|\psi_{n, l+1}\right\rangle=\epsilon_{n, l+1} \hat{Q}_{l+1}^{\dagger}\left|\psi_{n, l+1}\right\rangle
$$

- The same holds also going up in $l$ : let $\left|\psi_{n, l}\right\rangle$ be eigenstate to $\hat{H}_{l}: \hat{H}_{l}\left|\psi_{n, l}\right\rangle=$ $\epsilon_{n, l}\left|\psi_{n, l}\right\rangle$. Then $\hat{Q}_{l+1}\left|\psi_{n, l}\right\rangle$ is an eigenstate to $\hat{H}_{l+1}$ with the same energy:

$$
\hat{H}_{l+1}\left[\hat{Q}_{l+1}\left|\psi_{n, l}\right\rangle\right]=\hat{Q}_{l+1} \hat{H}_{l}\left|\psi_{n, l}\right\rangle=\epsilon_{n, l} \hat{Q}_{l+1}\left|\psi_{n, l}\right\rangle
$$

- Thus spectra of $\hat{H}_{l}$ and $\hat{H}_{l+1}$ are nearly the same (see the next bullet point). In particular, this is the reason why $\epsilon_{n}$ is actually not $l$ dependent!
- Very importantly, there are instance where $\hat{Q}_{l+1}$ annihilates an eigenstate $\left|\psi_{n, l}\right\rangle$.
- The corresponding wave function can readily built explicitly:

$$
\hat{Q}_{l+1} \psi_{\mathrm{GS}, \mathrm{l}}(\varrho)=0 \Rightarrow \psi_{\mathrm{GS}, \mathrm{l}}(\varrho) \sim e^{-\int_{0}^{\varrho} d \varrho^{\prime} W_{l+1}\left(\varrho^{\prime}\right)}
$$

- Note that one may be tempted to build an analogous zero mode for the $\hat{Q}_{l+1}^{\dagger}$ :

$$
\hat{Q}_{l+1}^{\dagger} \psi(\varrho)=0 \Rightarrow \psi(\varrho) \sim e^{+\int_{0}^{\varrho} d \varrho^{\prime} W_{l+1}\left(\varrho^{\prime}\right)}
$$

However this wave function is exponentially increasing and thus not normalizable (not part of the Hilbertspace!!!)

- Since $\hat{Q}_{l+1}^{\dagger} \hat{Q}_{l+1}$ is positive semidefinite, it is the ground state to $\hat{H}_{l}$ (hence the notation $\left.\mathrm{GS}, \mathrm{l}+1\right)$.
- The ground state energy for given $l$ is $-1 /(l+1)^{2}$ in units of the Rydberg energy.
- As the groundstate is annihilated by the "ladder" operator $\hat{Q}_{l+1}$ there is not equivalent state in $\hat{H}_{l+1}$.
- For an illustration, see Fig. 19.


# 7.1.4 Spectroscopy of the Hydrogen atom 

- When an electron decays from an excited state with principle quantum number $n_{i}$ to a state with $n_{f}<n_{i}$ it emits a photon of quantized energy/frequency

$$
\hbar \omega=R_{y}\left[\frac{1}{n_{f}^{2}}-\frac{1}{n_{i}^{2}}\right]
$$

- There are three principle series that are distinguished \{in curly brackets the energy of the photon for $n_{i}=n_{f}+1, n_{f}+2, n_{f}+3, \ldots, \infty\}$ :
- Final state $n_{f}=1$ [Lyman series, ultraviolet]
$\hbar \omega=R_{y}\left\{\frac{3}{4}, \frac{8}{9}, \frac{15}{16}, \ldots, 1\right\}=\{10.13,12,12.66, \ldots, 13.6\} e V$.
- Final state $n_{f}=2$ [Balmer series, visible]
$\hbar \omega=R_{y}\left\{\frac{5}{36}, \frac{3}{16}, \frac{21}{100}, \ldots, \frac{1}{4}\right\}=\{1.88,2.55,2.86, \ldots 3.4\} e V$.
- Final state $n_{f}=3$ [Paschen series, infrared]
$\hbar \omega=R_{y}\left\{\frac{8}{144}, \frac{16}{255}, \frac{1}{12}, \ldots, \frac{1}{9}\right\}=\{0.66,0.97,1.33, \ldots, 1.51\} e V$.
- It's worthwhile to keep in mind the theorist rule of thumb for the visible octave: $\frac{\pi}{2} e V \lesssim \hbar \omega \lesssim \pi e V$ to see which series is UV, visible, IR.


# 7.2 Periodic table of elements 

Summary of this section: To build a basic understanding of the periodic table of elements

- As we deal with more than one electron occupying the same cloud, we introduce the concept of indistinguishable quantum particles and their possible statistical angles, cf. Fig. 20.
- This leads to Pauli's exclusion principle (two fermions cannot occupy the same quantum state).
- We illustrate this by generalizing the results of the bound states of electrons in a Coulomb potential $-Z e^{2} / r$ from $Z=1$ to $Z \geq 1-$ a trivial generalization from Eq. (257) by rescaling $e^{2} \rightarrow Z e^{2}$.
- Finally, we discuss electron-electron interactions leading to "Hund's rules".


### 7.2.1 Indistinguishable Particles: Bosons and Fermions

Before considering two indistinguishable quantum particles, consider two indistinguishable classical particles, e.g. two identical Billiard balls (e.g. both black-8) on a Pool table.

Of course, the configuration of the two Billiard balls is identical if we just switch the position of the two of them.

At the same time, we look at the time-evolutions of such two balls, we can tell them apart at each moment in time. In mathematical terms, we can trace their trajectories $\vec{x}_{1}(t), \vec{x}_{2}(t)$ at any moment in time.

This is equivalent to saying that we tacitly labelled the two Billiard balls in our heads (e.g. with the label "left" and "right").

Consider now two quantum mechanical indistinguishable particles.

- Just as in the classical case, the operation of swapping their position shouldn't affect the physics. Mathematically speaking the two-body wave function has the property

$$
\psi\left(\vec{x}_{1}, \vec{x}_{2}\right) \xrightarrow{\text { exchange }} e^{i \phi} \psi\left(\vec{x}_{2}, \vec{x}_{1}\right)
$$

(Remember that the phase $\phi$ drops out from any quantum mechanical expectation value. Hence indistinguishability only imposes that the wave function has to be equal up to a phase.)

- In the quantum mechanical case, wave functions of particle 1 and 2 generally overlap. Contrary to the classical case it is thus not clear which part of the wave function should be attributed to one of the two identical particles or the other
- Moreover, the above mentioned classical prescription of "following the trajectory of the two identical particles" to tell the apart is not applicable to unaltered quantum mechanical time evolution (observation would imply a collapse of the wavefunction!).

The values of the phase $\phi$ in Eq. (269) are severely limited.

- Imagine the swapping procedure is preformed physically by slowly moving a very deep quantum trap for two quantum mechanical particles.
- If we exchange two particles twice, then we find following Eq. (269) (cf. Fig. 20 a), and b)

$$
\psi\left(\vec{x}_{1}, \vec{x}_{2}\right) \xrightarrow{\text { exchange }^{2}} e^{i 2 \phi} \psi\left(\vec{x}_{1}, \vec{x}_{2}\right)
$$

- At the same time from the perspective of the restframe of (the particle in) trap 1, (the particle in) trap 2 just circled around it, Fig. 20 c ).
- In 3D encircling one particle by the other can be undone (the loop can be contracted to zero).
- Thus the wavefunction returns to itself after double exchange, i.e. $e^{i 2 \phi}= \pm 1$.
- Indistinguishable particles with statistical angle $\phi=0$ are called "bosons"

![img-22.jpeg](img-22.jpeg)

Figure 20: Exchange of two indistinguishable quantum particles. a) Evolution of the wave function upon exchanging particles as in b). c) The double exchange is equivalent to one particle encircling the other. d) In 3D such a process can always be undone.

- Indistinuishable particles with statistical angle $\phi=\pi$ are called "fermions"
- In the context of elementary particle physics, the spin of the particle (integer or half-odd-integer, respectively) can be linked to its statistical angle (bosonic or fermionic, respectively) ("spin-statistics-theorem").
- In 2D systems the loop of Fig. 20 d) cannot be contracted to zero. Therefore all statistical angles exist.
- The particles with $\phi \neq 0, \pi$ are called "anyons" as their statistical angle is arbitrary
- Such particles can be realized in experiment and are important in quantum information science ("topological quantum computation" as well a "topological quantum error correciton codes").


# 7.2.2 Pauli principle 

- We will for now ignore the contribution of inter-electron interaction (for Helium it is much smaller than the contribution of electron-nucleus interaction, i.e. the $v$ term is small as compared to the $V$ term in Eq. (225), see Sec. 7.2.3 for more details.)
- To leading order in perturbation theory we can thus drop $v$ and obtain that of the $Z$ electrons has approximate eigenvalues and eigenstates

$$
E_{n, l} \simeq-Z \frac{R_{g}}{n^{2}}, n=l+1
$$

with eigenstates where $a_{B} \rightarrow a_{B} / Z$ as compared to the hydrogen atom.

- Naively, the effective wave function and total energy for the $Z$ electron system is then

$$
\begin{aligned}
\Psi\left(\vec{x}_{1}, \ldots, \vec{x}_{Z}\right) & =\prod_{i=1}^{Z} \psi_{n_{i}, l_{i}, m_{i}, \sigma_{i}}\left(\vec{x}_{i}\right),[\text { incorrect equation! }] \\
E & =\sum_{i=1}^{Z} E_{n_{i}, l_{i}}[\text { incorrect equation! }]
\end{aligned}
$$

with simple rescaling $e^{2} \rightarrow Z e^{2}$ both in the Bohr radius and Rydberg energy entering Eqs. (257).

- Note that we have added $\sigma_{i}= \pm 1 / 2$, i.e. the spin of each electron.
- However an important Lemma of the properties of indistinguishable quantum particles is the

Paul principle: Two fermions can never occupy the same quantum state.
To see this consider the Helium atom $(Z=2)$ and the wave function

$$
\Psi\left(\vec{x}_{1}, \vec{x}_{2}\right)=\psi_{n_{1}, l_{1}, m_{1}, \sigma_{1}}\left(\vec{x}_{1}\right) \psi_{n_{2}, l_{2}, m_{2}, \sigma_{2}}\left(\vec{x}_{2}\right)[\text { incorrect equation! }]
$$

- It clearly is never antisymmetric when $\left(n_{1}, l_{1}, m_{1}, \sigma_{1}\right)=\left(n_{2}, l_{2}, m_{2}, \sigma_{2}\right)$.
- However, when $\left(n_{1}, l_{1}, m_{1}, \sigma_{1}\right) \neq\left(n_{2}, l_{2}, m_{2}, \sigma_{2}\right)$ we can construct the following antisymmetric wave function

$$
\Psi_{A}\left(\vec{x}_{1}, \vec{x}_{2}\right)=\frac{1}{\sqrt{2}}\left[\psi_{n_{1}, l_{1}, m_{1}, \sigma_{1}}\left(\vec{x}_{1}\right) \psi_{n_{2}, l_{2}, m_{2}, \sigma_{2}}\left(\vec{x}_{2}\right)-\psi_{n_{1}, l_{1}, m_{1}, \sigma_{1}}\left(\vec{x}_{2}\right) \psi_{n_{2}, l_{2}, m_{2}, \sigma_{2}}\left(\vec{x}_{1}\right)\right]
$$

# 7.2.3 Electron-electron interactions 

- Apart from their statistical interactions, electrons also interact by means of the Coulomb interaction $v(\vec{r})=e^{2} / r$

- This term is a perturbation for $Z=2$ (Helium atom), where it splits the degeneracy of states with two electrons with the same principle quantum number $n$ and different spin- and angular momentum configurations.
- For larger $Z$ it is only a qualitative guidance to consider the effect as a perturbation.
- There are two major effects of the electron interactions


# 1. Lifting the degeneracy of different $l$ at the same $n$ 

- The effective potential seen by a given electron is

$$
V(r) \simeq \begin{cases}-\frac{Z r^{2}}{r}, & r \rightarrow 0 \\ -\frac{r^{2}}{r}, & r \rightarrow \infty\end{cases}
$$

(at large $r$ the other $Z-1$ electrons screen most of the nuclear charge).

- Therefore, at equal $n$, states with smaller $l$ are energetically favored (as they are more centered towards the strongly attractive origin) over states with larger $l$.


## 2. Hund's rules

- Since the interaction is between two particles at a time, it is sufficient to illustrate the main effect using a wave function of two electrons with the same $n$
- For concreteness we compare two electrons in the $m_{s}=0$ singlet (upper sign) and triplet states (lower sign - the energy of the other triplet states is the same and follows by symmetry)

$$
\begin{aligned}
\Psi_{\left\{l_{i}, m_{i}\right\}}\left(\vec{x}_{1}, \vec{x}_{2}\right) & =\frac{1}{2}\left[\psi_{n, l_{1}, m_{1}, \uparrow}\left(\vec{x}_{1}\right) \psi_{n, l_{2}, m_{2}, \downarrow}\left(\vec{x}_{2}\right) \mp \psi_{n, l_{1}, m_{1}, \downarrow}\left(\vec{x}_{1}\right) \psi_{n, l_{2}, m_{2}, \uparrow}\left(\vec{x}_{2}\right)\right. \\
& \left.-\psi_{n, l_{1}, m_{1}, \uparrow}\left(\vec{x}_{2}\right) \psi_{n, l_{2}, m_{2}, \downarrow}\left(\vec{x}_{1}\right) \pm \psi_{n, l_{1}, m_{1}, \downarrow}\left(\vec{x}_{2}\right) \psi_{n, l_{2}, m_{2}, \uparrow}\left(\vec{x}_{1}\right)\right] \\
& =\frac{1}{\sqrt{2}}\left[\psi_{n, l_{1}, m_{1}}\left(\vec{x}_{1}\right) \psi_{n, l_{2}, m_{2}}\left(\vec{x}_{2}\right) \pm \psi_{n, l_{1}, m_{1}}\left(\vec{x}_{2}\right) \psi_{n, l_{2}, m_{2}}\left(\vec{x}_{1}\right)\right] \\
& \times \frac{1}{\sqrt{2}}\left[\left|\uparrow_{1}, \downarrow_{2}\right\rangle \mp\left|\downarrow_{1}, \uparrow_{2}\right\rangle\right]
\end{aligned}
$$

- Due to the orthogonal singlet/triplet wave functions, the matrix elements of the interaction term vanish for terms mixing different spin sectors .

* Within a given sector we obtain for $\left|l, m ; l^{\prime} m^{\prime}\right\rangle$ we get

$$
\begin{aligned}
& \left\langle l, m ; l^{\prime}, m^{\prime}|v| l, m ; l^{\prime}, m^{\prime}\right\rangle=\int d^{3} x_{1} d^{3} x_{2} \frac{e^{2}}{\left|\vec{x}_{1}-\vec{x}_{2}\right|}\left|\psi_{n, l, m}\left(\mathbf{x}_{1}\right)\right|^{2}\left|\psi_{n, l^{\prime}, m^{\prime}}\left(\mathbf{x}_{2}\right)\right|^{2} \\
& \pm \int d^{3} x_{1} d^{3} x_{2} \frac{e^{2}}{\left|\vec{x}_{1}-\vec{x}_{2}\right|} \psi_{n, l, m}\left(\mathbf{x}_{1}\right)^{*} \psi_{n, l^{\prime}, m^{\prime}}\left(\mathbf{x}_{1}\right) \psi_{n, l^{\prime}, m^{\prime}}\left(\mathbf{x}_{2}\right)^{*} \psi_{n, l, m}\left(\mathbf{x}_{2}\right) \\
& =J_{l ; l^{\prime}} \pm K_{l ; l^{\prime}}
\end{aligned}
$$

where the lower sign is for the triplet.

* The term $K_{l l^{\prime}}$ leads to a lowering of the energy as can be understood by the additional nodes in the orbital wave function which suppressed the Coulomb repulsion
- This motivates that spin-triplet (or more generally high-spin) states are favored over spin-singlet states
- Morover, to fill a given $(n, l)$ shell, it is favorable to use all different $m$ boxes (high angular momentum)
- The last two statements are known as Hund's 1st and second rule.


# 7.2.4 Construction of the periodic table. 

- The periodic table of elements follows from the ground state configuration of the electronic wave functions for each element.
- The electronic ground state wave function is obtained by filling the lowest possible quantum state keeping in mind Pauli's principle of no double occupancy.
- Moreover, the occupation of electrons follow Hund's rules.

For a schematic illustration of the electronic state of three elements, see Fig. 21.

![img-23.jpeg](img-23.jpeg)

Figure 21: Illustration of the electronic state for three elements and comparison to Menedeleev's table.

# Part III 

## THE UGLY: Infinite dimensional Hilbert spaces: Continuous Spectrum

## 8 Electromagnetic fields and quantum interference

Summary of this section: This section includes

- the basics of how to couple electromagnetic fields to quantum particles, Eq. (282).
- a fundamental interference effect: The Aharonov Bohm effect, in particular the destructive interference for particles travelling around a central half-flux quantum, Fig. 22.


### 8.1 Minimal coupling

Just as in classical mechanics, the Hamiltonian of a particle subjected to a vector potential $\vec{A}(\vec{x}, t)$ is

$$
\hat{H}=\frac{\left(\widehat{\vec{p}}+\frac{q}{c} \vec{A}(\widehat{x}, t)\right)^{2}}{2 m}
$$

Here, $q$ is the charge of the particle and $c$ the speed of light. Note that, given that $\widehat{x}$ and $\widehat{p}$ do not commute, the vector potential and the momentum do not, generally, commute.

A major consequence of quantum particles interacting with an external magnetic field is the appearance of Landau levels (see Exercise sheet).

### 8.2 Aharonov-Bohm effect

A second canonical example occurs in the context of the Aharonov Bohm effect.
For simplicity, we here concentrate on a two dimensional plane and drill a hole of size $a$ into the system and pass a solenoid of strength $\Phi$ through the origin.

$$
\hat{H}=\frac{\left(\hat{\vec{p}}+\frac{q}{c} \vec{A}(\hat{\vec{x}}, t)\right)^{2}}{2 m}+V(|\vec{x}|)
$$

with $V(r)$ a potential that is infinite at the position of the flux (the origin).

- For notational simplicity we henceworth absorb the factor of $q / h c$ into $\vec{A}$, i.e.

$$
\tilde{\vec{p}}+\frac{\hbar 2 \pi}{h} \frac{q}{c} \vec{A} \rightarrow \hbar[-i \vec{\nabla}+2 \pi \vec{A}]
$$

This corresponds to measuring the fluxes in units of $\Phi_{0}$ with the flux quantum $\Phi_{0}=\frac{h c}{q}$ (in cgs units).

- The magnetic field corresponding to one such flux in these units is

$$
\vec{B}(\mathbf{x}) \equiv \vec{\nabla} \times \vec{A}=\Phi \hat{e}_{z} \delta(\vec{x})
$$

- We use radial coordinates $\vec{x}=\rho(\cos (\phi), \sin (\phi))^{T}=\rho \hat{e}_{r}, \hat{e}_{\phi}=(-\sin (\phi), \cos (\phi))^{T}$.
- We can choose $\vec{A}=\frac{\Phi}{2 \pi} \frac{\rho}{\rho^{2}+\eta^{2}} \hat{e}_{\phi}$ in the limit $\eta \rightarrow 0$. Indeed

$$
\vec{\nabla} \times \vec{A}=\frac{\Phi}{2 \pi} \hat{e}_{z} \frac{1}{\rho} \partial_{\rho} \frac{\rho^{2}}{\rho^{2}+\eta^{2}}=\Phi \hat{e}_{z} \underbrace{\frac{1}{2 \pi} \frac{2 \eta^{2}}{\left(\rho^{2}+\eta^{2}\right)^{2}}}_{\delta^{2}(\vec{x})}
$$

- Using the $\vec{\nabla}=\hat{e}_{\rho} \partial_{\rho}+\hat{e}_{\phi} / \rho \partial_{\phi}$ in radial coordinates the Schrödinger equation becomes

$$
\left\{-\frac{\hbar^{2}}{2 m}\left[\frac{1}{\rho} \partial_{\rho}\left[\rho \partial_{\rho} \bullet\right]-\frac{1}{\rho^{2}}\left(-i \partial_{\phi}+\Phi\right)^{2}\right]+V(\rho)\right\} \psi(\rho, \phi)=E \psi(\rho, \phi)
$$

- In the simplest case we can choose a ring, i.e.

$$
V(\rho)= \begin{cases}0, & \rho \in[R-a / 2, R+a / 2] \\ \infty, & \text { else }\end{cases}
$$

In the limit $a / R \rightarrow 0$ the radial wave function only occupies the lowest level inside the well and the radial part is pinned to $\rho=R$ so that effectively

$$
\underbrace{\frac{\hbar^{2}}{2 m R^{2}}}_{=\hbar \Theta}\left[-i \partial_{\phi}+\Phi\right]^{2} \psi(\phi)=E \psi(\phi)
$$

This is the effective Hamiltonian for a particle on a ring threaded by flux $\Phi \in[0,1)$ in units of $\Phi_{0}$, see Eq . (174) and the subsequent discussion (with $2 \pi R=L$ and $\hat{p}=-i \hbar \partial_{\phi} / L$ ).

- The eigenstates to the Hamiltonian are

$$
\psi_{n}(\phi)=\frac{1}{\sqrt{2 \pi}} e^{i n \phi}, \quad n \in \mathbb{Z}
$$

they have energy $E_{n}=\hbar \Theta(n+\Phi)^{2}$ (we noramlize them w.r.t $\int_{0}^{2 \pi} d \phi$ ).

- We may be inclined to remove the effect $\Phi$ by rotating to a different basis: $\psi(\phi)=$ $e^{-i \Phi \phi} \tilde{\psi}(\phi)$. Indeed, now the Hamiltonian is just $-\frac{\hbar^{2}}{2 m R^{2}} \partial_{\varphi}^{2}$. However the wave function $\tilde{\psi}(\phi)=e^{i 2 \pi \Phi} \tilde{\psi}(\phi)$ is not $2 \pi$ periodic. This ultimately leads - of course - to the same spectrum as in the basis without the " $\sim$ "
- Upshot: Despite the fact the QM particle doesn't have any probablity to be at the position of the flux, it still feels it in the form of the flux!

As an implication we consider the following setup

- a particle is initialized near $\phi=0$. We take the following initial wave function (for $\phi \in[-\pi, \pi)$

$$
\psi(\phi, t=0)=\frac{1}{\sqrt{\eta \sqrt{\pi}}} e^{-\frac{\phi^{2}}{2 \eta^{2}}}
$$

Where the limit $\eta \rightarrow 0$ is understood, such that

$$
p(\phi, t=0)=|\psi(\phi, t=0)| \rightarrow \delta(\phi)
$$

- we want to know its probability at a measurement at a screen on the opposite side, i.e. $\phi \in[\pi-\delta / 2, \pi+\delta / 2]$, see Fig. 22.
- For simplicity we only calculate the probability to $p(\phi=\pi, t)=|\psi(\phi=\pi, t)|^{2}$ to find the particle at the point exactly opposite to the initialization.

To this end we need the time evolution of the wave function

- It is best determined in the eigenbasis of the Hamiltonian

$$
\begin{aligned}
\psi_{n} \equiv\langle n \mid \psi(t=0)\rangle & =\int \frac{d \phi}{2 \pi} e^{-i n \phi} \psi(\phi, t=0) \\
& \doteq \sqrt{\frac{\eta}{2 \pi^{3 / 4}}} e^{-n^{2} \eta^{2} / 2}
\end{aligned}
$$

which is essentially $n$ independent up to the very slow $e^{-n^{2} \eta^{2} / 2}$ which serves as a regulator for infinite sums over $n$ (see the following).

![img-24.jpeg](img-24.jpeg)

Figure 22: a) A particle on a ring threaded by flux $\Phi$. The Aharonov Bohm experiments corresponds to initiliazation at $\phi=0$ and measuring the probability density of the particle on the screen (orange). b) Energy spectrum for $\Phi=0, \Phi=1 / 2$ (in units of $\Phi_{0}$ ).

- The time evolved wave function is

$$
\begin{aligned}
\psi(\phi, t) & =\sum_{n=-\infty}^{\infty} e^{-i n \phi-i \Theta t(n+\Phi)^{2}} \psi_{n} \\
& =\sum_{n=-\infty}^{\infty}(-1)^{n} e^{-i \Theta t(n+\Phi)^{2}} \psi_{n}
\end{aligned}
$$

- For $\Phi=0$ this sum yields something finite (energies at $n$ and $-n$ are degenerate).
- For $\Phi=1 / 2$, the energies at $n$ and $-n-1$ are degenerate. Then

$$
\left.\psi(\phi-\pi, t)\right|_{\Phi=1 / 2}=0
$$

Thus, even though the particles do not pass through the magnetic field, the amplitudes for getting from $\phi=0$ to $\phi=\pi$ destructively interfere leading to zero probability of finding the particle at $\phi=\pi$ !

![img-25.jpeg](img-25.jpeg)

Figure 23: Illustration of the tunneling through a barrier

# 9 Tunneling, decay rates, basics of scattering theory 

Summary of this section: This section includes

- The basics of a simple square well scattering potential
- its generalization to an arbitrary potential form
- the decay from a metastable state
- and the tunneling between to degenerate vacua.

![img-26.jpeg](img-26.jpeg)

Figure 24: Scattering through arbitrary potential

# 9.1 1D Scattering potential 

### 9.1.1 Transmission probability for a box potential

- Consider the 1D scattering potential, Fig. 23

$$
V(x)= \begin{cases}0, & x<-a / 2 \\ V_{0}, & -a / 2 \leq x \leq a / 2 \\ 0, & a / 2<x\end{cases}
$$

- We assume $V_{0}>0$
- For $x>0$ this could also be a 3D problem folded in the s-wave channel (see expansion in $Y_{l}^{m}$ above) - but for simplicity we stick to this 1D problem.
- Assuming a particle impinging to the scattering center from the left, we want to find out it's probability $T$ of getting past the barrier and the probability $R$ of being reflected.
- To solve for a wave function at energy $E$ and impinging to the scattering center from the left we make the following Ansatz

- For $E>V_{0}$.

$$
\psi(x)= \begin{cases}e^{i k x}+r e^{-i k x}, & x<-a / 2 \\ A e^{i k^{\prime} x}+B e^{-i k^{\prime} x}, & -a / 2 \leq x \leq a / 2 \\ t e^{i k x}, & a / 2<x\end{cases}
$$

- For $E<V_{0}$.

$$
\psi(x)= \begin{cases}e^{i k x}+r e^{-i k x}, & x<-a / 2 \\ A e^{\kappa x}+B e^{-\kappa x}, & -a / 2 \leq x \leq a / 2 \\ t e^{i k x}, & a / 2<x\end{cases}
$$

- $r, A, B, t$ are all unknown, we need 4 equation to determine them.
- We will only concentrate on $r$ and $t$ which is what we really care about, because $R=|r|^{2}, T=|t|^{2}$.
- As we are solving the Schrödinger equation piecewise in the three regions we need to require

$$
\hbar k=\sqrt{2 m E}, \quad \hbar k^{\prime}=\sqrt{2 m\left(E-V_{0}\right)}, \quad \hbar \kappa=\sqrt{2 m\left(V_{0}-E\right)}
$$

- We further more need to require continuity of the wave function and its first derivative.
- For $E>V_{0}$ :

$$
\begin{aligned}
& x=-a / 2: \quad e^{-i k a / 2}+r e^{i k a / 2}=A e^{-i k^{\prime} a / 2}+B e^{i k^{\prime} a / 2} \\
& i k\left(e^{-i k a / 2}-r e^{i k a / 2}\right)=i k^{\prime}\left(A e^{-i k^{\prime} a / 2}-B e^{i k^{\prime} a / 2}\right) \\
& x=a / 2: \quad t e^{i k a / 2}=A e^{i k^{\prime} a / 2}+B e^{-i k^{\prime} a / 2} \\
& i k t e^{i k a / 2}=i k^{\prime}\left(A e^{i k^{\prime} a / 2}-B e^{-i k^{\prime} a / 2}\right)
\end{aligned}
$$

We can rewrite the two equations using

$$
\left(\begin{array}{cc}
e^{-i k a / 2} & e^{i k a / 2} \\
i k e^{-i k a / 2} & -i k e^{i k a / 2}
\end{array}\right)=M(i k,-a / 2)
$$

as

$$
\begin{aligned}
& M(i k,-a / 2)\binom{1}{r}=M\left(i k^{\prime},-a / 2\right)\binom{A}{B} \\
& M\left(i k^{\prime}, a / 2\right)\binom{A}{B}=t e^{i k a / 2}\binom{1}{i k}
\end{aligned}
$$

- For $E<V_{0}$ we find analogously

$$
\begin{aligned}
M(i k,-a / 2)\binom{1}{r} & =M(\kappa,-a / 2)\binom{A}{B} \\
M(\kappa, a / 2)\binom{A}{B} & =t e^{i k a / 2}\binom{1}{i k}
\end{aligned}
$$

- We thus find
- For $E>V_{0}$

$$
\begin{aligned}
\binom{1}{r} & =t e^{i k a / 2} M(i k,-a / 2)^{-1} M\left(i k^{\prime},-a / 2\right) M\left(i k^{\prime}, a / 2\right)^{-1}\binom{1}{i k} \\
& =t\left(\frac{-i e^{i k a}\left(\left(k^{2}+k^{\prime 2}\right) \sin \left(k^{\prime} a\right)+2 i k k^{\prime} \cos \left(k^{\prime} a\right)\right)}{-\frac{i\left(k-k^{\prime}\right)\left(k+k^{\prime}\right) \sin \left(k^{\prime} a\right)}{2 k k^{\prime}}}\right)
\end{aligned}
$$

From this we conclude that

$$
\begin{aligned}
& t=e^{-i k a} \frac{2 k k^{\prime}}{2 k k^{\prime} \cos \left(k^{\prime} a\right)+i\left(k^{2}+k^{\prime 2}\right) \sin \left(k^{\prime} a\right)} \\
& r=e^{-i k a} \frac{i\left(k^{2}-k^{\prime 2}\right) \sin \left(k^{\prime} a\right)}{2 k k^{\prime} \cos \left(k^{\prime} a\right)+i\left(k^{2}+k^{\prime 2}\right) \sin \left(k^{\prime} a\right)}
\end{aligned}
$$

- Analogously for $E<V_{0}$

$$
\begin{aligned}
t & =e^{-i k a} \frac{2 k \kappa}{2 k \kappa \cosh (\kappa a)+i\left(k^{2}-\kappa^{2}\right) \sinh (\kappa a)} \\
r & =e^{-i k a} \frac{i\left(k^{2}+\kappa^{2}\right) \sinh (\kappa a)}{2 k \kappa \cosh (\kappa a)+i\left(k^{2}-\kappa^{2}\right) \sinh (\kappa a)}
\end{aligned}
$$

- The transmission probability $T=1-R$ is thus
- In the case $E>V_{0}$

$$
T=\frac{1}{1+\left(\frac{k^{2}+\kappa^{2}}{2 k k^{\prime}}\right)^{2} \sin \left(k^{\prime} a\right)^{2}}=\frac{1}{1+\frac{V_{0}^{2}}{4 E\left|E-V_{0}\right|} \sin \left(\sqrt{2 m\left|E-V_{0}\right|} a / \hbar\right)^{2}}
$$

- In the case $E<V_{0}$

$$
T=\frac{1}{1+\left(\frac{k^{2}+\kappa^{2}}{2 k \kappa}\right)^{2} \sinh (\kappa a)^{2}}=\frac{1}{1+\frac{V_{0}^{2}}{4 E\left|E-V_{0}\right|} \sinh \left(\sqrt{2 m\left|E-V_{0}\right|} a / \hbar\right)^{2}}
$$

- Comments:
- Contrary to the classical case, when $E>V_{0}$
- the particles have a finite probability $R=1-T$ of being reflected at the potential.
- there is an oscillatory behavior as a function of $k^{\prime} a$ which reflects the wave like character of quantum particles (cf. Fabry-Perot interferometers).
- For $E \rightarrow \infty, T \rightarrow 1$.
- Contrary to the classical case, when $E<V_{0}$
- the particles have a finite probability $T$ of tunneling through the potential.
- the decay is exponential for large $a$.

# 9.1.2 Transmission probability for arbitrary potential shape 

We consider the case $E<V_{0}$ and the limit $\kappa a \gg 1$. The transmission probability is

$$
T \simeq\left(\frac{4 k \kappa}{k^{2}+\kappa^{2}}\right)^{2} e^{-2 \kappa a}
$$

Thus the tunneling probability is exponentially small in $\kappa a$.
We now assume a slowly varying potential of arbitrary form, Fig. 24. Note that

$$
\kappa=\kappa(x)=\sqrt{2 m(V(x)-E)} / \hbar
$$

is then itself $x$ dependent. We split this potential into parts, of size $\Delta x$ which is large on the scale $1 / \kappa(x)$. (This condition can only be satisfied deep under the potential - for more details we need to go into details of the WKB method which is beyond this lecture course).

The exponent of the total tunneling probability is thus
$\ln \left(T_{\text {tot }}\right)=\ln \prod_{i} \underbrace{T\left(x_{i}\right)}_{=e^{-2 \kappa\left(x_{i}\right) \Delta x}}=-\sum_{i} 2 \kappa\left(x_{i}\right) \Delta x \simeq-2 \int_{x_{-}}^{x_{+}} d x \kappa(x)=-2 \int_{x_{-}}^{x_{+}} d x \frac{\sqrt{2 m(V(x)-E)}}{\hbar}$
where $x_{ \pm}$are defined by the condition $E=V\left(x_{ \pm}\right)$. .

### 9.2 Double Quantum well and tunneling

In Sec. 9.1 we considered the case of a wave impinging from the left and going to the right. Analogously we can find the one impinging from the right and going to the left. Generally we can write

$$
\psi(x)= \begin{cases}\alpha_{<} e^{i k x}+\beta_{<} e^{-i k x}, & x<-a / 2 \\ A e^{\kappa x}+B e^{-\kappa x}, & -a / 2<x<a / 2 \\ \alpha_{>} e^{-i k x}+\beta_{>} e^{i k x}, & a / 2<x\end{cases}
$$

And we find

$$
\binom{\beta_{<}}{\beta_{>}}=\underbrace{\left(\begin{array}{cc}
r & t^{\prime} \\
t & r^{\prime}
\end{array}\right)}_{=S}\binom{\alpha_{<}}{\alpha_{>}}
$$

- In principle one may solve the boundary conditions for any type of barrier with the help of an appropriate $\hat{S}$.
- We consider the limit $E \ll V_{0}$. The scattering matrix is particularly simple due to time reversal symmetry and right/left mirror symmetry

$$
t=t^{\prime}, r=r^{\prime}
$$

We now consider the situation of a double quantum well, Fig: 25.

- We will consider the same as in Eq. (9.1), but with an additional hard wall (infinite potential) at $x= \pm L_{+}= \pm(L+a / 2)$.
- To ensure vanishing wave functions at the walls, $\psi\left( \pm L_{+}\right)=0$ we find

$$
\begin{aligned}
& \alpha_{<}=\gamma_{<} e^{i k L_{+}}, \beta_{<}=-\gamma_{<} e^{-i k L_{+}} \\
& \alpha_{>}=\gamma_{>} e^{i k L_{+}}, \beta_{>}=-\gamma_{>} e^{-i k L_{+}}
\end{aligned}
$$

Note that this Ansatz corresponds to

$$
\psi(x)= \begin{cases}i 2 \gamma_{<} \sin \left(k x+k L_{+}\right), & x<-a / 2 \\ -i 2 \gamma_{>} \sin \left(k x-k L_{+}\right), & a / 2<x\end{cases}
$$

- Due to the symmetry of the system we find two types of solutions: even and odd under symmetry
- in particular for $E \ll V_{0}$ the ground state of the two independent wells splits (exponentially small splitting $A \sim e^{-\kappa a}$ ).
- the even state is lower in energy as it requires less curvature (it becomes particularly obvious as the barrier becomes more and more transparent, see Fig. )
- the effective low-energy Hamiltonian in the basis of left and right eigenstates $\{|L\rangle,|R\rangle\}$ is

$$
\hat{H}=-A\left(\begin{array}{ll}
0 & 1 \\
1 & 0
\end{array}\right)
$$

which is the origin of the effective Hamiltonian describing the position of nitrogen in the Ammonia molecule, Eq. (152). (We here chose the ground state of $|L\rangle /|R\rangle$ individually to have energy 0$)$.

![img-27.jpeg](img-27.jpeg)

Figure 25: Wavefunctions in the double well

![img-28.jpeg](img-28.jpeg)

Figure 26: Decay of a bound state into the continuum.

# 9.3 Decay of a bound state 

We finally consider a very asymmetric double quantum well such that the spectrum on the left has a clear defined level spacing and the spectrum on the right is essentially continuous, cf Fig. 26.

We describe this problem with the Hamiltonian $(n=1, \ldots N$

$$
\hat{H}=\underbrace{\left(\begin{array}{cccc}
0 & 0 & \ldots & 0 \\
0 & \ddots & & 0 \\
\vdots & & E_{n} & \\
0 & 0 & & \ddots
\end{array}\right)}_{\hat{H}_{0}}+\underbrace{\left(\begin{array}{cccc}
0 & \ldots & A_{n} & \ldots \\
\vdots & \ddots & & 0 \\
A_{n}^{*} & & 0 & \\
\vdots & 0 & & \ddots
\end{array}\right)}_{\lambda \hat{H}_{1}}
$$

Here, the basis that we chose is $\left\{\left|\psi_{0}^{(0)}\right\rangle,\left|\psi_{1}^{(0)}\right\rangle, \ldots\left|\psi_{N}^{(0)}\right\rangle\right.$, where $\left|\psi_{0}^{(0)}\right\rangle$ is the state on the left hand side, and, for example, $E_{n}=\frac{\hbar^{2} \pi^{2} n^{2}}{2 m L_{R}^{2}}-\frac{\hbar^{2} \pi^{2}}{2 m L_{L}^{2}}$, with $L_{L}, L_{R}$ the size of the respective quantum wells.

Without going to details of time-dependent perturbation theory we do the simplest calculation to determine

- the decay rate $\Gamma=d p / d t$ of a particle from the left well.

- The probability to find it outside the left well is called $p(t)=\sum_{n=1}^{N}|\underbrace{\left\langle\psi_{n}^{(0)} \mid \psi(t)\right\rangle}_{\equiv c_{n}(t)}|$,
- where $|\psi(t)\rangle$ is the time evolved wave function initialized in $\left|\psi_{0}^{(0)}\right\rangle$ at time $t=0$.

We proceed as we did in the case of the time-independent perturbation theory, Sec. 3.2.

- The Full Schrödinger equation

$$
i \hbar \partial_{t}|\psi(t)\rangle=\hat{H}|\psi(t)\rangle
$$

can be solved iteratively using

- the expansion of the wave functions in orders of $\lambda$

$$
|\psi(t)\rangle=\left|\psi^{(0)}(t)\right\rangle+\lambda\left|\psi^{(1)}(t)\right\rangle+\ldots
$$

- leading to the following two equations

$$
\begin{aligned}
& i \hbar \partial_{t}\left|\psi^{(0)}(t)\right\rangle=\hat{H}_{0}\left|\psi^{(0)}(t)\right\rangle \\
& i \hbar \partial_{t}\left|\psi^{(1)}(t)\right\rangle=\hat{H}_{0}\left|\psi^{(1)}(t)\right\rangle+\hat{V}\left|\psi^{(0)}(t)\right\rangle
\end{aligned}
$$

- The first equation, Eq. (331a) with the boundary condition that we chose is solved by $\left|\psi^{(0)}(t)\right\rangle=\left|\psi_{n=0}^{(0)}\right\rangle$.
- We plug that solution into the second Eq. (331b) and project onto $\left\langle\psi_{n}^{(0)}\right|, n \geq 1$

$$
\begin{aligned}
i \hbar \partial_{t} c_{n}(t) & =E_{n} c_{n}(t)+A_{n} \\
\stackrel{c_{n}(0)=0}{\Rightarrow} c_{n}(t) & =\frac{1}{i \hbar} \int_{0}^{t} d t^{\prime} A_{n} e^{-i E_{n}\left(t-t^{\prime}\right) / \hbar} \\
& =A_{n}\left(-i e^{-i E_{n} t / 2 \hbar}\right) \frac{2 \sin \left(E_{n} t / 2 \hbar\right)}{E_{n}}
\end{aligned}
$$

- We thus find

$$
p(t)=\sum_{n=1}^{N} \frac{2 t}{\hbar}\left|A_{n}\right|^{2} \frac{\sin \left(E_{n} t / 2 \hbar\right)^{2}}{E_{n}^{2} t / 2 \hbar}
$$

- We use the following simplifications:

- In the limit $L_{R} \rightarrow \infty$ the spectrum $E_{n}=\frac{\hbar^{2} \pi^{2} n^{2}}{2 m L_{R}^{2}}$ of final states becomes continuous. In this case we can use/replace (we assuming only energy dependence of $\left.A_{n}\right)$

$$
\begin{aligned}
E_{n} & \rightarrow \epsilon \\
A_{n} & \rightarrow A(\epsilon) \\
\Delta E_{n}=E_{n+1}-E_{n}=\sqrt{E_{1}}\left(\sqrt{E_{n+1}}+\sqrt{E_{n}}\right) & \rightarrow 2 \sqrt{E_{1}} \sqrt{\epsilon} \equiv 1 / \rho(\epsilon) \\
\sum_{n=1} f\left(E_{n}\right)=\sum_{n=1} \Delta E_{n} \frac{f\left(E_{n}\right)}{\Delta E_{n}} & \rightarrow \int d \epsilon \rho(\epsilon) f(\epsilon)
\end{aligned}
$$

here we introduce the density of states $\rho(\epsilon)$ which counts the number of states in $[\epsilon, \epsilon+d \epsilon]$ and is related to the inverse level spacing.

- We further consider the long time limit

$$
\frac{\sin (\epsilon t / 2 \hbar)^{2}}{\epsilon^{2} t / 2 \hbar} \xrightarrow{t \rightarrow \infty} \pi \delta(\epsilon)
$$

This leads to the following expression for the decay rate ("Fermi's Golden rule")

$$
\Gamma=\frac{d p}{d t}=\frac{2 \pi}{\hbar} \rho(0)|A(\epsilon)|^{2}
$$

Comments:

- the decay rate is exponentially small (related to the tunneling probability) for a high well
- we assumed a continuum of final states where the particle will get lost once it tunneled in (otherwise the particle will just tunnel back in - after all QM is unitary!)
- Technically, this assumption is encoded in sending the level spacing $\Delta E_{n}$ to zero before sending $t$ to infinity (i.e. we used $\Delta E_{n} t / \hbar \ll 1$ ) to switch from sum to integral.

