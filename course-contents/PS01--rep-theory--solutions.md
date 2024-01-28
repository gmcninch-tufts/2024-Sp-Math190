---
title: |
 ProblemSet 1 -- Linear algebra and representations **Solutions**
author: George McNinch
date: 2024-01-29
---

$F$ denotes an *algebraically closed field of characteristic 0*. If
you like, you can suppose that $F = \mathbf{C}$ is the field of
complex numbers.

1. Let $V$ be a finite dimensional vector space over the field $F$.
   Suppose that $\phi,\psi:V \to V$ are linear maps.  Let $\lambda \in
   F$ be an eigenvalue of $\phi$ and write $W$ for the
   $\lambda$-eigenspace of $\phi$; i.e.  $$W = \{v \in V \mid \phi(v)
   = \lambda v \}.$$ If $\phi \psi = \psi \phi$ show that $W$ is
   *invariant* under $\psi$ -- i.e. show that $\psi(W) \subseteq W$.

   ::: {.solution}
   **Solution:**  
   Let $w \in W$. We must show that $x=\psi(w) \in W$.  To do this, we
   must establish that $x=\psi(w)$ is a $\lambda$-eigenvector for
   $\phi$.  
   
   We have
   \begin{align*}
   \phi(x) 
   &= \phi(\psi(x)) & \\ 
   &=  \psi(\phi(w)) & \text{since $\phi \circ \psi = \psi \circ \phi$} \\
   &=  \psi(\lambda w) & \text{since $w$ is a $\lambda$-eigenvector} \\
   &= \lambda \psi(w) & \text{since $\psi$ is linear} \\
   &= \lambda x
   \end{align*}
   This completes the proof.
   :::

2. Let $n \in \mathbf{N}$ be a non-zero natural number, and let $V$ be
   an $n$ dimensional $F$-vector space with a given basis
   $e_1,e_2,\cdots,e_n$.
   
   Consider the linear transformation $T:V \to V$ given by the rule
   $$Te_i = e_{i+1 \pmod n}.$$
   In other words
   $$Te_i = \left \{
   \begin{matrix}
   e_{i+1} & i < n \\
   e_1 & i =n
   \end{matrix}
   \right ..$$
   
   a. Show that $T$ is *invertible* and that $T^n = \operatorname{id}_V$.
   
      ::: {.solution}
	  To check that $T^n = \operatorname{id}_V$, we check that
	  $T^n(e_i) = e_i$ for $1 \le i \le n$. 
	  
	  From the definition, it follows by induction on the natural number $m$ that
	  $$T^m(e_i) = e_{i+m \pmod n}.$$
	  Thus $T^n(e_i) = e_{i+n\pmod n} = e_i$. Since this holds for every $i$, conclude
	  $T^n = \operatorname{id}_V$.
	  
	  Now $T$ is invertible since its inverse is given by $T^{n-1}$.
	  :::
   
   b. Consider the vector $v_0 = \displaystyle \sum_{i=1}^n e_i$. Show that
      $v_0$ is a $1$-eigenvector for $T$.

      ::: {.solution}
	  We compute
	  \begin{align*}
	  T(v_0) &= T\left(\sum_{i=1}^n e_i\right) = \sum_{i=1}^n T(e_i) \\
	  &= \sum_{i=1}^n e_{i+1 \pmod n} \\
	  &= \sum_{j=2}^{n+1} e_{j \pmod n} & \text{(let $j = i+1$)} \\
	  &= \sum_{j=1}^{n} e_{j \pmod n}  = v_0 \\
	  \end{align*}
	  Thus $T(v_0) = v_0$ so indeed $v_0$ is a $1$-eigenvector.
	  :::

   Let $\zeta \in F$ be a primitive $n$-th root of unity. (e.g. if you assume $F = \mathbf{C}$, you may as well take
   $\zeta = e^{2\pi i/n}$).
	  
   c. Let $v_1 = \displaystyle \sum_{i=1}^n \zeta^i e_i$. Show that
      $v_1$ ~~is a $\zeta$-eigenvector~~ is a $\zeta^{-1}$-eigenvector for $T$.

      ::: {.solution}
	  We compute
	  \begin{align*}
	  T(v_1) &= T\left(\sum_{i=1}^n \zeta^i e_i\right) \\
	  & = \sum_{i=1}^n \zeta^iT(e_i) \\
	  &= \sum_{i=1}^n \zeta^i e_{i+1 \pmod n} \\
	  &= \sum_{j=2}^{n+1} \zeta^{j-1} e_{j \pmod n} & \text{(let $j = i+1$)} \\
	  &= \zeta^{-1} \sum_{j=2}^{n+1} \zeta^{j} e_{j \pmod n} \\	  
	  &= \zeta^{-1} \sum_{j=1}^{n} \zeta^j e_{j \pmod n} & \text{(since $\zeta^j = \zeta^{j \pmod n}$ $\forall j$)}\\
	  & = \zeta^{-1} v_1 \\
	  \end{align*}
	  Thus $T(v_1) = \zeta^{-1} v_1$ so indeed $v_0$ is a $\zeta^{-1}$-eigenvector.
	  :::

   d. More generally, let $0 \le j < n$ and let $$v_j = \sum_{i=1}^n
      \zeta^{ij} e_i.$$ Show that $v_j$ ~~is a $\zeta^j$-eigenvector~~
      is a $\zeta^{-j}$-eigenvector for $T$.
	  
	  ::: {.solution} 
	  The calcuation in the solution to part (c) is valid
	  for *any* $n$-th root of unity unity $\zeta$.  Applying this
	  calculation for $\zeta^j$ shows that $v_j$ is a
	  $\zeta^{-j}$-eigenvector for $T$ as required.  
	  :::

   e. Conclude that $v_0,v_1,\cdots,v_{n-1}$ is a basis of $V$
      consisting of *eigenvectors* for $T$, so that $T$ is
      *diagonalizable*.
	  
	  **Hint:** You need to use the **fact** that eigenvectors for distinct eigenvalues
	  are *linearly independent*.

      What is the *matrix* of $T$ in this basis?

      ::: {.solution}
	  
	  Since eigenvectors for distinct eigenvalues are linearly independent,
	  conclude that the vectors $\mathcal{B}=\{v_0,v_1,\cdots,v_{n-1}\}$ are linearly independent.
	  Since there $n$ vectors in $\mathcal{B}$ and since $\dim V = n$, conclude
	  that $\mathcal{B}$ is a *basis* for $V$.
	  
	  The matrix of $T$ in the basis $\mathcal{B}$ is given by
	  $$[T]_{\mathcal{B}} =
	  \begin{bmatrix}
	  1 & 0 & 0 & \cdots & 0 \\
	  0 & \zeta^{-1} & 0 & \cdots & 0 \\
	  0 & 0 & \zeta^{-2} & \cdots & 0 \\	  
	  \vdots & \vdots & \vdots & \ddots & \vdots \\
	  0 & 0 & 0 & \cdots & \zeta^{-n+1}
	  \end{bmatrix}
	  $$
	  
	  (This form explains why an $n\times n$ matrix $M$ is
      *diagonalizable* iff $F^n$ has a basis of eigenvectors for $M$).
      :::

3. Let $G = \mathbb{Z}/3\mathbb{Z}$ be the additive group of order
   $3$, and let $\zeta$ be a primitive $3$rd root of unity in $F$.
   
   To define a representation $\rho:G \to \operatorname{GL}_n(F)$, it
   is enough to find a matrix $M \in \operatorname{GL}_n(F)$ with $M^3
   = 1$; in turn, $M$ determines a representation $\rho$ by the rule
   $\rho(i + 3\mathbb{Z}) = M^i$.
   
   Consider the *representation* $\rho_1 : G \to \operatorname{GL}_3(F)$
   given by the matrix $$\rho_1(1 + 3\mathbb{Z}) = M_1 = \begin{bmatrix}
   1 & 0 & 0\\
   0 & \zeta & 0 \\
   0 & 0 & \zeta^2
   \end{bmatrix}$$
   and consider the representation
   $\rho_2:G \to \operatorname{GL}_3(F)$ given by
   the matrix $$\rho_2(1 + 3\mathbb{Z}) = M_2 = \begin{bmatrix}
   0 & 0 & 1\\ 
   1 & 0 & 0 \\
   0 & 1 & 0 
   \end{bmatrix}.$$

   Show that the *representations* $\rho_1$ and $\rho_2$ are
   *equivalent* (alternative terminology: are *isomorphic*).  In other
   words, find a linear bijection $\Phi:F^3 \to F^3$ with the property
   that $$\Phi(\rho_2(g)v) = \rho_1(g)\Phi(v)$$ for every $g \in G$
   and $v \in F^3$.

   **Hint:** First find a basis of $F^3$ consisting of eigenvectors
   for the matrix $M_2$.

   ::: {.solution}
   The matrix $M_1$ is *diagonal*, which is to say that the *standard basis vectors*
   $e_1 = \begin{bmatrix} 1 \\  0 \\ 0 \end{bmatrix},
   e_2 = \begin{bmatrix} 0 \\  1 \\ 0 \end{bmatrix},
   e_3 = \begin{bmatrix} 0 \\  0 \\ 1 \end{bmatrix}$
   are *eigenvectors* for $M_1$ with respective eigenvalues $1,\zeta,\zeta^2$.
   
   By the work in problem 2, we see that
   $$v_1 = e_1 + e_2 + e_3, \quad v_2 = e_1 + \zeta e_2 + \zeta^2 e_3,
   \quad v_3 = e_1 + \zeta^2 e_2 + \zeta e_3$$
   are eigenvectors for $M_2$ with respective eigenvalues
   $1,\zeta^2,\zeta$.
   
   Now let $\Phi:F^3 \to F^3$ be the linear transformation
   for which $$\Phi(e_1) = v_1,  \quad \Phi(e_2) =v_3, \quad \Phi(e_3) = v_2$$.
   
   We claim that $\Phi$ defines an isomorphism of $G$-representations
   $$(\rho_1,F^3) \xrightarrow{\sim} (\rho_2,F^3).$$
   
   We must check that $\Phi(\rho_1(g)v) = \rho_2(g)\Phi(v)$ for all $g
   \in G$ and all $v \in F^3$.

   Since $G$ is *cyclic* it suffices to check that $$(\clubsuit) \quad
   \Phi(M_1 v) = M_2 \Phi(v)
   \quad \forall v \in F^3$$.
   
   (*Indeed*, $(\clubsuit)$ amounts to "checking on a generator". If
   $(\clubsuit)$ holds then for every natural number $i$ a
   straightforward induction argument shows for every $v \in F^3$ that
   \begin{align*} \Phi(\rho_1(i + 3\mathbb{Z})v) &=
   \Phi(\rho_1(1+3\mathbb{Z})^i v) \\ &= \Phi( {M_1}^i v) \\ &=
   {M_2}^i \Phi(v) \\ &= \rho_2(1 + 3\mathbb{Z})^i\Phi(v) \\ &=
   \rho_2(i+3\mathbb{Z})\Phi(v) \end{align*} )
   
   In turn, it suffices to verify the $(\clubsuit)$ holds for the basis vectors $e_1,e_2,e_3$ 
   for $V = F^3$.
   
   Since $e_1$ and $v_1$ are $1$-eigenvectors for $M_1$ resp. $M_2$, we have
   $$\Phi(M_1 e_1)= \Phi(e_1) = v_1 = M_2 v_1.$$
   
   Since $e_2$ and $v_3$ are $\zeta$-eigenvectors for $M_1$ resp. $M_2$, we have
   $$\Phi(M_1 e_2)= \Phi(\zeta e_2) = \zeta\Phi(e_2) = \zeta v_3 = M_2 v_3.$$
   
   Since $e_3$ and $v_2$ are $\zeta^2$-eigenvectors for $M_1$ resp. $M_2$, we have
   $$\Phi(M_1e_3)= \Phi(\zeta^2 e_3) = \zeta^2\Phi(e_3) =  \zeta^2 v_2 = M_2v_2.$$
   Thus $(\clubsuit)$ holds and the proof is complete.
   
   --- 
   
   Alternatively, note that the matrix of $\Phi$ in the standard basis is given by
   $$[\Phi] = \begin{bmatrix}
   1  & 1 & 1 \\
   1 & \zeta^2 & \zeta \\
   1 & \zeta & \zeta^2
   \end{bmatrix}$$
   
   Now, to prove that $\Phi \circ \rho_1(g) = \rho_2(g) \circ \Phi$, it suffices to check that
   $M_2[\Phi] = [\Phi] M_1$ i.e. that
   $$\begin{bmatrix}
   0 & 0 & 1\\ 
   1 & 0 & 0 \\
   0 & 1 & 0 
   \end{bmatrix} \cdot \begin{bmatrix}
   1  & 1 & 1 \\
   1 & \zeta^2 & \zeta \\
   1 & \zeta & \zeta^2
   \end{bmatrix}
   =
   \begin{bmatrix}
   1  & 1 & 1 \\
   1 & \zeta^2 & \zeta \\
   1 & \zeta & \zeta^2
   \end{bmatrix}
   \cdot 
   \begin{bmatrix}
   1 & 0 & 0\\
   0 & \zeta & 0 \\
   0 & 0 & \zeta^2
   \end{bmatrix}
   $$
   
   IN fact, both products yield the matrix
   $$\begin{bmatrix}
   1 & \zeta & \zeta^2 \\
   1 & 1 & 1 \\
   1 & \zeta^2 & \zeta
   \end{bmatrix}
   $$
   :::

4. Let $V$ be a $n$ dimensional $F$-vector space for $n \in
   \mathbb{N}$.
   
   Let $\operatorname{GL}(V)$ denote the group $$\operatorname{GL}(V)
   = \{ \text{all invertible $F$-linear transformations $\phi:V \to
   V$}\}$$
   where the group operation is *composition* of linear transformations.

   Recall that $\operatorname{GL}_n(F)$ denotes the group
   of all invertible $n \times n$ matrices.
   
   If $\mathcal{B} = \{b_1,b_2,\cdots,b_n\}$ is a choice of basis, show
   that the assignment $\phi \mapsto [\phi]_{\mathcal{B}}$
   determines an isomorphism
   $$\operatorname{GL}(V) \xrightarrow{\sim} \operatorname{GL}_n(F).$$
   
   Here $[\phi]_{\mathcal{B}} = [M_{ij}]$ denotes the *matrix* of $\phi$
   in the basis $\mathcal{B}$ defined by equations 
   
   $$\phi(b_i) = \sum_{k=1}^n M_{ki} b_k.$$

   ::: {.solution}
   Lets write $\Phi$ for the mapping
   $$\Phi:\operatorname{GL}(V) \to \operatorname{GL}_n(F)$$ defined above.
   
   An important property -- proved in *Linear Algebra* -- is that for
   $\phi,\psi:V \to V$ we have $$(\heartsuit) \quad [\phi \circ
   \psi]_{\mathcal{B}} = [\phi]_{\mathcal{B}} \cdot
   [\psi]_{\mathcal{B}}.$$ In words: "once you choose a basis,
   composition of linear transformations corresponds to multiplication
   of the corresponding matrices".
   
   Now, since the matrix of the endomorphism $\phi:V \to V$ is equal
   to the identity matrix $\mathbf{I}_n$ if and only if $\phi
   =\operatorname{id}_V$, $(\heartsuit)$ shows at once that a linear
   transformation $\phi:V \to V$ is invertible if and only if
   $[\phi]_{\mathcal{B}}$ is an invertible matrix.
   
   This confirms that $\Phi$ is indeed a group homomorphism.
   
   To show that $\Phi$ is an *isomorphism*, we exhibit its inverse.
   Namely, we defined a group homomorphism
   $$\Psi:\operatorname{GL}_n(F) \to \operatorname{GL}(V)$$
   and check that $\Psi$ is the inverse to $\Phi$.
   
   TO define $\Psi$, we introduce the linear isomorphism
   $\beta:F^n \to V$ defined by the rule
   $$\beta \begin{bmatrix} a_1 \\ a_2 \\ \vdots \\ a_n \end{bmatrix} 
   =\sum_{i=1}^n a_i b_i.$$
   
   For an invertible matrix $M$, we define
   $$\Psi(M):V \to V$$
   by the rule
   $$\Psi(M)(v) = \beta M \cdot \beta^{-1} v$$
   
   If $M_1,M_2 \in\operatorname{GL}_n(F)$ then for every $v \in V$ we have
   \begin{align*}
   \Psi(M_1M_2)v &= \beta M_1 M_2 \cdot \beta^{-1} v \\
   &= \beta M_1 \beta^{-1} \beta M_2 \cdot \beta^{-1} v \\
   &= \Psi(M_1)\Psi(M_2)v
   \end{align*}
   This confirms that $\Psi$ is a *group homomorphism*.
   
   It remains to observe that for $M \in \operatorname{GL}_n(F)$ we
   have $$\Phi \circ \Psi (M) = M,$$ which amounts to the fact that
   $M$ is the matrix of $\Psi(M)$, and we must observe for $g \in
   \operatorname{GL}(V)$ that $$\Psi \circ \Phi (g) = g$$ which
   amounts to the observation that the transformation $g:V \to V$ is
   determined by its effect on the basis
   vectors $b_i$ and hence by the matrix $\Phi(g)$.  
   
   :::
