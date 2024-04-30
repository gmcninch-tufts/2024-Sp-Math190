---
title: |
  Overview on Formalization - Type Theory part 3
date: 2024-04-08
---


\newcommand{\type}{\ \text{type}}
\newcommand{\id}{\operatorname{id}}
\newcommand{\prd}[1]{\Pi_{(#1)}}
\newcommand{\comp}{\operatorname{comp}}
\newcommand{\List}{\operatorname{List}}
\newcommand{\nnil}{\operatorname{nil}}
\newcommand{\cons}{\operatorname{cons}}


# Inductive Types

Here I mostly want to "explain a little via some examples", referring you to
the text [@rijkeIntroductionHomotopyType] for more details and full definitions.

The main point to emphasize is that *inductive types* share some of
the features of the $\Pi$-types -- i.e. types of (dependent or
ordinary) functions.

Inductive types are specified by:
- *constructors* AKA *introduction rules*
- an *induction principle* AKA *elimination rules*
- *computation rules*

## Natural numbers $\mathbf{N}$

- *formation rule*

\begin{prooftree}
\AxiomC{}
\UnaryInfC{$ \vdash ℕ \type$}
\end{prooftree}

- *introduction rules* (constructors)

\begin{prooftree}
 \AxiomC{}
 \UnaryInfC{$ \vdash 0_ℕ : ℕ$}
\end{prooftree}
\quad \quad \quad
\begin{prooftree}
 \AxiomC{}
 \UnaryInfC{$ \vdash \succ:ℕ → ℕ$}
\end{prooftree}

- induction principle

\begin{prooftree}
  \AxiomC{$\Gamma,n:\mathbf{N} \vdash P(n) \type$}
  \noLine
  \UnaryInfC{$\Gamma \vdash p_0:P(0_\mathbf{N})$}
  \noLine
  \UnaryInfC{$\Gamma \vdash p_S:\prd{n:\mathbf{N}}(P(n) \to P(\succ n))$}
  \RightLabel{$\mathbf{N}$-ind}
  \UnaryInfC{$\Gamma \vdash \operatorname{ind_\mathbf{N}}(p_0,p_S):\prd{n:\mathbf{N}}P(n)$}
\end{prooftree}

## List A

Let's describe the inductive type of *Lists*.  More precisely, for a type $A$,
let's describe the type whose elements are *lists* of elements of $A$.

- *formation rule*

\begin{prooftree}
  \AxiomC{$\Gamma \vdash A \type$}
  \RightLabel{List-formation}
  \UnaryInfC{$\Gamma\vdash \List A \type$}
\end{prooftree}

- *introduction rules*; ie. the *constructors*.

  There are two introduction rules for lists. The first one forms the
  *empty list*:
  
  \begin{prooftree}
   \AxiomC{$\Gamma\vdash A \type$}
   \UnaryInfC{$\Gamma \vdash \nnil: \List A$}
  \end{prooftree}
  
  The second one constructs ("`cons`") a list from a term of type $A$ and an existing $\List A$.
  
  \begin{prooftree}
   \AxiomC{$\Gamma \vdash A \type$}
   \UnaryInfC{$\Gamma \vdash \cons:A \to \List A \to \List A$}
  \end{prooftree}

- the induction principle or elimination rule

  We must stipulate what is needed to construct a section of a type family
  over the inductive type -- i.e. a dependent function.
  
  The idea is this: for our inductive type $A$, in order to define a
  dependent function $f:\prd{x:A}B(x)$ one must specify the behavior
  of $f$ at the constructors of $A$.

  Here is our induction principle for $\List A$:

\begin{prooftree}
  \AxiomC{$\Gamma,l:\List(L) \vdash P(l) \type$}
  \noLine
  \UnaryInfC{$\Gamma \vdash p_{\nnil}:P(\nnil)$}
  \noLine
  \UnaryInfC{$\Gamma \vdash p \cons:\prd{l:\List A}(A \to P(x) \to P(\succ n))$}
  \RightLabel{$\mathbf{N}$-ind}
  \UnaryInfC{$\Gamma \vdash \operatorname{ind \mathbf{N}}(p_0 , p_S):\prd{n:\mathbf{N}}P(n)$}
\end{prooftree}



(iii) The computation rules assert that the inductively defined section agrees
on the constructors with the data that was used to define the section. Thus,
there is a computation rule for every constructor



# Bibliography

::: {.refs} 
:::
