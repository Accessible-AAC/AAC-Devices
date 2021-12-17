EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "ATmega32U4 Pro Micro Hub"
Date "2019-11-01"
Rev "1.0"
Comp "Based on https://github.com/AbilitySpectrum/Sensact"
Comment1 "Drawn by: Don Haig"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R12
U 1 1 5CC1A760
P 3450 2375
F 0 "R12" H 3520 2421 50  0000 L CNN
F 1 "10k" H 3520 2330 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3380 2375 50  0001 C CNN
F 3 "~" H 3450 2375 50  0001 C CNN
	1    3450 2375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5CC1B12D
P 4000 2375
F 0 "R14" H 4070 2421 50  0000 L CNN
F 1 "10k" H 4070 2330 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3930 2375 50  0001 C CNN
F 3 "~" H 4000 2375 50  0001 C CNN
	1    4000 2375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5CC1CA09
P 1350 4900
F 0 "#PWR033" H 1350 4650 50  0001 C CNN
F 1 "GND" H 1355 4727 50  0000 C CNN
F 2 "" H 1350 4900 50  0001 C CNN
F 3 "" H 1350 4900 50  0001 C CNN
	1    1350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2525 3450 2750
Wire Wire Line
	4000 2850 4000 2525
Text HLabel 3525 2750 2    50   UnSpc ~ 0
ESD7
Text HLabel 4075 2850 2    50   UnSpc ~ 0
ESD8
Wire Wire Line
	3525 2750 3450 2750
Wire Wire Line
	4075 2850 4000 2850
Wire Wire Line
	4000 2225 4000 2150
Wire Wire Line
	4000 2150 3450 2150
Wire Wire Line
	3450 2150 3450 2225
Connection ~ 3450 2150
$Comp
L power:GND #PWR018
U 1 1 5D5C2DED
P 7375 5150
F 0 "#PWR018" H 7375 4900 50  0001 C CNN
F 1 "GND" H 7380 4977 50  0000 C CNN
F 2 "" H 7375 5150 50  0001 C CNN
F 3 "" H 7375 5150 50  0001 C CNN
	1    7375 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 5050 7375 5150
$Comp
L Device:R_Network08 RN1
U 1 1 5D5F2ACA
P 6975 4850
F 0 "RN1" H 6495 4804 50  0000 R CNN
F 1 "10K" H 6495 4895 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP9" V 7450 4850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6975 4850 50  0001 C CNN
	1    6975 4850
	-1   0    0    1   
$EndComp
Text Notes 4575 3475 2    79   ~ 16
This should be changed to a 3.3V part
Text HLabel 7375 4450 1    50   Input ~ 0
Relay2_Pulldown
Text HLabel 5900 4475 1    50   UnSpc ~ 0
ESD6
Text HLabel 5500 4475 1    50   UnSpc ~ 0
ESD5
Text HLabel 5100 4475 1    50   UnSpc ~ 0
ESD4
Text HLabel 4725 4475 1    50   UnSpc ~ 0
ESD3
Text HLabel 4325 4475 1    50   UnSpc ~ 0
ESD2
Text HLabel 3925 4475 1    50   UnSpc ~ 0
ESD1
Text HLabel 7275 4450 1    50   Input ~ 0
Relay1_Pulldown
Wire Wire Line
	4325 4950 4725 4950
Connection ~ 4325 4950
Wire Wire Line
	4325 4900 4325 4950
Wire Wire Line
	4725 4950 4925 4950
Connection ~ 4725 4950
Wire Wire Line
	4725 4900 4725 4950
Wire Wire Line
	5500 4950 5100 4950
Connection ~ 5500 4950
Wire Wire Line
	5500 4900 5500 4950
Wire Wire Line
	5900 4950 5500 4950
Wire Wire Line
	5100 4950 4925 4950
Connection ~ 5100 4950
Wire Wire Line
	5100 4900 5100 4950
Connection ~ 4925 4950
Wire Wire Line
	5900 4900 5900 4950
Wire Wire Line
	4925 4950 4925 4975
Wire Wire Line
	3925 4950 4325 4950
Wire Wire Line
	3925 4900 3925 4950
Wire Wire Line
	5500 4475 5500 4600
Wire Wire Line
	5100 4475 5100 4600
Wire Wire Line
	4725 4475 4725 4600
Wire Wire Line
	4325 4475 4325 4600
Wire Wire Line
	3925 4475 3925 4600
$Comp
L dbh_kicad_library:PESD5V0S1BA D9
U 1 1 5CBE93D2
P 5900 4750
F 0 "D9" H 5957 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 5957 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 6000 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 5875 4850 50  0001 C CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PESD5V0S1BA D8
U 1 1 5CBE93A7
P 5500 4750
F 0 "D8" H 5557 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 5557 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 5600 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 5475 4850 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PESD5V0S1BA D7
U 1 1 5CBE4810
P 5100 4750
F 0 "D7" H 5157 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 5157 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 5200 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 5075 4850 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5CBE47EF
P 4925 4975
F 0 "#PWR036" H 4925 4725 50  0001 C CNN
F 1 "GND" H 4930 4802 50  0000 C CNN
F 2 "" H 4925 4975 50  0001 C CNN
F 3 "" H 4925 4975 50  0001 C CNN
	1    4925 4975
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PESD5V0S1BA D6
U 1 1 5CBE47E5
P 4725 4750
F 0 "D6" H 4782 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 4782 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 4825 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 4700 4850 50  0001 C CNN
	1    4725 4750
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PESD5V0S1BA D5
U 1 1 5CBE2462
P 4325 4750
F 0 "D5" H 4382 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 4382 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 4425 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 4300 4850 50  0001 C CNN
	1    4325 4750
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:PESD5V0S1BA D4
U 1 1 5CBE0A9E
P 3925 4750
F 0 "D4" H 3982 4776 50  0000 L CNN
F 1 "PESD5V0S1BA" H 3982 4704 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 4025 4750 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 3900 4850 50  0001 C CNN
	1    3925 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7275 4450 7275 4650
Wire Wire Line
	5900 4475 5900 4600
Wire Wire Line
	7375 4450 7375 4650
Wire Wire Line
	6675 4650 6675 4500
Text Label 6675 4500 1    56   ~ 0
ESD1
Wire Wire Line
	6775 4650 6775 4500
Text Label 6775 4500 1    56   ~ 0
ESD2
Wire Wire Line
	6875 4650 6875 4500
Text Label 6875 4500 1    56   ~ 0
ESD3
Wire Wire Line
	6975 4650 6975 4500
Text Label 6975 4500 1    56   ~ 0
ESD4
Wire Wire Line
	7075 4650 7075 4500
Text Label 7075 4500 1    56   ~ 0
ESD5
Wire Wire Line
	7175 4650 7175 4500
Text Label 7175 4500 1    56   ~ 0
ESD6
Wire Wire Line
	3925 4475 4075 4475
Text Label 4075 4475 0    56   ~ 0
ESD1
Wire Wire Line
	4325 4475 4475 4475
Text Label 4475 4475 0    56   ~ 0
ESD2
Wire Wire Line
	4725 4475 4875 4475
Text Label 4875 4475 0    56   ~ 0
ESD3
Wire Wire Line
	5100 4475 5250 4475
Text Label 5250 4475 0    56   ~ 0
ESD4
Wire Wire Line
	5500 4475 5650 4475
Text Label 5650 4475 0    56   ~ 0
ESD5
Wire Wire Line
	5900 4475 6050 4475
Text Label 6050 4475 0    56   ~ 0
ESD6
$Comp
L dbh_kicad_library:CM1293A-04 ESD2
U 1 1 5D6C8131
P 800 4575
F 0 "ESD2" H 1778 4676 50  0000 L CNN
F 1 "CM1293A-04" H 1778 4604 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 1870 4660 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 775 4675 50  0001 C CNN
	1    800  4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4825 1350 4900
$Comp
L power:+3.3V #PWR030
U 1 1 5D7BCE4C
P 3450 2050
F 0 "#PWR030" H 3450 1900 50  0001 C CNN
F 1 "+3.3V" H 3465 2223 50  0000 C CNN
F 2 "" H 3450 2050 50  0001 C CNN
F 3 "" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2050 3450 2150
$Comp
L power:+3.3V #PWR026
U 1 1 5D7BF048
P 1350 4075
F 0 "#PWR026" H 1350 3925 50  0001 C CNN
F 1 "+3.3V" H 1365 4248 50  0000 C CNN
F 2 "" H 1350 4075 50  0001 C CNN
F 3 "" H 1350 4075 50  0001 C CNN
	1    1350 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4075 1350 4175
Wire Wire Line
	1150 4825 1150 4975
Text Label 1150 4975 3    56   ~ 0
ESD1
Wire Wire Line
	1550 4825 1550 4975
Text Label 1550 4975 3    56   ~ 0
ESD2
Wire Wire Line
	1150 4175 1150 4025
Text Label 1150 4025 1    56   ~ 0
ESD3
Wire Wire Line
	1550 4175 1550 4025
Text Label 1550 4025 1    56   ~ 0
ESD4
$Comp
L power:GND #PWR028
U 1 1 5D7C91E9
P 2675 4900
F 0 "#PWR028" H 2675 4650 50  0001 C CNN
F 1 "GND" H 2680 4727 50  0000 C CNN
F 2 "" H 2675 4900 50  0001 C CNN
F 3 "" H 2675 4900 50  0001 C CNN
	1    2675 4900
	1    0    0    -1  
$EndComp
$Comp
L dbh_kicad_library:CM1293A-04 ESD1
U 1 1 5D7C91F3
P 2125 4575
F 0 "ESD1" H 3103 4676 50  0000 L CNN
F 1 "CM1293A-04" H 3103 4604 25  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" V 3195 4660 25  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PESD5V0S1BA_BB_BL.pdf" V 2100 4675 50  0001 C CNN
	1    2125 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 4825 2675 4900
$Comp
L power:+3.3V #PWR027
U 1 1 5D7C91FE
P 2675 4075
F 0 "#PWR027" H 2675 3925 50  0001 C CNN
F 1 "+3.3V" H 2690 4248 50  0000 C CNN
F 2 "" H 2675 4075 50  0001 C CNN
F 3 "" H 2675 4075 50  0001 C CNN
	1    2675 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 4075 2675 4175
Wire Wire Line
	2475 4825 2475 4975
Text Label 2475 4975 3    56   ~ 0
ESD5
Wire Wire Line
	2875 4825 2875 4975
Text Label 2875 4975 3    56   ~ 0
ESD6
Wire Wire Line
	2475 4175 2475 4025
Text Label 2475 4025 1    56   ~ 0
ESD7
Wire Wire Line
	2875 4175 2875 4025
Text Label 2875 4025 1    56   ~ 0
ESD8
Wire Wire Line
	3450 2525 3300 2525
Text Label 3300 2525 2    56   ~ 0
ESD7
Connection ~ 3450 2525
Wire Wire Line
	4000 2525 4150 2525
Text Label 4150 2525 0    56   ~ 0
ESD8
Connection ~ 4000 2525
$EndSCHEMATC
