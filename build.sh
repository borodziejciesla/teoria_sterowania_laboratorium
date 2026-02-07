#!/bin/bash

# Nazwa folderu wynikowego
OUT_DIR="build"

# Tworzy folder, jeśli nie istnieje
mkdir -p "$OUT_DIR"

echo "Kompilacja plików .tex..."

# -pdf: wymusza PDF
# -outdir: kieruje WSZYSTKO (pdf + tymczasowe) do folderu build
# -interaction=nonstopmode: nie przerywa pracy przy błędach
latexmk -pdf -interaction=nonstopmode -outdir="$OUT_DIR" *.tex
latexmk -pdf -interaction=nonstopmode -outdir="$OUT_DIR" *.tex
latexmk -pdf -interaction=nonstopmode -outdir="$OUT_DIR" *.tex

# Jeśli chcesz usunąć pliki tymczasowe z folderu build (zostawiając tylko PDF):
# latexmk -c -outdir="$OUT_DIR"

echo "Zakończono. Wszystkie pliki znajdziesz w folderze: $OUT_DIR"