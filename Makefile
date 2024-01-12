#-*-mode: makefile -*-

META=--metadata-file=build-assets/metadata.yaml
BEAMER_META=--metadata-file=build-assets/beamer-metadata.yaml

PD=pandoc --standalone --from markdown -V linkcolor:red --citeproc
CMD=/home/george/.local/bin/course report

VPATH = .:representation-theory:coding

CSS_DEFAULT="build-assets/default.css"

TOPIC_DIRS=course-posts
LOGISTIC_DIRS=course-pages

lectures=$(wildcard *md,$(foreach fd, $(TOPIC_DIRS), $(fd)/*.md))

notes_pdf=$(lectures:.md=.pdf)
#notes_html=$(notes:.md=.html)
notes_slides=$(lectures:.md=-slides.html)

logistics=$(wildcard *md,$(foreach fd, $(LOGISTIC_DIRS), $(fd)/*.md))
logistics_pdf=$(logistics:.md=.pdf)
#logistics_html=$(logistics:.md=.html)

pacing_md = $(wildcard pacing/*.md)


all: logistics

notes: $(notes_pdf) $(notes_slides)
pacing: $(pacing_md) $(pacing)
logistics: $(logistics_pdf) $(pacing_md)

# %.html: %.md
# 	$(PD) $(META) $< build-assets/biblio.md --css=$(CSS_DEFAULT) --mathjax=$(MJ) --to html  -o $@

%-slides.html: %.md
	$(PD) $(META) $< build-assets/biblio.md --css=$(CSS_DEFAULT) -V slideous-url=$(SLIDEOUS) -t slidy --mathjax=$(MJ)  -o $@

%.pdf: %.md
	$(PD) $(META) $< build-assets/biblio.md --pdf-engine=xelatex --resource-path=$(RP) -t latex -o $@

%.md: Math135-AY2023-spring.dhall topics/notes.dhall topics/assignments.dhall
	$(CMD) $<	


.PHONY: echoes

echoes:
	@echo $(notes)
	@echo $(notes_pdf)
#	@echo $(notes2)
#	@echo $(PDF)


.PHONY: clean

clean: clean_pdf clean_html

clean_pdf:
	-rm -f $(notes_pdf)

clean_html:
	-rm -f $(notes_html)
