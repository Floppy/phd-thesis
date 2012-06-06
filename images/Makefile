MOGRIFY = mogrify
GZIP = gzip
GREP = grep
PNGS = $(shell ls *.png)
JPGS = $(shell ls *.jpg)
EPSS = $(patsubst %.png, %.eps, $(PNGS)) $(patsubst %.jpg, %.eps, $(JPGS))

eps: $(EPSS)

distclean:
	rm -f *.eps

${patsubst %.png,%.eps,${wildcard *.png}}: %.eps: %.png
	$(MOGRIFY) -format eps $<

${patsubst %.jpg,%.eps,${wildcard *.jpg}}: %.eps: %.jpg
	$(MOGRIFY) -format eps $<
