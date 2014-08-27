#-----------------------------------------------------------------

all: Protokoll8.tex
	pdflatex Protokoll8.tex
	bibtex Protokoll8
	pdflatex Protokoll8.tex
	pdflatex Protokoll8.tex

clean: 
	rm -f $(PROG) *.o *.toc *.log *.aux *.bbl *.blg
