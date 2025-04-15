# Solutions to sample midterm questions 

1. To show that $f$ is uniformly continuous, choose $\epsilon>0$. Since $f_{n} \rightarrow f$ uniformly, there exists an $N$ such that $n>N$ implies that

$$
\left|f_{n}(x)-f(x)\right|<\frac{\epsilon}{3}
$$

for all $x \in(a, b)$. Now consider $f_{N+1}$ : since this is uniformly continuous, there exists a $\delta>0$ such that if $x, y \in(a, b)$ and $|x-y|<\delta$, then

$$
\left|f_{N+1}(x)-f_{N+1}(y)\right|<\frac{\epsilon}{3}
$$

Now, for any $x, y \in(a, b)$ with $|x-y|<\delta$,

$$
\begin{aligned}
|f(x)-f(y)| & \leq\left|f(x)-f_{N+1}(x)\right|+\left|f_{N+1}(x)-f_{N+1}(y)\right|+\left|f_{N+1}(y)-f(y)\right| \\
& <\frac{\epsilon}{3}+\frac{\epsilon}{3}+\frac{\epsilon}{3}=\epsilon
\end{aligned}
$$

and hence $f$ is uniformly continuous.
2. (a) For $f_{1}$,

$$
\begin{aligned}
\beta & =\limsup \left|n^{-2}\right|^{1 / n} \\
& =\lim \sup \frac{1}{n^{2 / n}}=1
\end{aligned}
$$

Hence the radius of convergence is $R=1$.
For $f_{2}$, since some terms are zero, the radius of convergence can be evaluated by computing the limit of the non-zero terms:

$$
\begin{aligned}
\beta & =\limsup \left|a_{n}\right|^{1 / n} \\
& =\lim _{k \rightarrow \infty}\left|a_{2 k}\right|^{1 / 2 k} \\
& =\lim _{k \rightarrow \infty}\left|2^{-k}\right|^{1 / 2 k} \\
& =\lim _{k \rightarrow \infty} 2^{-1 / 2} \\
& =\frac{1}{\sqrt{2}} .
\end{aligned}
$$

Hence $R=\sqrt{2}$.
(b) Define $x=y /\left(1+y^{2}\right)$. Then $f_{3}(y)=f_{1}(x)$. If $|y| \leq 1$, then $|y|<1+y^{2}$, and hence $|x|<1$. If $|y|>1$, then $|y|<y^{2}$ and so $|y|<1+y^{2}$, so $|x|<1$ also. Hence for all $y \in \mathbb{R},|x|<1$, and since $f_{1}(x)$ converges for $x$ in this range, $f_{3}(y)$ must converge also.
This question can also be answered using the Weierstraß M-test, by showing that the $n$th term in the series is bounded by $1 / n^{2}$, and $\sum\left|1 / n^{2}\right|$ converges.

3. To show that $f_{n}\left(x_{n}\right)$ converges to $f(x)$, consider any $\epsilon>0$. Since the $f_{n}$ are continuous and converge uniformly to $f$, then $f$ must be continuous also. Furthermore, since the interval is closed the limit point $x$ must be within $[a, b]$. Hence, since $f$ is continuous at $x$, then $f\left(x_{n}\right) \rightarrow f(x)$ and hence there exists $N_{1} \in \mathbb{N}$ such that $n>N_{1}$ implies

$$
\left|f\left(x_{n}\right)-f(x)\right|<\frac{\epsilon}{2}
$$

In addition, since $f_{n}$ converges uniformly to $f$, then there exists an $N_{2} \in \mathbb{N}$ such that $n>N_{2}$ implies

$$
\left|f_{n}(y)-f(y)\right|<\frac{\epsilon}{2}
$$

for all $y \in[a, b]$. Hence if $N=\max \left\{N_{1}, N_{2}\right\}$, then

$$
\left|f_{n}\left(x_{n}\right)-f(x)\right| \leq\left|f_{n}\left(x_{n}\right)-f\left(x_{n}\right)\right|+\left|f\left(x_{n}\right)-f(x)\right|<\frac{\epsilon}{2}+\frac{\epsilon}{2}=\epsilon
$$

Therefore $\lim _{n \rightarrow \infty} f_{n}\left(x_{n}\right)=f(x)$.
4. (a) Note that $1 / \sqrt{n^{2}-1}>1 / n$ for all $n \geq 2$. Since $\sum_{n} 1 / n$ diverges, we can conclude that $\sum_{n=2}^{\infty} 1 / \sqrt{n^{2}-1}$ diverges by the comparison test.
The terms $1 / \sqrt{n^{2}-1}$ form a decreasing sequence and $\lim _{n \rightarrow \infty} 1 / \sqrt{n^{2}-1}=0$. Hence $\sum_{n=2}^{\infty}(-1)^{n} / \sqrt{n^{2}-1}$ converges by the alternating series test.
(b) Putting $x=1 / 5$ into the sum gives

$$
\sum_{n=2}^{\infty} \frac{5^{n} 5^{-n}}{\sqrt{n^{2}-1}}=\sum_{n=2}^{\infty} \frac{1}{\sqrt{n^{2}-1}}
$$

Since this diverges by part (a) the radius of convergence $R$ must satisfy $R \leq 1 / 5$. Putting $x=-1 / 5$ into the sum gives

$$
\sum_{n=2}^{\infty} \frac{5^{n}(-5)^{-n}}{\sqrt{n^{2}-1}}=\sum_{n=2}^{\infty} \frac{(-1)^{n}}{\sqrt{n^{2}-1}}
$$

Since this converges by part (a), then $R \geq 1 / 5$. Hence $R=1 / 5$.
5. Consider the function $g(x)=f(x)-f(x+1)$. Then

$$
g(0)=f(0)-f(1)
$$

and

$$
g(1)=f(1)-f(2)=f(1)-f(0)=-g(0)
$$

If $g(0)=0$, then $f(0)=f(1)$ and setting $(x, y)=(0,1)$ satisfies $f(x)=f(y)$ as required. Otherwise $g(0) \neq 0$, in which case $g(0)$ and $g(1)$ have opposite sign. Applying the intermediate value theorem to the range $[0,1]$ shows that there exists a $c \in(0,1)$ such that $g(c)=f(c)-f(c+1)=0$. Setting $(x, y)=(c, c+1)$ satisfies $f(x)=f(y)$ as required.

6. Choose $\epsilon>0$. Since $f_{n} \rightarrow f$ uniformly on $S$, there exists an $N$ such that $n>N$ implies that

$$
\left|f_{n}(x)-f(x)\right|<\frac{\epsilon}{2}
$$

for all $x \in S$. Consider an arbitrary $m>N$ and $n>N$. Then, using the triangle inequality

$$
\left|f_{n}(x)-f_{m}(x)\right| \leq\left|f_{n}(x)-f(x)\right|+\left|f_{m}(x)-f(x)\right|<\frac{\epsilon}{2}+\frac{\epsilon}{2}=\epsilon
$$

and hence $\left(f_{n}\right)$ is uniformly Cauchy.
7. (a) If $f_{n}$ converges uniformly to $f$, then there exists an $N$ such that $n>N$ implies that

$$
\left|f_{n}(x)-f(x)\right|<1
$$

for all $x \in S$. By using the triangle inequality,

$$
|f(x)|<\left|f_{N+1}(x)\right|+1
$$

Since $f_{N+1}$ is bounded, $\left|f_{N+1}(x)\right|<M$ for all $x$ and for some $M \geq 0$, and thus $|f(x)|<M+1$ for all $x$. Hence $f$ is bounded.
(b) Consider the set $S=(0,1]$ and the functions

$$
f_{n}(x)= \begin{cases}n & \text { if } x \leq 1 / n \\ 1 / x & \text { if } x>1 / n\end{cases}
$$

These functions converge pointwise to $f(x)=1 / x$. To prove this, consider a fixed $x \in S$. For all $n>1 / x, f_{n}(x)=f(x)$ and therefore becomes a constant sequence. Hence $f_{n} \rightarrow f$ pointwise.
Each $f_{n}$ satisfies $\left|f_{n}(x)\right|<n+1$ for all $x$, and is therefore bounded. But the function $f$ is not bounded.

