---
title: |
 ProblemSet 3 -- Solutions
author: George McNinch
date: 2024-02-16
---

\newcommand{\trivial}{\mathbf{1}}

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

      ::: {.solution}
	  
	  We prove the following statement: $(*)$ if $W \subset V$ is a subspace, then $W$
      is invariant for the *original* action of $G$ if and only if it
      is invariant for the $\star$ action of $G$.
	  
	  First note that $(*)$ immediately implies the assertion of (a).
	  
	  To test invariance, let $w \in W$ and let $g \in G$. Since $W$
	  is a linear subspace and since $\phi(g)$ is a non-zero scalar,
	  it is immediate that $$gw \in W \iff g \star w = \phi(g) gw \in
	  W$$ Since this holds for all $w$ and all $g$, $(*)$ follows.
	  
	  :::

   b. Prove that if $\chi$ denotes the *character* of $V$, then the
      character of $\phi \otimes V$ is given by $\phi \cdot \chi$; in
      other words, the trace of the action of $g \in G$ on $\phi
      \otimes V$ is given by $$\chi_{\phi \otimes V}(g) =
      \operatorname{tr}( v\mapsto g \star v) = \phi(g) \chi(g).$$

      ::: {.solution}
	  We just need to compute the trace of the linear mapping $V \to V$ given by
	  $v \mapsto g \star v$.
	  
	  If the action of $g$ on $V$ is given by the linear mapping
	  $\rho(g)$, 
	  then $$\chi_V(g) = \operatorname{tr}(\rho(g)).$$
	  
	  Now, the $\star$-action of $g$ is given by the linear mapping
	  $v \mapsto g \star v = \phi(g) \rho(g)v$. 
	  
	  So $\chi_{\phi \otimes V}(g) = \operatorname{tr}(\phi(g)\rho(g))$.
	  For any scalar $s \in k$, trace of the linear mapping  $s \rho(g)$ is
	  given by 
	  $$\operatorname{tr}(s \rho(g)) = s \operatorname{tr}(\rho(g)) = s \chi_V(g)$$
	  ("linearity of the trace").

	  
	  Thus $$\chi_{\phi\otimes V}(g) =
	  \operatorname{tr}(\phi(g)\rho(g)) = \phi(g) \chi_V(g).$$
	  
	  :::

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

      ::: {.solution}
	  
	  We first consider the representation $V_2$ of $S_3$. Write
      $\chi_2$ of the character of this irreducible representation.
      The character of $\operatorname{sgn}\chi_2$ is then given by 
	  the product $\operatorname{sgn}\chi_2$.

	  $$\begin{array}{l|lll}
	  g & 1 & (12) & (123) \\
	  \hline
	  \psi_2 & 2 & 0 & -1 \\
	  \operatorname{sgn} & 1 & -1 & 1 \\
	  \operatorname{sgn} \psi_2 & 2 & 0 & -1
	  \end{array}$$

      Inspecting the table we see that $\psi_2 =
	  \operatorname{sgn}\psi_2$. This shows that $V_2$ is isomorphic
	  to $\operatorname{sgn} \otimes V_2$ as representations for
	  $S_3$.


	  :::

2. Let $V$ be a representation of $G$.

   For an irreducible representation $L$, 
   consider the set $$\mathcal{S}=\{ S \subseteq V \mid S \simeq L\}$$ of all invariant
   subspaces that are isomorphic to $L$ as $G$-representations.
	  
   Put $$V_{(L)} = \sum_{S \in \mathcal{S}} S.$$

   a. Prove that $V_{(L)}$ is an invariant subspace, and show that 
      $V_{(L)}$ is isomorphic to a direct sum
	  $$V_{(L)} \simeq L \oplus \cdots \oplus L$$
	  as $G$-representations.
	  
	  ::: {.solution}
	  
	  First of all, we note more generally that if $I$ is an index set
      and if $W_i \subset V$ is a $G$-invariant subspace for each $i
      \in I$, then $\displaystyle \sum_{i \in I} W_i$ is again an
      invariant subspace. (The proof is straightforward from the
      definitions). This confirms that $V_{(L)}$ is an invariant
      subspace.
	  
	  To prove the remaining assertion, we proceed as follows.
	  
	  Let us say that a $G$-representation $W$ is $L$-isotypic if
	  every irreducible invariant subspace of $W$ is isomorphic to
	  $L$.
	  
	  It is immediate that $V_{(L)}$ is $L$-isotypic. We are going to
      prove:
	  
	  If $W$ is an *$L$-isotypic* $G$-representation, then $W$ is isomorphic
	  to a direct sum $$W \simeq L \oplus \cdots \oplus L.$$
	  
	  
	  Proceed by induction on $\dim
	  W$.  If $\dim W = 0$ then $W = \{0\}$ and the
	  result is immediate ($W$ is the direct sum of zero copies of $L$).
	  
	  Now observe that if $\dim W > 0$ then $W$ contains an
      invariant subspace isomorphic to $L$, so that $\dim W \ge
      \dim L$.
	  
	  Now if $\dim W = \dim L$, then $W \simeq L$ and the
      result holds in this case.
	  
	  Finally, suppose that $\dim W > \dim L$ and let $S \subset
      W$ be an invariant subspace with $S \simeq L$.
	  
	  By complete reducibility we may find an invariant subspace $U
	  \subset W$ such that $W$ is the internal direct sum $$W = S
	  \oplus U.$$
	  
      Since $\dim W = \dim S + \dim U$, we have $\dim U < \dim
	  W$. Moreover, $U$ is also $L$-isotypic.  So by induction on
	  dimension, we know that $$U \simeq L \oplus \cdots \oplus L,$$
	  (say, a direct sum of $d$ copies of $L$).
	  
	  But then
	  $$W = S \oplus U \simeq L \oplus ( L \oplus
	  \cdots \oplus L) = L \oplus L \oplus \cdots \oplus L$$
	  is isomorphic to a direct sum of $d+1$ copies of $L$.

	  
	  :::
	  
   b. Prove that the *quotient representation* $V/V_{(L)}$ has no
	  invariant subspaces isomorphic to $L$ as $G$-representations.

      ::: {.solution}
	  
	  Write $\pi:V \to V/V_{(L)}$ for the quotient map $v \mapsto v +
      V_{(L)}$; thus $\pi$ is a surjective homomorphism of
      $G$-representations.

	  Suppose by way of contradiction that $S \subset V/V_{(L)}$ is an
	  invariant subspace isomorphic to $L$, and let $S' \subset V$
	  be the inverse image under $\pi$ of $S$:
	  $$S' = \pi^{-1}(S).$$
	  
	  Then $S'$ is an invariant subspace of $V$ containing $V_{(L)}$, and
	  the restriction of $\pi$ to $S'$ defines a surjective mapping
	  $$\pi_{\mid S'}:S' \to S \simeq L.$$
	  
	  If $K$ denotes the kernel of $\pi_{\mid S'}$, then complete reducibility
	  implies that there is an invariant subspace $M$ of $V$ such that
	  $S'$ is the internal direct sum
	  $$(*) \quad S' = K \oplus M.$$
	  
	  In particular, the invariant subspace $M$ is isomorphic to $L$
      as $G$-representations.  But then by definition we have $M
      \subset V_{(L)}$ contradicting the condition $M \cap K =
      \{0\}$ which must hold by $(*)$. This contradiction proves the result.
	  
	  :::

   c. If $L_1,L_2,\cdots,L_m$ is a complete set of non-isomorphic
      irreducible representations for $G$, prove that $V$ is the
      internal direct sum $$V = \bigoplus_{i=1}^m V_{(L_i)}.$$

      ::: {.solution}
	  
	  We first note that $V$ is equal to the sum $$\sum_{i=1}^m
	  V_{(L_i)};$$ indeed, if $W = \sum_{i=1}^m V_{(L_i)}$, then by
	  complete reducibility $V = W \oplus W'$ for an invariant
	  subspace $W'$. But if $W' \ne 0$ then $W'$ contains an
	  irreducible invariant subspace, so that $W' \cap V_{(L_i)} \ne
	  0$ for some $i$ and hence $W' \cap W \ne 0$; this is impossible
	  since the internal sum $V = W \oplus W'$ is direct. This argument shows
	  that $W' = 0$ and hence that $V = W$.
	  
	  Finally, we show that
	  the sum 
	  $$\sum_{i=1}^m V_{(L_i)}$$
	  is *direct*, i.e. that for each $j$ we have
	  $$(\clubsuit) \quad V_{(L_j)} \cap \left ( \sum_{i\ne j} V_{(L_i)} \right ) = 0.$$
	  
	  Wrote $I$ for the intersection appearing in $(\clubsuit)$; thus,
	  $I$ is an invariant subspace of $V$.  If $I$ is non-zero, it has
	  an irreducible invariant subspace $S$.  Since $I \subset V_{(L_j)}$
	  and since $V_{(L_j)}$ is $L_j$-isotypic, we conclude that
	  $$S \simeq L_j.$$
	  
	  But then $S \cap V_{(L_i)} = 0$ for every $i  \ne j$ so that
	  $$S \cap \left( \sum_{i \ne j} V_{(L_i)} \right ) = 0.$$
	  Since $I \subset \displaystyle \left( \sum_{i \ne j} V_{(L_i)} \right )$, 
	  we conclude that $I = 0$.
	  
	  
	  This completes the proof that $V$ is the direct sum of the $V_{(L_i)}$, as required.
	  :::

3. Let $\chi$ be the character of a representation $V$ of $G$. For $g\in G$ prove
   that $\overline{\chi(g)} = \chi(g^{-1})$.
   
   Is it true for any arbitrary class function $f:G \to \mathbb{C}$
   that $\overline{f(g)} = f(g^{-1})$ for every $g$? (Give a proof or
   a counterexample...)

   ::: {.solution}
   
   Let $\rho(g):V \to V$ denote the linear automorphism of $V$
   determined by the action of $g \in G$.
   Then $\chi(g) = \operatorname{tr}(\rho(g))$.
   
   Now, since $\rho(g)$ has *finite order*, say $n$, its minimal polynomial divides
   $T^n - 1 \in \mathbb{C}[T]$, and hence every eigenvalue of $\rho(g)$
   is an $n$-th root of unity.
   
   For any $n$-th root of unity $\zeta$, note that $\overline{\zeta} = \zeta^{-1}$.
   
   Write $\alpha_1,\cdots,\alpha_d$ for the eigenvalues of $\rho(g)$,
   with multiplicity (so that $d = \dim V$).
   Notice that $\rho(g^{-1})$ has eigenvalues $\alpha_1^{-1},\cdots,\alpha_d^{-1}.$
   
   Thus
   
   $$\chi(g) = \sum_{i=1}^d \alpha_i\quad
   \text{and} \quad
   \chi(g^{-1}) = \sum_{i=1}^d \alpha_i^{-1}.
   $$
   
   Now, we see that
   $$\overline{\chi(g)} = \sum_{i=1}^d \overline{\alpha_i}
   = \sum_{i=1}^d \alpha_i^{-1} = \chi(g^{-1})$$
   as required.
   
   
   It is *not* true that $\overline{f(g)} = f(g^{-1})$ for every class
   function $f$ and every $g \in G$.  Indeed, let $f = \alpha\delta_1$ be
   a multiple of the characterisitic function $\delta_1$ of the trivial conjugacy class
   $\{1\}$.
   
   Then $\overline{f(1)} = \overline{\alpha}$ while $f(1^{-1}) = f(1)
   = \alpha$, so that if $\alpha \not \in \mathbb{R}$, we have
   $\overline{f(1)} \ne f(1^{-1})$.
   
   :::

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
   
      ::: {.solution}
	  
	  For $w,w' \in V$ notice that
	  \begin{align*}
	  \Psi_v(w + w') &= \psi(\langle w + w',v \rangle) & \\
	  &= \psi(\langle w,v \rangle + \langle w',v \rangle) & \text{since the form is bilinear} \\
	  &= \psi(\langle w,v \rangle) \cdot \psi(\langle w',v \rangle) & \text{since $\psi$ is a group homom} \\
	  &= \Psi_v(w)\cdot \Psi_v(w') & \text{by definition.}
	  \end{align*}
	  This confirms that $\Psi_v$ is a group homomorphism.
	  
	  :::
   
   b. Show that the assignment $v \mapsto \Psi_v$ is injective
      (one-to-one).  
	  
	  (This assignment is a function $V \to
      \operatorname{Hom}(V,\mathbb{C}^\times)$. In fact, it is a group
      homomorphism. Do you see why? How do you make
      $\operatorname{Hom}(V,\mathbb{C}^\times)$ into a group?)
   
      ::: {.solution}
	  
	  One checks that $\operatorname{Hom}(V,\mathbb{C}^\times)$ is a
      multiplicitive group (this is the *dual group* $\widehat V$ of $V$, mentioned in the
      lectures); the product of $\phi,\psi \in \widehat V$ is given by the rule
	  $g \mapsto \phi(g) \cdot \psi(g)$.
	  
	  We note that the assignment $v \mapsto \Psi_v$ is a group homomorphism. For $v,v' \in V$ we must
	  argue that
	  $\Psi_{v+v'} = \Psi_v \Psi_{v'}.$
	  
	  For $w \in W$ we have
	  \begin{align*}
	  \Psi_{v+v'}(w) =& \psi( \langle v + v',w \rangle ) & \\
	  =& \psi(\langle v,w \rangle + \langle v',w\rangle) & \text{since the form is bilinear}\\
	  =& \psi(\langle v,w \rangle )\cdot \psi(\langle v',w\rangle) & \text{since $\psi$ is a group homom}\\
	  =& \Psi_v(w)\cdot \Psi_{v'}(w) & \text{by defn} \\	  
	  \end{align*}
	  
	  Now to show that $v \mapsto \Psi_v$ is injective, it is enough to argue that
	  the kernel of this mapping is $\{0\}$.
	  
	  So, suppose that $\Psi_v$ is the identity element of
	  $\widehat{V}$.  In other words, suppose that $\Psi_v(w) = 1$ for
	  every $w \in V$.  This shows that $\psi(\langle v,w \rangle) =
	  1$ for every $w \in V$.  Since $\psi$ is a non-trivial
	  homomorphism $\mathbb{F}_p \to \mathbb{C}^\times$, we know that
	  $\ker \psi = \{0\}$ (remember that $k$ has prime order...) and
	  we conclude that $\langle v,w \rangle = 0$ for every $w \in W$.

      (Note that $\langle v,w \rangle = 0$ is an equality in $k =
	  \mathbb{F}_p = \mathbb{Z}/p\mathbb{Z}$).
	  
	  Since the form $\langle \cdot,\cdot \rangle$ is non-degenerate, so
	  we may now conclude that $v = 0$.
	  
	  This proves that the kernel of the mapping $v \mapsto \Psi_v$ is
      $\{0\}$, hence the mapping is injective.
	  
	  :::
   
   b. Show that any group homomorphism $\Psi:V \to \mathbb{C}^\times$
      has the form $\Psi = \Psi_v$ for some $v \in V$.
 
      Conclude that there are exactly $|V| = q^n$ group homomorphisms
	  $V \to \mathbb{C}^\times$.

      ::: {.solution}
	  
	  We observed in class that for any finite abelian group $A$, there is an isomorphism
	  $A \simeq \widehat{A}$.
	  
	  In particular, $|A| = |\widehat{A}|$.
	  
	  Applying this in the case $A = V$, we conclude that
	  $$|V|  = |\widehat{V}| = |\operatorname{Hom}(V,\mathbb{C}^\times)|.$$
	  
	  Now, we have define an *injective* mapping $$v \mapsto \Psi_v:V \to \widehat(V).$$
	  Since the domain and co-domain of this mapping are finite of the same order,
	  the mapping $v \mapsto \Psi_v$ is also *surjective*.
	  
	  Thus the *pigeonhole principal* shows that every homomorphism
	  $\Psi:V \to \mathbb{C}^\times$ has the form $\Psi = \Psi_v$ for
	  some $v \in V$, as required.
	  
	  :::
