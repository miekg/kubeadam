FONTS:=-Nfontname="Fira Sans Light" -Nfontsize=12 -Efontname="Fira Sans Light" -Efontsize=12 -Gfontname="Fira Sans Light" -Gfontsize=12
DOT:= $(patsubst %.dot,%.pdf,$(wildcard *.dot))

all: xds.pdf

xds.pdf: *.tex $(DOT)
	xelatex xds.tex
	xelatex xds.tex

%.pdf: %.dot
	dot -Tpdf $< $(FONTS) > $(basename $<).pdf

.PHONY: clean
clean:
	rm *.pdf
