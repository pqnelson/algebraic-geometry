These are my notes on algebraic geometry.

I'm more familiar with differential geometry than algebraic geometry,
so I am trying to relate these gadgets with familiar ones.

It's also presenting things to be formalized in [Mizar](https://mizar.uwb.edu.pl/) quicker. There
are annotations in the margins to refer the reader to locations in the
Mizar mathematical library where the results have been formalized.

# Plain TeX macros ("Poor Man's LaTeX")

Probably what might be interesting are the files
[pmlmac.tex](pmlmac.tex) (which is a "poor man's LaTeX" set of macros
in plain TeX) and [pmbook.tex](pmbook.tex) (which is a "poor man's
book documentclass" in plain TeX macros). 

The `pmlmac.tex` has a lot of stuff found in LaTeX, but `pmbook.tex`
is just an crude approximation.

# Building things

**tl;dr** Run `make bib` to produce the PDF with the bibliography included.

I originally wrote this collection of convoluted macros to see if I
could reproduce some fragment of LaTeX in plain TeX. The `Makefile`
builds things with plain TeX then converts it using `dvipdfmx` to a
PDF file.

I found later that XeTeX produces a PDF slightly smaller by a few
bytes. 

And you could, ostensibly, use pdflatex or latex to compile it, if you
wish. 