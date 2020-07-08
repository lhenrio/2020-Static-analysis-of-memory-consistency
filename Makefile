MAIN=main.tex
PDFNAME=2020-memory-consistency.pdf

all: $(PDFNAME)

$(PDFNAME): $(MAIN) references.bib
	rubber --pdf  $(MAIN)
	mv main.pdf $(PDFNAME)


clean:
	rm *.log *.aux *.bbl *.blg $(PDFNAME) *~
