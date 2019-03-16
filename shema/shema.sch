EESchema Schematic File Version 4
LIBS:shema-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C113410
P 3200 10300
F 0 "J1" H 3120 10517 50  0000 C CNN
F 1 "Power In" H 3120 10426 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Vertical" H 3200 10300 50  0001 C CNN
F 3 "~" H 3200 10300 50  0001 C CNN
	1    3200 10300
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR018
U 1 1 5C11353F
P 4600 10250
F 0 "#PWR018" H 4600 10100 50  0001 C CNN
F 1 "+12V" H 4615 10423 50  0000 C CNN
F 2 "" H 4600 10250 50  0001 C CNN
F 3 "" H 4600 10250 50  0001 C CNN
	1    4600 10250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C11356A
P 3600 10550
F 0 "#PWR010" H 3600 10300 50  0001 C CNN
F 1 "GND" H 3605 10377 50  0000 C CNN
F 2 "" H 3600 10550 50  0001 C CNN
F 3 "" H 3600 10550 50  0001 C CNN
	1    3600 10550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 10400 3600 10550
Wire Wire Line
	3600 10400 3400 10400
Wire Wire Line
	3600 10300 3600 10200
$Comp
L Transistor_FET:IRLML6402 Q1
U 1 1 5C113770
P 4100 10400
F 0 "Q1" V 4443 10400 50  0000 C CNN
F 1 "IRLML6402" V 4352 10400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 4300 10325 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 4100 10400 50  0001 L CNN
	1    4100 10400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 10300 3900 10300
Connection ~ 3600 10300
Wire Wire Line
	3600 10400 3900 10400
Wire Wire Line
	3900 10400 3900 10600
Wire Wire Line
	3900 10600 4100 10600
Connection ~ 3600 10400
$Comp
L power:+12P #PWR09
U 1 1 5C11386E
P 3600 10200
F 0 "#PWR09" H 3600 10050 50  0001 C CNN
F 1 "+12P" H 3615 10373 50  0000 C CNN
F 2 "" H 3600 10200 50  0001 C CNN
F 3 "" H 3600 10200 50  0001 C CNN
	1    3600 10200
	1    0    0    -1  
$EndComp
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 5C1139D2
P 2050 8550
F 0 "U1" H 2050 9637 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 2050 9531 60  0000 C CNN
F 2 "ESP8266:NodeMCU1.0(12-E)" H 2000 7550 60  0000 C CNN
F 3 "" H 1450 7700 60  0000 C CNN
	1    2050 8550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 5C113B0B
P 900 9250
F 0 "#PWR03" H 900 9100 50  0001 C CNN
F 1 "+12V" V 915 9378 50  0000 L CNN
F 2 "" H 900 9250 50  0001 C CNN
F 3 "" H 900 9250 50  0001 C CNN
	1    900  9250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C113B43
P 900 9150
F 0 "#PWR02" H 900 8900 50  0001 C CNN
F 1 "GND" V 905 9022 50  0000 R CNN
F 2 "" H 900 9150 50  0001 C CNN
F 3 "" H 900 9150 50  0001 C CNN
	1    900  9150
	0    1    1    0   
$EndComp
Wire Wire Line
	900  9250 1250 9250
Wire Wire Line
	900  9150 1250 9150
$Comp
L power:+3V3 #PWR01
U 1 1 5C113CBF
P 900 8850
F 0 "#PWR01" H 900 8700 50  0001 C CNN
F 1 "+3V3" V 915 8978 50  0000 L CNN
F 2 "" H 900 8850 50  0001 C CNN
F 3 "" H 900 8850 50  0001 C CNN
	1    900  8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 8850 900  8850
$Comp
L 74xx:74HC595 U4
U 1 1 5C114093
P 4150 7500
F 0 "U4" H 4400 8150 50  0000 C CNN
F 1 "74HC595" H 4400 8050 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 4150 7500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 7500 50  0001 C CNN
	1    4150 7500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 5C114333
P 4150 5450
F 0 "U3" H 4350 6100 50  0000 C CNN
F 1 "74HC595" H 4350 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 4150 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 5450 50  0001 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5C11437A
P 4150 3400
F 0 "U2" H 4350 4050 50  0000 C CNN
F 1 "74HC595" H 4350 3950 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_5.3x10.2mm_P1.27mm" H 4150 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5C114641
P 4150 6800
F 0 "#PWR016" H 4150 6650 50  0001 C CNN
F 1 "+3V3" H 4165 6973 50  0000 C CNN
F 2 "" H 4150 6800 50  0001 C CNN
F 3 "" H 4150 6800 50  0001 C CNN
	1    4150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6900 4150 6850
$Comp
L Device:C C3
U 1 1 5C114955
P 3900 6850
F 0 "C3" V 3648 6850 50  0000 C CNN
F 1 "100nF" V 3739 6850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 6700 50  0001 C CNN
F 3 "~" H 3900 6850 50  0001 C CNN
	1    3900 6850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C114B22
P 3650 6850
F 0 "#PWR011" H 3650 6600 50  0001 C CNN
F 1 "GND" V 3655 6722 50  0000 R CNN
F 2 "" H 3650 6850 50  0001 C CNN
F 3 "" H 3650 6850 50  0001 C CNN
	1    3650 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 6850 3750 6850
$Comp
L power:GND #PWR017
U 1 1 5C114CC3
P 4150 8250
F 0 "#PWR017" H 4150 8000 50  0001 C CNN
F 1 "GND" H 4155 8077 50  0000 C CNN
F 2 "" H 4150 8250 50  0001 C CNN
F 3 "" H 4150 8250 50  0001 C CNN
	1    4150 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 8250 4150 8200
$Comp
L power:+3V3 #PWR014
U 1 1 5C115C7B
P 4150 4750
F 0 "#PWR014" H 4150 4600 50  0001 C CNN
F 1 "+3V3" H 4165 4923 50  0000 C CNN
F 2 "" H 4150 4750 50  0001 C CNN
F 3 "" H 4150 4750 50  0001 C CNN
	1    4150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4750 4150 4800
$Comp
L Device:C C2
U 1 1 5C116441
P 3900 4800
F 0 "C2" V 4150 4750 50  0000 L CNN
F 1 "100nF" V 4050 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 4650 50  0001 C CNN
F 3 "~" H 3900 4800 50  0001 C CNN
	1    3900 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C1168FD
P 3600 4800
F 0 "#PWR08" H 3600 4550 50  0001 C CNN
F 1 "GND" V 3605 4672 50  0000 R CNN
F 2 "" H 3600 4800 50  0001 C CNN
F 3 "" H 3600 4800 50  0001 C CNN
	1    3600 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C1169F4
P 4150 6200
F 0 "#PWR015" H 4150 5950 50  0001 C CNN
F 1 "GND" H 4155 6027 50  0000 C CNN
F 2 "" H 4150 6200 50  0001 C CNN
F 3 "" H 4150 6200 50  0001 C CNN
	1    4150 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 5C1173B3
P 4150 2700
F 0 "#PWR012" H 4150 2550 50  0001 C CNN
F 1 "+3V3" H 4165 2873 50  0000 C CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C1176E7
P 3900 2750
F 0 "C1" V 3648 2750 50  0000 C CNN
F 1 "100nF" V 3739 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 2600 50  0001 C CNN
F 3 "~" H 3900 2750 50  0001 C CNN
	1    3900 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C117ACE
P 3600 2750
F 0 "#PWR07" H 3600 2500 50  0001 C CNN
F 1 "GND" V 3605 2622 50  0000 R CNN
F 2 "" H 3600 2750 50  0001 C CNN
F 3 "" H 3600 2750 50  0001 C CNN
	1    3600 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C117CD7
P 4150 4150
F 0 "#PWR013" H 4150 3900 50  0001 C CNN
F 1 "GND" H 4155 3977 50  0000 C CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6850 4150 6850
Connection ~ 4150 6850
Wire Wire Line
	4150 6850 4150 6800
$Comp
L power:GND #PWR06
U 1 1 5C11D437
P 3550 7700
F 0 "#PWR06" H 3550 7450 50  0001 C CNN
F 1 "GND" V 3555 7572 50  0000 R CNN
F 2 "" H 3550 7700 50  0001 C CNN
F 3 "" H 3550 7700 50  0001 C CNN
	1    3550 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 7700 3750 7700
$Comp
L power:GND #PWR05
U 1 1 5C120892
P 3450 5650
F 0 "#PWR05" H 3450 5400 50  0001 C CNN
F 1 "GND" V 3455 5522 50  0000 R CNN
F 2 "" H 3450 5650 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
	1    3450 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4800 3750 4800
Wire Wire Line
	4050 4800 4150 4800
Connection ~ 4150 4800
Wire Wire Line
	4150 4800 4150 4850
Wire Wire Line
	3450 5650 3750 5650
Wire Wire Line
	4150 6150 4150 6200
Wire Wire Line
	4150 2700 4150 2750
Wire Wire Line
	4050 2750 4150 2750
Wire Wire Line
	4150 2750 4150 2800
Wire Wire Line
	4150 4100 4150 4150
$Comp
L power:GND #PWR04
U 1 1 5C12471E
P 3400 3600
F 0 "#PWR04" H 3400 3350 50  0001 C CNN
F 1 "GND" V 3405 3472 50  0000 R CNN
F 2 "" H 3400 3600 50  0001 C CNN
F 3 "" H 3400 3600 50  0001 C CNN
	1    3400 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3600 3750 3600
Wire Wire Line
	4550 3900 4550 4450
Wire Wire Line
	4550 4450 3250 4450
Wire Wire Line
	3250 4450 3250 5050
Wire Wire Line
	3250 5050 3750 5050
Wire Wire Line
	4550 5950 4550 6500
Wire Wire Line
	4550 6500 3250 6500
Wire Wire Line
	3250 7100 3750 7100
Wire Wire Line
	3250 6500 3250 7100
Wire Wire Line
	3750 3500 3100 3500
Wire Wire Line
	3750 5550 3100 5550
Wire Wire Line
	3750 7600 3100 7600
Wire Wire Line
	3750 3300 3050 3300
Wire Wire Line
	3050 3300 3050 5350
Wire Wire Line
	3750 7400 3050 7400
Wire Wire Line
	3750 5350 3050 5350
Wire Wire Line
	3750 3200 3000 3200
Wire Wire Line
	3000 3200 3000 5250
Wire Wire Line
	3750 7300 3000 7300
Wire Wire Line
	3750 5250 3000 5250
NoConn ~ 4550 8000
Text Label 5200 3100 2    50   ~ 0
Led_Red
Text Label 5200 3200 2    50   ~ 0
Led_Green
Text Label 5200 3300 2    50   ~ 0
Led_Blue
Text Label 5200 3400 2    50   ~ 0
Led_White
Text Label 5200 3500 2    50   ~ 0
Water_Pump
Text Label 5200 5150 2    50   ~ 0
Valve_01
Text Label 5200 5250 2    50   ~ 0
Valve_02
Text Label 5200 5350 2    50   ~ 0
Valve_03
Text Label 5200 5450 2    50   ~ 0
Valve_04
Text Label 5200 3600 2    50   ~ 0
Heater_01
Text Label 5200 3700 2    50   ~ 0
Heater_02
Text Label 5200 5550 2    50   ~ 0
Cooling
Text Label 5200 5650 2    50   ~ 0
Wave_Maker
Text Label 800  7850 0    50   ~ 0
PH_Sensor
Text Label 3400 8550 2    50   ~ 0
Flowmeter
Text Label 17900 9050 0    50   ~ 0
Underwater_Camera_02
Text Label 17900 8900 0    50   ~ 0
Underwater_Camera_01?
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 5C174C36
P 15100 1100
F 0 "J7" H 15180 1142 50  0000 L CNN
F 1 "Led_Strip_Connector" H 15180 1051 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 15100 1100 50  0001 C CNN
F 3 "~" H 15100 1100 50  0001 C CNN
	1    15100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 2200 13400 2250
Wire Wire Line
	13400 2250 14150 2250
Wire Wire Line
	14150 1950 14150 2250
Wire Wire Line
	13400 1750 13850 1750
Wire Wire Line
	14150 1550 14150 1000
$Comp
L pspice:R R6
U 1 1 5C1E11B7
P 13400 1400
F 0 "R6" H 13500 1350 50  0000 L CNN
F 1 "1K" H 13500 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 13400 1400 50  0001 C CNN
F 3 "~" H 13400 1400 50  0001 C CNN
	1    13400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 5C1EB799
P 13900 1000
F 0 "#PWR029" H 13900 850 50  0001 C CNN
F 1 "+12V" H 13915 1173 50  0000 C CNN
F 2 "" H 13900 1000 50  0001 C CNN
F 3 "" H 13900 1000 50  0001 C CNN
	1    13900 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 1000 13900 1000
Wire Wire Line
	14900 900  14800 900 
Wire Wire Line
	14800 900  14800 800 
$Comp
L power:+12V #PWR034
U 1 1 5C214F62
P 14800 800
F 0 "#PWR034" H 14800 650 50  0001 C CNN
F 1 "+12V" H 14815 973 50  0000 C CNN
F 2 "" H 14800 800 50  0001 C CNN
F 3 "" H 14800 800 50  0001 C CNN
	1    14800 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 1000 13400 1150
Wire Wire Line
	13400 3600 13400 3650
Wire Wire Line
	13400 3650 14150 3650
Wire Wire Line
	13400 3150 13850 3150
Wire Wire Line
	14150 2950 14150 2400
$Comp
L pspice:R R7
U 1 1 5C21FE53
P 13400 2800
F 0 "R7" H 13500 2750 50  0000 L CNN
F 1 "1K" H 13500 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 13400 2800 50  0001 C CNN
F 3 "~" H 13400 2800 50  0001 C CNN
	1    13400 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR030
U 1 1 5C21FE5C
P 13900 2400
F 0 "#PWR030" H 13900 2250 50  0001 C CNN
F 1 "+12V" H 13915 2573 50  0000 C CNN
F 2 "" H 13900 2400 50  0001 C CNN
F 3 "" H 13900 2400 50  0001 C CNN
	1    13900 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 2400 13400 2550
Wire Wire Line
	13400 5000 13400 5050
Wire Wire Line
	13400 5050 14150 5050
Wire Wire Line
	14150 4750 14150 5050
Wire Wire Line
	13400 4550 13850 4550
Wire Wire Line
	14150 4350 14150 3800
$Comp
L pspice:R R8
U 1 1 5C22EA6D
P 13400 4200
F 0 "R8" H 13500 4150 50  0000 L CNN
F 1 "1K" H 13500 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 13400 4200 50  0001 C CNN
F 3 "~" H 13400 4200 50  0001 C CNN
	1    13400 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR031
U 1 1 5C22EA76
P 13900 3800
F 0 "#PWR031" H 13900 3650 50  0001 C CNN
F 1 "+12V" H 13915 3973 50  0000 C CNN
F 2 "" H 13900 3800 50  0001 C CNN
F 3 "" H 13900 3800 50  0001 C CNN
	1    13900 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 3800 13400 3950
Wire Wire Line
	13400 6400 13400 6450
Wire Wire Line
	13400 6450 14150 6450
Wire Wire Line
	14150 6150 14150 6450
Wire Wire Line
	13400 5950 13850 5950
Wire Wire Line
	14150 5750 14150 5200
$Comp
L pspice:R R9
U 1 1 5C235152
P 13400 5600
F 0 "R9" H 13500 5550 50  0000 L CNN
F 1 "1K" H 13500 5650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 13400 5600 50  0001 C CNN
F 3 "~" H 13400 5600 50  0001 C CNN
	1    13400 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR032
U 1 1 5C23515B
P 13900 5200
F 0 "#PWR032" H 13900 5050 50  0001 C CNN
F 1 "+12V" H 13915 5373 50  0000 C CNN
F 2 "" H 13900 5200 50  0001 C CNN
F 3 "" H 13900 5200 50  0001 C CNN
	1    13900 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	13400 5200 13400 5350
Wire Wire Line
	13400 5200 13900 5200
Wire Wire Line
	13400 3800 13900 3800
Wire Wire Line
	13400 2400 13900 2400
Wire Wire Line
	14900 1100 14700 1100
Wire Wire Line
	14700 1100 14700 2400
Wire Wire Line
	14700 2400 14150 2400
Wire Wire Line
	14900 1200 14750 1200
Wire Wire Line
	14750 1200 14750 3800
Wire Wire Line
	14900 1300 14800 1300
Wire Wire Line
	14800 5200 14150 5200
Wire Wire Line
	14150 1000 14900 1000
Wire Wire Line
	14150 2250 14250 2250
Wire Wire Line
	14150 3800 14750 3800
$Comp
L power:GND #PWR033
U 1 1 5C31D8F9
P 14250 6550
F 0 "#PWR033" H 14250 6300 50  0001 C CNN
F 1 "GND" H 14255 6377 50  0000 C CNN
F 2 "" H 14250 6550 50  0001 C CNN
F 3 "" H 14250 6550 50  0001 C CNN
	1    14250 6550
	1    0    0    -1  
$EndComp
Text Notes 14850 1000 0    50   ~ 0
R
Text Notes 14850 1100 0    50   ~ 0
G
Text Notes 14850 1200 0    50   ~ 0
B
Text Notes 14850 1300 0    50   ~ 0
W
Wire Wire Line
	14250 2250 14250 3650
Wire Wire Line
	14150 3350 14150 3650
Wire Wire Line
	14150 3650 14250 3650
Connection ~ 14150 3650
Connection ~ 14250 3650
Wire Wire Line
	14250 3650 14250 5050
Wire Wire Line
	14150 6450 14250 6450
Connection ~ 14150 6450
Connection ~ 14250 6450
Wire Wire Line
	14250 6450 14250 6550
Wire Wire Line
	14150 5050 14250 5050
Connection ~ 14150 5050
Connection ~ 14250 5050
Wire Wire Line
	14250 5050 14250 6450
Wire Wire Line
	13100 2000 12600 2000
Connection ~ 14150 2250
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5C41A8A2
P 11350 1350
F 0 "J5" H 11430 1392 50  0000 L CNN
F 1 "Valves_Connector" H 11430 1301 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-05A_1x05_P2.54mm_Vertical" H 11350 1350 50  0001 C CNN
F 3 "~" H 11350 1350 50  0001 C CNN
	1    11350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2450 9600 2500
Wire Wire Line
	9600 2500 10350 2500
Wire Wire Line
	10350 2200 10350 2500
Wire Wire Line
	9600 2000 10050 2000
Wire Wire Line
	10350 1800 10350 1250
$Comp
L pspice:R R1
U 1 1 5C41A8BC
P 9600 1650
F 0 "R1" H 9700 1600 50  0000 L CNN
F 1 "1K" H 9700 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9600 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR021
U 1 1 5C41A8C3
P 10100 1250
F 0 "#PWR021" H 10100 1100 50  0001 C CNN
F 1 "+12V" H 10115 1423 50  0000 C CNN
F 2 "" H 10100 1250 50  0001 C CNN
F 3 "" H 10100 1250 50  0001 C CNN
	1    10100 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 1250 10100 1250
Wire Wire Line
	11000 1150 11000 1050
$Comp
L power:+12V #PWR026
U 1 1 5C41A8CC
P 11000 1050
F 0 "#PWR026" H 11000 900 50  0001 C CNN
F 1 "+12V" H 11015 1223 50  0000 C CNN
F 2 "" H 11000 1050 50  0001 C CNN
F 3 "" H 11000 1050 50  0001 C CNN
	1    11000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1250 9600 1400
Wire Wire Line
	9600 3850 9600 3900
Wire Wire Line
	9600 3900 10350 3900
Wire Wire Line
	9600 3400 10050 3400
Wire Wire Line
	10350 3200 10350 2650
$Comp
L pspice:R R2
U 1 1 5C41A8E5
P 9600 3050
F 0 "R2" H 9700 3000 50  0000 L CNN
F 1 "1K" H 9700 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9600 3050 50  0001 C CNN
F 3 "~" H 9600 3050 50  0001 C CNN
	1    9600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 5C41A8EC
P 10100 2650
F 0 "#PWR022" H 10100 2500 50  0001 C CNN
F 1 "+12V" H 10115 2823 50  0000 C CNN
F 2 "" H 10100 2650 50  0001 C CNN
F 3 "" H 10100 2650 50  0001 C CNN
	1    10100 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 2650 9600 2800
Wire Wire Line
	9600 5250 9600 5300
Wire Wire Line
	9600 5300 10350 5300
Wire Wire Line
	10350 5000 10350 5300
Wire Wire Line
	9600 4800 10050 4800
Wire Wire Line
	10350 4600 10350 4050
$Comp
L pspice:R R3
U 1 1 5C41A8FF
P 9600 4450
F 0 "R3" H 9700 4400 50  0000 L CNN
F 1 "1K" H 9700 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9600 4450 50  0001 C CNN
F 3 "~" H 9600 4450 50  0001 C CNN
	1    9600 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR023
U 1 1 5C41A906
P 10100 4050
F 0 "#PWR023" H 10100 3900 50  0001 C CNN
F 1 "+12V" H 10115 4223 50  0000 C CNN
F 2 "" H 10100 4050 50  0001 C CNN
F 3 "" H 10100 4050 50  0001 C CNN
	1    10100 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 4050 9600 4200
Wire Wire Line
	9600 6650 9600 6700
Wire Wire Line
	9600 6700 10350 6700
Wire Wire Line
	10350 6400 10350 6700
Wire Wire Line
	9600 6200 10050 6200
Wire Wire Line
	10350 6000 10350 5450
$Comp
L pspice:R R4
U 1 1 5C41A920
P 9600 5850
F 0 "R4" H 9700 5800 50  0000 L CNN
F 1 "1K" H 9700 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9600 5850 50  0001 C CNN
F 3 "~" H 9600 5850 50  0001 C CNN
	1    9600 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR024
U 1 1 5C41A927
P 10100 5450
F 0 "#PWR024" H 10100 5300 50  0001 C CNN
F 1 "+12V" H 10115 5623 50  0000 C CNN
F 2 "" H 10100 5450 50  0001 C CNN
F 3 "" H 10100 5450 50  0001 C CNN
	1    10100 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 5450 9600 5600
Wire Wire Line
	9600 5450 10100 5450
Wire Wire Line
	9600 4050 10100 4050
Wire Wire Line
	9600 2650 10100 2650
Wire Wire Line
	10900 1350 10900 2650
Wire Wire Line
	10900 2650 10350 2650
Wire Wire Line
	10950 1450 10950 4050
Wire Wire Line
	11000 5450 10350 5450
Wire Wire Line
	11000 1550 11000 5450
Wire Wire Line
	10350 2500 10450 2500
Wire Wire Line
	10350 4050 10950 4050
$Comp
L power:GND #PWR025
U 1 1 5C41A93C
P 10450 6800
F 0 "#PWR025" H 10450 6550 50  0001 C CNN
F 1 "GND" H 10455 6627 50  0000 C CNN
F 2 "" H 10450 6800 50  0001 C CNN
F 3 "" H 10450 6800 50  0001 C CNN
	1    10450 6800
	1    0    0    -1  
$EndComp
Connection ~ 9600 6200
Wire Wire Line
	9600 6200 9600 6100
Wire Wire Line
	9600 6250 9600 6200
Connection ~ 9600 4800
Wire Wire Line
	9600 4800 9600 4700
Wire Wire Line
	9600 4850 9600 4800
Connection ~ 9600 3400
Wire Wire Line
	9600 3400 9600 3300
Wire Wire Line
	9600 3450 9600 3400
Connection ~ 9600 2000
Wire Wire Line
	9600 2000 9600 1900
Wire Wire Line
	9600 2050 9600 2000
Wire Wire Line
	10450 2500 10450 3900
Wire Wire Line
	10350 3600 10350 3900
Wire Wire Line
	10350 3900 10450 3900
Connection ~ 10350 3900
Connection ~ 10450 3900
Wire Wire Line
	10450 3900 10450 5300
Wire Wire Line
	10350 6700 10450 6700
Connection ~ 10350 6700
Connection ~ 10450 6700
Wire Wire Line
	10450 6700 10450 6800
Wire Wire Line
	10350 5300 10450 5300
Connection ~ 10350 5300
Connection ~ 10450 5300
Wire Wire Line
	10450 5300 10450 6700
Wire Wire Line
	9300 2250 8800 2250
Wire Wire Line
	9300 3650 8850 3650
Wire Wire Line
	9300 5050 8850 5050
Wire Wire Line
	9300 6450 8800 6450
Connection ~ 10350 2500
Text Notes 11000 1250 0    50   ~ 0
V_01
Text Notes 11000 1350 0    50   ~ 0
V_02
Text Notes 11000 1450 0    50   ~ 0
V_03
Text Notes 11000 1550 0    50   ~ 0
V_04
Wire Wire Line
	11000 1150 11150 1150
Wire Wire Line
	10350 1250 11150 1250
Wire Wire Line
	10900 1350 11150 1350
Wire Wire Line
	10950 1450 11150 1450
Wire Wire Line
	11000 1550 11150 1550
Text Notes 13950 750  0    50   ~ 0
LED_STRIP
Text Notes 10100 1000 0    50   ~ 0
VALVES
Wire Wire Line
	13400 1800 13400 1750
Wire Wire Line
	13400 1750 13400 1650
Connection ~ 13400 1750
Wire Wire Line
	13400 3200 13400 3150
Wire Wire Line
	13400 3150 13400 3050
Connection ~ 13400 3150
Wire Wire Line
	13400 4600 13400 4550
Wire Wire Line
	13400 4550 13400 4450
Connection ~ 13400 4550
Wire Wire Line
	13400 6000 13400 5950
Wire Wire Line
	13400 5950 13400 5850
Connection ~ 13400 5950
Text Label 3400 8250 2    50   ~ 0
Temp_sensor
Wire Wire Line
	2850 8250 3400 8250
Wire Wire Line
	2850 8550 3400 8550
Text Label 12600 2000 0    50   ~ 0
Led_Red
Wire Wire Line
	4300 10300 4600 10300
Wire Wire Line
	4600 10300 4600 10250
Wire Wire Line
	3400 10300 3600 10300
Wire Wire Line
	2850 8650 3400 8650
Wire Wire Line
	2850 8750 3400 8750
Wire Wire Line
	2850 8850 3400 8850
Wire Wire Line
	800  8150 1250 8150
Text Label 800  8150 0    50   ~ 0
us_trig
Text Label 3400 8650 2    50   ~ 0
us_01
Wire Wire Line
	4550 3100 5200 3100
Wire Wire Line
	4550 3200 5200 3200
Wire Wire Line
	4550 3300 5200 3300
Wire Wire Line
	4550 3400 5200 3400
Wire Wire Line
	4550 3500 5200 3500
Wire Wire Line
	4550 3600 5200 3600
Wire Wire Line
	4550 3700 5200 3700
Wire Wire Line
	4550 5250 5200 5250
Wire Wire Line
	4550 5150 5200 5150
Wire Wire Line
	4550 5350 5200 5350
Wire Wire Line
	4550 5450 5200 5450
Text Label 12600 3400 0    50   ~ 0
Led_Green
Wire Wire Line
	13100 3400 12600 3400
Text Label 12600 4800 0    50   ~ 0
Led_Blue
Wire Wire Line
	12600 4800 13100 4800
Wire Wire Line
	13100 6200 12600 6200
Text Label 12600 6200 0    50   ~ 0
Led_White
Text Label 8800 2250 0    50   ~ 0
Valve_01
Text Label 8850 3650 0    50   ~ 0
Valve_02
Text Label 8850 5050 0    50   ~ 0
Valve_03
Text Label 8800 6450 0    50   ~ 0
Valve_04
Text Label 3400 8750 2    50   ~ 0
us_02
Text Label 3400 8850 2    50   ~ 0
us_03
Wire Wire Line
	800  7850 1250 7850
Wire Wire Line
	3100 3500 3100 5550
Wire Wire Line
	3600 2750 3750 2750
Wire Wire Line
	3750 3000 2950 3000
Connection ~ 4150 2750
Wire Wire Line
	3100 5550 3100 7600
Connection ~ 3100 5550
Connection ~ 3100 7600
Connection ~ 3050 7400
Connection ~ 3050 5350
Wire Wire Line
	3050 5350 3050 7400
Connection ~ 3000 7300
Connection ~ 3000 5250
Wire Wire Line
	3000 5250 3000 7300
Wire Wire Line
	3000 7300 3000 7950
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5CC0AEAA
P 12500 8750
F 0 "J6" H 12579 8792 50  0000 L CNN
F 1 "Temp_Sensor_Connector" H 12579 8701 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 12500 8750 50  0001 C CNN
F 3 "~" H 12500 8750 50  0001 C CNN
	1    12500 8750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5CC542BB
P 12000 8500
F 0 "#PWR028" H 12000 8250 50  0001 C CNN
F 1 "GND" H 12005 8327 50  0000 C CNN
F 2 "" H 12000 8500 50  0001 C CNN
F 3 "" H 12000 8500 50  0001 C CNN
	1    12000 8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	12000 8650 12000 8500
Wire Wire Line
	12000 8650 12300 8650
Text Notes 12150 8650 0    50   ~ 0
GND
Text Notes 12200 8750 0    50   ~ 0
DQ
Text Notes 12150 8850 0    50   ~ 0
Vdd
$Comp
L Device:R R5
U 1 1 5CCD1D51
P 11900 8950
F 0 "R5" H 11970 8996 50  0000 L CNN
F 1 "4.7k" H 11970 8905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11830 8950 50  0001 C CNN
F 3 "~" H 11900 8950 50  0001 C CNN
	1    11900 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 9100 11900 9100
Connection ~ 11900 9100
Wire Wire Line
	11900 9100 11800 9100
Wire Wire Line
	11900 8800 11900 8750
$Comp
L power:+3.3V #PWR027
U 1 1 5CD0CE30
P 11800 9100
F 0 "#PWR027" H 11800 8950 50  0001 C CNN
F 1 "+3.3V" H 11815 9273 50  0000 C CNN
F 2 "" H 11800 9100 50  0001 C CNN
F 3 "" H 11800 9100 50  0001 C CNN
	1    11800 9100
	-1   0    0    1   
$EndComp
Text Label 11350 8750 0    50   ~ 0
Temp_sensor
Wire Wire Line
	12300 8850 12150 8850
Wire Wire Line
	12150 8850 12150 9100
Connection ~ 11900 8750
Wire Wire Line
	11900 8750 12300 8750
Wire Wire Line
	11350 8750 11900 8750
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5CDD27B7
P 9700 8250
F 0 "J2" H 9779 8242 50  0000 L CNN
F 1 "US_01_Connector" H 9779 8151 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 9700 8250 50  0001 C CNN
F 3 "~" H 9700 8250 50  0001 C CNN
	1    9700 8250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5CDD2849
P 9700 8750
F 0 "J3" H 9779 8742 50  0000 L CNN
F 1 "US_02_Connector" H 9779 8651 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 9700 8750 50  0001 C CNN
F 3 "~" H 9700 8750 50  0001 C CNN
	1    9700 8750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5CDD28B3
P 9700 9250
F 0 "J4" H 9779 9242 50  0000 L CNN
F 1 "US_03_Connector" H 9779 9151 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 9700 9250 50  0001 C CNN
F 3 "~" H 9700 9250 50  0001 C CNN
	1    9700 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8450 9250 8450
Wire Wire Line
	9250 8450 9250 8950
Wire Wire Line
	9500 8950 9250 8950
Connection ~ 9250 8950
Wire Wire Line
	9250 8950 9250 9450
Wire Wire Line
	9500 9450 9250 9450
$Comp
L power:GND #PWR020
U 1 1 5CE24EF3
P 9250 9550
F 0 "#PWR020" H 9250 9300 50  0001 C CNN
F 1 "GND" H 9255 9377 50  0000 C CNN
F 2 "" H 9250 9550 50  0001 C CNN
F 3 "" H 9250 9550 50  0001 C CNN
	1    9250 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 9450 9250 9550
Connection ~ 9250 9450
Wire Wire Line
	9150 9150 9150 8650
Wire Wire Line
	9150 9150 9500 9150
Wire Wire Line
	9150 8150 9500 8150
Connection ~ 9150 8150
Wire Wire Line
	9150 8150 9150 8050
Wire Wire Line
	9500 8650 9150 8650
Connection ~ 9150 8650
Wire Wire Line
	9150 8650 9150 8150
$Comp
L power:+3.3V #PWR019
U 1 1 5CE6204A
P 9150 8050
F 0 "#PWR019" H 9150 7900 50  0001 C CNN
F 1 "+3.3V" H 9165 8223 50  0000 C CNN
F 2 "" H 9150 8050 50  0001 C CNN
F 3 "" H 9150 8050 50  0001 C CNN
	1    9150 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 8250 9050 8250
Wire Wire Line
	9050 8250 9050 8750
Wire Wire Line
	9500 8750 9050 8750
Connection ~ 9050 8750
Wire Wire Line
	9050 8750 9050 9250
Wire Wire Line
	9500 9250 9050 9250
Connection ~ 9050 9250
Wire Wire Line
	9050 9550 8600 9550
Wire Wire Line
	9050 9250 9050 9550
Wire Wire Line
	8600 9350 9500 9350
Wire Wire Line
	9500 8850 8600 8850
Wire Wire Line
	9500 8350 8600 8350
Text Notes 9350 8150 0    50   ~ 0
Vcc
Text Notes 9350 8650 0    50   ~ 0
Vcc
Text Notes 9350 9150 0    50   ~ 0
Vcc
Text Notes 9350 8250 0    50   ~ 0
Trig
Text Notes 9350 8750 0    50   ~ 0
Trig
Text Notes 9350 9250 0    50   ~ 0
Trig
Text Notes 9300 8350 0    50   ~ 0
Echo
Text Notes 9300 8850 0    50   ~ 0
Echo
Text Notes 9300 9350 0    50   ~ 0
Echo
Text Notes 9350 9450 0    50   ~ 0
GND
Text Notes 9350 8950 0    50   ~ 0
GND
Text Notes 9350 8450 0    50   ~ 0
GND
Text Label 8600 9550 0    50   ~ 0
us_trig
Text Label 8600 8350 0    50   ~ 0
us_01
Text Label 8600 8850 0    50   ~ 0
us_02
Text Label 8600 9350 0    50   ~ 0
us_03
$Comp
L Device:Q_NPN_BEC Q11
U 1 1 5C89CB9C
P 13300 2000
F 0 "Q11" H 13491 2046 50  0000 L CNN
F 1 "Q_NPN_BEC" H 13491 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13500 2100 50  0001 C CNN
F 3 "~" H 13300 2000 50  0001 C CNN
	1    13300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q12
U 1 1 5C89CCD5
P 13300 3400
F 0 "Q12" H 13491 3446 50  0000 L CNN
F 1 "Q_NPN_BEC" H 13491 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13500 3500 50  0001 C CNN
F 3 "~" H 13300 3400 50  0001 C CNN
	1    13300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q13
U 1 1 5C89DAA1
P 13300 4800
F 0 "Q13" H 13491 4846 50  0000 L CNN
F 1 "Q_NPN_BEC" H 13491 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13500 4900 50  0001 C CNN
F 3 "~" H 13300 4800 50  0001 C CNN
	1    13300 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q14
U 1 1 5C8ACF8A
P 13300 6200
F 0 "Q14" H 13491 6246 50  0000 L CNN
F 1 "Q_NPN_BEC" H 13491 6155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13500 6300 50  0001 C CNN
F 3 "~" H 13300 6200 50  0001 C CNN
	1    13300 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 5C8ADFEA
P 9500 2250
F 0 "Q2" H 9691 2296 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9691 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 2350 50  0001 C CNN
F 3 "~" H 9500 2250 50  0001 C CNN
	1    9500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q3
U 1 1 5C8AE2DF
P 9500 3650
F 0 "Q3" H 9691 3696 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9691 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 3750 50  0001 C CNN
F 3 "~" H 9500 3650 50  0001 C CNN
	1    9500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q5
U 1 1 5C8AE514
P 9500 6450
F 0 "Q5" H 9691 6496 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9691 6405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 6550 50  0001 C CNN
F 3 "~" H 9500 6450 50  0001 C CNN
	1    9500 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q4
U 1 1 5C8AE72B
P 9500 5050
F 0 "Q4" H 9691 5096 50  0000 L CNN
F 1 "Q_NPN_BEC" H 9691 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 5150 50  0001 C CNN
F 3 "~" H 9500 5050 50  0001 C CNN
	1    9500 5050
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q15
U 1 1 5C8B9D41
P 14050 1750
F 0 "Q15" H 14256 1796 50  0000 L CNN
F 1 "IRLML6344" H 14256 1705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 14250 1675 50  0001 L CIN
F 3 "" H 14050 1750 50  0001 L CNN
	1    14050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 1300 14800 5200
$Comp
L IRLML6344:IRLML6344TRPBFTR Q16
U 1 1 5C8D16A1
P 14050 3150
F 0 "Q16" H 14256 3196 50  0000 L CNN
F 1 "IRLML6344" H 14256 3105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 14250 3075 50  0001 L CIN
F 3 "" H 14050 3150 50  0001 L CNN
	1    14050 3150
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q18
U 1 1 5C8D1FD5
P 14050 5950
F 0 "Q18" H 14256 5996 50  0000 L CNN
F 1 "IRLML6344" H 14256 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 14250 5875 50  0001 L CIN
F 3 "" H 14050 5950 50  0001 L CNN
	1    14050 5950
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q17
U 1 1 5C8D2062
P 14050 4550
F 0 "Q17" H 14256 4596 50  0000 L CNN
F 1 "IRLML6344" H 14256 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 14250 4475 50  0001 L CIN
F 3 "" H 14050 4550 50  0001 L CNN
	1    14050 4550
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q6
U 1 1 5C8D56D0
P 10250 2000
F 0 "Q6" H 10456 2046 50  0000 L CNN
F 1 "IRLML6344" H 10456 1955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 10450 1925 50  0001 L CIN
F 3 "" H 10250 2000 50  0001 L CNN
	1    10250 2000
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q7
U 1 1 5C8D8F1A
P 10250 3400
F 0 "Q7" H 10456 3446 50  0000 L CNN
F 1 "IRLML6344" H 10456 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 10450 3325 50  0001 L CIN
F 3 "" H 10250 3400 50  0001 L CNN
	1    10250 3400
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q8
U 1 1 5C8D9954
P 10250 4800
F 0 "Q8" H 10456 4846 50  0000 L CNN
F 1 "IRLML6344" H 10456 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 10450 4725 50  0001 L CIN
F 3 "" H 10250 4800 50  0001 L CNN
	1    10250 4800
	1    0    0    -1  
$EndComp
$Comp
L IRLML6344:IRLML6344TRPBFTR Q9
U 1 1 5C91FFC3
P 10250 6200
F 0 "Q9" H 10456 6246 50  0000 L CNN
F 1 "IRLML6344" H 10456 6155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 10450 6125 50  0001 L CIN
F 3 "" H 10250 6200 50  0001 L CNN
	1    10250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5550 5200 5550
Wire Wire Line
	3000 7950 2850 7950
Wire Wire Line
	3050 7850 2850 7850
Wire Wire Line
	3050 7400 3050 7850
Wire Wire Line
	3100 8050 2850 8050
Wire Wire Line
	3100 7600 3100 8050
Wire Wire Line
	2950 3000 2950 8150
Wire Wire Line
	2950 8150 2850 8150
Wire Wire Line
	4550 5650 5200 5650
$EndSCHEMATC
