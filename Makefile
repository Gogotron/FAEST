MAIN=main
SRCTEX=$(wildcard *.tex content/*.tex)

all: slides

slides: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(SRCTEX)
	pdflatex -interaction=batchmode -shell-escape $<

clean:
	rm -f $(MAIN).pdf \
		$(MAIN).bbl $(MAIN).log $(MAIN).out \
		$(MAIN).aux $(MAIN).blg $(MAIN).nav \
		$(MAIN).snm $(MAIN).toc


.PHONY: all report clean
