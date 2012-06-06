LATEX = latex
BIBTEX= bibtex
HTML = latex2html
PDF = pdflatex
DVIPS = dvips
HTMLDIR = $(HOME)/homepage/docs/
TOPTITLE = VSSP-TR-3/99
HTMLVERSION = 3

DOC = vssp-tr-3_99
BIBS = ../bib/papers.bib ../bib/r.smith.bib

doc:	$(DOC).tex $(BIBS)
	$(LATEX) $(DOC)
	$(BIBTEX) $(DOC)
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)

html:	doc
	$(HTML) -t $(TOPTITLE) -html_version $(HTMLVERSION) -dir $(HTMLDIR)$(DOC) $(DOC)

pdf:	doc
	$(PDF) $(DOC)

ps:	doc
	$(DVIPS) $(DOC) -o

clean:
	rm -f *.bbl
	rm -f *.blg
	rm -f *.aux
	rm -f *.log
	rm -f *~
	rm -f .log
	rm -f *.toc
	rm -f *.lof
	rm -f *.lot

distclean: clean
	rm -f *.dvi
	rm -f *.pdf
	rm -f *.ps
