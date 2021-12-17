EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 12
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
L dbh_kicad_library:12mm_Buzzer BZ?
U 1 1 5DF22754
P 5200 3750
AR Path="/5DF22754" Ref="BZ?"  Part="1" 
AR Path="/5DF1C911/5DF22754" Ref="Buzzer701"  Part="1" 
F 0 "Buzzer701" H 5728 3721 50  0000 L CNN
F 1 "12mm_Buzzer" H 5728 3630 50  0000 L CNN
F 2 "dbh_kicad_library:12mm_buzzer" H 5525 3700 50  0001 C CNN
F 3 "" H 5525 3700 50  0001 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2275A
P 5150 3950
AR Path="/5DF2275A" Ref="#PWR?"  Part="1" 
AR Path="/5DF1C911/5DF2275A" Ref="#PWR0803"  Part="1" 
F 0 "#PWR0803" H 5150 3700 50  0001 C CNN
F 1 "GND" H 5155 3777 50  0000 C CNN
F 2 "" H 5150 3950 50  0001 C CNN
F 3 "" H 5150 3950 50  0001 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3900 5150 3900
Wire Wire Line
	5150 3900 5150 3950
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138 Q?
U 1 1 5DF2276B
P 4700 3750
AR Path="/5DF2276B" Ref="Q?"  Part="1" 
AR Path="/5DF1C911/5DF2276B" Ref="Q801"  Part="1" 
F 0 "Q801" V 4967 3750 60  0000 C CNN
F 1 "BSS138" V 4861 3750 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 3950 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4900 4050 60  0001 L CNN
F 4 "BSS138CT-ND" H 4900 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138" H 4900 4250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4900 4350 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4900 4450 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4900 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS138/BSS138CT-ND/244294" H 4900 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 220MA SOT-23" H 4900 4750 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4900 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4900 4950 60  0001 L CNN "Status"
F 13 " C82045" V 4700 3750 50  0001 C CNN "LCSC"
	1    4700 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3750 5200 3750
Wire Wire Line
	4325 3725 4325 3750
Wire Wire Line
	4325 3750 4500 3750
Wire Wire Line
	4800 4050 4800 4100
Wire Wire Line
	4800 4100 4475 4100
Wire Notes Line
	5225 4925 5575 4925
Wire Notes Line
	5575 4925 5575 5050
Wire Notes Line
	5575 5050 5225 5050
Wire Notes Line
	5225 5050 5225 4925
Wire Notes Line
	5375 4925 5375 4850
Wire Notes Line
	5375 4850 5425 4850
Wire Notes Line
	5425 4850 5425 4925
Wire Notes Line
	5300 5050 5300 5125
Wire Notes Line
	5300 5125 5350 5125
Wire Notes Line
	5350 5125 5350 5050
Wire Notes Line
	5475 5050 5475 5125
Wire Notes Line
	5475 5125 5525 5125
Wire Notes Line
	5525 5125 5525 5050
Text Notes 5375 4825 0    50   ~ 0
D
Text Notes 5300 5225 0    50   ~ 0
G
Text Notes 5475 5225 0    50   ~ 0
S
Text Notes 5250 5025 0    50   ~ 0
BSS138
$Comp
L Device:R R?
U 1 1 5DF2278E
P 4800 4250
AR Path="/5DF2278E" Ref="R?"  Part="1" 
AR Path="/5DF1C911/5DF2278E" Ref="R801"  Part="1" 
F 0 "R801" H 4870 4296 50  0000 L CNN
F 1 "10k" H 4870 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 4250 50  0001 C CNN
F 3 "~" H 4800 4250 50  0001 C CNN
F 4 "CHIP RESISTOR - SURFACE MOUNT 10KOHMS ±1% 1/10W 0603 ROHS" H 4800 4250 50  0001 C CNN "Description"
F 5 " C25804" H 4800 4250 50  0001 C CNN "LCSC"
	1    4800 4250
	1    0    0    -1  
$EndComp
Connection ~ 4800 4100
$Comp
L power:GND #PWR?
U 1 1 5DF22795
P 4800 4450
AR Path="/5DF22795" Ref="#PWR?"  Part="1" 
AR Path="/5DF1C911/5DF22795" Ref="#PWR0802"  Part="1" 
F 0 "#PWR0802" H 4800 4200 50  0001 C CNN
F 1 "GND" H 4805 4277 50  0000 C CNN
F 2 "" H 4800 4450 50  0001 C CNN
F 3 "" H 4800 4450 50  0001 C CNN
	1    4800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4400 4800 4450
Text HLabel 4475 4100 0    50   Input ~ 0
BUZZER
$Comp
L power:VCC #PWR0801
U 1 1 5E272A5A
P 4325 3725
F 0 "#PWR0801" H 4325 3575 50  0001 C CNN
F 1 "VCC" H 4342 3898 50  0000 C CNN
F 2 "" H 4325 3725 50  0001 C CNN
F 3 "" H 4325 3725 50  0001 C CNN
	1    4325 3725
	1    0    0    -1  
$EndComp
$EndSCHEMATC
