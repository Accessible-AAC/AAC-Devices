EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 11 12
Title "ATmega32U4 AAC Hub"
Date "2020-04-28"
Rev "1.2"
Comp "https://github.com/Accessible-AAC"
Comment1 "(c) Copyright 2020, Don Haig"
Comment2 "Licensed under CERN-OHL-S V 2"
Comment3 ""
Comment4 "Based on https://github.com/AbilitySpectrum/Sensact"
$EndDescr
$Comp
L dbh_kicad_library:PJ320A J1101
U 1 1 5DF3BF23
P 5275 3650
AR Path="/5DF3A285/5DF3BF23" Ref="J1101"  Part="1" 
AR Path="/5E8477B4/5DF3BF23" Ref="J1202"  Part="1" 
F 0 "J1202" H 4833 3875 50  0000 C CNN
F 1 "PJ320A" H 4833 3784 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 4625 4050 50  0001 C CNN
F 3 "" H 4625 4050 50  0001 C CNN
F 4 "UART" H 4250 3525 50  0000 C CNN "Name"
	1    5275 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01102
U 1 1 5DF3BF24
P 5325 3950
AR Path="/5DF3A285/5DF3BF24" Ref="#PWR01102"  Part="1" 
AR Path="/5E8477B4/5DF3BF24" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 5325 3700 50  0001 C CNN
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
	5375 3750 5375 3525
Text HLabel 5800 3650 2    50   Input ~ 0
Tx
Text HLabel 5800 3850 2    50   Input ~ 0
Rx
Wire Wire Line
	5275 3650 5800 3650
Wire Wire Line
	5275 3850 5800 3850
Text Label 5725 3650 2    50   ~ 0
A
Text Label 5725 3850 2    50   ~ 0
B
$Comp
L power:VCC #PWR01103
U 1 1 5E270729
P 5375 3525
AR Path="/5DF3A285/5E270729" Ref="#PWR01103"  Part="1" 
AR Path="/5E8477B4/5E270729" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 5375 3375 50  0001 C CNN
F 1 "VCC" H 5392 3698 50  0000 C CNN
F 2 "" H 5375 3525 50  0001 C CNN
F 3 "" H 5375 3525 50  0001 C CNN
	1    5375 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1F60E4
P 5250 4475
AR Path="/5DE6782E/5E1F60E4" Ref="#PWR?"  Part="1" 
AR Path="/5DF3A285/5E1F60E4" Ref="#PWR0132"  Part="1" 
AR Path="/5E8477B4/5E1F60E4" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5250 4225 50  0001 C CNN
F 1 "GND" H 5255 4302 50  0000 C CNN
F 2 "" H 5250 4475 50  0001 C CNN
F 3 "" H 5250 4475 50  0001 C CNN
	1    5250 4475
	-1   0    0    -1  
$EndComp
Text Label 4775 4400 0    50   ~ 0
A
Text Label 4775 4500 0    50   ~ 0
B
$Comp
L dbh_kicad_library:ESDA5V3L D?
U 1 1 5E1F60ED
P 4875 4400
AR Path="/5E160AF7/5E1F60ED" Ref="D?"  Part="1" 
AR Path="/5DF3A285/5E1F60ED" Ref="ESD1001"  Part="1" 
AR Path="/5E8477B4/5E1F60ED" Ref="ESD1201"  Part="1" 
F 0 "ESD1201" H 5000 4575 50  0000 C CNN
F 1 "ESDA5V3L" H 5000 4503 25  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5020 4535 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/STMicroelectronics-ESDA5V3L_C87911.pdf" H 4925 4375 50  0001 C CNN
F 4 " C87911" H 4985 4590 50  0001 C CNN "LCSC"
	1    4875 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 4400 4775 4400
Wire Wire Line
	4875 4500 4775 4500
Wire Wire Line
	5125 4450 5250 4450
Wire Wire Line
	5250 4450 5250 4475
$EndSCHEMATC
