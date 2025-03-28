#import "@preview/physica:0.9.3": *
#import "@preview/ilm:1.4.0": *
#show heading: text.with(size: 9pt, weight: 1000)
#set text(7pt)
#set page(margin: (x: 0.2cm, y: 0.2cm),numbering: "1/1", columns: 4, flipped: true, paper: "us-letter")
#set math.equation(numbering:"[1")
#show math.equation: set text(7pt)
#set math.cases(gap: 0.2em)


= Random walk, Binom, Gaussian 
- 1D random walk, $P(R) = p, P(L) = 1-p,$ gait = $L,$ \# step = $N.$ Find: prob of position  $x=m l.$ 

$ 
      P_N (m) = display(frac(N! , [(N+m)/2]! med [(N-m)/2]!)) med p^((N+m)/2) (1-p)^((N-m)/2). 
  $

  - Mean: $overline(x) := sum_(i=1)^(N) P(x_i) x_i$
  - Var: $"var"(x) := overline( (x - overline( x) ^2 )) = overline( x^2 ) - overline( x) ^2  $ 

  - RMS: $Delta x_"rms" = sqrt( overline( x^2 ) - overline( x) ^2 )$

  - For Binobial Distribution: $overline( x) = N p,$
  
    dispersion:$ "var"(x) = N p q, quad Delta x_"rms" = sqrt(N p q)$
    
    Relative Width: $display(frac(Delta n_("1,rms") , overline( n_1) ) = frac(q,  p) med 1/(sqrt(N) )) -> 0 quad ( n >> 1)$ 

- Sterling's formula 
  $ 
    N! approx sqrt(2 pi N) N^(N) e^(-N) \ 
    ==> ln(N!)= N ln N - N + 1/2 ln( 2 pi N).
  $ 
  Use sterling's to approximate bionm, we have  $P_N = sqrt(N/(2 pi n ( N - n))) exp(-N f(n/N))$;  and expanding around $tilde(n) = N p$ yields a Gaussian approximation: $ 
    P_N ( n) approx 1/ ( sqrt(2 pi sigma^2 )) exp[- (n - mu)^2 /(2 sigma^2 )]; \
    mu = N p, quad sigma^2 = N p q.
$ 
= Multivariables Prob. 
- Unconditioned prob. dist'n:$ 
  P_u (u_i) = sum_(j=1)^(N) P(u_i,v_j)   , quad P_v (v_j) = sum_(i=1)^(N) P(u_i,v_j)
$ 
 
- Uncorrelated variable: $P(u_i,v_j) = P_u (u_i) med P_v (v_j)$ 

- Change of variables: For r.v. $x$ and $y = f(x)$; given $p(x)$: $ 
    tilde(p)(y)= sum_(i) p(x_i) abs( (dif x)/(dif f) )_(x=x_i)   
$ 
*_Example:_* 2D vector $arrow(B)$ with fixed length, equally likely to point in any direction. What is $tilde(p)(B_x)$?

Prob. = prob. density $times$ infinitesimal angle 
$ 
     p(theta) dif theta = (dif theta)/ (2 pi);  med B_x (theta) = B cos theta.
$ 
$ 
 tilde(p)(B_x)  =p(theta_1) eval( (dif theta)/(dif B_x ))_(theta=theta_1)     + p(theta_2) eval( (dif theta)/(dif B_x ))_(theta=theta_2)
$ Notice $ (dif B_x)/(dif theta) = - B sin theta$, and $B_x = B cos theta_1 = B cos theta_2$ : $ 
    eval( (dif B)/(dif theta) )_(theta=theta_1) = B sqrt(1- cos^2 theta_1) = sqrt(B^2 - B_x^2) = eval( (dif B)/(dif theta) )_(theta=theta_2)
$ 
Thus $ 
    tilde(p)(B_x)&= 2 * 1/(2pi) * 1/sqrt(B^2 - B_x^2)  \ &=  cases(1 slash(pi sqrt(B^2 - B_x^2)) ", if" |B_x| < B, 0 "otherwise")
$ 
 
 
#line(length: 100%) ///////////////////////////

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
    