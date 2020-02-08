FONTS:=-Nfontname="Fira Sans" -Nfontsize=36 -Efontname="Fira Sans" -Efontsize=36 -Gfontname="Fira Sans" -Gfontsize=36

all: xds-overview.pdf xds.pdf

xds.pdf: *.tex *.dot
	xelatex xds.tex
	xelatex xds.tex

xds-overview.pdf: xds-overview.dot
	dot -Tpdf xds-overview.dot $(FONTS) > xds-overview.pdf
