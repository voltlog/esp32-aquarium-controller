EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Relay"
Date "2021-02-22"
Rev "A"
Comp "Voltlog"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_Array:ULN2003 U?
U 1 1 603EDD28
P 4500 3450
AR Path="/603EDD28" Ref="U?"  Part="1" 
AR Path="/603E46ED/603EDD28" Ref="U4"  Part="1" 
F 0 "U4" H 4500 4117 50  0000 C CNN
F 1 "ULN2003AD" H 4500 4026 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 4550 2900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 4600 3250 50  0001 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603EDD49
P 4500 4050
AR Path="/603EDD49" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/603EDD49" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 4500 3800 50  0001 C CNN
F 1 "GND" H 4505 3877 50  0000 C CNN
F 2 "" H 4500 4050 50  0001 C CNN
F 3 "" H 4500 4050 50  0001 C CNN
	1    4500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 603EDD4F
P 4900 2750
AR Path="/603EDD4F" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/603EDD4F" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4900 2600 50  0001 C CNN
F 1 "+5V" H 4915 2923 50  0000 C CNN
F 2 "" H 4900 2750 50  0001 C CNN
F 3 "" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3050 4900 2750
Wire Wire Line
	4100 3650 4000 3650
Wire Wire Line
	4100 3450 4000 3450
$Comp
L Device:C C?
U 1 1 603EDDED
P 4450 2200
AR Path="/603EDDED" Ref="C?"  Part="1" 
AR Path="/603E46ED/603EDDED" Ref="C12"  Part="1" 
F 0 "C12" H 4565 2246 50  0000 L CNN
F 1 "0.1uF" H 4565 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 2050 50  0001 C CNN
F 3 "~" H 4450 2200 50  0001 C CNN
	1    4450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 603EDDF3
P 4450 2050
AR Path="/603EDDF3" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/603EDDF3" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 4450 1900 50  0001 C CNN
F 1 "+5V" H 4465 2223 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603EDDF9
P 4450 2350
AR Path="/603EDDF9" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/603EDDF9" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 4450 2100 50  0001 C CNN
F 1 "GND" H 4455 2177 50  0000 C CNN
F 2 "" H 4450 2350 50  0001 C CNN
F 3 "" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
Text HLabel 2400 3400 0    50   Input ~ 0
CH1
Text HLabel 2400 3500 0    50   Input ~ 0
CH2
Text HLabel 2400 3600 0    50   Input ~ 0
CH3
Text HLabel 2400 3700 0    50   Input ~ 0
CH4
Wire Wire Line
	6800 3250 6800 2350
Wire Wire Line
	6800 2350 7550 2350
Wire Wire Line
	7550 2350 7550 2250
Wire Wire Line
	7550 3450 7550 3400
Wire Wire Line
	6800 4650 7550 4650
Wire Wire Line
	7550 4650 7550 4550
Wire Wire Line
	6550 3850 6550 5800
Wire Wire Line
	6550 5800 7550 5800
Wire Wire Line
	7550 5800 7550 5700
Wire Wire Line
	6800 3650 6800 4650
Text Label 5000 3250 0    50   ~ 0
O1
Text Label 5000 3450 0    50   ~ 0
O2
Text Label 5000 3650 0    50   ~ 0
O3
Text Label 5000 3850 0    50   ~ 0
O4
Text Label 3950 3250 0    50   ~ 0
I1
Text Label 3950 3450 0    50   ~ 0
I2
Text Label 3950 3650 0    50   ~ 0
I3
Text Label 3950 3850 0    50   ~ 0
I4
$Comp
L power:+5V #PWR?
U 1 1 60401723
P 7550 1650
AR Path="/60401723" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60401723" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 7550 1500 50  0001 C CNN
F 1 "+5V" H 7565 1823 50  0000 C CNN
F 2 "" H 7550 1650 50  0001 C CNN
F 3 "" H 7550 1650 50  0001 C CNN
	1    7550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60401AA9
P 7550 2800
AR Path="/60401AA9" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60401AA9" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 7550 2650 50  0001 C CNN
F 1 "+5V" H 7565 2973 50  0000 C CNN
F 2 "" H 7550 2800 50  0001 C CNN
F 3 "" H 7550 2800 50  0001 C CNN
	1    7550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60401FA9
P 7550 3950
AR Path="/60401FA9" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60401FA9" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 7550 3800 50  0001 C CNN
F 1 "+5V" H 7565 4123 50  0000 C CNN
F 2 "" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0001 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60402325
P 7550 5100
AR Path="/60402325" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60402325" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 7550 4950 50  0001 C CNN
F 1 "+5V" H 7565 5273 50  0000 C CNN
F 2 "" H 7550 5100 50  0001 C CNN
F 3 "" H 7550 5100 50  0001 C CNN
	1    7550 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60402ED8
P 7000 3100
F 0 "C14" H 6885 3054 50  0000 R CNN
F 1 "10uF" H 6885 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7038 2950 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 2950 7000 2800
Wire Wire Line
	7000 2800 7550 2800
$Comp
L power:GND #PWR?
U 1 1 60404715
P 7000 3250
AR Path="/60404715" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60404715" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 7000 3000 50  0001 C CNN
F 1 "GND" H 7005 3077 50  0000 C CNN
F 2 "" H 7000 3250 50  0001 C CNN
F 3 "" H 7000 3250 50  0001 C CNN
	1    7000 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 60405176
P 7000 4250
F 0 "C15" H 6885 4204 50  0000 R CNN
F 1 "10uF" H 6885 4295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7038 4100 50  0001 C CNN
F 3 "~" H 7000 4250 50  0001 C CNN
	1    7000 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4100 7000 3950
Wire Wire Line
	7000 3950 7550 3950
$Comp
L power:GND #PWR?
U 1 1 6040517E
P 7000 4400
AR Path="/6040517E" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/6040517E" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 7000 4150 50  0001 C CNN
F 1 "GND" H 7005 4227 50  0000 C CNN
F 2 "" H 7000 4400 50  0001 C CNN
F 3 "" H 7000 4400 50  0001 C CNN
	1    7000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 604065B4
P 7000 5400
F 0 "C16" H 6885 5354 50  0000 R CNN
F 1 "10uF" H 6885 5445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7038 5250 50  0001 C CNN
F 3 "~" H 7000 5400 50  0001 C CNN
	1    7000 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 5250 7000 5100
Wire Wire Line
	7000 5100 7550 5100
$Comp
L power:GND #PWR?
U 1 1 604065BC
P 7000 5550
AR Path="/604065BC" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/604065BC" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 7000 5300 50  0001 C CNN
F 1 "GND" H 7005 5377 50  0000 C CNN
F 2 "" H 7000 5550 50  0001 C CNN
F 3 "" H 7000 5550 50  0001 C CNN
	1    7000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60407E9E
P 7000 1950
F 0 "C13" H 6885 1904 50  0000 R CNN
F 1 "10uF" H 6885 1995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7038 1800 50  0001 C CNN
F 3 "~" H 7000 1950 50  0001 C CNN
	1    7000 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 1800 7000 1650
Wire Wire Line
	7000 1650 7550 1650
$Comp
L power:GND #PWR?
U 1 1 60407EA6
P 7000 2100
AR Path="/60407EA6" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/60407EA6" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 7000 1850 50  0001 C CNN
F 1 "GND" H 7005 1927 50  0000 C CNN
F 2 "" H 7000 2100 50  0001 C CNN
F 3 "" H 7000 2100 50  0001 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1950 8850 1950
Wire Wire Line
	8050 1650 8600 1650
Wire Wire Line
	8600 1650 8600 2050
Wire Wire Line
	8600 2050 8850 2050
Wire Wire Line
	7850 1650 7850 1550
Wire Wire Line
	7850 1550 8700 1550
Wire Wire Line
	8700 1550 8700 1850
Wire Wire Line
	8700 1850 8850 1850
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 6040EFD4
P 9050 3100
F 0 "J9" H 9130 3142 50  0000 L CNN
F 1 "CH2" H 9130 3051 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-3-5.08_1x03_P5.08mm_Horizontal" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
F 4 "Ningbo_WJ103" H 9050 3100 50  0001 C CNN "Mfr"
	1    9050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3100 8850 3100
Wire Wire Line
	8050 2800 8600 2800
Wire Wire Line
	8600 2800 8600 3200
Wire Wire Line
	8600 3200 8850 3200
Wire Wire Line
	7850 2700 8700 2700
Wire Wire Line
	8700 2700 8700 3000
Wire Wire Line
	8700 3000 8850 3000
$Comp
L Connector:Screw_Terminal_01x03 J10
U 1 1 60411361
P 9050 4250
F 0 "J10" H 9130 4292 50  0000 L CNN
F 1 "CH3" H 9130 4201 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-3-5.08_1x03_P5.08mm_Horizontal" H 9050 4250 50  0001 C CNN
F 3 "~" H 9050 4250 50  0001 C CNN
F 4 "Ningbo_WJ103" H 9050 4250 50  0001 C CNN "MFr"
	1    9050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4250 8850 4250
Wire Wire Line
	8050 3950 8600 3950
Wire Wire Line
	8600 3950 8600 4350
Wire Wire Line
	8600 4350 8850 4350
Wire Wire Line
	7850 3850 8700 3850
Wire Wire Line
	8700 3850 8700 4150
Wire Wire Line
	8700 4150 8850 4150
$Comp
L Connector:Screw_Terminal_01x03 J11
U 1 1 60413E62
P 9050 5400
F 0 "J11" H 9130 5442 50  0000 L CNN
F 1 "CH4" H 9130 5351 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-3-5.08_1x03_P5.08mm_Horizontal" H 9050 5400 50  0001 C CNN
F 3 "~" H 9050 5400 50  0001 C CNN
F 4 "Ningbo_WJ103" H 9050 5400 50  0001 C CNN "Mfr"
	1    9050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5400 8850 5400
Wire Wire Line
	8050 5100 8600 5100
Wire Wire Line
	8600 5100 8600 5500
Wire Wire Line
	8600 5500 8850 5500
Wire Wire Line
	7850 5000 8700 5000
Wire Wire Line
	8700 5000 8700 5300
Wire Wire Line
	8700 5300 8850 5300
Wire Wire Line
	7850 5000 7850 5100
Wire Wire Line
	7850 3850 7850 3950
Wire Wire Line
	7850 2700 7850 2800
$Comp
L Device:LED D3
U 1 1 6044822B
P 5400 2300
F 0 "D3" V 5439 2182 50  0000 R CNN
F 1 "CH1" V 5348 2182 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5400 2300 50  0001 C CNN
F 3 "~" H 5400 2300 50  0001 C CNN
	1    5400 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 6044895B
P 5750 2300
F 0 "D4" V 5789 2182 50  0000 R CNN
F 1 "CH2" V 5698 2182 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5750 2300 50  0001 C CNN
F 3 "~" H 5750 2300 50  0001 C CNN
	1    5750 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 60448D87
P 6100 2300
F 0 "D5" V 6139 2182 50  0000 R CNN
F 1 "CH3" V 6048 2182 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6100 2300 50  0001 C CNN
F 3 "~" H 6100 2300 50  0001 C CNN
	1    6100 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 6044916C
P 6450 2300
F 0 "D6" V 6489 2182 50  0000 R CNN
F 1 "CH4" V 6398 2182 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6450 2300 50  0001 C CNN
F 3 "~" H 6450 2300 50  0001 C CNN
	1    6450 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2150 6450 1950
Wire Wire Line
	6450 1950 6100 1950
Wire Wire Line
	5400 1950 5400 2150
Wire Wire Line
	5750 2150 5750 1950
Connection ~ 5750 1950
Wire Wire Line
	5750 1950 5400 1950
Wire Wire Line
	6100 2150 6100 1950
Connection ~ 6100 1950
Wire Wire Line
	6100 1950 5750 1950
$Comp
L power:+5V #PWR?
U 1 1 604716A1
P 5400 1750
AR Path="/604716A1" Ref="#PWR?"  Part="1" 
AR Path="/603E46ED/604716A1" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5400 1600 50  0001 C CNN
F 1 "+5V" H 5415 1923 50  0000 C CNN
F 2 "" H 5400 1750 50  0001 C CNN
F 3 "" H 5400 1750 50  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1950 5400 1750
Connection ~ 5400 1950
Wire Notes Line
	7750 6000 10650 6000
Wire Notes Line
	10650 6000 10650 900 
Wire Notes Line
	10650 900  7750 900 
Wire Notes Line
	7750 900  7750 6000
Text Notes 8600 1200 0    98   ~ 20
High Voltage Zone
$Comp
L Graphic:SYM_Flash_Large #SYM1
U 1 1 6047BBF3
P 9250 1450
F 0 "#SYM1" V 9100 1450 50  0001 C CNN
F 1 "SYM_Flash_Large" V 9380 1450 50  0001 C CNN
F 2 "" H 9240 1360 50  0001 C CNN
F 3 "~" H 9650 1350 50  0001 C CNN
	1    9250 1450
	1    0    0    -1  
$EndComp
Text Notes 5700 1600 0    100  ~ 20
Status LED
Wire Notes Line
	5100 1400 5100 2900
Wire Notes Line
	6750 2900 6750 1400
Wire Notes Line
	6750 1400 5100 1400
Wire Notes Line
	5100 2900 6750 2900
$Comp
L Device:Fuse F2
U 1 1 6036A808
P 8350 2350
F 0 "F2" V 8450 2350 50  0000 C CNN
F 1 "Fuse" V 8244 2350 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 8280 2350 50  0001 C CNN
F 3 "~" H 8350 2350 50  0001 C CNN
	1    8350 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 2250 7950 2350
Wire Wire Line
	7950 2350 8200 2350
Wire Wire Line
	8500 2350 8700 2350
Wire Wire Line
	8700 1950 8700 2350
$Comp
L Device:Fuse F3
U 1 1 60379B78
P 8350 3500
F 0 "F3" V 8450 3500 50  0000 C CNN
F 1 "Fuse" V 8244 3500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 8280 3500 50  0001 C CNN
F 3 "~" H 8350 3500 50  0001 C CNN
	1    8350 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3400 7950 3500
Wire Wire Line
	7950 3500 8200 3500
Wire Wire Line
	8500 3500 8700 3500
$Comp
L Device:Fuse F4
U 1 1 60384A04
P 8350 4650
F 0 "F4" V 8450 4650 50  0000 C CNN
F 1 "Fuse" V 8244 4650 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 8280 4650 50  0001 C CNN
F 3 "~" H 8350 4650 50  0001 C CNN
	1    8350 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 4550 7950 4650
Wire Wire Line
	7950 4650 8200 4650
Wire Wire Line
	8500 4650 8700 4650
$Comp
L Device:Fuse F5
U 1 1 60388703
P 8350 5800
F 0 "F5" V 8450 5800 50  0000 C CNN
F 1 "Fuse" V 8244 5800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 8280 5800 50  0001 C CNN
F 3 "~" H 8350 5800 50  0001 C CNN
	1    8350 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 5700 7950 5800
Wire Wire Line
	7950 5800 8200 5800
Wire Wire Line
	8500 5800 8700 5800
Wire Wire Line
	8700 5400 8700 5800
Wire Wire Line
	8700 4250 8700 4650
Wire Wire Line
	8700 3100 8700 3500
$Comp
L Device:R_Pack04 RN3
U 1 1 6039B4D4
P 6000 2900
F 0 "RN3" H 6188 2946 50  0000 L CNN
F 1 "2K" H 6188 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 6275 2900 50  0001 C CNN
F 3 "~" H 6000 2900 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3250 5000 3250
Wire Wire Line
	4900 3450 5000 3450
Wire Wire Line
	4900 3650 5000 3650
Wire Wire Line
	4900 3850 6100 3850
Wire Wire Line
	5800 2700 5800 2650
Wire Wire Line
	5800 2650 5400 2650
Wire Wire Line
	5400 2650 5400 2450
Wire Wire Line
	6100 2700 6100 2650
Wire Wire Line
	6100 2650 6450 2650
Wire Wire Line
	6450 2650 6450 2450
Wire Wire Line
	6100 2450 6100 2550
Wire Wire Line
	6100 2550 6000 2550
Wire Wire Line
	6000 2550 6000 2700
Wire Wire Line
	5900 2700 5900 2550
Wire Wire Line
	5900 2550 5750 2550
Wire Wire Line
	5750 2550 5750 2450
Wire Wire Line
	5800 3100 5800 3250
Connection ~ 5800 3250
Wire Wire Line
	5800 3250 6800 3250
Wire Wire Line
	5900 3100 5900 3450
Connection ~ 5900 3450
Wire Wire Line
	5900 3450 7550 3450
Wire Wire Line
	6000 3100 6000 3650
Connection ~ 6000 3650
Wire Wire Line
	6000 3650 6800 3650
Wire Wire Line
	6100 3100 6100 3850
Connection ~ 6100 3850
Wire Wire Line
	6100 3850 6550 3850
$Comp
L Device:R_Pack04 RN1
U 1 1 603C5A72
P 2600 3600
F 0 "RN1" V 2183 3600 50  0000 C CNN
F 1 "270R" V 2274 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 2875 3600 50  0001 C CNN
F 3 "~" H 2600 3600 50  0001 C CNN
	1    2600 3600
	0    1    1    0   
$EndComp
$Comp
L Relay:FINDER-36.11 K1
U 1 1 6051A57E
P 7750 1950
F 0 "K1" H 8180 1996 50  0000 L CNN
F 1 "FINDER-36.11" H 8180 1905 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 9020 1920 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Connection ~ 7550 1650
$Comp
L Relay:FINDER-36.11 K2
U 1 1 6051C2E2
P 7750 3100
F 0 "K2" H 8180 3146 50  0000 L CNN
F 1 "FINDER-36.11" H 8180 3055 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 9020 3070 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
Connection ~ 7550 2800
$Comp
L Relay:FINDER-36.11 K3
U 1 1 6051D060
P 7750 4250
F 0 "K3" H 8180 4296 50  0000 L CNN
F 1 "FINDER-36.11" H 8180 4205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 9020 4220 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 7750 4250 50  0001 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Connection ~ 7550 3950
$Comp
L Relay:FINDER-36.11 K4
U 1 1 6051E318
P 7750 5400
F 0 "K4" H 8180 5446 50  0000 L CNN
F 1 "FINDER-36.11" H 8180 5355 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 9020 5370 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/36/EN/S36EN.pdf" H 7750 5400 50  0001 C CNN
	1    7750 5400
	1    0    0    -1  
$EndComp
Connection ~ 7550 5100
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 6040947E
P 9050 1950
F 0 "J8" H 9130 1992 50  0000 L CNN
F 1 "CH1" H 9130 1901 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-3-5.08_1x03_P5.08mm_Horizontal" H 9050 1950 50  0001 C CNN
F 3 "~" H 9050 1950 50  0001 C CNN
F 4 "Ningbo_WJ103" H 9050 1950 50  0001 C CNN "Mfr"
	1    9050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3350 4000 3350
Wire Wire Line
	4000 3350 4000 3250
Connection ~ 4000 3250
Wire Wire Line
	4000 3250 4100 3250
Wire Wire Line
	4100 3550 4000 3550
Wire Wire Line
	4000 3550 4000 3450
Connection ~ 4000 3450
Wire Wire Line
	4100 3750 4000 3750
Wire Wire Line
	4000 3750 4000 3650
Connection ~ 4000 3650
Wire Wire Line
	4900 3350 5000 3350
Wire Wire Line
	5000 3350 5000 3250
Connection ~ 5000 3250
Wire Wire Line
	5000 3250 5800 3250
Wire Wire Line
	4900 3550 5000 3550
Wire Wire Line
	5000 3550 5000 3450
Connection ~ 5000 3450
Wire Wire Line
	5000 3450 5900 3450
Wire Wire Line
	4900 3750 5000 3750
Wire Wire Line
	5000 3750 5000 3650
Connection ~ 5000 3650
Wire Wire Line
	5000 3650 6000 3650
Wire Wire Line
	3200 3400 3200 3250
Wire Wire Line
	3200 3250 4000 3250
Wire Wire Line
	2800 3400 3200 3400
Wire Wire Line
	2800 3500 3350 3500
Wire Wire Line
	3350 3500 3350 3450
Wire Wire Line
	3350 3450 4000 3450
Wire Wire Line
	2800 3600 3350 3600
Wire Wire Line
	3350 3600 3350 3650
Wire Wire Line
	3350 3650 4000 3650
Wire Wire Line
	3200 3700 3200 3850
Wire Wire Line
	3200 3850 4100 3850
Wire Wire Line
	2800 3700 3200 3700
$EndSCHEMATC
