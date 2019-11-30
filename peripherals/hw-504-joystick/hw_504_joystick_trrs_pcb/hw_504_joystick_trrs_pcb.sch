EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "HW-504 Joystick Interface Board"
Date "2019-04-10"
Rev "1.0"
Comp ""
Comment1 "Copyright 2019 Don Haig (accessible.aac at gmail dot com)"
Comment2 "http://creativecommons.org/licenses/by-sa/4.0/"
Comment3 "Creative Commons Attribution-ShareAlike 4.0 International License"
Comment4 "This work is licensed under a:"
$EndDescr
$Comp
L dbh_kicad_library:PJ320A J1
U 1 1 5CAF3F7B
P 4750 4250
F 0 "J1" H 4308 4475 50  0000 C CNN
F 1 "PJ320A" H 4308 4384 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4750 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	4750 4150 5100 4150
Wire Wire Line
	5275 4150 5275 4100
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 5275 4150
Wire Wire Line
	5525 3950 5600 3950
Wire Wire Line
	5525 3875 5525 3950
$Comp
L power:GND #PWR01
U 1 1 5CAEDB23
P 5525 3875
F 0 "#PWR01" H 5525 3625 50  0001 C CNN
F 1 "GND" H 5530 3702 50  0000 C CNN
F 2 "" H 5525 3875 50  0001 C CNN
F 3 "" H 5525 3875 50  0001 C CNN
	1    5525 3875
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CAEB199
P 5100 4150
F 0 "#FLG0101" H 5100 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 4275 50  0000 C CNN
F 2 "" H 5100 4150 50  0001 C CNN
F 3 "~" H 5100 4150 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3950 5075 3950
Connection ~ 5525 3950
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5CAF498F
P 5075 3950
F 0 "#FLG0102" H 5075 4025 50  0001 C CNN
F 1 "PWR_FLAG" H 5075 4075 50  0000 C CNN
F 2 "" H 5075 3950 50  0001 C CNN
F 3 "~" H 5075 3950 50  0001 C CNN
	1    5075 3950
	1    0    0    -1  
$EndComp
Connection ~ 5075 3950
Wire Wire Line
	5075 3950 5525 3950
$Comp
L power:+5V #PWR0101
U 1 1 5CAFB0AA
P 5350 3800
F 0 "#PWR0101" H 5350 3650 50  0001 C CNN
F 1 "+5V" H 5365 3973 50  0000 C CNN
F 2 "" H 5350 3800 50  0001 C CNN
F 3 "" H 5350 3800 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3800 5350 4100
Wire Wire Line
	5275 4100 5350 4100
Connection ~ 5350 4100
Wire Wire Line
	5350 4100 5600 4100
NoConn ~ 5600 4550
Wire Wire Line
	4750 4050 4925 4050
Wire Wire Line
	4925 4050 4925 4250
Wire Wire Line
	4925 4250 5600 4250
Wire Wire Line
	4750 4250 4850 4250
Wire Wire Line
	4850 4250 4850 4400
Wire Wire Line
	4850 4400 5600 4400
$Comp
L dbh_kicad_library:hw_504_joystick_module J2
U 1 1 5CCE0F77
P 5600 3950
F 0 "J2" H 6528 3766 50  0000 L CNN
F 1 "hw_504_joystick_module" H 6528 3675 50  0000 L CNN
F 2 "dbh_kicad_library:HW-504_Joystick_Module" H 6528 3584 50  0000 L CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
Text Label 5275 4250 0    50   ~ 0
Vx
Text Label 5275 4400 0    50   ~ 0
Vy
$EndSCHEMATC
