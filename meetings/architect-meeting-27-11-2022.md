# Architect meeting 
Rozplanowanie architektury projektu - modularnego monolitu. Moduły są od siebie koncepcyjnie oddzielone, mogą się porozumiewać za pomocą wyspecyfikowanych interfejsów.

## Moduły
- discorda
- logiki gry
- komunikacji z bazą danych

## Moduł Discorda

### Opis
Moduł, który realizuje obsługę discord.py. 
- Rejestruje bota
- rejestruje komendy
- przeprowadza komunikację
- zapisuje numery kanałów oraz id użytkowników

### Submoduły
- communication - bezpośrednia komunikacja z graczem
    - moduł odbierający
    - moduł wysyłający
    - moduł setup
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
- 


## Moduł BD

### Opis
Łączy się z bazą danych, udostępnia odpowiedni interfejs. *Wymagane!*: **REST API w springu**

### Submoduły

