# 华侨大学项目建议书 LaTeX 模板编译脚本

LATEX  = xelatex
MAIN   = main

.PHONY: all clean cleanall

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex hqu-proposal.cls figures/logo1.pdf figures/logo2.pdf
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	$(LATEX) -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.synctex.gz
	rm -f *.bbl *.blg

cleanall: clean
	rm -f $(MAIN).pdf
