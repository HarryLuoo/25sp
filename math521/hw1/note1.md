Okay, I will restructure the study note to be concept-centric and mathematically ordered, using concise language and highlighting relevant theorems for each problem.

**Restructured Study Note for Math 521: Assignment 1**

**I. Number Systems and Field & Order Properties (Problems 4, 5)**

* **Concept:**  Real Analysis builds upon the properties of different number systems: Natural Numbers ($\N$), Integers ($\Z$), Rational Numbers ($\Q$), and Real Numbers ($\R$).  Understanding their algebraic and order structures is fundamental.
* **Field Properties (A1-A4, M1-M4, DL):** These axioms define the basic operations of addition and multiplication in a field.
    * **Axioms:**
        * **Addition:** Associativity (A1), Commutativity (A2), Additive Identity (A3: existence of 0), Additive Inverse (A4: existence of -a).
        * **Multiplication:** Associativity (M1), Commutativity (M2), Multiplicative Identity (M3: existence of 1), Multiplicative Inverse (M4: existence of $a^{-1}$ for $a \ne 0$).
        * **Distributive Law (DL):** Connects addition and multiplication: $a(b+c) = ab + ac$.
    * **Relevance to Problem 4:**  Determine which field properties hold for $\N$, $\Z$, and the binary numbers $\B=\{0,1\}$ with given operations.  For each system, systematically check each axiom.
* **Ordered Field Properties (O1-O5):**  These axioms introduce the concept of order ($<, \le, >, \ge$) in a field.
    * **Axioms:**
        * **Trichotomy (O1):** For any $a, b$, exactly one of $a<b$, $a=b$, or $a>b$ is true.
        * **Transitivity (O2):** If $a<b$ and $b<c$, then $a<c$.
        * **Addition and Order (O3):** If $a<b$, then $a+c < b+c$.
        * **Multiplication and Order (O4):** If $a<b$ and $c>0$, then $ac < bc$.
        * **Consistency of Order with Positive Element (O5):** $0<1$.
    * **Relevance to Problem 5:** Use the ordered field properties of $\R$ to prove statements like $0<1$ and implications of inequalities involving inverses.  For 5a, you can directly cite O5 or derive it if needed from other axioms. For 5b, use O4 carefully when multiplying inequalities by inverses, ensuring you consider the sign.

**II. Supremum and Infimum of Sets (Problems 6, 8, 9)**

* **Concept:**  For bounded sets in $\R$, supremum (sup) is the least upper bound, and infimum (inf) is the greatest lower bound. Minimum (min) and maximum (max) are the smallest and largest elements *within* the set, if they exist.
* **Definitions:**
    * **Upper Bound:** $U$ is an upper bound of a set $S$ if $x \le U$ for all $x \in S$.
    * **Supremum (Least Upper Bound):** $s = \sup S$ if:
        1. $s$ is an upper bound for $S$.
        2. If $U$ is any upper bound for $S$, then $s \le U$.
    * **Lower Bound:** $L$ is a lower bound of a set $S$ if $L \le x$ for all $x \in S$.
    * **Infimum (Greatest Lower Bound):** $i = \inf S$ if:
        1. $i$ is a lower bound for $S$.
        2. If $L$ is any lower bound for $S$, then $L \le i$.
* **Relevance to Problem 6:** Determine min, max, inf, and sup for various sets. For sets that are not closed or unbounded, min/max might not exist, but inf/sup might. For unbounded sets, sup or inf can be $\infty$ or $-\infty$.
* **Relevance to Problem 8:** Prove the relationship $\sup (A-B) = \sup A - \inf B$.  Use the definition of supremum and infimum. Show that $\sup A - \inf B$ is an upper bound of $A-B$ and that it's the *least* upper bound.
* **Relevance to Problem 9:** Analyze statements about infimum and supremum of set operations like product and set ordering. For 9.1, consider counterexamples, especially with negative numbers. For 9.2 and 9.3, use the definitions of sup and inf to prove or disprove the statements. For 9.2, if $\sup C < \inf D$, choose a number in between to separate the sets. For 9.3, if such a separator exists, deduce the relationship between $\sup C$ and $\inf D$.

**III. Rational and Irrational Numbers (Problems 3, 10, 12)**

* **Concept:**  Rational numbers ($\Q$) are expressible as fractions $p/q$ (integers $p, q$, $q \ne 0$). Irrational numbers ($\I = \R \setminus \Q$) are real numbers that are not rational (e.g., $\sqrt{2}, \pi, e$).
* **Theorem: Irrationality of $\sqrt{p}$ for prime $p$:**  Standard proof by contradiction. Assume $\sqrt{p} = a/b$ in lowest terms, square both sides, and use properties of prime factorization to reach a contradiction regarding divisibility.
* **Density of Rationals and Irrationals in $\R$:** Between any two real numbers, there exists a rational number and an irrational number.
* **Relevance to Problem 3:** Prove $\sqrt2+\sqrt5$ is irrational using proof by contradiction. Assume it's rational and manipulate the expression to show that $\sqrt{10}$ must be rational, then prove $\sqrt{10}$ is irrational (similar method to proving $\sqrt{2}$ irrational).
* **Relevance to Problem 10:** Prove that between any two real numbers $a<b$, there exists an irrational number. Use the hint to consider sets of the form $\{r+\sqrt2 \sep r\in \Q\}$. Show that these are irrational and utilize the density of rational numbers.
* **Relevance to Problem 12:** Construct sequences of rational numbers converging to an irrational limit (12a) and irrational numbers converging to a rational limit (12b). For 12a, use decimal approximations of an irrational number. For 12b, consider irrational numbers that can be made arbitrarily small to converge to 0.

**IV. Mathematical Induction (Problems 1, 2a)**

* **Concept:** Principle of Mathematical Induction is used to prove statements for all natural numbers $n \in \N$.
* **Principle of Mathematical Induction:** To prove a statement $P(n)$ for all $n \in \N$:
    1. **Base Case:** Prove $P(1)$ (or $P(n_0)$ for a starting integer $n_0$).
    2. **Inductive Step:** Assume $P(k)$ is true for some $k \in \N$ (Inductive Hypothesis). Prove that $P(k+1)$ is true based on the assumption $P(k)$.
* **Strong Induction (Variant used in Problem 2a):**  The inductive step can assume the truth of $P(j)$ for all $j \le k$ to prove $P(k+1)$. In Problem 2a, a form of strong induction is used where you assume $H_k$ (which includes statements about $P_k$ and $P_{k-1}$) to prove $H_{k+1}$.
* **Relevance to Problem 1:** Prove the summation formula using induction. Define $P(n)$ as the given equation. Establish the base case $n=1$ and then perform the inductive step, manipulating the sum for $n=k+1$ to relate it to the sum for $n=k$ (using the inductive hypothesis).
* **Relevance to Problem 2a:** Prove $P_n = f(n)$ using induction. Define the proposition $H_n$ as given. You will need to verify base cases for $n=1$ and $n=2$ (or $n=0, n=1$ depending on definition starting index). In the inductive step, use the recurrence relation for $P_{n+1}$ and the inductive hypothesis $H_k$ (specifically $P_k = f(k)$ and $P_{k-1} = f(k-1)$) to show that $P_{k+1} = f(k+1)$. You'll need to manipulate the expression for $f(n)$.

**V. Limits of Sequences (Problems 7, 11, 13)**

* **Concept:** The limit of a sequence $(x_n)$ describes the value that $x_n$ approaches as $n$ becomes large.
* **Epsilon Definition of Limit (Formal Definition, not strictly needed for HW, but conceptually relevant):** $\lim_{n\to\infty} x_n = L$ if for every $\epsilon > 0$, there exists $N \in \N$ such that for all $n \ge N$, $|x_n - L| < \epsilon$.
* **Limit Laws:** Limits respect algebraic operations (sum, product, quotient) under certain conditions.
* **Techniques for Finding Limits:** Algebraic manipulation, dividing by dominant terms, conjugate multiplication, ratio test (informally for sequences).
* **Relevance to Problem 7:** Understand the relationship between inequalities and epsilon. Problem 7 explores the condition "$a < b+\epsilon$ for all $\epsilon > 0$" and its relation to $a<b$ and $a \le b$. This touches on the idea of limits and approximation.
* **Relevance to Problem 11:** Calculate limits of various sequences. Use limit laws and algebraic techniques to simplify expressions and find the limits. For sequences involving radicals, consider conjugate multiplication. For rational functions, divide numerator and denominator by the highest power of $n$.
* **Relevance to Problem 13 (Optional):** Construct an infinite partition of $\N$. This is related to set theory and countability, not directly limits, but conceptually related to infinite collections, a theme in Real Analysis.

This restructured study note is organized by mathematical concepts, provides concise descriptions, and links each concept to the relevant problems in your assignment. Use this to guide your study and problem-solving process.