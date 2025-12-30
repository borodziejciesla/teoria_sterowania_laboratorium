#!/bin/bash

# Nazwa folderu na pliki tymczasowe
OUT_DIR="build"

# Tworzenie folderu, jeśli nie istnieje
mkdir -p "$OUT_DIR"

echo "Kompilacja plików .tex do folderu $OUT_DIR..."

# -pdf: generuje PDF
# -outdir: wskazuje folder na pliki wynikowe i tymczasowe
latexmk -pdf -interaction=nonstopmode -outdir="$OUT_DIR" *.tex

# Opcjonalnie: Kopiowanie gotowych PDF-ów z powrotem do głównego folderu
cp "$OUT_DIR"/*.pdf . 2>/dev/null

echo "Gotowe! Pliki PDF znajdziesz w folderze głównym oraz w '$OUT_DIR'."