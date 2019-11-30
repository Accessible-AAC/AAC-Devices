EESchema Schematic File Version 4
LIBS:tactile_switch_pcb_v2-cache
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Tactile Switch Interface"
Date "2019-07-20"
Rev "1.0"
Comp ""
Comment1 "Copyright 2019 Don Haig (accessible.aac at gmail dot com)"
Comment2 "http://creativecommons.org/licenses/by-sa/4.0/"
Comment3 "Creative Commons Attribution-ShareAlike 4.0 International License"
Comment4 "This work is licensed under a:"
$EndDescr
$Comp
L Switch:SW_Push SW1
U 1 1 5D3251E9
P 5950 3575
F 0 "SW1" H 5950 3860 50  0000 C CNN
F 1 "SW_Push" H 5950 3769 50  0000 C CNN
F 2 "dbh_kicad_library:dbh_SW_PUSH-12mm" H 5950 3775 50  0001 C CNN
F 3 "~" H 5950 3775 50  0001 C CNN
	1    5950 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3575 6325 3575
Text Label 6325 3575 2    50   ~ 0
2
$Comp
L dbh_kicad_library:PJ320A J1
U 1 1 5D82C065
P 4375 3550
F 0 "J1" H 3933 3775 50  0000 C CNN
F 1 "PJ320A" H 3933 3684 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 3725 3950 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 3725 3950 50  0001 C CNN
	1    4375 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 3650 4475 3650
Text Label 4475 3650 2    50   ~ 0
2
NoConn ~ 4375 3750
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5D8354D3
P 4975 3575
F 0 "JP1" V 4650 3525 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 4575 3200 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4975 3575 50  0001 C CNN
F 3 "~" H 4975 3575 50  0001 C CNN
	1    4975 3575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5125 3575 5750 3575
Wire Wire Line
	4375 3550 4750 3550
Wire Wire Line
	4750 3550 4750 3375
Wire Wire Line
	4750 3375 4975 3375
Text Notes 5125 3775 0    50   ~ 0
Black base
Text Notes 5125 3450 0    50   ~ 0
Yellow Base
Wire Wire Line
	4375 3850 4975 3850
Wire Wire Line
	4975 3850 4975 3775
Text Label 5700 3575 0    50   ~ 0
1
$EndSCHEMATC
