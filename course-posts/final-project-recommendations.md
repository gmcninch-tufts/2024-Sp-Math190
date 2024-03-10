---
author: George McNinch
title: |
 Final Project Recommendations
date: 2024-03-09
---



# Including graphical images in your report

If you produce your report using `LaTeX` (recommended!) the following example shows how
to include graphical images:

  - [[latex example with graphics]](/course-assets/latex-examples/graphic-example.tex)
	[[graphic]](/course-assets/latex-examples/graph-example.png)
	[[pdf]](/course-assets/latex-examples/graphic-example.pdf)

The main point here is that you need to use the `graphicx` package

``` latex
\usepackage{graphicx, color}
```

and that the command

```latex
  \includegraphics[scale=.5]{graph-example}
```
displays the graphic found in the file named `graph-example.png` (or `graph-example.jpg` or...)

The `[pdf]` link shows the output. To use this yourself, you'll need
to save the `latex` file as well as the `png` graphic file. You can
read a bit more
[here](https://www.overleaf.com/learn/latex/Inserting_Images) about
how to use this in overleaf. You'll need to *upload* the file
`graph-example.png` to Overleaf...

# Video recommendations

- The *simplest* way to make the required video for the final project
  is to film yourself speaking while writing on a whiteboard or
  chalkboard.

- A better method is to use video-editing software which will allow
  you to narrate your talk while displaying *slides* which you might
  produce in `LaTeX` using the package `beamer`.
  
  Try *googling* (or searching on `youtube`) for something like:
  
  `presentations using latex and beamer`
  
  - Example of video-editing software: [`openshot`](https://www.openshot.org/)

  - discussion of `beamer` at the `overleaf` site: [`beamer`](https://www.overleaf.com/learn/latex/Beamer)
  
  - using these tools will make it easier to *visually demonstrate
    some aspect of mathematics involved in your report*
  
  - here is an example of some beamer slides:
  
    [[latex]](/course-assets/latex-examples/beamer-example.tex)
	[[graph]](/course-assets/latex-examples/graph-example.png)
	[[pdf]](/course-assets/latex-examples/beamer-example.pdf)

    This example includes an illustration of how to include *images* in a latex file.
	In order to use this example, you'll need to save both the `LaTeX`
	file and the graphical `png` file.

    The `[pdf]` link shows the output. To use this yourself, you'll need
	to save the `latex` file as well as the `png` graphic file. You can
	read a bit more
	[here](https://www.overleaf.com/learn/latex/Inserting_Images) about
	how to use this in overleaf. You'll need to *upload* the file
	`graph-example.png` to Overleaf...
