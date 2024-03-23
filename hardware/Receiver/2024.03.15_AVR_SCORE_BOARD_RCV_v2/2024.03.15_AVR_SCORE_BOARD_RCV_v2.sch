EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6300 5650 2    50   Input ~ 0
SCK
Text GLabel 6300 5550 2    50   Input ~ 0
MISO
Text GLabel 6300 5450 2    50   Input ~ 0
MOSI
Text GLabel 6300 5350 2    50   Input ~ 0
SS
Text GLabel 8700 4400 0    50   Input ~ 0
SCK
Text GLabel 8700 4500 0    50   Input ~ 0
MISO
Text GLabel 8700 4100 0    50   Input ~ 0
MOSI
Text GLabel 8700 4300 0    50   Input ~ 0
RST
Text GLabel 6250 6650 2    50   Input ~ 0
RST
Text GLabel 11050 6000 0    50   Input ~ 0
SCK
Text GLabel 11050 6100 0    50   Input ~ 0
MISO
Text GLabel 12150 6000 2    50   Input ~ 0
MOSI
Text GLabel 12150 5900 2    50   Input ~ 0
SS
Text GLabel 6300 5250 2    50   Input ~ 0
CE
Text GLabel 11050 5900 0    50   Input ~ 0
CE
Text GLabel 6250 6850 2    50   Input ~ 0
RXD
Text GLabel 6250 6950 2    50   Input ~ 0
TXD
Text GLabel 6200 7550 2    50   Input ~ 0
WS2811_PIN
Text Notes 8450 2750 0    79   ~ 16
AVR-ISP AND UART
Text Notes 3100 2750 0    79   ~ 16
POWER
NoConn ~ 12700 4250
Text Notes 10650 2800 0    79   ~ 16
RTC PCF8563
Wire Wire Line
	6300 5350 6100 5350
Wire Wire Line
	6100 5450 6300 5450
Wire Wire Line
	6300 5550 6100 5550
Wire Wire Line
	6100 5650 6300 5650
Wire Wire Line
	8700 4100 8950 4100
Wire Wire Line
	8700 4400 8950 4400
Wire Wire Line
	8950 4500 8700 4500
Wire Wire Line
	8700 4300 8850 4300
Wire Wire Line
	8850 4300 8950 4300
Wire Wire Line
	8850 3500 8850 3600
Wire Wire Line
	12150 6000 12050 6000
Wire Wire Line
	12050 5900 12150 5900
Wire Wire Line
	11150 6100 11050 6100
Wire Wire Line
	11050 6000 11150 6000
Wire Wire Line
	11000 5800 11150 5800
Wire Wire Line
	6300 5250 6100 5250
Wire Wire Line
	11050 5900 11150 5900
Wire Wire Line
	6250 6850 6100 6850
Wire Wire Line
	6100 6950 6250 6950
Wire Wire Line
	6200 7550 6100 7550
Wire Wire Line
	6100 6450 6250 6450
Wire Wire Line
	6250 6550 6100 6550
Wire Wire Line
	6250 6650 6100 6650
Wire Wire Line
	8850 3900 8850 4300
Connection ~ 8850 4300
Wire Notes Line
	8400 2600 8400 6350
Wire Notes Line
	8400 6350 10450 6350
Wire Notes Line
	10450 6350 10450 2600
Wire Notes Line
	10450 2600 8400 2600
Wire Notes Line
	8250 2600 8250 4300
Wire Wire Line
	12300 3550 12300 3650
Wire Wire Line
	12300 3650 12300 3750
Wire Wire Line
	11100 4650 11100 4450
Wire Wire Line
	11100 3950 11100 4150
Wire Wire Line
	13050 3950 12950 3950
Wire Wire Line
	12950 3950 12700 3950
Wire Wire Line
	12700 4050 12750 4050
Wire Wire Line
	13400 4350 12700 4350
Wire Wire Line
	12950 3950 12950 3650
Wire Wire Line
	12750 3650 12750 4050
Connection ~ 12950 3950
Wire Wire Line
	12950 3350 12950 3150
Wire Wire Line
	12750 3350 12750 3150
Connection ~ 12300 3650
Wire Notes Line
	10550 2600 10550 5350
Wire Notes Line
	10550 5350 14000 5350
Wire Notes Line
	14000 5350 14000 2600
Wire Notes Line
	14000 2600 10550 2600
Wire Notes Line
	3050 4450 3050 8250
Wire Notes Line
	3050 8250 8250 8250
Wire Notes Line
	8250 8250 8250 4450
Wire Notes Line
	8250 4450 3050 4450
Wire Notes Line
	10550 5450 10550 6350
Wire Notes Line
	10550 6350 12600 6350
Wire Notes Line
	12600 6350 12600 5450
Wire Notes Line
	12600 5450 10550 5450
Text Notes 11200 5600 2    79   ~ 16
NRF24l04
Text Notes 3200 4600 0    79   ~ 16
ATMEGA 328
Wire Wire Line
	11700 4350 11700 4300
Wire Wire Line
	11700 4350 11900 4350
Wire Wire Line
	11100 3950 11700 3950
Wire Wire Line
	11700 4000 11700 3950
Connection ~ 11700 3950
Wire Wire Line
	11700 3950 11900 3950
$Comp
L Device:CP C12
U 1 1 5CB91015
P 10750 4300
F 0 "C12" H 10868 4346 50  0000 L CNN
F 1 "1F" H 10868 4255 50  0000 L CNN
F 2 "Moje:C(3,5mm)" H 10788 4150 50  0001 C CNN
F 3 "~" H 10750 4300 50  0001 C CNN
	1    10750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4450 10750 4650
Wire Wire Line
	10750 4150 10750 3650
Wire Wire Line
	10750 3650 11050 3650
Text GLabel 6250 6550 2    50   Input ~ 0
SCL
Text GLabel 6250 6450 2    50   Input ~ 0
SDA
Wire Wire Line
	6250 7150 6100 7150
Text GLabel 13050 3950 2    50   Input ~ 0
SCL
Text GLabel 13050 4050 2    50   Input ~ 0
SDA
Wire Wire Line
	13500 4350 13400 4350
Connection ~ 13400 4350
Wire Wire Line
	13050 4050 12750 4050
Connection ~ 12750 4050
Wire Wire Line
	13400 3650 13400 4350
Wire Wire Line
	12150 5700 12150 5800
Wire Wire Line
	12150 5800 12050 5800
$Comp
L Moje:NRF24l04 U3
U 1 1 65F55076
P 11600 5950
F 0 "U3" H 11600 5463 60  0000 C CNN
F 1 "NRF24l04" H 11600 5569 60  0000 C CNN
F 2 "Moje:NRF24l01" H 11600 6300 60  0001 C CNN
F 3 "" H 11600 6300 60  0001 C CNN
	1    11600 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 65F55F86
P 11000 5800
F 0 "#PWR0101" H 11000 5550 50  0001 C CNN
F 1 "GND" V 11005 5672 50  0000 R CNN
F 2 "" H 11000 5800 50  0001 C CNN
F 3 "" H 11000 5800 50  0001 C CNN
	1    11000 5800
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 65F5695C
P 12150 5700
F 0 "#PWR0102" H 12150 5550 50  0001 C CNN
F 1 "+3.3V" H 12165 5873 50  0000 C CNN
F 2 "" H 12150 5700 50  0001 C CNN
F 3 "" H 12150 5700 50  0001 C CNN
	1    12150 5700
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 65F741A9
P 5500 6350
F 0 "U1" H 6000 7800 50  0000 R CNN
F 1 "ATmega328P-PU" H 5400 7800 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_LongPads" H 5500 6350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5500 6350 50  0001 C CNN
	1    5500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 65FAD65F
P 5450 7950
F 0 "#PWR0103" H 5450 7700 50  0001 C CNN
F 1 "GND" H 5455 7777 50  0000 C CNN
F 2 "" H 5450 7950 50  0001 C CNN
F 3 "" H 5450 7950 50  0001 C CNN
	1    5450 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7950 5450 7900
Wire Wire Line
	5450 7900 5600 7900
Wire Wire Line
	5600 7900 5600 7850
Connection ~ 5450 7900
Wire Wire Line
	5450 7900 5450 7850
$Comp
L Device:R R2
U 1 1 65FC77C7
P 8850 3750
F 0 "R2" H 8920 3796 50  0000 L CNN
F 1 "10k" H 8920 3705 50  0000 L CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 8780 3750 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 660251D8
P 9950 4600
F 0 "#PWR0106" H 9950 4350 50  0001 C CNN
F 1 "GND" H 9955 4427 50  0000 C CNN
F 2 "" H 9950 4600 50  0001 C CNN
F 3 "" H 9950 4600 50  0001 C CNN
	1    9950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4500 9950 4600
$Comp
L Timer_RTC:PCF8563T U4
U 1 1 6602F9D7
P 12300 4150
F 0 "U4" H 12050 4500 50  0000 C CNN
F 1 "PCF8563T" H 12500 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 12300 4150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PCF8563.pdf" H 12300 4150 50  0001 C CNN
	1    12300 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 6603181C
P 11100 4300
F 0 "C9" H 11215 4346 50  0000 L CNN
F 1 "22pF" H 11215 4255 50  0000 L CNN
F 2 "Moje:C[5,5mm]" H 11138 4150 50  0001 C CNN
F 3 "~" H 11100 4300 50  0001 C CNN
	1    11100 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 66033A00
P 12300 4750
F 0 "#PWR0107" H 12300 4500 50  0001 C CNN
F 1 "GND" H 12305 4577 50  0000 C CNN
F 2 "" H 12300 4750 50  0001 C CNN
F 3 "" H 12300 4750 50  0001 C CNN
	1    12300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 4550 12300 4750
$Comp
L power:GND #PWR0108
U 1 1 66033CC5
P 11100 4650
F 0 "#PWR0108" H 11100 4400 50  0001 C CNN
F 1 "GND" H 11105 4477 50  0000 C CNN
F 2 "" H 11100 4650 50  0001 C CNN
F 3 "" H 11100 4650 50  0001 C CNN
	1    11100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 66033F79
P 10750 4650
F 0 "#PWR0109" H 10750 4400 50  0001 C CNN
F 1 "GND" H 10755 4477 50  0000 C CNN
F 2 "" H 10750 4650 50  0001 C CNN
F 3 "" H 10750 4650 50  0001 C CNN
	1    10750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 66035547
P 11200 3650
F 0 "R3" V 11150 3500 50  0000 C CNN
F 1 "68r" V 11200 3650 50  0000 C CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 11130 3650 50  0001 C CNN
F 3 "~" H 11200 3650 50  0001 C CNN
	1    11200 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	11350 3650 12300 3650
$Comp
L Device:R R6
U 1 1 66037133
P 13400 3500
F 0 "R6" H 13350 3350 50  0000 C CNN
F 1 "4,7k" V 13400 3500 50  0000 C CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 13330 3500 50  0001 C CNN
F 3 "~" H 13400 3500 50  0001 C CNN
	1    13400 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 3150 13400 3350
$Comp
L Device:R R5
U 1 1 66038C96
P 12950 3500
F 0 "R5" H 12900 3350 50  0000 C CNN
F 1 "4,7k" V 12950 3500 50  0000 C CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 12880 3500 50  0001 C CNN
F 3 "~" H 12950 3500 50  0001 C CNN
	1    12950 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 66038F29
P 12750 3500
F 0 "R4" H 12700 3350 50  0000 C CNN
F 1 "4,7k" V 12750 3500 50  0000 C CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 12680 3500 50  0001 C CNN
F 3 "~" H 12750 3500 50  0001 C CNN
	1    12750 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	12300 3150 12300 3250
$Comp
L Device:D_Schottky D2
U 1 1 6603BDB4
P 12300 3400
F 0 "D2" V 12350 3600 50  0000 R CNN
F 1 "D_Schottky" V 12250 3900 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 12300 3400 50  0001 C CNN
F 3 "~" H 12300 3400 50  0001 C CNN
	1    12300 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6608CC04
P 7450 5800
F 0 "Y1" V 7550 5950 50  0000 R CNN
F 1 "16MHz" V 7450 6150 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 7450 5800 50  0001 C CNN
F 3 "~" H 7450 5800 50  0001 C CNN
	1    7450 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 6608FEC2
P 7700 5600
F 0 "C7" V 7448 5600 50  0000 C CNN
F 1 "22pF" V 7550 5600 50  0000 C CNN
F 2 "Moje:C[5,5mm]" H 7738 5450 50  0001 C CNN
F 3 "~" H 7700 5600 50  0001 C CNN
	1    7700 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 5750 7250 5750
Wire Wire Line
	7250 5750 7250 5600
Wire Wire Line
	7250 5600 7450 5600
Wire Wire Line
	7450 5600 7450 5650
Wire Wire Line
	6100 5850 7250 5850
Wire Wire Line
	7250 5850 7250 6000
Wire Wire Line
	7250 6000 7450 6000
Wire Wire Line
	7450 6000 7450 5950
$Comp
L Device:C C8
U 1 1 660B022E
P 7700 6000
F 0 "C8" V 7448 6000 50  0000 C CNN
F 1 "22pF" V 7550 6000 50  0000 C CNN
F 2 "Moje:C[5,5mm]" H 7738 5850 50  0001 C CNN
F 3 "~" H 7700 6000 50  0001 C CNN
	1    7700 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 6000 7450 6000
Connection ~ 7450 6000
Wire Wire Line
	7550 5600 7450 5600
Connection ~ 7450 5600
$Comp
L power:GND #PWR0114
U 1 1 660BAFE7
P 7950 6100
F 0 "#PWR0114" H 7950 5850 50  0001 C CNN
F 1 "GND" H 7955 5927 50  0000 C CNN
F 2 "" H 7950 6100 50  0001 C CNN
F 3 "" H 7950 6100 50  0001 C CNN
	1    7950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6100 7950 6000
Wire Wire Line
	7950 5600 7850 5600
Wire Wire Line
	7850 6000 7950 6000
Connection ~ 7950 6000
Wire Wire Line
	7950 6000 7950 5600
Text GLabel 12150 6100 2    50   Input ~ 0
INT0_NRF
Wire Wire Line
	12150 6100 12050 6100
Text GLabel 6250 7050 2    50   Input ~ 0
INT0_NRF
Wire Wire Line
	6250 7050 6100 7050
Text GLabel 6250 7150 2    50   Input ~ 0
INT1_RTC
Text GLabel 13500 4350 2    50   Input ~ 0
INT1_RTC
Wire Wire Line
	5550 4700 5550 4750
Wire Wire Line
	5550 4750 5500 4750
Wire Wire Line
	5500 4750 5500 4850
Wire Wire Line
	5550 4750 5600 4750
Wire Wire Line
	5600 4750 5600 4850
Connection ~ 5550 4750
$Comp
L Device:C C3
U 1 1 660F230C
P 4600 5400
F 0 "C3" H 4715 5446 50  0000 L CNN
F 1 "100nF" H 4715 5355 50  0000 L CNN
F 2 "Moje:C[5,5mm]" H 4638 5250 50  0001 C CNN
F 3 "~" H 4600 5400 50  0001 C CNN
	1    4600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5250 4600 5150
Wire Wire Line
	4600 5150 4900 5150
$Comp
L power:GND #PWR0116
U 1 1 660FA456
P 4600 5600
F 0 "#PWR0116" H 4600 5350 50  0001 C CNN
F 1 "GND" H 4605 5427 50  0000 C CNN
F 2 "" H 4600 5600 50  0001 C CNN
F 3 "" H 4600 5600 50  0001 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5600 4600 5550
$Comp
L Device:CP1 C2
U 1 1 65F567DD
P 3850 6050
F 0 "C2" H 3965 6096 50  0000 L CNN
F 1 "10uF" H 3965 6005 50  0000 L CNN
F 2 "Moje:C(2,5mm)" H 3850 6050 50  0001 C CNN
F 3 "~" H 3850 6050 50  0001 C CNN
	1    3850 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 65F57377
P 3550 6050
F 0 "C1" H 3350 6100 50  0000 L CNN
F 1 "100nF" H 3200 6000 50  0000 L CNN
F 2 "Moje:C[5,5mm]" H 3588 5900 50  0001 C CNN
F 3 "~" H 3550 6050 50  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 65F62A1D
P 3700 6400
F 0 "#PWR0117" H 3700 6150 50  0001 C CNN
F 1 "GND" H 3705 6227 50  0000 C CNN
F 2 "" H 3700 6400 50  0001 C CNN
F 3 "" H 3700 6400 50  0001 C CNN
	1    3700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6200 3550 6300
Wire Wire Line
	3550 6300 3700 6300
Wire Wire Line
	3850 6300 3850 6200
Wire Wire Line
	3700 6400 3700 6300
Connection ~ 3700 6300
Wire Wire Line
	3700 6300 3850 6300
Wire Wire Line
	3700 5700 3700 5800
Wire Wire Line
	3700 5800 3550 5800
Wire Wire Line
	3550 5800 3550 5900
Wire Wire Line
	3700 5800 3850 5800
Wire Wire Line
	3850 5800 3850 5900
Connection ~ 3700 5800
$Comp
L Moje:AIMTEC_AMSROL-78NZ U2
U 1 1 65FDBA93
P 5550 3500
F 0 "U2" H 5550 3915 50  0000 C CNN
F 1 "AIMTEC_AMSROL-78NZ" H 5550 3824 50  0000 C CNN
F 2 "Moje:AMSROL-78NZ" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 3650 50  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0121
U 1 1 65FDC026
P 4700 3250
F 0 "#PWR0121" H 4700 3100 50  0001 C CNN
F 1 "+12V" H 4715 3423 50  0000 C CNN
F 2 "" H 4700 3250 50  0001 C CNN
F 3 "" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 65FDD05E
P 4700 3500
F 0 "C4" H 4815 3546 50  0000 L CNN
F 1 "10uF" H 4815 3455 50  0000 L CNN
F 2 "Moje:C(2,5mm)" H 4700 3500 50  0001 C CNN
F 3 "~" H 4700 3500 50  0001 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3250 4700 3300
Wire Wire Line
	4700 3300 5000 3300
Wire Wire Line
	5000 3300 5000 3350
Wire Wire Line
	5000 3350 5100 3350
Connection ~ 4700 3300
Wire Wire Line
	4700 3300 4700 3350
$Comp
L power:GND #PWR0122
U 1 1 65FEC62E
P 4700 3750
F 0 "#PWR0122" H 4700 3500 50  0001 C CNN
F 1 "GND" H 4705 3577 50  0000 C CNN
F 2 "" H 4700 3750 50  0001 C CNN
F 3 "" H 4700 3750 50  0001 C CNN
	1    4700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3750 4700 3700
Wire Wire Line
	4700 3700 5000 3700
Wire Wire Line
	5000 3700 5000 3650
Wire Wire Line
	5000 3650 5100 3650
Connection ~ 4700 3700
Wire Wire Line
	4700 3700 4700 3650
Wire Wire Line
	6400 3300 6100 3300
Wire Wire Line
	6100 3300 6100 3350
Wire Wire Line
	6100 3350 6000 3350
$Comp
L Device:CP1 C5
U 1 1 65FFE4C3
P 6400 3500
F 0 "C5" H 6515 3546 50  0000 L CNN
F 1 "22uF" H 6515 3455 50  0000 L CNN
F 2 "Moje:C(2,5mm)" H 6400 3500 50  0001 C CNN
F 3 "~" H 6400 3500 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 65FFE9F1
P 6400 3750
F 0 "#PWR0123" H 6400 3500 50  0001 C CNN
F 1 "GND" H 6405 3577 50  0000 C CNN
F 2 "" H 6400 3750 50  0001 C CNN
F 3 "" H 6400 3750 50  0001 C CNN
	1    6400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3750 6400 3650
Wire Wire Line
	6400 3350 6400 3300
Wire Wire Line
	6400 3250 6400 3300
Connection ~ 6400 3300
NoConn ~ 6000 3650
$Comp
L Device:C C6
U 1 1 66026E91
P 6850 3500
F 0 "C6" H 6950 3550 50  0000 L CNN
F 1 "100nF" H 6950 3450 50  0000 L CNN
F 2 "Moje:C[5,5mm]" H 6888 3350 50  0001 C CNN
F 3 "~" H 6850 3500 50  0001 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3350 6850 3300
Wire Wire Line
	6850 3300 6400 3300
$Comp
L power:GND #PWR0125
U 1 1 6602D443
P 6850 3750
F 0 "#PWR0125" H 6850 3500 50  0001 C CNN
F 1 "GND" H 6855 3577 50  0000 C CNN
F 2 "" H 6850 3750 50  0001 C CNN
F 3 "" H 6850 3750 50  0001 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3750 6850 3650
$Comp
L Device:LED D1
U 1 1 66035016
P 7550 3500
F 0 "D1" V 7589 3383 50  0000 R CNN
F 1 "LED" V 7498 3383 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7550 3500 50  0001 C CNN
F 3 "~" H 7550 3500 50  0001 C CNN
	1    7550 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 66035BC2
P 7550 3750
F 0 "#PWR0126" H 7550 3500 50  0001 C CNN
F 1 "GND" H 7555 3577 50  0000 C CNN
F 2 "" H 7550 3750 50  0001 C CNN
F 3 "" H 7550 3750 50  0001 C CNN
	1    7550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3750 7550 3650
$Comp
L Device:R R1
U 1 1 6603B439
P 7250 3300
F 0 "R1" V 7200 3400 50  0000 L CNN
F 1 "1k" V 7250 3250 50  0000 L CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 7180 3300 50  0001 C CNN
F 3 "~" H 7250 3300 50  0001 C CNN
	1    7250 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3300 6850 3300
Connection ~ 6850 3300
Wire Wire Line
	7400 3300 7550 3300
Wire Wire Line
	7550 3300 7550 3350
$Comp
L Mechanical:MountingHole H1
U 1 1 66071A15
P 10800 10000
F 0 "H1" H 10900 10000 50  0000 L CNN
F 1 "MountingHole" H 10900 9955 50  0001 L CNN
F 2 "Moje:MountingHole_3mm" H 10800 10000 50  0001 C CNN
F 3 "~" H 10800 10000 50  0001 C CNN
	1    10800 10000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 66071DC3
P 10800 10200
F 0 "H2" H 10900 10200 50  0000 L CNN
F 1 "MountingHole" H 10900 10155 50  0001 L CNN
F 2 "Moje:MountingHole_3mm" H 10800 10200 50  0001 C CNN
F 3 "~" H 10800 10200 50  0001 C CNN
	1    10800 10200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 660720DF
P 10800 10400
F 0 "H3" H 10900 10400 50  0000 L CNN
F 1 "MountingHole" H 10900 10355 50  0001 L CNN
F 2 "Moje:MountingHole_3mm" H 10800 10400 50  0001 C CNN
F 3 "~" H 10800 10400 50  0001 C CNN
	1    10800 10400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 66072390
P 10800 10600
F 0 "H4" H 10900 10600 50  0000 L CNN
F 1 "MountingHole" H 10900 10555 50  0001 L CNN
F 2 "Moje:MountingHole_3mm" H 10800 10600 50  0001 C CNN
F 3 "~" H 10800 10600 50  0001 C CNN
	1    10800 10600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 660B7584
P 9500 5250
F 0 "J3" H 9580 5292 50  0000 L CNN
F 1 "UART" H 9580 5201 50  0000 L CNN
F 2 "Moje:conn_5" H 9500 5250 50  0001 C CNN
F 3 "~" H 9500 5250 50  0001 C CNN
	1    9500 5250
	1    0    0    -1  
$EndComp
Text GLabel 9200 5150 0    50   Input ~ 0
RXD
Text GLabel 9200 5250 0    50   Input ~ 0
TXD
Text GLabel 8650 5050 0    50   Input ~ 0
RST
Wire Wire Line
	9200 5250 9300 5250
Wire Wire Line
	9300 5150 9200 5150
Wire Wire Line
	9300 5050 9050 5050
$Comp
L power:GND #PWR0127
U 1 1 660D3BFA
P 9200 5350
F 0 "#PWR0127" H 9200 5100 50  0001 C CNN
F 1 "GND" V 9205 5222 50  0000 R CNN
F 2 "" H 9200 5350 50  0001 C CNN
F 3 "" H 9200 5350 50  0001 C CNN
	1    9200 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5350 9300 5350
Wire Wire Line
	9000 5450 9300 5450
$Comp
L Device:Crystal_GND3 Y2
U 1 1 660E3319
P 11700 4150
F 0 "Y2" V 11654 4281 50  0000 L CNN
F 1 "32,768kHz" V 11950 3950 50  0000 L CNN
F 2 "Crystal:Crystal_DS10_D1.0mm_L4.3mm_Horizontal_1EP_style2" H 11700 4150 50  0001 C CNN
F 3 "~" H 11700 4150 50  0001 C CNN
	1    11700 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 660F26D0
P 11450 4650
F 0 "#PWR0129" H 11450 4400 50  0001 C CNN
F 1 "GND" H 11455 4477 50  0000 C CNN
F 2 "" H 11450 4650 50  0001 C CNN
F 3 "" H 11450 4650 50  0001 C CNN
	1    11450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 4650 11450 4150
Wire Wire Line
	11450 4150 11500 4150
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 6618069C
P 7300 7450
F 0 "J4" H 7380 7492 50  0000 L CNN
F 1 "Conn_01x03" H 7380 7401 50  0000 L CNN
F 2 "Moje:conn_3" H 7300 7450 50  0001 C CNN
F 3 "~" H 7300 7450 50  0001 C CNN
	1    7300 7450
	1    0    0    -1  
$EndComp
Text GLabel 6250 7350 2    50   Input ~ 0
PD5
Text GLabel 6250 7450 2    50   Input ~ 0
PD6
Wire Wire Line
	6100 7450 6250 7450
Wire Wire Line
	6250 7350 6100 7350
Text GLabel 6950 7350 0    50   Input ~ 0
PD5
Text GLabel 6950 7450 0    50   Input ~ 0
PD6
Wire Wire Line
	7100 7450 6950 7450
Wire Wire Line
	6950 7350 7100 7350
Text GLabel 6300 5150 2    50   Input ~ 0
PB0
Wire Wire Line
	6300 5150 6100 5150
Text GLabel 6950 7550 0    50   Input ~ 0
PB0
Wire Wire Line
	6950 7550 7100 7550
NoConn ~ 6100 7250
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 661B697A
P 8100 3200
F 0 "J5" H 8050 3400 50  0000 L CNN
F 1 "Conn_01x03" H 8180 3151 50  0001 L CNN
F 2 "Moje:conn_3" H 8100 3200 50  0001 C CNN
F 3 "~" H 8100 3200 50  0001 C CNN
	1    8100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3000 7800 3100
Wire Wire Line
	7800 3300 7900 3300
Wire Wire Line
	7900 3200 7800 3200
Connection ~ 7800 3200
Wire Wire Line
	7800 3200 7800 3300
Wire Wire Line
	7900 3100 7800 3100
Connection ~ 7800 3100
Wire Wire Line
	7800 3100 7800 3200
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 661EDFE0
P 8100 3800
F 0 "J6" H 8050 4000 50  0000 L CNN
F 1 "Conn_01x03" H 8180 3751 50  0001 L CNN
F 2 "Moje:conn_3" H 8100 3800 50  0001 C CNN
F 3 "~" H 8100 3800 50  0001 C CNN
	1    8100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3900 7900 3900
Wire Wire Line
	7900 3800 7800 3800
Connection ~ 7800 3800
Wire Wire Line
	7800 3800 7800 3900
Wire Wire Line
	7900 3700 7800 3700
Wire Wire Line
	7800 3700 7800 3800
$Comp
L power:GND #PWR0131
U 1 1 661F501D
P 7800 4000
F 0 "#PWR0131" H 7800 3750 50  0001 C CNN
F 1 "GND" H 7805 3827 50  0000 C CNN
F 2 "" H 7800 4000 50  0001 C CNN
F 3 "" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4000 7800 3900
Connection ~ 7800 3900
$Comp
L Device:Jumper JP1
U 1 1 662227C4
P 9950 3700
F 0 "JP1" V 9904 3827 50  0000 L CNN
F 1 "Jumper" V 9995 3827 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 9950 3700 50  0001 C CNN
F 3 "~" H 9950 3700 50  0001 C CNN
	1    9950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 3300 9950 3400
Wire Wire Line
	9950 4000 9950 4100
Text Notes 8650 6200 0    79   ~ 0
Warning!\nUse ISP Programmer with:\n-voltage buffer\n-or operating in 3,3v
$Comp
L Moje:Kanda_ISP U6
U 1 1 65F81B05
P 9400 4300
F 0 "U6" H 9400 3813 60  0000 C CNN
F 1 "Kanda_ISP" H 9400 3919 60  0000 C CNN
F 2 "" H 9450 4450 60  0000 C CNN
F 3 "" H 9450 4450 60  0000 C CNN
	1    9400 4300
	-1   0    0    1   
$EndComp
NoConn ~ 8950 4200
NoConn ~ 9850 4200
NoConn ~ 9850 4300
Wire Wire Line
	9850 4100 9950 4100
Wire Wire Line
	9950 4500 9850 4500
Wire Wire Line
	9950 4500 9950 4400
Wire Wire Line
	9950 4400 9850 4400
Connection ~ 9950 4500
NoConn ~ 6100 6050
NoConn ~ 6100 6150
NoConn ~ 6100 6250
$Comp
L power:+5V #PWR0104
U 1 1 65FD45F4
P 6400 3250
F 0 "#PWR0104" H 6400 3100 50  0001 C CNN
F 1 "+5V" H 6415 3423 50  0000 C CNN
F 2 "" H 6400 3250 50  0001 C CNN
F 3 "" H 6400 3250 50  0001 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 65FD6D8D
P 7800 3000
F 0 "#PWR0105" H 7800 2850 50  0001 C CNN
F 1 "+5V" H 7815 3173 50  0000 C CNN
F 2 "" H 7800 3000 50  0001 C CNN
F 3 "" H 7800 3000 50  0001 C CNN
	1    7800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 65FD8481
P 8850 3500
F 0 "#PWR0110" H 8850 3350 50  0001 C CNN
F 1 "+5V" H 8865 3673 50  0000 C CNN
F 2 "" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0001 C CNN
	1    8850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 65FDA81C
P 9950 3300
F 0 "#PWR0111" H 9950 3150 50  0001 C CNN
F 1 "+5V" H 9965 3473 50  0000 C CNN
F 2 "" H 9950 3300 50  0001 C CNN
F 3 "" H 9950 3300 50  0001 C CNN
	1    9950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 65FDABE3
P 12300 3150
F 0 "#PWR0112" H 12300 3000 50  0001 C CNN
F 1 "+5V" H 12315 3323 50  0000 C CNN
F 2 "" H 12300 3150 50  0001 C CNN
F 3 "" H 12300 3150 50  0001 C CNN
	1    12300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 65FE56FF
P 12750 3150
F 0 "#PWR0113" H 12750 3000 50  0001 C CNN
F 1 "+5V" H 12765 3323 50  0000 C CNN
F 2 "" H 12750 3150 50  0001 C CNN
F 3 "" H 12750 3150 50  0001 C CNN
	1    12750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 65FE59E7
P 12950 3150
F 0 "#PWR0115" H 12950 3000 50  0001 C CNN
F 1 "+5V" H 12965 3323 50  0000 C CNN
F 2 "" H 12950 3150 50  0001 C CNN
F 3 "" H 12950 3150 50  0001 C CNN
	1    12950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0118
U 1 1 65FE5C25
P 13400 3150
F 0 "#PWR0118" H 13400 3000 50  0001 C CNN
F 1 "+5V" H 13415 3323 50  0000 C CNN
F 2 "" H 13400 3150 50  0001 C CNN
F 3 "" H 13400 3150 50  0001 C CNN
	1    13400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 65FE5F7E
P 9000 5450
F 0 "#PWR0124" H 9000 5300 50  0001 C CNN
F 1 "+5V" V 9015 5578 50  0000 L CNN
F 2 "" H 9000 5450 50  0001 C CNN
F 3 "" H 9000 5450 50  0001 C CNN
	1    9000 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 65FE9B3E
P 3700 5700
F 0 "#PWR0128" H 3700 5550 50  0001 C CNN
F 1 "+5V" H 3715 5873 50  0000 C CNN
F 2 "" H 3700 5700 50  0001 C CNN
F 3 "" H 3700 5700 50  0001 C CNN
	1    3700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 65FECA33
P 5550 4700
F 0 "#PWR0130" H 5550 4550 50  0001 C CNN
F 1 "+5V" H 5565 4873 50  0000 C CNN
F 2 "" H 5550 4700 50  0001 C CNN
F 3 "" H 5550 4700 50  0001 C CNN
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L Moje:LM1117 U5
U 1 1 65FF37D9
P 9100 6850
F 0 "U5" H 9100 7187 60  0000 C CNN
F 1 "LM1117" H 9100 7081 60  0000 C CNN
F 2 "Moje:TO263_MY" H 9100 6150 60  0001 C CNN
F 3 "" H 9100 6150 60  0001 C CNN
	1    9100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 65FF54CF
P 8600 6750
F 0 "#PWR0132" H 8600 6600 50  0001 C CNN
F 1 "+5V" H 8615 6923 50  0000 C CNN
F 2 "" H 8600 6750 50  0001 C CNN
F 3 "" H 8600 6750 50  0001 C CNN
	1    8600 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C10
U 1 1 65FF9DEA
P 9650 7100
F 0 "C10" H 9765 7146 50  0000 L CNN
F 1 "10uF" H 9765 7055 50  0000 L CNN
F 2 "Moje:C(2,5mm)" H 9650 7100 50  0001 C CNN
F 3 "~" H 9650 7100 50  0001 C CNN
	1    9650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 6750 8600 6850
Wire Wire Line
	8600 6850 8700 6850
$Comp
L power:GND #PWR0133
U 1 1 66003533
P 9100 7300
F 0 "#PWR0133" H 9100 7050 50  0001 C CNN
F 1 "GND" H 9105 7127 50  0000 C CNN
F 2 "" H 9100 7300 50  0001 C CNN
F 3 "" H 9100 7300 50  0001 C CNN
	1    9100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 7300 9100 7200
$Comp
L power:GND #PWR0134
U 1 1 6600A807
P 9650 7300
F 0 "#PWR0134" H 9650 7050 50  0001 C CNN
F 1 "GND" H 9655 7127 50  0000 C CNN
F 2 "" H 9650 7300 50  0001 C CNN
F 3 "" H 9650 7300 50  0001 C CNN
	1    9650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 7300 9650 7250
Wire Wire Line
	9650 6950 9650 6850
Wire Wire Line
	9650 6850 9500 6850
$Comp
L power:+3.3V #PWR0135
U 1 1 66019981
P 9650 6750
F 0 "#PWR0135" H 9650 6600 50  0001 C CNN
F 1 "+3.3V" H 9665 6923 50  0000 C CNN
F 2 "" H 9650 6750 50  0001 C CNN
F 3 "" H 9650 6750 50  0001 C CNN
	1    9650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 6750 9650 6850
Connection ~ 9650 6850
$Comp
L Device:C C11
U 1 1 660333F2
P 10100 7100
F 0 "C11" H 10200 7150 50  0000 L CNN
F 1 "100nF" H 10200 7050 50  0000 L CNN
F 2 "Moje:C[5,5mm]" H 10138 6950 50  0001 C CNN
F 3 "~" H 10100 7100 50  0001 C CNN
	1    10100 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 66036ED7
P 10100 7300
F 0 "#PWR0136" H 10100 7050 50  0001 C CNN
F 1 "GND" H 10105 7127 50  0000 C CNN
F 2 "" H 10100 7300 50  0001 C CNN
F 3 "" H 10100 7300 50  0001 C CNN
	1    10100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 7300 10100 7250
Wire Wire Line
	10100 6950 10100 6850
Wire Wire Line
	10100 6850 9650 6850
$Comp
L Device:LED D3
U 1 1 66032E97
P 7050 6550
F 0 "D3" V 7089 6433 50  0000 R CNN
F 1 "LED" V 6998 6433 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7050 6550 50  0001 C CNN
F 3 "~" H 7050 6550 50  0001 C CNN
	1    7050 6550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 66032E9D
P 7050 6800
F 0 "#PWR0137" H 7050 6550 50  0001 C CNN
F 1 "GND" H 7055 6627 50  0000 C CNN
F 2 "" H 7050 6800 50  0001 C CNN
F 3 "" H 7050 6800 50  0001 C CNN
	1    7050 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 6800 7050 6700
$Comp
L Device:R R8
U 1 1 66032EA4
P 6750 6350
F 0 "R8" V 6700 6450 50  0000 L CNN
F 1 "1k" V 6750 6300 50  0000 L CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 6680 6350 50  0001 C CNN
F 3 "~" H 6750 6350 50  0001 C CNN
	1    6750 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 6350 7050 6350
Wire Wire Line
	7050 6350 7050 6400
Wire Wire Line
	6100 6350 6600 6350
Wire Notes Line
	8250 4300 3050 4300
Wire Notes Line
	3050 4300 3050 2600
Wire Notes Line
	3050 2600 8250 2600
Wire Wire Line
	3900 3500 3950 3500
$Comp
L Device:R R7
U 1 1 66075A89
P 3750 3500
F 0 "R7" V 3700 3600 50  0000 L CNN
F 1 "100R" V 3750 3400 50  0000 L CNN
F 2 "Moje:R_MY_DIN0204_L3.6mm_D1.6mm_P7.62mm" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 65F99F63
P 3700 3750
F 0 "#PWR0120" H 3700 3500 50  0001 C CNN
F 1 "GND" H 3705 3577 50  0000 C CNN
F 2 "" H 3700 3750 50  0001 C CNN
F 3 "" H 3700 3750 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3400 3550 3400
Wire Wire Line
	3700 3250 3700 3400
$Comp
L power:+12V #PWR0119
U 1 1 65F8E995
P 3700 3250
F 0 "#PWR0119" H 3700 3100 50  0001 C CNN
F 1 "+12V" H 3715 3423 50  0000 C CNN
F 2 "" H 3700 3250 50  0001 C CNN
F 3 "" H 3700 3250 50  0001 C CNN
	1    3700 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 65F8C23F
P 3350 3500
F 0 "J1" H 3350 3700 50  0000 C CNN
F 1 "ARK_01x03" V 3450 3500 50  0000 C CNN
F 2 "Moje:ARK_3PIN" H 3350 3500 50  0001 C CNN
F 3 "~" H 3350 3500 50  0001 C CNN
	1    3350 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 3600 3550 3600
Wire Wire Line
	3700 3750 3700 3600
Wire Wire Line
	3600 3500 3550 3500
Text GLabel 3950 3500 2    60   Input ~ 0
WS2811_PIN
$Comp
L Device:C C13
U 1 1 66698928
P 8900 5050
F 0 "C13" V 8648 5050 50  0000 C CNN
F 1 "100nF" V 8750 5050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8938 4900 50  0001 C CNN
F 3 "~" H 8900 5050 50  0001 C CNN
	1    8900 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 5050 8750 5050
$EndSCHEMATC
