# ITOR submission version

This directory contains a self-contained ITOR-formatted version of the Firebreak Placement manuscript, based on `main_review.tex` on `main` at commit `dbe92065a33fb5d5d6bbf7e24692e0856637f966`.

The research text and section structure, equations, labels, tables, figures, and citations are preserved. The front matter uses the agreed title, abstract, and keywords. The LaTeX class `itor.cls` and bibliography style `itor.bst` are unmodified copies of the supplied ITOR template.

## Compilation

Run in this directory:

```sh
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

Alternatively, `latexmk -pdf main.tex` can handle the passes on a full TeX installation. For submission, include the compiled PDF and all sources in this directory.

Volume, journal year, and DOI metadata are deliberately left blank for the ITOR production editor. The root manuscript `main_review.tex` has not been modified.
