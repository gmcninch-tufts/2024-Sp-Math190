---
title: Cyclic
date: 2024-03-06 and 2024-03-11
---

\newcommand{\F}{\mathbb{F}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\e}{\mathbf{e}}
\newcommand{\h}{\mathbf{h}}
\newcommand{\bb}{\mathbf{b}}
\newcommand{\vv}{\mathbf{v}}
\newcommand{\xx}{\mathbf{x}}
\newcommand{\yy}{\mathbf{y}}

\newcommand{\uu}{\mathbf{u}}
\newcommand{\ww}{\mathbf{w}}

\newcommand{\Null}{\operatorname{Null}}
\newcommand{\Hom}{\operatorname{Hom}}

\newcommand{\ord}{\operatorname{ord}}
\newcommand{\div}{\operatorname{div}}
\newcommand{\weight}{\operatorname{weight}}

\newcommand{\PP}{\mathbb{P}}

\newcommand{\dist}{\operatorname{dist}}
\newcommand{\floor}[1]{\lfloor #1 \rfloor}

\newcommand{\tr}{\operatorname{tr}}

# Maximal distance-separable codes and the Singleton Bound


**Theorem** (Singleton Bound)
:   Let $C$ be an $[n,k,d]_q$-code. Then
    $$|C| \le q^{n - d + 1}.$$
	Put another way,
	$$k \le n - d + 1.$$

**Proof**
:   Consider a subset $I \subset \{0,1,\cdots,n-1\}$ with $|I| = n - (d-1)$.

    If $v,w \in \F_q^n$ satisfy $v_i = w_i$ for each $i \in I$, then
	$$\dist(v,w) = \weight(v-w) < d.$$
	Since $d$ is the minimal distance between distinct codewords in $C$, if $v,w \in C$, then $v = w$.
	
	In particular, if $v,w \in C$ with $v \ne w$, then $v_i \ne w_i$ for some $i \in I$.
	
	Now, there are $q^{n-d+1}$ distinct $n-d+1$ tuples of elements of $\F_q$, so
	we see that $|C| \le q^{n-d+1}$.


A code is said to be *maximal distance-separable* (MDS) if it *attains* the singleton bound.
In other words, a linear MDS code satisfies
$$k = n - d + 1$$
i.e. 
$$d = n - k + 1.$$

# Reed-Solomon codes
Important examples of linear MDS codes are the *Reed-Solomon* codes.

Let us enumerate the elements of $\F_q$:
$$\F_q = \{a_1,a_2,\cdots,a_q\}.$$

We fix a natural number $k \le q$.
Then $q$ and $k$ determine  (restricted) Reed-Solomon:

$$C = \{ (f(a_1),f(a_2),\cdots,f(a_q)) \mid f \in \F_q[T], \deg(f) < k \}.$$

Observe that $$\F_q[T]_{<k} = \{f \in \F_q[T] \mid \deg(f) < k\}$$ is
a vector space over $\F_q$ of dimension $k$, since
$1,T,\cdots,T^{k-1}$ is a *basis*.

Now, for any $a \in \F_q$, the evaluation mapping
$$(f \mapsto f(a)):\F_q[T]_{<k} \to \F_q$$
is *linear*.

More generally, the mapping $$\Phi:\F_q[T]_{<k} \to C$$ given by $$f
\mapsto (f(a_1),f(a_2),\cdots,f(a_q))$$ is linear. Moreover, if $k \le
q$, note that $f \in \ker \Phi$ means that $f$ has at least $q$ roots;
in particular, since $f$ has degree $<q$, we may conclude that $f =
0$. This shows that $\Phi$ is *injective* and in particular implies that
$\dim C = k$. Thus $C$ is a $[q,k]_q$-code. We now prove:

**Proposition**
:   $C$ is a $[q,k,q-k+1]_q$-code.

**Proof**
:   We just need to argue that the minimal weight of a non-zero vector in $C$ is 
    given by $d = q+2-k$. Let $c \in C$ be a non-zero vector with minimal weight $d$.
	There is a (unique) polynomial $f \in \F_q[T]_{< k}$ with
	$$c = \Phi(f) = (f(a_1),f(a_2),\cdots,f(a_q)).$$

    Since $c$ has weight $d$, we see that $f$ has $q - d$ roots.
	
	On the other hand, since $\deg(f) < k$, $f$ has $\le k-1$ roots.
	This shows that $q-d \le k-1$, so that $d \ge q-k + 1$.
	
	To show that $d = q- k+1$, we must *exhibit* a polynomial
	$f \in \F_q[T]_{<k}$ for which the weight of $c = \Phi(f)$ is precisely
	$q-k+1$. Thus, we just need to find a polynomial
	with exactly $k-1$ roots. We just take
	$$f = \prod_{i=1}^{k-1} (T-a_i) \in \F_q[T]_{<k}.$$ Then
	$$c=\Phi(f) = (0,\cdots,0,*,\cdots,*)$$
	has exactly $k-1$ zeros so that $\weight(c) = q - k + 1$.

**Remark**
:   The Proposition shows that the (restricted) Reed-Solomon code $C$
    is an MDS code.
	
**Remark**
:   We can also consider the (extended) Reed-Solomon code.

    First recall that given $f \in \F_q[T]$ we can *homogenize* $f$ to produce
	$f^h \in \F_q[X,Y]$ where
	if $$f = \sum_{i=0}^N a_i T^i$$ with $a_N \ne 0$ then 
	$$f^h = \sum_{i=0}^N a_i X^{N-i}Y^{i}.$$
	Notice that $f = f^h(1,T)$.
    Recall that $\PP^1_{\F_q} = \{(1:a) \mid a \in \F_q\} \cup \{\infty=(0:1)\}.$
	Then $f^h(1,a) = f(a)$ and $f^h(0,1) = a_N$. We view
	$f(\infty) = f^h(0,1)$ as the "*value of $f$ at the point at infinity in $\PP^1$*."
	
	Now, the extended Reed-Solomon code is given by
	$$\widetilde{C} = \{(f(a_1),\cdots,f(a_n),f(\infty)) \mid f \in \F_q[T]_{<k}\}.$$

    Essentially the same argument as above shows that $\widetilde{C}$ is a
    $[q+1,k,q+1-k+1]_q = [q+1,k,q+2-k]_q$-code, so that $\widetilde{C}$ is also an MDS code.
	
	Indeed, we need to argue that the minimal weight of a non-zero
	vector in $\widetilde{C}$ is $q+2-k$.  If $f(\infty) = 0$, we
	observe that $\deg(f) \le k-2$, so that $f$ has no more than $k-2$
	roots in $\F_q$; thus $f$ has no more than $k-1$ roots in $\PP^1$.
	On the other hand if $f(\infty) \ne 0$, then $\deg(f) \le k-1$
	again shows that $f$ has no more than $k-1$ roots in $\PP^1$.
	With this observation, the proof is straightforward.

Finally, we note a nice feature of Reed-Solomon codes; there is an effective decoding algorithm for them.
More precisely, we have the following:

**Theorem**
:   There is a decoding algorithm for the restricted Reed-Solomon
    which corrects up to $\dfrac{n-k}{2}$ errors and completes in a
    number of steps which is polynomial in $q$.

**Proof**
:   Suppose that we have received the vector
    $$\yy = (y_1,y_2,\cdots,y_q) \in \F_q^n.$$
	We must find a polynomial $f \in \F_[T]_{<k}$ such that
	$$(y_1,y_2,\cdots,y_q) = (f(a_1),f(a_2),\cdots,f(a_q)) + \e$$
	for an *error vector* $\e \in \F_q^n$ with $\weight(e) \le \dfrac{q-k}{2}$.
	
	Let $M_1 = \floor{(q-k)/2}$ and $M_2 = k + \lceil (q-k)/2 \rceil - 1$.

    We consider an arbitrary polynomial $h$ of degree $\le M_1$ and
	an arbitrary polynomial $g$ of degree $\le M_2$; here by *arbitrary* we mean
	that we view the *coefficients* of these polynomials as *unknowns*.
	

	We want to solve the equations
	
	$$(\clubsuit) \quad g(a_j) - h(a_j) y_j = 0 \quad \text{for $j =1,\cdots$}.$$

    Write $g = \sum_{i=0}^{M_2} z_i T^i$ and $h = \sum_{i=0}^{M_1} w_i T^i$.
	First observe that $M_1 + M_2 = k + (q-k) - 1 = q-1$. Thus
	there are $q+1 = q-1+2$ coefficients in the list
	$z_0,\cdots,z_{M_2},w_0,\cdots,w_{M_1}$. 
	
	We see that
	$(\clubsuit)$ amounts to the linear equation
	$$ z_0 + z_1 a_j + z_2 {a_j}^2 + \cdots + z_{M_1} {a_j}^{M_2} 
	+ w_0 y_j + w_1 y_j a_j + w_2 y_j {a_j}^2 + \cdots w_{M_2} y_j {a_j}^{M_1} = 0$$
	in the variables $z_i$ and $w_i$
	for each $j = 1,\cdots,q$.
	
	In other words, $(\clubsuit)$ amounts to a system of $q$ linear equations in the
	$q+1$ unknowns $z_0,\cdots,z_{M_2},w_0,\cdots,w_{M_1}.$

    Since $q+1>q$, this system of linear equations always has a
	non-zero solution. Moreover, *Gaussian elimination* will arrive at a
	solution after a number of operations that is $O(q^3)$; in
	particular, this algorithm is polynomial in $q$.
	
	Now suppose that $z_0,\cdots,z_{M_2},w_0,\cdots,w_{M_1} \in \F_q$ reflect a non-zero solution
	to $(\clubsuit)$, and set	
	$$g = \sum_{i=0}^{M_2} z_i T^i, \quad h = \sum_{i=0}^{M_1} w_i T^i\in \F_q[T].$$

    Now, by assumption there is a polynomial $f$ for which $y_j =
	f(a_j)$ for at least $q - \floor{(q-k)/2}$ values of $j$. For
	these values of $j$, the element $a_j \in \F_q$ is a root of the
	polynomial
	$g(T) - h(T) f(T).$

    Note that since $\deg h(T) f(T) \le M_1 + k \le M_2$, we have
	$$\deg(g(T) - h(T) f(T)) \le M_2.$$

    Since $q - \floor{(q-k)/2} > k + \lceil (q-k)/2 \rceil - 1 = M_2$
	it folllows that $g(T) - h(T) f(T)$ has more roots than its degree
	and is thus identically zero. Thus $h(T) \mid g(T)$ in $\F_q[T]$,
	and we find $f = \dfrac{g}{h} \in \F_q[T]$ as required.
	
## Implementation of Reed-Solomon decoding

Here is an implementation of the decoding algorithm in `Sage-Math`:

``` python
class ReedSolomon:
    def __init__(self,q,k):
        self.q = q
        self.F = GF(q)

        self.k = k
        self.t = floor((q-k)/2)  # we should be able to correct this many errors!
        
        self.V = VectorSpace(self.F,self.q)

        self.R = self.F['T']
        self.T = self.R.0  
        
    def vectorize(self,f):
        if f.degree() < self.k:
            return self.V([ f(a) for a in self.F ])
        else:
            print("error")

    def decode(self,v):
        q = self.q
        k = self.k
        
        M1 = floor((1/2)*(q-k))
        M2 = k + ceil((1/2)*(q-k)) - 1

        # the elements of the field F
        elts = [ a for a in self.F ]    
        
        def mkRow(i):
            return [ elts[i]^j for j in range(M2+1) ] + [-elts[i]^j * v[i] for j in range(M1+1) ]

        M = MatrixSpace(self.F,q,q+1).matrix([ mkRow(i) for i in range(q) ])

        # get a vector in the null space of V.
        coeffs = M.right_kernel().basis()[0]

        T = self.T

        # use the vector in the null space of V to build polynomials g and h
        g = sum([ coeffs[j] * T^j      for j in range(M2+1) ])
        h = sum([ coeffs[M2+1+j] * T^j for j in range(M1+1) ])

        # our solution is the quotient f = g/h
        # h divides g, so we "coerce" the ratio g/h to be element of self.R -- i.e. a polynomial
        # and not just a rational function of self.T
        f = self.R(g/h)

        # return the vector corresponding to f - this the decoded vector.
        return self.vectorize(f)


    def random_field_element(self):
        elts = [ a for a in self.F ]
        return choice(elts)

    def random_poly(self):
        # return a random polynomial of degree < k

        T = self.T
        return sum([ self.random_field_element()*T^j for j in range(self.k) ])

    def random_error(self):
        q = self.q
        k = self.k
        t = self.t
                    
        # choose t random indices
        ll = [ choice(range(q)) for _ in range(t) ]

        # return a random error vector, according to the indices in ll
        return self.V([ self.random_field_element() if j in ll else 0 for j in range(q) ])


    def display_result(self,res):
        print("sent/received/error: \n")
        M = MatrixSpace(self.F,3,self.q).matrix([ res['sent'], res['received'], res['error'] ])
        print(M)
        print(f"\ndecoded correctly? {res['passed']}") 

    
    def test(self):
        f = self.random_poly()
        v = self.vectorize(f)
        e = self.random_error()
        return { "sent": v,
                 "poly": f,
                 "received": v + e,
                 "error": e,
                 "passed": v == self.decode(v+e)
               }
    

    def run_tests(self,m):
        print(f"Reed Solomon code with q = {self.q} and k = {self.k}")
        print(f"Can correct t = {self.t} errors.")
        print(f"test decoding of {m} random vectors in C each with <={self.t} random errors\n")
        test_results = [ self.test() for _ in range(m) ]
        
        all_passed = all([ res['passed'] for res in test_results ])
        print(f"all passed? {all_passed}")
        print("------\n")
        
        for res in test_results:
            self.display_result(res)
            print("-----\n")

```

The `vectorize` method of the `ReedSolomon` class simply returns the vector
$$(f(a_1),\cdots,f(a_q))$$
when given the polynomial $f$.

The `decode` method of the class implements the decoding algorithm; given 
a vector in $\F_q^q$ it computes the polynomial $f$ as in the proof of the Theorem,
and returns the vector
$$(f(a_1),\cdots,f(a_q)).$$

The remainder of the code is just implements some testing. We provide facility for 
generating random field elements, random polynomials, and random "error vectors"
-- see `random_field_element`, `random_poly`, `random_error`.

Then `test` method generates a random polynomial `f`, a random error `e`, and then it calls the decode
method on the vector
`c.vectorize(f) + e`. The test is *passed* if `c.vectorize(f) == c.decode(c.vectorize(f) + e)`

Here is some sample output

``` python
rs = ReedSolomon(19,5)
rs.run_tests(10)

Reed Solomon code with q = 19 and k = 5
Can correct t = 7 errors.
test decoding of 10 random vectors in C each with <=7 random errors

all passed? True
------

sent/received/error: 

[10  1  6 13 12 14 13  5  7  0  5  7 12  9  8  2  5 14  9]
[ 3  1  6 13 12  3 13  5  7  0  5  4 14  7  8  2  5 12  9]
[12  0  0  0  0  8  0  0  0  0  0 16  2 17  0  0  0 17  0]

decoded correctly? True
-----

sent/received/error: 

[ 1 17  9 13 14  3 15 15 12  2  6 13 18  3 13  4 14 11  7]
[13 17  9 13 14  3 15 15 12  2 17 13 18  9  2  4 11 11  5]
[12  0  0  0  0  0  0  0  0  0 11  0  0  6  8  0 16  0 17]

decoded correctly? True
-----

sent/received/error: 

[ 5  0 13 16  5  0  7 18 11  7 13  3 13  8 15  9  8 16  4]
[ 5  1 13 16  5  0  7 10 11  7 13  3  9  8  3  9  8  1 14]
[ 0  1  0  0  0  0  0 11  0  0  0  0 15  0  7  0  0  4 10]

decoded correctly? True
-----

sent/received/error: 

[ 3  9  5  4 17 15  5 11 17  5 12 16 12 12  7  5 12 13 10]
[ 3 14 10  4 17 15 14 11 17  5 12 16 12 12  7  5  5 13  1]
[ 0  5  5  0  0  0  9  0  0  0  0  0  0  0  0  0 12  0 10]

decoded correctly? True
-----

sent/received/error: 

[18 15  1 11 11 12 13  1  8 16 14 17  9  0  7 16  1  0  1]
[18 15 10 11 12 12 13  1  8 18 17 17  9  0  7 16 17 10  1]
[ 0  0  9  0  1  0  0  0  0  2  3  0  0  0  0  0 16 10  0]

decoded correctly? True
-----

sent/received/error: 

[ 2  7  7 14  3  7  3  7 17 13 14  2 17  5  8 12  4 10  0]
[ 2  7  7 14  3  7 17  7  7 13 14 18 17  6  8 13  4 10  0]
[ 0  0  0  0  0  0 14  0  9  0  0 16  0  1  0  1  0  0  0]

decoded correctly? True
-----

sent/received/error: 

[ 4  3  3 13 15  2 16 15  6  7  9 14 16  1  4 14 12  9  8]
[ 9  3  3 13 15  2 16 15  6  6  9 14 16  1  4  9 12  9  8]
[ 5  0  0  0  0  0  0  0  0 18  0  0  0  0  0 14  0  0  0]

decoded correctly? True
-----

sent/received/error: 

[14 17  1 11  1  5  4  2  7 12 14 14 17 13 15  2 14  0  8]
[11 17  9 11  1  7  4  8 15 12 14 14 17 13 15  2 14 14  8]
[16  0  8  0  0  2  0  6  8  0  0  0  0  0  0  0  0 14  0]

decoded correctly? True
-----

sent/received/error: 

[ 6  3 13 10 15  1  7  5 14  5 15 14  0 18  8 14 13 10  0]
[ 6 13 13 11 15  1  7  5 14  9 15 11  0 18  1  4 13 14  0]
[ 0 10  0  1  0  0  0  0  0  4  0 16  0  0 12  9  0  4  0]

decoded correctly? True
-----

sent/received/error: 

[15  0 14 15  7  2  1 13 17  0 14  5  3  8  9  3 14 17 14]
[15  0 13 15  7  2 12 13  7  0 11 18 12  8 17  3 14 17 14]
[ 0  0 18  0  0  0 11  0  9  0 16 13  9  0  8  0  0  0  0]

decoded correctly? True
-----


```

# Algebraic Geometry Codes

Considering *algebraic curves* defined over finite fields provides
a vast generalization of the Reed-Solomon codes. We are going to *sketch* a few details of  this construction.
Note that our treatment is very rapid is mainly intended to communicate some hints about these codes. See 
e.g. [@ballCourseAlgebraicErrorCorrecting2020] for some more details.

Let $A = \F_q[X,Y,Z]/\langle \psi \rangle$
where $\psi$ is a homogeneous polynomial which is *absolutely irreducible*.

We consider the *field*
$$K = \{\dfrac{g}{h} \mid g,h \in A \quad \text{homogeneous of the same degree}\}.$$

**Examples**
:   1. $A = \F_q[X,Y] \F_q[X,Y,Z]/\langle Z \rangle.$ In this case $K
       = \F_q\left(\dfrac{X}{Y}\right) \simeq \F_q(t)$ is the field of
       rational functions in a single variable $t$.

    2. $A = \F_q[X,Y,Z]/\langle Y^2 Z - X(X-Z)(X+Z)\rangle.$ Then
	   $K = \F_q\left(\dfrac{X}{Z},\dfrac{Y}{Z}\right)$. Write
	   $x = \dfrac{X}{Z}$ and $y = \dfrac{Y}{Z}$. Then
	   $K = \F_q(x)(y)$ where $y^2 = x(x-1)(x+1)$.


Let $\overline{F_q}$ be an algebraic closure of $\F_q$ and let
$$X = \{(x:y:z) \in \PP^3_{\overline{F_q}} \mid \psi(x,y,z) = 0\}.$$
Then $X$ is an *algebraic plane curve* and $A$ is an $\F_q$-form of its homogeneous coordinate ring,
and $K = \F_q(X)$ is the field of $F_q$-defined rational functions on $X$.

## Divisors and rational functions

By a *divisor* we mean a $\Z$-linear combination of points of $X$:
$$D = \sum_{p \in X} n_p [p] \quad \text{with $n_p \in \Z$ and almost all $n_p = 0$}.$$

One source of divisors is the divisor $\div(f)$ of a rational function $f \in K = \F_q(X)$:  we have
$$\div(f) = \sum_{x \in C} \ord_x(f) [x]$$
where $\ord_x(f)$ denotes the *order of vanishing* of $f$ at $x \in X$. Note that $\ord_x(f) < 0$ precisely
when $f$ has *a pole* at $x$.

The *degree* of a divisor $D = \sum_{p \in X} n_p$ is the integer $\deg(D) = \sum_{p \in X} n_p$.

An important result states that for any $f \in \F_q(X) = K$, we have
$$\deg(\div(f)) = 0.$$

Finally, a divisor $D$ is non-negative - written $D \ge 0$ - provided that $n_p \ge 0$ for each $p \in X$.

## Riemann-Roch spaces

For a divisor $D$ we consider
$$L(D) = \{f \in K \mid \div(f) + D \ge 0\}.$$
This is an $\F_q$-vector space, and it turns out to always be finite dimensional.

According to 

# Bibliography

::: {.refs}
:::
