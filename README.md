# Laboratorium Teorii Sterowania – Pakiet Materiałów Dydaktycznych

Repozytorium zawiera komplet materiałów do ćwiczeń z przedmiotu **Teoria
Sterowania**: notatki, instrukcje laboratoryjne, przykłady i pliki
pomocnicze (obrazy, skrypty MATLAB/Simulink, Python). Materiały łączą teorię
matematyczną z praktyczną symulacją w środowisku MATLAB/Simulink.

## 📂 Zawartość Repozytorium

### Zakres tematyczny

Każdy moduł zawiera teoretyczne wprowadzenie, przykłady obliczeniowe oraz zadania laboratoryjne:

1. **[01] Portrety Fazowe** – Analiza układów 2. rzędu, typy punktów równowagi, postać Jordana i Frobeniusa.
2. **[02] Metody Częstotliwościowe** – Kryteria Michajłowa i Nyquista,
   charakterystyki Bodego, Nyquista i Nicholsa, zapasy stabilności.
3. **[03] Metoda Lapunowa** – Badanie stabilności układów nieliniowych (metoda bezpośrednia i pośrednia), twierdzenie La Salle'a.
4. **[04] Kryteria Koła i Popova** – Stabilność absolutna układów z nieliniowością w sektorze (układy Lurie).
5. **[05] Optymalizacja Parametryczna** – Dobór nastaw regulatorów (P, PI, PID) według wskaźników jakości (ISE, IAE, ITAE).
6. **[06] Układy Dyskretne** – Transformata Z, metody dyskretyzacji (Euler,
   Tustin) oraz implementacja cyfrowa.

### Struktura plików

Repozytorium zawiera zestaw folderów o nazwie *0x_zagadnienie*, każdy powiązany z osobnym zagadnieniem.
Kazdy znich zawiera następującą strukturę plików i folderów:

* 📂*przyklady* - folder zawierajacy live scripty MATLABA z przykładami do
  ćwiczenia,
* 📂*fig* - grafiki do notatek i instrukcji,
* *0x_zagadnienie.tex* - plik źródłowy do pliku z wprowadzeniem teoretycznym do
  ćwiczenia,
* *0x_zagadnienie.pdf* - wygenerowany plik PDF z wprowadzeniem teoretycznym do
  ćwiczenia,
* *0x_zagadnienie_instrukcja.tex* - plik źródłowy z instrukcją do wykonania ćwiczenia,
* *0x_zagadnienie_instrukcja.pdf* - wygenerowany plik PDF z instrukcją do wykonania ćwiczenia.

## 🚀 Kluczowe Funkcjonalności Skryptów

* **Wizualizacje 2D/3D**: Automatyczne generowanie pól wektorowych i trajektorii fazowych.
* **Weryfikacja Symboliczna**: Wykorzystanie *Symbolic Math Toolbox* do analitycznego wyznaczania granic fazy i punktów krytycznych.
* **Animacje**: Interaktywne skrypty pokazujące m.in. zasadę argumentu.

## 🛠 Wymagania

Do poprawnego uruchomienia wszystkich przykładów zalecane jest środowisko **MATLAB R2024b** lub nowsze z zainstalowanymi toolboxami:

* Control System Toolbox,
* Optimization Toolbox,
* Symbolic Math Toolbox,
* Simulink.

## 💡 Jak korzystać z materiałów?

1. Sklonuj repozytorium: `git@github.com:borodziejciesla/teoria_sterowania_laboratorium.git`
2. Otwórz folder z wybranym ćwiczeniem w MATLABie.
3. Otwórz PDF z notatkami, aby przeczytać wrowadzenie teoretyczne.
4. Uruchom live script (np. `michajlow.mlx`) z folderu *przyklady*, aby zobaczyć
   przykładowe rozwiązanie problemów/wizualizacje/itp, użyj interaktywnych
   suwaków aby sprawdzić jakie zachodzą zmiany dla różnych parametrów problemu.
5. Przejdź do PDF-a z instrukcją, aby wykonać zadania laboratoryjne.

## ✍️ Autorzy

**Maciej Różewicz** Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie  
Wydział Elektrotechniki, Automatyki, Informatyki i Inżynierii Biomedycznej

**Dariusz Cieślar** Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie  
Wydział Elektrotechniki, Automatyki, Informatyki i Inżynierii Biomedycznej

---
*Materiały zostały przygotowane na rok akademicki 2025/2026.*
