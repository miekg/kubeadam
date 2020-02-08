all: xds-overview.pdf xds.pdf

xds.pdf: *.tex *.dot
	xelatex xds.tex
	xelatex xds.tex

xds-overview.pdf: xds-overview.dot
	dot -Tpdf xds-overview.dot -Nfontname="Fira Sans" -Nfontsize=11 -Efontname="Fira Sans" -Efontsize=11 > xds-overview.pdf
