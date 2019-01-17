texinputs := TEXINPUTS=.:macros//:
all: 01.pdf 02.pdf 03.pdf 04.pdf 05.pdf 06.pdf 07.pdf 08.pdf 09.pdf 10.pdf 11.pdf zap-priklady.pdf


%-sol.pdf: %.tex
	${texinputs} pdfcslatex -jobname $(basename $@) '\def\WITHsol{} \input $<'

%.pdf: %.tex
	${texinputs} pdfcslatex $(basename $@).tex

clean:
	rm -f *.log *.pdf *.fmt *.aux
