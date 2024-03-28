---
title: |
 ProblemSet 5 -- Solutions of equations and cyclic codes
author: George McNinch
date: due 2024-03-29
---

\newcommand{\F}{\mathbb{F}}
\newcommand{\trivial}{\mathbf{1}}

\newcommand{\GL}{\operatorname{GL}}

\newcommand{\PP}{\mathbb{P}}

\newcommand{\tr}{\operatorname{tr}}


1. Let $q$ be a power of a prime $p > 3$ and let $k = \F_q$.

   For a homogeneous polynomial $F \in k[X,Y,Z,W]$, let us write
   $$V(F) = \{ P = (x:y:z:w) \in \PP^3_k \mid F(x,y,z,w) = 0\}$$
   for the set of solutions of the equation $F=0$ in $\PP^3_k$.

   For $a \in k^\times$, consider the polynomial
   $$F_a = XY + Z^2 - aW^2 \in k[X,Y,Z,W].$$

   a. If $4 \mid q -1$ show that
      $$|V(F_a)| = |V(X^2 + Y^2 + Z^2 - aW^2)|$$

      **Hint:** First show that $X^2 + Y^2 + Z^2 - aW^2$ is obtained
	  from $F_a$ by a linear change of variables.

   b. If $a = 1$, show that $|V(F_1)| = q^2 + 2q + 1$.
   
      **Hint:** Making a linear change of variables, first show that
	  $|V(F_1)| = |V(G)|$ where $G = XY + ZW$.

      To count the points $(x:y:z:w)$ in $V(G)$, first count the points
	  with $xy = 0$ (and hence also $zw = 0$), and then the points with $xy \ne 0$.

   Let $S = \{ a^2 \mid a \in k\}$.

   c. Show that $|S| = \dfrac{q+1}{2}$.  Conclude that there are $q -
      \dfrac{q+1}{2} = \dfrac{q-1}{2}$ *non-squares* in $k$.

   
   d. If $a \in S$, show that $|V(F_a)| = |V(F_1)| = q^2 + 2q + 1$.

   e. If $a \in k$, $a \not \in S$, show for any $\alpha \in k^\times$
      that there are exactly $q+1$ pairs $(c,d) \in k \times k$ with $c^2 -
      ad^2 = \alpha$.
      
	  **Hint:** We may identify $\ell = \F_{q^2} =
	  \F_q[\sqrt{a}]$. Under this identification, the norm
	  homomorphism $N=N_{\ell/k}: \ell^\times \to k^\times$ is given
	  by the formula $$N(c + d\sqrt{a}) = (c+d\sqrt{a})(c-d\sqrt{a}) =
	  c^2 - ad^2.$$ On the other hand, by Galois Theory, we have
	  $N(x) = x \cdot x^q = x^{1+q}$ for any $x \in \ell$. Thus
	  $N(\ell^\times) = k^\times$ and $|\ker N| = q+1$.


   f. If $a \in k$, $a \not \in S$ show that $|V(F_a)| = q^2 + 1$

      **Hint:** Notice that the equation $Z^2 - aW^2 = 0$ has *no solutions*
	  $(z:w) \in \PP^1_k$, and use (e) to help count.


2. Let $f = T^{11} - 1 \in \F_4[T]$. 

   a. Show that $T^{11} -1$ has a root in $\F_{4^5}$.
   
   b. If $\alpha \in F_{4^5}$ is a primitive element -- i.e. an
	  element of order $4^5 -1$, find an element $a = \alpha^i \in
	  \F_{4^5}$ of order $11$, for a suitable $i$.
	  
   c. Show that the minimal polynomial $g$ of $a$ over $\F_4$ has
      degree 5, and that the roots of $g$ are powers of $a$. Which
      powers?
  
   d. Show that $f = g\cdot h \cdot (T-1)$ for another irreducible
      polynomial $h \in \F_4[T]$ of degree 5. The roots of $h$ are
      again powers of $a$. Which powers?
	  
   b. Show that $\langle f \rangle$ is a 
      $[11,6,d]_4$ code for which $d \ge 4$.


3. Consider the following variant of a Reed-Solomon code: let
   $\mathcal{P} \subset \F_q$ be a subset with $n = |\mathcal{P}|$
   and write $\mathcal{P} = \{a_1,\cdots,a_n\}$.

   Let $1 \le k \le n$ and write $\F_q[T]_{< k}$ for the space of
   polynomial of degree $< k$, and let
   
   $C \subset \F_q^n$ be given by
   $$C = \{ (p(a_1),\cdots,p(a_n)) \mid p \in \F_q[T]_{<k}.$$
   
   a. If $n \ge k$, prove that $C$ is a $[n,k,n-k+1]_q$-code.
   
   b. If $P = \F_q^\times$, prove that $C$ is a *cyclic code*. 

   c. If $q = p$ is *prime* and if $P = \F_p$, prove that $C$ is a *cyclic code*.
