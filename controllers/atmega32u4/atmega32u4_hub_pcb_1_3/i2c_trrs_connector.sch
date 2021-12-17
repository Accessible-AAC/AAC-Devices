EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 12
Title "ATmega32U4 AAC Hub"
Date "2020-11-13"
Rev "1.3"
Comp "https://github.com/Accessible-AAC"
Comment1 "(c) Copyright 2020, Don Haig"
Comment2 "Licensed under CERN-OHL-S V 2"
Comment3 ""
Comment4 "Based on https://github.com/AbilitySpectrum/Sensact"
$EndDescr
$Comp
L dbh_kicad_library:PJ320A J201
U 1 1 5DE696DC
P 5275 3650
F 0 "J201" H 4833 3875 50  0000 C CNN
F 1 "PJ320A" H 4833 3784 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 4625 4050 50  0001 C CNN
F 3 "" H 4625 4050 50  0001 C CNN
F 4 "I2C" H 4250 3525 50  0000 C CNN "Name"
	1    5275 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0202
U 1 1 5DE696E2
P 5325 3950
F 0 "#PWR0202" H 5325 3700 50  0001 C CNN
F 1 "GND" H 5330 3777 50  0000 C CNN
F 2 "" H 5325 3950 50  0001 C CNN
F 3 "" H 5325 3950 50  0001 C CNN
	1    5325 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5325 3950 5275 3950
Wire Wire Line
	5275 3750 5375 3750
Wire Wire Line
	5375 3750 5375 2975
Text HLabel 6100 3650 2    50   Input ~ 0
SCL
Text HLabel 6100 3850 2    50   Input ~ 0
SDA
$Comp
L power:GND #PWR0201
U 1 1 5DE88827
P 5275 4450
F 0 "#PWR0201" H 5275 4200 50  0001 C CNN
F 1 "GND" H 5280 4277 50  0000 C CNN
F 2 "" H 5275 4450 50  0001 C CNN
F 3 "" H 5275 4450 50  0001 C CNN
	1    5275 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5275 3650 5525 3650
Text Label 6025 3650 2    50   ~ 0
A
Text Label 6025 3850 2    50   ~ 0
B
Text Label 4800 4375 0    50   ~ 0
A
Text Label 4800 4475 0    50   ~ 0
B
$Comp
L power:VCC #PWR0203
U 1 1 5E2785F7
P 5375 2900
F 0 "#PWR0203" H 5375 2750 50  0001 C CNN
F 1 "VCC" H 5392 3073 50  0000 C CNN
F 2 "" H 5375 2900 50  0001 C CNN
F 3 "" H 5375 2900 50  0001 C CNN
	1    5375 2900
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:ESDA5V3L D?
U 1 1 5E1ED58B
P 4900 4375
AR Path="/5E160AF7/5E1ED58B" Ref="D?"  Part="1" 
AR Path="/5DE6782E/5E1ED58B" Ref="ESD201"  Part="1" 
F 0 "ESD201" H 5025 4550 50  0000 C CNN
F 1 "ESDA5V3L" H 5025 4478 25  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5045 4510 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/STMicroelectronics-ESDA5V3L_C87911.pdf" H 4950 4350 50  0001 C CNN
F 4 " C87911" H 5010 4565 50  0001 C CNN "LCSC"
	1    4900 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4375 4800 4375
Wire Wire Line
	4900 4475 4800 4475
Wire Wire Line
	5150 4425 5275 4425
Wire Wire Line
	5275 4425 5275 4450
$Comp
L Device:R R201
U 1 1 5EA2EA15
P 5525 3125
F 0 "R201" H 5595 3171 50  0000 L CNN
F 1 "10k" H 5595 3080 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5455 3125 50  0001 C CNN
F 3 "~" H 5525 3125 50  0001 C CNN
F 4 " C25804" H 5525 3125 50  0001 C CNN "LCSC"
	1    5525 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R202
U 1 1 5EA2FB80
P 5800 3125
F 0 "R202" H 5870 3171 50  0000 L CNN
F 1 "10k" H 5870 3080 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 3125 50  0001 C CNN
F 3 "~" H 5800 3125 50  0001 C CNN
F 4 " C25804" H 5800 3125 50  0001 C CNN "LCSC"
	1    5800 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2975 5525 2975
Wire Wire Line
	5525 2975 5375 2975
Connection ~ 5525 2975
Connection ~ 5375 2975
Wire Wire Line
	5375 2975 5375 2900
Wire Wire Line
	5275 3850 5800 3850
Wire Wire Line
	5525 3275 5525 3650
Connection ~ 5525 3650
Wire Wire Line
	5525 3650 6100 3650
Wire Wire Line
	5800 3275 5800 3850
Connection ~ 5800 3850
Wire Wire Line
	5800 3850 6100 3850
$EndSCHEMATC
