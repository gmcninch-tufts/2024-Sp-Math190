#-*-mode: makefile -*-

META=--metadata-file=build-assets/metadata.yaml
BEAMER_META=--metadata-file=build-assets/beamer-metadata.yaml

PD=pandoc --standalone --from markdown -V linkcolor:red --citeproc
CMD=/home/george/.local/bin/course report

VPATH = .:representation-theory:coding

CSS_DEFAULT="build-assets/default.css"


posts=$(wildcard course-posts/*.md)
pages=$(wildcard course-pages/*.md)
problems=$(wildcard problem-sets/*.md)

pages_pdf=$(pages:.md=.pdf)
problems_pdf=$(problems:.md=.pdf)


all: pages problems

pages: $(pages_pdf)
problems: $(problems_pdf)

%-slides.html: %.md
	$(PD) $(META) $< build-assets/biblio.md --css=$(CSS_DEFAULT) -V slideous-url=$(SLIDEOUS) -t slidy --mathjax=$(MJ)  -o $@

%.pdf: %.md
	$(PD) $(META) $< build-assets/biblio.md --pdf-engine=xelatex --resource-path=$(RP) -t latex -o $@

.PHONY: echoes

echoes:
	@echo $(pages)
	@echo $(pages_pdf)
#	@echo $(notes2)
#	@echo $(PDF)


.PHONY: clean

clean: clean_pdf clean_html

clean_pdf:
	-rm -f $(notes_pdf)

clean_html:
	-rm -f $(notes_html)
