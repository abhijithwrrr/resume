# Resume - Abhijith Warrier

Professional resume of Abhijith Warrier, an experienced Android Mobile Developer specializing in Kotlin and Jetpack Compose.

## Overview

This repository contains a LaTeX-formatted resume showcasing 3+ years of experience in Android mobile development with expertise in:
- **Kotlin** programming
- **Jetpack Compose** for modern UI development
- Android SDK and architecture patterns
- Clean Architecture and MVVM

## Requirements

To build the resume PDF, you need:
- LaTeX distribution (e.g., TeX Live, MiKTeX, or MacTeX)
- `pdflatex` compiler
- Required LaTeX packages: `fontawesome`, `hyperref`, `geometry`, `titlesec`, `xcolor`

### Installing LaTeX

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install texlive-latex-extra texlive-fonts-recommended
```

**macOS:**
```bash
brew install --cask mactex
```

**Windows:**
Download and install [MiKTeX](https://miktex.org/download) or [TeX Live](https://www.tug.org/texlive/)

## Building the Resume

### Using Make (Recommended)

```bash
# Build the PDF
make

# Clean build artifacts
make clean

# Clean everything including PDF
make clean-all

# View the generated PDF
make view
```

### Manual Build

```bash
# Compile the LaTeX file (run twice for proper formatting)
pdflatex resume.tex
pdflatex resume.tex
```

## Output

The build process generates `resume.pdf` in the root directory.

## Customization

To customize the resume:
1. Edit `resume.tex` with your preferred LaTeX editor or text editor
2. Modify sections such as:
   - Personal information (name, contact details)
   - Professional summary
   - Technical skills
   - Work experience
   - Projects
   - Education
   - Certifications
3. Rebuild the PDF using `make` or `pdflatex`

## Structure

```
.
├── README.md          # This file
├── resume.tex         # LaTeX source file
├── Makefile          # Build automation
└── .gitignore        # Git ignore rules
```

## License

This resume template is provided as-is for personal use.
