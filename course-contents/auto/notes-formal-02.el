(TeX-add-style-hook
 "notes-formal-02"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("geometry" "top=2cm" "bottom=2cm" "left=2cm" "right=2cm")))
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
    "amsmath"
    "amssymb"
    "iftex"
    "fontenc"
    "inputenc"
    "textcomp"
    "unicode-math"
    "lmodern"
    "upquote"
    "microtype"
    "parskip"
    "xcolor"
    "hyperref"
    "mathrsfs"
    "mathtools"
    "amscd"
    "geometry"
    "color"
    "bussproofs"
    "selnolig"
    "bookmark"
    "xurl")
   (TeX-add-symbols
    '("prd" 1)
    "tightlist"
    "type"
    "id"
    "comp")
   (LaTeX-add-labels
    "a-derivation-about-renaming-variables"
    "dependent-function-types"
    "pi-formation-rule"
    "pi-introduction-rule"
    "pi-elimination-rule"
    "pi-computation-rule"
    "ordinary-function-types"
    "construction-of-the-identity-function"
    "construction-of-the-composition-of-two-functions"
    "bibliography"
    "bibliography-1"))
 :latex)

