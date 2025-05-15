 #import "@preview/physica:0.9.3": *
 #import "@preview/ilm:1.4.0": *

#show heading: text.with(size: 13pt, weight: 1000)
#set text(11pt)
#set page(margin: (x: 2cm, y: 2cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"(1)")
// #show math.equation: set text(11pt)
// #set math.cases(gap: 0.2em)
#heading(outlined: false)[Notes on Physics 415:\  Statistical and Thermal Physics] 
Harry Luo\
#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1")
#outline(indent: auto,depth:2)

#pagebreak()

= Basic Statistical Methods
== Random walk: Binomial distribution and the Emergence of Gaussian

- *_Example:_* We introduce important ideas from Probability via an example of *1D random walk:*
  #blockquote[
  Consider a drunkard walking along a straight line, starting from Origin $x=0$ , and taking randoms steps of length $l$ at regular intervals. Each step is independent of the last. He takes a probability $p$ of steping to the left, and $1-p$ to step to the right. After taking $N$ steps, what is the probability that the walker is at position $x = m l$ ? ]

  Let $P_N (m)$ be the position $x = m l$ of the drunkard after $N$ steps; denote $n_1=$  number of steps to the left, $n_2 = N - n_1$ number of steps to the right. Notice that $-N <= m <= N, N= n_1+n_2, m = n_1-n_2.$ 

  Then the number of walking combinations, indexed with either direction left $(n_1)$ or right ($n_2$), is given by the binomial coefficient: $ 
      binom(N,n_1) = display(frac(N! , n_1 ! (N-n_1)!)) = display(frac(N! , n_1 ! med n_2 !)) = binom(N,n_2) .
  $ 
  Then the probability of the walker taking $n_1$ steps to the left and $n_2$ steps to the right is given by the *binomial distribution:*$ 
      P_N (n_1) = display(frac(N! , n_1 ! n_2 !)) med p^(n_1) q^(n_2).
  $<eq.binom> 
  Noticing $n_1 = (frac(N + m , 2)) $ and $n_2 = (frac(N-m , 2)) $ :$ 
      P_N (m) = display(frac(N! , [(N+m)/2]! med [(N-m)/2]!)) med p^((N+m)/2) (1-p)^((N-m)/2). 
  $ #h(1fr) $qed$
  
=== General Notions from probability: 
Let X be a random variable, taking N possible values $x_1,x_2, dots, x_N$ with associated probabilities $P(x_1), P(x_2), dots, P(x_N)$ . Note that $0 <= P(x_i) <= 1, sum_(i=1)^(N) P(x_i) =1$ 

  - Mean: $overline(x) := sum_(i=1)^(N) P(x_i) x_i$  #h(1fr)Var: $"var"(x) := overline( (x - overline( x) ^2 ))= sum_(i=1)^(N) P(x_i) med (x_i - overline( x) )^2 = overline( x^2 ) - overline( x) ^2  $ 

  - RMS: $Delta x_"rms" = sqrt( overline( x^2 ) - overline( x) ^2 )$

  - For Binobial Distribution: $overline( x) = N p, quad "Dispersion": "var"(x) = N p q, quad Delta x_"rms" = sqrt(N p q)$
    
    Relative Width: $display(frac(Delta n_("1,rms") , overline( n_1) ) = frac(q,  p) med 1/(sqrt(N) )) -> 0 quad ( n >> 1)$ 


=== Central Limit Theorem: Appox. of Binom. 
Recall @eq.binom, taking logrithm on both sides: $ 
    ln(P_N (m)) = ln(N!) - ln(n!) - ln(N-n)! + n ln(p) + (N-n) ln(q).
$ 
For $N>> 1, $ we can approximate using Stirling's formula: $ 
    N! approx sqrt(2 pi N) N^(N) e^(-N)  ,
$ 
and further algebra gives $ 
    P_N (m) approx sqrt(display(frac(N , 2 pi n ( N - n ))) ) thick  exp[-N med f(n / N)], wide ( N>>1)
$ where $ 
    f(x) = [x ln x + (1-x) ln(1-x)] - [x ln p + (1-x) ln q]. 
$ 
For N large, $P_N$ peakes sharply near max $tilde(n) = N p$, which is found by maximizing $f(x)$. 
Expanding $f(x)$ about $tilde(n)$, and taking $n approx tilde(n)$ in $P_N$ we have  : $ 
#rect(inset: 8pt)[
$ display(    P_N (m) approx display(frac(1 , sqrt(2 pi N p q) )) med exp[ - frac((n - N p)^2  ,2 N p q ) ]),$
]
 
$
which is a Gaussian distribution with mean $mu = overline( x) = N p,quad  sigma^2  = N p q, quad Delta x_"rms" = sqrt(N p q)$.

#line(length: 100%)
== Probability Distribution with Multivariables
Consider two r.v. $u, v$ , which can assume possible values $u_i, v_i$ for $i = 1,2,dots, M; j = 1,2, dots, N.$ 

- Normalization conditoin $ 
    sum_(i=1)^(M) sum_(j= 1)^(N) P(u_i, v_j) = 1. 
$ 
- Unconditioned prob. distribution: $ 
    P(u_i) = sum_(j=1)^(N) P(u_i, v_j), quad P(v_j) = sum_(i=1)^(M) P(u_i, v_j). 
$ 
- Statistical independence: $ 
    P(u_i, v_j) = P(u_i) P(v_j),
$
  in which case the mean of the product is the product of the means: $ 
    overline( u v) = overline( u) med overline( v).
$

#line(length: 100%)
== Continuous probability distribution
For continuous r.v. $x in (a_1, a_2)$, assign value of r.v. to $f(x)$.  

The probability density function $p(x)$ is normalized: $ 
    integral_(a_1)^(a_2) p(x) dif x = 1.
$
The mean and variance are defined as: $ 
    overline( x) = integral_(a_1)^(a_2) f(x) p(x) dif x,
     quad "var"(x) = integral_(a_1)^(a_2) (x - overline( x) )^2 p(x) dif x.
$
- Especially, $p(x) dif x $ represents prob. to find $x$ in $[x, x + dif x]$. 

- 

//////////////////////  cheatsheet 1////////////
/// 
/// 


= Stat. Mech setup
- $Omega(E,V)$: \# of accessible states in range $(E, E+dif E)$ 
  - More genrally: number of all possible states.
- Fundamental Postulate: All accessible states are equally likely.$ 
     p(mu_i) = 1/(Omega(E,V)) ", if" mu_i="acc."
$ 
- Probability and average of states: prob of system havin gsome value of macro. param. $y = y_k$ is given by $ 
    p(y_k) = frac(Omega (E;y_k) , Omega(E))  
$ 
- Average value of the parameter $y$: $ 
    overline( y) = sum_(k) p(y_k) y_k = sum_(k) frac(Omega (E;y_k) , Omega(E)) y_k 
$ 
 

*_Example:_* 1D harmonic Oscillator.
$H(q,p) = p^2 /(2m) + 1/2 k q^2 , H = E_n =(n+ 1/2 )hbar omega "const."$ $n = 0,1,2, dots ; omega = sqrt(k slash m) $ 
Defines an ellipse in phase space. Consider energy variation $delta E$, phase space cell resides on a ring.
$ 
    Omega(E) = frac("area of ring" ,"area of phase space cell" )  
$ 
 

*_Example:_* 1D particle in a box : 
$ 
    E_n = frac(hbar^2  pi^2  n^2  , 2 m L^2 ), n = 1,2,3, dots  
$ 
*_Example:_* Three spin -1/2 particles in equil, in ext. H field. The energy of each spin is $-mu H ("if"m = 1/2); +mu H ("if"m = -1/2)$  
There are $2^3 = 8$ possible combinations of states. Microstate is specified by $m_1, m_2, m_3.$  Suppose the total energy is known to  be $-mu H$, then the accessible states are $ 
    {+1/2, +1/2, -1/2}, {+1/2, -1/2, +1/2}, {-1/2, +1/2, +1/2} 
$ 

The prob. that first spin has $m_1 = +1/2$ is given by $ 
    Omega (E; m_1 = +1/2) =  2; Omega(E)= 3 \ => p(m_1 = +1/2) = 2/3.
$ 
  
#line(length: 100%) ///////////////////////////

= Density of states
Define $omega(E)$ to be density of states, s.t. $Omega(E) = omega(E) dif E$

- TO find relation $Omega$ with $(E, N)$ s.t. $Omega = Omega (N,E)$, consider *Classical Monatomic ideal gas,* enclosed in vol. V:

$H = sum_(i)^(N) frac(arrow(p_i)^2  , 2 m)  $, energy range $(E, E+ delta E)$.
$ Omega(E) &prop V^N integral_(E)^(E+ delta E) product_(i) med dif^3 arrow(p_i) \ &prop V^N E^(3N slash 2) delta E \ omega(E) &prop V^N E^(3N slash 2)

$   
#line(length: 100%) ///////////////////////////
= Interaction between Macro bodies
- Thermal Interaction: External param. fixed. 
  - $Q equiv overline( Delta E)$. heat absorbed ( +) or released (-) by system. 

- Mech. Interaction: External param. can change. 
  - $W equiv - overline( Delta_x E)$. macro work done by system with variation in ext. param. $x$ 


- *General int.:* $Q equiv Delta overline( E) - Delta_x overline( E) = Delta overline( E) + W$ , ttl change in energy in exclusion of that due to mech. interaction ( change in ext. param. $x$).

From genreal interaction we arrive at the first law: $ 
    var(Q) equiv dif overline( E)  + var(W) 
$ 

#line(length: 100%) ///////////////////////////
= Quasistatic process 
- Slow int. s.t. system remains in equil. at all times, so that intensive params. are uniform throughout the system.

- Generalzed force: consider sys. with ext. param $x$ and $H(q,p;x)$: $ 
    dv(H,t) = pdv(H,x) dv(x,t) => quad dif E = pdv(H,x) dv(x,t) dif t. 
$ Quasistatic so we can avg this over equil. ensemble with value of x at time t. Noticing $dif E = - delta W:$
$ 
    delta W = - pdv(overline( H), x) dv(x,t) dif t equiv Chi dif x,
$ where $Chi equiv - pdv(overline( H),x ):$generalized force 
 
*_Example:_* Piston (ext. param. $x = V$) 
$ 
    delta W = overline( p) dif V.  
$ 
For vol. change $V_i -> V_f$: $ 
    W = integral_(V_i)^(V_f) delta W = integral_(V_i) ^V_f overline( p)(V) dif V. 
$ 
#line(length: 100%) ///////////////////////////
= Thermal int. btwn sys: Entropy
- Consider adiabatic system with two partitions, ${E_1, Omega_1(E_1)}, {E_2,Omega(E_2)}$. $E_1 + E_2 = E "const."$  
 
  - $Omega(E) = sum_(E_1) Omega_1(E_1) Omega_2(E-E_1)  $ , and prob. of sys 1 has energy = $E_1$ is $ 
      P_1(E_1) = frac(Omega_1(E_1) times Omega_2(E - E_1) ,Omega(E) ), 
  $ with $Omega(E) approx E^(a N)$ .
  - Finding $tilde(E_1)$ s.t. $P_1(E_1) =max $ : $pdv(P_1(E_1), E_1)= 0 $  $ 
      => eval(pdv(ln Omega_1,E_1))_(E_1 = tilde(E_1)) = eval(pdv(ln Omega_2, E_2))_(E_2 = E - tilde(E_1))
  $ 
   
- We are motivated to define entropy: $ 
    S(E,x) equiv ln Omega(E,x) 
$ 

so that $P_1$ peaks when $ 
    pdv(S_1, E_1) = pdv(S_2, E_2) <==> quad S= S_1 + S_2 = max
$ 
- Further define temperature: $ 
    frac(1,T) equiv pdv(S, E)
$
So that $P_1$ peaks when $T_1 = T_2$  

- Sharpness of $P_1(E_1):$
  - Rel. width = $frac(Delta^* E , tilde(E_1) ) approx 1/sqrt(N)  $ 
  - $pdv(T,E)>= 0$ 
= The 2nd law 
For two systesm in themal contact
$ 
    dv(S(E),t) &= dv(S_1,t)+dv(S_2,t) = [(pdv(S_1,E_1) - pdv(S_2,E_2)) dv(E_1,t) ] \ 
    & = [1/T_1 - 1/T_2] dv(E_1,t)  >= 0
$ 

= Reversible and Irreversible process
- Reversible: ttl entropy of isolated sys. constant $dv(S,t) = 0
$
- Irreversible: ttl entropy of isolated sys increases$dv(S,t) > 0
$

#line(length: 100%) ///////////////////////////
= Fundamental relation
- For general interaction btwn macro bodies, equilibrium relation: $ 
     cases(T_1 = T_2, 
     (pdv(S_1,V_1))_(E_1) = (pdv(S_2,V_2))_E_2
     )
$ where $ 
    (pdv(S,V))_(E_1) = p/T
$ 
Applied to the total differential of entropy, we have $ 
#rect(inset: 3pt)[
$ display(    dif E = T dif S - p dif V.)$
]
 
$ 

- Further, for quasistatic process, we have $dif E = delta Q - p dif V.$ Conparing terms gives $ 
    dif S = frac(delta Q, T) 
$ 
- Particullary, for adiabatic process, $delta Q = 0$ so $dif S = 0$, so adiabatic $&=>$ reversible.


- Revisiting equil. condition: $ 
    (pdv(S_1, V_1))_(E_1) = (pdv(S_2, V_2))_E_2 => p_1 = p_2 
$ 
#line(length: 100%) ///////////////////////////
= Laws of Thermodynamics
- 0th law: thermal transitivity. If A, C in equil; B,C in equil; then A,B in equil. 

- 1st Law: $ 
    dif E = delta Q - delta W
$
- 2nd Law: $ 
    dif S >= frac(delta Q, T)
$
- 3rd Law: $ 
    lim_(T->0) S = 0
$
#line(length: 100%) ///////////////////////////
= Response function
- Heat Capacities: $delta Q|_x = C_x dif T$ 
    - for $delta Q|_V = (dif E + delta W)|_V => C_V = (pdv(E,T))_V$.
    - for $delta Q|_p = (dif E + delta W)|_p => C_p = (pdv(E,T))_p + p(pdv(V,T))_P$.
Useful so that combined with $dif S = (delta Q) / T = C_V / T dif T:$ $ 
    S(x,T_2)=S(x,T_1) + integral_(T_1)^(T_2) frac(C_x, T) dif T
$ 

- Compressibility $ kappa_T = -1/V (pdv(V,p))_T $ 
- Expansivity: $ 
    alpha_p = 1/V (pdv(V,T))_p 
$ 


#line(length: 100%) ///////////////////////////
= Ideal Gas 
- For ideal Monatomic gas, recall $Omega(E) = B V^N E^(3N slash 2)$ 
$ 
    S = ln Omega = N ln V + frac(3N,2) ln E + C. 
$ 
Combined with $p = T (pdv(S,V))_E , 1/T = (pdv(S,E))_V$ we have$ 
    p V = N T; quad  E = 3/2 N T = 3/2 nu R T
$ 

- Ideal Gas Law 
  Writing $N = nu N_A,$ we have $ 
      p V = nu R T, quad R equiv N_A k_B 
  $ 
- It is proved that $E=E(T)$, independent of $V.$  

*- Spcific Heat: *
  - Define $c_x equiv C_x / nu$ , "heat capacity per mole".

- Const. V: $delta Q |_V = C_V dif T = nu c_v dif T.$ A general relation is $ 
      c_v = 1/nu (pdv(E,T))_V >0. $ 
    
    for ideal gas: $dif E = nu c_v dif T$ 
- Similarly,Const. p: $delta Q |_p = C_p dif T = nu c_p dif T.$ A general relation is $ 
      c_p = c_v + R $

*- adiabatic Index*

Using $E = 3/2 nu R T; c_v = 1/nu (pdv(E,T))_V$, we have $ 
    c_v = 3/2 R; c_p = c_v+R = 5/2 R. 
$ 
So that adiabatic index $gamma equiv c_p slash c_v = 5 slash 3$ 

*Ideal Gas in Various Process*
- Isothermal: cons. T. $=> p V = C.$ 
- Adiabatic: no heat transfer.
  
  By first law: $ 
      delta Q = dif E + delta W =0 ==> 0 = nu c_v dif T + p dif V. 
  $ 
  using eqn of state : $p V = nu R T:$$ 
      gamma (dif V)/ V + (dif p) / p = 0
  $ 
   Since $c_v = 3/2$ is constant, integrate the above gives $ 
       gamma ln V + ln p = C &=> p V^gamma = C. 
   $ 
    


/////////////////////// cheatsheet 2 //////// 
/// 

= Summary of Thermal laws 
- Fundamental Relation $dif E = T dif S - p dif V $ .
- First Law: $dif E = delta Q - delta W$ .
- Second Law: $delta Q = T delta S$ for quasistatic.
- Ideal Gas Law 
  Writing $N = nu N_A,$ we have $ 
      p V = nu R T, quad R equiv N_A k_B 
  $ 
= Response function
- Heat Capacities: $delta Q|_x = C_x dif T$ 
    - for $delta Q|_V = (dif E + delta W)|_V => C_V = (pdv(E,T))_V$.
    - for $delta Q|_p = (dif E + delta W)|_p => C_p = (pdv(E,T))_p + p(pdv(V,T))_P$.
Useful so that combined with $dif S = (delta Q) / T = C_V / T dif T:$ $ 
    S(x,T_2)=S(x,T_1) + integral_(T_1)^(T_2) frac(C_x, T) dif T
$ 

- Compressibility $ kappa_T = -1/V (pdv(V,p))_T $ 
- Expansivity: $ 
    alpha_p = 1/V (pdv(V,T))_p 
$ 


= Thermodynamic Potentials
energy $E, quad E(S,V), quad dif E = T dif S - p dif V$ 

enthalpy $H= E + p V, quad H(S,p), quad dif H = T dif S + V dif P$ 

Helmholtz $F = E - T S, quad F(T,V), quad dif F = -S dif T - p dif V$ 

Gibbs $G = E - T S + p V, quad G(T,p), quad dif G = -S dif T + V dif p$ 

= Maxwell Relations 
$ 
    ((diff T)/(diff V))_S = - ((diff p)/(diff S))_V, quad ((diff S)/(diff V))_T = ((diff P)/(diff T))_S \ 
    ((diff T)/(diff p))_S= ( (diff V)/(diff S))_p, quad ( (diff S)/(diff p))_T = - ( (diff V)/(diff T))_p
$ 

Used to obtain general relation between Spcific heat: let $ 
    alpha equiv 1/V ( (diff V)/(diff T)_P); quad  kappa equiv -1/V ( (diff V)/(diff P)_T). 
$ Recall $ 
   delta Q|_x = C_x dif T, quad C_x = T ( (diff S)/(diff T))_x 
$ and thus $C_p - C_V = V T alpha^2 slash kappa$ 

- 3rd law : $S -> 0$  as $T -> 0$ . Implies$ 
    C_v -> 0 ; quad C_p -> 0; quad alpha -> 0; quad frac(C_p - C_V, C_V) -> 0  
$ 
= Entropy and Internal Energy : Take $(T,V)$ as indp. var.
- Seek $S(T,V), E(T,V)$ .
$
    dif S = frac(C_v , T) dif T + ((diff p)/(diff T) )_V dif V,
$ where $
    ( (diff C_v)/(diff V) )_T = T ( (diff^2 p)/(diff T^2 ) )_V // Note: Corrected Maxwell relation derivative
$ 
then $
C_V (T,V) = C_V (T,V_0) + integral_(V_0)^V T ( (diff^2 p(T,V'))/(diff T^2 ) )_V dif V'.
$

So
$
    S(T,V) - S(T_0,V_0) \ = integral_(T_0)^T frac(C_v (T', V), T') dif T' + integral_(V_0)^V ((diff p(T_0, V'))/(diff T) )_V dif V' // Path 1 integral for S
$

Similarly, for energy: $
    dif E = C_v dif T + [ T ( (diff p)/(diff T) )_V -p] dif V
$ and so $
    (diff E)/(diff T)_V = C_v , quad ( (diff E)/(diff V) )_T = T ( (diff p)/(diff T) )_V -p \
$ then, by integration,
$
    E(T,V) - E(T_0,V_0) \ = integral_(T_0)^T C_v (T', V) dif T' + integral_(V_0)^V [ T_0 ( (diff p(T_0, V'))/(diff T) )_V - p(T_0, V') ] dif V'
$ // Using Path 2 integration path: (T_0, V_0) -> (T_0, V) -> (T, V)

// Alternative using Path 1 integration path: (T_0, V_0) -> (T, V_0) -> (T, V)
// $ E(T,V) - E(T_0,V_0) = integral_(T_0)^T C_v(T', V_0) dif T' + integral_(V_0)^V [ T ( (diff p(T, V'))/(diff T) )_V - p(T, V') ] dif V' $
 


= Free Expansion: Start from $T_1,V_1$ and $V_1 -> V_2$: \
$Delta E = Q -W = 0$ ; for ideal gas: $E(T_1) = E(T_2) => T_1 = T_2$.

In general, temp change: $ ( (diff  T)/(diff V) )_E = 1/C_V ( p - frac(T alpha , kappa) )\
    T_2 = T_1 + integral_(V_1)^V_2 dif V ( (diff T)/(diff V) )_E  
$ 

Entropy change: $ 
    ( (diff S)/(diff V) )_E = frac(p , T)> 0 . \ 
    S_2 = S_1 + integral_(V_1)^V_2  dif V ( (diff S)/(diff V) )_E   
$ 
- for ideal gas: $Delta S = N ln(V_2/V_1)$ 

- for van der Waals with Eqn of State $(p + a slash v^2)( v - b ) = R T $, where $v = V slash nu$ molar vol: 
  $ 
      ( (diff p)/(diff T))_V = R / (v - b) ; ( (diff T)/(diff V) )_E = - (a nu^2) / (C_V V^2)  
  $ and it can be shown: $ 
      Delta T = frac(a nu^2  , C_V ) ( 1/V_2 - 1/V_1)  
  $ 
  
  = Joule-Thomson Process: start $p_1, T_1$; $p_1 -> p_2$  and so $T_1 = T_2$ 
$ 
    Delta E = - W = p_1 V_1 -p_2 V_2 => H_1 = H_2 
$ 

- ideal gas: 
  
  $H = E + p V = E(T ) + nu R T ==> H(T_1) = H(T_2)  ==> T_1 = T_2$ 

- In general: $ 
   mu equiv ( (diff T)/(diff p) )_H = frac(V , C_p) (T alpha - 1)  . $and also$

dif H = T dif S + V dif p = 0 \ ==> ( (diff S)/(diff p) )_H = - V/T \ ==> Delta S = ( (diff S)/(diff p) )_H Delta p = - frac(V ,T ) Delta p 
$ 

= Heat Engines and Refrigerators
- heat absorbed by bath: $Q = T Delta S. $ 
    == Heat engine
    - Perfect heat engine: convert all heat to work: 
  
  $Delta S_"ttl" = -q slash T = -w slash T < 0. $

    - Real heat Engine: absorb $q_1, $emits $q_2,$ produce work $w = q_1 - q_2$:   $Delta S = -q_1slash T_1 + q_2 slash T_2 >= 0$ 
    - efficiency $eta equiv w slash q_1 <= (1 - T_2 slash T_(1))$.
    - Carnot Engine: $Delta S = 0 => eta_"max" = (T_1 - T_2) slash T_1$ 
  
    == fridge
    - Perfect fridge: Does no work in refrigiration $ Delta S = q slash_1 - q slash T_2$ 
    - real fridge: absorbs $q_2$ from cold bath, emits $q_1 $ to hot bath, with work $w = q_1 - q_2.$
    - coefficient of performance $eta = q_2 slash w <= T_2 slash (T_1 - T_2)$ 

= Cononical Ensemble: fix T, N, V.
$ 
    P_r = frac(exp(- E_r / T) , Z) ; quad Z equiv sum_(r) exp(- E_r / T) 
$ 
Observables: $overline( O) = sum_(r) frac(exp{- beta E_r} , Z) O_r  $ 

In classical case: $P(E) = frac(Omega(E) exp(-beta E) , Z) $ 

- Maxwell velocity distribution: 
  Consider a classical monatomic gas. Take A = single gas particle and A' remaining molecules, acting as heat resorvoir. at temp. T.
  Distribution of velocity: $ 
      f(arrow(v)) = (frac(m , 2 pi T) )^(3/2) exp( - (m arrow(v)^2)  /(2T)) 
  $ 

- Free energy : $F = -T ln Z$ 

== Ex: spin in H-field
$E_r = E_(plus.minus )= minus.plus mu H$ 

$ P_r = frac(exp[plus.minus beta mu H] , exp[beta mu H ] + exp[- beta mu H]) = frac(exp[plus.minus  beta mu H] , 2 cosh(beta mu H))   $ 

avg momentun: $overline( mu) = sum_(r = plus.minus ) P_r mu_r = mu tanh(beta mu H) $

$overline( M) = n overline( mu) = n mu tanh(mu H slash T.)$ 
when $mu H << T, overline( M) approx (n mu^2 H) slash T equiv chi H$ 

== Properties of $Z$, and thermo potential
- avg energy $overline( E) = - partial_beta ln Z= - T^2 partial_T ( F slash T)$; 
- avg momuntum for spin 1/2:  $overline( mu) = +T partial_H ln Z$   
- energy dispersion: $ overline( Delta E^2 ) = T^2  partial_T overline( E)  = T^2 C_v$

- $S equiv - sum_(r) P_r ln P_r = - partial_T ( T ln Z) = - partial_T F; $
- $F = E - T S = - T ln Z = - T ln ( sum_(r) exp[ - E_r slash T]  ) $ 

= Fundamental Relation: 
$dif F = - S dif T - p dif V.$ 
$ 
    S = - ( (diff F)/(diff T) )_V ; quad p = - ( (diff F)/(diff V) )_T 
$ 

- Second law for CE: $F = $min in equil.
- first law in CE: quasistatic change gives $dif overline( E) = sum_(r) E_r dif P_r + sum_(r) P_r dif E_r $
- $delta Q equiv sum_(r) E_r dif P_r = T dif S.$ 
- $delta W equiv - sum_(r) P_r dif E_r$

= Grand Canonical Ensemble 

- Chemical potential $mu equiv - T ( (diff S)/(diff N) )_E= ( (diff E)/(diff N) )_(S,V)$ .
- equilibrium condition: $mu slash T$ = const.
- distribution: $ 
    P_r &= frac(exp[-(E_r - mu N_r) slash T] , cal(Z) ) \ 
    cal(Z) &= sum_(r)exp[-(E_r - mu N_r) slash T]   \ 
    & = sum_(n) exp(mu N slash T) Z(T,N)  
$ 

- particle fluctuation: $ overline( E) = sum_(r) exp[-(E_r - mu N_r) slash T] / cal(Z)  N_r  = - ( (diff Phi)/(diff mu))_(T,V) , $
  where $Phi = - T ln Z$ , Grand Potential. 


= Classical Ideal gas
$ 
    Z' = zeta^N; quad zeta = V (frac(m T , 2 pi hbar^2 ))^(3 slash 2) 
$ 
Correction: $ 
    Z = Z' slash N!  \ 
    => F = - N T ln[frac(e V , N) (frac(m t , 2 pi hbar^2 )) ^(3 slash 2)]
$ 


= Thermal Classical Limit
$lambda = sqrt((2 pi hbar^2 ) slash (m T)) $ and then $ 
    zeta = V/(lambda^3) ==> Z = 1/N! zeta integral product_(i=1)^(N) exp[- beta U(q)]/ V d^3 arrow(q)
$ 

= Equipartition theroem 
Each Quadratic term in Energy $(q or p)$ contributes $1/2 T$ to the avg energy, and $1/2$ to heat capacity.   

- *Ex: harmonic Oscillator*: $E = p^2 slash 2m + 1/2 k q^2 $. Two quad term gives $overline( E) = 2 * 1/2 T = T,$ 

    where kenitic: $overline( K) = p^2 / 2m = overline( E) /2 ;  $ potential energy: $overline( U) = 1/2 k q^2  = overline( E) /2$.

    Further, partition function yields: $ 
    Z = sum_(n) e^(-beta E_n)   = frac(e^(-beta hbar omega slash 2) , 1 - e^(- beta hbar omega))  
    $ 
    $ 
    overline( E) = - partial_beta ln(Z) = hbar omega ( 1/2  + frac(1 , e^(- beta hbar omega)-1) )  
    $ 
    $ 
        C = (diff overline( E) )/(diff T) = ((hbar omega)/T)^2  frac(exp[hbar omega slash T] , exp[hbar omega slash T] - 1)^2 \ 
    $ 
    
    - Thermal limits: $ T >> hbar omega: overline( E) -> T; C -> 1. $
     - $  T<<hbar omega: overline( E) -> hbar omega slash 2 ; C -> (frac(hbar omega , T))^2 exp[- hbar omega slash T] $ 
  

= Solid Lattice
$ 
    overline( E)= sum_(i=1)^(3N) ( frac(p_i^2  , 2m) + 1/2 m omega_i^2  q_i^2 )= 3 N T= 3 nu R T.   \ 
    C_v = ( (diff overline( E) )/(diff T)_V)= 3 nu R.
$ 
at low temp, assume $omega_i = omega = "const."$ Let $theta_E equiv hbar omega. $
$ 
    overline( E) = 3 N theta_E ( 1/2 + frac(1 , exp[beta theta_E]-1) ) \ 
    C_V = ( (diff overline( E) )/(diff T)_V) = 3 N ( frac(theta_E , T))^2  frac(exp[beta theta_E] , (exp[beta theta_E] - 1)^2 ) 
$ Thermal limits: 
- $T >> theta_E: C_V = 3 R$.  
- $T << theta_E: C_V = 3R ( theta_E slash T)^2 exp[- theta_E slash T]$  
 

= Paramagnetism
- $arrow(mu) = g mu_B arrow(v); quad cal(E) = - arrow(mu) dot arrow(H) ==> cal(E)_m = -g mu_B H_m$ 

$ 
    Z = sum_(m = -J)^(+J) exp[- beta g cal(E)_m] = frac(sinh[(J+1/2)eta] , sinh(eta/2)) ,\ eta equiv frac(g mu_B H , T).   
$ 
- avg. momentum: $ 
    overline( mu_z)= 1/beta (diff ln Z)/(diff H) = g mu_beta J med B_J (eta) , 
$ where $J med B_J (eta) equiv (J+1/2) coth[(J + 1/2) eta] - 1/2 coth ( eta slash 2))$ .

- Magnetization: $overline( M_z) = n overline( mu_z) = n g mu_B J med B_J (eta)  $ .
  - Thermal limits: $ eta << 1: quad overline( M_z) = frac(n ( g mu_B)^2  J ( J+1) ,3 T ) H equiv chi H. \ eta >>1: overline( M_z) = n g mu_B J .  $ 

= Kinetic Theory 
- maxwell velocity distribution: $ 
    f(arrow(v)) = ( frac(m , 2 pi T) )^(3 slash 2) exp[- (m arrow(v)^2) slash (2 T)] \ 
$ 
- distribution for speed $v = abs(arrow(v))$ :
  $ 
      F(v) dif v = 4 pi ( frac(m , 2 pi T)  )^(3 slash 2) v^2 exp[- (m v^2) slash (2 T)] dif v   
  $ 
  - mean speed: $overline( v) = sqrt(8 slash pi) sqrt(T slash m) $ 
  - RMS speed: $v_"RMS" = sqrt(3) sqrt(T slash m) $
  - most probable speed: $tilde(v) = sqrt(2) sqrt(T slash m)  $

== Examples: 
- Number of particle striking a surface= $n ( v_z dif t dif A), quad n = N slash V$

- total particle flux: $ 
    Phi_0 = integral dif^3 arrow(v) Phi(arrow(v)) = 1/4 n overline( v)  
$ 

write $overline( v) = sqrt(8T slash pi m) => Phi_0 = 1/4 n sqrt(8T slash pi m) $. With $p = n T:$ $Phi_0 = p slash sqrt(2 pi m T) $ for ideal gas.

- effusion: $I = Phi_0 * A = p A slash sqrt(2 pi m T) $
- Elastic collision force: $F = m n overline( v_z^2 ) dif A. $
  - $overline( p) = F / (dif A) = m n overline( v_z^2 )$
  - for ideal gas: $overline( v_z^2 )= T slash m ==> overline( p) = n T => p V = N T $    
  

////// lec 27///// 







