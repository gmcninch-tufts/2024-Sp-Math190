---
author: George McNinch
title: Resources -- LaTeX
date: 2024-01-01
---

# LaTeX


This term, your solutions to each homework assignment (and report)
should be submitted to [gradescope](https://www.gradescope.com) as
a ``PDF`` file.

Since your solutions will need to contain mathematical symbols etc.,
I'd like you to learn to ``typeset`` your homework solutions using
``LaTeX`` -- see
[https://en.wikipedia.org/wiki/LaTeX](https://en.wikipedia.org/wiki/LaTeX). (It
is anyhow likely to be useful to you to know some ``LaTeX``...!)


## Overleaf


One way to produce ``LaTeX`` without having to install a bunch of
software on your computer is to use the online tool
[Overleaf](https://www.overleaf.com/).

And overleaf has a [handy
tutorial](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
which you are encouraged to peruse.

This tutorial has some good answers to the question "why learn
``LaTeX``?", including:

>  LaTeX is used all over the world for scientific documents, books,
>  as well as many other forms of publishing. Not only can it create
>  beautifully typeset documents, but it allows users to very quickly
>  tackle the more complicated parts of typesetting, such as inputting
>  mathematics, creating tables of contents, referencing and creating
>  bibliographies, and having a consistent layout across all sections.

and the tutorial points out the following very important fact:

>  One of the most important reasons people use LaTeX is that it
>  separates the content of the document from the style.

So you edit a plain text file whose name is usually of the form
``*.tex``, and then ``LaTeX`` is used to transform this file
ultimately into a ``PDF``.  When you use overleaf, you edit the
``*.tex`` file in the overleaf editor, and you (more-or-less)
immediately see the output of the transformation performed by
``LaTeX``. And once you are happy with the appearance and content, you
can save the resulting ``PDF`` file to your computer (and then submit
it to [gradescope](http://www.gradescope.com) in the case of a
homework assignment).

## Template


[Here is a link for a very basic
template](/course-assets/latex-template.tex) for homework assignments
that you can start with. I've also include the contents of this template in this post -- see below.

This template makes some stylistic choices that you are of course
welcome to change! You may begin experimenting with this as
follows. First, create a project in overleaf. Next, delete the
template that is provided for the new project, and paste this into the
editor. Now, when you click "recompile", overleaf should render the
output.



----

\newpage
``` {.latex}
\documentclass{article}
   
\usepackage{graphicx, color}
\usepackage{palatino, mathpazo}
\usepackage{enumerate, mathtools}
\usepackage{hyperref}
\usepackage[margin=2cm]{geometry}
\usepackage{minted}
\usemintedstyle{tango}
\usepackage[svgnames]{xcolor}
%
% Edit me!!
%
\newcommand{\myname}{MyName}
\newcommand{\assignment}{Homework \(n\)}
%
%
\newcounter{problem}
\newenvironment{problem}{
\refstepcounter{problem}
\noindent
{\color{NavyBlue}\textbf{Problem \theproblem.}}

\noindent
\hspace{.02\textwidth}
\begin{minipage}[t]{.98\textwidth}}
{\end{minipage}
\vspace{5mm}}


%% ----------------------------------------------------
%% topline is a bit like a function of 3 "variables", 
%% referred to as #1, #2, and #3
%% ----------------------------------------------------
\newcommand{\topline}[3]{
\noindent
{
\color{NavyBlue}
\begin{minipage}[t]{.35\textwidth}
#1
\end{minipage}
\begin{minipage}[t]{.35\textwidth}
#2
\end{minipage}
\begin{minipage}[t]{.30\textwidth}
#3
\end{minipage}
\hrule
}
}

%% ------------------------------------------------------
%% end of topmatter
%%-------------------------------------------------------

\begin{document}

\topline{Math 087 - Fall 2020}{Assignment 0}{\myname}

\vspace{2cm}

\begin{problem}
Here is the first homework problem solution.
\[\int_{-\infty}^\infty e^{-x^2}dx = \sqrt{\pi}.\]
\end{problem}

\begin{problem}
Here is the second homework problem solution.
It has some parts:
\begin{enumerate}[(a)]
\item One aspect of this problem.
  
  Some further discussion.

  Still more...
\item Another aspect
\end{enumerate}
And it has a 
\href{http://www.tufts.edu}{URL reference (Tufts)}.
%% ----------------------------------------------------     
%% the command \href and the behavior of
%% \begin{enumerate}[(a)] ...
%% depend on some of the packages we loaded in the
%% topmatter.
%% ----------------------------------------------------   
\end{problem}

\begin{problem}
  Here we include some computer code.

  \begin{minted}[bgcolor=Lavender]{Python}
    def square(x): 
    return x*x
    
    map(square,[1,2,3])
  \end{minted}
\end{problem}
\end{document}
```






