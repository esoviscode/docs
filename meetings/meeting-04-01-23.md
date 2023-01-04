# Architect Meeting (04.01.2023)

## Faza Lobby:

### Lobby:
- stworzenie przycisku, który odpowiada komendzie `/join id` w wiadomości tworzenia lobby.
- implementacja lepszego wyglądu *widoku* lobby tj. lista graczy; obok każdego inny kolorek zrealizowane za pomocą emoji. Host ma koronkę. Token powininen być również pokazany. Lobby powinno być dynamiczne tj wiadomość jest edytowana przy każdej aktualizacji. 
- dodać przycisk *ready*
    - dodanie statusu gotowości
- dodanie przycisku start tylko dla hosta

### Implementacyjne:
- dodanie funkcji edytującej wiadomość.

### Konfiguracyjne:
- dodanie informacji, że bot słucha np **/help**, wylistowanie wypróbowanie jego poleceń itd,
- usprawnienie procesu releasowego:
    - automatyczne dawanie taga przy pushu na main
    - generowanie release notsów

### Dokumentacyjne
- reorganizacja głównej strony wiki:
    - spis treści
    - popatrzeć na ładne wiki innych znanych repo i zrobić coś w ich stylu
- dokumentacja projektowa

## Faza II

### DB
- **!ważne** implementacja pełnego modelu danych

### API

- wymyślenie interfejsu zapytań (***api***) -> do odciny

### GUI
- generowanie mapy w OpenCV
    - dostaje macierz mapy(podłogi) oraz macierz encji i je rysuje
    - asset na podstawie wartości w macierzy
- dodanie przycisków GUI, funkcjonalne mają być co najmniej do poruszania
- równolegle do przycisków są komendy
    - do poruszania komendy *pion poziom* przyjmujące wartość poruszenia sie w danej osi

### Logika
- stworzenie klasy świata
    - funkcja init
        - losowe generowanie świata
            - podłogi
            - encji
    - przechowuje informacje o świecie
    - robi backup do bazy danych co np. 5 tur
- stworzenie mechanizmu tur
    - ustawienie wszystkich encji w kolejności inicjatywy
    - wywołuje funkcje ruch po kolei na każdej z encji
        - pokazuje nowy stan gry 
    - jeżeli przyjdzie kolej na gracza
        - przyciski ruchu stają się aktywne dla tego gracza
        - pokazanie nowego stanu gry po każdej akcji gracza
