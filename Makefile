#-----------------------------------------------------------------
QUELL=main.cpp
PROG=main
CC=g++
CFLAGS=-Wall
#-----------------------------------------------------------------
OBJECTS=$(QUELL:.cpp=.o)
all: $(PROG)

$PROG: $(OBJECTS)
	$(CC) $(CFLAGS) $(QUELL) -o$@

%.o: %-cpp
	$(CC) $(CFLAGS) -c $< -o $@
	./main

Protokoll8.pdf: Protokoll8.tex
	pdflatex Protokoll8.tex
	bibtex Protokoll8
	pdflatex Protokoll8.tex
	pdflatex Protokoll8.tex
	rm -f $(PROG) *.o *.toc *.log *.aux *.bbl *.blg

clean: 
	rm -f $(PROG) *.o *.toc *.log *.aux *.bbl *.blg
