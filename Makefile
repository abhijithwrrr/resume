.PHONY: all clean view

# Default target
all: resume.pdf

# Generate PDF from LaTeX source
resume.pdf: resume.tex
	pdflatex resume.tex
	pdflatex resume.tex

# Clean build artifacts
clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.fdb_latexmk *.fls *.bbl *.blg *.bcf *.run.xml *.xdv

# Clean everything including PDF
clean-all: clean
	rm -f resume.pdf

# View the generated PDF (requires a PDF viewer)
view: resume.pdf
	@if command -v xdg-open > /dev/null; then \
		xdg-open resume.pdf; \
	elif command -v open > /dev/null; then \
		open resume.pdf; \
	else \
		echo "Please open resume.pdf manually"; \
	fi

# Help target
help:
	@echo "Available targets:"
	@echo "  all (default) - Build the resume PDF"
	@echo "  clean         - Remove build artifacts"
	@echo "  clean-all     - Remove build artifacts and PDF"
	@echo "  view          - Open the generated PDF"
	@echo "  help          - Show this help message"
