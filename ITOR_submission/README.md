# ITOR submission

The source archive `ITOR_submission_sources.zip` contains **nine files** at
its root, with `main.tex` at the top level, the five figures inside
`fig/`, and `itor.cls`, `itor.bst`, and `references.bib` alongside
`main.tex`. The ZIP contains no auxiliary files or source comments
from earlier manuscript drafts.

The LaTeX source already contains the full manuscript, including tables,
equations and figure captions. The class and BibTeX files remain separate
because ITOR requires its own macro package and Wiley recommends BibTeX
for production.

## Compiled PDF required

Wiley Research Exchange accepts the source ZIP, but **also requires a
compiled PDF of the same manuscript**. To compile locally, run this command
from this directory after installing a full TeX Live distribution.

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Or run `./build_submission.sh` to compile `main.pdf`, report its
page count and regenerate the source ZIP from the current files.

The journal limits papers to 25 pages and abstracts to 150 words.
Verify the generated PDF and enter the data availability statement
when prompted in Wiley Research Exchange.

A GitHub Actions compile was attempted, but the job did not start on
a runner, so compilation could not be certified via the repository.
