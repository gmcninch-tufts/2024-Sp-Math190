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
	  

      **apologies -- this is just explanatory; it isn't actually a question**

   b. Recall that the *dual* of $V$ is the vector space $V^\vee =
      \operatorname{Hom}_F(V,F)$ of *linear functionals* on $V$.
	  
	  If $b_1,\dots,b_n$ is a basis for $V$, let ${b_j}^\vee:V \to F$ be
	  defined by ${b_j}^\vee(b_i) = \delta_{i,j}$. Show that
	  ${b_1}^\vee,\dots,{b_n}^\vee$ is a basis for $V^\vee$; it is known as
	  the *dual basis* to $b_1,\dots,b_n$.

      ::: {.solution}
	  We must show that the vectors $\{ {b_i}^\vee \}$ are *linearly independent* and *span* $V^\vee$.
	  
	  First, linear independence:
	  
	  Suppose that $\alpha_1,\cdots,\alpha_n \in F$ and that
	  $$0 = \sum_{i=1}^n \alpha_i {b_i}^\vee$$
	  (note that this equality "takes place in the vector space $V^\vee$").
	  
	  We must argue that all coefficients $\alpha_j$ are zero. Well, fix $j$ and consider
	  the vector $b_j$. We apply the functional $\sum_{i=1}^n \alpha_i {b_i}$ to $b_j$:
	  $$\left(\sum_{i=1}^n \alpha_i {b_i}^\vee\right)(b_j) = 
	  \sum_{i=1}^n \alpha_i {b_i}^\vee)(b_j) = \alpha_j.$$
	  Since the *functional* $\sum_{i=1}^n \alpha_i {b_i}^\vee$ is equal to 0, 
	  we know that $\left(\sum_{i=1}^n \alpha_i {b_i}^\vee\right)(v) =0$ for every $v \in V$.
	  In particular, this holds when $v=b_j$ and we now conclude that $\alpha_j = 0$.
	  
	  This proves linear independence.
	  
	  Finally, we prove the vectors span $V^\vee$.
	  
	  Let $\phi \in V^\vee$, and for $1 \le i \le n$ write $\alpha_i = \phi(b_i)$.
	  We claim that
	  $$(\clubsuit) \quad \phi = \sum_{i=1}^n \alpha_i {b_i}^\vee.$$
	  
	  TO prove this equality of functions ("functionals") we must argue that
	  $$\phi(v) = \left(\sum_{i=1}^n \alpha_i {b_i}^\vee\right)(v)$$
	  for every $v \in V$.
	  
	  And it suffices to prove the latter equality for vectors $v$
      taken from the basis $\{b_i\}$.
	  
	  But now by construction, for each $j$ we have
	  $$\phi(b_j) = \alpha_j =  \left(\sum_{i=1}^n \alpha_i {b_i}^\vee\right)(\alpha_j)$$

      This proves $(\clubsuit)$ so that the ${b_i}^\vee$ indeed span $V^\vee$.
      :::

   c. Prove that the trace of the linear mapping $\Phi:V \to V$ is
      given by the expression $$\operatorname{tr}(\Phi) = \sum_{i=1}^n
      {b_i}^\vee(\Phi(b_i)).$$
	  
	  ::: {.solution}
	  Recall that $\operatorname{tr}(\Phi)$ is defined to be the trace of the matrix
	  $[\Phi]_{\mathcal{B}}$ where $\mathcal{B}$ is a *basis* of $V$. It is a fact that
	  this definition is *independent* of the choice of basis.

      Also recall that the trace of the $n\times n$ matrix $M = (M_{i,j})$ is given by
	  $$\operatorname{tr}(M) = \sum_{i=1}^n M_{i,i}.$$

	  We consider the basis $\mathcal{B}$ of $V$, and the dual
	  basis $\mathcal{B}^\vee$ of $V^\vee$, as above.
	  
	  
	  Recall that the *matrix $M = [M_{j,i}] = [\Phi]_{\mathcal{B}}$ of $\Phi$ in
      the basis $\mathcal{B}$* is defined by the condition
	  $$\Phi(b_i) = \sum_{j=1}^n M_{j,i} b_j$$
	  (for $1 \le i \le n$).
	  
	  Thus, $${b_i}^\vee(\Phi(b_i)) = {b_i}^\vee\left(\sum_{j=1}^n
	  M_{j,i} b_j\right) = M_{i,i}$$.
	  
	  Summing over $i$ we find that $$\sum_{i=1}^n
	  {b_i}^\vee(\Phi(b_i)) = \sum_{i=1}^n M_{i,i} =
	  \operatorname{tr}(M) = \operatorname{tr}([\Phi]_{\mathcal{B}}) =
	  \operatorname{tr}(\Phi),$$ as required.
	  
	  :::
	  
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
	  
	  ::: {.solution}
	  Recall that the vector space $F[\Omega]$ has a basis consisting
	  of the vectors $\delta_\omega$ for $\omega \in \Omega$.
	  
	  We write $\delta_\omega^\vee \in F[\Omega]^\vee$ for vectors of
	  the *dual basis*. The linear functional
	  $$\delta_\omega^\vee : F[\Omega] \to F$$
	  is defined by
	  $$\delta_\omega^\vee(\delta_\tau) = \left \{ \begin{matrix}
	  1 & \tau = \omega \\
	  0 & \tau \ne \omega
	  \end{matrix} \right .$$
	  
	  Fix $g \in G$.
	  According to our earlier work, we know that
	  
	  $$\operatorname{tr}(\rho(g)) = \sum_{\omega \in \Omega} \delta_\omega^\vee ( \rho(g) \delta_\omega )
	  = \sum_{\omega \in \Omega} \delta_\omega^\vee(\delta_{g \omega}).$$
	  
	  Now, $\delta_\omega^\vee (\delta_g\omega)$ is 1 when $\omega =
	  g\omega$ and is 0 otherwise.  This shows that
	  $\operatorname{tr}(\rho(g))$ is given by the number of $\omega
	  \in \Omega$ for which $g\omega = \omega$, as required.
	  
	  
	  :::


2. Let $V$ be a representation of $G$, suppose that $W_1,W_2$ are invariant subspaces,
   and that $V$ is the internal direct sum
   $$V = W_1 \oplus W_2.$$
   
   Show that the character $\chi_V$ of $V$ satisfies
   $$\chi_V = \chi_{W_1} + \chi_{W_2}$$
   i.e. for $g \in G$ that
   $$\chi_V(g) = \chi_{W_1}(g) + \chi_{W_2}(g).$$

   ::: {.solution} 
   
   Let $\mathcal{B} = \{b_1,\cdots,b_n\}$ be a basis
   of $W_1$ and let $\mathcal{C} = \{c_1, \cdots, c_m\}$ be a basis of
   $W_2$.  
   
   Since $V = W_1 \oplus W_2$, we know that $\mathcal{B} \cup
   \mathcal{C} = \{b_1,\cdots,b_n,c_1,\cdots,c_m\}$ is a basis for
   
   We consider the dual basis $b_1^\vee, b_2^\vee, \cdots,
   b_n^\vee,c_1^\vee,\cdots,c_m^\vee$ of the dual vector space
   $V^\vee$.
   
   (Be careful! $W_1^\vee$ is not a subspace of $V^\vee$! Instead, it is a *quotient* of $V^\vee$...)
   
   Observe that the functional $b_i^\vee \in V^\vee$  is determined by the rules
   $$b_i^\vee(b_j) = \delta_{i,j} \quad \text{and}\quad 
   b_i^\vee(c_j) = 0.$$
   
   Similarly, the functional $c_j^\vee \in V^\vee$ is determined by the rules
   $$c_j^\vee(b_i) = 0 \quad \text{and}\quad 
   c_j^\vee(c_i) = \delta_{j,i}.$$
   
   Observe that we can restrict $b_i^\vee$ to $W_1$, and these
   restrictions $\{b_i^\vee\vert_{W_1}\}$ give the basis of $W_1^\vee$
   dual to the basis $\{b_i\}$ of $W_1$.
   
   Similarly the restrictions $\{c_j^\vee \vert_{W_2}\}$ give the basis of $W_2^\vee$
   dual to the basis $\{c_j\}$ of $W_2$.
   
   Now using the results of the previous problem applied to the mapping
   $g:W_1 \to W_1$, $g:W_2 \to W_2$ and $g:V \to V$, we see that
   
   $$\chi_{W_1}(g) = \operatorname{tr}(g:W_1 \to W_1) = \sum_{i=1}^n b_i^\vee(g\cdot b_i)$$ 
   $$\chi_{W_2}(g) = \operatorname{tr}(g:W_2 \to W_2) = \sum_{j=1}^m c_j^\vee(g\cdot c_j)$$
   $$\chi_V(g) = \operatorname{tr}(g:V \to V) = \sum_{i=1}^n b_i^\vee(g\cdot b_i) + \sum_{j=1}^m c_j^\vee(g \cdot c_j)$$
   
   Thus indeed $\chi_V(g) = \chi_{W_1}(g) + \chi_{W_2}(g)$ for each $g$, as required.
   
   :::

3. Let $G = A_4$ be the alternating group of order $\dfrac{4!}{2} = 12$.

   We are going to find the *character table* of this group.
   
   a. Confirm that the following list gives a representative for each
      of the conjugacy classes of $G$:
   
      $$1, (12)(34), (123), (124)$$
   
      (Note that $(123)$ and $(124)$ are conjugate in $S_4$, but *not*
      in $A_4$).
   
      What are the *sizes* of the corresponding conjugacy classes?
   
      ::: {.solution}
	  
	  Note that the centralizer $C_{A_4}( (12)(34) )$ contains the
      group $\langle (12), (34) \rangle$, which has 4 elements. On the
      other hand, $(12)(34)$ is not central in $A_4$ (e.g. $(23)$
      doesn't commute with $(12)(34)$). Since $[A_4:\langle (12)(34)
      \rangle] = 3$ (a prime number), conclude that $C_{A_4}( (12)(34)
      ) = \langle (12), (13) \rangle$. We conclude that $(12)(34)$ has
      exactly $12/4 = 3$ conjugates in $A_4$.
	  
	  Next note that the centralizer $C_{A_4}( (123) )$ contains the
      subgroup $\langle (123) \rangle$ of order $3$.
	  On the other hand, suppose that $\sigma \in C_{A_4}((123))$.
	  Then $\sigma (123) \sigma^{-1} = (123)$.
	  But we know $\sigma(123)\sigma^{-1} = (\sigma(1) \sigma(2) \sigma(3))$,
	  and now the condition $$(123) = (\sigma(1) \sigma(2) \sigma(3))$$
	  implies that $\sigma \in \langle (123) \rangle$. Thus 
	  $C_{A_4}((123)) = \langle (123) \rangle$ has order 3,
	  and the conjugacy class of $(123)$ has $12/3 = 4$ elements.
	  
	  Similarly, the centralizer of $(124)$ has order 3, and its conjugacy
	  class has $4$ elements.
	  
	  Finally, we should argue that $(123)$ and $(124)$ are not in fact conjugate in $A_4$.
	  Of course, they are conjugate in $S_4$ by the transposition $(34)$.
	  Arguing as above, the centralizer of $(123)$ in $S_4$ is still just equal to $\langle (123) \rangle$.
	  So any element $\sigma$ of $S_4$ for which $\sigma(123)\sigma^{-1} = (124)$ has the form
	  $(123)^i(12)$ for some $i$, and none of those elements is in $A_4$.
	  
	  We have
	  
	  | class rep $g$ | $C_{A_4}(g)$ | size of conjugacy class of $g$ |
	  |---------------|----------|--------------------------------|
	  | 1             |       12 |                              1 |
	  | $(12)(34)$    |        4 |                              3 |
	  | $(123)$       |        3 |                              4 |
	  | $(124)$       |        3 |                              4 |
	  |               |          |                                |
	  
	  Since
	  $$1 + 3 + 4 + 4 = 12$$
	  we have found all of the conjugacy classes in $A_4$.
	  
	  :::
   
   b. Let $K = \langle (12)(34), (14)(23)\rangle$. Show that $K$ is a
      normal subgroup of index $3$, so that $G/K \simeq
      \mathbb{Z}/3\mathbb{Z}$.
   
      ::: {.solution}
	  One checks directly that
	  $$K = \{ 1, (12)(34), (14)(23), (13)(24) \}$$
	  so that $K$ has order 4 and index 3 as asserted.
	  
	  Notice that - as a set - $K$ is the union of $\{1\}$ and the
	  3-element conjugacy class of $(12)(34)$. This makes clear that
	  $\sigma \tau \sigma^{-1} \in K$ for all $\sigma \in A_4$ and
	  $\tau \in K$, so that $K$ is a *normal subgroup*.
	  
	  Since $|G/K|=3$, of course $G/K \simeq \mathbb{Z}/3\mathbb{Z}$
	  ("groups of prime order are cyclic").
	  
	  :::
   
      Let $\zeta_3$ be a primitive $3$rd root of unity in $F^\times$ and for
	  $i=0,1,2$ let
	  $\rho_i:G \to F^\times$ 
	  be the unique homomorphism with the following properties:
	  
	  i. $\rho_i\left( (123) \right) = \zeta^i$
	  ii. $K \subseteq \ker \rho_i$.
   
      Explain why $\rho_0 = \trivial,\rho_1,\rho_2$ determine distinct irreducible
      (1-dimensional) representations of $G$.
   
      ::: {.solution}
	  
	  In fact, let $(\rho_1,V_1)$ and $(\rho_2,V_2)$ be
	  representations of $G$ for which $V_1$ and $V_2$ are 1
	  dimensional. In this case, $\operatorname{GL}(V_i) =
	  \operatorname{GL}_1(F) = F^\times$ is a commutative group.
	  
	  Since $V_1$ and $V_2$ have dimension 1, any isomorphism
	  $\Phi:V_1 \to V_2$ is just given by multiplication with a scalar
	  $\alpha \in F^\times$. So if the representations are
	  isomorphic, we
	  have for each $g\in G$ and $v \in V_1$:
	  $$\rho_2(g)\Phi(v) = \Phi(\rho_1(g)v) \implies
	  \alpha \rho_2(g)v = \alpha \rho_1(g)v$$
	  
	  Since $\alpha \ne 0$ and since this holds for all $v \in V_1$, we conclude
	  that $\rho_1(g) = \rho_2(g)$ for each $g \in G$.
	  
	  In other words, two 1 dimensional representations are isomorphic
      iff they are *equal* (as functions $G \to F^\times)$.
	  
	  Now, the three homomorphisms $\rho_i$ $(i=0,1,2)$ are clearly
	  distinct, because each maps the element $(123)$ to a different
	  element of $F^\times$. Thus they constitute distinct irreducible
	  1 dimensional representations of $G$.
	  
	  :::
   
   c. Let $\Omega = \{1,2,3,4\}$ on which $G$ acts by the embedding
      $A_4 \subset S_4$.
	  
	  Compute the character $\chi_\Omega$ of the representation
	  $F[\Omega]$.  (This means: compute and list the values of
	  $\chi_\Omega$ at the conjugacy class representatives given in a.)

      (*Use the result of problem 1 above*).

      ::: {.solution} 
	  
	  According to problem 1, the trace of the action of an element
      $\sigma \in A_4$ on the permutation representation $F[\Omega]$
      is equal to the number of fixed points of $\sigma$ on
      $\Omega$. 
	  
	  Let's write $\chi_\Omega$ for the character of the representation $F[\Omega]$.
	  
	  Thus, the trace is given by
	  
	  | $\sigma$   | $\chi_\Omega$ |
	  |------------|---------------|
	  | $1$        |             4 |
	  | $(12)(34)$ |             0 |
	  | $(123)$    |             1 |
	  | $(124)$    |             1 |

      :::

   d. The span of the vector $\delta_1 + \delta_2 + \delta_3 +
	  \delta_4 \in F[\Omega]$ is an invariant subspace isomorphic to
	  the irreducible representation $\rho_0$ (the so-called *trivial
	  representation*).
	  
	  Thus $F[\Omega] = \rho_0 \oplus W$ for a $3$-dimensional invariant
	  subspace. Explain why problem 2 shows that the character of $W$ is given by
	  $\chi_W = \chi_\Omega - \trivial$.

      ::: {.solution}
	  
	  Problem 2 shows that $$\chi_{\Omega}= \trivial  + \chi_W.$$

      This is an identity of *$F$-valued functions on $G$*, and it immediately implies that
	  $\chi_W = \chi_\Omega - \trivial$ as required.

      :::

	  Now prove that $\langle \chi_W,  \chi_W \rangle = 1$ and conclude
	  that $W$ is an irreducible representation.
	  
	  ::: {.solution}
	  Write $\sigma_1,\sigma_2,\sigma_3,\sigma_4$ for class representatives
	  $1,(12)(34), (123), (124)$. And write $c_i$ for the order of the *centralizer* of $\sigma_i$.
	  
	  Notice that the *values* of $\chi_W = \chi_\Omega - \trivial$ are given in the following table:
	  
	  | $\sigma_i$            | $c_i$ | $\chi_\Omega(\sigma_i)$ | $\chi_W(\sigma_i)$ |
	  |-----------------------|-------|-------------------------|--------------------|
	  | $1 = \sigma_1$        |    12 |                       4 |                  3 |
	  | $(12)(34) = \sigma_2$ |     4 |                       0 |                 -1 |
	  | $(123) = \sigma_3$    |     3 |                       1 |                  0 |
	  | $(124) = \sigma_4$    |     3 |                       1 |                  0 |
	  
	  We calculate
	  
	  \begin{align*}
	  \langle \chi_W,\chi_W \rangle =& \sum_{i=1}^4 \dfrac{1}{c_i}
	  \chi_W(\sigma_i) \overline{\chi_W(\sigma_i)} = \dfrac{1}{12} 3
	  \cdot 3 + \dfrac{1}{4} (-1) \cdot (-1) + \dfrac{1}{3} 0 \cdot
	  0 + \dfrac{1}{3} 0 \cdot 0 \\
	  =& \dfrac{9}{12} + \dfrac{1}{4} = \dfrac{9 + 3}{12} = 1
	  \end{align*}
	  
	  It follows from the results described in lecture that a
	  representation $V$ is irreducible if and only if $\langle
	  \chi_V,\chi_V \rangle = 1$, so we conclude that $W$ is an
	  irreducible representation.
	  
	  :::
	  
   e. Explain why $$\trivial,\rho_1,\rho_2,W$$ is a complete set of
      non-isomorphic irreducible representations of $G$.
	   
	  ::: {.solution}
	  
	  We know that $G$ has 4 conjugacy classes, so up to isomorphism
      there are exactly 4 irreducible representations of $G$.
	  
	  We've already pointed out that $1,\rho_1,\rho_2$ are
      non-isomorphic irreducible representations each of
      dimension 1. Now, we've seen that $W$ is an irreducible
      representation; since $W$ is 2 dimensional, it is not isomorphic
      to any of the representations $1,\rho_1,\rho_2$.
	  
	  Thus we have found 4 non-isomorphic irreducible representations,
	  and we can conclude that any irreducible representation is
	  isomorphic to once of these 4.
	  
	  :::
	   
   f. Display the *character table* of $G = A_4$.
	  
	  ::: {.solution}
	  
	  $$\begin{array}{l|llll}
	  & 1 & (12)(34) & (123) & (124) \\
	  & 12 & 4 & 3 & 3 \\
	  \hline
	  \trivial& 1 & 1 & 1 & 1 \\
	  \rho_1 & 1 & 1 & \zeta & \zeta^2 \\
	  \rho_2 & 1 & 1 & \zeta^2 & \zeta \\
	  \chi_W & 3 & -1 & 0 & 0 
	  \end{array}$$
	  
	  :::
