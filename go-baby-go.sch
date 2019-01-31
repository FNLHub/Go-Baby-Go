EESchema Schematic File Version 4
LIBS:go-baby-go-cache
EELAYER 26 0
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
L go-baby-go:TG-3 U1
U 1 1 5C50C683
P 1850 2200
F 0 "U1" H 1981 3165 50  0000 C CNN
F 1 "TG-3" H 1981 3074 50  0000 C CNN
F 2 "" H 1750 2100 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
$Comp
L go-baby-go:Arduino_UNO_R3 A1
U 1 1 5C50C7C3
P 4850 2200
F 0 "A1" H 4450 1100 50  0000 C CNN
F 1 "Arduino_UNO_R3" V 4850 2200 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5000 1150 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4650 3250 50  0001 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
Text GLabel 2750 2300 2    50   Output ~ 0
Throttle
Text GLabel 5500 2200 2    50   Input ~ 0
Throttle
Wire Wire Line
	2550 2300 2750 2300
Wire Wire Line
	5350 2200 5500 2200
$Comp
L go-baby-go:R_POT_US RV2
U 1 1 5C50FEE9
P 8200 1450
F 0 "RV2" H 8132 1404 50  0000 R CNN
F 1 "R_POT_US" H 8132 1495 50  0000 R CNN
F 2 "" H 8200 1450 50  0001 C CNN
F 3 "~" H 8200 1450 50  0001 C CNN
	1    8200 1450
	-1   0    0    1   
$EndComp
Text GLabel 5500 2300 2    50   Input ~ 0
Max_Speed
Text GLabel 8000 1450 0    50   Output ~ 0
Max_Speed
Wire Wire Line
	8000 1450 8050 1450
Wire Wire Line
	5500 2300 5350 2300
$Comp
L power:GND #PWR06
U 1 1 5C5100A4
P 8200 1700
F 0 "#PWR06" H 8200 1450 50  0001 C CNN
F 1 "GND" H 8205 1527 50  0000 C CNN
F 2 "" H 8200 1700 50  0001 C CNN
F 3 "" H 8200 1700 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1600 8200 1700
$Comp
L go-baby-go:R_POT_US RV3
U 1 1 5C510203
P 9500 1450
F 0 "RV3" H 9432 1404 50  0000 R CNN
F 1 "R_POT_US" H 9432 1495 50  0000 R CNN
F 2 "" H 9500 1450 50  0001 C CNN
F 3 "~" H 9500 1450 50  0001 C CNN
	1    9500 1450
	-1   0    0    1   
$EndComp
Text GLabel 9300 1450 0    50   Output ~ 0
Max_Accel
Wire Wire Line
	9300 1450 9350 1450
$Comp
L power:GND #PWR07
U 1 1 5C51020B
P 9500 1700
F 0 "#PWR07" H 9500 1450 50  0001 C CNN
F 1 "GND" H 9505 1527 50  0000 C CNN
F 2 "" H 9500 1700 50  0001 C CNN
F 3 "" H 9500 1700 50  0001 C CNN
	1    9500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1600 9500 1700
Text GLabel 5500 2400 2    50   Input ~ 0
Max_Accel
Wire Wire Line
	5350 2400 5500 2400
$Comp
L power:GND #PWR04
U 1 1 5C5102E9
P 4950 3350
F 0 "#PWR04" H 4950 3100 50  0001 C CNN
F 1 "GND" H 4955 3177 50  0000 C CNN
F 2 "" H 4950 3350 50  0001 C CNN
F 3 "" H 4950 3350 50  0001 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3300 4950 3350
$Comp
L power:GND #PWR01
U 1 1 5C5103B5
P 2700 1700
F 0 "#PWR01" H 2700 1450 50  0001 C CNN
F 1 "GND" V 2705 1572 50  0000 R CNN
F 2 "" H 2700 1700 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1700 2700 1700
$Comp
L go-baby-go:QuikcRun_860-Dual U2
U 1 1 5C510BD4
P 2000 4850
F 0 "U2" H 1956 6115 50  0000 C CNN
F 1 "QuikcRun_860-Dual" H 1956 6024 50  0000 C CNN
F 2 "" H 1150 4450 50  0001 C CNN
F 3 "" H 1150 4450 50  0001 C CNN
	1    2000 4850
	1    0    0    -1  
$EndComp
Text GLabel 2700 4950 2    50   Input ~ 0
Go_Control
Text GLabel 5500 2500 2    50   Output ~ 0
Go_Control
Wire Wire Line
	5350 2500 5500 2500
Wire Wire Line
	2700 4950 2550 4950
$Comp
L power:GND #PWR02
U 1 1 5C510FC2
P 2700 5150
F 0 "#PWR02" H 2700 4900 50  0001 C CNN
F 1 "GND" V 2705 4977 50  0000 C CNN
F 2 "" H 2700 5150 50  0001 C CNN
F 3 "" H 2700 5150 50  0001 C CNN
	1    2700 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 5150 2700 5150
Text GLabel 2700 5050 2    50   Output ~ 0
VCC
Text GLabel 2750 1600 2    50   Input ~ 0
VCC
Wire Wire Line
	2550 5050 2700 5050
Wire Wire Line
	2750 1600 2550 1600
NoConn ~ 2550 1500
Text GLabel 4750 1100 1    50   Input ~ 0
VCC
Wire Wire Line
	4750 1100 4750 1200
Text GLabel 8200 1150 1    50   Input ~ 0
5V+
Text GLabel 9500 1150 1    50   Input ~ 0
5V+
Text GLabel 5050 1100 1    50   Output ~ 0
5V+
Wire Wire Line
	5050 1100 5050 1200
Wire Wire Line
	8200 1150 8200 1300
Wire Wire Line
	9500 1150 9500 1300
$Comp
L Motor:Motor_DC M1
U 1 1 5C513750
P 8100 3100
F 0 "M1" H 8258 3096 50  0000 L CNN
F 1 "Motor_DC" H 8258 3005 50  0000 L CNN
F 2 "" H 8100 3010 50  0001 C CNN
F 3 "~" H 8100 3010 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M2
U 1 1 5C5138BC
P 8950 3100
F 0 "M2" H 9108 3096 50  0000 L CNN
F 1 "Motor_DC" H 9108 3005 50  0000 L CNN
F 2 "" H 8950 3010 50  0001 C CNN
F 3 "~" H 8950 3010 50  0001 C CNN
	1    8950 3100
	1    0    0    -1  
$EndComp
Text GLabel 8100 2800 1    50   Input ~ 0
M1Y
Text GLabel 8950 2800 1    50   Input ~ 0
M2Y
Text GLabel 8100 3500 3    50   Input ~ 0
M1B
Text GLabel 8950 3500 3    50   Input ~ 0
M2B
Wire Wire Line
	8950 3500 8950 3400
Wire Wire Line
	8100 3400 8100 3500
Wire Wire Line
	8100 2800 8100 2900
Wire Wire Line
	8950 2900 8950 2800
Text GLabel 2650 4300 2    50   Output ~ 0
M1Y
Text GLabel 2650 4400 2    50   Output ~ 0
M1B
Text GLabel 2650 4600 2    50   Output ~ 0
M2Y
Text GLabel 2650 4700 2    50   Output ~ 0
M2B
Wire Wire Line
	2550 4300 2650 4300
Wire Wire Line
	2650 4400 2550 4400
Wire Wire Line
	2550 4600 2650 4600
Wire Wire Line
	2650 4700 2550 4700
$Comp
L Device:Battery BT1
U 1 1 5C5160E0
P 4500 4350
F 0 "BT1" H 4608 4396 50  0000 L CNN
F 1 "Battery" H 4608 4305 50  0000 L CNN
F 2 "" V 4500 4410 50  0001 C CNN
F 3 "~" V 4500 4410 50  0001 C CNN
	1    4500 4350
	1    0    0    -1  
$EndComp
$Comp
L go-baby-go:Actuonix-LAC U3
U 1 1 5C533946
P 2300 6450
F 0 "U3" H 2250 7115 50  0000 C CNN
F 1 "Actuonix-LAC" H 2250 7024 50  0000 C CNN
F 2 "" H 1850 6050 50  0001 C CNN
F 3 "" H 1850 6050 50  0001 C CNN
	1    2300 6450
	1    0    0    -1  
$EndComp
Text GLabel 3050 6500 2    50   Input ~ 0
Steering
Text GLabel 2750 2700 2    50   Output ~ 0
Steering
Wire Wire Line
	2750 2700 2550 2700
Wire Wire Line
	3050 6500 2900 6500
$Comp
L power:GND #PWR03
U 1 1 5C534C69
P 3050 6300
F 0 "#PWR03" H 3050 6050 50  0001 C CNN
F 1 "GND" V 3055 6127 50  0000 C CNN
F 2 "" H 3050 6300 50  0001 C CNN
F 3 "" H 3050 6300 50  0001 C CNN
	1    3050 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 6300 3050 6300
Text GLabel 4500 4050 1    50   Output ~ 0
12V
Text GLabel 3050 6400 2    50   Input ~ 0
12V
Wire Wire Line
	3050 6400 2900 6400
Text GLabel 1450 6500 0    50   Output ~ 0
M3Y
Text GLabel 1450 6600 0    50   Output ~ 0
M3B
Wire Wire Line
	1450 6500 1600 6500
Wire Wire Line
	1600 6600 1450 6600
$Comp
L go-baby-go:R_POT_US RV1
U 1 1 5C53854A
P 8050 5000
F 0 "RV1" H 7950 4800 50  0000 R CNN
F 1 "R_POT_US" H 7950 4700 50  0000 R CNN
F 2 "" H 8050 5000 50  0001 C CNN
F 3 "~" H 8050 5000 50  0001 C CNN
	1    8050 5000
	-1   0    0    1   
$EndComp
Text GLabel 1450 6300 0    50   Output ~ 0
SPOT_REF+
Text GLabel 1450 6700 0    50   Output ~ 0
SPOT_REF-
Text GLabel 1450 6400 0    50   Input ~ 0
SPOT
Wire Wire Line
	1450 6300 1600 6300
Wire Wire Line
	1450 6400 1600 6400
Wire Wire Line
	1450 6700 1600 6700
Text GLabel 8050 5250 3    50   Input ~ 0
SPOT_REF-
Text GLabel 8050 4750 1    50   Input ~ 0
SPOT_REF-
Text GLabel 7800 5000 0    50   Output ~ 0
SPOT
Wire Wire Line
	7800 5000 7900 5000
$Comp
L Motor:Motor_DC M3
U 1 1 5C53E9D5
P 8950 4950
F 0 "M3" H 9100 5100 50  0000 L CNN
F 1 "Motor_DC" H 9100 5200 50  0000 L CNN
F 2 "" H 8950 4860 50  0001 C CNN
F 3 "~" H 8950 4860 50  0001 C CNN
	1    8950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5250 8050 5150
Wire Wire Line
	8050 4750 8050 4850
Text GLabel 8950 4600 1    50   Input ~ 0
M3Y
Text GLabel 8950 5400 3    50   Input ~ 0
M3B
Wire Wire Line
	8950 5250 8950 5400
Wire Wire Line
	8950 4600 8950 4750
Wire Notes Line
	8200 5000 8750 5000
Text Notes 9150 5350 0    100  ~ 0
Steering
Text Notes 9250 3550 0    100  ~ 0
Drive Motors
NoConn ~ 2900 6600
NoConn ~ 2900 6700
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5C5524CE
P 6750 1400
F 0 "SW1" H 6750 1685 50  0000 C CNN
F 1 "SW_DPDT_x2" H 6750 1594 50  0000 C CNN
F 2 "" H 6750 1400 50  0001 C CNN
F 3 "" H 6750 1400 50  0001 C CNN
	1    6750 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C5552D9
P 7050 1500
F 0 "#PWR05" H 7050 1250 50  0001 C CNN
F 1 "GND" H 7055 1327 50  0000 C CNN
F 2 "" H 7050 1500 50  0001 C CNN
F 3 "" H 7050 1500 50  0001 C CNN
	1    7050 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 1500 6950 1500
Text GLabel 6450 1400 0    50   Output ~ 0
Mode
Wire Wire Line
	6450 1400 6550 1400
Text GLabel 4250 1800 0    50   Input ~ 0
Mode
Wire Wire Line
	4250 1800 4350 1800
$Comp
L power:GND #PWR?
U 1 1 5C559090
P 4500 4650
F 0 "#PWR?" H 4500 4400 50  0001 C CNN
F 1 "GND" V 4505 4477 50  0000 C CNN
F 2 "" H 4500 4650 50  0001 C CNN
F 3 "" H 4500 4650 50  0001 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4050 4500 4150
Wire Wire Line
	4500 4650 4500 4550
Text GLabel 2650 4000 2    50   Input ~ 0
12V
$Comp
L power:GND #PWR?
U 1 1 5C566702
P 2650 4100
F 0 "#PWR?" H 2650 3850 50  0001 C CNN
F 1 "GND" V 2655 3927 50  0000 C CNN
F 2 "" H 2650 4100 50  0001 C CNN
F 3 "" H 2650 4100 50  0001 C CNN
	1    2650 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 4000 2650 4000
Wire Wire Line
	2650 4100 2550 4100
$EndSCHEMATC
