EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 8 12
Title "ATmega32U4 AAC Hub"
Date "2020-04-28"
Rev "1.2"
Comp "https://github.com/Accessible-AAC"
Comment1 "(c) Copyright 2020, Don Haig"
Comment2 "Licensed under CERN-OHL-S V 2"
Comment3 ""
Comment4 "Based on https://github.com/AbilitySpectrum/Sensact"
$EndDescr
$Comp
L dbh_kicad_library:PJ320A J?
U 1 1 5DF2A57E
P 5350 3400
AR Path="/5DF2A57E" Ref="J?"  Part="1" 
AR Path="/5DF25BF3/5DF2A57E" Ref="J901"  Part="1" 
AR Path="/5DF31309/5DF2A57E" Ref="J1001"  Part="1" 
F 0 "J1001" H 4750 3575 50  0000 R CNN
F 1 "PJ320A" H 4850 3450 50  0000 R CNN
F 2 "dbh_kicad_library:PJ-320A" H 4700 3800 50  0001 C CNN
F 3 "" H 4700 3800 50  0001 C CNN
	1    5350 3400
	-1   0    0    -1  
$EndComp
NoConn ~ 5350 3400
NoConn ~ 5350 3600
$Comp
L dbh_kicad_library:SIP-1A03 K?
U 1 1 5DF2A58B
P 5225 3525
AR Path="/5DF2A58B" Ref="K?"  Part="1" 
AR Path="/5DF25BF3/5DF2A58B" Ref="K901"  Part="1" 
AR Path="/5DF31309/5DF2A58B" Ref="K1001"  Part="1" 
F 0 "K1001" H 5000 3750 50  0000 C CNN
F 1 "RELAY" H 5000 3659 50  0000 C CNN
F 2 "dbh_kicad_library:sip-1a05" H 5025 3205 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PAN-CHANG-SIP-1A05_C10496.pdf" H 5225 3525 50  0001 C CNN
	1    5225 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 3525 4700 3525
Wire Wire Line
	4500 3675 4775 3675
Connection ~ 4500 3675
Wire Wire Line
	4500 3800 4500 3675
Wire Wire Line
	4225 3675 4500 3675
Wire Wire Line
	4700 3525 4700 3375
$Comp
L power:GND #PWR?
U 1 1 5DF2A5A5
P 4500 3800
AR Path="/5DF2A5A5" Ref="#PWR?"  Part="1" 
AR Path="/5DF25BF3/5DF2A5A5" Ref="#PWR0901"  Part="1" 
AR Path="/5DF31309/5DF2A5A5" Ref="#PWR01001"  Part="1" 
F 0 "#PWR01001" H 4500 3550 50  0001 C CNN
F 1 "GND" H 4505 3627 50  0000 C CNN
F 2 "" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 3525 5250 3525
Wire Wire Line
	5250 3525 5250 3500
Wire Wire Line
	5250 3500 5350 3500
Wire Wire Line
	5350 3700 5250 3700
Wire Wire Line
	5250 3700 5250 3675
Wire Wire Line
	5250 3675 5225 3675
Text HLabel 3675 3675 0    50   Input ~ 0
Relay
$Comp
L dbh_kicad_library:1N4007 D901
U 1 1 5DE6C824
P 4225 3525
AR Path="/5DF25BF3/5DE6C824" Ref="D901"  Part="1" 
AR Path="/5DF31309/5DE6C824" Ref="D1001"  Part="1" 
F 0 "D1001" V 4179 3604 50  0000 L CNN
F 1 "1N4007" V 4270 3604 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 4225 3350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4225 3525 50  0001 C CNN
F 4 "C95872" V 4225 3525 50  0001 C CNN "LCSC"
	1    4225 3525
	0    1    1    0   
$EndComp
Wire Wire Line
	3675 3675 3825 3675
Wire Wire Line
	4225 3375 4700 3375
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138 Q?
U 1 1 5E1C6234
P 3725 3375
AR Path="/5E1C6234" Ref="Q?"  Part="1" 
AR Path="/5DF1C911/5E1C6234" Ref="Q?"  Part="1" 
AR Path="/5DF25BF3/5E1C6234" Ref="Q802"  Part="1" 
AR Path="/5DF31309/5E1C6234" Ref="Q901"  Part="1" 
F 0 "Q901" V 3992 3375 60  0000 C CNN
F 1 "BSS138" V 3886 3375 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3925 3575 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3925 3675 60  0001 L CNN
F 4 "BSS138CT-ND" H 3925 3775 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138" H 3925 3875 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3925 3975 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3925 4075 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 3925 4175 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS138/BSS138CT-ND/244294" H 3925 4275 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 220MA SOT-23" H 3925 4375 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 3925 4475 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3925 4575 60  0001 L CNN "Status"
F 13 " C82045" V 3725 3375 50  0001 C CNN "LCSC"
	1    3725 3375
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3925 3375 4225 3375
Wire Wire Line
	3350 3350 3350 3375
Wire Wire Line
	3350 3375 3525 3375
$Comp
L power:VCC #PWR?
U 1 1 5E1C6250
P 3350 3350
AR Path="/5DF1C911/5E1C6250" Ref="#PWR?"  Part="1" 
AR Path="/5DF25BF3/5E1C6250" Ref="#PWR0804"  Part="1" 
AR Path="/5DF31309/5E1C6250" Ref="#PWR0902"  Part="1" 
F 0 "#PWR0902" H 3350 3200 50  0001 C CNN
F 1 "VCC" H 3367 3523 50  0000 C CNN
F 2 "" H 3350 3350 50  0001 C CNN
F 3 "" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
Connection ~ 4225 3375
Text Notes 2800 4000 0    50   ~ 0
BSS138
Text Notes 3025 4200 0    50   ~ 0
S
Text Notes 2850 4200 0    50   ~ 0
G
Text Notes 2925 3800 0    50   ~ 0
D
Wire Notes Line
	3075 4100 3075 4025
Wire Notes Line
	3025 4100 3075 4100
Wire Notes Line
	3025 4025 3025 4100
Wire Notes Line
	2900 4100 2900 4025
Wire Notes Line
	2850 4100 2900 4100
Wire Notes Line
	2850 4025 2850 4100
Wire Notes Line
	2975 3825 2975 3900
Wire Notes Line
	2925 3825 2975 3825
Wire Notes Line
	2925 3900 2925 3825
Wire Notes Line
	2775 4025 2775 3900
Wire Notes Line
	3125 4025 2775 4025
Wire Notes Line
	3125 3900 3125 4025
Wire Notes Line
	2775 3900 3125 3900
Wire Wire Line
	3825 3825 3825 3675
Wire Wire Line
	3825 4125 3825 4200
$Comp
L Device:R R?
U 1 1 5EA431D4
P 3825 3975
AR Path="/5EA431D4" Ref="R?"  Part="1" 
AR Path="/5DF31309/5EA431D4" Ref="R802"  Part="1" 
F 0 "R802" V 3750 3875 50  0000 L CNN
F 1 "10k" V 3925 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3755 3975 50  0001 C CNN
F 3 "~" H 3825 3975 50  0001 C CNN
F 4 "CHIP RESISTOR - SURFACE MOUNT 10KOHMS ±1% 1/10W 0603 ROHS" V 3825 3975 50  0001 C CNN "Description"
F 5 " C25804" V 3825 3975 50  0001 C CNN "LCSC"
	1    3825 3975
	1    0    0    -1  
$EndComp
Connection ~ 3825 3675
$Comp
L power:GND #PWR?
U 1 1 5EA44148
P 3825 4200
AR Path="/5EA44148" Ref="#PWR?"  Part="1" 
AR Path="/5DF25BF3/5EA44148" Ref="#PWR?"  Part="1" 
AR Path="/5DF31309/5EA44148" Ref="#PWR0804"  Part="1" 
F 0 "#PWR0804" H 3825 3950 50  0001 C CNN
F 1 "GND" H 3830 4027 50  0000 C CNN
F 2 "" H 3825 4200 50  0001 C CNN
F 3 "" H 3825 4200 50  0001 C CNN
	1    3825 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
