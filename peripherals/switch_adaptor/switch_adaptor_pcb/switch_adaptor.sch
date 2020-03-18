EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Switch Adaptor"
Date "2019-05-05"
Rev "1.0"
Comp ""
Comment1 "Copyright 2019 Don Haig (accessible.aac at gmail dot com)"
Comment2 "http://creativecommons.org/licenses/by-sa/4.0/"
Comment3 "Creative Commons Attribution-ShareAlike 4.0 International License"
Comment4 "This work is licensed under a:"
$EndDescr
Wire Wire Line
	5525 3325 5075 3325
Wire Wire Line
	5075 3075 5075 3325
Wire Wire Line
	4375 3075 5075 3075
Wire Wire Line
	5075 3725 5075 3525
Wire Wire Line
	4375 3725 5075 3725
Wire Wire Line
	5075 3525 5525 3525
NoConn ~ 5525 3625
Wire Wire Line
	4375 3175 4525 3175
Wire Wire Line
	4675 3425 5525 3425
Wire Wire Line
	4675 3825 4525 3825
Connection ~ 4675 3425
$Comp
L dbh_kicad_library:PJ320A J1
U 1 1 5CCF9B2D
P 4375 2975
F 0 "J1" H 3933 3200 50  0000 C CNN
F 1 "PJ320A" H 3933 3109 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 3725 3375 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 3725 3375 50  0001 C CNN
	1    4375 2975
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PJ320A J2
U 1 1 5CCFBE46
P 4375 3625
F 0 "J2" H 3933 3850 50  0000 C CNN
F 1 "PJ320A" H 3933 3759 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 3725 4025 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 3725 4025 50  0001 C CNN
	1    4375 3625
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PJ320A J3
U 1 1 5CCFC37F
P 5525 3325
F 0 "J3" H 4597 3208 50  0000 R CNN
F 1 "PJ320A" H 4597 3117 50  0000 R CNN
F 2 "dbh_kicad_library:PJ-320A" H 4875 3725 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 4875 3725 50  0001 C CNN
	1    5525 3325
	-1   0    0    -1  
$EndComp
Text Label 4875 3425 0    50   ~ 0
Vcc
Text Label 4725 3075 0    50   ~ 0
SW1
Text Label 4725 3725 0    50   ~ 0
SW2
Wire Wire Line
	4375 3275 4525 3275
Wire Wire Line
	4375 2975 4525 2975
Wire Wire Line
	4375 3625 4525 3625
Wire Wire Line
	4375 3925 4525 3925
Wire Wire Line
	4525 2975 4525 3175
Connection ~ 4525 3175
Wire Wire Line
	4525 3175 4675 3175
Wire Wire Line
	4525 3175 4525 3275
Wire Wire Line
	4675 3175 4675 3425
Wire Wire Line
	4525 3625 4525 3825
Connection ~ 4525 3825
Wire Wire Line
	4525 3825 4375 3825
Wire Wire Line
	4525 3825 4525 3925
Wire Wire Line
	4675 3425 4675 3825
$EndSCHEMATC
