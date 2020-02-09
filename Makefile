FONTS:=-Nfontname="Fira Sans Light" -Nfontsize=12 -Efontname="Fira Sans Light" -Efontsize=12 -Gfontname="Fira Sans Light" -Gfontsize=12

all: xds-overview.pdf xds-bin.pdf xds.pdf

xds.pdf: *.tex *.dot
	xelatex xds.tex
	xelatex xds.tex

xds-overview.pdf: xds-overview.dot
	dot -Tpdf xds-overview.dot $(FONTS) > xds-overview.pdf

xds-bin.pdf: xds-bin.dot
	dot -Tpdf xds-bin.dot $(FONTS) > xds-bin.pdf
