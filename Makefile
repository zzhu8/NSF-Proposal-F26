PAPER = main
FIGDIR = graphs

export TEXINPUTS := .:$(TEXINPUTS):$(FIGDIR)

final:
	pdflatex $(OUTPUT) $(PAPER) 
	-bibtex $(BIBOPT) $(PAPER)
	pdflatex $(OUTOPT) $(PAPER) 
	pdflatex $(OUTOPT) $(PAPER)
	rm -f *.dvi paper.ps *.gz *.log *.aux  *.blg *.bbl *~* *.fls *.fdb* $(PAPER).out

clean:
	rm -f *.dvi paper.ps *.gz *.log *.aux  *.blg *.bbl *~* *.fls *.fdb* $(PAPER).out

pdf:
	pdflatex $(PAPER); bibtex $(REFS); pdflatex $(PAPER); pdflatex $(PAPER);
