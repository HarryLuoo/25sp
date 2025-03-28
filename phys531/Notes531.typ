#import "@preview/physica:0.9.3": *
#import "@preview/ilm:1.4.0": *
#show heading: text.with(size: 13pt, weight: 1000)

#set text(11pt)
#set page(margin: (x: 2cm, y: 2cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"(1)")
// #show math.equation: set text(11pt)
// #set math.cases(gap: 0.2em)
#heading(outlined: false)[Notes on Physics 531:\ Intro Quantum Mechanics]
Harry Luo\
#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1")
#outline(indent: auto,depth:2)
#pagebreak()

= Algebra on Hilbert space $cal(H)$ 
== Braket Notation and properties
=== Kets and Bras
- *Ket $ket(psi)$:* represents a quantum state vector in a Hilbert space $cal(H)$. It's a column vetor in Dirac notation: $ 
    ket(psi) = display(mat(c_1; c_2; dots.v ; c_N)) = c_1 ket(phi_1) + c_2 ket(phi_2) + dots + c_N ket(phi_N),
$
with $ket(phi_i)$ are basis vectors in the Hilbert space.
- *Bra $bra(phi)$*: represents a linear functional that maps kets to complex numbers. It's a row vector, the conjugate transpose of the corresponding ket: $ 
    bra(phi) = ket(phi)^dagger = display(mat(c_1^* , c_2^* , dots , c_N^*)).
$ 

=== Inner Product 

- *Def: * The inner product of a bra $bra(phi)$, ket $ket(psi)$ is denoted as $braket(phi,psi)$ . This results in a complex number. It represents the projection of state $ket(psi)$ onto state $phi$ .$ 
    braket(phi,psi) = display(mat(phi_1^* , phi_2^* , dots , phi_N^*)) med display(mat(c_1; c_2; dots.v ; c_N)) = sum_(i = 1)^(N) phi_i^* psi_i =  c_1 phi_1^* + c_2 phi_2^* + dots + c_N phi_N^*.
$ 

==== Properties of the inner product 
- Conjugate symmetry ( Hermitian property) $ 
    braket(phi,psi) = braket(psi,phi)^*. 
$ 
- Linearity in the second argument: $ 
    braket(phi, a psi_1 + b psi_2) = a braket(phi,psi_1) + b braket(phi,psi_2).
$

- Anti-linearity in the first argument: $ 
    braket(a phi_1 + b phi_2, psi) = a^* braket(phi_1,psi) + b^* braket(phi_2,psi).
$
- Positive-definiteness: The inner product of a state with itself is a non-negative real number, and it is zero if and only if the state is the zero vector.$ 
    braket(psi,psi) >= 0, wide braket(psi,psi) = 0 <=> ket(psi) = 0.
$
- For orthonormal basis states $ket(i),ket(j),$ $ 
    braket(i,j) = delta_(i j). 
$ 

#line(length: 100%) ///////////////////////////


== Operators and Operations
=== Outer product 
- Def: The outer product of a ket $ket(psi)$ and a bra $bra(phi)$ is denoted as $ket(psi) bra(phi)$ . This results in a *linear operator*. $ 
    ket(psi) bra(phi) = display(mat(psi_1; psi_2; dots.v ; psi_N)) med display(mat(phi_1^* , phi_2^* , dots , phi_N^*)) = display(mat(psi_1 phi_1^*, psi_1 phi_2^*, dots, psi_1 phi_N^*; psi_2 phi_1^*, psi_2 phi_2^*, dots, psi_2 phi_N^*; dots.v; psi_N phi_1^*, psi_N phi_2^*, dots, psi_N phi_N^*)). 
$ 

- The outer product operator 
  $braket(psi,phi) $ acts on a ket $ket(chi)$ to give another ket: $ 
      (braket(psi,phi)) med ket(chi) = ket(psi) med (braket(phi,chi)) = braket(phi,chi) med ket(psi),  
      $
      where $braket(phi,chi)$ is a complex number, and it scales the state $ket(psi)$ . 

=== Norm and Normalization
- *Norm* of a state $ket(phi)$ is defined as $norm(psi) = sqrt(braket(psi)) $ . It's a real, non-negative number representing the length of the state vector. 
- *Normalized State:* a state $ket(psi)$ is normalized if its norm is 1, i.e., $norm(psi) = sqrt(braket(psi)) = 1 $, which means $braket(psi) = 1$ . Quantum states are generally normalized to represent probabilites correctly.
- *Normalization Process*: If $ ket(psi)$ is not normalized and $norm(psi) eq.not 0, $we can normalize it to obtain a new state $ket(psi')$ by dividing by its norm: $ 
    ket(psi') = frac(ket(psi) , norm(psi)) = frac(ket(psi) , sqrt(braket(psi)) ).
$ It follows that $braket(psi') = braket(frac(psi,norm(psi))  ) ) = 1/(norm(psi))^2 braket(psi) = 1/(braket(psi) ) braket(psi)= 1.
$ 

=== Linearity
- *Linearity of Ket space: *
  The set of all possible kets forms a vector space, meaning that if $ ket(psi) and ket(phi)$ are kets, and $a,b$ are complex numbers, then $a ket(psi) + b ket(phi)$ is also a valid ket.

- *Linearity of a Bra space: *  Similarly, bras also form a vector pace. 
- *Linear Operators: * Operator $A$ in quantum mechanics are liear operators, meaning they satisfy $ 
    A med (a ket(psi) + b ket(phi)) = a ( A ket(psi)) + b (A ket(phi))
$ 
In braket nottaion, applying a operator $A$ 
o a ket $ket(psi) $ results in a new ket $A ket(psi) $. Similiarly, applying it to a bra $bra(phi) $ results in a new bra $bra(phi)A^dagger $, where $A^dagger $ is the agjoint of $A.$ .


=== Tensor Product of states and spaces
- *Composite systems*: 
  For a system composed of two subsystems with states $ket(psi)_A$ in space $cal(H)_A$ and $ket(phi)_B $ in space $cal(H)_B$, the combined sysetm's staet is described by the tensor product $ket(psi)_A times.circle ket(phi)_B$ or simply $ket(psi)_A ket(phi)_B$ or $ket(psi \,phi)$ .

- *Tensor product of kets:* 
  If $ket(psi) = sum_(i) a_i ket(i)$ and $ket(phi) = sum_(i) b_j ket(j)$ then : $ 
      ket(psi) times.circle  ket(phi) = (sum_(i) a_i ket(i)) times.circle (sum_(j) b_j ket(j)) = sum_(i,j) a_i b_j (ket(i) times.circle ket(j)) equiv
#rect(inset: 8pt)[
$ display(       sum_(i,j) a_i b_j ket(i\,j))$
]
 .
$ 
  
- *Tensor product of Bras: *Similarly, for bras $bra(psi)_A$ and $bra(phi)_B$, the combined bra is $bra(psi)_A times.circle  bra(phi)_B = bra(psi \, phi)$  

- *Inner product in Tensor product space*
  $ 
      (bra(psi)_A times.circle  bra(phi)_B ) ( ket(chi)_A times.circle  ket(omega)_B) = bra(psi)_A ket(chi)_A dot  bra(phi)_B ket(omega)_B = braket(psi,chi) braket(phi,omega).
  $ 
  
=== Observables and Expectation Value 
- *Observable*: A physical observable is represented by a Hermitian operator $O$ (i.e. $O^dagger = O$ ).
- *Expectation Value:*The expectation value of an observable $O$  in a state $ket(psi)$ is given by $ 
    expectationvalue(O)_psi = bra(psi) O ket(psi). 
$ This is the average value we expect to obtain if we measure the observable $O $ when the system is in state $ket(psi).$ 

- *Calculation of Expectation Value*: 
  If $O = sum_(i) lambda_i ket(i) bra(i)  $ is the spectral decomposition of $O$ , then $ 
bra(psi) O ket(psi) = bra(psi) ( sum_(i) lambda_i ket(i) bra(i) ) ket(psi) = sum_(i) lambda_i |braket(i,psi)|^2.
$ 

  Here, $lambda_i$ are the eigenvalues and $ket(i)$ are the corresponding eigenvectors of $O.$ $norm(braket(i,psi)^2 )$ is the probability of obtaining the eigenvalue $lambda_i$ when measuring $O$ in state $ket(psi).$

=== Identity Operator
- *Completeness relation* For a complete orthonormal basis ${ket(i)}$ of the Hilbert space, the identity operator can be written as $ 
    I = sum_(i) ket(i) bra(i).   
$ This is known as the completeness relation or closure relation.

- *Action of Identity Operator*: For any state $ket(psi)$ , $I ket(psi) = ket(psi)$ . $ 
    I ket(psi) = (sum_i ket(i) bra(i)) ket(psi) = sum_(i) ket(i) med ( braket(i,psi)) = sum_(i) braket(i,psi) ket(i) = ket(psi)    
$ This shows that the identity operator leaves any state unchanged.

=== Projection Operators
- *Def*: A projection operator $P_psi$ onto a normalized state $ket(psi)$ is given by the outer product $ 
    P_psi = ket(psi) bra(psi). 
$.

- *Properties of Projection Operators*
  - Hermitian: $P_psi^dagger = P_psi$
  - Idempotent: $P_psi^2 = P_psi$
  - Projects onto $ket(psi)$ : for any state $ket(phi)$ , $P_psi ket(phi) = braket(psi,phi) med ket(psi)$ . This is the projection of $ket(phi)$ onto the direction of $ket(psi).$ 
- *Projection onto a subspace:* If we have an orthonormal basis ${ket(psi_i)}_(i=1)^k$ for a subspace, the projection operator onto this subspace is $ 
    P_"subspace" = sum_(i=1)^(k)  ket(psi_i) bra(psi_i)    
$ 
  In this lense we can see the completeness relation as the sum of projection operators onto each basis state $ket(i)$ of a complete orthonormal basis ${ket(i)}.$ This ensures that any vector in the space can be represented as a linear combiniation of these basis vectors.


== Matrix Algebra
- Important note: Multiplicative Commutation is generally not valid! Most other algebra rules hold.
  
=== The commutator and the anticommutator
- *Commutator*: For any two operators A and B, the commutator is defined as:
  $
  [A, B] = A B - B A.
  $
 - * Useful properties:*
    - *Antisymmetry*: $[A, B] = -[B, A]$.
    - *Bilinearity*: $[a A + b B, C] = a[A, C] + b[B, C]$ and similarly $[C, a A + b B] = a[C, A] + b[C, B]$.
    - *Jacobi Identity*: $[A, [B, C]] + [B, [C, A]] + [C, [A, B]] = 0$.

- *Anticommutator*: For any two operators A and B, the anticommutator is defined as:
  $
  {A, B} = A B + B A.
  $
  - *Useful properties:*
    - *Symmetry*: $ {A, B} = {B, A}.$
    - *Combination with the commutator*: In many contexts, operators are expressed in terms of both the commutator and the anticommutator to capture distinct symmetry properties.


=== Transpose, Adjoint; Hermitian and Unitary.
- *Transpose*: The transpose of an operator $A$, denoted as $A^T$, is obtained by swapping its rows and columns. For a matrix representation of $A$ with elements $A_(i j)$, the transpose $A^T$ has elements $A_(j i)$.

  - *Properties of Transpose*:
    - Involution: $(A^T)^T = A$
    - Linearity: $(A + B)^T = A^T + B^T$
    - Scalar Multiplication: $(c A)^T = c A^T$ for any scalar $c$
    - Product reversal: $(A B)^T = B^T A^T$

- *Adjoint*: The adjoint (or Hermitian conjugate) of an operator $A$, denoted as $A^dagger$, is the complex conjugate transpose of $A$. For a matrix representation of $A$ with elements $A_(i j)$, the adjoint $A^dagger$ has elements $(A_(j i))^*$.

  - *Properties of Adjoint*:
    - Involution: $(A^dagger)^dagger = A$
    - Linearity: $(A + B)^dagger = A^dagger + B^dagger$
    - Scalar Multiplication: $(c A)^dagger = c^* A^dagger$ for any scalar $c$
    - Scalar Multiplication: $(A B)^dagger = B^dagger A^dagger$
    - If $A$ is *Hermitian*, then $A = A^dagger$
    - If $A$ is *unitary*, then $A^dagger A = A A^dagger = I$




