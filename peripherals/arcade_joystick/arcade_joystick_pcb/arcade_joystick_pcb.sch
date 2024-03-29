EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arcade Joystick Interface Board"
Date "2019-06-26"
Rev "1.1"
Comp ""
Comment1 "Copyright 2019 Don Haig (accessible.aac at gmail dot com)"
Comment2 "http://creativecommons.org/licenses/by-sa/4.0/"
Comment3 "International License"
Comment4 "This work is licensed under a Creative Commons Attribution-ShareAlike 4.0"
$EndDescr
$Comp
L Device:R R1
U 1 1 5D143B73
P 6350 2975
F 0 "R1" V 6275 2975 50  0000 C CNN
F 1 "10k" V 6425 2975 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6280 2975 50  0001 C CNN
F 3 "~" H 6350 2975 50  0001 C CNN
F 4 "C17902" H 6350 2975 50  0001 C CNN "LCSC"
	1    6350 2975
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D145181
P 6350 3225
F 0 "R2" V 6275 3225 50  0000 C CNN
F 1 "10k" V 6425 3225 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6280 3225 50  0001 C CNN
F 3 "~" H 6350 3225 50  0001 C CNN
F 4 "C17902" H 6350 3225 50  0001 C CNN "LCSC"
	1    6350 3225
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D145689
P 6350 3475
F 0 "R3" V 6275 3475 50  0000 C CNN
F 1 "10k" V 6425 3475 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6280 3475 50  0001 C CNN
F 3 "~" H 6350 3475 50  0001 C CNN
F 4 "C17902" H 6350 3475 50  0001 C CNN "LCSC"
	1    6350 3475
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D145693
P 6350 3725
F 0 "R4" V 6275 3725 50  0000 C CNN
F 1 "10k" V 6425 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6280 3725 50  0001 C CNN
F 3 "~" H 6350 3725 50  0001 C CNN
F 4 "C17902" H 6350 3725 50  0001 C CNN "LCSC"
	1    6350 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3100 6200 3100
Wire Wire Line
	6200 3100 6200 2975
Wire Wire Line
	6500 2975 6750 2975
Wire Wire Line
	6750 2975 6750 3000
Wire Wire Line
	6500 3225 6750 3225
Wire Wire Line
	6750 3225 6750 3200
Wire Wire Line
	6500 3475 6500 3400
Wire Wire Line
	6500 3400 6750 3400
Wire Wire Line
	6500 3600 6750 3600
Wire Wire Line
	6200 3725 6200 3925
Wire Wire Line
	6200 3925 6625 3925
Wire Wire Line
	6625 3925 6625 3700
Wire Wire Line
	6625 3700 6750 3700
Wire Wire Line
	6200 3475 6200 3600
Wire Wire Line
	6200 3600 6475 3600
Wire Wire Line
	6475 3600 6475 3500
Wire Wire Line
	6475 3500 6750 3500
Wire Wire Line
	6475 3300 6475 3350
Wire Wire Line
	6475 3350 6200 3350
Wire Wire Line
	6200 3350 6200 3225
Wire Wire Line
	6475 3300 6750 3300
$Comp
L dbh_kicad_library:PJ320A J1
U 1 1 5D14DF63
P 5650 3200
F 0 "J1" H 5208 3425 50  0000 C CNN
F 1 "PJ320A" H 5208 3334 50  0000 C CNN
F 2 "dbh_kicad_library:PJ-320A" H 5000 3600 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 5000 3600 50  0001 C CNN
	1    5650 3200
	1    0    0    -1  
$EndComp
Text Label 6550 2975 0    50   ~ 0
V+
Text Label 6550 3500 0    50   ~ 0
Gnd
Text Label 6375 3925 0    50   ~ 0
Gnd
Text Label 6550 3100 0    50   ~ 0
LR
Wire Wire Line
	6500 3600 6500 3725
Text Label 6550 3225 0    50   ~ 0
V+
Text Label 6550 3300 0    50   ~ 0
UD
Text Label 6550 3400 0    50   ~ 0
LR
Text Label 6550 3600 0    50   ~ 0
UD
Wire Wire Line
	5650 3300 5900 3300
Text Label 5900 3300 2    50   ~ 0
V+
Wire Wire Line
	5650 3200 5900 3200
Text Label 5900 3200 2    50   ~ 0
LR
Wire Wire Line
	5650 3500 5900 3500
Text Label 5900 3500 2    50   ~ 0
Gnd
Wire Wire Line
	5650 3400 5900 3400
Text Label 5900 3400 2    50   ~ 0
UD
$Comp
L dbh_kicad_library:Mr_Joystick J2
U 1 1 5D15435B
P 6750 3000
F 0 "J2" H 7328 2711 50  0000 L CNN
F 1 "Mr_Joystick" H 7328 2620 50  0000 L CNN
F 2 "dbh_kicad_library:Mr_Joystick" H 7000 3250 50  0001 C CNN
F 3 "/home/don/kicad/libraries/dbh_kicad_library/datasheets/PJ320A.pdf" H 7000 3250 50  0001 C CNN
	1    6750 3000
	1    0    0    -1  
$EndComp
$Bitmap
Pos 6625 5725
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 00 7C 00 00 00 7C 08 03 00 00 00 9C C0 24 
8C 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 30 50 4C 54 45 FF FF FF FF FF FF FF FF 
FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF 
FF FF FF FF FF FF FF FF 4E AF B8 40 00 00 00 10 74 52 4E 53 00 33 55 88 99 BB FF 22 66 CC 11 DD 
EE AA 77 44 0D F8 29 92 00 00 00 09 70 48 59 73 00 00 0A F0 00 00 0A F0 01 42 AC 34 98 00 00 06 
05 49 44 41 54 68 81 ED 5B C9 82 A4 20 0C 6D 45 4B CA 8D FF FF DB D1 B2 4B 5F 36 04 C5 99 CB E4 
D4 5D 2A 8F AC 24 01 7E 7E B2 A9 AA 5D D3 B6 2F A0 B6 75 AE AE F2 47 CA A3 CE BB F7 CB A4 D6 F9 
FE 29 E4 CA 0D 36 F0 97 DE EE 01 09 54 CD 78 8E BC D1 50 18 DF 47 84 AD F2 5F 4C FE BD 4B 66 FA 
A0 D1 95 80 BF 04 5D 08 DE 5F 84 DE E0 6F 41 57 99 BA E6 34 D4 97 A1 7B 77 0F 7A A5 E9 A2 EC EF 
B2 BD D1 78 89 F9 39 36 E4 7B 09 A8 CE 87 85 EA E5 0F 1A 6C 39 35 D9 CC F7 8D 89 EB BC 12 44 BA 
DA 99 33 78 67 06 9D 4E 17 F9 D8 D4 11 36 FA DA 08 83 79 A2 AF D4 41 A6 84 31 6A 5D 62 73 3A 76 
50 B0 47 D7 A5 7D AC 47 A5 26 15 DB 6B D0 39 56 A3 45 A6 44 74 05 3B 37 52 6A DC 27 19 BD C4 6E 
13 05 8E D4 4D 72 98 F3 AF 82 90 78 86 B1 20 D5 82 F9 53 C9 0B 3B CF 75 D2 83 7A C1 FC 09 7A C7 
B1 93 AD 54 23 11 24 A3 CB 5C CF 63 CB 45 91 7F 49 F8 AC 8F BC CC 04 35 C6 DE 4D 22 BE 38 8D B6 
12 5D F2 9B C9 C4 65 39 58 0E 17 CA 63 4B F4 C9 78 6D 78 00 5B A2 EB 0B C4 F4 08 B6 40 1F B5 90 
55 A7 4C B0 04 BA 22 78 26 F4 DB 76 8E C4 22 97 E4 8B 5A FA AD D8 22 89 9A F2 C0 1F 77 E4 F1 BB 
74 B5 49 63 1D 0F 74 C4 DA 54 9B B8 47 24 C1 1B 29 6F 54 2E 45 15 BE 51 4F D4 4E 59 27 13 33 E2 
C0 3D 22 CE 44 58 AF 1E 16 FA 4A 84 3F 64 BD B1 1E 14 24 62 D2 C3 F9 EF 65 89 38 B3 D7 7F 0E 4F 
81 13 9B 7B EF 3F 63 70 4B 48 F3 AE 12 E1 F1 6B 58 C4 10 1F 63 9C B1 FE B5 2C 34 B7 C7 34 6E 01 
E1 84 EC F8 D2 85 E0 EB 10 A2 7E 58 85 30 2F 65 B3 15 9C 89 61 6F 4B 36 4A 7D D4 BF EA E7 F6 98 
61 3B AB 4B 7D 37 83 27 4F B3 3A 49 F4 F5 4D EE 8D F8 85 0F 2B 2A CF 56 AC 8A 95 78 67 52 AC 07 
AB A1 CD DE D1 D6 35 9E D4 AA 93 96 50 7A F7 46 56 67 3D 3E 5E 9F 62 68 55 CC AD 37 1A 0E 58 F0 
5B DD 1B 99 8A E1 E2 B9 0E 80 4B AD 94 BA 28 23 0E DA 6D 53 6F 25 A8 E8 28 F7 15 0C 95 25 66 1A 
C1 DE D1 45 89 15 41 47 7B 5F C3 19 A8 5C DA 7A B4 CD B4 8D 1C 9D 9F C8 89 F0 65 6A 03 62 21 8F 
B6 C3 7E 0D F6 A4 53 C8 34 89 72 EE 48 0E C3 55 4E D3 8F C1 2D 31 C6 13 59 D4 22 F9 73 4B 8C 99 
89 2C A8 C3 A3 D2 03 61 8E 7B 26 61 EA DB 1A 09 FB D0 83 67 AC EC 85 E5 51 9D B6 6C 4C F4 2D 47 
00 98 7E 7A 3D EE FE 2A F9 03 4D 18 07 EB FA AD 02 38 F4 42 04 1C C4 C8 BD 1C E3 2E 9A C3 6A DE 
C3 EF 64 50 70 58 CC AF 1C AA 3D 67 50 49 8B E0 7C 29 A7 C6 01 E4 8E 4E BA 39 77 37 E8 6B 14 C1 
03 4F E3 65 0A 3C 7A D3 27 87 7E 88 14 F5 57 28 81 9A 47 FB 6B E2 84 56 52 89 BE 92 96 86 A0 8D 
45 C0 53 06 46 B3 48 C2 36 C1 99 92 10 DC 4A 21 88 10 93 08 1D 1D C1 19 7B 64 8E E7 E0 89 99 27 
B2 F4 1F FC 9F 83 47 0C CE EA 0E E5 1B 1C F1 0F F8 3B E2 6A 56 7B 08 87 4A EB 66 24 FA 79 67 3F 
CA 9A 60 04 1C 56 2E 1E 5E E1 11 5B 73 AA DD 3C 5E E6 E7 B5 1E 1B 08 78 64 61 E1 A9 E6 41 ED AB 
F9 1D 1A F3 06 9A 4D 8F FB 3B EC 53 C0 83 7F B8 C9 60 30 22 AC 7F D6 D1 6D 68 64 84 64 61 D3 F1 
8E 0D 1E 4B 26 E0 11 0A F5 9B 2A AF 43 93 86 0A B8 CB 77 E2 02 1E 5E 77 D1 34 8A 94 40 FB 7E F0 
7C D8 82 37 5A 2D 58 C1 50 85 51 2B 8E 25 90 34 39 1C 9B 25 81 0C 78 64 64 6D 1D B1 E6 A2 FB EC 
ED A2 A9 52 71 A2 6F D6 44 B6 22 48 9D A4 C5 33 53 A2 46 91 B0 59 C5 8B 86 78 41 B0 19 58 AC 60 
91 C2 C4 A9 FE 50 87 12 39 83 5D 86 1D C5 88 D8 89 03 12 0D 64 78 B6 CA 39 5E 28 DA E8 47 21 A4 
EC 7F 5A D8 DC C2 4E 4A 64 AB FC C5 71 AD 19 CA 8D 31 54 F9 C7 31 F1 4B 65 F5 52 0B 7F B6 1D AF 
16 F1 DA 5E 24 36 22 3E 92 43 6F 56 9B FC A2 2D A2 6C 68 07 0E AF A6 ED 28 E5 2D 1B 47 95 8D FA 
BA D8 41 43 68 68 F4 E5 0B 1B 42 43 A3 27 00 28 C4 CD BE 48 14 8D B6 C2 6A 6F B7 B9 36 CE 96 32 
36 F6 8E A2 61 74 B6 47 9B 80 DA 4A 45 5C E5 81 5D 86 9D D0 DC 76 AF 1E 95 19 3D 40 84 C9 DD 28 
8C 4E 78 69 42 C6 8F CA 93 36 FB 9F 3A 44 69 69 F7 6F 6C 73 90 3E 07 BA 34 5D 1B 9E 39 C1 EA 4C 
06 49 7C 7A 5B DF DF 21 CA 5F 67 3F 7A 40 F0 74 9F 98 45 71 BA 79 5E 5E F0 C4 AA F8 CE 1D 4B D7 
4A 5B 3C 5D F2 85 64 E9 C2 59 78 8F 89 24 D8 8A 33 B3 CD FB A2 1B E8 A7 9B F7 3C 15 2B 68 74 E7 
C7 16 98 4D 14 0C B3 29 07 36 B8 E0 4B A1 A7 1D 55 61 66 51 08 9D 1F E5 34 8D 89 F7 F6 0B E8 9D 
27 B6 91 D3 18 3C 53 BC 6D F3 FC 34 64 EC E8 8F 28 8F 6E 1E 1B 11 59 77 B4 3F CB 8D EE 35 DE D8 
55 EE 44 36 7F 62 45 B2 F8 B8 AC 78 79 08 F2 F4 68 9F 44 1F 2E 31 AF 1C FF 4C B0 20 A5 F0 CA 3F 
A7 AD 6D C0 26 59 AF 82 9E 7B 3F C1 2B 37 5E 12 D5 A7 15 9D 39 F0 1A 74 7A C4 AA B4 AF 13 4F 5A 
77 EA 8E 77 CE 51 4E A3 1D D2 9E DD 8D E9 BD 34 B3 0F 76 56 6A 64 1E EC 37 CE 23 AC D4 19 C8 17 
42 95 BD 87 3B 4E 8E 1F DB E8 83 9B EC 5B 55 17 22 85 AA F8 83 86 F5 92 9A FB DC A6 88 DF FA B8 
76 9D A3 C4 35 96 EB 17 59 7E 42 C2 05 B5 38 5D 63 FB CB FC 8D AB 4B AF FC 1B 01 8C E4 19 99 74 
52 FB ED 99 F0 96 03 3D 0F BD 92 3C FD F3 D7 A0 57 EA 52 EE 46 1E 34 14 B9 A6 07 54 A7 4A 7F 6C 
9E 38 52 D7 FB F3 1B 9A 83 2B 78 40 9B 53 35 DB 61 74 68 FC 33 87 56 91 FA 30 2F 31 15 77 32 DA 
C9 F9 2B B2 FE 03 F8 49 95 C8 01 9B 64 41 00 00 00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$Bitmap
Pos 9400 6500
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 01 7A 00 00 00 85 08 03 00 00 00 62 CD C3 
DA 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 A2 50 4C 54 45 FF FF FF A6 A6 A6 53 53 
53 0D 0D 0D 00 00 00 CF CF CF 62 67 63 8F 96 90 98 9F 99 B0 B8 B1 AA B2 AB AF B7 B0 AF B8 B0 A4 
AC A5 70 75 71 4C 50 4D 23 23 23 6C 71 6D 83 89 84 3B 3E 3B 11 11 11 33 36 33 5B 5F 5B 78 7E 79 
88 8F 89 47 47 47 20 22 20 1E 1E 1E 54 58 54 2C 2C 2C 46 46 46 30 30 30 61 61 61 8B 8B 8B B7 B7 
B7 C5 C5 C5 C8 C8 C8 BD BD BD 91 91 91 68 68 68 76 76 76 9D 9D 9D B0 B0 B0 7E 7E 7E F1 F1 F1 FA 
FA FA 82 82 82 36 36 36 D6 D6 D6 E0 E0 E0 E7 E7 E7 EC EC EC 70 70 70 D2 D2 D2 9D 79 9D 81 00 00 
13 74 49 44 41 54 78 9C ED 5D 89 56 E3 3A 0F EE 06 AD EB 74 A5 50 66 4A 4B 77 A0 B4 40 29 F3 FE 
AF 76 B3 78 91 6D 39 89 9D 00 77 86 7E E7 FC FF 1D 92 C6 71 BE C8 B2 24 CB 4A A5 12 A2 5A AB 37 
CE F8 32 D4 6B D5 4A 82 8B EF EE CA 4F C4 C5 99 F9 6F 43 C4 7D F4 DF CB 66 EB 8C 2F 43 F3 32 E2 
3C D4 F3 E1 FF 37 49 FB 8C 2F 04 69 86 A4 57 2B B5 50 E6 CF CC 7F 31 48 28 F7 B5 4A 68 DB 34 BF 
BB 27 3F 0F A1 D8 D7 23 55 DF FA EE 8E FC 3C B4 22 65 7F A6 FE 3B 70 A6 FE DB F0 2F 50 4F 03 42 
DB A1 BD D6 0C CD E3 36 25 E1 1F 65 35 4C 83 A0 DD 89 1A 6E B6 3A E1 6D 68 69 2D 47 28 4C 3D 8D 
10 C4 FF 2B B3 5F B9 6F 4F 68 B3 DB EB 03 3F A5 DF 1B 34 DB 24 28 A1 E5 CE F0 F2 6A 24 1B 1E 5D 
DF 8C 5B E5 BD D7 22 D4 D3 50 C0 3A AD DB 61 77 30 B8 1C 0C 06 E3 61 B3 43 C9 D7 BE 00 D2 1E FE 
42 FD C4 AB 71 BB 10 F9 01 69 5D FE C6 1A 9E DC 34 CB 62 DF 93 FA 50 C8 23 99 30 7A F6 3B 16 B9 
2F A2 9F B4 EE 52 BC F4 9E 3F 47 94 8E A7 F6 86 27 DD 76 29 0F E8 45 3D A5 B7 37 13 7B DF AE BA 
65 8E 4B 1B 48 6B 96 42 7C 84 FB 5B 2F 3F 31 A0 DD 8C 86 1B 97 65 90 EF 4E 3D 25 AD 9B AC AE 35 
A6 DD 4E 71 6D 9B DA 8B 4E 9A C4 0B 21 68 B9 93 1F 0C 47 D9 0D 37 BA C5 BD 7F 57 EA 29 19 A6 8C 
45 88 5E EB 13 C9 27 E3 7C 9D 68 5C 3A 76 82 76 4C 2D 8A A2 EF F1 56 55 B8 51 4F C9 38 8F 48 30 
5C 7D 5E 48 AE A7 DE 69 34 5F 54 97 AB F5 7A 53 DD 3E F4 D5 53 D3 8E 8B 6E 20 B7 DA 33 CC 1E 9F 
76 AB 10 BB A7 E7 9A 76 AA A8 E0 3B 51 4F 6E D1 59 DF 8E 59 61 D1 C0 40 5B CA 44 F3 B8 D9 57 20 
0E EB 17 65 C1 6D 98 BF 0F E4 12 5E F8 FA F4 A6 34 5C 39 56 15 FA 67 C5 1E C3 81 FA A0 93 35 AF 
21 B8 2C D7 0D 89 40 9B F0 F1 37 15 0C 17 73 F0 9B 6E 5E A5 43 A0 A5 BA 78 C7 1A DE 3F 81 9F FC 
76 1A 51 3A F2 53 1F E4 55 AF 2A 46 CD 92 55 3E 19 02 E2 DF 30 7A 62 9C 1E E4 CF 6E F2 75 81 5E 
CB 4B 9E AC 0D 57 76 E0 E9 8A 70 9F 97 7A AA AB 57 86 D7 87 97 A7 DD 72 B3 DC 55 9F 9E E7 F8 04 
EC 3A D3 A5 23 00 CC E3 12 CF F1 76 2F B9 CF A3 73 00 F3 0F FB D4 96 17 A5 70 9F 93 7A DA 32 A7 
D7 FA E3 D2 18 93 6F BB 07 E3 77 8D EB 72 5C 90 A4 23 52 DB CC 0F A9 FC 84 D8 CA D7 9F CD 3D 91 
A6 CD 2A AB E1 A3 9C 6C 3A DE 8F 92 8F 7A 63 E2 6F D4 B7 47 AB B4 BD 18 E4 97 66 67 D2 96 68 B3 
AA DF F7 FD CD 90 04 B9 DC 3F CE E2 3E 10 A3 FA 3E 5D E4 13 08 09 9B 78 3F 4B 2E EA 03 DD BD AB 
AD D3 3B B6 79 D5 2E F0 F3 2B 11 08 DB 45 EF C1 5B 74 CB FE 85 76 F4 24 06 6B 33 7D E4 05 03 F1 
6C 39 88 AF 80 11 75 E5 FB 68 79 A8 57 4D AE 70 A4 5B 05 5E E2 42 B3 86 86 A5 C8 BD 54 0A 7A 17 
B8 7C EB EA FF 20 E6 9F 54 CD 20 F5 D8 43 3E E6 93 5C 82 18 BE CB DA 39 A8 0F 54 E6 EF ED 56 85 
82 95 9A CD 36 2E 81 7B 22 44 D3 78 F9 E2 3E FA 04 70 E0 2E D6 75 2A 43 42 AC F2 32 0F B8 CF 18 
50 36 64 53 2F 87 62 8C 14 AB 4B C7 42 B9 D0 C1 B3 49 EB 6C 0C 5D AF 54 36 E2 36 C6 14 70 E0 22 
30 B6 33 44 B8 A2 CF A9 6D 12 70 13 7F F4 49 D4 13 45 CF 4F 51 3F C3 86 37 C5 2C BA 2D 6A E7 04 
DC 5A DC 19 77 92 B6 CC B3 71 EE 9D 9F B2 AA 1C CA AD 88 BE 71 F1 7E F9 FC 6B 3A 99 DC D7 5E 76 
E6 A3 3F B2 CB FC 54 4E 16 F5 14 98 D1 0E 8A 90 03 3A 95 8D 56 31 EE 45 57 1E CD FB 48 1F F3 C5 
3C B9 62 A7 EE 6C 0C 05 DC 56 3C E9 57 2A 0B 31 53 63 44 71 6B C2 CB C2 CC A0 1E 18 73 0D 27 65 
C3 B1 85 D7 FB DB C0 71 5F EA 36 D1 84 56 24 E6 66 3D F3 77 6F 69 98 FB E9 4B F5 B2 A3 6E A7 19 
0C 9C D8 E1 9E 8F D8 67 49 3D BC 6F BA F3 68 C1 12 8A 4D 11 B1 17 04 A1 F6 15 67 69 82 76 82 BD 
B4 1E 3E D5 F3 77 3A 57 2F 82 01 03 81 BE AA 76 F8 54 EB B3 B4 9D 4E 3D 81 C1 EB 0C 5B DE 86 15 
68 E2 AE 80 99 43 D8 C4 61 2A F3 08 7B 46 1F 3E 17 F1 3E A0 C3 4E 04 A7 54 57 4A 19 AF 00 AA AB 
CB A6 9F 9C 51 22 05 A9 D4 13 68 DC 78 32 5F A9 AC 41 23 43 6F B9 17 9A DE 16 3E D8 4E 1A A3 85 
ED 24 F3 32 2E B1 DB 13 66 7E 6E 95 2B 50 99 37 B9 E7 9A CE E3 89 52 A9 87 8A DE 4B DB 24 D8 80 
66 3C BA C8 08 62 03 D0 63 BE 91 0C D5 31 9D CC 9F 52 B9 E0 68 65 5E D3 78 AC 5B 29 96 AB 0D 69 
D4 13 10 89 34 26 77 17 54 65 3B 16 75 9B 03 19 42 9F 01 A6 18 90 AC 5E 7A 83 09 BD 8C 7A 86 B8 
AA FD 52 16 67 E0 0F 99 5C 79 84 13 52 A8 87 0B F3 B8 82 CD 8D 47 D9 92 A7 EB C7 15 32 62 58 C2 
41 95 C0 B4 FB B9 FE 40 34 4E C0 66 09 45 D3 03 E3 E0 25 11 72 B8 46 A2 B0 C1 8E B9 3F 52 0A F5 
1D 79 AF 59 31 E6 A5 01 D2 68 FC F6 73 6A B9 BF 69 46 31 F6 06 F3 98 11 74 48 4E F4 CD BB 33 7D 
A3 FA B1 7D A4 A9 FD 04 6D 9F F9 EC EE B3 98 9D FA 00 64 5B E4 09 A3 A6 E2 24 DB F2 D0 8A 21 28 
BB DA 6C 1A DB 07 86 4C 4C 6C 55 D5 B0 71 F8 D8 56 46 CA 9B 68 09 5A 4C F2 25 7F 80 A3 7F 92 43 
37 25 52 0F 84 BE C0 14 CB 01 0C 06 2F EA 99 6C 22 8A 2F 27 F5 6C BE 31 A2 19 7C 38 29 D2 25 A2 
4F EA 04 20 D5 10 9C 71 92 23 E9 D1 39 27 EA 89 14 FA 79 71 E6 85 D4 79 8A 3D 37 2D 11 4E 73 52 
CF 04 79 A0 DF 3C 48 DC 05 D5 45 16 93 AC 16 59 10 2A 07 5A 1D 35 4F 89 B2 52 0F 84 DE D3 A8 50 
21 82 58 8D 89 87 B6 E7 81 6B C4 63 CA 49 3D 53 F6 A6 53 97 1C 57 A7 6F DE CE BD D6 88 98 6A E1 
CC C0 7C 2F E7 28 89 8D 7A 2A 83 F4 7E 96 B4 01 B9 6C E8 11 C2 E4 CB 77 48 BB 39 A9 67 12 7B AD 
53 DF 32 C4 F8 A5 26 46 68 7F 5E 53 14 91 9C 03 C0 41 66 61 39 EF 46 B3 52 2F 6E 52 2F 85 78 21 
76 21 66 1E 89 90 F7 A8 14 46 C8 4B 7D 12 44 D5 87 1C 8F 17 43 17 15 2E B0 69 B6 12 76 9C BD 0F 
67 3D 6A A1 1E C4 8A 11 23 D9 0F 72 E5 C4 3D 82 49 12 99 9D 23 CD E6 A5 9E F9 16 1A 41 3C 28 A7 
18 AD 32 54 AC 2B B8 09 72 07 66 BD 75 4B A2 3E 90 6F BE 28 E3 02 D2 36 73 9F 68 59 70 11 71 A8 
72 53 CF 54 B2 DE 30 B3 2D D5 F9 94 3F BD E1 1F 08 55 04 14 14 7B 2E 63 02 F7 A4 5E 06 8B 51 4D 
FF 7E B1 D9 AC DE 70 6B FF F0 B6 DA 6C D6 58 04 51 AC 9B 78 78 DD C9 85 C8 3A 48 6E EA 9F 52 A9 
D7 9E 65 86 33 2F 1F 01 58 9D 4C 93 A2 A1 39 77 EA 81 BE 31 F9 5D 7F F0 73 F5 E7 3F DA B9 D3 56 
C4 7D 6A 55 DD 32 5A 8B 46 9D 99 FF 74 EA F5 BE CE 50 E6 65 FA 0D EC 49 A9 D4 4B 4F 76 AE DF FC 
8F 12 58 6A BC C2 15 EA C3 A3 72 4E 73 48 C0 24 E5 6E E3 24 D7 61 A1 A4 4F 91 FA 28 22 89 2D C9 
08 A9 5F 80 A7 2E 95 7A 22 D6 B3 B5 35 B3 8A 99 59 26 DF FF 9B 71 6E A4 EA 1D BE 50 E7 DE 4D 16 
E3 FA A8 98 28 47 D7 1B 0A F2 80 2E 86 09 5D 0F F4 70 B9 BA 5E FA 53 07 CB AD 01 B8 7B 61 46 10 
1B 9A E5 20 16 AC EE 5D 95 FD E7 59 38 43 A4 9F 76 60 EE 2C B3 70 CA 31 2E A5 AA D7 42 96 4A 82 
81 C0 87 95 82 86 6A 3A 48 D3 DE B1 97 ED 20 C9 02 9E 16 A0 1E B7 EB DB 88 5D 6F 87 7C 00 B0 66 
F7 A7 54 EA 85 2B AB 6A 6B 98 D6 0F B1 54 7A A5 42 61 4B CC 13 AE CB C8 8E DE AC AE 26 23 A4 7B 
B3 F9 5C 76 A9 52 81 44 B1 A0 5A 39 DE AC 5C 0D 57 16 64 41 E4 F7 F9 E2 74 02 19 C5 07 30 F7 37 
7E 2D 8F A7 F7 9D 98 2D E0 43 09 65 EF 1A DD A6 6C 95 18 B1 59 F7 9B D5 0A A6 3D 54 57 AB 0D F2 
33 1E C3 31 6E 9C 1C 57 66 91 CD AF 5A 02 7D 5A 17 4B E5 23 F3 60 39 31 1C 39 CB 2A 13 BF 30 2A 
39 03 6C 01 33 4A 7F 95 D1 31 AE 05 93 69 61 A4 38 C3 62 A5 D0 75 4E E2 2A 10 13 E7 8A BA 5C 62 
C9 C5 65 02 6B F8 9C 41 B2 3D 4C 49 22 F9 C3 DB D2 53 4B 04 2F F0 9D 94 1A B9 94 01 1C FC F9 C4 
D3 45 CF 53 8B FF 12 23 40 AA A8 70 84 D7 B5 28 84 50 0E A6 F0 E5 E8 A7 2E 9C 4E D4 33 65 69 98 
B5 DC 8E C6 E7 24 D5 E6 94 83 0B 9A D4 C9 91 92 E2 F5 C2 C0 B9 82 37 16 AB 1D C0 9D 7F E4 BB 99 
90 97 75 61 86 7F 84 CA 72 F6 67 49 DD 94 05 27 EA 6D AB 54 7C D1 B7 8A FC 58 9F EB C4 3D A0 BE 
61 E2 E4 6C 2F E3 D4 8B 24 10 45 C8 84 36 47 0C 31 91 3B B1 30 CF 01 08 71 9A BA 52 CF 85 D3 C8 
31 CE 49 3D FB C5 D4 4C 88 60 0F AB D8 72 4B B4 35 69 59 43 99 62 E3 DD DD 4B C4 A8 17 89 B7 AA 
E3 2E 14 1D F2 64 A2 AF 38 35 02 42 6C 5C 73 42 B8 B2 C7 13 6E B3 A9 67 B3 0C B2 A5 8E B9 0C EA 
0C 2E 9B 13 86 C6 5E 46 14 27 C8 4F 5D 89 B7 50 2F CC FA 27 AC 3B AF C8 93 89 A9 5F CF D5 D5 20 
B6 3B B8 AF 96 B0 0B D1 98 5D 36 F5 2C C5 00 31 6A F9 02 98 22 66 C0 8C 9E 55 DF 4E FB FD 05 74 
E3 A1 7C 31 47 72 E6 9E 5F 94 4E 3D 54 80 42 4F CF 91 27 13 56 63 3A F3 15 11 5C 73 EE 28 5F BE 
C6 22 68 D9 D4 AF 93 73 E8 60 E3 EA 55 71 DC D3 EA 11 28 4A 95 A5 B9 78 64 34 A2 D4 8B CD C9 90 
7A 61 3E 62 56 86 88 9B 65 50 2F F2 71 9C 3B DA E6 BB 9D 30 B1 CF A4 9E DD 17 B5 69 C9 35 F2 52 
53 12 FF 94 8C 1D F6 4E 7D D2 2C FE 1E EA 79 1A 22 A6 ED B3 A8 E7 53 11 EA F6 88 A9 ED 1D BB 24 
9D 79 AE C8 DC ED 1B 2F 85 83 ED 37 72 56 38 EE 5D 15 BD 42 52 9E 33 A8 E7 86 95 65 5B 09 4F 35 
56 4C 69 5B AA B1 BA 50 C6 E7 04 9F 4D 1B 7F CF 34 2B B3 6F CD E4 94 0C EA B9 59 6C 21 48 3C AF 
1A C8 F9 D3 40 A0 06 E6 B8 5A B2 6E 15 72 A6 1E 37 2E C5 ED 11 4A C5 F0 CC 88 00 F2 9F 39 1B 97 
6D B0 B7 D5 1C 76 E9 D4 73 F9 B5 56 4A 08 78 75 04 CD 63 51 B7 40 86 D8 6A 6F 9D C7 90 CB DB 4B 
85 BB 54 22 62 0C 6D 2B 46 B5 98 95 E0 CB 32 17 6F FD 5D AA 08 62 8B A5 61 E5 A4 52 2F A4 37 9D 
85 18 5A 8F 0F 4F 60 4D AE 66 38 E7 DC C7 72 5E 25 11 37 CD 19 48 10 B1 AF B9 3C F6 DE 18 25 43 
50 74 10 5C F0 DA D0 77 79 F8 07 12 12 F0 CB F5 6C FF 34 EA 85 54 A4 D8 7F 62 FB 4C DF 50 66 FB 
75 75 BB D8 3E 2D 11 17 9E 87 13 7F FB ED 19 70 08 9F C9 98 B1 14 FB C8 62 79 8D E6 3D 61 E2 C8 
98 5E 3C 05 59 D4 A7 73 F8 2C E9 97 D0 84 9A 00 A6 50 2F 98 4F DD E5 47 B8 74 63 49 56 16 88 47 
F6 2C CF 8A 52 1F E0 41 63 19 C3 60 DC 1F 98 6F 3D 3B 81 45 04 EE 70 F0 C9 1F B2 24 AC 06 BF 21 
DA 26 A2 D6 A0 2A F7 76 EA 45 BF 46 E9 2D 8B 81 7E 9F 37 C3 54 84 B4 FC B2 D6 DD 96 4A 80 9B 51 
DB BD 1D 57 C2 B7 EE 2B EF 65 F4 B4 3E 5E 54 85 19 09 27 5E 71 85 EF 76 36 D9 33 C5 A5 B4 52 2F 
D7 8B B3 0A FE 88 FA 14 F5 0C 23 8D 41 64 A8 79 59 37 11 9C 16 08 85 F5 AE 21 7A DA 93 E5 9C 62 
07 0B 8F CA BF 7A B5 58 98 AE 41 F1 DC 4B C0 FB 49 13 25 73 1F 11 28 DF 98 63 9D F6 28 F4 82 77 
4D 16 C7 65 71 35 07 87 63 A9 09 18 84 E2 04 F8 2F 8B 4B 74 64 74 25 23 4A 5A 79 97 DB 88 72 D4 
84 01 3B 55 33 77 8E C9 E8 5A 81 5D D8 6E C9 20 07 AC BA 19 57 BB 55 E4 9C AA 39 D7 A2 C3 05 AA 
84 74 64 B1 97 8F D4 8D 46 60 CF 71 AE AA 24 70 97 70 AA E0 83 A2 6A F7 FE CF E1 9C 02 65 A6 83 
48 FF 6E 65 9C 9B AB 17 0B 55 EF BE F1 08 A0 03 36 52 EA 3E 8E 04 14 84 9C 35 A8 20 F7 33 EB 90 
3A 02 0A AE CA 2F B6 98 92 F8 B7 51 2B 0C CD A1 E0 ED 3F 94 73 C6 7B 13 27 FC 37 8D C7 00 45 11 
1B 8F 58 F2 D2 51 F1 43 73 57 24 51 CA F5 DE EF B0 D7 BA 84 B5 42 BC 67 D8 18 1E E9 AE 2B 41 F0 
C4 28 C3 79 DA 0A FD 3A 37 F2 90 64 C6 4C 91 1E B7 95 7D 5E 11 9E 37 D0 28 D9 AF 17 4A 6D 5D 97 
CA BA 41 53 69 B8 56 55 DE EB 71 A7 8E F9 CC 52 76 E9 F0 4B F2 3E FD 59 AD D6 6F F8 60 3F 1C D7 
AB D5 05 96 E4 2D 5E 99 BF 55 C0 40 94 2A 3D 11 66 1F 2F 8B ED E2 E5 C3 28 40 EB 56 26 88 B6 F5 
6A D2 FD DA F3 62 BB 5D 3C CF F5 0A 2D 93 A2 45 83 6D 5B 1B 64 41 51 94 5F 1F 14 D9 DA A0 23 C8 
59 70 7B E2 5C D1 3A 6F 8D 70 9F 08 BD 8A 2F DC D0 23 2D 8E 62 25 89 12 98 82 8F A0 EB 51 51 99 
76 F0 3A B6 0A AE 4B A8 93 6D DD C6 26 67 D3 92 98 2F B4 8D 0D 41 F6 C7 15 7C BF AD 40 5A 19 43 
EA BA 94 EA F0 36 EA 41 9D BF FF C3 E6 4D 14 94 8E AF 4D 5E 18 A6 E3 02 E5 7C 83 B4 0F 53 DC 35 
CB F9 16 8E 7D A3 BE BC 57 E1 0A 09 11 64 52 E6 A8 BC 9A F6 94 B4 06 98 87 3D BD 6C 15 A4 27 68 
0F 51 BD D3 1B B6 CB EA BE 7D A3 BE 7C EF F3 32 A8 97 A6 47 F1 49 16 82 92 F6 ED A0 27 BD EC 7E 
6F 70 DB 09 4A A8 67 4A 49 D0 1A DF 5C 09 C5 3B BA 8A 3E 4B F5 25 DF A5 02 3B F5 2D F9 BD 2E 00 
CE 65 F9 DF 12 A0 01 09 DA 9D 08 ED 20 24 A7 BC 1B 04 94 90 A4 E1 4E BB D4 86 23 A4 14 65 01 F5 
74 F3 C5 51 53 20 D5 4D C9 42 FF 17 23 AD 00 17 D0 9D 45 A9 97 61 17 CF 52 44 FF 20 D2 0A 70 01 
CB D9 B9 AC AB 0A B0 FB CD B3 00 D7 3F 88 D4 B2 73 C0 BC 4D 4F DE CE 00 58 62 F1 2F 3B F7 CF 21 
B5 D8 22 98 69 8B 94 FC 83 C5 3A BF FA F9 FE C7 48 A5 5E A9 25 ED 1D 50 80 CC DF 9E 85 5E 20 BD 
B0 2E 2C 3D E7 2B F7 30 31 3D D7 97 72 7E 0A 04 F5 84 02 88 D3 14 FA 8A 7A C9 83 5C 80 5F EC 01 
5B BD E8 8F 07 E1 D4 DF DD 40 00 2B 04 2E 4A B9 DB 39 07 18 3F 97 A9 30 B4 A9 DE EF 47 E2 8E 51 
AF 42 EE 2E 55 0B D8 BF 3A 86 73 D4 82 15 32 56 4C 1D 3E 22 F9 4F C3 A4 1E 18 22 54 5D 33 73 8A 
29 A8 75 C8 E5 12 A9 F6 F9 93 1F 0C 84 7A 90 A0 A8 71 9F FD 0D 34 8E A3 1A 53 04 DF 22 EC 34 CE 
48 80 50 0F 63 EA 54 FB 14 5B BE F8 FD 41 4B 55 03 CC 07 F6 28 FB 4F 03 46 3D F4 7D 34 B9 CF 63 
E2 1F F4 6F 1E 80 84 0C E3 DB 6E 3F 18 28 F5 70 23 A8 3A D7 46 78 4A 9D 6F 8F 7A AD A8 09 4C C8 
30 1A FB C1 40 A9 57 BE DF 4C 3B 7D FD F4 7C 69 51 FA A7 AA F1 61 9B 2B 30 84 CE D6 0D 04 4E BD 
1A 63 A4 C8 72 D9 D5 76 A5 05 F2 8F CB E7 89 F9 3B 25 15 46 F9 92 F1 8F 87 85 7A 35 67 C3 F6 91 
E5 FB 87 E7 ED 53 88 ED E3 DC 18 19 09 94 8C C7 B3 5D A9 C0 46 BD BA 11 83 76 F0 14 EF 0C F4 94 
C4 80 BC 09 46 99 98 3F 08 B0 C5 80 D9 87 FC 77 88 5A F8 D7 87 F9 4D AF 5C 58 6C 8E EF C7 D5 56 
79 DE 7A D4 7C E9 23 D6 46 7D E3 5E 5D D6 F0 30 4D 46 6A 92 AF 6E A7 FA 43 99 E6 DF A3 6D 4D 49 
05 7A AE EF 92 BF EA 69 4D D8 20 C3 84 17 60 5A 8A 03 58 D8 C7 39 0A C1 4A BD 9E C4 4C 3B 77 D6 
9F A2 18 A8 2B C9 86 95 EA 0F 6D 92 89 56 DD 63 72 D6 EC 7C 9C A3 6D 16 E5 CC 01 25 C3 55 66 3A 
24 49 A4 58 B1 C9 22 B0 53 6F 24 90 93 96 C3 98 D3 B3 BF 4A 64 DE 58 A8 9F F1 63 49 32 F0 3C 9E 
F4 7D 1A 4E 7C 96 F7 63 32 AC C4 36 25 B6 3B 06 DF 3A E3 8F 14 EA 1B D7 46 AD B0 56 3E C9 1F 0D 
F4 EC 2F F3 03 E5 05 10 D1 7C AC CD E7 F3 8F ED 9E 8B 7D 4D 92 75 E2 AF C3 19 F1 3B 8B 14 CD 34 
DE 0F C7 77 68 72 2F B2 9C DE CB BB A5 9D 9C 1A F9 73 A4 DD C5 F6 F5 28 E8 DD 1A 49 2B A5 CD B0 
31 22 6E 59 5C 34 FE B6 41 BC A3 25 DE 86 13 F9 D1 B1 EE B1 D6 F6 48 43 1C 17 67 F3 2B 14 73 EE 
C4 D8 76 F2 79 22 FD 55 D6 CD 4D 19 94 B4 BA 29 19 A1 51 72 9C 71 8D FE 81 F2 82 00 D4 C7 1B 18 
63 8A 46 5C 30 FD 05 74 01 AE 8C B4 3E DB 64 1D BD 91 7D B5 82 D5 6D 2E 84 AC 4E 62 DB EF 28 69 
37 07 3D C3 7F BA 8E 92 E3 90 74 47 DA F6 1A FD 76 40 EA 23 8D 93 EC E0 D9 26 82 BA F1 9E 63 93 
AA 10 E6 A6 B0 68 FF F0 EE 0A 9A 50 E5 20 53 3E 2C BB CE 28 09 DA AD E6 70 DC 1D 0C 06 DD EE F8 
B6 D5 A1 84 A2 EB DE A4 55 76 F4 00 50 1F 09 E3 01 1C AE 3C 7B CF B1 0D 9E D2 BE 7E 99 1A 47 6B 
F1 3B B6 15 17 F6 BC 5B E6 2F 7E A7 64 F2 CB D5 46 EB 4F 48 F9 2E 6C C4 F1 E1 F8 1E 22 9E 5B 39 
51 B2 5E 8B EF 28 13 56 FD 7E 23 F5 7A 34 9A F6 C9 5C 6B DB 9A ED 87 3C 5A 71 E0 9F EB 49 5A 99 
B3 B2 3B 54 E3 52 86 A8 F9 86 57 AF 39 36 06 5C 87 E3 49 BA EF C9 BF E3 0D DC A5 7A B4 B9 26 A4 
DF 9E 3B 29 28 2D 77 7E 65 D0 EC FA 03 0F 19 F0 BA AB 05 9A 9E 03 A7 2A 49 D3 8D 95 FC 2B BB AB 
FF 4B 45 90 B3 9F BD 8E 7B FE 12 25 43 2F 67 3E 13 B1 5D FF F0 11 E2 25 16 74 E1 E2 27 6B 68 7E 
73 2C C7 E4 65 C5 8D C9 75 F4 F7 8E CF 1D 4F 05 DF AA 81 DC 8D DD 39 92 1F 90 E1 EF 32 3B 0A 00 
2D 9C D8 20 14 D5 69 0E 15 25 A7 DC 17 33 B6 1A 74 C5 9A 5C 6F 43 54 95 3B 95 00 87 F7 78 D7 CA 
BF AD 82 06 E3 CF 22 5E A5 BE A1 28 F7 53 C5 52 31 2E 0F EA 8F 1F 1F 8F 5C 79 C5 36 EA C2 A8 2E 
69 F9 3C 85 17 9C 86 D0 F5 90 E6 61 3F F4 BA 3E 45 C7 73 18 D4 AF E0 19 7F EA 95 49 BB 92 18 93 
7A B9 84 12 55 A8 AB F6 BA BB CD 60 9F 92 4E F7 93 B3 0E 20 F5 D3 F2 A4 3E D6 2D CA 2B 7D 31 3F 
C2 A8 2F F9 17 80 C7 C4 D1 1B 77 02 74 6F 11 8D DD 5C AF 45 15 27 00 82 7F 9D 94 89 B5 18 F5 B1 
92 D9 81 7F 4F 13 17 99 9F 3F 96 33 93 70 F8 CD D9 A3 DE E0 B6 D5 26 D1 1B 08 42 D0 80 10 D2 69 
0E 6F BE 26 C9 26 A6 FB 10 81 59 97 CA 19 7F EA 93 AD 4B FB E5 76 BB DB 33 C5 FE 0E F5 7B FC 1E 
CA 0B 8A 14 31 97 46 D7 BF EE 2E 23 DC F4 AE 3E C1 73 B2 42 8F D7 D7 94 33 FE D4 6B 85 73 0F A3 
C4 8F 12 8E 6D 1F 8C 8A 12 50 76 10 FA 2B A0 E6 01 81 BA 4C F1 99 22 F1 45 98 D9 78 AC 33 EF 56 
9E 3E AA 7F 16 C4 DF 48 FD 72 BD E2 58 6E 5F B5 33 6B AC 16 58 7E BC 5C C4 EC EF 57 F1 8A D7 26 
6C 0F C4 CC 1E A3 92 33 A5 05 13 FE 46 EA 3F 19 F5 7E B9 C1 61 1B CE D4 7F 1B CE D4 7F 1B CE D4 
7F 1B CE D4 7F 1B CE D4 7F 1B CE D4 7F 1B 4A F4 CE CE 70 C2 EE 3F 36 29 27 D1 E5 6A 6A 98 00 00 
00 00 49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$EndSCHEMATC
