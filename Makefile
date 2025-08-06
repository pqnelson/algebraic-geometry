TEX=tex
FILE=algeo

all:
	$(TEX) $(FILE)
	mv toc2.tex toc.tex
	$(TEX) $(FILE)
	mv toc2.tex toc.tex

pdf: all
	dvipdfmx $(FILE).dvi

bib:
	$(TEX) $(FILE)
	bibtex $(FILE)
	$(TEX) $(FILE)
	mv toc2.tex toc.tex
	$(TEX) $(FILE)
	dvipdfmx $(FILE).dvi

clean:
	rm $(FILE).log
	rm $(FILE).aux