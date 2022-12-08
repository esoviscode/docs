# Architect meeting (08.12.2022)

## Wymagane moduły:

*Moduły wymagane do implementacji lobby gry*

- discorda:
    - init - inicjalizacja bota
    - communication - implementacja komend
        - `/create`
        - `/join password`
        - `/start password`

- logiki gry:
    - moduł lobby
    - moduł danych (szczegóły na [wiki](https://github.com/esoviscode/discord-bot/wiki/Game-concept#lobby)) 
        - User
        - Game

- moduł BD
    - połączenie bazy danych

## Sekwencja setupu

1. Zaproś bota na serwer
2. Bot wysyła wiadomośc powitalną w formie instrukcji użytkowania

## Sekwencja działania lobby

1. Host wywołuje komendę `/create` na kanale prywatnym lub na kanale serwerowym. 
    - wyświetlona zostaje wiadomość zapraszająca oraz *password* do dołączenia do gry
2. Każdy z graczy (w tym host) wywołuje komendę `/join <password>`
    - bot pisze do gracza: *Witaj w lobby [...]* oraz wypisuje:
        - jacy gracze są już w lobby oraz ich gotowość
        - jakie są ustawienia gry(kampania, poziom trudności itp) 
        - przycisk *Ready* do zaanansowania swojej gotowości 
3. Host w lobby ma możliwość zmiany ustawień gry
    - przyciski lub jeden przycisk
4. Host ma dostępny przycisk start, który stanie się aktywny po tym gdy wszyscy gracze zaanonsują swoją gotowość.
5. Host klika przycisk start
    - w ramach dewelopmentu zostanie wyświetlone każdemu graczowi, że gra została rozpoczęta z danymi graczami


## Dodatkowe koncepcje
- UI
    - wstępny *draft* może być zrobiony w html/css
    - możliwość wyabstrahowania elementów w UI, aby używać funkcji, które będą umieszczać dane elementy w odpowiednich sekcjach np. (jest przeznaczone miejsce na ikonkę i istnieje funkcja, która przyjmuję wybraną ikonke jako parametr i automatycznie ją tam wstawia) - wszystko w procesie tworzenia grafiki np. w openCV 