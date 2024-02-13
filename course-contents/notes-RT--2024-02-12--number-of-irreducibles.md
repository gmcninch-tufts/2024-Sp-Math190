---
title: The number of irreducible representations of a finite group
date: 2024-02-12
---

\newcommand{\trivial}{\mathbf{1}}

# The number of irreducible representations of $G$


Recall that $G$ denotes a finite group. 

Recall that the space $\mathbb{C}[G]$ of *all $\mathbb{C}$-valued
functions on $G$* is the vector space underlying the *regular
representation* of $G$.

We introduced the *convolution multiplication* $\star$ on
$\mathbb{C}[G]$ by the rule $$(f_1 \star f_2)(x) = \sum_{yz = x}
f_1(y)f_2(z)$$ for $f_1,f_2 \in \mathbb{C}[G]$.

This product makes $\mathbb{C}[G]$ into a (in-general non-commutative)
ring. We mostly will avoid invoking general results about rings, and
so we define the *center* $\mathbb{C}[G]$ to be the subspace $$Z = \{
f\in \mathbb{C}[G] \mid f \star h = h \star f \quad \forall h \in
\mathbb{C}[G]\}.$$

**Proposition:**
:   The subspace $Z$ coincides with the subspace of $\mathbb{C}[G]$
    consisting of those functions which are *constant* on the
    conjugacy classes of $G$.
	
	In particular, $\dim Z = \# \{\text{conjugacy classes of $G$}\}$.

**Proof:**
:   Since $\mathbb{C}[G]$ has a vector space basis consisting of the dirac functions
    $\delta_g$ for $g \in G$, one immediately sees that $f \in Z$ if and only if
	$$f \star \delta_g = \delta_g \star f$$
	for every $g \in G$.
	
	Note that $\delta_g \star \delta_{g^{-1}} = \delta_1$ is a
    *multiplicative identity for the operation $\star$, so that for any $g$,
    $\delta_{g^{-1}} = (\delta_g)^{-1}$ is a multiplicative inverse.
	
	Thus 
	$$f \star \delta_g = \delta_g \star f \iff f = \delta_g \star f \star \delta_{g^{-1}}.$$
	
	
	Now, fix $f \in \mathbb{C}[G]$ and $g \in G$, and let's compute the value
	of $\delta_g \star f \star \delta_{g^{-1}}$ at an element $h \in G$. We  have
	
	$$(\delta_g \star f \star \delta_{g^{-1}})(h) = \sum_{xyz = h}
    \delta_g(x) f(y) \delta_{g^{-1}}(z) = f(g^{-1}hg)$$

    We now conclude that $f \in Z$ if and only if $$f(h) = f(g^{-1}hg)
    \quad \forall g,h \in G$$ i.e. if and only if $f$ is constant on
    the conjugacy classes of $G$.
	
	Since the characteristic functions $\psi_C$ of the conjugacy
	classes $C$ of $G$ form a basis for the space of *class
	functions*, it follows that $\dim Z$ is the number of conjugacy
	classes $C$ of $G$; this completes the proof of the Proposition.

We write $L_1,L_2, \cdots,L_r$ for a complete set of irreducible
representations of $G$ on $\mathbb{C}$-vector spaces, no two of which
are isomorphic.

**Lemma:**
:   Let $z$ be an element of the center $Z \subseteq \mathbb{C}[G]$.
    For each $i$ there is a scalar $\lambda_i \in \mathbb{C}$ such that
	for every $v \in L_i$ we have
	$$z \star v = \lambda_i v.$$

**Proof of Lemma:**
:   Note that for each $i$ the mapping "convolution with $z$" -- i.e. the mapping
    $$\phi:L_i \to L_i \quad \text{given by $\phi(v) = z \star v$}$$
	-- is a homomorphism of $G$-representations.

    Indeed, note for $g \in G$ that -- since $z \in Z$ -- we have
	$$\phi(gv) = \phi(\delta_g \star v)  = z \star \delta_g \star v = 
	\delta_g \star z \star v = \delta_g \star \phi(v) = g\phi(v).$$
	
	Now, Schur's Lemma tells us -- since $L_i$ is *irreducible* --
	that the endomorphisms of $L_i$ as a $G$-representation identify
	with the scalar operators $\mathbb{C} = \mathbb{C} \cdot
	\operatorname{id}_{W_i}.$
	
	Thus, there is $\lambda_i \in \mathbb{C}$ such that $$\phi =
	\lambda_i \operatorname{id}_{W_i};$$ in other words, $z \star w =
	\phi(w) = \lambda_i w$ for $w \in W_i$, as required.

**Theorem:**
:   The number $r$ of irreducible representations is equal to $\dim Z$.
    In particular, $r$ is equal to the number of conjugacy classes in $G$.

**Proof:**
:   Write $W_i = \mathbb{C}[G]_{(L_i)}$ for the $L_i$-isotypic
    component of the regular representation $\mathbb{C}[G]$.
	
	Thus for each $i$, $W_i$ is a direct sum of copies of the
	irreducible representation $L_i$, and the quotient representation
	$\mathbb{C}[G]/W_i$ contains no irreducible invariant subspace
	isomorphic to $L_i$.
	
	You proved for homework that
	
	$$\mathbb{C}[G] = W_1 \oplus W_2 \oplus \cdots \oplus  W_r.$$

    In view of this decomposition of $\mathbb{C}[G]$, we may write
	$$\delta_1 = f_1 + f_2 + \cdots + f_r$$
	for uniquely determined elements $f_i \in W_i$.

    Let $z \in Z$. According to the Lemma, there are scalars
	$\lambda_i \in \mathbb{C}$ for which $z \star v_i = \lambda_i v_i$
	for $v_i \in L_i$.

    Since $W_i$ is $L_i$-isotypic, it follows at once that
	$$z \star w_i = \lambda_i w_i$$
	for each $w_i \in W_i$.	
	In particular,
	$$z \star f_i = \lambda_i f_i \quad \text{for $i=1,2,\cdots,r$}.$$

    Now we notice that
	\begin{align*}
	z & = z \star \delta_1  = z \star (f_1 + f_2 + \cdots + f_r) \\
	& = z \star f_1 + z \star f_2 + \cdots + z \star f_r \\
	& = \lambda_1 f_1 + \lambda_2 f_2 + \cdots + \lambda_r f_r	
	\end{align*}

    This proves that $Z$ is contained in the *span* of the vectors $f_1,f_2,\cdots,f_r$; i.e.
	$$Z \subseteq \sum_{i=1}^r \mathbb{C}f_i.$$
	
	We conclude that $$\dim Z \le \dim \sum_{i=1}^r \mathbb{C}f_i  \le r.$$

    But on the other hand, we have proved that the *characters*
	$\chi_i = \chi_{L_i}$ of the irreducible representations form an
	orthonormal -- hence linearly independent -- set of *class functions*
	on $G$.
	
	According to the preceding Proposition, $\chi_i \in Z$ for each $i$.
	This proves that
	$$r = \dim \sum_{i=1}^r \mathbb{C} \chi_i \le \dim Z.$$
	
	We may now conclude that $\dim Z = r$ as required.

**Remarks:**
:   With notations as in the proof of the Theorem, note that

    - we have an equality $Z = \sum_{i=r}^r \mathbb{C}f_i$ of
      subspaces of $\mathbb{C}[G]$.

    - since $\dim Z = r$, conclude that $f_1,f_2,\cdots,f_r$ are *linearly independent* 
	  
	- Moreover, $f_i \in Z$ for each $i$.

# Bibliography

::: {.refs}
:::

