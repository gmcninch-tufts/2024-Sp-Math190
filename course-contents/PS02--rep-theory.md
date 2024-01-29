---
title: |
 ProblemSet 2 -- Representations and characters
author: George McNinch
date: 2024-01-29
---

\newcommand{\trivial}{\mathbf{1}}


In these exercises, $G$ always denotes a finite group and all vector
spaces are assumed to be finite dimensional over the field $F =
\mathbb{C}$.

In these exercises, you may use results stated but not yet proved in
class about characters of representations of $G$.

1. In this problem, we identify the character $\chi_\Omega$ of the
   *permutation representation* $(\rho,F[\Omega])$ of a group $G$.
   

   a. Let $V$ be a vector space and let $\Phi:V \to V$ a linear mapping
      If $\mathcal{B}$ is a basis for $V$, recall that the *trace* of $\Phi$
	  is defined by
	  $$\operatorname{tr}(\Phi) = \operatorname{tr}([\Phi]_{\mathcal{B}}).$$
	  

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
	  
	  Show that $$\operatorname{tr}(\rho(g)) = \#\{\omega \in \Omega
	  \mid g\omega = \omega\};$$ i.e. the trace of $\rho(g)$ is the
	  number of fixed points of the action of $g$ on $\Omega$.
	  


2. Let $V$ be a representation of $G$, suppose that $W_1,W_2$ are invariant subspaces,
   and that $V$ is the internal direct sum
   $$V = W_1 \oplus W_2.$$
   
   Show that the character $\chi_V$ of $V$ satisfies
   $$\chi_V = \chi_{W_1} + \chi_{W_2}$$
   i.e. for $g \in G$ that
   $$\chi_V(g) = \chi_{W_1}(g) + \chi_{W_2}(g).$$

3. Let $G = A_4$ be the alternating group of order $\dfrac{4!}{2} = 12$.

   We are going to find the *character table* of this group.
   
   a. Confirm that the following list gives a representative for each
      of the conjugacy classes of $G$:
   
      $$1, (12)(34), (123), (124)$$
   
      (Note that $(123)$ and $(124)$ are conjugate in $S_4$, but *not*
      in $A_4$).
   
      What are the *sizes* of the corresponding conjugacy classes?
   
   b. Let $K = \langle (12)(34), (14)(23)\rangle$. Show that $K$ is a
      normal subgroup of index $3$, so that $G/K \simeq
      \mathbb{Z}/3\mathbb{Z}$.
   
      Let $\zeta_3$ be a primitive $3$rd root of unity in $F^\times$ and for
	  $i=0,1,2$ let
	  $\rho_i:G \to F^\times$ 
	  be the unique homomorphism with the following properties:
	  
	  i. $\rho_i\left( (123) \right) = \zeta^i$
	  ii. $K \subseteq \ker \rho_i$.
   
      Explain why $\rho_0 = \trivial,\rho_1,\rho_2$ determine distinct irreducible
      (1-dimensional) representations of $G$.
   
   c. Let $\Omega = \{1,2,3,4\}$ on which $G$ acts by the embedding
      $A_4 \subset S_4$.
	  
	  Compute the character $\chi_\Omega$ of the representation
	  $F[\Omega]$.  (This means: compute and list the values of
	  $\chi_\Omega$ at the conjugacy class representatives given in a.)

      (*Use the result of problem 1 above*).

   d. The span of the vector $\delta_1 + \delta_2 + \delta_3 +
	  \delta_4 \in F[\Omega]$ is an invariant subspace isomorphic to
	  the irreducible representation $\rho_0$ (the so-called *trivial
	  representation*).
	  
	  Thus $F[\Omega] = \rho_0 \oplus W$ for a $3$-dimensional invariant
	  subspace. Explain why problem 2 shows that the character of $W$ is given by
	  $\chi_W = \chi_\Omega - \trivial$.
	  
	  Now prove that $\langle \chi_W,  \chi_W \rangle = 1$ and conclude
	  that $W$ is an irreducible representation.
	  
   e. Explain why $$\trivial,\rho_1,\rho_2,W$$ is a complete set of
      non-isomorphic irreducible representations of $G$.
	   
   f. Display the *character table* of $G = A_4$.
	  
