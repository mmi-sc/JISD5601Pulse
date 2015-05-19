EESchema Schematic File Version 2
LIBS:LPC810
LIBS:AE-AQM0802
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
LIBS:special
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
L CP_Small C2
U 1 1 554DA473
P 8800 3600
F 0 "C2" H 8810 3670 50  0000 L CNN
F 1 "4.7u" H 8810 3520 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 8800 3600 60  0001 C CNN
F 3 "" H 8800 3600 60  0000 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 554DA48F
P 7700 3600
F 0 "C1" H 7710 3670 50  0000 L CNN
F 1 "0.33u" H 7710 3520 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7700 3600 60  0001 C CNN
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
L Q_NMOS_GDS Q1
U 1 1 554F19F4
P 3250 3450
F 0 "Q1" H 3550 3500 50  0000 R CNN
F 1 "2SK4017" H 3750 3350 50  0000 R CNN
F 2 "Transistors_TO-220:TO-220_Neutral123_Vertical" H 3450 3550 29  0001 C CNN
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
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2880 3100 30  0001 C CNN
F 3 "" H 2950 3100 30  0000 C CNN
	1    2950 3100
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 554F2223
P 3350 2800
F 0 "R3" V 3430 2800 50  0000 C CNN
F 1 "10k" V 3350 2800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3280 2800 30  0001 C CNN
F 3 "" H 3350 2800 30  0000 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 554F2D71
P 2950 3650
F 0 "R2" V 3030 3650 50  0000 C CNN
F 1 "100k" V 2950 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2880 3650 30  0001 C CNN
F 3 "" H 2950 3650 30  0000 C CNN
	1    2950 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 554F32FF
P 4000 3450
F 0 "P1" H 4000 3600 50  0000 C CNN
F 1 "CONN_01X02" V 4100 3450 50  0000 C CNN
F 2 "Connect:AK300-2" H 4000 3450 60  0001 C CNN
F 3 "" H 4000 3450 60  0000 C CNN
	1    4000 3450
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
P 7400 1550
F 0 "#PWR04" H 7400 1400 50  0001 C CNN
F 1 "VDD" H 7400 1700 50  0000 C CNN
F 2 "" H 7400 1550 60  0000 C CNN
F 3 "" H 7400 1550 60  0000 C CNN
	1    7400 1550
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
L AE-AQM0802 U2
U 1 1 555A2C55
P 8200 1850
F 0 "U2" H 8200 1750 50  0000 C CNN
F 1 "AE-AQM0802" H 8200 2200 50  0000 C CNN
F 2 "pulser:AE-AQM0802" H 8200 1500 50  0001 C CNN
F 3 "DOCUMENTATION" H 8200 1400 50  0001 C CNN
	1    8200 1850
	1    0    0    -1  
$EndComp
NoConn ~ 7600 1750
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
	2650 3450 3050 3450
Wire Wire Line
	3350 2950 3350 3250
Wire Wire Line
	3350 2650 3350 2500
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
	3800 3400 3800 3150
Wire Wire Line
	3800 3150 3350 3150
Connection ~ 3350 3150
Wire Wire Line
	3800 3900 3800 3500
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
	6600 1950 6950 1950
Wire Wire Line
	6950 1350 6950 2650
Wire Wire Line
	7400 1550 7400 2050
Wire Wire Line
	7400 2050 6600 2050
Wire Wire Line
	6600 1850 7600 1850
Wire Wire Line
	7600 1650 7400 1650
Connection ~ 7400 1650
Wire Wire Line
	6600 2150 7500 2150
Wire Wire Line
	7500 2150 7500 1950
Wire Wire Line
	7500 1950 7600 1950
Wire Wire Line
	7600 2050 7600 2250
Wire Wire Line
	7600 2250 6950 2250
Wire Wire Line
	7350 3200 7350 3250
Wire Wire Line
	7350 3250 7700 3250
Connection ~ 7700 3250
Connection ~ 4800 3900
Connection ~ 3800 3900
Connection ~ 6950 2250
$Comp
L LED D1
U 1 1 555A9F16
P 2250 3450
F 0 "D1" H 2250 3550 50  0000 C CNN
F 1 "LED" H 2250 3350 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2250 3450 60  0001 C CNN
F 3 "" H 2250 3450 60  0000 C CNN
	1    2250 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 555AA04E
P 2250 2900
F 0 "R4" V 2330 2900 50  0000 C CNN
F 1 "100" V 2250 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2180 2900 30  0001 C CNN
F 3 "" H 2250 2900 30  0000 C CNN
	1    2250 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 2750 2250 1950
Connection ~ 2950 1950
Wire Wire Line
	2250 3250 2250 3050
Wire Wire Line
	2250 3900 2250 3650
Connection ~ 2950 3900
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
Wire Wire Line
	8050 4200 8300 4200
Connection ~ 8300 4200
$Comp
L +12V #PWR09
U 1 1 554F1C57
P 3350 2500
F 0 "#PWR09" H 3350 2350 50  0001 C CNN
F 1 "+12V" H 3350 2640 50  0000 C CNN
F 2 "" H 3350 2500 60  0000 C CNN
F 3 "" H 3350 2500 60  0000 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
Text Label 3600 3150 0    60   ~ 0
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
	5100 1450 7250 1450
Wire Wire Line
	7250 1450 7250 1850
Connection ~ 7250 1850
Wire Wire Line
	5200 1150 5200 1350
Wire Wire Line
	5200 1350 6950 1350
Connection ~ 6950 1950
Wire Wire Line
	7150 1550 7150 2150
Connection ~ 7150 2150
$Comp
L Crystal SP1
U 1 1 555B3095
P 2650 3650
F 0 "SP1" H 2650 3800 50  0000 C CNN
F 1 "PiezoSpk" H 2650 3500 50  0000 C CNN
F 2 "Connect:bornier2" H 2650 3650 60  0001 C CNN
F 3 "" H 2650 3650 60  0000 C CNN
	1    2650 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3800 2650 3900
Connection ~ 2650 3900
Wire Wire Line
	2650 3500 2650 3450
$Comp
L APE8865NL-33-HF-3 U3
U 1 1 555B31B5
P 8300 3450
F 0 "U3" H 8000 3700 40  0000 C CNN
F 1 "XC6202P332TB" H 8300 3650 40  0000 C CNN
F 2 "Housings_TO-92:TO-92_Inline_Wide" H 8300 3550 35  0000 C CIN
F 3 "" H 8300 3450 60  0000 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 555B4B24
P 6700 2350
F 0 "C3" H 6710 2420 50  0000 L CNN
F 1 "0.1u" H 6710 2270 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6700 2350 60  0001 C CNN
F 3 "" H 6700 2350 60  0000 C CNN
	1    6700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2450 6700 2550
Wire Wire Line
	6700 2550 6950 2550
Connection ~ 6950 2550
Wire Wire Line
	6700 2250 6700 2050
Connection ~ 6700 2050
$EndSCHEMATC
