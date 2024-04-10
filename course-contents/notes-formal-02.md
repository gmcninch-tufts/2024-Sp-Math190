---
title: |
  Overview on Formalization - Type Theory
date: 2024-04-08
---

Parallel to the course [discussions of Lean
usage](https://github.com/gmcninch-tufts/math190formalize/), I want to
give at least a bit of a description of the underlying *dependent type
theory*.

I'm going to follow the first chapter of Egbert Rijke's new text
**Homotopy Type Theory** [[arXiv: Homotopy Type
Theory]](https://arxiv.org/abs/2212.11082) -- (though for now I ignore
the potential homotopy in the type theory.)

The second section of [Theorem Proving in
Lean](https://leanprover.github.io/theorem_proving_in_lean4/) 
vi[@avigadTheoremProvingLean]
is also
good - and `Lean` specific! - but still comes across (to me) as more
of a guide to using Lean than an introduction to type theory (this is
not a criticism, of course!)

All of this really does bump up against an important pedagogical
question: how much type theory does one really need to know in order
to *use* `Lean` to formalize mathematics? 

I'm sure I don't know the answer! In the limited time in this
third-of-a-course, I'm hoping to say a little about "using Lean" as
well as a little about the type theory than enables it.

# Martin-Löf's Type Theory

I'm mostly viewing these notes as a quick exposition of the first
chapter of [Rijke's text](https://arxiv.org/abs/2212.11082)
[@rijkeIntroductionHomotopyType]; probably
you should just read the text!  But maybe these notes will encourage
you to do so...
At any rate, quotes below are taken from [@rijkeIntroductionHomotopyType].

To the newcomer, one of the main questions one probably faces in this
subject is: "what are the differences between type theory and the
usual description of math via set theory?"
The introduction to Rijke's chapter tells us that in type theory:

- every element comes equipped with its type
- set theory is axiomatized in the formal system of first-order logic,
  while type theory is its own formal system.

>  "the expression $a:A$ is not considered a *proposition* -
>  i.e. something which one can assert about an arbitrary element and
>  an arbitrary type -- but is considered to be a judgment ... that is
>  part of the construction of the element $a:A$."

- there is a greater emphasis in type theory on equality of elements
  than in set theory.
  
  Unlike in set theory, where equality is a decidable proposition of
  first-order logic, the type $x=y$ of identifications of two elements
  $x, y:A$ is itself a type.

By way of a general description, we have:

> Dependent type theory is a system of inference rules that can be
> combined to make *derivations* ... the goal is often to construct an
> element of a certain type.


## Judgments and contexts in type theory

In type theory, an *inference rule* is represented symbolically as
follows: $$\dfrac{\mathscr{H}_1 \ \mathscr{H}_2 \ \cdots \
\mathscr{H}_n}{C}.$$ Above the horizontal line is a finite list of
*judgments* $\mathscr{H}_i$ for the *premises*, and below the
horizontal line is a single judgment $C$ for the conclusion.

When we later introduce *function types*, we'll see the following inference rule appear:

$$\dfrac{\Gamma \vdash a:A \quad \Gamma \vdash f:A \to B} {\Gamma
        \vdash f(a):B}.$$ 
		
This means: "in a context $\Gamma$ (more on the notion of context
below!) given an element [^1] $a$ of type $A$ and a function $f:A \to
B$, we obtain an element $f(a)$ of type $B$."

[^1]: Rijke reads "$a:A$" as "$a$ is an element of type $A$". Some
    others read this as "$a$ is a term of type $A$".

Here the *judgments* include $\Gamma \vdash a:A$ and $\Gamma \vdash
f:A \to B$.

In fact, there are just four sorts of judgments in Martin-Löf's
dependent type theory:

- judgment that $A$ is a well-formed type in context $Γ$:
  $$Γ ⊢ A \ \text{type}$$

- judgment that $A$ and $B$ are *judgmentally equal* (or
  *definitionally equal*) in context $\Gamma$: $$Γ ⊢ A \doteq B  \
  \text{type}$$

- judgment that $a$ is an element of type $A$ in context $\Gamma$:
  $$\Gamma \vdash a:A$$
  
- judgment that $a$ and $b$ are *judgmentally equal*  elements of type $A$
  $$\Gamma \vdash a \doteq b : A.$$

Notice that any judgment has the form $\Gamma \vdash \mathscr{J}$
where $\Gamma$ is the *context* and $\mathscr{J}$ is the *judgment
thesis*. It remains to explain the *context* $\Gamma$.

The role of the context is to declare what *hypothetical elements*
(variables) are assumed.

# Bibliography

::: {.refs} 
:::
