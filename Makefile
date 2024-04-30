#-*-mode: makefile -*-

META=--metadata-file=build-assets/metadata.yaml
BEAMER_META=--metadata-file=build-assets/beamer-metadata.yaml

PD=pandoc --standalone --from markdown -V linkcolor:red --citeproc
CMD=/home/george/.local/bin/course report

PFP=--lua-filter build-assets/prefix-path.lua -MpathToProjectRoot=/home/george/Classes/2024-Sp-Math190/
PFC=--lua-filter build-assets/color-sols.lua

VPATH = .:course-pages:course-posts:course-assets/images:course-contents

CSS_DEFAULT="build-assets/default.css"

content=$(wildcard course-contents/*.md)
content_pdf=$(content:.md=.pdf)
content_tex=$(content:.md=.tex)

problems=$(wildcard course-assignments/*.md)
problems_pdf=$(problems:.md=.pdf)

pages=$(wildcard course-pages/*.md)
pages_pdf=$(pages:.md=.pdf)


all: problems content pages

content: $(content_pdf) 

problems: $(problems_pdf)
pages: $(pages_pdf)

%-slides.html: %.md
	$(PD) $(META) $< build-assets/biblio.md --css=$(CSS_DEFAULT) -V slideous-url=$(SLIDEOUS) -t slidy --mathjax=$(MJ)  -o $@


%.pdf: %.md
	$(PD) $(META) $< build-assets/biblio.md --pdf-engine=xelatex $(PFP) $(PFC) --resource-path=$(RP) --highlight-style=zenburn -o  $@

%.tex: %.md
	$(PD) $(META) $< build-assets/biblio.md --pdf-engine=xelatex $(PFP) $(PFC) --resource-path=$(RP) --highlight-style=zenburn -t latex -o $@

.PHONY: echoes

echoes:
	@echo $(pages)
	@echo $(pages_pdf)
	@echo $(posts)
	@echo $(posts_pdf)
	@echo $(content)
	@echo $(content_pdf)


.PHONY: clean

clean: clean_pdf clean_html

clean_pdf:
	-rm -f $(notes_pdf)

clean_html:
	-rm -f $(notes_html)
