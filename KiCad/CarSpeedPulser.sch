EESchema Schematic File Version 2
LIBS:CarSpeedPulser-rescue
LIBS:LPC810
LIBS:NJU7223DL1
LIBS:AQM0802
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:favorites
LIBS:switches
LIBS:CarSpeedPulser-cache
EELAYER 25 0
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
L C_Small C1
U 1 1 554DA48F
P 2000 2500
F 0 "C1" H 2010 2570 50  0000 L CNN
F 1 "1u" H 2010 2420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2000 2500 60  0001 C CNN
F 3 "" H 2000 2500 60  0000 C CNN
	1    2000 2500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 554DA4AC
P 1500 2000
F 0 "#PWR01" H 1500 1850 50  0001 C CNN
F 1 "+12V" H 1500 2140 50  0000 C CNN
F 2 "" H 1500 2000 60  0000 C CNN
F 3 "" H 1500 2000 60  0000 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_SGD Q1
U 1 1 554F19F4
P 4350 3500
F 0 "Q1" H 4650 3550 50  0000 R CNN
F 1 "RUE002N02" H 4850 3400 50  0000 R CNN
F 2 "favorites:EMT3" H 4550 3600 29  0001 C CNN
F 3 "" H 4350 3500 60  0000 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 554F1FE8
P 4050 3150
F 0 "R1" V 4130 3150 50  0000 C CNN
F 1 "1k" V 4050 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3980 3150 30  0001 C CNN
F 3 "" H 4050 3150 30  0000 C CNN
	1    4050 3150
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 554F2D71
P 4050 3700
F 0 "R2" V 4130 3700 50  0000 C CNN
F 1 "1M" V 4050 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3980 3700 30  0001 C CNN
F 3 "" H 4050 3700 30  0000 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 554F7940
P 5900 2550
F 0 "SW3" H 6050 2660 50  0000 C CNN
F 1 "DOWN" H 5900 2470 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 5900 2550 60  0001 C CNN
F 3 "" H 5900 2550 60  0000 C CNN
	1    5900 2550
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 554F79EC
P 5500 2550
F 0 "SW2" H 5650 2660 50  0000 C CNN
F 1 "UP" H 5500 2470 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 5500 2550 60  0001 C CNN
F 3 "" H 5500 2550 60  0000 C CNN
	1    5500 2550
	0    1    1    0   
$EndComp
$Comp
L LPC810 U1
U 1 1 5559CC94
P 6900 2050
F 0 "U1" H 6900 2450 50  0000 C CNN
F 1 "LPC810" H 6900 2350 50  0000 C CNN
F 2 "Sockets_DIP:DIP-8__300" H 6900 1800 50  0001 C CNN
F 3 "DOCUMENTATION" H 6900 1750 50  0001 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5559FDDD
P 5150 2550
F 0 "SW1" H 5300 2660 50  0000 C CNN
F 1 "RESET" H 5150 2470 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 5150 2550 60  0001 C CNN
F 3 "" H 5150 2550 60  0000 C CNN
	1    5150 2550
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR02
U 1 1 555A13C5
P 9000 950
F 0 "#PWR02" H 9000 800 50  0001 C CNN
F 1 "VDD" H 9000 1100 50  0000 C CNN
F 2 "" H 9000 950 60  0000 C CNN
F 3 "" H 9000 950 60  0000 C CNN
	1    9000 950 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 555A148D
P 3100 2150
F 0 "#PWR03" H 3100 2000 50  0001 C CNN
F 1 "VDD" H 3100 2300 50  0000 C CNN
F 2 "" H 3100 2150 60  0000 C CNN
F 3 "" H 3100 2150 60  0000 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 555A43B7
P 1150 2050
F 0 "#FLG04" H 1150 2145 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 2230 50  0000 C CNN
F 2 "" H 1150 2050 60  0000 C CNN
F 3 "" H 1150 2050 60  0000 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 555A9F16
P 3650 3500
F 0 "D1" H 3650 3600 50  0000 C CNN
F 1 "LED" H 3650 3400 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 3650 3500 60  0001 C CNN
F 3 "" H 3650 3500 60  0000 C CNN
	1    3650 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 555AA04E
P 3650 2950
F 0 "R3" V 3730 2950 50  0000 C CNN
F 1 "680" V 3650 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3580 2950 30  0001 C CNN
F 3 "" H 3650 2950 30  0000 C CNN
	1    3650 2950
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 555AAE89
P 2250 3050
F 0 "#FLG05" H 2250 3145 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 3230 50  0000 C CNN
F 2 "" H 2250 3050 60  0000 C CNN
F 3 "" H 2250 3050 60  0000 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
Text Label 5700 3250 0    60   ~ 0
PULSE
$Comp
L Conn_01x05 P2
U 1 1 5559F1FE
P 6100 1000
F 0 "P2" H 6100 1300 50  0000 C CNN
F 1 "CONN_01X05" V 6200 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 6100 1000 60  0001 C CNN
F 3 "" H 6100 1000 60  0000 C CNN
	1    6100 1000
	0    -1   -1   0   
$EndComp
$Comp
L NJU7223DL1-33 U3
U 1 1 555B31B5
P 2600 2350
F 0 "U3" H 2300 2600 40  0000 C CNN
F 1 "NJU7223DL1-33" H 2600 2550 40  0000 C CNN
F 2 "favorites:TO-252" H 2600 2450 35  0001 C CIN
F 3 "" H 2600 2350 60  0000 C CNN
	1    2600 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 555B4B24
P 7800 2400
F 0 "C3" H 7810 2470 50  0000 L CNN
F 1 "1u" H 7810 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7800 2400 60  0001 C CNN
F 3 "" H 7800 2400 60  0000 C CNN
	1    7800 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 P1
U 1 1 555E9DB4
P 6400 3250
F 0 "P1" H 6400 3450 50  0000 C CNN
F 1 "CONN_01X03" V 6500 3250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03" H 6400 3250 60  0001 C CNN
F 3 "" H 6400 3250 60  0000 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR06
U 1 1 555EA485
P 6200 2950
F 0 "#PWR06" H 6200 2800 50  0001 C CNN
F 1 "+12V" H 6200 3090 50  0000 C CNN
F 2 "" H 6200 2950 60  0000 C CNN
F 3 "" H 6200 2950 60  0000 C CNN
	1    6200 2950
	1    0    0    -1  
$EndComp
$Comp
L AQM0802A-RN-GBW U2
U 1 1 563FF79A
P 10350 1600
F 0 "U2" H 10350 1050 50  0000 C CNN
F 1 "AQM0802A-RN-GBW" H 10350 2250 50  0000 C CNN
F 2 "pulser:AQM0802A-RN-GBW" H 10350 1050 50  0001 C CNN
F 3 "DOCUMENTATION" H 10350 950 50  0001 C CNN
	1    10350 1600
	1    0    0    -1  
$EndComp
Text Label 8150 1900 0    60   ~ 0
SCL
Text Label 7850 2200 0    60   ~ 0
SDA
$Comp
L C_Small C5
U 1 1 564021C2
P 9400 1400
F 0 "C5" H 9410 1470 50  0000 L CNN
F 1 "1u" H 9410 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9400 1400 60  0001 C CNN
F 3 "" H 9400 1400 60  0000 C CNN
	1    9400 1400
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5640246F
P 9200 1300
F 0 "C4" H 9210 1370 50  0000 L CNN
F 1 "1u" H 9210 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9200 1300 60  0001 C CNN
F 3 "" H 9200 1300 60  0000 C CNN
	1    9200 1300
	0    1    1    0   
$EndComp
Connection ~ 2600 2750
Wire Wire Line
	2600 2650 2600 4050
Wire Wire Line
	3100 2750 3100 2600
Wire Wire Line
	2000 2750 3100 2750
Wire Wire Line
	2000 2600 2000 2750
Connection ~ 3100 2300
Wire Wire Line
	3100 2150 3100 2400
Wire Wire Line
	3050 2300 3100 2300
Connection ~ 2000 2300
Wire Wire Line
	1900 2300 2150 2300
Wire Wire Line
	1500 2000 1500 2300
Wire Wire Line
	4050 3500 4150 3500
Wire Wire Line
	4450 3250 4450 3300
Wire Wire Line
	4450 3950 4450 3700
Wire Wire Line
	4050 3300 4050 3550
Wire Wire Line
	4050 3950 4050 3850
Wire Wire Line
	8050 3950 2600 3950
Connection ~ 4450 3950
Connection ~ 4050 3500
Wire Wire Line
	5900 2350 5900 2200
Wire Wire Line
	5900 2200 6100 2200
Wire Wire Line
	5500 2350 5500 2100
Wire Wire Line
	5500 2100 6100 2100
Wire Wire Line
	5150 1600 5150 2350
Wire Wire Line
	5150 1900 6100 1900
Wire Wire Line
	4050 3000 4050 2000
Wire Wire Line
	3650 2000 6100 2000
Wire Wire Line
	5150 2750 5150 3050
Wire Wire Line
	5150 3050 5900 3050
Wire Wire Line
	5900 2750 5900 3950
Wire Wire Line
	5500 2750 5500 3050
Connection ~ 5500 3050
Connection ~ 5900 3050
Wire Wire Line
	8050 2000 7700 2000
Wire Wire Line
	8050 1400 8050 3950
Wire Wire Line
	9000 2100 9000 950 
Wire Wire Line
	7700 2100 9000 2100
Wire Wire Line
	7700 1900 9750 1900
Wire Wire Line
	9000 1600 9750 1600
Wire Wire Line
	7700 2200 9500 2200
Wire Wire Line
	1150 2050 1150 2300
Wire Wire Line
	1150 2300 1600 2300
Connection ~ 1500 2300
Connection ~ 5900 3950
Wire Wire Line
	3650 2800 3650 2000
Connection ~ 4050 2000
Wire Wire Line
	3650 3350 3650 3100
Wire Wire Line
	3650 3950 3650 3650
Connection ~ 4050 3950
Connection ~ 2600 3100
Wire Wire Line
	5900 1200 5900 1900
Connection ~ 5900 1900
Wire Wire Line
	6000 1200 6000 2000
Connection ~ 6000 2000
Wire Wire Line
	6100 1200 6100 1600
Wire Wire Line
	6100 1600 8250 1600
Wire Wire Line
	6200 1200 6200 1500
Wire Wire Line
	6200 1500 7900 1500
Wire Wire Line
	7900 1500 7900 1900
Connection ~ 7900 1900
Wire Wire Line
	6300 1200 6300 1400
Wire Wire Line
	4550 1400 5600 1400
Wire Wire Line
	6300 1400 8050 1400
Connection ~ 8050 2000
Wire Wire Line
	8250 1600 8250 2200
Connection ~ 8250 2200
Wire Wire Line
	7800 2500 7800 2600
Wire Wire Line
	7800 2600 8050 2600
Connection ~ 8050 2600
Wire Wire Line
	7800 2300 7800 2100
Connection ~ 7800 2100
Wire Wire Line
	6200 3150 6200 2950
Wire Wire Line
	8050 1700 9750 1700
Wire Wire Line
	9500 1800 9750 1800
Wire Wire Line
	9750 1300 9300 1300
Wire Wire Line
	8450 1300 9100 1300
Wire Wire Line
	9500 1400 9750 1400
Wire Wire Line
	9300 1400 9300 1400
Wire Wire Line
	9300 1400 9300 1500
Wire Wire Line
	9300 1500 9750 1500
Wire Wire Line
	9750 2000 9600 2000
Wire Wire Line
	9600 2000 9600 1600
Connection ~ 9600 1600
Wire Wire Line
	9500 2200 9500 1800
Connection ~ 9000 1600
Connection ~ 8050 1700
Connection ~ 9000 1300
$Comp
L R R4
U 1 1 56404CAB
P 8450 1500
F 0 "R4" V 8530 1500 50  0000 C CNN
F 1 "10k" V 8450 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8380 1500 30  0001 C CNN
F 3 "" H 8450 1500 30  0000 C CNN
	1    8450 1500
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 56404FAB
P 8650 1500
F 0 "R5" V 8730 1500 50  0000 C CNN
F 1 "10k" V 8650 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8580 1500 30  0001 C CNN
F 3 "" H 8650 1500 30  0000 C CNN
	1    8650 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 1650 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1350 8450 1300
Wire Wire Line
	8650 1350 8650 1300
Connection ~ 8650 1300
$Comp
L C_Small C2
U 1 1 56481F6D
P 3100 2500
F 0 "C2" H 3110 2570 50  0000 L CNN
F 1 "1u" H 3110 2420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3100 2500 60  0001 C CNN
F 3 "" H 3100 2500 60  0000 C CNN
	1    3100 2500
	1    0    0    -1  
$EndComp
Text Label 5250 1900 0    60   ~ 0
#RST
Text Label 5300 2000 0    60   ~ 0
PIO0_4
Text Label 5600 2100 0    60   ~ 0
PIO0_3
Text Label 5950 2200 0    60   ~ 0
PIO0_2
Text Label 7850 2100 0    60   ~ 0
VDD
Text Label 7800 2000 0    60   ~ 0
VSS
Text Label 4050 3450 0    60   ~ 0
GATE
Text Label 9350 1300 0    60   ~ 0
VOUT
Text Label 9550 1400 0    60   ~ 0
CAP1N
Text Label 9600 1500 0    60   ~ 0
CAP1P
Wire Wire Line
	8650 1650 8650 2200
Connection ~ 8650 2200
$Comp
L D D2
U 1 1 56A632A2
P 1750 2300
F 0 "D2" H 1750 2400 50  0000 C CNN
F 1 "1N4148W" H 1750 2200 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0000 C CNN
	1    1750 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2000 2400 2000 2300
$Comp
L D D3
U 1 1 56A648ED
P 2600 4200
F 0 "D3" H 2600 4300 50  0000 C CNN
F 1 "1N4148W" H 2600 4100 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 2600 4200 50  0001 C CNN
F 3 "" H 2600 4200 50  0000 C CNN
	1    2600 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3250 6200 3250
Text Label 1950 2300 0    60   ~ 0
Vin
Text Label 4700 3250 0    60   ~ 0
D
Connection ~ 3650 3950
Connection ~ 2600 3950
Wire Wire Line
	2600 4500 2600 4350
Wire Wire Line
	2250 3050 2250 3100
Wire Wire Line
	2250 3100 2600 3100
$Comp
L PWR_FLAG #FLG07
U 1 1 56A6DD49
P 2250 4450
F 0 "#FLG07" H 2250 4545 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 4630 50  0000 C CNN
F 2 "" H 2250 4450 60  0000 C CNN
F 3 "" H 2250 4450 60  0000 C CNN
	1    2250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4450 2250 4500
Wire Wire Line
	2250 4500 6100 4500
Connection ~ 2600 4500
Wire Wire Line
	6100 4500 6100 3350
Wire Wire Line
	6100 3350 6200 3350
$Comp
L BD45231G U4
U 1 1 56A7058F
P 4200 1500
F 0 "U4" H 4200 1750 60  0000 C CNN
F 1 "BD45231G" H 4200 1250 60  0000 C CNN
F 2 "favorites:SSOP5_Handsoldering" H 4200 1500 60  0001 C CNN
F 3 "" H 4200 1500 60  0000 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1600 3850 1600
Wire Wire Line
	3300 1400 3300 3950
Connection ~ 3300 3950
Wire Wire Line
	4550 1600 5150 1600
Connection ~ 5150 1900
Wire Wire Line
	3850 1400 3300 1400
Connection ~ 3300 1600
Wire Wire Line
	3850 1500 3300 1500
Connection ~ 3300 1500
$Comp
L R R6
U 1 1 56A726C3
P 5600 1650
F 0 "R6" V 5680 1650 50  0000 C CNN
F 1 "1M" V 5600 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5530 1650 30  0001 C CNN
F 3 "" H 5600 1650 30  0000 C CNN
	1    5600 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 1400 5600 1500
Wire Wire Line
	5600 1800 5600 1900
Connection ~ 5600 1900
$Comp
L VDD #PWR08
U 1 1 56A733F9
P 4700 1200
F 0 "#PWR08" H 4700 1050 50  0001 C CNN
F 1 "VDD" H 4700 1350 50  0000 C CNN
F 2 "" H 4700 1200 60  0000 C CNN
F 3 "" H 4700 1200 60  0000 C CNN
	1    4700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1200 4700 1400
Connection ~ 4700 1400
$EndSCHEMATC
