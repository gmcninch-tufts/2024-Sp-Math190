---
title: |
 ProblemSet 4 -- Finite fields and codes
author: George McNinch
date: due 2024-03-29
---

\newcommand{\F}{\mathbb{F}}
\newcommand{\trivial}{\mathbf{1}}

\newcommand{\GL}{\operatorname{GL}}

\newcommand{\PP}{\mathbb{P}}

\newcommand{\tr}{\operatorname{tr}}


1. **[temporarily removed [2024-03-11]. After reformulation I'll repost, hopefully later today]**      

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
   polynomial of degree $\le k$, and let
   
   $C \subset \F_q^n$ be given by
   $$C = \{ (p(a_1),\cdots,p(a_n)) \mid p \in \F_q[T]_{<k}.$$
   
   a. Prove that $C$ is a $[n,k,n-k]_q$-code.
   
   b. If $P = \F_q^\times$, prove that $C$ is a *cyclic code*. 

   c. If $q = p$ is *prime* and if $P = \F_p$, prove that $C$ is a *cyclic code*.
