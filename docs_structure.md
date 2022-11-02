# Struktura dokumentacji
Dokumentacja powinna składać się z trzech głównych części:
1. Project making process
2. Reference guide
3. User guide

## Project Making Process
Dział dokumentacji opisujący proces tworzenia projektu. Dokumentacja w tym dziale powinna być na bieżąco uzupełniana, aby można było później łatwo zamienić ją w wymagane dokumenty wyspecyfikowane na SPG: https://projektgrupowy.eti.pg.edu.pl/pages/documents w zakładce **wzorce dokumentów**. Składa się z następujących części:
### Product:
Plik markdownowy składający się z następujących paragrafów
1. opis produktu -> ogólny kilkuzdaniowy opis celu projektu
2. wymagania funkcjonalne produktu z wyraźnym uwzględnieniem minimalnych wymagań

### Sprints:
Folder, w którym każdy etap tworzenia projektu(sprint), będzie oddzielnym folderem składającym się z dwóch plików markdownowych:
#### sprint plan
w każdym pliku:
1. ogólny opis etapu
2. wyszczególnione konkretne zadania do wykonania w danym etapie i kto jest odpowiedzialny za te zadania (powinno sie tu wykorzystać taski z Jiry, ewentualnie troche je uogólnić na większe zadania, łącząc kilka tasków i zapisując je jako jedno zadanie)
#### sprint summary
Dokument sporządzany po zakończeniu etapu, podsumowujący prace i wyniki, wyliczający zmiany względem początkowych planów, które nastąpiły podczas realizacji zadań(na przykład przełożenie jakichś czynności do kolejnego etapu lub całkowite z nich zrezygnowanie).

## Reference guide
Część dokumentacji opisująca techniczne aspekty projektu, ogólne informacje o strukturze projektu, modułach i narzędziach użytych podczas jego tworzenia.  Powinien tam się znajdowac plik (Getting Started) opisujący ogólnie wszystkie pliki projektu i osobny plik dla każdego pliku projektu opisujący go w szczegółach (wszystkie klasy i funkcje i ich cel i przykłady zastosowania tam gdzie to może być niejasne).

## User guide
Część dokumentacji przeznaczona dla przyszłych użytkowników produktu. Powinna składać się z następujących paragrafów:
1. Getting Started -> ogólny opis zastosowania bota i jego funkcjonalności
2. New Game -> instrukcja stworzenia nowej gry i zaproszenia do niej użytkowników oraz tego jak do tej gry dołączyć
3. Chracter Creation -> opis tworzenia postaci, możliwych klas postaci, ich cech szczególnych i atrybutów
4. How to play -> Opis rozgrywki, instrukcja obsługi interfejsu, tego jak działa walka i eksploracja.
5. How to end -> Opis możliwych scenariuszy zakończenia rozgrywki.

# Schemat struktury
## Project Making Process
### - Product
### - Sprints
#### -- sprint{number}
##### --- sprint{number} plan
##### --- sprint{number} summary

## Reference guide
### - Getting Started
### - {Module name}
### .
### .
### .

## User guide
### - Getting Started
### - New Game
### - Character Creation
### - How to play
### - How to end