EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "GY-521/MPU-6050  Interface Board"
Date "2019-05-05"
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
$Comp
L power:GND #PWR01
U 1 1 5CAEDB23
P 5375 3950
F 0 "#PWR01" H 5375 3700 50  0001 C CNN
F 1 "GND" H 5380 3777 50  0000 C CNN
F 2 "" H 5375 3950 50  0001 C CNN
F 3 "" H 5375 3950 50  0001 C CNN
	1    5375 3950
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CAEB199
P 5150 4150
F 0 "#FLG0101" H 5150 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 4275 50  0000 C CNN
F 2 "" H 5150 4150 50  0001 C CNN
F 3 "~" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3950 5075 3950
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
$Comp
L power:+5V #PWR0101
U 1 1 5CAFB0AA
P 5725 3875
F 0 "#PWR0101" H 5725 3725 50  0001 C CNN
F 1 "+5V" H 5740 4048 50  0000 C CNN
F 2 "" H 5725 3875 50  0001 C CNN
F 3 "" H 5725 3875 50  0001 C CNN
	1    5725 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4050 4925 4050
Wire Wire Line
	4750 4250 4850 4250
$Comp
L dbh_kicad_library:gy-521_i2c_gyro_module J2
U 1 1 5CCF26F8
P 5825 3975
F 0 "J2" H 6553 3841 50  0000 L CNN
F 1 "gy-521_i2c_gyro_module" H 6553 3750 50  0000 L CNN
F 2 "dbh_kicad_library:gy-921_i2c_module" H 6553 3659 50  0000 L CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/MPU-6000-Datasheet1.pdf" H 5825 3825 50  0001 C CNN
	1    5825 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 3950 5375 3950
Connection ~ 5075 3950
Wire Wire Line
	5375 3950 5375 4125
Connection ~ 5375 3950
Wire Wire Line
	5600 4150 5600 3975
Wire Wire Line
	5600 3975 5725 3975
Wire Wire Line
	5725 3875 5725 3975
Connection ~ 5725 3975
Wire Wire Line
	5725 3975 5825 3975
Wire Wire Line
	5375 4125 5825 4125
Connection ~ 5150 4150
Wire Wire Line
	5150 4150 5600 4150
Wire Wire Line
	4750 4150 5150 4150
Wire Wire Line
	5825 4425 4925 4425
Wire Wire Line
	4925 4050 4925 4425
Wire Wire Line
	5825 4275 4850 4275
Wire Wire Line
	4850 4275 4850 4250
Text Label 5375 4425 0    50   ~ 0
SDA
Text Label 5375 4275 0    50   ~ 0
SCL
$EndSCHEMATC
