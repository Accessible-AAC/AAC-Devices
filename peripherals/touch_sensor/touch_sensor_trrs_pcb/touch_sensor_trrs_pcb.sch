EESchema Schematic File Version 5
LIBS:touch_sensor_trrs_pcb-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Catalex Touch Sensor TRRS Interface"
Date "2019-04-10"
Rev "1.0"
Comp ""
Comment1 "Designed by: Don Haig"
Comment2 "Accessible AAC "
Comment3 ""
Comment4 ""
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
	4750 4250 5600 4250
NoConn ~ 4750 4050
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
L dbh_kicad_library:catalex_touch_sensor S1
U 1 1 5CAF7381
P 5600 3950
F 0 "S1" H 6578 3846 50  0000 L CNN
F 1 "catalex_touch_sensor" H 6578 3755 50  0000 L CNN
F 2 "dbh_kicad_library:Catalex_Touch_Module" H 6450 3400 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
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
Text Label 5325 4250 0    50   ~ 0
Signal
$EndSCHEMATC
