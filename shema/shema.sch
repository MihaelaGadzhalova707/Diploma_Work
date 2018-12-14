EESchema Schematic File Version 4
LIBS:shema-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
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
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C113410
P 750 850
F 0 "J?" H 670 1067 50  0000 C CNN
F 1 "Power In" H 670 976 50  0000 C CNN
F 2 "" H 750 850 50  0001 C CNN
F 3 "~" H 750 850 50  0001 C CNN
	1    750  850 
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C11353F
P 1000 750
F 0 "#PWR?" H 1000 600 50  0001 C CNN
F 1 "+12V" H 1015 923 50  0000 C CNN
F 2 "" H 1000 750 50  0001 C CNN
F 3 "" H 1000 750 50  0001 C CNN
	1    1000 750 
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C11356A
P 1150 1100
F 0 "#PWR?" H 1150 850 50  0001 C CNN
F 1 "GND" H 1155 927 50  0000 C CNN
F 2 "" H 1150 1100 50  0001 C CNN
F 3 "" H 1150 1100 50  0001 C CNN
	1    1150 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 950  1150 1100
Wire Wire Line
	1150 950  950  950 
Wire Wire Line
	950  850  1000 850 
Wire Wire Line
	1150 850  1150 750 
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 5C113770
P 1650 950
F 0 "Q?" V 1993 950 50  0000 C CNN
F 1 "IRLML6344" V 1902 950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 875 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 1650 950 50  0001 L CNN
	1    1650 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 850  1450 850 
Connection ~ 1150 850 
Wire Wire Line
	1150 950  1450 950 
Wire Wire Line
	1450 950  1450 1150
Wire Wire Line
	1450 1150 1650 1150
Connection ~ 1150 950 
Wire Wire Line
	400  850  950  850 
$Comp
L power:+12P #PWR?
U 1 1 5C11386E
P 1150 750
F 0 "#PWR?" H 1150 600 50  0001 C CNN
F 1 "+12P" H 1165 923 50  0000 C CNN
F 2 "" H 1150 750 50  0001 C CNN
F 3 "" H 1150 750 50  0001 C CNN
	1    1150 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 850  1000 750 
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U?
U 1 1 5C1139D2
P 2050 6700
F 0 "U?" H 2050 7787 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 2050 7681 60  0000 C CNN
F 2 "" H 1450 5850 60  0000 C CNN
F 3 "" H 1450 5850 60  0000 C CNN
	1    2050 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C113B0B
P 900 7400
F 0 "#PWR?" H 900 7250 50  0001 C CNN
F 1 "+12V" V 915 7528 50  0000 L CNN
F 2 "" H 900 7400 50  0001 C CNN
F 3 "" H 900 7400 50  0001 C CNN
	1    900  7400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C113B43
P 900 7300
F 0 "#PWR?" H 900 7050 50  0001 C CNN
F 1 "GND" V 905 7172 50  0000 R CNN
F 2 "" H 900 7300 50  0001 C CNN
F 3 "" H 900 7300 50  0001 C CNN
	1    900  7300
	0    1    1    0   
$EndComp
Wire Wire Line
	900  7400 1250 7400
Wire Wire Line
	900  7300 1250 7300
$Comp
L power:+3V3 #PWR?
U 1 1 5C113CBF
P 900 7000
F 0 "#PWR?" H 900 6850 50  0001 C CNN
F 1 "+3V3" V 915 7128 50  0000 L CNN
F 2 "" H 900 7000 50  0001 C CNN
F 3 "" H 900 7000 50  0001 C CNN
	1    900  7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 7000 900  7000
$Comp
L 74xx:74HC595 U?
U 1 1 5C114093
P 4150 5650
F 0 "U?" H 4400 6300 50  0000 C CNN
F 1 "74HC595" H 4400 6200 50  0000 C CNN
F 2 "" H 4150 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 5650 50  0001 C CNN
	1    4150 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5C114333
P 4150 3600
F 0 "U?" H 4350 4250 50  0000 C CNN
F 1 "74HC595" H 4350 4150 50  0000 C CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 5C11437A
P 4150 1550
F 0 "U?" H 4350 2200 50  0000 C CNN
F 1 "74HC595" H 4350 2100 50  0000 C CNN
F 2 "" H 4150 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 1550 50  0001 C CNN
	1    4150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C114641
P 4150 4950
F 0 "#PWR?" H 4150 4800 50  0001 C CNN
F 1 "+3V3" H 4165 5123 50  0000 C CNN
F 2 "" H 4150 4950 50  0001 C CNN
F 3 "" H 4150 4950 50  0001 C CNN
	1    4150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5050 4150 5000
$Comp
L Device:C C?
U 1 1 5C114955
P 3900 5000
F 0 "C?" V 3648 5000 50  0000 C CNN
F 1 "100nF" V 3739 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 4850 50  0001 C CNN
F 3 "~" H 3900 5000 50  0001 C CNN
	1    3900 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C114B22
P 3650 5000
F 0 "#PWR?" H 3650 4750 50  0001 C CNN
F 1 "GND" V 3655 4872 50  0000 R CNN
F 2 "" H 3650 5000 50  0001 C CNN
F 3 "" H 3650 5000 50  0001 C CNN
	1    3650 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 5000 3750 5000
$Comp
L power:GND #PWR?
U 1 1 5C114CC3
P 4150 6400
F 0 "#PWR?" H 4150 6150 50  0001 C CNN
F 1 "GND" H 4155 6227 50  0000 C CNN
F 2 "" H 4150 6400 50  0001 C CNN
F 3 "" H 4150 6400 50  0001 C CNN
	1    4150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6400 4150 6350
$Comp
L power:+3V3 #PWR?
U 1 1 5C115C7B
P 4150 2900
F 0 "#PWR?" H 4150 2750 50  0001 C CNN
F 1 "+3V3" H 4165 3073 50  0000 C CNN
F 2 "" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2900 4150 2950
$Comp
L Device:C C?
U 1 1 5C116441
P 3900 2950
F 0 "C?" V 4150 2900 50  0000 L CNN
F 1 "100nF" V 4050 2850 50  0000 L CNN
F 2 "" H 3938 2800 50  0001 C CNN
F 3 "~" H 3900 2950 50  0001 C CNN
	1    3900 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C1168FD
P 3600 2950
F 0 "#PWR?" H 3600 2700 50  0001 C CNN
F 1 "GND" V 3605 2822 50  0000 R CNN
F 2 "" H 3600 2950 50  0001 C CNN
F 3 "" H 3600 2950 50  0001 C CNN
	1    3600 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C1169F4
P 4150 4350
F 0 "#PWR?" H 4150 4100 50  0001 C CNN
F 1 "GND" H 4155 4177 50  0000 C CNN
F 2 "" H 4150 4350 50  0001 C CNN
F 3 "" H 4150 4350 50  0001 C CNN
	1    4150 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C1173B3
P 4150 850
F 0 "#PWR?" H 4150 700 50  0001 C CNN
F 1 "+3V3" H 4165 1023 50  0000 C CNN
F 2 "" H 4150 850 50  0001 C CNN
F 3 "" H 4150 850 50  0001 C CNN
	1    4150 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C1176E7
P 3900 900
F 0 "C?" V 3648 900 50  0000 C CNN
F 1 "100nF" V 3739 900 50  0000 C CNN
F 2 "" H 3938 750 50  0001 C CNN
F 3 "~" H 3900 900 50  0001 C CNN
	1    3900 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C117ACE
P 3600 900
F 0 "#PWR?" H 3600 650 50  0001 C CNN
F 1 "GND" V 3605 772 50  0000 R CNN
F 2 "" H 3600 900 50  0001 C CNN
F 3 "" H 3600 900 50  0001 C CNN
	1    3600 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C117CD7
P 4150 2300
F 0 "#PWR?" H 4150 2050 50  0001 C CNN
F 1 "GND" H 4155 2127 50  0000 C CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "" H 4150 2300 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5000 4150 5000
Connection ~ 4150 5000
Wire Wire Line
	4150 5000 4150 4950
$Comp
L power:GND #PWR?
U 1 1 5C11D437
P 3550 5850
F 0 "#PWR?" H 3550 5600 50  0001 C CNN
F 1 "GND" V 3555 5722 50  0000 R CNN
F 2 "" H 3550 5850 50  0001 C CNN
F 3 "" H 3550 5850 50  0001 C CNN
	1    3550 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 5850 3750 5850
$Comp
L power:GND #PWR?
U 1 1 5C120892
P 3450 3800
F 0 "#PWR?" H 3450 3550 50  0001 C CNN
F 1 "GND" V 3455 3672 50  0000 R CNN
F 2 "" H 3450 3800 50  0001 C CNN
F 3 "" H 3450 3800 50  0001 C CNN
	1    3450 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2950 3750 2950
Wire Wire Line
	4050 2950 4150 2950
Connection ~ 4150 2950
Wire Wire Line
	4150 2950 4150 3000
Wire Wire Line
	3450 3800 3750 3800
Wire Wire Line
	4150 4300 4150 4350
Wire Wire Line
	4150 850  4150 900 
Wire Wire Line
	4050 900  4150 900 
Connection ~ 4150 900 
Wire Wire Line
	4150 900  4150 950 
Wire Wire Line
	3600 900  3750 900 
Wire Wire Line
	4150 2250 4150 2300
$Comp
L power:GND #PWR?
U 1 1 5C12471E
P 3400 1750
F 0 "#PWR?" H 3400 1500 50  0001 C CNN
F 1 "GND" V 3405 1622 50  0000 R CNN
F 2 "" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 1750 3750 1750
Wire Wire Line
	4550 2050 4550 2600
Wire Wire Line
	4550 2600 3250 2600
Wire Wire Line
	3250 2600 3250 3200
Wire Wire Line
	3250 3200 3750 3200
Wire Wire Line
	4550 4100 4550 4650
Wire Wire Line
	4550 4650 3250 4650
Wire Wire Line
	3250 5250 3750 5250
Wire Wire Line
	3250 4650 3250 5250
Wire Wire Line
	3750 1650 3100 1650
Wire Wire Line
	3100 1650 3100 3700
Wire Wire Line
	3750 3700 3100 3700
Connection ~ 3100 3700
Wire Wire Line
	3100 3700 3100 5750
Wire Wire Line
	3750 5750 3100 5750
Connection ~ 3100 5750
Wire Wire Line
	3750 1450 3050 1450
Wire Wire Line
	3050 1450 3050 3500
Wire Wire Line
	3750 5550 3050 5550
Connection ~ 3050 5550
Wire Wire Line
	3750 3500 3050 3500
Connection ~ 3050 3500
Wire Wire Line
	3050 3500 3050 5550
Wire Wire Line
	3750 1350 3000 1350
Wire Wire Line
	3000 1350 3000 3400
Wire Wire Line
	3750 5450 3000 5450
Connection ~ 3000 5450
Wire Wire Line
	3750 3400 3000 3400
Connection ~ 3000 3400
Wire Wire Line
	3000 3400 3000 5450
Wire Wire Line
	3750 1150 2950 1150
Wire Wire Line
	2950 1150 2950 6000
Wire Wire Line
	2950 6000 2850 6000
Wire Wire Line
	3000 6100 2850 6100
Wire Wire Line
	3000 5450 3000 6100
Wire Wire Line
	3050 6200 2850 6200
Wire Wire Line
	3050 5550 3050 6200
Wire Wire Line
	3100 6300 2850 6300
Wire Wire Line
	3100 5750 3100 6300
NoConn ~ 4550 6150
Text Label 4700 1150 0    50   ~ 0
Led_Red
Text Label 4700 1250 0    50   ~ 0
Led_Green
Text Label 4700 1350 0    50   ~ 0
Led_Blue
Text Label 4700 1450 0    50   ~ 0
Led_White
Text Label 4700 1550 0    50   ~ 0
Water_Pump
Text Label 4700 3200 0    50   ~ 0
Valve_01
Text Label 4700 3300 0    50   ~ 0
Valve_02
Text Label 4700 3400 0    50   ~ 0
Valve_03
Text Label 4700 3500 0    50   ~ 0
Valve_04
Text Label 4700 1650 0    50   ~ 0
Heater_01
Text Label 4700 1750 0    50   ~ 0
Heater_02
Text Label 4700 1850 0    50   ~ 0
Cooling
Text Label -4300 4300 0    50   ~ 0
Temperature_Sensor
Text Label 4700 3600 0    50   ~ 0
Wave_Maker
Text Label 11750 4950 0    50   ~ 0
PH_Sensor
Text Label 11750 5050 0    50   ~ 0
Flowmeter
Text Label 11750 5300 0    50   ~ 0
Underwater_Camera_02
Text Label 11750 5150 0    50   ~ 0
Underwater_Camera_01?
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C140A09
P -1150 2050
F 0 "J?" H -1070 2092 50  0000 L CNN
F 1 "Led strip connector" H -1070 2001 50  0000 L CNN
F 2 "" H -1150 2050 50  0001 C CNN
F 3 "~" H -1150 2050 50  0001 C CNN
	1    -1150 2050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 5C11B4AA
P -2400 3650
F 0 "Q?" H -2100 3800 50  0000 L CNN
F 1 "IRLML6344" H -2200 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H -2200 3575 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H -2400 3650 50  0001 L CNN
	1    -2400 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 5C128E75
P -2400 2650
F 0 "Q?" H -2100 2800 50  0000 L CNN
F 1 "IRLML6344" H -2200 2700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H -2200 2575 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H -2400 2650 50  0001 L CNN
	1    -2400 2650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 5C1291C3
P -2400 1650
F 0 "Q?" H -2100 1800 50  0000 L CNN
F 1 "IRLML6344" H -2200 1700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H -2200 1575 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H -2400 1650 50  0001 L CNN
	1    -2400 1650
	1    0    0    -1  
$EndComp
Text Notes -1350 1950 2    50   ~ 0
R
Text Notes -1350 2050 2    50   ~ 0
G
Text Notes -1350 2150 2    50   ~ 0
B
Text Notes -1350 2250 2    50   ~ 0
W
Wire Wire Line
	-1350 1850 -1400 1850
Wire Wire Line
	-1400 1850 -1400 1750
$Comp
L power:+12V #PWR?
U 1 1 5C14D4F9
P -1400 1750
F 0 "#PWR?" H -1400 1600 50  0001 C CNN
F 1 "+12V" H -1385 1923 50  0000 C CNN
F 2 "" H -1400 1750 50  0001 C CNN
F 3 "" H -1400 1750 50  0001 C CNN
	1    -1400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1700 3450 -2300 3450
$Comp
L power:GND #PWR?
U 1 1 5C174410
P -2200 4000
F 0 "#PWR?" H -2200 3750 50  0001 C CNN
F 1 "GND" H -2195 3827 50  0000 C CNN
F 2 "" H -2200 4000 50  0001 C CNN
F 3 "" H -2200 4000 50  0001 C CNN
	1    -2200 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 5C129215
P -2400 650
F 0 "Q?" H -2100 800 50  0000 L CNN
F 1 "IRLML6344" H -2200 700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H -2200 575 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H -2400 650 50  0001 L CNN
	1    -2400 650 
	1    0    0    -1  
$EndComp
$Comp
L pspice:R 100k
U 1 1 5C1BCA85
P -2650 900
F 0 "100k" V -2750 900 50  0000 C CNN
F 1 "R0805" V -2550 900 50  0000 C CNN
F 2 "" H -2650 900 50  0001 C CNN
F 3 "~" H -2650 900 50  0001 C CNN
	1    -2650 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	-2600 650  -2950 650 
Wire Wire Line
	-2300 450  -1700 450 
$Comp
L Device:Q_PNP_Darlington_EBC Q?
U 1 1 5C1C9EA4
P -3100 300
F 0 "Q?" H -2909 346 50  0000 L CNN
F 1 "PNP" H -2909 255 50  0000 L CNN
F 2 "" H -2900 400 50  0001 C CNN
F 3 "~" H -3100 300 50  0001 C CNN
	1    -3100 300 
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3300 300  -3700 300 
Text Notes -3800 250  0    50   ~ 0
Pin 15\n
Wire Wire Line
	-2300 850  -2300 900 
Wire Wire Line
	-2400 900  -2300 900 
Wire Wire Line
	-2950 650  -2950 900 
Wire Wire Line
	-2950 900  -2900 900 
Wire Wire Line
	-3000 500  -3000 650 
Wire Wire Line
	-3000 100  -3000 50  
Wire Wire Line
	-1750 1450 -2300 1450
$Comp
L pspice:R 100k
U 1 1 5C1FDE63
P -2650 1900
F 0 "100k" V -2750 1900 50  0000 C CNN
F 1 "R0805" V -2550 1900 50  0000 C CNN
F 2 "" H -2650 1900 50  0001 C CNN
F 3 "~" H -2650 1900 50  0001 C CNN
	1    -2650 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	-2600 1650 -2950 1650
Wire Wire Line
	-2950 1650 -2950 1900
Wire Wire Line
	-2950 1900 -2900 1900
$Comp
L pspice:R 100k
U 1 1 5C2151B8
P -2650 2900
F 0 "100k" V -2750 2900 50  0000 C CNN
F 1 "R0805" V -2550 2900 50  0000 C CNN
F 2 "" H -2650 2900 50  0001 C CNN
F 3 "~" H -2650 2900 50  0001 C CNN
	1    -2650 2900
	0    1    1    0   
$EndComp
Text Notes -3750 2250 0    50   ~ 0
Pin 2\n
Wire Wire Line
	-2950 2650 -2950 2900
Wire Wire Line
	-2950 2900 -2900 2900
$Comp
L pspice:R 100k
U 1 1 5C21EEBD
P -2650 3900
F 0 "100k" V -2750 3900 50  0000 C CNN
F 1 "R805" V -2550 3900 50  0000 C CNN
F 2 "" H -2650 3900 50  0001 C CNN
F 3 "~" H -2650 3900 50  0001 C CNN
	1    -2650 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	-2600 3650 -2950 3650
Text Notes -3750 3250 0    50   ~ 0
Pin 3\n
Wire Wire Line
	-2950 3650 -2950 3900
Wire Wire Line
	-2950 3900 -2900 3900
Wire Wire Line
	-2400 1900 -2300 1900
Wire Wire Line
	-2300 1900 -2300 1850
Wire Wire Line
	-1700 1950 -1350 1950
Wire Wire Line
	-1700 450  -1700 1950
Wire Wire Line
	-1750 2050 -1350 2050
Wire Wire Line
	-1750 1450 -1750 2050
Wire Wire Line
	-1750 2450 -1750 2150
Wire Wire Line
	-1750 2150 -1350 2150
Wire Wire Line
	-2350 2450 -2300 2450
Wire Wire Line
	-1700 2250 -1350 2250
Connection ~ -2300 2450
Wire Wire Line
	-2300 2450 -1750 2450
Wire Wire Line
	-2950 2650 -2600 2650
Wire Wire Line
	-1700 2250 -1700 3450
Wire Wire Line
	-2300 2850 -2300 2900
Wire Wire Line
	-2300 2900 -2400 2900
Wire Wire Line
	-2300 1900 -2300 1950
Wire Wire Line
	-2300 1950 -2200 1950
Connection ~ -2300 1900
Wire Wire Line
	-2300 2900 -2300 2950
Wire Wire Line
	-2300 2950 -2200 2950
Connection ~ -2300 2900
Connection ~ -2200 2950
Wire Wire Line
	-2200 2950 -2200 3950
Wire Wire Line
	-2300 3850 -2300 3900
Wire Wire Line
	-2300 3950 -2200 3950
Connection ~ -2200 3950
Wire Wire Line
	-2400 3900 -2300 3900
Connection ~ -2300 3900
Wire Wire Line
	-2300 3900 -2300 3950
Connection ~ -2300 3450
Wire Wire Line
	-2300 3050 -2300 3450
Wire Wire Line
	-2300 2050 -2300 2450
Connection ~ -2300 1450
Wire Wire Line
	-2300 1050 -2300 1450
Connection ~ -2300 450 
Wire Wire Line
	-2300 50   -2300 450 
Wire Wire Line
	-2200 4000 -2200 3950
Wire Wire Line
	-2200 1950 -2200 2950
Connection ~ -2200 1950
Wire Wire Line
	-2200 900  -2200 1950
Connection ~ -2300 900 
Wire Wire Line
	-2300 900  -2200 900 
Wire Wire Line
	-3000 650  -2950 650 
Connection ~ -2950 650 
Connection ~ -3000 650 
Wire Wire Line
	-3100 650  -3000 650 
Wire Wire Line
	-3000 50   -2300 50  
$Comp
L Device:Q_PNP_Darlington_EBC Q?
U 1 1 5C2BDA16
P -3100 1300
F 0 "Q?" H -2909 1346 50  0000 L CNN
F 1 "PNP" H -2909 1255 50  0000 L CNN
F 2 "" H -2900 1400 50  0001 C CNN
F 3 "~" H -3100 1300 50  0001 C CNN
	1    -3100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3300 1300 -3700 1300
Text Notes -3800 1250 0    50   ~ 0
Pin 1\n
Wire Wire Line
	-3000 1500 -3000 1650
Wire Wire Line
	-3000 1100 -3000 1050
Wire Wire Line
	-3000 1650 -2950 1650
Connection ~ -2950 1650
Connection ~ -3000 1650
Wire Wire Line
	-3100 1650 -3000 1650
Wire Wire Line
	-3000 1050 -2300 1050
$Comp
L Device:Q_PNP_Darlington_EBC Q?
U 1 1 5C2C2333
P -3100 2300
F 0 "Q?" H -2909 2346 50  0000 L CNN
F 1 "PNP" H -2909 2255 50  0000 L CNN
F 2 "" H -2900 2400 50  0001 C CNN
F 3 "~" H -3100 2300 50  0001 C CNN
	1    -3100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3300 2300 -3700 2300
Wire Wire Line
	-3000 2500 -3000 2650
Wire Wire Line
	-3000 2100 -3000 2050
Wire Wire Line
	-3000 2650 -2950 2650
Connection ~ -2950 2650
Connection ~ -3000 2650
Wire Wire Line
	-3100 2650 -3000 2650
Wire Wire Line
	-3000 2050 -2300 2050
$Comp
L Device:Q_PNP_Darlington_EBC Q?
U 1 1 5C2D38D7
P -3100 3300
F 0 "Q?" H -2909 3346 50  0000 L CNN
F 1 "PNP" H -2909 3255 50  0000 L CNN
F 2 "" H -2900 3400 50  0001 C CNN
F 3 "~" H -3100 3300 50  0001 C CNN
	1    -3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3300 3300 -3700 3300
Wire Wire Line
	-3000 3500 -3000 3650
Wire Wire Line
	-3000 3100 -3000 3050
Wire Wire Line
	-3000 3650 -2950 3650
Connection ~ -2950 3650
Connection ~ -3000 3650
Wire Wire Line
	-3100 3650 -3000 3650
Wire Wire Line
	-3000 3050 -2300 3050
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C174C36
P 15500 1800
F 0 "J?" H 15580 1842 50  0000 L CNN
F 1 "Led_Strip_Connector" H 15580 1751 50  0000 L CNN
F 2 "" H 15500 1800 50  0001 C CNN
F 3 "~" H 15500 1800 50  0001 C CNN
	1    15500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C17E6BE
P 14450 2450
F 0 "Q?" H 14655 2496 50  0000 L CNN
F 1 "IRLML6344" H 14655 2405 50  0000 L CNN
F 2 "" H 14650 2550 50  0001 C CNN
F 3 "~" H 14450 2450 50  0001 C CNN
	1    14450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C1B611B
P 13700 2700
F 0 "Q?" H 13891 2746 50  0000 L CNN
F 1 "NPN" H 13891 2655 50  0000 L CNN
F 2 "" H 13900 2800 50  0001 C CNN
F 3 "~" H 13700 2700 50  0001 C CNN
	1    13700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 2900 13800 2950
Wire Wire Line
	13800 2950 14550 2950
Wire Wire Line
	14550 2650 14550 2950
Wire Wire Line
	13800 2450 14250 2450
Wire Wire Line
	14550 2250 14550 1700
$Comp
L pspice:R R0805
U 1 1 5C1E11B7
P 13800 2100
F 0 "R0805" H 13900 2050 50  0000 L CNN
F 1 "1K" H 13900 2150 50  0000 L CNN
F 2 "" H 13800 2100 50  0001 C CNN
F 3 "~" H 13800 2100 50  0001 C CNN
	1    13800 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C1EB799
P 14300 1700
F 0 "#PWR?" H 14300 1550 50  0001 C CNN
F 1 "+12V" H 14315 1873 50  0000 C CNN
F 2 "" H 14300 1700 50  0001 C CNN
F 3 "" H 14300 1700 50  0001 C CNN
	1    14300 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	13800 1700 14300 1700
Wire Wire Line
	15300 1600 15200 1600
Wire Wire Line
	15200 1600 15200 1500
$Comp
L power:+12V #PWR?
U 1 1 5C214F62
P 15200 1500
F 0 "#PWR?" H 15200 1350 50  0001 C CNN
F 1 "+12V" H 15215 1673 50  0000 C CNN
F 2 "" H 15200 1500 50  0001 C CNN
F 3 "" H 15200 1500 50  0001 C CNN
	1    15200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 1700 13800 1850
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C21FE3F
P 14450 3850
F 0 "Q?" H 14655 3896 50  0000 L CNN
F 1 "IRLML6344" H 14655 3805 50  0000 L CNN
F 2 "" H 14650 3950 50  0001 C CNN
F 3 "~" H 14450 3850 50  0001 C CNN
	1    14450 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C21FE46
P 13700 4100
F 0 "Q?" H 13891 4146 50  0000 L CNN
F 1 "NPN" H 13891 4055 50  0000 L CNN
F 2 "" H 13900 4200 50  0001 C CNN
F 3 "~" H 13700 4100 50  0001 C CNN
	1    13700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 4300 13800 4350
Wire Wire Line
	13800 4350 14550 4350
Wire Wire Line
	13800 3850 14250 3850
Wire Wire Line
	14550 3650 14550 3100
$Comp
L pspice:R R0805
U 1 1 5C21FE53
P 13800 3500
F 0 "R0805" H 13900 3450 50  0000 L CNN
F 1 "1K" H 13900 3550 50  0000 L CNN
F 2 "" H 13800 3500 50  0001 C CNN
F 3 "~" H 13800 3500 50  0001 C CNN
	1    13800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C21FE5C
P 14300 3100
F 0 "#PWR?" H 14300 2950 50  0001 C CNN
F 1 "+12V" H 14315 3273 50  0000 C CNN
F 2 "" H 14300 3100 50  0001 C CNN
F 3 "" H 14300 3100 50  0001 C CNN
	1    14300 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	13800 3100 13800 3250
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C22EA59
P 14450 5250
F 0 "Q?" H 14655 5296 50  0000 L CNN
F 1 "IRLML6344" H 14655 5205 50  0000 L CNN
F 2 "" H 14650 5350 50  0001 C CNN
F 3 "~" H 14450 5250 50  0001 C CNN
	1    14450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 5700 13800 5750
Wire Wire Line
	13800 5750 14550 5750
Wire Wire Line
	14550 5450 14550 5750
Wire Wire Line
	13800 5250 14250 5250
Wire Wire Line
	14550 5050 14550 4500
$Comp
L pspice:R R0805
U 1 1 5C22EA6D
P 13800 4900
F 0 "R0805" H 13900 4850 50  0000 L CNN
F 1 "1K" H 13900 4950 50  0000 L CNN
F 2 "" H 13800 4900 50  0001 C CNN
F 3 "~" H 13800 4900 50  0001 C CNN
	1    13800 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C22EA76
P 14300 4500
F 0 "#PWR?" H 14300 4350 50  0001 C CNN
F 1 "+12V" H 14315 4673 50  0000 C CNN
F 2 "" H 14300 4500 50  0001 C CNN
F 3 "" H 14300 4500 50  0001 C CNN
	1    14300 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	13800 4500 13800 4650
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C23513E
P 14450 6650
F 0 "Q?" H 14655 6696 50  0000 L CNN
F 1 "IRLML6344" H 14655 6605 50  0000 L CNN
F 2 "" H 14650 6750 50  0001 C CNN
F 3 "~" H 14450 6650 50  0001 C CNN
	1    14450 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C235145
P 13700 6900
F 0 "Q?" H 13891 6946 50  0000 L CNN
F 1 "NPN" H 13891 6855 50  0000 L CNN
F 2 "" H 13900 7000 50  0001 C CNN
F 3 "~" H 13700 6900 50  0001 C CNN
	1    13700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 7100 13800 7150
Wire Wire Line
	13800 7150 14550 7150
Wire Wire Line
	14550 6850 14550 7150
Wire Wire Line
	13800 6650 14250 6650
Wire Wire Line
	14550 6450 14550 5900
$Comp
L pspice:R R0805
U 1 1 5C235152
P 13800 6300
F 0 "R0805" H 13900 6250 50  0000 L CNN
F 1 "1K" H 13900 6350 50  0000 L CNN
F 2 "" H 13800 6300 50  0001 C CNN
F 3 "~" H 13800 6300 50  0001 C CNN
	1    13800 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C23515B
P 14300 5900
F 0 "#PWR?" H 14300 5750 50  0001 C CNN
F 1 "+12V" H 14315 6073 50  0000 C CNN
F 2 "" H 14300 5900 50  0001 C CNN
F 3 "" H 14300 5900 50  0001 C CNN
	1    14300 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	13800 5900 13800 6050
Wire Wire Line
	13800 5900 14300 5900
Wire Wire Line
	13800 4500 14300 4500
Wire Wire Line
	13800 3100 14300 3100
Wire Wire Line
	15300 1800 15100 1800
Wire Wire Line
	15100 1800 15100 3100
Wire Wire Line
	15100 3100 14550 3100
Wire Wire Line
	15300 1900 15150 1900
Wire Wire Line
	15150 1900 15150 4500
Wire Wire Line
	15300 2000 15200 2000
Wire Wire Line
	15200 5900 14550 5900
Wire Wire Line
	15200 2000 15200 5900
Wire Wire Line
	14550 1700 15300 1700
Wire Wire Line
	14550 2950 14650 2950
Wire Wire Line
	14550 4500 15150 4500
$Comp
L power:GND #PWR?
U 1 1 5C31D8F9
P 14650 7250
F 0 "#PWR?" H 14650 7000 50  0001 C CNN
F 1 "GND" H 14655 7077 50  0000 C CNN
F 2 "" H 14650 7250 50  0001 C CNN
F 3 "" H 14650 7250 50  0001 C CNN
	1    14650 7250
	1    0    0    -1  
$EndComp
Connection ~ 13800 6650
Wire Wire Line
	13800 6650 13800 6550
Wire Wire Line
	13800 6700 13800 6650
Connection ~ 13800 5250
Wire Wire Line
	13800 5250 13800 5150
Wire Wire Line
	13800 5300 13800 5250
Connection ~ 13800 3850
Wire Wire Line
	13800 3850 13800 3750
Wire Wire Line
	13800 3900 13800 3850
Connection ~ 13800 2450
Wire Wire Line
	13800 2450 13800 2350
Wire Wire Line
	13800 2500 13800 2450
Connection ~ 950  850 
Connection ~ 1000 850 
Wire Wire Line
	1000 850  1150 850 
Text Notes 15250 1700 0    50   ~ 0
R
Text Notes 15250 1800 0    50   ~ 0
G
Text Notes 15250 1900 0    50   ~ 0
B
Text Notes 15250 2000 0    50   ~ 0
W
Wire Wire Line
	14650 2950 14650 4350
Wire Wire Line
	14550 4050 14550 4350
Wire Wire Line
	14550 4350 14650 4350
Connection ~ 14550 4350
Connection ~ 14650 4350
Wire Wire Line
	14650 4350 14650 5750
Wire Wire Line
	14550 7150 14650 7150
Connection ~ 14550 7150
Connection ~ 14650 7150
Wire Wire Line
	14650 7150 14650 7250
Wire Wire Line
	14550 5750 14650 5750
Connection ~ 14550 5750
Connection ~ 14650 5750
Wire Wire Line
	14650 5750 14650 7150
Wire Wire Line
	13500 2700 13000 2700
Wire Wire Line
	13500 4100 13050 4100
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C22EA60
P 13700 5500
F 0 "Q?" H 13891 5546 50  0000 L CNN
F 1 "NPN" H 13891 5455 50  0000 L CNN
F 2 "" H 13900 5600 50  0001 C CNN
F 3 "~" H 13700 5500 50  0001 C CNN
	1    13700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 5500 13050 5500
Wire Wire Line
	13500 6900 13000 6900
Text Notes 13000 2650 0    50   ~ 0
Pin 15
Text Notes 13050 4050 0    50   ~ 0
Pin 1
Text Notes 13050 5450 0    50   ~ 0
Pin 2
Text Notes 13000 6850 0    50   ~ 0
Pin 3
Connection ~ 14550 2950
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C41A8A2
P 20650 1600
F 0 "J?" H 20730 1642 50  0000 L CNN
F 1 "Led_Strip_Connector" H 20730 1551 50  0000 L CNN
F 2 "" H 20650 1600 50  0001 C CNN
F 3 "~" H 20650 1600 50  0001 C CNN
	1    20650 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C41A8A9
P 19550 2250
F 0 "Q?" H 19755 2296 50  0000 L CNN
F 1 "IRLML6344" H 19755 2205 50  0000 L CNN
F 2 "" H 19750 2350 50  0001 C CNN
F 3 "~" H 19550 2250 50  0001 C CNN
	1    19550 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C41A8B0
P 18800 2500
F 0 "Q?" H 18991 2546 50  0000 L CNN
F 1 "NPN" H 18991 2455 50  0000 L CNN
F 2 "" H 19000 2600 50  0001 C CNN
F 3 "~" H 18800 2500 50  0001 C CNN
	1    18800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	18900 2700 18900 2750
Wire Wire Line
	18900 2750 19650 2750
Wire Wire Line
	19650 2450 19650 2750
Wire Wire Line
	18900 2250 19350 2250
Wire Wire Line
	19650 2050 19650 1500
$Comp
L pspice:R R?
U 1 1 5C41A8BC
P 18900 1900
F 0 "R?" H 19000 1850 50  0000 L CNN
F 1 "1K" H 19000 1950 50  0000 L CNN
F 2 "" H 18900 1900 50  0001 C CNN
F 3 "~" H 18900 1900 50  0001 C CNN
	1    18900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C41A8C3
P 19400 1500
F 0 "#PWR?" H 19400 1350 50  0001 C CNN
F 1 "+12V" H 19415 1673 50  0000 C CNN
F 2 "" H 19400 1500 50  0001 C CNN
F 3 "" H 19400 1500 50  0001 C CNN
	1    19400 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	18900 1500 19400 1500
Wire Wire Line
	20300 1400 20300 1300
$Comp
L power:+12V #PWR?
U 1 1 5C41A8CC
P 20300 1300
F 0 "#PWR?" H 20300 1150 50  0001 C CNN
F 1 "+12V" H 20315 1473 50  0000 C CNN
F 2 "" H 20300 1300 50  0001 C CNN
F 3 "" H 20300 1300 50  0001 C CNN
	1    20300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	18900 1500 18900 1650
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C41A8D3
P 19550 3650
F 0 "Q?" H 19755 3696 50  0000 L CNN
F 1 "IRLML6344" H 19755 3605 50  0000 L CNN
F 2 "" H 19750 3750 50  0001 C CNN
F 3 "~" H 19550 3650 50  0001 C CNN
	1    19550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C41A8DA
P 18800 3900
F 0 "Q?" H 18991 3946 50  0000 L CNN
F 1 "NPN" H 18991 3855 50  0000 L CNN
F 2 "" H 19000 4000 50  0001 C CNN
F 3 "~" H 18800 3900 50  0001 C CNN
	1    18800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	18900 4100 18900 4150
Wire Wire Line
	18900 4150 19650 4150
Wire Wire Line
	18900 3650 19350 3650
Wire Wire Line
	19650 3450 19650 2900
$Comp
L pspice:R R?
U 1 1 5C41A8E5
P 18900 3300
F 0 "R?" H 19000 3250 50  0000 L CNN
F 1 "1K" H 19000 3350 50  0000 L CNN
F 2 "" H 18900 3300 50  0001 C CNN
F 3 "~" H 18900 3300 50  0001 C CNN
	1    18900 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C41A8EC
P 19400 2900
F 0 "#PWR?" H 19400 2750 50  0001 C CNN
F 1 "+12V" H 19415 3073 50  0000 C CNN
F 2 "" H 19400 2900 50  0001 C CNN
F 3 "" H 19400 2900 50  0001 C CNN
	1    19400 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	18900 2900 18900 3050
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C41A8F3
P 19550 5050
F 0 "Q?" H 19755 5096 50  0000 L CNN
F 1 "IRLML6344" H 19755 5005 50  0000 L CNN
F 2 "" H 19750 5150 50  0001 C CNN
F 3 "~" H 19550 5050 50  0001 C CNN
	1    19550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	18900 5500 18900 5550
Wire Wire Line
	18900 5550 19650 5550
Wire Wire Line
	19650 5250 19650 5550
Wire Wire Line
	18900 5050 19350 5050
Wire Wire Line
	19650 4850 19650 4300
$Comp
L pspice:R R?
U 1 1 5C41A8FF
P 18900 4700
F 0 "R?" H 19000 4650 50  0000 L CNN
F 1 "1K" H 19000 4750 50  0000 L CNN
F 2 "" H 18900 4700 50  0001 C CNN
F 3 "~" H 18900 4700 50  0001 C CNN
	1    18900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C41A906
P 19400 4300
F 0 "#PWR?" H 19400 4150 50  0001 C CNN
F 1 "+12V" H 19415 4473 50  0000 C CNN
F 2 "" H 19400 4300 50  0001 C CNN
F 3 "" H 19400 4300 50  0001 C CNN
	1    19400 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	18900 4300 18900 4450
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C41A90D
P 19550 6450
F 0 "Q?" H 19755 6496 50  0000 L CNN
F 1 "IRLML6344" H 19755 6405 50  0000 L CNN
F 2 "" H 19750 6550 50  0001 C CNN
F 3 "~" H 19550 6450 50  0001 C CNN
	1    19550 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C41A914
P 18800 6700
F 0 "Q?" H 18991 6746 50  0000 L CNN
F 1 "NPN" H 18991 6655 50  0000 L CNN
F 2 "" H 19000 6800 50  0001 C CNN
F 3 "~" H 18800 6700 50  0001 C CNN
	1    18800 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	18900 6900 18900 6950
Wire Wire Line
	18900 6950 19650 6950
Wire Wire Line
	19650 6650 19650 6950
Wire Wire Line
	18900 6450 19350 6450
Wire Wire Line
	19650 6250 19650 5700
$Comp
L pspice:R R?
U 1 1 5C41A920
P 18900 6100
F 0 "R?" H 19000 6050 50  0000 L CNN
F 1 "1K" H 19000 6150 50  0000 L CNN
F 2 "" H 18900 6100 50  0001 C CNN
F 3 "~" H 18900 6100 50  0001 C CNN
	1    18900 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5C41A927
P 19400 5700
F 0 "#PWR?" H 19400 5550 50  0001 C CNN
F 1 "+12V" H 19415 5873 50  0000 C CNN
F 2 "" H 19400 5700 50  0001 C CNN
F 3 "" H 19400 5700 50  0001 C CNN
	1    19400 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	18900 5700 18900 5850
Wire Wire Line
	18900 5700 19400 5700
Wire Wire Line
	18900 4300 19400 4300
Wire Wire Line
	18900 2900 19400 2900
Wire Wire Line
	20200 1600 20200 2900
Wire Wire Line
	20200 2900 19650 2900
Wire Wire Line
	20250 1700 20250 4300
Wire Wire Line
	20300 5700 19650 5700
Wire Wire Line
	20300 1800 20300 5700
Wire Wire Line
	19650 2750 19750 2750
Wire Wire Line
	19650 4300 20250 4300
$Comp
L power:GND #PWR?
U 1 1 5C41A93C
P 19750 7050
F 0 "#PWR?" H 19750 6800 50  0001 C CNN
F 1 "GND" H 19755 6877 50  0000 C CNN
F 2 "" H 19750 7050 50  0001 C CNN
F 3 "" H 19750 7050 50  0001 C CNN
	1    19750 7050
	1    0    0    -1  
$EndComp
Connection ~ 18900 6450
Wire Wire Line
	18900 6450 18900 6350
Wire Wire Line
	18900 6500 18900 6450
Connection ~ 18900 5050
Wire Wire Line
	18900 5050 18900 4950
Wire Wire Line
	18900 5100 18900 5050
Connection ~ 18900 3650
Wire Wire Line
	18900 3650 18900 3550
Wire Wire Line
	18900 3700 18900 3650
Connection ~ 18900 2250
Wire Wire Line
	18900 2250 18900 2150
Wire Wire Line
	18900 2300 18900 2250
Wire Wire Line
	19750 2750 19750 4150
Wire Wire Line
	19650 3850 19650 4150
Wire Wire Line
	19650 4150 19750 4150
Connection ~ 19650 4150
Connection ~ 19750 4150
Wire Wire Line
	19750 4150 19750 5550
Wire Wire Line
	19650 6950 19750 6950
Connection ~ 19650 6950
Connection ~ 19750 6950
Wire Wire Line
	19750 6950 19750 7050
Wire Wire Line
	19650 5550 19750 5550
Connection ~ 19650 5550
Connection ~ 19750 5550
Wire Wire Line
	19750 5550 19750 6950
Wire Wire Line
	18600 2500 18100 2500
Wire Wire Line
	18600 3900 18150 3900
$Comp
L Device:Q_NPN_CEB Q?
U 1 1 5C41A962
P 18800 5300
F 0 "Q?" H 18991 5346 50  0000 L CNN
F 1 "NPN" H 18991 5255 50  0000 L CNN
F 2 "" H 19000 5400 50  0001 C CNN
F 3 "~" H 18800 5300 50  0001 C CNN
	1    18800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	18600 5300 18150 5300
Wire Wire Line
	18600 6700 18100 6700
Text Notes 18100 2450 0    50   ~ 0
Pin 15
Text Notes 18150 3850 0    50   ~ 0
Pin 1
Text Notes 18150 5250 0    50   ~ 0
Pin 2
Text Notes 18100 6650 0    50   ~ 0
Pin 3
Connection ~ 19650 2750
Text Notes 20300 1500 0    50   ~ 0
V_01
Text Notes 20300 1600 0    50   ~ 0
V_02
Text Notes 20300 1700 0    50   ~ 0
V_03
Text Notes 20300 1800 0    50   ~ 0
V_04
Wire Wire Line
	20300 1400 20450 1400
Wire Wire Line
	19650 1500 20450 1500
Wire Wire Line
	20200 1600 20450 1600
Wire Wire Line
	20250 1700 20450 1700
Wire Wire Line
	20300 1800 20450 1800
Text Notes 14250 1200 0    50   ~ 0
LED STRIP
Text Notes 19400 1250 0    50   ~ 0
VALVES
$EndSCHEMATC
