texinputs := TEXINPUTS=.:macros//:
all: 01

01:
	${texinputs} pdflatex 01.tex

%-sol.pdf: %.tex
	${texinputs} pdfcslatex -jobname $(basename $@) '\def\WITHsol{} \input $<'

clean:
	rm -f *.log *.pdf *.fmt *.aux
