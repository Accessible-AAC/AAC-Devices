EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 12
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
L dbh_kicad_library:PJ320A J?
U 1 1 5DEA40EB
P 5350 3425
AR Path="/5DE6782E/5DEA40EB" Ref="J?"  Part="1" 
AR Path="/5DEA0F16/5DEA40EB" Ref="J301"  Part="1" 
AR Path="/5DEB8CB2/5DEA40EB" Ref="J401"  Part="1" 
AR Path="/5DEEB865/5DEA40EB" Ref="J501"  Part="1" 
F 0 "J501" H 4908 3650 50  0000 C CNN
F 1 "PJ320A" H 4908 3559 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 4700 3825 50  0001 C CNN
F 3 "" H 4700 3825 50  0001 C CNN
	1    5350 3425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEA40F1
P 5400 3725
AR Path="/5DE6782E/5DEA40F1" Ref="#PWR?"  Part="1" 
AR Path="/5DEA0F16/5DEA40F1" Ref="#PWR0302"  Part="1" 
AR Path="/5DEB8CB2/5DEA40F1" Ref="#PWR0402"  Part="1" 
AR Path="/5DEEB865/5DEA40F1" Ref="#PWR0502"  Part="1" 
F 0 "#PWR0502" H 5400 3475 50  0001 C CNN
F 1 "GND" H 5405 3552 50  0000 C CNN
F 2 "" H 5400 3725 50  0001 C CNN
F 3 "" H 5400 3725 50  0001 C CNN
	1    5400 3725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 3725 5350 3725
Wire Wire Line
	5350 3525 5450 3525
Wire Wire Line
	5450 3525 5450 3300
Text HLabel 5875 3425 2    50   Input ~ 0
A
Text HLabel 5875 3625 2    50   Input ~ 0
B
Wire Wire Line
	5350 3425 5875 3425
Wire Wire Line
	5350 3625 5875 3625
Text Label 5800 3425 2    50   ~ 0
A
Text Label 5800 3625 2    50   ~ 0
B
$Comp
L power:VCC #PWR0303
U 1 1 5E27985F
P 5450 3300
AR Path="/5DEA0F16/5E27985F" Ref="#PWR0303"  Part="1" 
AR Path="/5DEB8CB2/5E27985F" Ref="#PWR0403"  Part="1" 
AR Path="/5DEEB865/5E27985F" Ref="#PWR0503"  Part="1" 
F 0 "#PWR0503" H 5450 3150 50  0001 C CNN
F 1 "VCC" H 5467 3473 50  0000 C CNN
F 2 "" H 5450 3300 50  0001 C CNN
F 3 "" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1F1EE9
P 5375 4325
AR Path="/5DE6782E/5E1F1EE9" Ref="#PWR?"  Part="1" 
AR Path="/5DEB8CB2/5E1F1EE9" Ref="#PWR0130"  Part="1" 
AR Path="/5DEA0F16/5E1F1EE9" Ref="#PWR0129"  Part="1" 
AR Path="/5DEEB865/5E1F1EE9" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 5375 4075 50  0001 C CNN
F 1 "GND" H 5380 4152 50  0000 C CNN
F 2 "" H 5375 4325 50  0001 C CNN
F 3 "" H 5375 4325 50  0001 C CNN
	1    5375 4325
	-1   0    0    -1  
$EndComp
Text Label 4900 4250 0    50   ~ 0
A
Text Label 4900 4350 0    50   ~ 0
B
$Comp
L dbh_kicad_library:ESDA5V3L D?
U 1 1 5E1F1EF2
P 5000 4250
AR Path="/5E160AF7/5E1F1EF2" Ref="D?"  Part="1" 
AR Path="/5DEB8CB2/5E1F1EF2" Ref="ESD401"  Part="1" 
AR Path="/5DEA0F16/5E1F1EF2" Ref="ESD301"  Part="1" 
AR Path="/5DEEB865/5E1F1EF2" Ref="ESD501"  Part="1" 
F 0 "ESD501" H 5125 4425 50  0000 C CNN
F 1 "ESDA5V3L" H 5125 4353 25  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5145 4385 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/STMicroelectronics-ESDA5V3L_C87911.pdf" H 5050 4225 50  0001 C CNN
F 4 " C87911" H 5110 4440 50  0001 C CNN "LCSC"
	1    5000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4250 4900 4250
Wire Wire Line
	5000 4350 4900 4350
Wire Wire Line
	5250 4300 5375 4300
Wire Wire Line
	5375 4300 5375 4325
$EndSCHEMATC
