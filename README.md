# WS2811_SCORE_BOARD

![Tablica](https://github.com/jarwyg/WS2811_SCORE_BOARD/blob/main/img/Tablica.png "Tablica")

Projekt elektroniki sterującej tablicą wyników zbudowanej z wykorzystaniem pasków LED WS2811.

# Firmware

Firmware jest napisany w jęzku c.
Projekt był stworzony w Eclipse z AVR plugin (kompilator avr-gcc). Katalog Release zawiera pliki makefile więc można projekt skompliować z poziomu terminala.
Gotowe pliki binarne można znaleźć poniżej

[Firmware Release v1.2](https://github.com/jarwyg/WS2811_SCORE_BOARD/releases/tag/v1.2)


# Receiver

Odbiornik działa na mikrokontrolerze Atmega88/168/328 (16MHz - zawnętrzny oscylator).
Czas jest brany z RTC PCF8563.
Płytka powinna mieć wgrany bootloader z arduino UNO. Dzięki temu po podłączeniu przejściówki USB-UART łatwiej będzie wgrać aktualizację/zobaczyć debug podczas pracy układu. Tablica prawdopodobnie będzie w niedostępnym miejscu więc zalecam zostawienie długiego przewodu USB/RS232 

PCB
![PCB_RX](https://github.com/jarwyg/WS2811_SCORE_BOARD/blob/main/img/RX_PCB.png "PCB_RX")


# Transmitter

Pilot działa na mikrokontrolerze Atmega88/168/328 (8MHz - wewnętrzny oscylator)
Domyślnie jest w trybie uśpienia i pownien pobierać mniej niż 70uA.
Komunikacja z odbiornikiem odbywa się tylko w jedną stronę.

Opis przycisków
![Opis przycisków](https://github.com/jarwyg/WS2811_SCORE_BOARD/blob/main/img/Remote_description.png "Opis przycisków")

PCB
![PCB_TX1](https://github.com/jarwyg/WS2811_SCORE_BOARD/blob/main/img/TX_PCB1.png "PCB_TX1")
