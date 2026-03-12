MAIN=main
SRCTEX=$(wildcard *.tex content/*.tex)

all: slides

slides: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(SRCTEX)
	pdflatex -interaction=batchmode -shell-escape $<

clean:

.PHONY: all report clean
