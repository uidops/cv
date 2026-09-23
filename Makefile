TEX := xelatex
SRC := work/cv.tex
PDF := work/cv.pdf

AUX := \
	./cv.log \
	./texput.log \
	work/cv.aux \
	work/cv.log \
	work/cv.out \
	work/cv.toc \
	work/cv.lof \
	work/cv.lot \
	work/cv.fls \
	work/cv.fdb_latexmk \
	work/cv.synctex \
	work/cv.synctex.gz \
	work/cv.xdv

.PHONY: all clean

all: $(PDF)
	@rm -f $(AUX)

$(PDF): $(SRC)
	$(TEX) -interaction=nonstopmode -halt-on-error -output-directory=work $(SRC)
	$(TEX) -interaction=nonstopmode -halt-on-error -output-directory=work $(SRC)

clean:
	@rm -f $(PDF) $(AUX)
