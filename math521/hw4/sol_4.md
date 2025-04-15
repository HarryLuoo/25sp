# Math 521: Homework 4 solutions ${ }^{1}$ 

1. $F$ is bounded, since for any $p \in F, p^{2}<5$ and therefore $|p|<\sqrt{5}$. To show that $F$ is closed, consider the complement $F^{c}=\{p \in \mathbb{Q}: p \neq F\}$. Choose $x \in F^{c}$. Then either $x^{2} \leq 2$ or $x^{2} \geq 5$. Since $\sqrt{2} \notin \mathbb{Q}$ and $\sqrt{5} \notin \mathbb{Q}$, it follows that either (a) $|x| \leq \sqrt{2}$ or (b) $|x| \geq \sqrt{5}$. Then $N_{r}(x)=\{y \in \mathbb{Q}: d(x, y)<r\} \subseteq F^{c}$ where $r=\sqrt{2}-|x|$ for case (a) and $r=|x|-\sqrt{5}$ for case (b). Therefore $x$ is an interior point, and hence $F^{c}$ is open, implying that $F$ is closed.
For $s>2$, define the set $S(s)=\left\{p \in \mathbb{Q}: 2<p^{2}<s\right\}$. Then $S(s)$ is open for all choices of $s$, since for any point $x \in S(s)$, the neighborhood $N_{r}(x) \subseteq S(s)$ where $r=\max \left\{\sqrt{s}-|x|,|x|-\sqrt{2}\right\}$. Now consider the sets $G_{i}=S\left(5-\frac{1}{i}\right)$ for $i \in \mathbb{N}$; the collection $\left\{G_{i}\right\}$ will cover $F$ because for any in $x \in F$, there exists an $i$ such that $5-\frac{1}{i}>x$, and hence $x \in G_{i}$.
The collection $\left\{G_{i}\right\}$ does not contain a finite subcover. If it did, then there would be a $G_{I}$ with maximum index $I$. But by the denseness of the rational numbers there exists in $x \in F$ such that $5-\frac{1}{I}<x^{2}<5$, which will not be covered by the finite collection. Hence $F$ is not compact. Furthermore, since $F=S(5)$, the previous argument shows that $F$ is open.
The Heine-Borel theorem states that a set $S \subseteq \mathbb{R}^{n}$ is compact if and only if it is closed and bounded. The set $F$ considered in this question demonstrates that the HeineBorel theorem only applies to subsets of $\mathbb{R}^{n}$, since here $F$ is closed and bounded, but it is not compact.
2. Let $K_{1}, K_{2}, \ldots, K_{n}$ be compact subsets of $S$ and define

$$
K=\bigcup_{i=1}^{n} K_{i}
$$

Let $\left\{G_{\alpha}\right\}$ be an open cover of $K$. Then for each $l=1,2, \ldots, m\}\left\{G_{\alpha}\right\}$ is also an open cover of $K_{l}$, and there is a finite subcover $\left\{G_{k}^{l}\right\}$ where $k=1,2, \ldots, n_{l}$ for some constants $n_{l}$. Since there are a finite number of cases, the union of these collections must be finite also. Consider any point $z \in K$. Then there exists a $j$ such that $z \in K_{j}$. But then $z \in \bigcup_{k=1}^{n_{j}} G_{k}^{j}$. Therefore the union of the collections $\left\{G_{k}^{l}\right\}$ is a finite open cover for $K$. Since every open cover has a finite subcover, it follows that $K$ is compact.
To show that this result does not generalize to infinite unions, consider the sets $K_{i}=\left[0,2-i^{-1}\right]$ for $i \in \mathbb{N}$ in the metric space $(\mathbb{R}, d)$ where $d$ is the standard metric. Each of the $K_{i}$ is a closed and bounded interval, so each set is compact by the HeineBorel theorem. But $K=\bigcup_{i=1}^{\infty} K_{i}=[0,2)$. The element 2 is a limit point of $K$, because the neighborhood $N_{r}(2)$ overlaps with $K$ for all $r>0$. Since $2 \notin K$, it follows that $K$ is not closed. Therefore by the Heine-Borel theorem it is not bounded.

[^0]
[^0]:    ${ }^{1}$ Written by Chris H. Rycroft.

3. Suppose that $K \times L$ is compact, and consider an open cover $\left\{G_{\alpha}\right\}$ of $K$. For each $G_{\alpha}$, define a corresponding set $H_{\alpha}$ as

$$
H_{\alpha}=\left\{(s, t): s \in G_{\alpha}, t \in T\right\}
$$

The $H_{\alpha}$ are all open. To see this, consider any point $(s, t) \in H_{\alpha}$. Since $G_{\alpha}$ is open, there exists an $r>0$ such that $\left\{s^{\prime} \in S: d_{S}\left(s, s^{\prime}\right)<r\right\} \subseteq G_{\alpha}$. Consider the neighborhood

$$
\begin{aligned}
N & =\left\{\left(s^{\prime}, t^{\prime}\right) \in S \times T: d_{S \times T}\left(\left(s^{\prime}, t^{\prime}\right),(s, t)\right)<r\right\} \\
& =\left\{\left(s^{\prime}, t^{\prime}\right) \in S \times T: d_{S}\left(s, s^{\prime}\right)+d_{T}\left(t, t^{\prime}\right)<r\right\}
\end{aligned}
$$

Since $d\left(s^{\prime}, s\right)<r$ for all points $\left(s^{\prime}, t^{\prime}\right) \in N$, it follows that $N \subseteq H_{\alpha}$. Since the same argument holds for all points $(s, t) \in H_{\alpha}$, it follows that $H_{\alpha}$ is open. Therefore $\left\{H_{\alpha}\right\}$ form an open cover of $K \times L$, and it has a finite subcover $\left\{H_{i}\right\}$ for $i=1, \ldots, n$. Any point $(s, t) \in K \times L$ must be contained within a particular $H_{j}$, and therefore $s \in G_{j}$. Therefore the $\left\{G_{i}\right\}$ for $i=1, \ldots, n$ form a finite open cover for $K$. Hence $K$ is compact. Since the question is equivalent if $K$ and $L$ are switched, it follows that $L$ is compact also.

The proof of the converse is more difficult. It is a consequence of the tube lemma.
4. Consider a point $x \in A=(-1,1] \cap \mathbb{Q}$. For $x$ to be in the interior of $A$, we must have that $N_{r}(x)=(x-r, x+r) \subseteq \mathbb{Q}$. But from question 10 on homework 1 , the interval $(x-r, x+r)$ will contain an irrational number $p \notin \mathbb{Q}$. Hence $p \notin A$, and therefore $N_{r}(x)$ is not contained within $A$ for any $r$. Therefore the interior of $A$ is the empty set.
Now consider the closure of $A$. Pick any point $x \in[-1,1]$. Define a sequence $\left(x_{n}\right)$ contained in $A$, such that $\left|x_{n}-x\right|<\frac{1}{n}$. This must be possible since $[-1,1]$ and $N_{1 / n}(x)$ will overlap in a finite interval $I$, and by the denseness of $\mathbb{Q}$ there will be a rational number $x_{n}$ in $I$. Since the $\lim _{n \rightarrow \infty} x_{n}=x, x$ must be in $\bar{A}$. Now consider $x>1$, and define $r=x-1>0$. The $N_{r}(x) \cup A=\varnothing$ and therefore $x$ is not a limit point. Similarly, if $x<-1$, define $r=-1-x>0$, and $N_{r}(x) \cup A=\varnothing$. Therefore $\bar{A}=[-1,1]$.
Consider a point $y \in B=(-1,1] \cup \mathbb{Q}$. If $y$ is in the interior of $B$, then there exists an $r>0$ such that $N_{r}(y)=(y-r, y+r)$. If $y \in(-1,1)$, then choosing $r=\min \{1-$ $y, 1-y\}$ will ensure that $N_{r}(y) \subseteq(-1,1) \subseteq B$. Now suppose $y \geq 1$ and consider $N_{r}(y)=(y-r, y+r)$. The range $(y, y+r)$ will contain an irrational number $p$ that is not in $B$, and thus $y$ is not an interior point. Similarly if $y \leq-1$ then $N_{r}(y)=(y-r, y+r)$, and the range $(y-r, y)$ will contain an irration number not in $B$. Therefore the interior of $B$ is $(0,1)$.
Consider any point $x \in \mathbb{R}$, and let $\left(x_{n}\right)$ be the sequence of decimal expansions of $x$ truncated to $n$ decimal places. Then all of the $x_{n}$ are rational and hence in $B$, and $\lim _{n \rightarrow \infty} x_{n}=x$. Thus the closure $\bar{B}=\mathbb{R}$.

5. First, examine the point at $x=1$ and choose $\epsilon>0$. Then

$$
|h(x)-h(1)|=|h(x)| \leq\left|1-x^{2}\right|=|1-x||1+x|
$$

Suppose now that $\delta=\min \left\{1, \frac{\epsilon}{2}\right\}$. Then if $|x-1|<\delta$,

$$
|1-x||1+x|<\frac{\epsilon}{2} 2=\epsilon
$$

and therefore the function is continuous at $x=1$. Since the function is the invariant under the switch $x \leftrightarrow-x$, it must be continuous at $x=-1$ also.
Consider any other point when $x \neq \pm 1$. Then $1-x^{2} \neq 0$. Construct a sequence $\left(y_{n}\right)$ of rational numbers such that $x-\frac{1}{n}<y_{n}<x+\frac{1}{n}$ for all $n$. By the denseness of Q, such numbers can always be found. Then $\lim _{n \rightarrow \infty} y_{n}=x$, and $\lim _{n \rightarrow \infty} h\left(y_{n}\right)=$ $1-x^{2}$. Similarly, construct a sequence $\left(z_{n}\right)$ of irrational numbers such that $x-\frac{1}{n}<$ $z_{n}<x+\frac{1}{n}$ for all $n$, which was shown to always be possible on a previous homework question. Then $\lim _{n \rightarrow \infty} z_{n}=x$ and $\lim _{n \rightarrow \infty} h\left(z_{n}\right)=0$. Since $1-x^{2} \neq 0$, it shows that $\lim _{n \rightarrow \infty} h\left(x_{n}\right)$ is not always equal to $h(x)$ for all sequences $\left(x_{n}\right)$ converging to $x$. Hence $h$ is not continuous at $x$.
6. Suppose that $\alpha>0$, and choose $\epsilon>0$. Then

$$
|f(x)-f(0)|=\left(|x|^{\alpha} \sin \frac{1}{x}-0\right| \leq|x|^{\alpha}
$$

Choose $\delta=\epsilon^{1 / \alpha}$. Then if $|x-0|<\delta$,

$$
|f(x)-f(0)|<\delta^{\alpha}=\left(\epsilon^{1 / \alpha}\right)^{\alpha}=\epsilon
$$

and hence $f$ is continuous at 0 . Suppose now that $\alpha \leq 0$, and consider the sequence

$$
x_{n}=\frac{1}{\left(2 n+\frac{1}{2}\right) \pi)}
$$

Then $\lim _{n \rightarrow \infty} x_{n}=0$ and $f\left(x_{n}\right)=\left|x_{n}\right|^{\alpha} \sin \left(2 \pi n+\frac{\pi}{2}\right)=x_{n}^{\alpha}$. Therefore

$$
\begin{aligned}
\lim _{n \rightarrow \infty} f\left(x_{n}\right) & =\lim _{n \rightarrow \infty} x_{n}^{\alpha} \\
& =\lim _{n \rightarrow \infty}\left[\left(2 n+\frac{1}{2}\right) \pi\right]^{-\alpha} \\
& = \begin{cases}\infty & \text { if } \alpha<0 \\
1 & \text { if } \alpha=0\end{cases}
\end{aligned}
$$

Therefore for all $\alpha \leq 0, \lim _{n \rightarrow \infty} f\left(x_{n}\right)$ does not equal $f(0)=0$, and hence $f$ is not continuous at 0 .

7. (a) Let $p \in(a, b)$ be an irrational number. Define a sequence $\left(x_{n}\right)$ of terms in $(a, b)$ where each $x_{n} \in \mathbb{Q}$ and $p-\frac{1}{n}<x_{n}<p+\frac{1}{n}$. By the denseness of $\mathbb{Q}$, such a sequence can be found. Then $\lim _{n \rightarrow \infty} x_{n}=p$ and $\lim _{n \rightarrow \infty} f\left(x_{n}\right)=\lim _{n \rightarrow \infty} 0=$ 0 . Since $f$ is continuous, $f(p)=0$. Therefore $f(x)=0$ for all $x \in(a, b)$.
(b) Define the function $h(x)=f(x)-g(x)$, which is continuous on $(a, b)$. In addition $h(q)=0$ at all $q \in \mathbb{Q}$, and thus it satisfies the same conditions as the function in part (a). Therefore $h(x)=0$ for all $x \in(a, b)$ and $f(x)=g(x)$ for all $x \in(a, b)$.
(c) The construction of the sequence $\left(x_{n}\right)$ can still be done even at the end points of a closed interval $[a, b]$ (assuming $a<b$ ). Therefore the results of part (a) and part (b) still hold.
8. This is false. Consider the function

$$
f(x)= \begin{cases}0 & \text { if } x \neq 0 \\ 1 & \text { if } x=1\end{cases}
$$

Consider any sequence $\left(a_{n}\right)$ that converges to zero. Since $f$ is even, $f\left(0+a_{n}\right)-f(0-$ $\left.a_{n}\right)=0$, so $\lim _{n \rightarrow \infty}\left[f\left(0+a_{n}\right)-f\left(0-a_{n}\right)\right]=0$. However, $f$ is not continuous at $x=0$. To verify this, consider the sequence $a_{n}=1 / n$. Then $f\left(a_{n}\right)=0$ for all $n$ and hence $\lim f\left(a_{n}\right)=0$. However, $\lim _{n \rightarrow \infty} a_{n}=0$, and $f(0)=1$.
9. First note that if $a=b$, then $f(a) f(b) \geq 0$. Hence $a \neq b$. By considering $f(-x)$ instead of $f(x)$, we can assume that $a<b$. If $f(a) f(b)<0$ then either $f(a)<0<$ $f(b)$ or $f(b)<0<f(a)$. Then the intermediate value theorem states that there exists an $x \in(a, b)$ such that $f(x)=0$ as required.
10. Consider $x, y \in[a, b]$ where $x<y$. Define $S(w)=\{f(z): a \leq z \leq w\}$. Since $S(x) \subseteq S(y)$,

$$
f^{*}(x)=\sup S(x) \leq \sup S(y)=f^{*}(y)
$$

and therefore $f^{*}$ is an increasing function. To show that it is continuous, pick any point $y \in[a, b]$ and choose an $\epsilon>0$. Then there exists a $\delta>0$ such that if $x \in[a, b]$ and $|x-y|<\delta$, then $|f(x)-f(y)|<\epsilon / 2$.
Since $f(y) \in S(y), f^{*}(y) \geq f(y)$. For all $x \in(y, y+\delta) \cap[a, b],|f(y)-f(x)|<\epsilon / 2$ and therefore $f(x)<f(y)+\epsilon / 2$. Define $T(x)=\{f(w): w \in(y, x) \cap[a, b]\}$ and then $\sup T(x) \leq f(y)+\epsilon / 2 \leq f^{*}(y)+\epsilon / 2$. Hence for all $x \in(y, y+\delta) \cap[a, b]$,

$$
\begin{aligned}
f^{*}(x) & =\sup (S(y) \cup T(x)) \\
& =\max \{\sup S(y), \sup T(x)\} \\
& =\max \left\{f^{*}(y), \sup T(x)\right\} \\
& \leq f^{*}(y)+\frac{\epsilon}{2}<f^{*}(y)+\epsilon
\end{aligned}
$$

Since $f^{*}$ is increasing, then $\left|f^{*}(x)-f^{*}(y)\right|<\epsilon$.
Now consider $x \in(y-\delta, y) \cap[a, b]$. Then $|f(x)-f(y)|<\epsilon / 2$ and hence $f(y)<$ $f(x)+\epsilon / 2$. Define $U(x)=\{f(w): w \in(x, y) \cap[a, b]\}$. For each $w \in(y-x, y) \cap$ $[a, b], f(w)<f(y)$ because $f$ is increasing and hence $f(w)<f(x)+\epsilon / 2$. Therefore $\sup U(x) \leq f(x)+\epsilon / 2 \leq f^{*}(x)+\epsilon / 2$. Hence for all $x \in(y-\delta, y) \cap[a, b]$,

$$
\begin{aligned}
f^{*}(y) & =\sup (S(x) \cup U(x)) \\
& =\max \{\sup S(x), \sup U(x)\} \\
& =\max \left\{f^{*}(x), \sup U(x)\right\} \\
& \leq f^{*}(x)+\frac{\epsilon}{2}<f^{*}(x)+\epsilon
\end{aligned}
$$

Since $f^{*}$ is increasing, then $\left|f^{*}(x)-f^{*}(y)\right|<\epsilon$. Therefore for all $x \in[a, b]$ where $|x-y|<\delta,\left|f^{*}(x)-f^{*}(y)\right|<\epsilon$ and $f^{*}$ is continuous.
11. Choose a point $x_{0} \in(a, b)$. Then there exists a $\Delta$ such that $N=\left(x_{0}-2 \Delta, x_{0}+2 \Delta\right) \subseteq$ $(a, b)$. Now define $p=f\left(x_{0}-\Delta\right)$ and $q=f\left(x_{0}+\Delta\right)$, and consider $x \in\left[x_{0}-\Delta, x_{0}\right]$. By using the convexity property applied to the point $x$ between $x_{0}-\Delta$ and $x_{0}$,

$$
f(x) \geq \frac{f\left(x_{0}\right)\left(x-x_{0}+\Delta\right)+\left(x_{0}-x\right) p}{\Delta}=f\left(x_{0}\right)+\frac{\left(x-x_{0}\right)\left(f\left(x_{0}\right)-p\right)}{\Delta}
$$

and hence

$$
f(x)-f\left(x_{0}\right) \geq \frac{\left(x-x_{0}\right)\left(f\left(x_{0}\right)-p\right)}{\Delta}
$$

Applying the convexity property to the point $x_{0}$ between $x$ and $x_{0}+\Delta$ shows that

$$
f\left(x_{0}\right) \geq \frac{f(x)\left(\left(x_{0}+\Delta\right)-x_{0}\right)+\left(x_{0}-x\right) q}{x_{0}+\Delta-x}
$$

and hence

$$
f\left(x_{0}\right)\left(x_{0}+\Delta-x\right) \geq f(x) \Delta+\left(x_{0}-x\right) q
$$

so

$$
f(x)-f\left(x_{0}\right) \leq \frac{\left(x-x_{0}\right)\left(q-f\left(x_{0}\right)\right)}{\Delta}
$$

If $K=\max \left\{\left(f\left(x_{0}\right)-p\right) / \Delta,\left(q-f\left(x_{0}\right)\right) / \Delta\right\}$, then combining Eqs. (15) \& (18) shows that

$$
\left|f(x)-f\left(x_{0}\right)\right| \leq K\left|x-x_{0}\right|
$$

By symmetry, the same arguments can be applied to show that this inequality also holds for $x \in\left[x_{0}, x_{0}+\Delta\right]$. From here, it can be seen that for any $\epsilon>0$, if $\delta=\epsilon / K$, then $\left|x-x_{0}\right|<\delta$ implies that

$$
\left|f(x)-f\left(x_{0}\right)\right|<K \delta=K \frac{\epsilon}{K}=\epsilon
$$

Hence $f$ must be continuous at any interior point. To prove that $f$ is continuous at a given $x_{0}$, the above proof requires that function values are available on both sides of $x_{0}$, which will be not be true at the end points. An example of a convex function that is not continuous at the end points is

$$
f(x)= \begin{cases}1 & \text { if } x \neq a \text { and } x \neq b \\ 0 & \text { if } x=a \text { or } x=b\end{cases}
$$

