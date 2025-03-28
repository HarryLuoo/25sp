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






