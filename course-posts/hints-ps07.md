---
title: |
  PS07 - sage issues
author: George McNinch 

date: 2024-03-29
---

\newcommand{\F}{\mathbb{F}}

So there was a somewhat sticky `Sage-math` situation related to the
second problem.

We want to construct the irreducible factors of $f = T^{11} - 1$ over
$\F_4$.

We can try to proceed as we've done in the past:

``` python
k = GF(4)
R.<T> = PolynomialRing(k)

f = T^11 - 1

l.<w>  = GF(4^5)  # w is a generator for the multiplcative group of GF(4^5)

n = int((4^5-1)/11)

z= w^n           # z is an element of order 11, as we now check...

multiplicative_order(z)
=> 11
```

But now we can't define the minimal polynomial, because "`w` and a generator for
`GF(4)` don't play nice with each other".

Indeed, we get an error when trying to write down the minimal polynomial of `z`:

``` python
product([ T - z^(4^i) for i in range(5) ])
=>
[... elided...]

TypeError: unsupported operand parent(s) for -: 'Univariate Polynomial Ring in T over Finite Field in z2 of size 2^2' and 'Finite Field in w of size 2^10'
```

I expect that there is a natural way to proceed to fix this issue, but
I don't know it at the moment. 

So here is a work-around.

We can just use `Sage` to factor the polynomial.  (Here it is
important that the coefficients field of the polynomial ring `R` is
`GF(4)`, rather than `GF(2)`).

``` python
f.factor()
=>
(T + 1) * (T^5 + z2*T^4 + T^3 + T^2 + (z2 + 1)*T + 1) * (T^5 + (z2 + 1)*T^4 + T^3 + T^2 + z2*T + 1)
```

Note that `f.factor()` actually returns what `Sage` calls a `factorization` object. In particular,
the factorization can be accessed as a `list`:

``` python
fs = list(f.factor())
fs
=>
[(T + 1, 1),
 (T^5 + z2*T^4 + T^3 + T^2 + (z2 + 1)*T + 1, 1),
 (T^5 + (z2 + 1)*T^4 + T^3 + T^2 + z2*T + 1, 1)]
```

Let's name the degree 5 factors:
``` python
(g,_) = fs[1]    # we extract the pairs at indices 1,2 of `fs`
(h,_) = fs[2]    # and we ignore the multiplicities (which are anyhow 1)

(g,h)            # now g and h are  the degree 5 irreducible factors
=>
(T^5 + z2*T^4 + T^3 + T^2 + (z2 + 1)*T + 1,
 T^5 + (z2 + 1)*T^4 + T^3 + T^2 + z2*T + 1)
```

Since `z` is a root of `T^11 - 1`, we know that `z` is a root of
exactly one of `g,h.` And e.g. if it is a root of `g` then `g` is the
minimal polynomial of `z` over `GF(4)`.

But trying to check that `z` is a root of `g` returns us to the earlier problem: 
to evaluate `g` at `z` requires `Sage` to reconcile the generator `z2`
of `GF(4)` with the generator `w` of `GF(2^10)`

``` python
g(z)
=>
[ ... some of the error message elided ...]
TypeError: no common canonical parent for objects with parents: 'Finite Field in z2 of size 2^2' and 'Finite Field in w of size 2^10'
```

Now, on the other hand we can try to construct the minimal polynomial
of `z` using the fact that the Galois group of `GF(4^5)/GF(4)` acts on
the roots of the minimal polynomial.

Thus, e.g. the minimal polynomial of `z` has roots
``[ z^(4^i) for i in range(5)]``.

So let's construct the minimal polynomial of `z` and of `z^2` in the
polynomial ring over the larger field `l`. In fact, I'm going to use a
different variable name in this larger polynomial ring.

``` python
S.<X>  = PolynomialRing(l)
gg=product([ X-z^(4^i) for i in range(5) ])

hh = product([X- z^(2*4^i) for i in range(5)])

(gg,hh)
=>
(X^5 + (w^5 + w^3 + w)*X^4 + X^3 + X^2 + (w^5 + w^3 + w + 1)*X + 1,
 X^5 + (w^5 + w^3 + w + 1)*X^4 + X^3 + X^2 + (w^5 + w^3 + w)*X + 1)
```

Now, we know that the list of polynomials `g,h` is "*the same as*" the list of polynomials
`gg,hh`. But we don't really know which is which.

We note that the coefficient of `X^4` in `gg` is `w^5 + w^3 + w`,  and
that the coefficient of `T^4` in `g` is `z2`.

Now, the minimal polynomial of an element of `GF(4)` which is not in `GF(2)` is
`X^2 + X + 1`, and we can check that `w^5 + w^3 + w` is a root of this polynomial:

``` python
h = X^2 + X + 1
h(w^5 + w^3 + w)
=>
0
```

But this doesn't really help! If `z2` is a root of `X^2 + X + 1` the
other root of `X^2 + X + 1` is `z2 + 1`, which is the coefficient of
`T^4` in `h`.  The point is that there is some choice in roots, and we
need to make a consistent choice.

Here finally is how to think about it.

By construction, the minimal polynomial of `z` is `gg`.

Setting `z2 = w^5 + w^3 + w` we have a root of `X^2 + X + 1`, so that
`z2` generates the subfield `GF(4)` of `GF(4^5)`. And then we see that
-- *with this choice* --

``` python
g = T^5 + z2*T^4 + T^3 + T^2 + (z2 + 1)*T + 1
```
is the minimal polynomial of our chosen element `z` of order 11.

Now we can use `g` to compute the minimal distance of the cyclic code
(as was done for the ternary Golay code in the class notes) in order to compute the minimal distance
of the code $\langle g \rangle$, as needed to answer part (e) of PS07 problem 2.

(In fact, you'll see that if `C1` is the code determined by `g` and if
`C2` is the code determined by `h`, then both `C1` and `C2` have the
same minimal distance, which is 5).
