x---
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
	  

   b. Recall that the *dual* of $V$ is the vector space $V^\vee =
      \operatorname{Hom}_F(V,F)$ of *linear functionals* on $V$.
	  
	  If $b_1,\dots,b_n$ is a basis for $V$, let ${b_j}^\vee:V \to F$ be
	  defined by ${b_j}^\vee(b_i) = \delta_{i,j}$. Show that
	  ${b_1}^\vee,\dots,{b_n}^\vee$ is a basis for $V^\vee$; it is known as
	  the *dual basis* to $b_1,\dots,b_n$.
	  
   c. Prove that the trace of the linear mapping $\Phi:V \to V$ is
      given by the expression $$\operatorname{tr}(\Phi) = \sum_{i=1}^n
      {b_i}^\vee(\Phi(b_i)).$$
	  
   d. Suppose that the finite group $G$ acts on the finite set
      $\Omega$, and consider the corresponding permutation
      representation $(\rho,F[\Omega])$ of $G$. Recall that
      $F[\Omega]$ is the vector space of all $F$-values functions on
      $\Omega$, and that for $f \in F[\Omega]$ and $g \in G$, we have
      $$\rho(g)f(\omega) = f(g^{-1}\omega).$$
	  In particular, we saw in the lecture that
	  $$\rho(g)\delta_\omega) = \delta_{g\omega},$$
	  where $\delta_\omega$ denotes the *Dirac function* at $\omega \in \Omega$.
	  
	  Show that $$\operatorname{tr}(\rho(g)) = #\{\omega \in \Omega
	  \mid g\omega = \omega\};$$ i.e. the trace of $\rho(g)$ is the
	  number of fixed points of the action of $g$ on $\Omega$.
	  
