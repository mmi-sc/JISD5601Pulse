EESchema Schematic File Version 2
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
P 7700 3600
F 0 "C1" H 7710 3670 50  0000 L CNN
F 1 "1u" H 7710 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7700 3600 60  0001 C CNN
F 3 "" H 7700 3600 60  0000 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR01
U 1 1 554DA4AC
P 7700 3150
F 0 "#PWR01" H 7700 3000 50  0001 C CNN
F 1 "+12V" H 7700 3290 50  0000 C CNN
F 2 "" H 7700 3150 60  0000 C CNN
F 3 "" H 7700 3150 60  0000 C CNN
	1    7700 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 554DA817
P 8300 4300
F 0 "#PWR02" H 8300 4050 50  0001 C CNN
F 1 "GND" H 8300 4150 50  0000 C CNN
F 2 "" H 8300 4300 60  0000 C CNN
F 3 "" H 8300 4300 60  0000 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_SGD Q1
U 1 1 554F19F4
P 3250 3450
F 0 "Q1" H 3550 3500 50  0000 R CNN
F 1 "RUE002N02" H 3750 3350 50  0000 R CNN
F 2 "favorites:EMT3" H 3450 3550 29  0001 C CNN
F 3 "" H 3250 3450 60  0000 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 554F1FE8
P 2950 3100
F 0 "R1" V 3030 3100 50  0000 C CNN
F 1 "1k" V 2950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2880 3100 30  0001 C CNN
F 3 "" H 2950 3100 30  0000 C CNN
	1    2950 3100
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 554F2D71
P 2950 3650
F 0 "R2" V 3030 3650 50  0000 C CNN
F 1 "1M" V 2950 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2880 3650 30  0001 C CNN
F 3 "" H 2950 3650 30  0000 C CNN
	1    2950 3650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 554F7940
P 4800 2500
F 0 "SW3" H 4950 2610 50  0000 C CNN
F 1 "DOWN" H 4800 2420 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 4800 2500 60  0001 C CNN
F 3 "" H 4800 2500 60  0000 C CNN
	1    4800 2500
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 554F79EC
P 4400 2500
F 0 "SW2" H 4550 2610 50  0000 C CNN
F 1 "UP" H 4400 2420 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 4400 2500 60  0001 C CNN
F 3 "" H 4400 2500 60  0000 C CNN
	1    4400 2500
	0    1    1    0   
$EndComp
$Comp
L LPC810 U1
U 1 1 5559CC94
P 5800 2000
F 0 "U1" H 5800 2400 50  0000 C CNN
F 1 "LPC810" H 5800 2300 50  0000 C CNN
F 2 "Sockets_DIP:DIP-8__300" H 5800 1750 50  0001 C CNN
F 3 "DOCUMENTATION" H 5800 1700 50  0001 C CNN
	1    5800 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5559FDDD
P 4050 2500
F 0 "SW1" H 4200 2610 50  0000 C CNN
F 1 "RESET" H 4050 2420 50  0000 C CNN
F 2 "Capacitors_Elko_ThroughHole:Elko_vert_11.2x6.3mm_RM2.5" H 4050 2500 60  0001 C CNN
F 3 "" H 4050 2500 60  0000 C CNN
	1    4050 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 555A0A3C
P 4800 4050
F 0 "#PWR03" H 4800 3800 50  0001 C CNN
F 1 "GND" H 4800 3900 50  0000 C CNN
F 2 "" H 4800 4050 60  0000 C CNN
F 3 "" H 4800 4050 60  0000 C CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 555A13C5
P 7900 900
F 0 "#PWR04" H 7900 750 50  0001 C CNN
F 1 "VDD" H 7900 1050 50  0000 C CNN
F 2 "" H 7900 900 60  0000 C CNN
F 3 "" H 7900 900 60  0000 C CNN
	1    7900 900 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR05
U 1 1 555A148D
P 8800 3250
F 0 "#PWR05" H 8800 3100 50  0001 C CNN
F 1 "VDD" H 8800 3400 50  0000 C CNN
F 2 "" H 8800 3250 60  0000 C CNN
F 3 "" H 8800 3250 60  0000 C CNN
	1    8800 3250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 555A43B7
P 7350 3200
F 0 "#FLG06" H 7350 3295 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 3380 50  0000 C CNN
F 2 "" H 7350 3200 60  0000 C CNN
F 3 "" H 7350 3200 60  0000 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 555A7C85
P 6950 2650
F 0 "#PWR07" H 6950 2400 50  0001 C CNN
F 1 "GND" H 6950 2500 50  0000 C CNN
F 2 "" H 6950 2650 60  0000 C CNN
F 3 "" H 6950 2650 60  0000 C CNN
	1    6950 2650
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 555A9F16
P 2250 3450
F 0 "D1" H 2250 3550 50  0000 C CNN
F 1 "LED" H 2250 3350 50  0000 C CNN
F 2 "favorites:LED-1206" H 2250 3450 60  0001 C CNN
F 3 "" H 2250 3450 60  0000 C CNN
	1    2250 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 555AA04E
P 2250 2900
F 0 "R3" V 2330 2900 50  0000 C CNN
F 1 "680" V 2250 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2180 2900 30  0001 C CNN
F 3 "" H 2250 2900 30  0000 C CNN
	1    2250 2900
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 555AAE89
P 8050 4200
F 0 "#FLG08" H 8050 4295 50  0001 C CNN
F 1 "PWR_FLAG" H 8050 4380 50  0000 C CNN
F 2 "" H 8050 4200 60  0000 C CNN
F 3 "" H 8050 4200 60  0000 C CNN
	1    8050 4200
	1    0    0    -1  
$EndComp
Text Label 3500 3200 0    60   ~ 0
PULSE
$Comp
L CONN_01X05 P2
U 1 1 5559F1FE
P 5000 950
F 0 "P2" H 5000 1250 50  0000 C CNN
F 1 "CONN_01X05" V 5100 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 5000 950 60  0001 C CNN
F 3 "" H 5000 950 60  0000 C CNN
	1    5000 950 
	0    -1   -1   0   
$EndComp
$Comp
L NJU7223DL1-33 U3
U 1 1 555B31B5
P 8300 3450
F 0 "U3" H 8000 3700 40  0000 C CNN
F 1 "NJU7223DL1-33" H 8300 3650 40  0000 C CNN
F 2 "favorites:TO-252" H 8300 3550 35  0000 C CIN
F 3 "" H 8300 3450 60  0000 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 555B4B24
P 6700 2350
F 0 "C3" H 6710 2420 50  0000 L CNN
F 1 "1u" H 6710 2270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6700 2350 60  0001 C CNN
F 3 "" H 6700 2350 60  0000 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 555E9DB4
P 5300 3200
F 0 "P1" H 5300 3400 50  0000 C CNN
F 1 "CONN_01X03" V 5400 3200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03" H 5300 3200 60  0001 C CNN
F 3 "" H 5300 3200 60  0000 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 555EA485
P 5100 2900
F 0 "#PWR09" H 5100 2750 50  0001 C CNN
F 1 "+12V" H 5100 3040 50  0000 C CNN
F 2 "" H 5100 2900 60  0000 C CNN
F 3 "" H 5100 2900 60  0000 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
$Comp
L AQM0802A-RN-GBW U2
U 1 1 563FF79A
P 9250 1550
F 0 "U2" H 9250 1000 50  0000 C CNN
F 1 "AQM0802A-RN-GBW" H 9250 2200 50  0000 C CNN
F 2 "pulser:AQM0802A-RN-GBW" H 9250 1000 50  0001 C CNN
F 3 "DOCUMENTATION" H 9250 900 50  0001 C CNN
	1    9250 1550
	1    0    0    -1  
$EndComp
Text Label 7050 1850 0    60   ~ 0
SCL
Text Label 6750 2150 0    60   ~ 0
SDA
$Comp
L C_Small C5
U 1 1 564021C2
P 8300 1350
F 0 "C5" H 8310 1420 50  0000 L CNN
F 1 "1u" H 8310 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8300 1350 60  0001 C CNN
F 3 "" H 8300 1350 60  0000 C CNN
	1    8300 1350
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5640246F
P 8100 1250
F 0 "C4" H 8110 1320 50  0000 L CNN
F 1 "1u" H 8110 1170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8100 1250 60  0001 C CNN
F 3 "" H 8100 1250 60  0000 C CNN
	1    8100 1250
	0    1    1    0   
$EndComp
Connection ~ 8300 3850
Wire Wire Line
	8300 3750 8300 4300
Wire Wire Line
	8800 3850 8800 3700
Wire Wire Line
	7700 3850 8800 3850
Wire Wire Line
	7700 3700 7700 3850
Connection ~ 8800 3400
Wire Wire Line
	8800 3250 8800 3500
Wire Wire Line
	8750 3400 8800 3400
Connection ~ 7700 3400
Wire Wire Line
	7700 3400 7850 3400
Wire Wire Line
	7700 3150 7700 3500
Wire Wire Line
	2950 3450 3050 3450
Wire Wire Line
	3350 3200 3350 3250
Wire Wire Line
	3350 3900 3350 3650
Wire Wire Line
	2950 3250 2950 3500
Wire Wire Line
	2950 3800 2950 3900
Wire Wire Line
	4800 3900 2250 3900
Connection ~ 3350 3900
Connection ~ 2950 3450
Wire Wire Line
	4800 2200 4800 2150
Wire Wire Line
	4800 2150 5000 2150
Wire Wire Line
	4400 2200 4400 2050
Wire Wire Line
	4400 2050 5000 2050
Wire Wire Line
	4050 2200 4050 1850
Wire Wire Line
	4050 1850 5000 1850
Wire Wire Line
	5100 3200 3350 3200
Wire Wire Line
	2950 2950 2950 1950
Wire Wire Line
	2250 1950 5000 1950
Wire Wire Line
	4050 2800 4050 3000
Wire Wire Line
	4050 3000 4800 3000
Wire Wire Line
	4800 2800 4800 4050
Wire Wire Line
	4400 2800 4400 3000
Connection ~ 4400 3000
Connection ~ 4800 3000
Wire Wire Line
	6950 1950 6600 1950
Wire Wire Line
	6950 1350 6950 2650
Wire Wire Line
	7900 2050 7900 900 
Wire Wire Line
	6600 2050 7900 2050
Wire Wire Line
	6600 1850 8650 1850
Wire Wire Line
	7900 1550 8650 1550
Wire Wire Line
	6600 2150 8400 2150
Wire Wire Line
	7350 3200 7350 3250
Wire Wire Line
	7350 3250 7700 3250
Connection ~ 7700 3250
Connection ~ 4800 3900
Wire Wire Line
	2250 2750 2250 1950
Connection ~ 2950 1950
Wire Wire Line
	2250 3250 2250 3050
Wire Wire Line
	2250 3900 2250 3650
Connection ~ 2950 3900
Wire Wire Line
	8050 4200 8300 4200
Connection ~ 8300 4200
Wire Wire Line
	4800 1150 4800 1850
Connection ~ 4800 1850
Wire Wire Line
	4900 1150 4900 1950
Connection ~ 4900 1950
Wire Wire Line
	5000 1150 5000 1550
Wire Wire Line
	5000 1550 7150 1550
Wire Wire Line
	5100 1150 5100 1450
Wire Wire Line
	5100 1450 6800 1450
Wire Wire Line
	6800 1450 6800 1850
Connection ~ 6800 1850
Wire Wire Line
	5200 1150 5200 1350
Wire Wire Line
	5200 1350 6950 1350
Connection ~ 6950 1950
Wire Wire Line
	7150 1550 7150 2150
Connection ~ 7150 2150
Wire Wire Line
	6700 2450 6700 2550
Wire Wire Line
	6700 2550 6950 2550
Connection ~ 6950 2550
Wire Wire Line
	6700 2250 6700 2050
Connection ~ 6700 2050
Wire Wire Line
	5100 3300 4800 3300
Connection ~ 4800 3300
Wire Wire Line
	5100 3100 5100 2900
Wire Wire Line
	6950 1650 8650 1650
Wire Wire Line
	8400 1750 8650 1750
Wire Wire Line
	8650 1250 8200 1250
Wire Wire Line
	7350 1250 8000 1250
Wire Wire Line
	8400 1350 8650 1350
Wire Wire Line
	8200 1350 8200 1350
Wire Wire Line
	8200 1350 8200 1450
Wire Wire Line
	8200 1450 8650 1450
Wire Wire Line
	8650 1950 8500 1950
Wire Wire Line
	8500 1950 8500 1550
Connection ~ 8500 1550
Wire Wire Line
	8400 2150 8400 1750
Connection ~ 7900 1550
Connection ~ 6950 1650
Connection ~ 7900 1250
$Comp
L R R4
U 1 1 56404CAB
P 7350 1450
F 0 "R4" V 7430 1450 50  0000 C CNN
F 1 "10k" V 7350 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7280 1450 30  0001 C CNN
F 3 "" H 7350 1450 30  0000 C CNN
	1    7350 1450
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 56404FAB
P 7550 1450
F 0 "R5" V 7630 1450 50  0000 C CNN
F 1 "10k" V 7550 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7480 1450 30  0001 C CNN
F 3 "" H 7550 1450 30  0000 C CNN
	1    7550 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 1600 7350 1850
Connection ~ 7350 1850
Wire Wire Line
	7350 1300 7350 1250
Wire Wire Line
	7550 1300 7550 1250
Connection ~ 7550 1250
$Comp
L C_Small C2
U 1 1 56481F6D
P 8800 3600
F 0 "C2" H 8810 3670 50  0000 L CNN
F 1 "1u" H 8810 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8800 3600 60  0001 C CNN
F 3 "" H 8800 3600 60  0000 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
Text Label 4150 1850 0    60   ~ 0
#RST
Text Label 4200 1950 0    60   ~ 0
PIO0_4
Text Label 4500 2050 0    60   ~ 0
PIO0_3
Text Label 4850 2150 0    60   ~ 0
PIO0_2
Text Label 6750 2050 0    60   ~ 0
VDD
Text Label 6700 1950 0    60   ~ 0
VSS
Text Label 4300 3900 0    60   ~ 0
GND
Text Label 2950 3400 0    60   ~ 0
GATE
Text Label 8250 1250 0    60   ~ 0
VOUT
Text Label 8450 1350 0    60   ~ 0
CAP1N
Text Label 8500 1450 0    60   ~ 0
CAP1P
Wire Wire Line
	7550 1600 7550 2150
Connection ~ 7550 2150
$EndSCHEMATC
