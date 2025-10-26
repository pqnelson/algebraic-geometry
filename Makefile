TEX=tex
FILE=algeo

all: img
	$(TEX) $(FILE)
	$(TEX) $(FILE)
	mv toc2.tex toc.tex

pdf: all
	dvipdfmx $(FILE).dvi

bib: img
	$(TEX) $(FILE)
	bibtex $(FILE)
	$(TEX) $(FILE)
	mv toc2.tex toc.tex
	$(TEX) $(FILE)
	dvipdfmx $(FILE).dvi

.PHONY: img
img:
	cd img && make -f Makefile

clean:
	rm $(FILE).log
	rm $(FILE).aux
	rm $(FILE).blg $(FILE).bbl
	rm $(FILE).toc