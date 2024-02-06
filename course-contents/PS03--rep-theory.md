---
title: |
 ProblemSet 3 -- representation theory
author: George McNinch
date: 2024-02-16
---

\newcommand{\trivial}{\mathbf{1}}

**Work any 3 of the following 4 problems.**

In these exercises, $G$ always denotes a finite group. Unless
indicated otherwise, all vector spaces are assumed to be finite
dimensional over the field $F = \mathbb{C}$. The representation
space $V$ of a representation of $G$ is always assumed to be finite
dimensional over $\mathbb{C}$.

1. Let $\phi:G \to F^\times$ be a group homomorphism; since $F^\times
   = \operatorname{GL}_1(F)$, we can think of $\phi$ as a
   1-dimensional representation $(\phi,F)$ of $G$.

   If $V$ is any representation of $G$, we can form a *new*
   representation $\phi \otimes V$. The underlying vector space for
   this representation is just $V$, and the "new" action of an element
   $g \in G$ on a vector $v$ is given by the rule $$g \star v =
   \phi(g) gv.$$
   
   a. Prove that if $V$ is irreducible, then $\phi \otimes V$ is  also irreducible.
   
   b. Prove that if $\chi$ denotes the *character* of $V$, then the
      character of $\phi \otimes V$ is given by $\phi \cdot \chi$; in
      other words, the trace of the action of $g \in G$ on $\phi
      \otimes V$ is given by $$\chi_{\phi \otimes V}(g) =
      \operatorname{tr}( v\mapsto g \star v) = \phi(g) \chi(g).$$

   c. Recall that in class we saw that $S_3$ has an irreducible representation $V_2$ of dimension 2
      whose character $\psi_2$ is given by
	  
	  $$\begin{array}{l|lll}
	  g & 1 & (12) & (123) \\
	  \hline
	  \psi_2 & 2 & 0 & -1
	  \end{array}$$

      Observe that $\operatorname{sgn} \psi = \psi$ and conclude that
	  $V_2 \simeq \operatorname{sgn} \otimes V_2$, where
	  $\operatorname{sgn}:S_n \to \{\pm 1\} \subset \mathbb{C}^\times$
	  is the *sign homomorphism.*

      On the other hand, $S_4$ has an irreducible representation $V_3$ of dimension 3
	  whose character $\psi_3$ is given by

	  $$\begin{array}{l|lllll}
	  g & 1 & (12) & (123) & (1234) &  (12)(34) \\
	  \hline
	  \psi_3 & 3 &  1 & 0 & -1 & -1 
	  \end{array}$$

      (I'm not asking you to confirm that $\psi_3$ is irreducible, though it would be
      straightforward to check that $\langle \psi_3,\psi_3 \rangle =
      1$).
	  
      Prove that $V_3 \not \simeq \operatorname{sgn} \otimes V_3$ as
      $S_4$-representations. 
	  
	  (In particular, $S_4$ has *at least two*
      irreducible representations of dimension 3.)

2. Let $V$ be a representation of $G$.

   For an irreducible representation $L$, 
   consider the set $$\mathcal{S}=\{ S \subseteq V \mid S \simeq L\}$$ of all invariant
   subspaces that are isomorphic to $L$ as $G$-representations.
	  
   Put $$V_{(L)} = \sum_{S \in \mathcal{S}} S.$$

   a. Prove that $V_{(L)}$ is an invariant subspace, and show that 
      $V_{(L)}$ is isomorphic to a direct sum
	  $$V_{(L)} \simeq L \oplus \cdots \oplus L$$
	  as $G$-representations.
	  
   b. Prove that the *quotient representation* $V/V_{(L)}$ has no
	  invariant subspaces isomorphic to $L$ as $G$-representations.

   c. If $L_1,L_2,\cdots,L_m$ is a complete set of non-isomorphic
      irreducible representations for $G$, prove that $V$ is the
      internal direct sum $$V = \bigoplus_{i=1}^m V_{(L_i)}.$$

3. Let $\chi$ be the character of a representation $V$ of $G$. For $g\in G$ prove
   that $\overline{\chi(g)} = \chi(g^{-1})$.
   
   Is it true for any arbitrary class function $f:G \to \mathbb{C}$
   that $\overline{f(g)} = f(g^{-1})$ for every $g$? (Give a proof or
   a counterexample...)

4. For a prime number $p$, let $k=\mathbb{F}_p =
   \mathbb{Z}/p\mathbb{Z}$ be the field with $p$ elements. Let $V$ be
   an $n$-dimensional vector space over $\mathbb{F}_p$ for some
   natural number $n$, and let $$\langle \cdot,\cdot \rangle: V \times
   V \to k$$ be a non-degenerate bilinear form on $V$.

   (*A common example would be to take $V = \mathbb{F}_{p^n}$ the
   field of order $p^n$, and $\langle \alpha,\beta\rangle =
   \operatorname{tr}_{\mathbb{F}_{p^n}/\mathbb{F}_p}(\alpha \beta)$ the trace pairing*).
 
   Let us fix a non-trivial group homomorphism $\psi:k \to
   \mathbb{C}^\times$ (recall that $k = \mathbb{Z}/p\mathbb{Z}$ is an
   additive group, while $\mathbb{C}^\times$ is multiplicative). Thus
   $$\psi(\alpha + \beta) = \psi(\alpha)\psi(\beta) \quad \text{for all} \quad
   \alpha,\beta \in k.$$ If you want an explicit choice, set $\psi(j +
   p\mathbb{Z}) = \exp(j \cdot 2 \pi i/p) = \exp(2 \pi i /p)^j.$

   For a vector $v \in V$, consider the mapping
   $\Psi_v:V \to \mathbb{C}^\times$ given by the
   rule
   $$\Psi_v(w) = \psi( \langle w,v \rangle ).$$
   
   a. Show that $\Psi_v$ is a group homomorphism $V \to \mathbb{C}^\times$. 
   
   b. Show that the assignment $v \mapsto \Psi_v$ is injective
      (one-to-one).  
	  
	  (This assignment is a function $V \to
      \operatorname{Hom}(V,\mathbb{C}^\times)$. In fact, it is a group
      homomorphism. Do you see why? How do you make
      $\operatorname{Hom}(V,\mathbb{C}^\times)$ into a group?)
   
   b. Show that any group homomorphism $\Psi:V \to \mathbb{C}^\times$
      has the form $\Psi = \Psi_v$ for some $v \in V$.
 
      Conclude that there are exactly $|V| = q^n$ group homomorphisms
	  $V \to \mathbb{C}^\times$.
