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


# Overview

So far, we have chosen to use the term *code* for a vector subspace
$C$ of $\F_q^n$.  The idea is that we are interested in encoding some
data by identifying it with vectors in $\F_q^k$.

If $G$ is a *generator matrix* for our code in *standard form*, then we *encode*
our data: given a vector $v \in \F_q^k$, the encoded version is
$$v \cdot G \in \F_q^n.$$

Note that -- since $G$ is in standard form -- if $v = (v_1,\cdots,v_k)$ then
$$v\cdot G = (v_1,\cdots,v_k,w_{k+1},\cdots,w_n)$$
for some scalars $w_j \in \F_q.$

Our intent is to "*transmit*" this encoded data
