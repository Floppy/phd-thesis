MOGRIFY = mogrify
GNUPLOT = gnuplot
GZIP = gzip
GREP = grep
GRAPHS = $(shell ls *.p)
EPSS = $(patsubst %.p, %.eps, $(GRAPHS))

all: $(EPSS)

distclean:
	rm -f *.png
	rm -f *.eps
	rm -f *~

${patsubst %.p,%.eps,${wildcard *.p}}: %.eps: %.p
	$(GNUPLOT) $<
	$(MOGRIFY) -format eps $<ng
