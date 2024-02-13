PANDOC=pandoc
SHELL=bash

MD_FILES_PROTOKOLLE=$(wildcard Protokolle/*/*.md)
MD_FILES_SATZUNG=$(wildcard Satzung/*.md)
PDF_FILES = $(patsubst Protokolle/%.md, pdf/%.pdf,$(MD_FILES_PROTOKOLLE)) $(patsubst Satzung/%.md, pdf/%.pdf,$(MD_FILES_SATZUNG))

.PHONY: all
all: $(PDF_FILES)

pdf/%.pdf: Protokolle/%.md
	mkdir -p $(shell dirname $@)
	pandoc --resource-path=. --resource-path=$(basename $<) --table-of-contents --template pandoc-latex-template/eisvogel.tex "$<" -o "$@"

pdf/%.pdf: Satzung/%.md
	mkdir -p $(shell dirname $@)
	pandoc --table-of-contents --template pandoc-latex-template/eisvogel.tex "$<" -o "$@"

clean:
	@rm $(PDF_FILES) || true
