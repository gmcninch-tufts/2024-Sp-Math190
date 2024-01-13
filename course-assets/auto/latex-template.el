(TeX-add-style-hook
 "latex-template"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=2cm") ("xcolor" "svgnames")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "color"
    "palatino"
    "mathpazo"
    "enumerate"
    "mathtools"
    "hyperref"
    "geometry"
    "minted"
    "xcolor")
   (TeX-add-symbols
    '("topline" 3)
    "myname"
    "assignment")
   (LaTeX-add-environments
    "problem")
   (LaTeX-add-counters
    "problem"))
 :latex)

