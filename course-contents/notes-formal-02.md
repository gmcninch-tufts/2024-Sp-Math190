---
title: |
  Overview on Formalization - Type Theory part 2
date: 2024-04-08
---


\newcommand{\type}{\ \text{type}}
\newcommand{\id}{\operatorname{id}}
\newcommand{\prd}[1]{\Pi_{(#1)}}
\newcommand{\comp}{\operatorname{comp}}

# A derivation about renaming variables

We are going to derive the inference rule

$$\dfrac{\Gamma, x:A,\Delta \vdash \mathscr{J}}
  {\Gamma,x':A,\Delta[x'/x] \vdash \mathscr{J}[x'/x]}x'/x$$
which essentially says "we an replace variable $x:A$ by variable $x':A$".

The derivation uses *substitution*, *weakening* and the *generic element*:

$$\dfrac{
  \dfrac{\Gamma \vdash A \type}{\Gamma,x':A \vdash x':A}\delta
  \quad
  \dfrac{\Gamma \vdash A \type \quad \Gamma, x:A, \Delta \vdash \mathscr{J}}
   {\Gamma,x':A,x:A,\Delta \vdash \mathscr{J}}W
  }
  {\Gamma,x':A,\Delta[x'/x]\vdash \mathscr{J}[x'/x]}S$$


# Dependent function types

Let $b$ be a section of a family $B$ over $A$ in context $\Gamma$. Thus
$$\Gamma,x:A \vdash b(x): B(x).$$

Two points of view here:

- can think of $b$ as a *"program"* $x \mapsto b(x)$ that takes as
  input $x:A$ and produces a term $b(x):B(x)$.

- or, can view $b(x)$ as just a "choice of element" in each $B(x)$ for $x:A$.
  i.e. $x \mapsto b(x)$ is a *dependent function*
  
The *type* of all such dependent functions is called the *dependent
function type*, written: $$\Pi_{(x:A)} B(x)$$

Part of what we must formulate in our type theory are inference rules
guaranteeing that these types are well-formed. For this we need
various sorts of *rules*:

- *formation rule* specifying how we may form dependent function types
- *introduction rule* specifying how to introduce new *terms* of
  dependent function types
- *elimination rule* specifying how to *use* arbitrary terms of
  dependent function types
- *computation rules* specifying how introduction rules and
  elimination rules interact

For the first three of these rules, we also need rules asserting that
the constructions play nice with judgmental equality.

## $\Pi$-formation rule


\begin{prooftree}
  \AxiomC{$\Gamma,x:A \vdash B(x)\type$}
  \RightLabel{$\Pi$}
  \UnaryInfC{$\Gamma \vdash \Pi_{(x:A)} B(x)\type$}
\end{prooftree}

Also need the *congruence rule*:

\begin{prooftree}
  \AxiomC{$\Gamma \vdash A \doteq A'$}
  \AxiomC{$\Gamma, x:A \vdash B(x) \doteq B'(x) \type$}
  \RightLabel{$\Pi$-eq}
  \BinaryInfC{$\Gamma \vdash \Pi_{(x:A)} B(x) \doteq \Pi_{(x:A')} B'(x)$}
\end{prooftree}

## $\Pi$-introduction rule

This rule specifies that we may "construct" dependent functions provided that we 
have constructed a section:

\begin{prooftree}
  \AxiomC{$\Gamma,x:A \vdash b(x):B(x)$}
  \RightLabel{$\lambda$}
  \UnaryInfC{$\Gamma \vdash \lambda x.b(x) : \Pi_{(x:A)}B(x)$}
\end{prooftree}
  
We use the notation $\lambda x.b(x)$ for the "dependent function".
This introduction rule is also called the *$\lambda$-abstraction rule*.

Again, we need to know that $\lambda$-abstraction respects judgmental equality:

\begin{prooftree}
  \AxiomC{$\Gamma, x:A \vdash b(x) \doteq b'(x):B(x)$}
  \RightLabel{$\lambda$-eq}
  \UnaryInfC{$\Gamma \vdash \lambda x.b(x) \doteq \lambda x.b'(x):\Pi_{(x:A)}B(x)$}
\end{prooftree}


## $\Pi$-elimination rule

The way to use a dependent function is to evaluate it at any an
element of the domain type. The $\Pi$-elimination rule is thus sometimes
called the *evaluation rule*.

\begin{prooftree}
  \AxiomC{$\Gamma \vdash f:\Pi_{(x:A)} B(x)$}
  \RightLabel{ev}
  \UnaryInfC{$\Gamma,x:A \vdash f(x): B(x)$}
\end{prooftree}


(Note that in practice -- e.g. in type-theory based programming
languages `Lean`, `Haskell`, `ML`, ... -- we write "$f\ x$" for
"$f(x)$").

\begin{prooftree}
  \AxiomC{$\Gamma \vdash f \doteq f' : \Pi_{(x:A)} B(x)$}
  \RightLabel{ev-eq}
  \UnaryInfC{$\Gamma, x:A \vdash f(x) \doteq f'(x) : B(x)$}
\end{prooftree}


## $\Pi$-computation rule

We need to postulate rules controlling our functions. 

The $\beta$-*rule* stipulates that $\lambda x. b(x)$ behaves in the
way that we understand the function $x \mapsto b(x)$.

\begin{prooftree}
  \AxiomC{$\Gamma,x:A \vdash b(x):B(x)$}
  \RightLabel{$\beta$}
  \UnaryInfC{$\Gamma,x:A \vdash (\lambda y.b(y))(x) \doteq b(x) : B(x)$}
\end{prooftree}

The second rule -- known as the $\eta$-*rule* -- postulates that the
*only* elements of $\Pi_{(x:A)}B(x)$ are dependent functions.

\begin{prooftree}
  \AxiomC{$\Gamma \vdash f:\Pi_{(x:A)}B(x)$}
  \RightLabel{$\eta$}
  \UnaryInfC{$\Gamma \vdash \lambda x.f(x) \doteq f : \Pi_{(x:A)}B(x)$}
\end{prooftree}

# Ordinary function types

We obtain ordinary functions as a special case of dependent functions.
Let's describe the setting.

Suppose that $A$ and $B$ are types in context $\Gamma$. We can
view $B$ as the "constant family" $B(x) = B$ over $a:A$.
From this point of view, we obtain the type of functions as
$$A \to B := \Pi_{(x:A)} B(x)$$
i.e.
$$A \to B := \Pi_{(x:A)}B$$

Here is the formal derivation:

\begin{prooftree}
  \AxiomC{$\Gamma \vdash A \type$} 
  \AxiomC{$\Gamma \vdash B \type$}
  \RightLabel{$W$}
  \BinaryInfC{$\Gamma,x:A \vdash B\type$}
  \RightLabel{$\Pi$}
  \UnaryInfC{$\Gamma \vdash \Pi_{(x:A)} B \type$}
\end{prooftree}


And here is the formal declaration of the "new notation":

\begin{prooftree}
  \AxiomC{$\Gamma \vdash A \type$} 
  \AxiomC{$\Gamma \vdash B \type$}
  \RightLabel{$W$}
  \BinaryInfC{$\Gamma,x:A \vdash B\type$}
  \RightLabel{$\Pi$}
  \UnaryInfC{$\Gamma \vdash \Pi_{(x:A)} B \type$}
  \RightLabel{defn}  
  \UnaryInfC{$\Gamma \vdash A \to B := \prd{x:A}B$}
\end{prooftree}



## Construction of the *identity function*

Given a type $A$ in context $\Gamma$, let's construct the identity function
$\id = \id_A:A \to A$ using the *generic term*:

\begin{prooftree}
\AxiomC{$\Gamma \vdash A \type$}
\RightLabel{$\delta$}
\UnaryInfC{$\Gamma, x:A \vdash x:A$}
\RightLabel{$\lambda$-intro}
\UnaryInfC{$\Gamma \vdash \lambda x.x:A \to A$}
\RightLabel{defn}
\UnaryInfC{$\Gamma \vdash \id_A :=\lambda x.x:A \to A$}
\end{prooftree}

## Construction of the composition of two functions

Given types $A$, $B$, $C$ and terms $f:A \to B$, $g:B \to C$, we
can form $g \circ f:A \to C$.

In fact, write $\comp(g,f)$ for $g \circ f$. Then $\comp$ is in some
sense a function of two arguments $g$ and $f$. Let's pause to discuss functions of
multiple arguments.

Consider a function
$$f : A \to (B \to C)$$
For an argument $a:A$, $f(a):B \to C$ so $f(a)$ is again a function.
For $b :B$, we can write
$$f(a)(b) \quad \text{or} \quad f(a,b) \quad \text{or} \quad f\ a \ b$$
for the value of $f(a)$ at $b:B$.

Now we see that the type of the function $\comp$ is
$$(B \to C) \to ((A \to B) \to (A \to C))$$
Thus for $g:B \to C$, we have $\comp(g):(A \to B) \to (A \to C).$

We are going to define $\comp$ by the rule
$$\comp = \lambda g.\lambda f. \lambda x.g(f(x))$$.

Before we give the derivation, we need a preliminary result using the *generic element*


\begin{equation*}
  (\clubsuit)
  \begin{prooftree}
  \AxiomC{$\Gamma \vdash A \type$}
  \AxiomC{$\Gamma \vdash B \type$}
  \RightLabel{$\Pi$-formation}
  \BinaryInfC{$\Gamma \vdash A \to B \type$}
  \RightLabel{$\delta$}
  \UnaryInfC{$\Gamma, f:A \to B \vdash f:A \to B$}
  \RightLabel{$\Pi$-elimination}
  \UnaryInfC{$\Gamma, f:A \to B, x : A \vdash f(x):B$}
\end{prooftree}
\end{equation*}

Now here is the full derivation:

\begin{prooftree}
  \AxiomC{$\Gamma \vdash A \type$}
  \AxiomC{$\Gamma \vdash B \type$}
  \RightLabel{$\clubsuit$}
  \BinaryInfC{$\Gamma, f:A \to B, x : A \vdash f(x):B$}
  \RightLabel{W}
  \UnaryInfC{$\Gamma, g:B \to C, f:A \to B, x:A \vdash f(x):B$}

  \AxiomC{$\Gamma \vdash B \type$}
  \AxiomC{$\Gamma \vdash C \type$}
  \RightLabel{$\clubsuit$}  
  \BinaryInfC{$\Gamma, g:B \to C, y : B \vdash g(y):C$}
  \RightLabel{W}
  \UnaryInfC{$\Gamma, g:B \to C, f:A \to B,  y : B \vdash g(y):C$}
  \RightLabel{W}
  \UnaryInfC{$\Gamma, g:B \to C, f:A \to B,  x : A, y : B \vdash g(y):C$}
  
  \RightLabel{subst}
  \BinaryInfC{$\Gamma, g:B \to C, f:A \to B, x:A \vdash g(f(x)) : C$}
  \RightLabel{$\lambda$-intro}
  \UnaryInfC{$\Gamma, g:B \to C, f:A \to B \vdash \lambda x.g(f(x)) : A \to C$}
  \RightLabel{$\lambda$-intro}
  \UnaryInfC{$\Gamma, g:B \to C \vdash \lambda f.\lambda x.g(f(x)) : (A \to B) \to (A \to C)$}
  \RightLabel{$\lambda$-intro}
  \UnaryInfC{$\Gamma \vdash \lambda g.\lambda f.\lambda x.g(f(x)) : (C \to B) \to ((A \to B) \to (A \to C))$}
\end{prooftree}

One can now derive a number of properties of function composition:

- associativity, i.e.
  \begin{prooftree}
    \AxiomC{$\Gamma \vdash f:A \to B$}
	\AxiomC{$\Gamma \vdash g:B \to C$}
	\AxiomC{$\Gamma \vdash h:C \to D$}
	\TrinaryInfC{$\Gamma \vdash (h \circ g) \circ f \doteq h \circ (g \circ f):A \to D$}
  \end{prooftree}

- left and right unit laws
  \begin{prooftree}
    \AxiomC{$\Gamma \vdash f : A \to B$}
	\UnaryInfC{$\Gamma \vdash \id_B \circ f \doteq f : A \to B$}
  \end{prooftree}
  
  \begin{prooftree}
    \AxiomC{$\Gamma \vdash f : A \to B$}
	\UnaryInfC{$\Gamma \vdash f \circ \id_A \doteq f : A \to B$}
  \end{prooftree}


# Bibliography


::: {.refs} 
:::
