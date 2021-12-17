EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 10 12
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
L Interface_Optical:TSOP341xx U1301
U 1 1 5E1E1A43
P 5125 3600
F 0 "U1301" H 4659 3558 50  0000 R CNN
F 1 "TSOP38238" H 4659 3649 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 5075 3225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82490/tsop321.pdf" H 5775 3900 50  0001 C CNN
	1    5125 3600
	-1   0    0    1   
$EndComp
Text HLabel 4500 3600 0    50   Output ~ 0
IR_RX
Wire Wire Line
	4500 3600 4725 3600
$Comp
L power:GND #PWR01303
U 1 1 5E1E3B51
P 4500 3325
F 0 "#PWR01303" H 4500 3075 50  0001 C CNN
F 1 "GND" H 4505 3152 50  0000 C CNN
F 2 "" H 4500 3325 50  0001 C CNN
F 3 "" H 4500 3325 50  0001 C CNN
	1    4500 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3325 4725 3325
Wire Wire Line
	4725 3325 4725 3400
Wire Wire Line
	4500 3925 4725 3925
Wire Wire Line
	4725 3925 4725 3800
$Comp
L power:VCC #PWR0139
U 1 1 5E718963
P 4500 3925
F 0 "#PWR0139" H 4500 3775 50  0001 C CNN
F 1 "VCC" H 4517 4098 50  0000 C CNN
F 2 "" H 4500 3925 50  0001 C CNN
F 3 "" H 4500 3925 50  0001 C CNN
	1    4500 3925
	1    0    0    -1  
$EndComp
$EndSCHEMATC
