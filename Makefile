all: cleanup whitepaper whitepaper-fr
	@echo "done"

whitepaper:
	pdflatex whitepaper && bibtex whitepaper && pdflatex whitepaper && pdflatex whitepaper

whitepaper-fr:
	pdflatex whitepaper-fr && bibtex whitepaper-fr && pdflatex whitepaper-fr && pdflatex whitepaper-fr

cleanup:
	@rm -f *.mlf* *.mlt* *.mtc* *.out *.nlo *.aux *.log *.toc *.maf *.lof *.lot *.bbl *.blg *.brf

clean: cleanup
	@rm -f *.pdf
