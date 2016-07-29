CLS = kgwpstd.cls

STY = algorithm2e.sty url.sty

%.pdf: %.tex $(CLS) $(STY)
	pdflatex $*
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $*.log)\
	do pdflatex $*; done

clean:
	rm -f *.aux *.log *.blg *.pdf
