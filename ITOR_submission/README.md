# ITOR submission sources

All manuscript text, equations, tables, algorithms, and captions are contained
in `main.tex`. The five figures are in the adjacent `fig/` directory.

ITOR's required class `itor.cls` and bibliography style `itor.bst` are
retained unmodified. `references.bib` remains separate, as recommended
by Wiley for production.

## Compile

From this directory, run

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Or use the traditional sequence `pdflatex main.tex`, `bibtex main`,
`pdflatex main.tex`, `pdflatex main.tex`.

## Upload through Wiley Research Exchange

A GitHub Actions workflow named `ITOR submission build` compiles the paper
and creates a ready-to-upload source ZIP. Download the
`ITOR_submission-ready` workflow artifact containing `main.pdf`
and `ITOR_submission_sources.zip`.

Wiley permits a ZIP of LaTeX sources, including referenced figures and
style/bibliography files, together with the compiled PDF.
The ZIP contains exactly `main.tex`, `itor.cls`, `itor.bst`,
`references.bib`, and `fig/`. Its root contains `main.tex`.
Do not upload logs, auxiliary files, or this README.

The ITOR guidelines specify a maximum of 25 pages and 150 abstract words.
Check the PDF page count before submission.
