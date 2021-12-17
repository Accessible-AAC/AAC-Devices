EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 12 12
Title "ATmega32U4 AAC Hub"
Date "2020-04-28"
Rev "1.2"
Comp "https://github.com/Accessible-AAC"
Comment1 "(c) Copyright 2020, Don Haig"
Comment2 "Licensed under CERN-OHL-S V 2"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5E9FC702
P 7400 4250
AR Path="/5DF3A285/5E9FC702" Ref="#PWR?"  Part="1" 
AR Path="/5E8477B4/5E9FC702" Ref="#PWR?"  Part="1" 
AR Path="/5E9F7E71/5E9FC702" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 7400 4000 50  0001 C CNN
F 1 "GND" H 7405 4077 50  0000 C CNN
F 2 "" H 7400 4250 50  0001 C CNN
F 3 "" H 7400 4250 50  0001 C CNN
	1    7400 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 3625 7400 3600
Text HLabel 7375 3825 2    50   Input ~ 0
Tx
Text HLabel 7375 4025 2    50   Input ~ 0
Rx
$Comp
L power:VCC #PWR?
U 1 1 5E9FC70B
P 7400 3600
AR Path="/5DF3A285/5E9FC70B" Ref="#PWR?"  Part="1" 
AR Path="/5E8477B4/5E9FC70B" Ref="#PWR?"  Part="1" 
AR Path="/5E9F7E71/5E9FC70B" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7400 3450 50  0001 C CNN
F 1 "VCC" H 7417 3773 50  0000 C CNN
F 2 "" H 7400 3600 50  0001 C CNN
F 3 "" H 7400 3600 50  0001 C CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9FC711
P 6225 4750
AR Path="/5DE6782E/5E9FC711" Ref="#PWR?"  Part="1" 
AR Path="/5DF3A285/5E9FC711" Ref="#PWR?"  Part="1" 
AR Path="/5E8477B4/5E9FC711" Ref="#PWR?"  Part="1" 
AR Path="/5E9F7E71/5E9FC711" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 6225 4500 50  0001 C CNN
F 1 "GND" H 6230 4577 50  0000 C CNN
F 2 "" H 6225 4750 50  0001 C CNN
F 3 "" H 6225 4750 50  0001 C CNN
	1    6225 4750
	-1   0    0    -1  
$EndComp
Text Label 5750 4675 0    50   ~ 0
A
Text Label 5750 4775 0    50   ~ 0
B
$Comp
L dbh_kicad_library:ESDA5V3L ESD?
U 1 1 5E9FC71A
P 5850 4675
AR Path="/5E160AF7/5E9FC71A" Ref="ESD?"  Part="1" 
AR Path="/5DF3A285/5E9FC71A" Ref="ESD?"  Part="1" 
AR Path="/5E8477B4/5E9FC71A" Ref="ESD?"  Part="1" 
AR Path="/5E9F7E71/5E9FC71A" Ref="ESD1202"  Part="1" 
F 0 "ESD1202" H 5975 4850 50  0000 C CNN
F 1 "ESDA5V3L" H 5975 4778 25  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5995 4810 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/STMicroelectronics-ESDA5V3L_C87911.pdf" H 5900 4650 50  0001 C CNN
F 4 " C87911" H 5960 4865 50  0001 C CNN "LCSC"
	1    5850 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4675 5750 4675
Wire Wire Line
	5850 4775 5750 4775
Wire Wire Line
	6100 4725 6225 4725
Wire Wire Line
	6225 4725 6225 4750
Wire Wire Line
	7150 3625 7400 3625
Text Label 7150 3625 0    50   ~ 0
VCC
Wire Wire Line
	7150 4250 7400 4250
Text Label 7150 4250 0    50   ~ 0
GND
Text Label 7150 4025 0    50   ~ 0
B
Text Label 7175 3825 0    50   ~ 0
A
$Comp
L dbh_kicad_library:BlueSMiRF J?
U 1 1 5E9FC72A
P 5900 4125
AR Path="/5DF3A285/5E9FC72A" Ref="J?"  Part="1" 
AR Path="/5E8477B4/5E9FC72A" Ref="J?"  Part="1" 
AR Path="/5E9F7E71/5E9FC72A" Ref="J1203"  Part="1" 
F 0 "J1203" H 5025 3325 50  0000 R CNN
F 1 "BlueSMiRF" H 5225 3450 50  0000 R CNN
F 2 "dbh_kicad_library:BlueSMiRF_Socket" V 5913 4119 50  0001 C CNN
F 3 "" V 5913 4119 50  0001 C CNN
	1    5900 4125
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 3825 6100 3825
Text Label 6100 3825 2    50   ~ 0
GND
Wire Wire Line
	5900 3725 6100 3725
Text Label 6100 3725 2    50   ~ 0
VCC
NoConn ~ 5900 3625
NoConn ~ 5900 4125
Wire Wire Line
	7175 3825 7375 3825
Wire Wire Line
	7150 4025 7375 4025
Wire Wire Line
	5900 4025 6100 4025
Text Label 6100 4025 2    50   ~ 0
A
Wire Wire Line
	5900 3925 6100 3925
Text Label 6100 3925 2    50   ~ 0
B
$EndSCHEMATC
