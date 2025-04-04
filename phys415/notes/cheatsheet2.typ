#import "@preview/physica:0.9.3": *
#import "@preview/ilm:1.4.0": *
#show heading: text.with(size: 7pt, weight: 1000)
#set text(6pt)
#set page(margin: (x: 0.3cm, y: 0.3cm),numbering: "1/1", columns: 4, flipped: false)
//#set math.equation(numbering:"(1)")
// #show math.equation: set text(11pt)
// #set math.cases(gap: 0.2em)
= Summary of Thermal laws 
- Fundamental Relation $dif E = T dif S - p dif V $ .
- First Law: $dif E = delta Q - delta W$ .
- Second Law: $delta Q = T delta S$ for quasistatic.

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
  






