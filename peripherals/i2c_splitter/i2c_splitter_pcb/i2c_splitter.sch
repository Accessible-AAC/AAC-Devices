EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "I2C Splitter"
Date "2019-09-12"
Rev "1.0"
Comp ""
Comment1 "Copyright 2019 Don Haig (accessible.aac at gmail dot com)"
Comment2 "http://creativecommons.org/licenses/by-sa/4.0/"
Comment3 "Creative Commons Attribution-ShareAlike 4.0 International License"
Comment4 "This work is licensed under a:"
$EndDescr
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
Text Label 5325 3625 0    50   ~ 0
Gnd
Wire Wire Line
	5325 3625 5525 3625
Text Label 4575 3275 2    50   ~ 0
Gnd
Wire Wire Line
	4575 3275 4375 3275
Text Label 4575 3925 2    50   ~ 0
Gnd
Wire Wire Line
	4575 3925 4375 3925
Text Label 4575 3075 2    50   ~ 0
V
Wire Wire Line
	4575 3075 4375 3075
Text Label 4575 2975 2    50   ~ 0
SCL
Wire Wire Line
	4575 2975 4375 2975
Text Label 4575 3175 2    50   ~ 0
SDA
Wire Wire Line
	4575 3175 4375 3175
Text Label 4575 3725 2    50   ~ 0
V
Wire Wire Line
	4575 3725 4375 3725
Text Label 4575 3625 2    50   ~ 0
SCL
Wire Wire Line
	4575 3625 4375 3625
Text Label 4575 3825 2    50   ~ 0
SDA
Wire Wire Line
	4575 3825 4375 3825
Text Label 5325 3425 0    50   ~ 0
V
Wire Wire Line
	5325 3425 5525 3425
Text Label 5325 3325 0    50   ~ 0
SCL
Wire Wire Line
	5325 3325 5525 3325
Text Label 5325 3525 0    50   ~ 0
SDA
Wire Wire Line
	5325 3525 5525 3525
$EndSCHEMATC
