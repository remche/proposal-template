all: cleanup whitepaper
	@echo "done"

whitepaper:
	pdflatex whitepaper && bibtex whitepaper && pdflatex whitepaper && pdflatex whitepaper

cleanup:
	@rm -f *.mlf* *.mlt* *.mtc* *.out *.nlo *.aux *.log *.toc *.maf *.lof *.lot *.bbl *.blg *.brf

clean: cleanup
	@rm -f *.pdf
