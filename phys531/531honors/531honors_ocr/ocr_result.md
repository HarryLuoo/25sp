# Honor Credit Project - Yufei Shen/Harry Luo 

## 1.Bulk Dirac Equation in 1, 2 and 3 spatial dimensions.

- Consider a Hamiltonian in 1D [speed of light is set to unity]

$$
H_{0}=v\left(\hat{p}_{x}, m\right) \cdot\binom{\sigma_{x}}{\sigma_{z}}
$$

- Find eigenstates and eigenvalues (use Fourier Transformation - then diagonalize the matrix).
- Plot the eigenvalues vs. momentum.
- Consider a Hamiltonian in 2D [speed of light is set to unity]

$$
H_{0}=v\left(\hat{p}_{x}, \hat{p}_{y}, m\right) \cdot\binom{\sigma_{x}}{\sigma_{y}}
$$

- Find eigenstates and eigenvalues (use Fourier Transformation - then diagonalize the matrix).
- Plot the eigenvalues vs. momentum.
- Consider a Hamiltonian in 3D [speed of light is set to unity]

$$
H_{0}=v\left(\hat{p}_{x}, \hat{p}_{y}, p_{z}, m\right) \cdot\binom{\beta_{x}}{\beta_{y}} \text {, } \\
\text { (3) } \\
\text { where all } \beta_{i} \text { and } \alpha \text { mutually anti-commute. }
$$

- Find eigenstates and eigenvalues (use Fourier Transformation - then diagonalize the matrix).
- Plot the eigenvalues vs. momentum.
- Now let's return to the 2D problem. Calculate the Berry connection and Berry curvature. (See book by B. Andrei Bernevig and T. Hughes, Chapter 3, and Review by Kane and Hazan [clickable link], Chap B2.

- Berry connection: $\mathcal{A}_{i}=i\left\langle\psi_{\mathbf{p}}\right| \partial_{p_{i}}\left|\psi_{\mathbf{p}}\right\rangle$
- Berry curvature: $\Omega=\epsilon_{i j} \partial_{p_{i}} \mathcal{A}_{j}$.
- Calculate $\int \frac{d^{3} p}{(2 \pi]^{3}} \Omega(p)$.


# 2. for Yufei: Edge states in the problem. 

- First consider Eq. (1) and solve the 1D Dirac equation assuming $m \rightarrow m(x)$ such that $m(x)$ has a sign change at $x=0$. (For simplicity you may use $m(x)=\alpha x$ first).
Calculate the number of fermions by integrating/summing over all filled states as in Jackiw and Rebbi. Explain Fermion number fractionalization.
- Now Consider Eq. (2) but now let $m \rightarrow m(y)$, again with $m(y)$ having a sign change at the origin and derive Edge state (part B3 of Review by Kane and Hazan [clickable link]). Find their
- Eq. (6)
- including the dispersion relation underneath $\left(E\left(q_{x}\right)=\hbar v_{f} q_{x}-\right.$ for us maybe $\left.v_{F}=1\right)$.
- Plot the Dispersion energy bands of the bulk (Problem 1) and add the dispersion relation found in this part (problem 2) as in Fig. 2 b) of Review by Kane and Hazan [clickable link]


## 2. for Harry: Landau levels

- Consider Eq. (2), but replace $\hat{\vec{p}} \rightarrow \hat{\vec{p}}+\vec{A}(\vec{x})$ such that $\nabla \times \vec{A}=B$. Solve the spectrum for any $B$ and $m$. You will see that the spectrum is discrete.
- Calculate the degeneracy of each state.
- Discuss the spectrum when the level of discrete (Landau levels) is small as compared to the mass gap $m$
- Calculate the density of electrons at half-filling (i.e. sum over all negative energy states)
- Calculate $d n / d B$, where $n$ is the density.

Useful literature: M. Katsnelson "Graphene", Cambridge UP (2012), Chap 2.
3. Do some literature research on topological insulators (Yufei: in particular consider/Chern insulators/Quantum anamalous Hall effect. Harry: In particular consider quantum Hall effect/graphene)

A couple of buzz-words that will appear and that you should be able to explain

- Berry curvature, Berry connection, Chern number
- Bulk-Boundary correspondence
- Edge states and why are they robust.
- Explain how in Solid state systems the Dirac equation can appear and why it can have both negative and positive mass.

