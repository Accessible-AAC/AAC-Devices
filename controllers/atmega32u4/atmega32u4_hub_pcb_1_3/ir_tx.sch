EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 12
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
L dk_Transistors-FETs-MOSFETs-Single:BSS138 Q?
U 1 1 5DF162DC
P 5725 3750
AR Path="/5DF162DC" Ref="Q?"  Part="1" 
AR Path="/5DF0F500/5DF162DC" Ref="Q701"  Part="1" 
F 0 "Q701" V 5992 3750 60  0000 C CNN
F 1 "BSS138" V 5886 3750 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5925 3950 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5925 4050 60  0001 L CNN
F 4 "BSS138CT-ND" H 5925 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138" H 5925 4250 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5925 4350 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5925 4450 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5925 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS138/BSS138CT-ND/244294" H 5925 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 220MA SOT-23" H 5925 4750 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5925 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5925 4950 60  0001 L CNN "Status"
F 13 " C82045" V 5725 3750 50  0001 C CNN "LCSC"
	1    5725 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 3125 5125 3150
Wire Wire Line
	5125 3150 5300 3150
$Comp
L power:GND #PWR?
U 1 1 5DF162EB
P 5725 4025
AR Path="/5DF162EB" Ref="#PWR?"  Part="1" 
AR Path="/5DF0F500/5DF162EB" Ref="#PWR0702"  Part="1" 
F 0 "#PWR0702" H 5725 3775 50  0001 C CNN
F 1 "GND" H 5730 3852 50  0000 C CNN
F 2 "" H 5725 4025 50  0001 C CNN
F 3 "" H 5725 4025 50  0001 C CNN
	1    5725 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 3950 5725 4025
Wire Wire Line
	5025 3850 5425 3850
Wire Wire Line
	5725 3550 5725 3450
$Comp
L Device:R R?
U 1 1 5DF162FA
P 5450 3150
AR Path="/5DF162FA" Ref="R?"  Part="1" 
AR Path="/5DF0F500/5DF162FA" Ref="R701"  Part="1" 
F 0 "R701" V 5243 3150 50  0000 C CNN
F 1 "47" V 5334 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5380 3150 50  0001 C CNN
F 3 "~" H 5450 3150 50  0001 C CNN
F 4 "CHIP RESISTOR - SURFACE MOUNT 47OHMS ±5% 1/4W 1206 ROHS" V 5450 3150 50  0001 C CNN "Description"
F 5 "1206W4J0470T5E" V 5450 3150 50  0001 C CNN "Part Number"
F 6 "  C25384" V 5450 3150 50  0001 C CNN "LCSC"
	1    5450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3150 5725 3150
Text HLabel 5025 3850 0    50   Input ~ 0
IR_Tx
Wire Notes Line
	6425 3675 6775 3675
Wire Notes Line
	6775 3675 6775 3800
Wire Notes Line
	6775 3800 6425 3800
Wire Notes Line
	6425 3800 6425 3675
Wire Notes Line
	6575 3675 6575 3600
Wire Notes Line
	6575 3600 6625 3600
Wire Notes Line
	6625 3600 6625 3675
Wire Notes Line
	6500 3800 6500 3875
Wire Notes Line
	6500 3875 6550 3875
Wire Notes Line
	6550 3875 6550 3800
Wire Notes Line
	6675 3800 6675 3875
Wire Notes Line
	6675 3875 6725 3875
Wire Notes Line
	6725 3875 6725 3800
Text Notes 6575 3575 0    50   ~ 0
D
Text Notes 6500 3975 0    50   ~ 0
G
Text Notes 6675 3975 0    50   ~ 0
S
Text Notes 6450 3775 0    50   ~ 0
BSS138
$Comp
L power:VCC #PWR0701
U 1 1 5E273D96
P 5125 3125
F 0 "#PWR0701" H 5125 2975 50  0001 C CNN
F 1 "VCC" H 5142 3298 50  0000 C CNN
F 2 "" H 5125 3125 50  0001 C CNN
F 3 "" H 5125 3125 50  0001 C CNN
	1    5125 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DF162F3
P 5725 3300
AR Path="/5DF162F3" Ref="D?"  Part="1" 
AR Path="/5DF0F500/5DF162F3" Ref="D701"  Part="1" 
F 0 "D701" V 5764 3183 50  0001 R CNN
F 1 "IR LED" V 5673 3183 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5725 3300 50  0001 C CNN
F 3 "~" H 5725 3300 50  0001 C CNN
	1    5725 3300
	0    -1   -1   0   
$EndComp
Text Notes 5850 3225 0    50   ~ 0
short lead = pin  1
$EndSCHEMATC
