Below is a rewritten proof for part (a) structured as a numbered list with motivations at each step. No continuous paragraphs are used.

---

**Proof:**

1. **Show that \(\max\{\sup S,\,\sup T\}\) is an upper bound for \(S\cup T\):**  
   - Let \(x\in S\cup T\). By definition of the union, either \(x\in S\) or \(x\in T\).  
   - If \(x\in S\), then by definition of supremum,  
     \[
     x\le \sup S.
     \] 
     If \(x\in T\), similarly,  
     \[
     x\le \sup T.
     \]
   - In either case,  
     \] x\le \max\{\sup S,\,\sup T\}.\]
   - *Motivation:* This confirms that \(\max\{\sup S,\,\sup T\}\) is an upper bound of every element in \(S \cup T\). [^1]

2. **Show that \(\max\{\sup S,\sup T\}\) is the least upper bound of \(S\cup T\):**  
   - Let \(m\) be an arbitrary upper bound for \(S\cup T\). Then:  
     - For every \(s\in S\) (since \(S\subset S\cup T\)),  
       \[
       s\le m,
       \] 
       so by the definition of supremum,  
       \[
       \sup S\le m.
       \]
     - Similarly, for every \(t\in T\) (because \(T\subset S\cup T\)),  
       \[
       \sup T\le m.
       \]
   - Therefore,  
     \[
     \max\{\sup S,\,\sup T\}\le m.
     \]
   - *Motivation:* This step shows that no upper bound of \(S\cup T\) can be smaller than \(\max\{\sup S,\sup T\}\), ensuring it is the least upper bound.

3. **Conclude the first identity:**  
   - By steps 1 and 2, we obtain  
     \[
     \sup(S\cup T)=\max\{\sup S,\,\sup T\}.
     \]

4. **Prove that \(\sup(S\cap T)\le \min\{\sup S,\sup T\}\):**  
   - Let \(x\in S\cap T\). By definition of the intersection, \(x\) belongs to both \(S\) and \(T\).  
   - Then,  
     \[
     x\le \sup S \quad\text{and}\quad x\le \sup T.
     \]
   - Hence,  
     \[
     x\le \min\{\sup S,\sup T\}.
     \]
   - *Motivation:* Every element of \(S\cap T\) is bounded above by \(\min\{\sup S,\sup T\}\); thus, this number is an upper bound for \(S\cap T\).

5. **Final Conclusion:**  
   - Since \(\min\{\sup S,\sup T\}\) is an upper bound for \(S\cap T\), the supremum (being the least upper bound) satisfies  
     \[
     \sup(S\cap T)\le \min\{\sup S,\sup T\}.
     \]

---

**Q.E.D.**

[^1]: Ross, *Elementary Analysis: The Theory of Calculus* (Springer, 2013). Definitions of union, supremum, and upper bound.