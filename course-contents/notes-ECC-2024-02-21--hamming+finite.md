---
title: Hamming codes; and generalities on finite fields
date: 2024-02-21
---

\newcommand{\F}{\mathbb{F}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\e}{\mathbf{e}}
\newcommand{\h}{\mathbf{h}}
\newcommand{\bb}{\mathbf{b}}
\newcommand{\Null}{\operatorname{Null}}

\newcommand{\PP}{\mathbb{P}}
\newcommand{\v}{\mathbf{v}}

# A result on check-matrices.

We resume our discussion from the previous lecture. An $m \times n$
matrix $H$ with entries in $\F_q$ determines a subspace $C \subset
\F_q^n$ by the rule $$C = \{x \mid Hx^T = 0\} = \Null(H).$$

**Proposition**
:   Suppose that every collection of $d-1$ columns of $H$ is linearly
    independent and that some collection of $d$ columns of $H$ is
    linearly dependent.
	
	Then the minimal distance of the code $C$ is $d$.
	
**Proof**
:   Let $x = (x_1,x_2,\cdots,x_n) \in C \subset \F_q^n$.

    Let $D = D(x) = \{i \mid x_i \ne 0\}$ so that the weight of $x$ is given
    by $|D|$.
	
	If we denote by $\h_1,\h_2,\cdots,\h_n$ the *columns* of the matrix $H$, 
	then we have
	$$x_1 \h_1 + x_2 \h_2 + \cdots + x_n \h_n = 0$$
	and thus
	$$\sum_{i \in D}  x_i \h_i = 0$$
	so that the there are $|D|$ columns that are linearly dependent.
	
	If $d'$ denotes the *minimal distance* of the code $C$, and if
	$x'$ has weight $d'$ then the indices $D(x')$ define a collection
	of $d'$ linearly dependent columns. Moreover, any smaller
	collection of columns is linearly independent; thus $d' = d$.
	
	
**Remark**
:   Given a check matrix $H$ with coefficients in $\F_q$, one can
    construct a code $C_a$ over the field $\F_{q^a}$ for any natural
    number $a$ - i.e.  $$C_a = \{ x\in \F_{q^a}^n \mid H x^T = 0\}.$$
    This Proposition shows that the *minimal distance* of the code
    $C_a$ is independent of $a$, since the minimal distance can be
    determined from the matrix $H$.

# Projective spaces over $\F_q$ and the Hamming Codes

## Projective spaces  over a finite field and their size

**Definition**
:   For a natural number $n$, the projective space $\PP^n$ is defined to
    be the set lines through the origin in the vector space $\F_q^{n+1}$.
	
If $0 \ne \v = (v_0,v_1,\cdots,v_n) \in k^{n+1}$, then $\F_q \v$ is a
line, and we denote this line using the symbol $$\F_q \v = [v_0:v_1:
\cdots:v_n] \in \PP^n = \PP^n_{\F_q}.$$

For $\lambda \ne 0$ note that $\F_q \v = \F_q \lambda v$, and it
follows that $$[v_0:v_1:\cdots:v_n] = [\lambda v_0:\lambda v_1:
\cdots: \lambda v_n].$$

**Example**
:   Let's consider $\PP^1 = \PP^1_{\F_q}$. An arbitrary point has the
    form $[a:b]$. If $a \ne 0$, this point may be written $[a:b] =
    [1:b/a]$. There are exactly $q$ points of the form $[1:c]$.

    If $a = 0$, then $b$ is non-zero and $[0:b] = [0:1]$.
	
	Thus $\PP^1 = \{[1:c]:c \in \F_q\} \cup \{[0:1]\}$
	so that $|\PP^1| = q + 1$.

**Proposition:**
:   For $n \ge 1$ we have
    $\PP^n = \{[1:u_1:u_2:\cdots:u_n] \mid u_i \in \F_q\} \cup \{[0:\beta]: \beta \in \PP^{n-1}\}.$

    In particular,
	$$|\PP^n| = q^n + |\PP^{n-1}|.$$

**Sketch:**
:   If $v_0 \ne 0$ then $[v_0:v_1:\cdots:v_n] =
    [1:v_1/v_0:\cdots:v_n/v_0] = [1:u_1:\cdots:u_n]$ where $u_i = v_i
    / v_0$.  Moreover, if $[1:u_1:\cdots:u_n] = [1:u_1':\cdots:u_n']$
    then $u_i = u_i'$ for each $i$.

    On the other hand, points for which  $v_0 = 0$ are in one-to-one correspondence with points
	$\beta= [v_1:\cdots:v_n]$ in  $\PP^{n-1}$.
	
**Proposition**
:   For $n \ge 1$, we have
    $$|\PP^n| = \dfrac{q^{n+1} - 1}{q-1} = q^n + q^{n-1} + \cdots + q + 1.$$

**Proof**
:   We proceed by induction on $n$. When $n=1$ we have 
    already seen that
	$$|\PP^1| = q+1 = \dfrac{q^2 - 1}{q-1}.$$
	
	Now let $n > 1$. We have seen that
	$$|\PP^n| = q^n + |\PP^{n-1}|$$
	and we know by induction that
	$$|\PP^{n-1}| = \dfrac{q^n - 1}{q-1}.$$

    Thus $$|\PP^n| = q^n + \dfrac{q^n-1}{q-1} = \dfrac{q^{n+1} - q^n +
	q^n -1}{q-1} = \dfrac{q^{n+1} - 1}{q-1}.$$


## Hamming codes

Let $m \ge 1$. 
