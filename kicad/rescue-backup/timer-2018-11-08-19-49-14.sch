EESchema Schematic File Version 2
LIBS:timer-rescue
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
LIBS:stm8
LIBS:mylibkicad
LIBS:timer-cache
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
L STM8S003F3P IC1
U 1 1 58A70280
P 3800 2900
F 0 "IC1" H 2650 3700 50  0000 L CNN
F 1 "STM8S003F3P" H 2650 3600 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-20_4.4x6.5mm_Pitch0.65mm" H 2650 2100 50  0000 L CIN
F 3 "" H 3750 2500 50  0000 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
$Comp
L CA56-12 AFF1
U 1 1 58A704DC
P 8100 4300
F 0 "AFF1" H 8100 5100 50  0000 C CNN
F 1 "CA56-12" H 8100 5000 50  0000 C CNN
F 2 "myowndevice:indicator_3cif" H 7600 4300 50  0001 C CNN
F 3 "" H 7600 4300 50  0000 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 58A707C0
P 3800 3900
F 0 "#PWR8" H 3800 3650 50  0001 C CNN
F 1 "GND" H 3800 3750 50  0000 C CNN
F 2 "" H 3800 3900 50  0000 C CNN
F 3 "" H 3800 3900 50  0000 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58A707E8
P 2350 3600
F 0 "C1" H 2360 3670 50  0000 L CNN
F 1 "10uf" H 2360 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2350 3600 50  0001 C CNN
F 3 "" H 2350 3600 50  0000 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 58A7080F
P 2350 3800
F 0 "#PWR3" H 2350 3550 50  0001 C CNN
F 1 "GND" H 2350 3650 50  0000 C CNN
F 2 "" H 2350 3800 50  0000 C CNN
F 3 "" H 2350 3800 50  0000 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 58A708AB
P 3950 1800
F 0 "C2" H 3960 1870 50  0000 L CNN
F 1 "1u" H 3960 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0000 C CNN
	1    3950 1800
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 58A708E2
P 3950 2000
F 0 "C3" H 3960 2070 50  0000 L CNN
F 1 "100n" H 3960 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3950 2000 50  0001 C CNN
F 3 "" H 3950 2000 50  0000 C CNN
	1    3950 2000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR9
U 1 1 58A7099D
P 4200 1800
F 0 "#PWR9" H 4200 1550 50  0001 C CNN
F 1 "GND" H 4200 1650 50  0000 C CNN
F 2 "" H 4200 1800 50  0000 C CNN
F 3 "" H 4200 1800 50  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 58A71F27
P 5700 1700
F 0 "P3" H 5700 1850 50  0000 C CNN
F 1 "kn1" V 5800 1700 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm_h8mm" H 5700 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0000 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 58A71FA1
P 5250 1650
F 0 "#PWR10" H 5250 1400 50  0001 C CNN
F 1 "GND" H 5250 1500 50  0000 C CNN
F 2 "" H 5250 1650 50  0000 C CNN
F 3 "" H 5250 1650 50  0000 C CNN
	1    5250 1650
	1    0    0    -1  
$EndComp
Text Label 7800 5400 0    60   ~ 0
a
Text Label 7900 5400 0    60   ~ 0
b
Text Label 8000 5400 0    60   ~ 0
c
Text Label 8100 5400 0    60   ~ 0
d
Text Label 8200 5400 0    60   ~ 0
e
Text Label 8300 5400 0    60   ~ 0
f
Text Label 8400 5400 0    60   ~ 0
g
Text Label 8500 5400 0    60   ~ 0
dp
Text Label 5600 2800 0    60   ~ 0
a
Text Label 5100 2400 0    60   ~ 0
b
Text Label 5250 3400 0    60   ~ 0
c
Text Label 2300 2900 0    60   ~ 0
d
Text Label 2300 2800 0    60   ~ 0
e
Text Label 5250 3200 0    60   ~ 0
f
Text Label 5250 3300 0    60   ~ 0
g
Text Label 5250 3500 0    60   ~ 0
dp
Text Label 7100 2650 0    60   ~ 0
c1
Text Label 7600 2650 0    60   ~ 0
c2
Text Label 8100 2650 0    60   ~ 0
c3
Text Label 5250 3100 0    60   ~ 0
c1
Text Label 2300 3100 0    60   ~ 0
c2
Text Label 2300 3200 0    60   ~ 0
c3
$Comp
L VDD #PWR7
U 1 1 58C50455
P 3800 1550
F 0 "#PWR7" H 3800 1400 50  0001 C CNN
F 1 "VDD" H 3800 1700 50  0000 C CNN
F 2 "" H 3800 1550 50  0000 C CNN
F 3 "" H 3800 1550 50  0000 C CNN
	1    3800 1550
	1    0    0    -1  
$EndComp
Text Label 2100 2700 0    60   ~ 0
prg
$Comp
L CONN_01X02 J1
U 1 1 59BD63B1
P 1350 4300
F 0 "J1" H 1350 4450 50  0000 C CNN
F 1 "PISK" V 1450 4300 50  0000 C CNN
F 2 "myowndevice:hc0903a" H 1350 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0001 C CNN
	1    1350 4300
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_GSD Q4
U 1 1 59BD6661
P 1450 4650
F 0 "Q4" H 1650 4700 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 1650 4600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1650 4750 50  0001 C CNN
F 3 "" H 1450 4650 50  0001 C CNN
	1    1450 4650
	1    0    0    -1  
$EndComp
Text Label 1150 4650 2    60   ~ 0
pisk
$Comp
L GND #PWR2
U 1 1 59BD6978
P 1550 4850
F 0 "#PWR2" H 1550 4600 50  0001 C CNN
F 1 "GND" H 1550 4700 50  0000 C CNN
F 2 "" H 1550 4850 50  0001 C CNN
F 3 "" H 1550 4850 50  0001 C CNN
	1    1550 4850
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR1
U 1 1 59BD6A68
P 1550 4100
F 0 "#PWR1" H 1550 3950 50  0001 C CNN
F 1 "VDD" H 1550 4250 50  0000 C CNN
F 2 "" H 1550 4100 50  0001 C CNN
F 3 "" H 1550 4100 50  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 59BD6D08
P 6250 1700
F 0 "P1" H 6250 1850 50  0000 C CNN
F 1 "kn1" V 6350 1700 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SKHH_Angled" H 6250 1700 50  0001 C CNN
F 3 "" H 6250 1700 50  0000 C CNN
	1    6250 1700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 59BD724B
P 5000 5900
F 0 "P2" H 5000 6050 50  0000 C CNN
F 1 "bat" V 5100 5900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5000 5900 50  0001 C CNN
F 3 "" H 5000 5900 50  0000 C CNN
	1    5000 5900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR11
U 1 1 59BD7308
P 6050 6050
F 0 "#PWR11" H 6050 5800 50  0001 C CNN
F 1 "GND" H 6050 5900 50  0000 C CNN
F 2 "" H 6050 6050 50  0001 C CNN
F 3 "" H 6050 6050 50  0001 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR12
U 1 1 59BD7364
P 6200 5800
F 0 "#PWR12" H 6200 5650 50  0001 C CNN
F 1 "VDD" H 6200 5950 50  0000 C CNN
F 2 "" H 6200 5800 50  0001 C CNN
F 3 "" H 6200 5800 50  0001 C CNN
	1    6200 5800
	1    0    0    -1  
$EndComp
Text Label 6300 5850 0    60   ~ 0
bat
$Comp
L TP4056-RESCUE-timer U1
U 1 1 59BD7633
P 4200 4550
F 0 "U1" H 4200 4550 60  0000 C CNN
F 1 "TP4056" H 4200 4450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8-1EP_3.9x4.9mm_Pitch1.27mm" H 4200 4550 60  0001 C CNN
F 3 "" H 4200 4550 60  0000 C CNN
	1    4200 4550
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J2
U 1 1 59BD7914
P 2700 5000
F 0 "J2" H 2500 5450 50  0000 L CNN
F 1 "USB_OTG" H 2500 5350 50  0000 L CNN
F 2 "myowndevice:usb5s" H 2850 4950 50  0001 C CNN
F 3 "" H 2850 4950 50  0001 C CNN
	1    2700 5000
	1    0    0    -1  
$EndComp
Text Label 5200 5150 0    60   ~ 0
bat1
Text Label 5600 2900 0    60   ~ 0
kn2
Text Label 2300 3000 2    60   ~ 0
pisk
$Comp
L GND #PWR5
U 1 1 59BD8D0E
P 3600 5350
F 0 "#PWR5" H 3600 5100 50  0001 C CNN
F 1 "GND" H 3600 5200 50  0000 C CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 59BD8DE1
P 3450 5000
F 0 "R2" H 3480 5020 50  0000 L CNN
F 1 "30k (40ma)" H 3480 4960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3450 5000 50  0001 C CNN
F 3 "" H 3450 5000 50  0001 C CNN
	1    3450 5000
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59BD9104
P 5100 4700
F 0 "D1" H 5100 4800 50  0000 C CNN
F 1 "LED" H 5100 4600 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 5100 4700 50  0001 C CNN
F 3 "" H 5100 4700 50  0001 C CNN
	1    5100 4700
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R11
U 1 1 59BD9215
P 4900 4900
F 0 "R11" H 4930 4920 50  0000 L CNN
F 1 "1k" H 4930 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4900 4900 50  0001 C CNN
F 3 "" H 4900 4900 50  0001 C CNN
	1    4900 4900
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 59BD95CA
P 4750 5300
F 0 "C5" H 4760 5370 50  0000 L CNN
F 1 "10uf" H 4760 5220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4750 5300 50  0001 C CNN
F 3 "" H 4750 5300 50  0001 C CNN
	1    4750 5300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 59BD990C
P 3350 5300
F 0 "C4" H 3360 5370 50  0000 L CNN
F 1 "10uf" H 3360 5220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3350 5300 50  0001 C CNN
F 3 "" H 3350 5300 50  0001 C CNN
	1    3350 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 59BD9DB0
P 2700 5400
F 0 "#PWR4" H 2700 5150 50  0001 C CNN
F 1 "GND" H 2700 5250 50  0000 C CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "" H 2700 5400 50  0001 C CNN
	1    2700 5400
	1    0    0    -1  
$EndComp
Text Label 5500 1750 2    60   ~ 0
kn
Text Label 5100 2500 0    60   ~ 0
kn
$Comp
L R_Small R14
U 1 1 59FE23C4
P 1300 4850
F 0 "R14" H 1330 4870 50  0000 L CNN
F 1 "10k" H 1330 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1300 4850 50  0001 C CNN
F 3 "" H 1300 4850 50  0001 C CNN
	1    1300 4850
	0    1    1    0   
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5A361EF3
P 1900 2700
F 0 "J3" H 1900 2800 50  0000 C CNN
F 1 "Conn_01x01" H 1900 2600 50  0000 C CNN
F 2 "myowndevice:1pin_sq" H 1900 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0001 C CNN
	1    1900 2700
	-1   0    0    1   
$EndComp
$Comp
L R_Small R1
U 1 1 5A4EDE58
P 7100 3000
F 0 "R1" H 7130 3020 50  0000 L CNN
F 1 "200" H 7130 2960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7100 3000 50  0001 C CNN
F 3 "" H 7100 3000 50  0000 C CNN
	1    7100 3000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5A4EDF81
P 7600 2800
F 0 "R3" H 7630 2820 50  0000 L CNN
F 1 "200" H 7630 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7600 2800 50  0001 C CNN
F 3 "" H 7600 2800 50  0000 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5A4EE001
P 8100 2800
F 0 "R4" H 8130 2820 50  0000 L CNN
F 1 "200" H 8130 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8100 2800 50  0001 C CNN
F 3 "" H 8100 2800 50  0000 C CNN
	1    8100 2800
	1    0    0    -1  
$EndComp
Text Label 6650 1450 0    60   ~ 0
kn2
$Comp
L VDD #PWR14
U 1 1 5A54E50A
P 6450 1750
F 0 "#PWR14" H 6450 1600 50  0001 C CNN
F 1 "VDD" H 6450 1900 50  0000 C CNN
F 2 "" H 6450 1750 50  0000 C CNN
F 3 "" H 6450 1750 50  0000 C CNN
	1    6450 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 5A54EFAD
P 3700 4800
F 0 "#PWR6" H 3700 4550 50  0001 C CNN
F 1 "GND" H 3700 4650 50  0000 C CNN
F 2 "" H 3700 4800 50  0001 C CNN
F 3 "" H 3700 4800 50  0001 C CNN
	1    3700 4800
	-1   0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 5A550050
P 6450 1350
F 0 "R5" H 6480 1370 50  0000 L CNN
F 1 "10k" H 6480 1310 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6450 1350 50  0001 C CNN
F 3 "" H 6450 1350 50  0000 C CNN
	1    6450 1350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR13
U 1 1 5A550514
P 6450 1250
F 0 "#PWR13" H 6450 1000 50  0001 C CNN
F 1 "GND" H 6450 1100 50  0000 C CNN
F 2 "" H 6450 1250 50  0000 C CNN
F 3 "" H 6450 1250 50  0000 C CNN
	1    6450 1250
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 5A55FD04
P 5850 5950
F 0 "Q1" H 6050 6000 50  0000 L CNN
F 1 "IRLML6244TRPBF" H 6050 5900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6050 6050 50  0001 C CNN
F 3 "" H 5850 5950 50  0001 C CNN
	1    5850 5950
	0    1    1    0   
$EndComp
$Comp
L Conn_01x03 J4
U 1 1 5A55FFFD
P 5850 5200
F 0 "J4" H 5850 5400 50  0000 C CNN
F 1 "max809" H 5850 5000 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5850 5200 50  0001 C CNN
F 3 "" H 5850 5200 50  0001 C CNN
	1    5850 5200
	0    -1   -1   0   
$EndComp
Text Label 6250 6000 0    60   ~ 0
bat1
Wire Wire Line
	3800 3800 3800 3900
Wire Wire Line
	2350 3700 2350 3800
Wire Wire Line
	2500 3500 2350 3500
Wire Wire Line
	3850 1800 3850 2000
Wire Wire Line
	3800 1550 3800 2100
Wire Wire Line
	3800 1800 3850 1800
Wire Wire Line
	4050 2000 4050 1800
Wire Wire Line
	4050 1800 4150 1800
Wire Wire Line
	2100 2700 2500 2700
Wire Wire Line
	5500 1650 5250 1650
Wire Wire Line
	7800 5000 7800 5400
Wire Wire Line
	7900 5000 7900 5400
Wire Wire Line
	8000 5000 8000 5400
Wire Wire Line
	8100 5000 8100 5400
Wire Wire Line
	8200 5000 8200 5400
Wire Wire Line
	8300 5000 8300 5400
Wire Wire Line
	8400 5000 8400 5400
Wire Wire Line
	8500 5000 8500 5400
Wire Wire Line
	7400 3450 7400 3600
Wire Wire Line
	7900 2950 7900 3600
Wire Wire Line
	8400 2950 8400 3600
Wire Wire Line
	2300 3200 2500 3200
Wire Wire Line
	2300 3100 2500 3100
Wire Wire Line
	2300 3000 2500 3000
Wire Wire Line
	5100 3100 5250 3100
Wire Wire Line
	5250 3200 5100 3200
Wire Wire Line
	5250 3300 5100 3300
Wire Wire Line
	5250 3400 5100 3400
Wire Wire Line
	5250 3500 5100 3500
Wire Wire Line
	2500 2900 2300 2900
Connection ~ 3800 1800
Wire Wire Line
	2500 2800 2300 2800
Wire Wire Line
	4200 1800 4100 1800
Connection ~ 4100 1800
Wire Wire Line
	1150 4650 1250 4650
Wire Wire Line
	1550 4450 1550 4350
Wire Wire Line
	1550 4100 1550 4250
Connection ~ 5400 1650
Wire Wire Line
	4750 5150 5200 5150
Wire Wire Line
	5100 2900 5600 2900
Wire Wire Line
	5100 2800 5600 2800
Wire Wire Line
	3000 4800 3250 4800
Wire Wire Line
	3250 4500 3250 5150
Wire Wire Line
	3250 5150 3700 5150
Wire Wire Line
	3700 5050 3600 5050
Wire Wire Line
	3600 5050 3600 5350
Wire Wire Line
	3450 4900 3700 4900
Wire Wire Line
	3450 5100 3450 5450
Wire Wire Line
	3600 5350 3450 5350
Wire Wire Line
	3250 4500 5100 4500
Wire Wire Line
	4750 4500 4750 4800
Connection ~ 3250 4800
Wire Wire Line
	4750 4900 4800 4900
Wire Wire Line
	5000 4900 5100 4900
Wire Wire Line
	5100 4900 5100 4850
Wire Wire Line
	5100 4500 5100 4550
Connection ~ 4750 4500
Wire Wire Line
	4750 5400 3700 5400
Wire Wire Line
	3700 5400 3700 5300
Wire Wire Line
	3700 5300 3600 5300
Connection ~ 3600 5300
Wire Wire Line
	4750 5200 4750 5150
Wire Wire Line
	3350 5200 3350 5150
Connection ~ 3350 5150
Wire Wire Line
	3350 5400 3350 5450
Wire Wire Line
	3350 5450 3450 5450
Connection ~ 3450 5350
Wire Wire Line
	2600 5400 2700 5400
Wire Wire Line
	1200 4850 1200 4650
Connection ~ 1200 4650
Wire Wire Line
	1400 4850 1550 4850
Wire Wire Line
	8100 2950 8400 2950
Wire Wire Line
	7600 2950 7900 2950
Wire Wire Line
	7100 3450 7400 3450
Wire Wire Line
	8100 2650 8100 2700
Wire Wire Line
	8100 2900 8100 2950
Wire Wire Line
	7600 2900 7600 2950
Wire Wire Line
	7600 2650 7600 2700
Wire Wire Line
	7100 2650 7100 2900
Wire Wire Line
	7100 3100 7100 3450
Wire Wire Line
	6450 1650 6450 1450
Wire Wire Line
	6450 1450 6650 1450
Wire Wire Line
	5200 5850 6300 5850
Wire Wire Line
	5950 5400 5950 5850
Wire Wire Line
	5200 6050 5650 6050
Wire Wire Line
	5650 6050 5650 5750
Wire Wire Line
	5650 5750 5750 5750
Connection ~ 5950 5850
Wire Wire Line
	6200 5800 6200 6000
Connection ~ 6200 5850
Wire Wire Line
	6200 6000 6250 6000
$Comp
L R_Small R6
U 1 1 5A57B7DD
P 5850 5550
F 0 "R6" H 5880 5570 50  0000 L CNN
F 1 "1k" H 5880 5510 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5850 5550 50  0001 C CNN
F 3 "" H 5850 5550 50  0001 C CNN
	1    5850 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 5650 5850 5800
Wire Wire Line
	5850 5400 5850 5450
Wire Wire Line
	5750 5750 5750 5400
Wire Wire Line
	5200 5950 5200 6050
$Comp
L R_Small R7
U 1 1 5A659257
P 5450 5800
F 0 "R7" H 5480 5820 50  0000 L CNN
F 1 "100k" H 5480 5760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 5800 5350 6050
Connection ~ 5350 6050
Wire Wire Line
	5850 5800 5550 5800
Connection ~ 5850 5750
$EndSCHEMATC
