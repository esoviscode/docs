# Architect meeting 
Rozplanowanie architektury projektu - modularnego monolitu. Moduły są od siebie koncepcyjnie oddzielone, mogą się porozumiewać za pomocą wyspecyfikowanych interfejsów.

## Moduły
- discorda
- logiki gry
- komunikacji z bazą danych

Moduły składają się z submodułów. Moduł udostępnia na zewnątrz niektóre funkcjonalności submodułów.

## Moduł Discorda

### Opis
Moduł, który realizuje obsługę discord.py. 
- Rejestruje bota
- rejestruje komendy
- przeprowadza komunikację
- zapisuje numery kanałów oraz id użytkowników

### Submoduły
- communication - bezpośrednia komunikacja z graczem
    - ~~moduł odbierający~~
    - ~~moduł wysyłający~~
    - ~~moduł setup~~
    - każda komenda jest oddzielnym *modułem*
- init - inicjalizacja bota


## Moduł logiki gry

### Opis
Moduł zajmuje się obsługą wszystkich zdarzeń zachodzących podczas rozgrywki.
- poruszanie się po mapie
- system walki
- system tur
- system zarządzania postacią:
    - ekwipunkiem
    - skillami
- tworzenie postaci
- generowanie grafik mapy i UI
- system fabuły 
    - generowanie scenariusza gry
    - opisywanie świata przez GM
    - generowanie losowych zdarzeń
- obsługa wydarzeń pomiędzy lochami
- obsługa wydarzeń/akcji działających na graczach (np. debuffy)
Moduł definiuje model danych

### Submoduły
- moduł generowania grafik 
    - wygenerowanie mapy na podstawie widoku gracza
- moduł danych 
    - zawiera klasy np. gracz, istota, item, świat
- moduł lobby
    - tworzy i dodaje graczy do lobby
- moduł fabuły i wydarzeń w grze
    - wie o wszystkim co się dzieje w świecie gry
    - wtrąca się w akcje istot
    - podejmuje znaczące decyzje
- moduł tur 
    - wykonywanie tur istot
    - w trakcie wykonywania akcji sprawdzenie w module fabuły i wydarzeń w grze czy nie nastąpiło zdarzenie wyjątkowe, które może zakończyć się przerwaniem akcji
- moduł zarządzania postacią
    - daje możliwość edycji ekwipunku i wyposażenia graczy
    - udostępnia informacje o statystykach, ekwipunku i wyposażeniu gracza



## Moduł BD

### Opis
Łączy się z bazą danych, udostępnia odpowiedni interfejs. 
Wstępna technologia: **Python Database API**

### Submoduły

## Pętla gry - jedna iteracja

Jedna tura wszystkich graczy i przeciwników

- GM może coś wprowadzić do gry
- Przejście przez wszystkie istoty zgodnie z ich inicjatywami i umożliwienie im wykonania ruchu/tury

### Tura istoty:

- Możliwość wykonania dowolnych akcji o ile pozwalają na to punkty akcji 
- GM może przerwać akcję wprowadzając jakieś zmiany

