#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
command -v latexmk >/dev/null || { echo "latexmk is required" >&2; exit 1; }
command -v zip >/dev/null || { echo "zip is required" >&2; exit 1; }
latexmk -pdf -file-line-error -interaction=nonstopmode -halt-on-error main.tex
test -s main.pdf
if command -v pdfinfo >/dev/null 2>&1; then
  pages="$(pdfinfo main.pdf | awk '/^Pages:/ {print $2}')"
  echo "ITOR PDF page count: $pages"
  if (( pages > 25 )); then echo "WARNING: ITOR 25-page limit exceeded" >&2; exit 2; fi
fi
rm -f ITOR_submission_sources.zip
zip -q -r ITOR_submission_sources.zip main.tex itor.cls itor.bst references.bib fig
unzip -t ITOR_submission_sources.zip
echo "Created main.pdf and ITOR_submission_sources.zip"
