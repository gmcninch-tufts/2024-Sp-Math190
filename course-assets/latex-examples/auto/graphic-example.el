(TeX-add-style-hook
 "graphic-example"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "graphicx"
    "color"))
 :latex)

