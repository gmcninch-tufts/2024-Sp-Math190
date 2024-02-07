---
title: Representations and the symmetric group
date: 2024-02-07
---

\newcommand{\trivial}{\mathbf{1}}

# Irreducible representations of finite abelian groups

Let $A$ be a finite abelian group, written *additively*.

We set $\widehat A = \operatorname{Hom}(A,\mathbb{C}^\times)$ for the
set of all group homomorphisms $A \to \mathbb{C}^\times$.  We can make
$\widehat A$ into a group by declaring for $\phi,\psi \in \widehat A$
that $$\phi\cdot \psi :A \to \mathbb{C}^\times$$ is the mapping $a
\mapsto \phi(a)\psi(a)$.

**Proposition:**
:    $\widehat A$ is an abelian group, and $\widehat A \simeq A$.

**Sketch:**
:    When $A = \mathbb{Z}/n\mathbb{Z}$ is *cyclic* let $\zeta = \exp(2
     \pi i /n)$ be primitive $n$th root of unity.
	 
	 For $j \in \mathbb{Z}/n\mathbb{Z}$, define
	 $\phi_j \in \widehat {\mathbb{Z}/n\mathbb{Z}}$ by 
	 $$\phi_j(i + n \mathbb{Z}_) = \zeta^{ij}.$$
	 
	 One checks that $j \mapsto \phi_j$ defines an isomorphism of groups
	 $$\mathbb{Z}/n\mathbb{Z} \to \widehat {\mathbb{Z}/n\mathbb{Z}}.$$
	 
	 Now the Proposition follows by using that
	 $$\widehat{A \times B} \simeq \widehat{A} \times \widehat{B}$$
	 for abelian group $A$ and $B$.
	 
 Observe that elements of $\widehat A$ determine 1-dimensional
 representations, which are necessarily irreducible.  Since a
 1-dimensional representation coincides with its trace, our results on
 the characters of irreducible representations imply that the
 functions $\mathbb{C}$-valued functions $\widehat{A}$ form an orthonormal
 basis for $\mathbb{C}[A]$.
 
 Let us write $\widehat{A} = \{\phi_1,\phi_2,\cdots,\phi_n\}$ where $n = |A|$.
 
 
 Given a function $f: A \to \mathbb{C}$, i.e. an element $f \in \mathbb{C}[A]$, we may write
 $$f = \sum_{i=1}^n \langle f,\phi_i \rangle \phi_i.$$

The Fourier transform of $f$ is the function
$$\widehat{f}:\widehat{A} \to \mathbb{C}$$
given by $$\widehat{f}(\phi) = \langle f, \phi \rangle.$$

**Remark:**
:   When $A = \mathbb{Z}/n\mathbb{Z}$, one often views the values
    $f(i)$ for $i + n\mathbb{Z}$ as *samples* of some periodic
    function of (say) a real variable $t$, viewed as *time*.
	
	In that case, the domain of $\widehat{f}$ is viewed as
    *frequency*.

**Remark:**
:  In any event, for abelian $A$ we have two natural bases for $\mathbb{C}[A]$:
   the functions $\delta_a$ for $a \in A$, and the functions $\widehat{A}$.
   
# How to study $\mathbb{C}[G]$ for non-abelian $G$?

Idea: the *matrix coefficients* of linear representations define functions on $G$.
If $\rho:G \to \operatorname{GL}(V)$ is a linear representation, let
$b_1,\dots,b_n$ be a basis of $V$ and let $b_1^\vee,\cdots,b_n^\vee$ be the dual basis.

For $1 \le i,j \le n$ we get a function $$\rho_{i,j}:G \to
\mathbb{C}$$ by the rule $$\rho_{i,j}(g) = b_i^\vee(\rho(g)b_j).$$

**Claim:**
:   Let $L$ be an irreducible representation and let
    $\mathbb{C}[G]_{(L)}$ be the isotypic component of the regular
    representation.  Then the functions $\rho_{i,j}$ provide a *basis*
    for $\mathbb{C}[G]_{(L)}$ where $\rho$ defines the irreducible
    representation *dual* to $L$.
	
	We omit the proof, and refer the reader
	e.g.[@jamesRepresentationsCharactersGroups2001] for the notion of
	the *dual* of a representation.

    But recall that we know that $[\mathbb{C}[G]_{(L)}:L] = \dim L$ so
	that $\dim \mathbb{C}[G]_{(L)} = (\dim L)^2 = \dim
	\operatorname{End}(L).$

# Irreducible representations of the symmetric group

Recall that two elements $\sigma,\tau \in S_n$ are *conjugate* $\iff$
they have the same *cycle structure*. We state this in the following form:

**Lemma:**
:   Conjugacy classes in $S_n$ are in bijection with 
    *partitions* $\lambda \vdash n$.
	
For example, there are $5$ partitions of $4$; they are $\lambda =
(1,1,1,1)$, $\lambda = (2,2)$, $\lambda = (2,1,1)$, $\lambda = (3,1)$,
and $\lambda=(4)$.

As a consequence, we know:

**Proposition:**
:   Isomorphism classes of irreducible representations of $S_n$ on
    complex vector spaces are in bijection with partitions $\lambda \vdash n$.

Here is a quick overview of some facts about the representations of $S_n$,
without proofs:


In fact, for each partition $\lambda \vdash n$, there is a
construction of an irreducible representation $V_\lambda$ for
$S_n$. To begin the construction, associate with $\lambda$ the
subgroup $$S_\lambda = S_{\lambda_1} \times S_{\lambda_2} \times
\cdots \times S_{\lambda_r}$$ let $\Omega_\lambda = S_n /
S_\lambda$ be the set of left cosets of $S_\lambda$ in $S_n$.
	
Thus $\Omega_\lambda$ is a set on which the symmetric group $S_n$
acts, and we may consider the *permutation representation*
$\mathbb{C}[\Omega_\lambda]$, and for brevity we write $M^\lambda =
\mathbb{C}[\Omega_\lambda]$.

One defines the *dominance ordering* on partitions of $n$ by the rule
$$\lambda \trianglelefteq \mu$$ if and only if for each $\ell$
$$\sum_{i=1}^\ell \lambda_i \le \sum_{i=1}^\ell \mu_i.$$

There is a labeling of irreducible representations of $S_n$ by
partition; let us write $S^\lambda$ for the irreducible representation
corresponding to $\lambda$. It is known as a *Specht representation*.
	
**Theorem:**
:   $[M^\lambda:S^\lambda] =1$ and $[M^\lambda:S^\mu] > 0 \implies
    \lambda \trianglelefteq \mu$.
	
	
As stated, the Theorem appears to depend on our knowledge of the irreducible 
representations, but in fact it gives us a way to define them.

For a fixed $\lambda$, consider all homomorphisms of
$S_n$-representations $$M^\mu \to M^\lambda \quad \text{ for $\lambda
\trianglelefteq \mu$};$$ lets write $R^\lambda \subset M^\lambda$ for
the *sum of the image of all of these homomorphisms.*

The Theorem implies that $M^\lambda / R^\lambda = S^\lambda$ is irreducible.

	
Here are some special cases: 
	
- if $\lambda = (n)$ then $M^\lambda = S^\lambda = \trivial$ is
  the trivial representation.

- if $\lambda = (1,1,\cdots,1)$ them $S^\lambda =
  \operatorname{sgn}$ is the (1-dimensional) *sign representation*.

- if $\lambda = (n-1,1)$ then $M^\lambda$ is the permutation
  representation $\mathbb{C}[\{1,2,\cdots,n\}]$, and $$M^\lambda =
  S^\lambda \oplus \trivial$$ so that $\dim S^\lambda = n-1$.
	  
  Observe that indeed $(n-1,1) \trianglelefteq (n)$.

- when $n=3$, we saw previously that $S_3$ has 3 irreducible
  representations. They can be described as
  
  - $S^{(3)} = \trivial$ the trivial representation
  - $S^{(1,1,1)} = \operatorname{sgn}$ the sign representation
  - $S^{(2,1)}$, an irreducible representation of dimension 2



# Rank preferences

I want to describe in brief the ideas investigated in
[@diaconisGeneralizationSpectralAnalysis1989], which amounts as an application of
representation theory on the symmetric group to statistics.

## First, an example

Suppose we were to ask people to rank their preferred ice cream
flavors from the following ordered list:

- [ `pistachio`, `chocolate`, `strawberry`, `vanilla`, `neopolitan` ]


Numbering the flavors [ `0`, `1`, `2`, `3`, `4` ] in order, we can
represent an individual's preference using a permutation $\sigma \in
S_5$.
  
For example the preference list

- [  `neopolitan`, `strawberry`, `chocolate`, `vanilla`, `pistachio` ]

corresponds to the product of transposition $(04)(12)$.

So our survey data amounts to a list of elements
$\sigma_1,\sigma_2,\dots,\sigma_N \in S_5$.

## Ranking in more generality

In general, $n$ will denote the number of items to be ranked,
and we assume given a *list* of ranking data:
$$\Sigma: \sigma_1, \sigma_2, \cdots, \sigma_m$$

The main statistic of interest is the *frequency function* 
$$f = f_\Sigma:S_n \to \mathbb{C}$$
given for $\sigma \in S_n$ by the rule $f(\sigma) = \#\{\sigma_i \mid
\sigma = \sigma_i\}$.

Idea: View $f$ as a vector in the regular representation
$\mathbb{C}[S_n]$. We want to understand how $f$ decomposes
in some natural descriptions of $\mathbb{C}[S_n]$.




# Bibliography

::: {.refs}
:::

