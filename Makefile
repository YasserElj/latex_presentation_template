.PHONY: all example clean

all: presentation.pdf

presentation.pdf: presentation.tex preamble.tex config.tex
	latexmk -xelatex -interaction=nonstopmode presentation.tex

example:
	latexmk -xelatex -interaction=nonstopmode -cd example/sics_presentation.tex

clean:
	latexmk -C
	latexmk -C -cd example/sics_presentation.tex
