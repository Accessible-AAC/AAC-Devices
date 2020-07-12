EESchema Schematic File Version 4
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
P 5575 3550
F 0 "SW1" H 5575 3835 50  0000 C CNN
F 1 "SW_Push" H 5575 3744 50  0000 C CNN
F 2 "dbh_kicad_library:dbh_SW_PUSH-12mm" H 5575 3750 50  0001 C CNN
F 3 "~" H 5575 3750 50  0001 C CNN
	1    5575 3550
	1    0    0    -1  
$EndComp
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
NoConn ~ 4375 3750
Text Label 5200 3550 0    50   ~ 0
Ring1
NoConn ~ 4375 3850
Wire Wire Line
	4375 3550 5375 3550
Wire Wire Line
	5775 3550 5975 3550
Wire Wire Line
	5975 3550 5975 3650
Wire Wire Line
	5975 3650 4375 3650
Text Label 5825 3550 0    50   ~ 0
Tip
$EndSCHEMATC
