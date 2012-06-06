LATEX = latex
BIBTEX= bibtex
MAKEINDEX= makeindex
HTML = latex2html
PDF = pdflatex
PS2PDF = ps2pdf
DVIPS = dvips
HTMLDIR = $(HOME)/link/homepage/docs/
TOPTITLE = Animation of Captured Surface Data
HTMLVERSION = 4

DOC = thesis
CORR = corrections
SUBDOCS = conclusion.tex symbols.tex dispmapanim.tex introduction.tex scandata.tex thesis.tex dispmapcreation.tex litreview.tex skeletalanim.tex
BIBS = ../bib/papers.bib ../bib/r.smith.bib ../bib/weblinks.bib

doc:	$(DOC).tex $(SUBDOCS) $(BIBS) images graphs
	$(LATEX) $(DOC)
	$(BIBTEX) $(DOC)
	$(MAKEINDEX) $(DOC).glo -s nomencl.ist -o $(DOC).gls
	$(LATEX) $(DOC)
	$(LATEX) $(DOC)

corrections: $(CORR).tex
	$(LATEX) $(CORR)

images:		
	$(MAKE) -C ../images

graphs:		
	$(MAKE) -C ../graphs

html:	doc
	$(HTML) -t $(TOPTITLE) -html_version $(HTMLVERSION) -dir $(HTMLDIR)$(DOC) $(DOC)

pdf:	doc
	$(PDF) $(DOC)

corrpdf: corrections
	$(PDF) $(CORR)

pspdf:	ps
	$(PS2PDF) $(DOC).ps

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
	rm -f *.loa
	rm -f *.out
	rm -f *.gls
	rm -f *.glo
	rm -f *.ilg

distclean: clean
	rm -f *.dvi
	rm -f *.pdf
	rm -f *.ps
