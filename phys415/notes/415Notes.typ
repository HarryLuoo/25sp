 #import "@preview/physica:0.9.3": *
 #import "@preview/ilm:1.4.0": *

#show heading: text.with(size: 12pt, weight: 1000)
#set text(11pt)
#set page(margin: (x: 2cm, y: 2cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"(1)")
// #show math.equation: set text(11pt)
// #set math.cases(gap: 0.2em)
#heading(outlined: false)[Notes on Physics 415 Statistical and Thermal Physics] 
Harry Luo\
#line(length: 100%, stroke: (thickness: 2pt))
#set heading(numbering: "1.1")
#outline(indent: auto,)

#pagebreak()

= Basic Statistical Methods: Binomial distribution and the Emergence of Gaussian
== Random walk

- *_Example:_* We introduce important ideas from Probability via an example of *1D random walk:*
  #blockquote[
  Consider a drunkard walking along a straight line, starting from Origin $x=0$ , and taking randoms steps of length $l$ at regular intervals. Each step is independent of the last. He takes a probability $p$ of steping to the left, and $1-p$ to step to the right. After taking $N$ steps, what is the probability that the walker is at position $x = m l$ ? ]

  Let $P_N (m)$ be the position $x = m l$ of the drunkard after $N$ steps; denote $n_1=$  number of steps to the left, $n_2 = N - n_1$ number of steps to the right. Notice that $-N <= m <= N, N= n_1+n_2, m = n_1-n_2.$ 

  Then the number of walking combinations, indexed with either direction left $(n_1)$ or right ($n_2$), is given by the binomial coefficient: $ 
      binom(N,n_1) = display(frac(N! , n_1 ! (N-n_1)!)) = display(frac(N! , n_1 ! med n_2 !)) = binom(N,n_2) .
  $ 
  Then the probability of the walker taking $n_1$ steps to the left and $n_2$ steps to the right is given by the *binomial distribution:*$ 
      P_N (n_1) = display(frac(N! , n_1 ! n_2 !)) med p^(n_1) q^(n_2).
  $ 
  Noticing $n_1 = (frac(N + m , 2)) $ and $n_2 = (frac(N-m , 2)) $ :$ 
      P_N (m) = display(frac(N! , [(N+m)/2]! med [(N-m)/2]!)) med p^((N+m)/2) (1-p)^((N-m)/2). 
  $ #h(1fr) $qed$
  
== General Notions from probability: 
Let X be a random variable, taking N possible values $x_1,x_2, dots, x_N$ with associated probabilities $P(x_1), P(x_2), $ 
  - Mean: 