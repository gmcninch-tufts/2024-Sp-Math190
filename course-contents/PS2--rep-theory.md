---
title: |
 ProblemSet 2 -- Representations and characters
author: George McNinch
date: 2024-01-29
---

In these exercises, all vector spaces are assumed to be finite
dimensional over the field $F = \mathbb{C}$.

1. In this problem, we identify the character $\chi_\Omega$ of the
   *permutation representation* $(\rho,F[\Omega])$ of a group $G$.
   

   a. Let $V$ be a vector space and let $\Phi:V \to V$ a linear mapping
      If $\mathcal{B}$ is a basis for $V$, recall that the *trace* of $\Phi$
	  is defined by
	  $$\operatorname{tr}(\Phi) = \operatorname{tr}([\Phi]_\mathcal{B}).$$
	  
	  Explain why this definition is independent of the choice of
      basis $\mathcal{B}$ of $V$.

   b. Recall that the *dual* of $V$ is the vector space $V^\vee =
      \operatorname{Hom}_F(V,F)$ of *linear functionals* on $V$.
	  
	  If $b_1,\dots,b_n$ is a basis for $V$, let ${b_j}^\vee:V \to F$
	  be defined by ${b_j}^\vee(b_i) = \delta_{i,j}$, so that
	  ${b_j}^\vee \in V^\vee$. Show that ${b_1}^\vee,\dots,{b_n}^\vee$
	  is a basis for $V^\vee$; it is known as the *dual basis* to
	  $b_1,\dots,b_n$.
	  
   c. Prove that the trace of the linear mapping $\Phi:V \to V$ is
      given by the expression $$\operatorname{tr}(\Phi) = \sum_{i=1}^n
      {b_i}^\vee(\Phi(b_i))$$ for any choice of basis
      $\mathcal{B}=\{b_1,b_2,\cdots,b_n\}$.
	  
   d. Suppose that the finite group $G$ acts on the finite set
      $\Omega$, and consider the corresponding permutation
      representation $(\rho,F[\Omega])$ of $G$. Recall that
      $F[\Omega]$ is the vector space of all $F$-values functions on
      $\Omega$, and that for $f \in F[\Omega]$ and $g \in G$, we have
      $$\rho(g)f(\omega) = f(g^{-1}\omega).$$ In particular, we saw in
      the lecture that $$\rho(g)\delta_\omega = \delta_{g\omega}$$
      where $\delta_\omega$ denotes the *Dirac function* at $\omega
      \in \Omega$.
	  
	  Show that $$\operatorname{tr}(\rho(g)) = \#\{\omega \in \Omega
	  \mid g\omega = \omega\}.$$ Thus the character $\chi_\Omega$ of
	  the representation $(\rho,F[\Omega])$ is given by
	  $$\chi_\Omega(g) = \text{the number of fixed points of the
	  action of $g$ on $\Omega$.}$$
	  
2. Let $G$ be a finite group and let $V$ be a $G$ representation.
   
   a. Let $L$ be an irreducible representation of $G$, and write
      $\mathscr{S}$ for the set of all subrepresentations $W$ of $V$
      for which there is an isomorphism $W \simeq L$ of
      $G$-representations.
	  
	  Write $$V_{(L)} = \sum_{W \in \mathscr{S}} W.$$ Prove that the
	  $V_{(L)}$ is a subrepresentation of $V$, and that the quotient
	  $G$-representation $V/V_{(L)}$ has no subrepresentations
	  isomorphic to $L$.
	  
   b. Write $L_1,L_2,\cdots,L_r$ for the collection of all irreducible
      representations of $G$.
	  
	  Prove that $V$ is isomorphic to the direct sum
	  $$V_{(L_1)} \oplus V_{(L_2)} \oplus \cdots \oplus V_{(L_r)}.$$
	  
   **Remark:** The subrepresentation $V_{(L)}$ is known as the
   *isotypic component of $V$ of type $L$*.


3. Let $N >0$ be a natural number, and let $\zeta \in F^\times$ be a
   primitive $N$-th root of unity (if you like, you can take $\zeta =
   e^{2\pi i/N}$).
