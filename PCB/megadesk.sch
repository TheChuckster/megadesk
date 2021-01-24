EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR01
U 1 1 5A824D8C
P 3650 2300
F 0 "#PWR01" H 3650 2150 50  0001 C CNN
F 1 "+5V" H 3650 2440 50  0000 C CNN
F 2 "" H 3650 2300 50  0001 C CNN
F 3 "" H 3650 2300 50  0001 C CNN
	1    3650 2300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5A824DF3
P 2500 1400
F 0 "U2" H 2350 1525 50  0000 C CNN
F 1 "L7805" H 2500 1525 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 2525 1250 50  0001 L CIN
F 3 "" H 2500 1350 50  0001 C CNN
F 4 "L78M05ABDT-TR" H 2500 1400 50  0001 C CNN "Part Number"
F 5 "C58069" H 2500 1400 50  0001 C CNN "LCSC"
F 6 "35V INPUT" H 2500 1400 50  0001 C CNN "Notes"
	1    2500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A824E6E
P 3200 1700
F 0 "#PWR02" H 3200 1450 50  0001 C CNN
F 1 "GND" H 3200 1550 50  0000 C CNN
F 2 "" H 3200 1700 50  0001 C CNN
F 3 "" H 3200 1700 50  0001 C CNN
	1    3200 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5A824E86
P 3200 1300
F 0 "#PWR03" H 3200 1150 50  0001 C CNN
F 1 "+5V" H 3200 1440 50  0000 C CNN
F 2 "" H 3200 1300 50  0001 C CNN
F 3 "" H 3200 1300 50  0001 C CNN
	1    3200 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR04
U 1 1 5A824E9E
P 1750 1000
F 0 "#PWR04" H 1750 850 50  0001 C CNN
F 1 "+24V" H 1750 1140 50  0000 C CNN
F 2 "" H 1750 1000 50  0001 C CNN
F 3 "" H 1750 1000 50  0001 C CNN
	1    1750 1000
	1    0    0    -1  
$EndComp
Text Notes 1600 700  0    60   ~ 0
Power Regulation
$Comp
L Device:C C5
U 1 1 5A8250AF
P 3100 1550
F 0 "C5" H 3125 1650 50  0000 L CNN
F 1 "0.1uF" H 3125 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 1400 50  0001 C CNN
F 3 "" H 3100 1550 50  0001 C CNN
F 4 "C49678" H 3100 1550 50  0001 C CNN "LCSC"
F 5 "+/- 20% or better" H 3100 1550 50  0001 C CNN "Details"
	1    3100 1550
	1    0    0    -1  
$EndComp
Text GLabel 5300 3200 2    47   Output ~ 0
MISO
Text GLabel 5300 3300 2    47   Output ~ 0
MOSI
Text GLabel 5300 3100 2    47   Output ~ 0
SCK
Text GLabel 9100 3050 2    47   Output ~ 0
LINBUS
$Comp
L Device:R R5
U 1 1 5A8360B8
P 6650 3050
F 0 "R5" V 6730 3050 50  0000 C CNN
F 1 "4.7k" V 6650 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3050 50  0001 C CNN
F 3 "" H 6650 3050 50  0001 C CNN
F 4 "C23162" H 6650 3050 50  0001 C CNN "LCSC"
F 5 "+/- 10% or better" H 6650 3050 50  0001 C CNN "Details"
	1    6650 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5A836164
P 6300 3000
F 0 "#PWR07" H 6300 2750 50  0001 C CNN
F 1 "GND" H 6300 2850 50  0000 C CNN
F 2 "" H 6300 3000 50  0001 C CNN
F 3 "" H 6300 3000 50  0001 C CNN
	1    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5A8362C2
P 6650 2350
F 0 "#PWR08" H 6650 2200 50  0001 C CNN
F 1 "+5V" H 6650 2490 50  0000 C CNN
F 2 "" H 6650 2350 50  0001 C CNN
F 3 "" H 6650 2350 50  0001 C CNN
	1    6650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5A8362EA
P 6650 2500
F 0 "R3" V 6730 2500 50  0000 C CNN
F 1 "4.7k" V 6650 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 2500 50  0001 C CNN
F 3 "" H 6650 2500 50  0001 C CNN
F 4 "C23162" H 6650 2500 50  0001 C CNN "LCSC"
F 5 "+/- 10% or better" H 6650 2500 50  0001 C CNN "Details"
	1    6650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5A836618
P 7600 3200
F 0 "#PWR09" H 7600 2950 50  0001 C CNN
F 1 "GND" H 7600 3050 50  0000 C CNN
F 2 "" H 7600 3200 50  0001 C CNN
F 3 "" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5A836716
P 6650 2900
F 0 "R4" V 6730 2900 50  0000 C CNN
F 1 "4.7k" V 6650 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 2900 50  0001 C CNN
F 3 "" H 6650 2900 50  0001 C CNN
F 4 "C23162" H 6650 2900 50  0001 C CNN "LCSC"
F 5 "+/- 10% or better" H 6650 2900 50  0001 C CNN "Details"
	1    6650 2900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5A83677D
P 6500 2900
F 0 "#PWR010" H 6500 2750 50  0001 C CNN
F 1 "+5V" H 6500 3040 50  0000 C CNN
F 2 "" H 6500 2900 50  0001 C CNN
F 3 "" H 6500 2900 50  0001 C CNN
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7812 U1
U 1 1 5A836DF1
P 1200 1400
F 0 "U1" H 1050 1525 50  0000 C CNN
F 1 "L7812" H 1200 1525 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 1225 1250 50  0001 L CIN
F 3 "" H 1200 1350 50  0001 C CNN
F 4 "MC78M12CDTRKG" H 1200 1400 50  0000 C CNN "Part Number"
F 5 "" H 1200 1400 60  0001 C CNN "Details"
F 6 "C67851" H 1200 1400 50  0001 C CNN "LCSC"
F 7 "35V INPUT" H 1200 1400 50  0001 C CNN "Notes"
	1    1200 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A83706C
P 1900 1700
F 0 "#PWR011" H 1900 1450 50  0001 C CNN
F 1 "GND" H 1900 1550 50  0000 C CNN
F 2 "" H 1900 1700 50  0001 C CNN
F 3 "" H 1900 1700 50  0001 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR012
U 1 1 5A8370A5
P 1900 1400
F 0 "#PWR012" H 1900 1250 50  0001 C CNN
F 1 "+12V" H 1900 1540 50  0000 C CNN
F 2 "" H 1900 1400 50  0001 C CNN
F 3 "" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5A83733B
P 1800 1550
F 0 "C3" H 1825 1650 50  0000 L CNN
F 1 "0.1uF" H 1825 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1838 1400 50  0001 C CNN
F 3 "" H 1800 1550 50  0001 C CNN
F 4 "C49678" H 1800 1550 50  0001 C CNN "LCSC"
F 5 "+/- 20% or better" H 1800 1550 50  0001 C CNN "Details"
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 5A839389
P 7800 2250
F 0 "#PWR013" H 7800 2100 50  0001 C CNN
F 1 "+12V" H 7800 2390 50  0000 C CNN
F 2 "" H 7800 2250 50  0001 C CNN
F 3 "" H 7800 2250 50  0001 C CNN
	1    7800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5A8396C7
P 8600 2900
F 0 "R6" V 8680 2900 50  0000 C CNN
F 1 "1k" V 8600 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8530 2900 50  0001 C CNN
F 3 "" H 8600 2900 50  0001 C CNN
F 4 "C21190" H 8600 2900 50  0001 C CNN "LCSC"
F 5 "+/- 10% or better" H 8600 2900 50  0001 C CNN "Details"
	1    8600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR014
U 1 1 5A83B52F
P 4300 1000
F 0 "#PWR014" H 4300 850 50  0001 C CNN
F 1 "+24V" H 4300 1140 50  0000 C CNN
F 2 "" H 4300 1000 50  0001 C CNN
F 3 "" H 4300 1000 50  0001 C CNN
	1    4300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5A83B5B8
P 4150 1100
F 0 "#PWR015" H 4150 850 50  0001 C CNN
F 1 "GND" H 4150 950 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "" H 4150 1100 50  0001 C CNN
	1    4150 1100
	1    0    0    -1  
$EndComp
Text GLabel 4500 1450 2    47   Output ~ 0
LINBUS
$Comp
L Device:C C6
U 1 1 5A83BE5C
P 8400 3200
F 0 "C6" H 8425 3300 50  0000 L CNN
F 1 "220pF" H 8425 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 3050 50  0001 C CNN
F 3 "" H 8400 3200 50  0001 C CNN
F 4 "C1603" H 8400 3200 50  0001 C CNN "LCSC"
F 5 "+/- 20% or better" H 8400 3200 50  0001 C CNN "Details"
	1    8400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5A83BF21
P 8400 3350
F 0 "#PWR016" H 8400 3100 50  0001 C CNN
F 1 "GND" H 8400 3200 50  0000 C CNN
F 2 "" H 8400 3350 50  0001 C CNN
F 3 "" H 8400 3350 50  0001 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
Text GLabel 5300 3900 2    47   Output ~ 0
RST
Text GLabel 5300 3600 2    47   Input ~ 0
Bup
Text GLabel 5300 3700 2    47   Input ~ 0
Bdown
Text GLabel 5700 1200 0    47   Input ~ 0
Bup
Text GLabel 5700 1350 0    47   Input ~ 0
Bdown
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5A83B312
P 4700 1100
F 0 "J1" H 4700 1300 50  0000 C CNN
F 1 "Interface" H 4700 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 4700 1100 50  0001 C CNN
F 3 "" H 4700 1100 50  0001 C CNN
F 4 "DNP" H 4700 1100 50  0001 C CNN "LCSC"
F 5 "Molex 0022288030" H 4700 1100 50  0001 C CNN "Part Number"
F 6 "Substitution OK" H 4700 1100 50  0001 C CNN "Notes"
	1    4700 1100
	1    0    0    -1  
$EndComp
Text Notes 5300 800  0    52   ~ 0
Headers
$Comp
L Device:D D1
U 1 1 5AA07680
P 7800 2500
F 0 "D1" V 7800 2600 50  0000 C CNN
F 1 "1N4148" V 7800 2300 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 7800 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0001 C CNN
F 4 "C2128" H 7800 2500 50  0001 C CNN "LCSC"
F 5 "1N4148" H 7800 2500 50  0001 C CNN "Part Number"
F 6 "Substitution OK" H 7800 2500 50  0001 C CNN "Notes"
	1    7800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D2
U 1 1 5AA0777B
P 8350 2750
F 0 "D2" H 8350 2650 50  0000 C CNN
F 1 "1N4148" H 8350 2850 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 8350 2750 50  0001 C CNN
F 3 "" H 8350 2750 50  0001 C CNN
F 4 "C2128" H 8350 2750 50  0001 C CNN "LCSC"
F 5 "1N4148" H 8350 2750 50  0001 C CNN "Part Number"
F 6 "Substitution OK" H 8350 2750 50  0001 C CNN "Notes"
	1    8350 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5AA096B7
P 750 1550
F 0 "C1" H 850 1550 50  0000 L CNN
F 1 "0.33uF" H 750 1450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 788 1400 50  0001 C CNN
F 3 "" H 750 1550 50  0001 C CNN
F 4 "C1740" H 750 1550 50  0001 C CNN "LCSC"
F 5 "+/- 20% or better" H 750 1550 50  0001 C CNN "Details"
	1    750  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5AA09792
P 750 1700
F 0 "#PWR018" H 750 1450 50  0001 C CNN
F 1 "GND" H 750 1550 50  0000 C CNN
F 2 "" H 750 1700 50  0001 C CNN
F 3 "" H 750 1700 50  0001 C CNN
	1    750  1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5AA1DE4D
P 4550 4200
F 0 "#PWR019" H 4550 3950 50  0001 C CNN
F 1 "GND" H 4550 4050 50  0000 C CNN
F 2 "" H 4550 4200 50  0001 C CNN
F 3 "" H 4550 4200 50  0001 C CNN
	1    4550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5AA1F9DA
P 3650 2500
F 0 "C4" H 3675 2600 50  0000 L CNN
F 1 "DNP" H 3400 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3688 2350 50  0001 C CNN
F 3 "" H 3650 2500 50  0001 C CNN
F 4 "DNP" H 3650 2500 50  0001 C CNN "LCSC"
F 5 "+/- 20% or better" H 3650 2500 50  0001 C CNN "Details"
	1    3650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5AA1FA9D
P 3650 2700
F 0 "#PWR020" H 3650 2450 50  0001 C CNN
F 1 "GND" H 3650 2550 50  0000 C CNN
F 2 "" H 3650 2700 50  0001 C CNN
F 3 "" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 5AA53CE2
P 6050 1250
F 0 "J2" H 6050 1750 50  0000 C CNN
F 1 "FFC" H 6050 650 50  0000 C CNN
F 2 "!Custom:FFC_10" H 6050 1250 50  0001 C CNN
F 3 "" H 6050 1250 50  0001 C CNN
F 4 "TE Connectivity AMP 1-84981-0" H 6050 1250 50  0001 C CNN "Part Number"
F 5 "DNP" H 6050 1250 50  0001 C CNN "LCSC"
F 6 "Substitution OK" H 6050 1250 50  0001 C CNN "Notes"
	1    6050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2900 6150 2900
Wire Wire Line
	6150 2900 6150 3200
Wire Wire Line
	6150 3200 6800 3200
Wire Wire Line
	6800 2650 6800 2750
Wire Wire Line
	6300 2800 6300 2650
Wire Wire Line
	5750 2800 6300 2800
Wire Wire Line
	4300 1000 4500 1000
Wire Wire Line
	4500 1100 4150 1100
Wire Wire Line
	4500 1200 4350 1200
Wire Wire Line
	4350 1200 4350 1450
Wire Wire Line
	4350 1450 4500 1450
Wire Wire Line
	6500 3050 6400 3050
Wire Wire Line
	6400 3050 6400 3000
Wire Wire Line
	6400 3000 6300 3000
Wire Wire Line
	7600 2900 7800 2900
Wire Wire Line
	7800 2900 7800 2750
Wire Wire Line
	8200 2750 7800 2750
Connection ~ 7800 2750
Wire Wire Line
	5300 3700 5150 3700
Wire Notes Line
	600  700  3350 700 
Wire Notes Line
	3350 1950 600  1950
Wire Wire Line
	7800 2250 7800 2350
Wire Wire Line
	8500 2750 8600 2750
Wire Wire Line
	5550 2900 5550 2800
Wire Wire Line
	5550 2800 5150 2800
Wire Wire Line
	5750 2800 5750 2850
Wire Wire Line
	5750 2850 5350 2850
Wire Wire Line
	5350 2850 5350 2900
Wire Wire Line
	5350 2900 5150 2900
Wire Wire Line
	5300 3100 5150 3100
Wire Wire Line
	5300 3200 5150 3200
Wire Wire Line
	5300 3300 5150 3300
Wire Wire Line
	5300 3900 5150 3900
Wire Wire Line
	900  1400 750  1400
Wire Wire Line
	2200 1400 2150 1400
$Comp
L power:GND #PWR021
U 1 1 5AA54007
P 5450 1450
F 0 "#PWR021" H 5450 1200 50  0001 C CNN
F 1 "GND" H 5450 1300 50  0000 C CNN
F 2 "" H 5450 1450 50  0001 C CNN
F 3 "" H 5450 1450 50  0001 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1450 5450 1450
Wire Wire Line
	5700 1200 5800 1200
Wire Wire Line
	5800 1200 5800 1250
Wire Wire Line
	5800 1250 5850 1250
Wire Wire Line
	5850 1350 5700 1350
Wire Wire Line
	5300 3600 5150 3600
$Comp
L Device:Buzzer BZ1
U 1 1 5AA5CDC1
P 5950 3500
F 0 "BZ1" H 6100 3550 50  0000 L CNN
F 1 "Buzzer" H 6100 3450 50  0000 L CNN
F 2 "!Greg:Buzzer_Murata_PKMCS0909E4000-R1-HAND-SOLDER" V 5925 3600 50  0001 C CNN
F 3 "" V 5925 3600 50  0001 C CNN
F 4 "PKMCS0909E4000-R1" H 5950 3500 50  0001 C CNN "Part Number"
F 5 "DNP" H 5950 3500 50  0001 C CNN "LCSC"
F 6 "Substition OK" H 5950 3500 50  0001 C CNN "Notes"
	1    5950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3400 5850 3400
$Comp
L Device:R R1
U 1 1 5AA5D01D
P 5850 3750
F 0 "R1" V 5930 3750 50  0000 C CNN
F 1 "1k" V 5850 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 3750 50  0001 C CNN
F 3 "" H 5850 3750 50  0001 C CNN
F 4 "C21190" H 5850 3750 50  0001 C CNN "LCSC"
F 5 "+/- 10% or better" H 5850 3750 50  0001 C CNN "Details"
	1    5850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5AA5D0C5
P 5850 3900
F 0 "#PWR022" H 5850 3650 50  0001 C CNN
F 1 "GND" H 5850 3750 50  0000 C CNN
F 2 "" H 5850 3900 50  0001 C CNN
F 3 "" H 5850 3900 50  0001 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG023
U 1 1 5AA6E640
P 7850 1100
F 0 "#FLG023" H 7850 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 7850 1250 50  0000 C CNN
F 2 "" H 7850 1100 50  0001 C CNN
F 3 "" H 7850 1100 50  0001 C CNN
	1    7850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR024
U 1 1 5AA6E682
P 8200 1100
F 0 "#PWR024" H 8200 950 50  0001 C CNN
F 1 "+24V" H 8200 1240 50  0000 C CNN
F 2 "" H 8200 1100 50  0001 C CNN
F 3 "" H 8200 1100 50  0001 C CNN
	1    8200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1100 7850 1100
$Comp
L power:PWR_FLAG #FLG025
U 1 1 5AA6F82E
P 7850 1400
F 0 "#FLG025" H 7850 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 7850 1550 50  0000 C CNN
F 2 "" H 7850 1400 50  0001 C CNN
F 3 "" H 7850 1400 50  0001 C CNN
	1    7850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5AA6F869
P 8200 1400
F 0 "#PWR026" H 8200 1150 50  0001 C CNN
F 1 "GND" H 8200 1250 50  0000 C CNN
F 2 "" H 8200 1400 50  0001 C CNN
F 3 "" H 8200 1400 50  0001 C CNN
	1    8200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1400 8200 1400
Text Notes 6000 3800 0    40   ~ 0
Volume control
Wire Notes Line
	5700 3300 5700 4150
Wire Notes Line
	5700 4150 6800 4150
Wire Notes Line
	6800 4150 6800 3300
Wire Notes Line
	6800 3300 5700 3300
Text Notes 5950 4250 0    60   ~ 0
Optional beeper
Wire Wire Line
	7800 2750 7800 2650
Wire Wire Line
	4550 2400 4550 2350
Wire Wire Line
	2150 1000 2150 1400
Wire Notes Line
	3350 700  3350 1950
Wire Notes Line
	600  700  600  1950
Connection ~ 1750 1000
Wire Wire Line
	1750 1000 2150 1000
Wire Wire Line
	750  1000 750  1400
Wire Wire Line
	750  1000 1750 1000
NoConn ~ 5150 3800
NoConn ~ 5150 3000
NoConn ~ 5150 2700
NoConn ~ 7600 2750
NoConn ~ 5850 850 
NoConn ~ 5850 950 
NoConn ~ 5850 1050
NoConn ~ 5850 1150
NoConn ~ 5850 1550
NoConn ~ 5850 1650
NoConn ~ 5850 1750
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 5DBF5698
P 2500 3300
F 0 "J3" H 2171 3396 50  0000 R CNN
F 1 "AVR-ISP-6" H 2171 3305 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 2250 3350 50  0001 C CNN
F 3 " ~" H 1225 2750 50  0001 C CNN
F 4 "DNP" H 2500 3300 50  0001 C CNN "LCSC"
F 5 "DNP" H 2500 3300 50  0001 C CNN "Part Number"
	1    2500 3300
	1    0    0    -1  
$EndComp
Text GLabel 3000 3300 2    47   Output ~ 0
SCK
Text GLabel 3000 3200 2    47   Output ~ 0
MOSI
Text GLabel 3000 3100 2    47   Output ~ 0
MISO
Text GLabel 3000 3400 2    47   Output ~ 0
RST
$Comp
L power:GND #PWR0101
U 1 1 5DBF890F
P 2400 3700
F 0 "#PWR0101" H 2400 3450 50  0001 C CNN
F 1 "GND" H 2400 3550 50  0000 C CNN
F 2 "" H 2400 3700 50  0001 C CNN
F 3 "" H 2400 3700 50  0001 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5DBF915C
P 2400 2800
F 0 "#PWR0102" H 2400 2650 50  0001 C CNN
F 1 "+5V" H 2400 2940 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3400 3000 3400
Wire Wire Line
	3000 3300 2900 3300
Wire Wire Line
	2900 3200 3000 3200
Wire Wire Line
	3000 3100 2900 3100
Wire Wire Line
	1200 1700 1800 1700
Wire Wire Line
	1500 1400 1800 1400
Wire Wire Line
	6300 2650 6650 2650
Wire Wire Line
	7600 3050 8400 3050
Wire Notes Line
	4000 700  4000 1950
Wire Notes Line
	4000 700  6350 700 
Wire Notes Line
	4000 1950 6350 1950
Wire Notes Line
	6350 700  6350 1950
$Comp
L !Custom:MCP2003B U4
U 1 1 5EF811C0
P 7200 2950
F 0 "U4" H 7200 3375 50  0000 C CNN
F 1 "MCP2003B" H 7200 3284 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7200 2500 50  0001 C CNN
F 3 "" H 7300 2950 50  0001 C CNN
F 4 "DNP" H 7200 2950 50  0001 C CNN "LCSC"
F 5 "MCP2003B" H 7200 2950 50  0001 C CNN "Part Number"
	1    7200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2300 3650 2350
Wire Wire Line
	3650 2350 4550 2350
Connection ~ 3650 2350
Wire Wire Line
	3650 2650 3650 2700
Wire Wire Line
	2800 1400 3100 1400
Wire Wire Line
	3100 1400 3200 1400
Wire Wire Line
	3200 1400 3200 1300
Connection ~ 3100 1400
Wire Wire Line
	3200 1700 3100 1700
Wire Wire Line
	3100 1700 2500 1700
Connection ~ 3100 1700
Connection ~ 1800 1400
Wire Wire Line
	1800 1400 1900 1400
Connection ~ 1800 1700
Wire Wire Line
	1800 1700 1900 1700
Connection ~ 750  1400
Connection ~ 6650 2650
Wire Wire Line
	6650 2650 6800 2650
Connection ~ 8600 3050
Wire Wire Line
	8600 3050 9100 3050
Connection ~ 8400 3050
Wire Wire Line
	8400 3050 8600 3050
$Comp
L MCU_Microchip_ATtiny:ATtiny841-SS U3
U 1 1 5F8D16D9
P 4550 3300
F 0 "U3" H 4021 3346 50  0000 R CNN
F 1 "ATtiny841-SS" H 4021 3255 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4550 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8495-8-bit-AVR-Microcontrollers-ATtiny441-ATtiny841_Datasheet.pdf" H 4550 3300 50  0001 C CNN
F 4 "DNP" H 4550 3300 50  0001 C CNN "LCSC"
	1    4550 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
