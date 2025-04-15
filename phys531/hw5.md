# Homework sheet 5 - Due 04/13/2025 

## Problem 1: Particle in a box $[3+7=10$ points $]$

There are three major examples of 1D wave mechanics with discrete spectrum: We discussed particle on a ring and harmonic oscillator in the lecture course. Here we discuss the particle in a potential well.
a) Consider a particle in free space $\bar{H}=\frac{\bar{p}^{2}}{2 m}$. Show that for $E>0$, the wave functions

$$
\psi(x)=A \sin \left(k_{E} x\right)+B \cos \left(k_{E} x\right)
$$

with $k_{E}=\sqrt{2 m E} / \hbar$ solve the Schrödinger equation.
b) Now consider $\bar{H}=\frac{\bar{p}^{2}}{2 m}+V(\hat{x})$ with

$$
V(x)= \begin{cases}\infty, & |x| \geq L / 2 \\ 0, & |x|<L / 2\end{cases}
$$

This implies that the wave function $\psi(x)$ vanishes for $|x| \geq L / 2$ (the kinetic term can not compensate the infinite potential term). For $|x| \leq L / 2$ you may still use Eq. (1).
i) Use the continuity of the wave function to determine the energy spectrum and the associated eigenstates.
ii) Plot the spectrum and compare to the harmonic oscillator.
iii) Compare the number of sign changes in ground state and $n$th excited state for the potential well and harmonic oscillator.

Problem 2: Spherical Harmonics $[3+3+4=10$ points $]$
Comment: You are (hopefully) acquianted with spherical harmonics as they occur in the multipole expansion, covered in your E $\&$ M class, e.g. PHYS 322, prerequisite for this course. Spherical harmonics show up in the solution of the Hydrogen atom, so we here brush up your knowledge about them.

The spherical harmonics are

$$
Y_{l}^{m}(\theta, \phi)=\mathcal{N} e^{i m \phi} P_{l}^{m}(\cos (\theta))
$$

where $\mathcal{N}$ is a normalization constant, $\theta \in[0, \pi], \phi \in[0,2 \pi)$ and $P_{l}^{m}(x), x \in[-1,1]$, are associated Legendre polynomials and $-l \leq m \leq l, l \in \mathbb{N}_{0}$.

The expression simplifies for $m=0$, in particular $P_{l}^{m}(x)=P_{l}(x)$ become the ordinary Legendre polynomials defined by the recursion relation

$$
(l+1) P_{l+1}(x)=(2 l+1) x P_{l}(x)-l P_{l-1}(x)
$$

with $P_{0}(x)=1, P_{1}(x)=x$. The associated Legendre polynomials can be derived from the ordinary ones

$$
P_{l}^{m}(x)=(-1)^{m}\left(1-x^{2}\right)^{m / 2} \frac{d^{m}}{d x^{m}} P_{l}(x)
$$

a) To demonstrate the orthogonality of two multipoles with different magnetic quantum number $m$, show that

$$
\int_{-1}^{1} d \cos (\theta) \int_{0}^{2 \pi} d \phi\left[Y_{l}^{m}(\theta, \phi)\right]^{*} Y_{l^{\prime}}^{m^{\prime}}(\theta, \phi)=0, \text { for } m \neq m^{\prime}
$$

b) Explicitly calculate $P_{l}(x)$ for $0 \leq l \leq 3$. To get a feeling for the orthogonality of two multipoles with different azimuthal number $l$, show that for $0 \leq l \leq 3$

$$
\int_{-1}^{1} d x P_{l}(x) P_{l^{\prime}}(x) \propto \delta_{l l^{\prime}}
$$

c) Explicitly calculate $Y_{3}^{0}(\theta, \phi)$ and $Y_{3}^{3}(\theta, \phi)$, including normalization factors.

Problem 3: Algebra of harmonic oscillator $[3+4+3=10$ points $]$
Consider the one-dimensional momentum operator $\hat{p}=-i \hbar \partial_{x}$, i.e. $[\hat{p}, \hat{x}]=-i \hbar$. Using this we define (as in the lecture)

$$
\hat{a}=\frac{1}{\sqrt{2} \ell}\left(\hat{x}+\frac{i \ell^{2}}{\hbar} \hat{p}\right), \quad \hat{N}=\hat{a}^{\dagger} \hat{a}, \quad \ell=\sqrt{\frac{\hbar}{m \omega}}
$$

a) Show that
i) $\left[\hat{a}, \hat{a}^{\dagger}\right]=1$.
ii) $\left\{\hat{a}, \hat{a}^{\dagger}\right\}=\frac{\hat{x}^{2}}{\hat{\ell}^{2}}+\frac{\hat{r}^{2} \hat{p}^{2}}{\hat{\hbar}^{2}}$
iii) $[\hat{a}, \hat{N}]=\hat{a}$.
b) Show that, using the orthonormalized eigenbasis of the number operator, $\hat{N}|n\rangle=$ $n|n\rangle, n \in \mathbb{N}_{0}$, and the basic algebraic properties of part a)

i) $\hat{a}|n\rangle=\sqrt{n}|n-1\rangle$.
ii) $\hat{a}^{\dagger}|n\rangle=\sqrt{n+1}|n+1\rangle$.
iii) Use $|n\rangle \propto\left[\hat{a}^{\dagger}\right]^{n}|0\rangle$ to deduce orthogonality $\langle n \mid m\rangle=0$, assuming $n>m$.
d) Calculate the product of variances $\Delta p \Delta x$ for each eigenstate $|n\rangle$. Compare to Heisenberg uncertainty principle.

Problem 4: Hermite polynomials and the harmonic oscillator $[3+4+3=10$ points.]

We consider Harmonic oscillator defined by the Hamiltonian

$$
\hat{H}=\frac{\hat{p}^{2}}{2 m}+\frac{m \omega^{2}}{2} \hat{x}^{2}
$$

with position and momentum operator as well as $\ell$ as in the previous exercise.
In this exercise we are going to show that the wavefunctions of eigenstates have the form

$$
\psi_{n}(x) \propto H_{n}(x / \ell) e^{-x^{2} / 2 \ell^{2}}
$$

a) Derivation of Hermite's equation
i) Show that the Schrödinger equation $\hat{H} \psi_{n}(x)=E_{n} \psi_{n}(x)$, with $E_{n}=\hbar \omega(n+$ $1 / 2)$ translates to

$$
\left[y^{2}-\frac{d^{2}}{d y^{2}}\right] \phi_{n}(y)=(2 n+1) \phi_{n}(y)
$$

where $y=x / \ell$ and $\phi_{n}(x / \ell)=\psi_{n}(x)$.
ii) Next use the Ansatz $\phi_{n}(y)=H_{n}(y) e^{-y^{2} / 2}$ to show that

$$
H_{n}^{\prime \prime}(y)-2 y H_{n}^{\prime}(y)+2 n H_{n}(y)=0 . \quad \text { (Hermite equation) }
$$

b) Solutions to Hermite's equation.

- Check that

$$
H_{n}=(-1)^{n} e^{y^{2}} \partial_{y}^{n} e^{-y^{2}}
$$

are indeed solutions to Hermite's equation.
Hint: Proof it iteratively. Start by proving it for $n=0$. Then show that, if $H_{n}(y)$ of the form (13) fulfills the Hermite equation, $H_{n+1}(y)$ also fulfills it.

- Calculate the first three Hermite polynomials explicitly. For general $n$, what is the order of the $n$th Hermite polynomial?
c) Prove the mutual orthogonality of Hermite polynomials

$$
\int_{-\infty}^{\infty} d y e^{-y^{2}} H_{n}(y) H_{m}(y)=0 \text { for } n>m
$$

