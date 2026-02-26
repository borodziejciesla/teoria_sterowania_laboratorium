#!/usr/bin/env bash
set -euo pipefail

# Skrypt buduje kolejno "skrypt" i "instrukcję" z każdego podfolderu ćwiczenia
# Użycie: ./build_exercises.sh [NUMER]
# Jeśli podano NUMER (np. 3 lub 03) buduje tylko odpowiadający folder, inaczej buduje wszystkie.
# NOTE: Wynikowe pliki PDF będą tworzone w tym samym folderze co odpowiadające pliki .tex.

usage() {
  echo "Użycie: $0 [NUMER]
  NUMER: opcjonalny numer ćwiczenia (np. 3 lub 03). Bez argumentu buduje wszystkie." >&2
}

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # (Reset)

if [[ ${1:-} == "-h" || ${1:-} == "--help" ]]; then
  usage
  exit 0
fi

select_folders() {
  if [[ -n ${1:-} ]]; then
    # Przyjmujemy zarówno '3' jak i '03'
    num=$(printf "%02d" "$1")
    # dopasuj folder zaczynający się od numeru (ale nie 00)
    [[ "$num" != "00" ]] && for d in "${num}_"*; do
      [[ -d "$d" ]] && echo "$d"
    done
  else
    # wszystkie foldery zaczynające się od dwucyfrowego prefiksu (pomiń 00_*)
    for d in ??_*; do
      [[ -d "$d" && "$d" != "00_"* ]] && echo "$d"
    done
  fi
}

build_file() {
  local folder="$1"
  local file="$2"
  echo -e "${GREEN}--- Buduję: $folder / $file ${NC}"
  # uruchamiamy latexmk tak, żeby pdf powstał w tym samym folderze co .tex
  (cd "$folder" && latexmk -pdf -interaction=nonstopmode "$file") > build.log
  local rc=$?
  if [[ $rc -ne 0 ]]; then
    echo -e "${RED}Błąd podczas budowy $folder/$file (kod: $rc)${NC}" >&2
    return $rc
  fi
  # usuń pliki tymczasowe (zostaw pdf) z katalogu źródłowego
  (cd "$folder" && latexmk -c "$file" 2>/dev/null || true)
  return 0
}

main() {
  local arg=${1:-}
  local folders
  mapfile -t folders < <(select_folders "$arg")
  if [[ ${#folders[@]} -eq 0 ]]; then
    echo -e "${RED}Nie znaleziono folderów do budowy dla argumentu: ${arg}${NC}" >&2
    exit 1
  fi

  for f in "${folders[@]}"; do
    # domyślne pliki: <folder>.tex i <folder>_instrukcja.tex
    base=$(basename "$f")
    # możliwe podstawowe nazwy plików
    candidates=("${base}.tex" "${base}_instrukcja.tex")
    for c in "${candidates[@]}"; do
      if [[ -f "$f/$c" ]]; then
        build_file "$f" "$c" || echo -e "${YELLOW}Kontynuuję mimo błędu w $f/$c${NC}"
      fi
    done
  done
}

main "${1:-}"
