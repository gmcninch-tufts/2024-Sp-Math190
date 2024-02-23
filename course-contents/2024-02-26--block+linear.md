---
title: Shannon's Theorem; block codes
date: 2024-02-22
---


\newcommand{\F}{\mathbb{F}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\e}{\mathbf{e}}
\newcommand{\h}{\mathbf{h}}
\newcommand{\bb}{\mathbf{b}}
\newcommand{\Null}{\operatorname{Null}}

\newcommand{\PP}{\mathbb{P}}
\newcommand{\vv}{\mathbf{v}}
\newcommand{\dist}{\operatorname{dist}}
\newcommand{\floor}[1]{\lfloor #1 \rfloor}

# Bounds for block codes, continued

Let $C \subset A^n$ be a block code, where $q = |A|$, and suppose
that $d$ is the *minimal distance* of $C$.

Recall that we showed that $C$ "corrects up to $t$ errors", where
$$t = \floor{(d-1)/2}.$$

And recall that $A_q(n,d)$ is the maximal size of a code $C \subset
A^n$ with minimal distance $d$.

Let $$\delta(m) = 1 + \dbinom{n}{1}(q-1) + \dbinom{n}{2}(q-1)^2 +
\cdots + \dbinom{n}{m}(q-1)^m = \sum_{j=0}^m \dbinom{n}{j}(q-1)^j.$$
The (closed) ball $B_m(u)$ of radius $m$ in $A^n$ satisfies $|B_m(u)|
= \delta(m)$.

Recall that the *Gilbert-Varshamov* result gave in some sense a *lower
bound* result for $A_q(n,d)$; it showed that $$A_q(n,d) \cdot
\delta(d) \ge r^n.$$

We now give an *upper bound*, known as the *sphere-packing bound*.

**Theorem** (*Sphere-packing bound*)
:   Let $t = \floor{(d-1)/2}$.
    Then
	$$A_q(n,d) \cdot \delta(t) \le q^n.$$

**Proof**
:   Let $C \subset A^n$ be a code of minimal distance $d$ with $|C| = A_q(n,d)$.

    Suppose that $u,v \in C$, and suppose that $w \in B_t(u) \cap B_t(v)$.
	Thus we have
	$$\dist(u,v) \le \dist(u,w) + \dist(w,v) \le 2t \le d-1.$$
	
	Since $d$ is the minimal distance of $C$ it follows that $u=v$.
	This shows that $$u \ne v \implies B_t(u) \cap B_t(v) = \emptyset.$$
	
    Thus the union $\displaystyle \bigcup_{u \in C} B_t(u)$ is  disjoint, so that
	$$|\bigcup_{u \in C} B_t(u)| = |C| \cdot \delta(t).$$

    Since $\displaystyle \bigcup_{u \in C} B_t(u) \subseteq A^n$, the Theorem follows at once.


**Remark**
:   A code is said to be *perfect* if it meets the sphere packing bound; i.e. if
    $|C|\cdot  \delta(t) = q^n$.

    We'll have some examples of perfect codes later; meanwhile note
	that to have a perfect code of length $n$ and given $t$, we need
	$\delta(t) \mid q^n$. This doesn't happen too often...:
	
	``` python
	def delta(n,q,m):
      return sum([ binomial(n,j) * (q-1)**j for j in range(m+1) ])
	
	def test(n,q,t):
      return Mod(q^n,delta(n,q,t)) == 0
	  
    q = 2
	t = 2

    list(filter(lambda n: test(n,q,t),range(1,200)))
	=>
	[1, 2, 5, 90]

    q = 2
	t = 3
	list(filter(lambda n: test(n,q,t), range(1,200)))
	=>
	[1, 2, 3, 7, 23]
	
	q=3
	t=2
	list(filter(lambda n: test(n,q,t),range(1,200)))
	=>
	[1, 2, 11]

	```




**Lemma** (*Plotkin Lemma*)
:   Let $C \subset A^n$, $|A|=q$, and suppose the maximal distance of $C$ is $d$.
    Then 
	$$|C| \left( d + \dfrac{n}{q} - n \right) \le d.$$

**Proof**
:   Fix $1 \le j \le n$ and for each $a \in A$ write
    $\lambda_a$ for the number of times $a$ appears as the $j$th coordinate of a codeword in $C$.
	
	i.e.
	$$\lambda_a = |\{(u_1,u_2,\cdots,u_n) \in C \mid u_j = a\}|.$$

    Of course, we have
	$$(\clubsuit) \quad \sum_{a \in A} \lambda_a = |C|.$$
	
	Moreover,
	$$(\diamondsuit) \quad \sum_{a \in A} \left(\lambda_a - \dfrac{|C|}{q}\right)^2 \ge 0$$
	since the sum of non-negative terms is non-negative.
	
	Expanding each summand in $(\diamondsuit)$ and using $(\clubsuit)$ we see that
	\begin{align*}
	0 \le&  \sum_{a \in A} \left ( \lambda_a^2 - \dfrac{2|C|}{q} \lambda_a  + \dfrac{|C|^2}{q^2} \right ) \\
	=& \left(\sum_{a \in A} \lambda_a^2 \right) - \dfrac{2|C|}{q} \left(\sum_a \lambda_a\right) + 
	\dfrac{|C|^2}{q} \\
	=& \left(\sum_{a \in A} \lambda_a^2 \right) - \dfrac{2|C|^2}{q}  + 
	\dfrac{|C|^2}{q} \\	
	=& \left(\sum_{a \in A} \lambda_a^2 \right) - \dfrac{|C|^2}{q}  
	\end{align*}
	Thus
	$$(\heartsuit) \quad \sum_{a \in a} \lambda_a^2 \ge \dfrac{|C|^2}{q}.$$

    Now write $\displaystyle S = \sum_{u,v \in C} \dist(u,v)$, and let $S_j$ be the contribution
	that the $j$-th coordinate makes to this sum. More precisely,
	$$S_j = \sum_{a \in A} \lambda_a \left( |C| - \lambda_a \right).$$
	Of course,
	$$S = \sum_j S_j.$$

    Using $(\clubsuit)$ and $(\heartsuit)$ we find
	\begin{align*}
	S_j &= \sum_{a \in A} \lambda_a |C| - \sum_{a \in A} \lambda_a^2 \\
	&= |C|^2 - \sum_{a \in A} \lambda_a^2 \\ 
	&\le |C|^2 - \dfrac{|C|^2}{q} 
	\end{align*}
	
	Finally, since $d$ is the minimal distance of $C$ we have
	$$d |C| ( |C|-1) \le S$$
	and on the other hand we have established
	$$S = \sum_j S_j \le n \left( |C|^2 - \dfrac{|C|^2}{q}\right)$$
	
	Combining these inequalities (and canceling a factor of $|C|$)  we find
	\begin{align*} & d\left( |C| - 1 \right) \le n |C| (1 - 1/q) \\
	\implies & d|C| - n|C|(1 - 1/q) \le d \\
	\implies & |C|\left(d - n + \dfrac{n}{q} \right) \le d;
	\end{align*}
    this completes the proof.
    
