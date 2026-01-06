# Laboratorium Teorii Sterowania – Pakiet Materiałów Dydaktycznych

Repozytorium zawiera kompletny zestaw skryptów do laboratoriów z przedmiotu **Teoria Sterowania**, opracowany z myślą o studentach Automatyki i Robotyki. Materiały łączą teorię matematyczną z praktyczną symulacją w środowisku MATLAB/Simulink.

## 📂 Zawartość Repozytorium

Każdy moduł zawiera teoretyczne wprowadzenie, przykłady obliczeniowe oraz zadania laboratoryjne:

1. **[01] Portrety Fazowe** – Analiza układów 2. rzędu, typy punktów równowagi, postać Jordana i Frobeniusa.
2. **[02] Metody Częstotliwościowe** – Kryteria Michajłowa i Nyquista,
   charakterystyki Bodego, Nyquista i Nicholsa, zapasy stabilności.
3. **[03] Metoda Lapunowa** – Badanie stabilności układów nieliniowych (metoda bezpośrednia i pośrednia), twierdzenie La Salle'a.
4. **[04] Kryterium Koła i Popova** – Stabilność absolutna układów z nieliniowością w sektorze (układy Lurie).
5. **[05] Optymalizacja Parametryczna** – Dobór nastaw regulatorów (P, PI, PID) według wskaźników jakości (ISE, IAE, ITAE).
6. **[06] Układy Dyskretne** – Transformata Z, metody dyskretyzacji (Euler, Tustin) oraz implementacja cyfrowa.

## 🚀 Kluczowe Funkcjonalności Skryptów

* **Wizualizacje 2D/3D**: Automatyczne generowanie pól wektorowych i trajektorii fazowych.
* **Weryfikacja Symboliczna**: Wykorzystanie *Symbolic Math Toolbox* do analitycznego wyznaczania granic fazy i punktów krytycznych.
* **Animacje Edukacyjne**: Interaktywne skrypty pokazujące m.in. Zasadę Argumentu (liczenie obrotów wektora wokół punktu -1).
* **Modele Simulink**: Gotowe schematy do badania nieliniowości i procesów dyskretnych.

## 🛠 Wymagania

Do poprawnego uruchomienia wszystkich przykładów zalecane jest środowisko **MATLAB R2024a** lub nowsze z zainstalowanymi toolboxami:

* Control System Toolbox,
* Simulink,
* Symbolic Math Toolbox.

## 💡 Jak korzystać z materiałów?

1. Sklonuj repozytorium: `git@github.com:borodziejciesla/teoria_sterowania_laboratorium.git`
2. Otwórz wybrany folder w MATLABie.
3. Uruchom skrypt główny (np. `michajlow.mlx`), aby zobaczyć wizualizację
   kryterium stabilności Michajłowa.
4. Przejdź do PDF-a z instrukcją, aby wykonać zadania laboratoryjne.

## ✍️ Autor

**Maciej Różewicz** Akademia Górniczo-Hutnicza im. Stanisława Staszica w Krakowie  
Wydział Elektrotechniki, Automatyki, Informatyki i Inżynierii Biomedycznej

---
*Materiały zostały przygotowane na rok akademicki 2025/2026.*
