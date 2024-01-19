---
title: |
 ProblemSet 1 -- Linear algebra and representations
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
   
   b. Consider the vector $v_0 = \displaystyle \sum_{i=1}^n e_i$. Show that
      $v_0$ is a $1$-eigenvector for $T$.

   Let $\zeta \in F$ be a primitive $n$-th root of unity. (e.g. if you assume $F = \mathbf{C}$, you may as well take
   $\zeta = e^{2\pi i/n}$).
	  
   c. Let $v_1 = \displaystyle \sum_{i=1}^n \zeta^i e_i$. Show that
      $v_1$ ~~is a $\zeta$-eigenvector~~ is a $\zeta^{-1}$-eigenvector for $T$.

   d. More generally, let $0 \le j < n$ and let $$v_j = \sum_{i=1}^n
      \zeta^{ij} e_i.$$ Show that $v_j$ ~~is a $\zeta^j$-eigenvector~~
      is a $\zeta^{-j}$-eigenvector for $T$.

   e. Conclude that $v_0,v_1,\cdots,v_{n-1}$ is a basis of $V$
      consisting of *eigenvectors* for $T$, so that $T$ is
      *diagonalizable*.
	  
	  **Hint:** You need to use the **fact** that eigenvectors for distinct eigenvalues
	  are *linearly independent*.

      What is the *matrix* of $T$ in this basis?

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
