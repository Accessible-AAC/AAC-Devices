EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dbh_kicad_library:ATmega32U4-AU U?
U 1 1 5E1921FD
P 4675 2650
F 0 "U?" H 5475 2400 50  0000 C CNN
F 1 "ATmega32U4-AU" H 5500 2275 50  0000 C CNB
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" V 5965 1860 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/atmel-7766-8-bit-avr-atmega16u4-32u4_datasheet.pdf" H 5185 490 50  0001 C CNN
F 4 "C44854" H 4675 2650 50  0001 C CNN "LCSC"
	1    4675 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E19483E
P 5725 4675
F 0 "#PWR?" H 5725 4425 50  0001 C CNN
F 1 "GND" H 5730 4502 50  0000 C CNN
F 2 "" H 5725 4675 50  0001 C CNN
F 3 "" H 5725 4675 50  0001 C CNN
	1    5725 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 4550 5575 4625
Wire Wire Line
	5575 4625 5675 4625
Wire Wire Line
	5725 4625 5725 4675
Wire Wire Line
	5875 4625 5875 4550
Connection ~ 5725 4625
Wire Wire Line
	5775 4550 5775 4625
Wire Wire Line
	5725 4625 5775 4625
Connection ~ 5775 4625
Wire Wire Line
	5775 4625 5875 4625
Wire Wire Line
	5675 4550 5675 4625
Connection ~ 5675 4625
Wire Wire Line
	5675 4625 5725 4625
Text HLabel 4525 3450 0    50   Input ~ 0
SCLK
Text HLabel 4525 3550 0    50   Input ~ 0
MOSI
Text HLabel 4525 3650 0    50   Input ~ 0
MISO
Text HLabel 4525 3750 0    50   Input ~ 0
D8
Text HLabel 4525 3850 0    50   Input ~ 0
D9
Text HLabel 4525 3950 0    50   Input ~ 0
D10
Text HLabel 4525 4050 0    50   Input ~ 0
D11
Text HLabel 4525 4250 0    50   Input ~ 0
D5
Text HLabel 4525 4350 0    50   Input ~ 0
D13
Text HLabel 6425 4350 2    50   Input ~ 0
A0
Text HLabel 6425 4250 2    50   Input ~ 0
A1
Text HLabel 6425 4150 2    50   Input ~ 0
A2
Text HLabel 6425 4050 2    50   Input ~ 0
A3
Text HLabel 6425 3950 2    50   Input ~ 0
A4
Text HLabel 6425 3850 2    50   Input ~ 0
A5
Text HLabel 6425 3650 2    50   Input ~ 0
D7
Text HLabel 6425 3350 2    50   Input ~ 0
D6
Text HLabel 6425 3250 2    50   Input ~ 0
D12
Text HLabel 6425 3050 2    50   Input ~ 0
D4
Text HLabel 6425 2950 2    50   Input ~ 0
TX
Text HLabel 6425 2850 2    50   Input ~ 0
RX
Text HLabel 6425 2750 2    50   Input ~ 0
SDA
Text HLabel 6425 2650 2    50   Input ~ 0
SCL
Wire Wire Line
	6275 2650 6425 2650
Wire Wire Line
	6275 2750 6425 2750
Wire Wire Line
	6275 2850 6425 2850
Wire Wire Line
	6275 2950 6425 2950
Wire Wire Line
	6275 3050 6425 3050
Wire Wire Line
	6275 3250 6425 3250
Wire Wire Line
	6275 3350 6425 3350
Wire Wire Line
	6275 3650 6425 3650
Wire Wire Line
	6275 3850 6425 3850
Wire Wire Line
	6275 3950 6425 3950
Wire Wire Line
	6275 4050 6425 4050
Wire Wire Line
	6275 4150 6425 4150
Wire Wire Line
	6275 4250 6425 4250
Wire Wire Line
	6275 4350 6425 4350
Wire Wire Line
	4525 4350 4675 4350
Wire Wire Line
	4525 4250 4675 4250
Wire Wire Line
	4525 4050 4675 4050
Wire Wire Line
	4525 3950 4675 3950
Wire Wire Line
	4525 3850 4675 3850
Wire Wire Line
	4525 3750 4675 3750
Wire Wire Line
	4525 3650 4675 3650
Wire Wire Line
	4525 3550 4675 3550
Wire Wire Line
	4525 3450 4675 3450
Text HLabel 4525 2750 0    50   Input ~ 0
D-
Wire Wire Line
	4525 2750 4675 2750
Text HLabel 4525 2850 0    50   Input ~ 0
D+
Wire Wire Line
	4525 2850 4675 2850
Text Label 4400 3350 0    50   ~ 0
RX_LED
Text Label 6575 3150 2    50   ~ 0
TX_LED
Wire Wire Line
	4400 3350 4675 3350
Wire Wire Line
	6275 3150 6575 3150
Text Label 6550 3550 2    50   ~ 0
HWB
Wire Wire Line
	6275 3550 6550 3550
$Comp
L Device:Crystal Y?
U 1 1 5E1AACE9
P 5125 4950
F 0 "Y?" H 5125 4682 50  0000 C CNN
F 1 "Crystal" H 5125 4773 50  0000 C CNN
F 2 "" H 5125 4950 50  0001 C CNN
F 3 "~" H 5125 4950 50  0001 C CNN
	1    5125 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5E1ACC8D
P 4925 5175
F 0 "C?" H 5040 5221 50  0000 L CNN
F 1 "20p" H 5040 5130 50  0000 L CNN
F 2 "" H 4963 5025 50  0001 C CNN
F 3 "~" H 4925 5175 50  0001 C CNN
	1    4925 5175
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E1AD5A4
P 5350 5150
F 0 "C?" H 5465 5196 50  0000 L CNN
F 1 "20p" H 5465 5105 50  0000 L CNN
F 2 "" H 5388 5000 50  0001 C CNN
F 3 "~" H 5350 5150 50  0001 C CNN
	1    5350 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1AE8B3
P 4925 5425
F 0 "#PWR?" H 4925 5175 50  0001 C CNN
F 1 "GND" H 4930 5252 50  0000 C CNN
F 2 "" H 4925 5425 50  0001 C CNN
F 3 "" H 4925 5425 50  0001 C CNN
	1    4925 5425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1AE9F6
P 5350 5425
F 0 "#PWR?" H 5350 5175 50  0001 C CNN
F 1 "GND" H 5355 5252 50  0000 C CNN
F 2 "" H 5350 5425 50  0001 C CNN
F 3 "" H 5350 5425 50  0001 C CNN
	1    5350 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 4550 5075 4625
Wire Wire Line
	5075 4625 4925 4625
Wire Wire Line
	4925 4625 4925 4950
Wire Wire Line
	4975 4950 4925 4950
Connection ~ 4925 4950
Wire Wire Line
	4925 4950 4925 5025
Wire Wire Line
	5275 4950 5350 4950
Wire Wire Line
	5350 4950 5350 5000
Wire Wire Line
	5350 4950 5350 4625
Wire Wire Line
	5350 4625 5175 4625
Wire Wire Line
	5175 4625 5175 4550
Connection ~ 5350 4950
Wire Wire Line
	4925 5325 4925 5425
Wire Wire Line
	5350 5300 5350 5425
$Comp
L Device:R R?
U 1 1 5E1B5E1B
P 2800 4600
F 0 "R?" H 2870 4646 50  0000 L CNN
F 1 "1k" H 2870 4555 50  0000 L CNN
F 2 "" V 2730 4600 50  0001 C CNN
F 3 "~" H 2800 4600 50  0001 C CNN
	1    2800 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E1B6BEC
P 2800 4975
F 0 "D?" V 2839 4858 50  0000 R CNN
F 1 "LED" V 2748 4858 50  0000 R CNN
F 2 "" H 2800 4975 50  0001 C CNN
F 3 "~" H 2800 4975 50  0001 C CNN
	1    2800 4975
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1B80B4
P 2800 5275
F 0 "#PWR?" H 2800 5025 50  0001 C CNN
F 1 "GND" H 2805 5102 50  0000 C CNN
F 2 "" H 2800 5275 50  0001 C CNN
F 3 "" H 2800 5275 50  0001 C CNN
	1    2800 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5125 2800 5275
Wire Wire Line
	2800 4750 2800 4825
Wire Wire Line
	2800 4450 2800 4175
Text Label 2800 4175 3    50   ~ 0
RX_LED
$Comp
L Device:R R?
U 1 1 5E1BC42F
P 3375 4625
F 0 "R?" H 3445 4671 50  0000 L CNN
F 1 "1k" H 3445 4580 50  0000 L CNN
F 2 "" V 3305 4625 50  0001 C CNN
F 3 "~" H 3375 4625 50  0001 C CNN
	1    3375 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E1BC439
P 3375 5000
F 0 "D?" V 3414 4883 50  0000 R CNN
F 1 "LED" V 3323 4883 50  0000 R CNN
F 2 "" H 3375 5000 50  0001 C CNN
F 3 "~" H 3375 5000 50  0001 C CNN
	1    3375 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1BC443
P 3375 5300
F 0 "#PWR?" H 3375 5050 50  0001 C CNN
F 1 "GND" H 3380 5127 50  0000 C CNN
F 2 "" H 3375 5300 50  0001 C CNN
F 3 "" H 3375 5300 50  0001 C CNN
	1    3375 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 5150 3375 5300
Wire Wire Line
	3375 4775 3375 4850
Wire Wire Line
	3375 4475 3375 4200
Text Label 3375 4200 3    50   ~ 0
TX_LED
$Comp
L Device:R R?
U 1 1 5E1BF0D4
P 6425 4950
F 0 "R?" H 6495 4996 50  0000 L CNN
F 1 "10k" H 6495 4905 50  0000 L CNN
F 2 "" V 6355 4950 50  0001 C CNN
F 3 "~" H 6425 4950 50  0001 C CNN
	1    6425 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1BF0E8
P 6425 5175
F 0 "#PWR?" H 6425 4925 50  0001 C CNN
F 1 "GND" H 6430 5002 50  0000 C CNN
F 2 "" H 6425 5175 50  0001 C CNN
F 3 "" H 6425 5175 50  0001 C CNN
	1    6425 5175
	1    0    0    -1  
$EndComp
Text Label 6000 4725 0    50   ~ 0
HWB
Wire Wire Line
	6000 4725 6425 4725
Wire Wire Line
	5075 2450 5075 2300
$Comp
L power:VCC #PWR?
U 1 1 5E1CAC19
P 5075 2175
F 0 "#PWR?" H 5075 2025 50  0001 C CNN
F 1 "VCC" H 5092 2348 50  0000 C CNN
F 2 "" H 5075 2175 50  0001 C CNN
F 3 "" H 5075 2175 50  0001 C CNN
	1    5075 2175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 2450 5175 2300
Wire Wire Line
	5175 2300 5075 2300
Connection ~ 5075 2300
Wire Wire Line
	5075 2300 5075 2175
$Comp
L Switch:SW_Push SW?
U 1 1 5E1CF0A5
P 6675 1600
F 0 "SW?" H 6675 1885 50  0000 C CNN
F 1 "SW_Push" H 6675 1794 50  0000 C CNN
F 2 "" H 6675 1800 50  0001 C CNN
F 3 "~" H 6675 1800 50  0001 C CNN
	1    6675 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 2450 5875 2175
Text Label 5875 2175 3    50   ~ 0
RESET
Text Label 5800 1600 0    50   ~ 0
RESET
$Comp
L power:GND #PWR?
U 1 1 5E1D7958
P 6975 1675
F 0 "#PWR?" H 6975 1425 50  0001 C CNN
F 1 "GND" H 6980 1502 50  0000 C CNN
F 2 "" H 6975 1675 50  0001 C CNN
F 3 "" H 6975 1675 50  0001 C CNN
	1    6975 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 1600 6975 1600
Wire Wire Line
	6975 1600 6975 1675
$Comp
L Device:R R?
U 1 1 5E1DA0F7
P 6275 1450
F 0 "R?" H 6345 1496 50  0000 L CNN
F 1 "10k" H 6345 1405 50  0000 L CNN
F 2 "" V 6205 1450 50  0001 C CNN
F 3 "~" H 6275 1450 50  0001 C CNN
	1    6275 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E1E4699
P 6275 1225
F 0 "#PWR?" H 6275 1075 50  0001 C CNN
F 1 "VCC" H 6292 1398 50  0000 C CNN
F 2 "" H 6275 1225 50  0001 C CNN
F 3 "" H 6275 1225 50  0001 C CNN
	1    6275 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1600 6275 1600
Wire Wire Line
	6275 1600 6475 1600
Connection ~ 6275 1600
Wire Wire Line
	6275 1225 6275 1300
Wire Wire Line
	5475 2450 5475 2300
Wire Wire Line
	5475 2300 5375 2300
Connection ~ 5175 2300
Wire Wire Line
	5375 2450 5375 2300
Connection ~ 5375 2300
Wire Wire Line
	5375 2300 5175 2300
Wire Wire Line
	5675 2450 5675 2175
Text Label 5675 2175 3    50   ~ 0
AREF
Text Label 5300 900  3    50   ~ 0
AREF
$Comp
L Device:C C?
U 1 1 5E1F30FF
P 5300 1175
F 0 "C?" H 5415 1221 50  0000 L CNN
F 1 "100nF" H 5415 1130 50  0000 L CNN
F 2 "" H 5338 1025 50  0001 C CNN
F 3 "~" H 5300 1175 50  0001 C CNN
	1    5300 1175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1F3A33
P 5300 1425
F 0 "#PWR?" H 5300 1175 50  0001 C CNN
F 1 "GND" H 5305 1252 50  0000 C CNN
F 2 "" H 5300 1425 50  0001 C CNN
F 3 "" H 5300 1425 50  0001 C CNN
	1    5300 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 900  5300 1025
Wire Wire Line
	5300 1325 5300 1425
Text Label 4550 875  3    50   ~ 0
UCAP
$Comp
L Device:C C?
U 1 1 5E1FDCFD
P 4550 1150
F 0 "C?" H 4665 1196 50  0000 L CNN
F 1 "1uF" H 4665 1105 50  0000 L CNN
F 2 "" H 4588 1000 50  0001 C CNN
F 3 "~" H 4550 1150 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1FDD07
P 4550 1400
F 0 "#PWR?" H 4550 1150 50  0001 C CNN
F 1 "GND" H 4555 1227 50  0000 C CNN
F 2 "" H 4550 1400 50  0001 C CNN
F 3 "" H 4550 1400 50  0001 C CNN
	1    4550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 875  4550 1000
Wire Wire Line
	4550 1300 4550 1400
Text Label 4400 3050 0    50   ~ 0
UCAP
Wire Wire Line
	4400 3050 4675 3050
Text Label 4400 3150 0    50   ~ 0
VBUS
Wire Wire Line
	4400 3150 4675 3150
Text Label 4400 2650 0    50   ~ 0
VBUS
$Comp
L power:VBUS #PWR?
U 1 1 5E20A738
P 4250 2650
F 0 "#PWR?" H 4250 2500 50  0001 C CNN
F 1 "VBUS" H 4265 2823 50  0000 C CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2650 4675 2650
$Comp
L power:GND #PWR?
U 1 1 5E214D17
P 4275 3000
F 0 "#PWR?" H 4275 2750 50  0001 C CNN
F 1 "GND" H 4280 2827 50  0000 C CNN
F 2 "" H 4275 3000 50  0001 C CNN
F 3 "" H 4275 3000 50  0001 C CNN
	1    4275 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4275 2950 4275 3000
Wire Wire Line
	4275 2950 4675 2950
Text Notes 4175 3050 2    50   ~ 0
Check if this is the best for UGND
Wire Wire Line
	6425 4725 6425 4800
Wire Wire Line
	6425 5100 6425 5175
Text Notes 7300 4975 2    50   ~ 0
USB Boot Enable
$EndSCHEMATC
