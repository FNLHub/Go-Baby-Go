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
P 4550 2200
F 0 "A1" H 4950 1150 50  0000 C CNN
F 1 "Arduino_UNO_R3" V 4550 2200 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4700 1150 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4350 3250 50  0001 C CNN
	1    4550 2200
	-1   0    0    -1  
$EndComp
Text GLabel 2750 2300 2    50   Output ~ 0
Throttle
Text GLabel 3900 2200 0    50   Input ~ 0
Throttle
Wire Wire Line
	2550 2300 2750 2300
Wire Wire Line
	4050 2200 3900 2200
$Comp
L go-baby-go:R_POT_US RV2
U 1 1 5C50FEE9
P 8550 1450
F 0 "RV2" H 8482 1404 50  0000 R CNN
F 1 "R_POT_US" H 8482 1495 50  0000 R CNN
F 2 "" H 8550 1450 50  0001 C CNN
F 3 "~" H 8550 1450 50  0001 C CNN
	1    8550 1450
	-1   0    0    1   
$EndComp
Text GLabel 3900 2300 0    50   Input ~ 0
Max_Speed
Text GLabel 8350 1450 0    50   Output ~ 0
Max_Speed
Wire Wire Line
	8350 1450 8400 1450
Wire Wire Line
	3900 2300 4050 2300
$Comp
L power:GND #PWR06
U 1 1 5C5100A4
P 8550 1700
F 0 "#PWR06" H 8550 1450 50  0001 C CNN
F 1 "GND" H 8555 1527 50  0000 C CNN
F 2 "" H 8550 1700 50  0001 C CNN
F 3 "" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1600 8550 1700
$Comp
L go-baby-go:R_POT_US RV3
U 1 1 5C510203
P 9850 1450
F 0 "RV3" H 9782 1404 50  0000 R CNN
F 1 "R_POT_US" H 9782 1495 50  0000 R CNN
F 2 "" H 9850 1450 50  0001 C CNN
F 3 "~" H 9850 1450 50  0001 C CNN
	1    9850 1450
	-1   0    0    1   
$EndComp
Text GLabel 9650 1450 0    50   Output ~ 0
Max_Accel
Wire Wire Line
	9650 1450 9700 1450
$Comp
L power:GND #PWR07
U 1 1 5C51020B
P 9850 1700
F 0 "#PWR07" H 9850 1450 50  0001 C CNN
F 1 "GND" H 9855 1527 50  0000 C CNN
F 2 "" H 9850 1700 50  0001 C CNN
F 3 "" H 9850 1700 50  0001 C CNN
	1    9850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1600 9850 1700
Text GLabel 3900 2400 0    50   Input ~ 0
Max_Accel
Wire Wire Line
	4050 2400 3900 2400
$Comp
L power:GND #PWR04
U 1 1 5C5102E9
P 4450 3350
F 0 "#PWR04" H 4450 3100 50  0001 C CNN
F 1 "GND" H 4455 3177 50  0000 C CNN
F 2 "" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
	1    4450 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 3300 4450 3350
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
Text GLabel 5150 2500 2    50   Output ~ 0
Go_Control
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
Text GLabel 4650 1100 1    50   Input ~ 0
VCC
Wire Wire Line
	4650 1100 4650 1200
Text GLabel 8550 1150 1    50   Input ~ 0
5V+
Text GLabel 9850 1150 1    50   Input ~ 0
5V+
Text GLabel 4350 1100 1    50   Output ~ 0
5V+
Wire Wire Line
	4350 1100 4350 1200
Wire Wire Line
	8550 1150 8550 1300
Wire Wire Line
	9850 1150 9850 1300
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
P 7000 1450
F 0 "SW1" H 7000 1735 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7000 1644 50  0000 C CNN
F 2 "" H 7000 1450 50  0001 C CNN
F 3 "" H 7000 1450 50  0001 C CNN
	1    7000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C5552D9
P 7300 1550
F 0 "#PWR05" H 7300 1300 50  0001 C CNN
F 1 "GND" V 7300 1350 50  0000 C CNN
F 2 "" H 7300 1550 50  0001 C CNN
F 3 "" H 7300 1550 50  0001 C CNN
	1    7300 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	7300 1550 7200 1550
Text GLabel 6700 1450 0    50   Output ~ 0
Mode
Wire Wire Line
	6700 1450 6800 1450
Text GLabel 5150 1800 2    50   Input ~ 0
Mode
Wire Wire Line
	5150 1800 5050 1800
$Comp
L power:GND #PWR0101
U 1 1 5C559090
P 4500 4650
F 0 "#PWR0101" H 4500 4400 50  0001 C CNN
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
L power:GND #PWR0102
U 1 1 5C566702
P 2650 4100
F 0 "#PWR0102" H 2650 3850 50  0001 C CNN
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
$Comp
L Switch:SW_SPST SW2
U 1 1 5C53582E
P 6200 4350
F 0 "SW2" H 6200 4585 50  0000 C CNN
F 1 "SW_SPST" H 6200 4494 50  0000 C CNN
F 2 "" H 6200 4350 50  0001 C CNN
F 3 "" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C53712D
P 6500 4350
F 0 "#PWR0103" H 6500 4100 50  0001 C CNN
F 1 "GND" V 6505 4177 50  0000 C CNN
F 2 "" H 6500 4350 50  0001 C CNN
F 3 "" H 6500 4350 50  0001 C CNN
	1    6500 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4350 6400 4350
Text GLabel 5900 4350 0    50   Output ~ 0
Go_Button
Wire Wire Line
	5900 4350 6000 4350
Text GLabel 5150 1900 2    50   Input ~ 0
Go_Button
Wire Wire Line
	5150 1900 5050 1900
Wire Wire Line
	5050 2500 5150 2500
Text GLabel 5150 2200 2    50   Output ~ 0
Neo_Pixel
Wire Wire Line
	5050 2200 5150 2200
$Comp
L LED:WS2812B D1
U 1 1 5C55D03C
P 4450 5750
F 0 "D1" H 4500 5500 50  0000 L CNN
F 1 "WS2812B" H 4500 6000 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4500 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4550 5375 50  0001 L TNN
	1    4450 5750
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D2
U 1 1 5C55ED68
P 5200 5750
F 0 "D2" H 5250 5500 50  0000 L CNN
F 1 "WS2812B" H 5250 6000 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5250 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5300 5375 50  0001 L TNN
	1    5200 5750
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D3
U 1 1 5C55EDAE
P 5950 5750
F 0 "D3" H 6000 5500 50  0000 L CNN
F 1 "WS2812B" H 6000 6000 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6000 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6050 5375 50  0001 L TNN
	1    5950 5750
	1    0    0    -1  
$EndComp
Text GLabel 4000 5750 0    50   Input ~ 0
Neo_Pixel
Wire Wire Line
	4000 5750 4150 5750
Wire Wire Line
	4750 5750 4900 5750
Wire Wire Line
	5500 5750 5650 5750
NoConn ~ 6250 5750
$Comp
L power:GND #PWR0104
U 1 1 5C562913
P 4450 6100
F 0 "#PWR0104" H 4450 5850 50  0001 C CNN
F 1 "GND" H 4455 5927 50  0000 C CNN
F 2 "" H 4450 6100 50  0001 C CNN
F 3 "" H 4450 6100 50  0001 C CNN
	1    4450 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C5629CE
P 5200 6100
F 0 "#PWR0105" H 5200 5850 50  0001 C CNN
F 1 "GND" H 5205 5927 50  0000 C CNN
F 2 "" H 5200 6100 50  0001 C CNN
F 3 "" H 5200 6100 50  0001 C CNN
	1    5200 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C5629F9
P 5950 6100
F 0 "#PWR0106" H 5950 5850 50  0001 C CNN
F 1 "GND" H 5955 5927 50  0000 C CNN
F 2 "" H 5950 6100 50  0001 C CNN
F 3 "" H 5950 6100 50  0001 C CNN
	1    5950 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 6050 4450 6100
Wire Wire Line
	5200 6050 5200 6100
Wire Wire Line
	5950 6050 5950 6100
Text GLabel 4450 5350 1    50   Input ~ 0
5V+
Wire Wire Line
	4450 5350 4450 5450
Text GLabel 5200 5350 1    50   Input ~ 0
5V+
Text GLabel 5950 5350 1    50   Input ~ 0
5V+
Wire Wire Line
	5200 5350 5200 5450
Wire Wire Line
	5950 5350 5950 5450
$Comp
L Switch:SW_SPST SW3
U 1 1 5C568E76
P 7050 2100
F 0 "SW3" H 7050 2335 50  0000 C CNN
F 1 "SW_SPST" H 7050 2244 50  0000 C CNN
F 2 "" H 7050 2100 50  0001 C CNN
F 3 "" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5C569073
P 7300 2100
F 0 "#PWR0107" H 7300 1850 50  0001 C CNN
F 1 "GND" V 7300 1900 50  0000 C CNN
F 2 "" H 7300 2100 50  0001 C CNN
F 3 "" H 7300 2100 50  0001 C CNN
	1    7300 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	7250 2100 7300 2100
Text GLabel 5150 2000 2    50   Input ~ 0
Config_Button
Wire Wire Line
	5050 2000 5150 2000
Text GLabel 6800 2100 0    50   Output ~ 0
Config_Button
Wire Wire Line
	6800 2100 6850 2100
NoConn ~ 4450 1200
NoConn ~ 4050 1600
NoConn ~ 4050 1800
NoConn ~ 4050 2000
NoConn ~ 5050 1600
NoConn ~ 5050 1700
NoConn ~ 5050 2300
NoConn ~ 5050 2100
NoConn ~ 5050 2400
NoConn ~ 5050 2600
NoConn ~ 5050 2700
NoConn ~ 5050 2800
NoConn ~ 5050 2900
NoConn ~ 4650 3300
NoConn ~ 4550 3300
NoConn ~ 4050 3000
NoConn ~ 4050 2900
NoConn ~ 4050 2700
NoConn ~ 4050 2600
NoConn ~ 4050 2500
NoConn ~ 2550 1900
NoConn ~ 2550 2000
NoConn ~ 2550 2100
NoConn ~ 2550 2400
NoConn ~ 2550 2500
NoConn ~ 2550 2800
NoConn ~ 2550 2900
NoConn ~ 7200 1350
Text GLabel 3050 6400 2    50   Output ~ 0
12V
Wire Wire Line
	2900 6400 3050 6400
Wire Wire Line
	1450 6300 1600 6300
$EndSCHEMATC
