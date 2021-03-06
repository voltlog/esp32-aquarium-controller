EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Voltlog Aquarium Terarrium Controller"
Date "2021-04-19"
Rev "A"
Comp "Voltlog"
Comment1 "As seen in Voltlog #361"
Comment2 "License: GPLv3"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 60337CCE
P 2500 3400
F 0 "U1" H 2700 4900 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 3050 4800 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2500 1900 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 2200 3450 50  0001 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 60338A0D
P 8500 2950
F 0 "C10" H 8615 2996 50  0000 L CNN
F 1 "0.1uF" H 8615 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8538 2800 50  0001 C CNN
F 3 "~" H 8500 2950 50  0001 C CNN
	1    8500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 603390C2
P 8500 2500
F 0 "R6" H 8568 2546 50  0000 L CNN
F 1 "10K" H 8568 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8540 2490 50  0001 C CNN
F 3 "~" H 8500 2500 50  0001 C CNN
	1    8500 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 603398D9
P 9500 1200
F 0 "D2" H 9493 1417 50  0000 C CNN
F 1 "POWER" H 9493 1326 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9500 1200 50  0001 C CNN
F 3 "~" H 9500 1200 50  0001 C CNN
	1    9500 1200
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 6033D96F
P 8950 2700
F 0 "SW1" H 9000 2600 50  0000 C CNN
F 1 "USER" H 9000 2850 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 8950 2700 50  0001 C CNN
F 3 "~" H 8950 2700 50  0001 C CNN
	1    8950 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 6033DACD
P 9500 1500
F 0 "R7" V 9295 1500 50  0000 C CNN
F 1 "1K" V 9386 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9540 1490 50  0001 C CNN
F 3 "~" H 9500 1500 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6033EB51
P 1400 3250
F 0 "C3" H 1515 3296 50  0000 L CNN
F 1 "22uF" H 1515 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1438 3100 50  0001 C CNN
F 3 "~" H 1400 3250 50  0001 C CNN
	1    1400 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6033EEE4
P 950 3250
F 0 "C1" H 1065 3296 50  0000 L CNN
F 1 "0.1uF" H 1065 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 988 3100 50  0001 C CNN
F 3 "~" H 950 3250 50  0001 C CNN
	1    950  3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6033F5C5
P 1400 2350
F 0 "C2" H 1515 2396 50  0000 L CNN
F 1 "0.1uF" H 1515 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1438 2200 50  0001 C CNN
F 3 "~" H 1400 2350 50  0001 C CNN
	1    1400 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 6033F962
P 1400 2050
F 0 "R1" H 1468 2096 50  0000 L CNN
F 1 "10K" H 1468 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1440 2040 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60340285
P 1400 2500
F 0 "#PWR02" H 1400 2250 50  0001 C CNN
F 1 "GND" H 1405 2327 50  0000 C CNN
F 2 "" H 1400 2500 50  0001 C CNN
F 3 "" H 1400 2500 50  0001 C CNN
	1    1400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2200 1400 2200
Connection ~ 1400 2200
$Comp
L power:+3V3 #PWR01
U 1 1 60340C0B
P 1400 1900
F 0 "#PWR01" H 1400 1750 50  0001 C CNN
F 1 "+3V3" H 1415 2073 50  0000 C CNN
F 2 "" H 1400 1900 50  0001 C CNN
F 3 "" H 1400 1900 50  0001 C CNN
	1    1400 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 60341465
P 2500 2000
F 0 "#PWR05" H 2500 1850 50  0001 C CNN
F 1 "+3V3" H 2515 2173 50  0000 C CNN
F 2 "" H 2500 2000 50  0001 C CNN
F 3 "" H 2500 2000 50  0001 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 603418FD
P 2500 4800
F 0 "#PWR06" H 2500 4550 50  0001 C CNN
F 1 "GND" H 2505 4627 50  0000 C CNN
F 2 "" H 2500 4800 50  0001 C CNN
F 3 "" H 2500 4800 50  0001 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
NoConn ~ 1900 3400
NoConn ~ 1900 3500
NoConn ~ 1900 3600
NoConn ~ 1900 3700
NoConn ~ 1900 3800
NoConn ~ 1900 3900
Wire Wire Line
	950  3400 1400 3400
Wire Wire Line
	950  3100 1400 3100
$Comp
L power:+3V3 #PWR03
U 1 1 603427B1
P 1400 3100
F 0 "#PWR03" H 1400 2950 50  0001 C CNN
F 1 "+3V3" H 1415 3273 50  0000 C CNN
F 2 "" H 1400 3100 50  0001 C CNN
F 3 "" H 1400 3100 50  0001 C CNN
	1    1400 3100
	1    0    0    -1  
$EndComp
Connection ~ 1400 3100
$Comp
L power:GND #PWR04
U 1 1 60342B1B
P 1400 3400
F 0 "#PWR04" H 1400 3150 50  0001 C CNN
F 1 "GND" H 1405 3227 50  0000 C CNN
F 2 "" H 1400 3400 50  0001 C CNN
F 3 "" H 1400 3400 50  0001 C CNN
	1    1400 3400
	1    0    0    -1  
$EndComp
Connection ~ 1400 3400
Wire Wire Line
	3450 2200 3100 2200
Wire Wire Line
	3450 2300 3100 2300
Wire Wire Line
	3450 2500 3100 2500
Text Label 3450 2200 2    50   ~ 0
IO0
Text Label 3450 2300 2    50   ~ 0
TX
Text Label 3450 2500 2    50   ~ 0
RX
Text Notes 1650 4450 2    50   ~ 0
Strapping pins\n??? MTDI = IO12\n??? GPIO0 = IO0\n??? GPIO2 = IO2\n??? MTDO = IO15\n??? GPIO5 = IO5
$Comp
L Device:C C8
U 1 1 6034C6E9
P 7350 1150
F 0 "C8" H 7400 1250 50  0000 L CNN
F 1 "0.1uF" H 7400 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7388 1000 50  0001 C CNN
F 3 "~" H 7350 1150 50  0001 C CNN
	1    7350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6034C988
P 7050 1150
F 0 "C7" H 7100 1250 50  0000 L CNN
F 1 "10uF" H 7100 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7088 1000 50  0001 C CNN
F 3 "~" H 7050 1150 50  0001 C CNN
	1    7050 1150
	1    0    0    -1  
$EndComp
$Comp
L voltlog:VOLTLOG_LOGO V1
U 1 1 603C23A4
P 7150 6650
F 0 "V1" H 7150 6520 60  0001 C CNN
F 1 "VOLTLOG_LOGO" H 7150 6780 60  0001 C CNN
F 2 "Voltlog:voltlog_mask_5mm" H 7150 6650 50  0001 C CNN
F 3 "" H 7150 6650 50  0001 C CNN
	1    7150 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 603C29AB
P 7150 6350
F 0 "FID1" H 7235 6396 50  0000 L CNN
F 1 "Fiducial" H 7235 6305 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 7150 6350 50  0001 C CNN
F 3 "~" H 7150 6350 50  0001 C CNN
	1    7150 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 603C3575
P 7700 6350
F 0 "FID2" H 7785 6396 50  0000 L CNN
F 1 "Fiducial" H 7785 6305 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 7700 6350 50  0001 C CNN
F 3 "~" H 7700 6350 50  0001 C CNN
	1    7700 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 603C36A0
P 8250 6350
F 0 "FID3" H 8335 6396 50  0000 L CNN
F 1 "Fiducial" H 8335 6305 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1mm" H 8250 6350 50  0001 C CNN
F 3 "~" H 8250 6350 50  0001 C CNN
	1    8250 6350
	1    0    0    -1  
$EndComp
$Sheet
S 4500 5700 1300 1450
U 603E46ED
F0 "Relay" 100
F1 "relay.sch" 50
F2 "CH1" I L 4500 5950 50 
F3 "CH2" I L 4500 6250 50 
F4 "CH3" I L 4500 6550 50 
F5 "CH4" I L 4500 6850 50 
$EndSheet
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60483075
P 7700 4600
F 0 "J4" H 7780 4592 50  0000 L CNN
F 1 "I2C" H 7780 4501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 4600 50  0001 C CNN
F 3 "~" H 7700 4600 50  0001 C CNN
	1    7700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4500 7500 4500
Wire Wire Line
	7200 4600 7500 4600
Wire Wire Line
	7200 4700 7500 4700
Wire Wire Line
	7200 4800 7500 4800
Text Label 7200 4500 0    50   ~ 0
+3V3
Text Label 7200 4600 0    50   ~ 0
SCL
Text Label 7200 4700 0    50   ~ 0
SDA
Text Label 7200 4800 0    50   ~ 0
GND
Wire Wire Line
	7050 5800 7400 5800
Wire Wire Line
	7050 5700 7400 5700
Wire Wire Line
	7050 5600 7400 5600
Wire Wire Line
	7050 5500 7400 5500
Wire Wire Line
	7050 5400 7400 5400
Wire Wire Line
	7050 5300 7400 5300
Text Label 7050 5800 0    50   ~ 0
EN
Text Label 7050 5700 0    50   ~ 0
IO0
Text Label 7050 5600 0    50   ~ 0
RX
Text Label 7050 5500 0    50   ~ 0
TX
Text Label 7050 5400 0    50   ~ 0
GND
Text Label 7050 5300 0    50   ~ 0
+3V3
$Comp
L voltlog:TAS5-5-W PS1
U 1 1 60491D79
P 5350 1100
F 0 "PS1" H 5350 1425 50  0000 C CNN
F 1 "TAS5-5-W" H 5350 1334 50  0000 C CNN
F 2 "Voltlog:TDPOWER-TAS5" H 5350 800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2006291511_TDPOWER-TAS5-5-W_C570968.pdf" H 5750 750 50  0001 C CNN
	1    5350 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60494DAB
P 3350 1150
F 0 "J1" H 3268 825 50  0000 C CNN
F 1 "AC_IN" H 3268 916 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 3350 1150 50  0001 C CNN
F 3 "~" H 3350 1150 50  0001 C CNN
	1    3350 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 60495A52
P 3850 800
F 0 "F1" V 3653 800 50  0000 C CNN
F 1 "250V 0.5A (slow)" V 3744 800 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 3780 800 50  0001 C CNN
F 3 "~" H 3850 800 50  0001 C CNN
	1    3850 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1050 3700 1050
Wire Wire Line
	3550 1150 3700 1150
Wire Wire Line
	3700 1150 3700 1200
Wire Wire Line
	3700 1200 4250 1200
Connection ~ 7050 1000
Wire Wire Line
	7050 1000 7350 1000
Connection ~ 7350 1000
$Comp
L power:GND #PWR013
U 1 1 6049AE13
P 7950 1400
F 0 "#PWR013" H 7950 1150 50  0001 C CNN
F 1 "GND" H 7955 1227 50  0000 C CNN
F 2 "" H 7950 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1300 7050 1400
Wire Wire Line
	7350 1300 7350 1400
$Comp
L power:GND #PWR08
U 1 1 6049D586
P 5950 1400
F 0 "#PWR08" H 5950 1150 50  0001 C CNN
F 1 "GND" H 5955 1227 50  0000 C CNN
F 2 "" H 5950 1400 50  0001 C CNN
F 3 "" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 604A857A
P 8500 900
F 0 "#PWR014" H 8500 750 50  0001 C CNN
F 1 "+3V3" H 8515 1073 50  0000 C CNN
F 2 "" H 8500 900 50  0001 C CNN
F 3 "" H 8500 900 50  0001 C CNN
	1    8500 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1000 8500 900 
Connection ~ 8500 1000
Wire Wire Line
	9500 1000 9500 1050
Wire Wire Line
	9500 1700 9500 1650
Wire Wire Line
	9150 2700 9350 2700
Wire Wire Line
	9350 2700 9350 2850
$Comp
L power:GND #PWR017
U 1 1 604C4FBF
P 9350 2850
F 0 "#PWR017" H 9350 2600 50  0001 C CNN
F 1 "GND" H 9355 2677 50  0000 C CNN
F 2 "" H 9350 2850 50  0001 C CNN
F 3 "" H 9350 2850 50  0001 C CNN
	1    9350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2650 8500 2700
Wire Wire Line
	8750 2700 8500 2700
Connection ~ 8500 2700
Wire Wire Line
	8500 2700 8500 2800
$Comp
L power:GND #PWR016
U 1 1 604C8C9B
P 8500 3100
F 0 "#PWR016" H 8500 2850 50  0001 C CNN
F 1 "GND" H 8505 2927 50  0000 C CNN
F 2 "" H 8500 3100 50  0001 C CNN
F 3 "" H 8500 3100 50  0001 C CNN
	1    8500 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 604C8EB0
P 8500 2350
F 0 "#PWR015" H 8500 2200 50  0001 C CNN
F 1 "+3V3" H 8515 2523 50  0000 C CNN
F 2 "" H 8500 2350 50  0001 C CNN
F 3 "" H 8500 2350 50  0001 C CNN
	1    8500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2700 8500 2700
$Comp
L Device:C C5
U 1 1 604E62B5
P 6350 2750
F 0 "C5" H 6100 2800 50  0000 L CNN
F 1 "0.1uF" H 6100 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 2600 50  0001 C CNN
F 3 "~" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 604E996B
P 6350 2900
F 0 "#PWR010" H 6350 2650 50  0001 C CNN
F 1 "GND" H 6355 2727 50  0000 C CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2500 6850 2500
$Comp
L Device:R_US R4
U 1 1 604FE103
P 6150 2450
F 0 "R4" H 6218 2496 50  0000 L CNN
F 1 "4K7" H 6218 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6190 2440 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
	1    6150 2450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 605079CF
P 6350 2600
F 0 "#PWR09" H 6350 2450 50  0001 C CNN
F 1 "+3V3" H 6365 2773 50  0000 C CNN
F 2 "" H 6350 2600 50  0001 C CNN
F 3 "" H 6350 2600 50  0001 C CNN
	1    6350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4100 3100 4100
Text Label 3500 4100 2    50   ~ 0
IO27
Text Label 6650 2500 0    50   ~ 0
IO16
Wire Wire Line
	3500 4000 3100 4000
Text Label 3500 4000 2    50   ~ 0
IO26
Text Label 3450 3600 2    50   ~ 0
SDA
Text Label 3450 3700 2    50   ~ 0
SCL
$Comp
L Device:R_US R2
U 1 1 6052A75B
P 3650 3450
F 0 "R2" H 3718 3496 50  0000 L CNN
F 1 "4K7" H 3718 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3690 3440 50  0001 C CNN
F 3 "~" H 3650 3450 50  0001 C CNN
F 4 "" H 3800 3300 50  0000 C CNN "Assembly"
	1    3650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 6052AEED
P 3950 3450
F 0 "R3" H 4018 3496 50  0000 L CNN
F 1 "4K7" H 4018 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3990 3440 50  0001 C CNN
F 3 "~" H 3950 3450 50  0001 C CNN
F 4 "" H 4100 3300 50  0000 C CNN "Assembly"
	1    3950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3300 3650 3300
$Comp
L power:+3V3 #PWR07
U 1 1 6052E0CC
P 3650 3200
F 0 "#PWR07" H 3650 3050 50  0001 C CNN
F 1 "+3V3" H 3665 3373 50  0000 C CNN
F 2 "" H 3650 3200 50  0001 C CNN
F 3 "" H 3650 3200 50  0001 C CNN
	1    3650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3300 3650 3200
Connection ~ 3650 3300
Wire Wire Line
	3100 3600 3650 3600
Wire Wire Line
	3950 3700 3950 3600
Wire Wire Line
	3100 3700 3950 3700
Wire Wire Line
	3500 4200 3100 4200
Wire Wire Line
	3500 4300 3100 4300
Text Label 3500 4200 2    50   ~ 0
ADC1_CH4
Text Label 3500 4300 2    50   ~ 0
ADC1_CH5
Text Label 3500 4400 2    50   ~ 0
ADC1_CH6
Wire Wire Line
	3500 4400 3100 4400
Wire Wire Line
	3500 4500 3100 4500
Text Label 3500 4500 2    50   ~ 0
ADC1_CH7
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 60549C78
P 9300 4700
F 0 "J6" H 9380 4692 50  0000 L CNN
F 1 "ADC" H 9380 4601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9300 4700 50  0001 C CNN
F 3 "~" H 9300 4700 50  0001 C CNN
	1    9300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4500 9100 4500
Wire Wire Line
	8650 4600 9100 4600
Wire Wire Line
	8650 4700 9100 4700
Wire Wire Line
	8650 4800 9100 4800
Wire Wire Line
	8650 4900 9100 4900
Wire Wire Line
	8650 5000 9100 5000
Text Label 8650 4600 0    50   ~ 0
ADC1_CH5
Text Label 8650 4700 0    50   ~ 0
ADC1_CH4
Text Label 8650 4800 0    50   ~ 0
ADC1_CH7
Text Label 8650 4900 0    50   ~ 0
ADC1_CH6
Text Label 8650 4500 0    50   ~ 0
+3V3
Text Label 8650 5000 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x06 J7
U 1 1 605664E6
P 9300 5500
F 0 "J7" H 9380 5492 50  0000 L CNN
F 1 "GPIO" H 9380 5401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9300 5500 50  0001 C CNN
F 3 "~" H 9300 5500 50  0001 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5300 9100 5300
Wire Wire Line
	8650 5400 9100 5400
Wire Wire Line
	8650 5500 9100 5500
Wire Wire Line
	8650 5600 9100 5600
Wire Wire Line
	8650 5700 9100 5700
Wire Wire Line
	8650 5800 9100 5800
Text Label 8650 5300 0    50   ~ 0
+3V3
Text Label 8650 5800 0    50   ~ 0
GND
Wire Wire Line
	3450 3200 3100 3200
Wire Wire Line
	3450 3300 3100 3300
Wire Wire Line
	3450 3400 3100 3400
Wire Wire Line
	3450 3500 3100 3500
Text Label 3450 3500 2    50   ~ 0
IO19
Text Label 3450 3400 2    50   ~ 0
IO18
Text Label 3450 3300 2    50   ~ 0
IO17
Text Label 3450 3200 2    50   ~ 0
IO16
Text Label 8650 5400 0    50   ~ 0
IO5
Text Label 8650 5500 0    50   ~ 0
IO18
Text Label 8650 5600 0    50   ~ 0
IO19
Text Label 8650 5700 0    50   ~ 0
IO23
Wire Wire Line
	6850 2700 6600 2700
Wire Wire Line
	6600 2900 6350 2900
Wire Wire Line
	6600 2700 6600 2900
Connection ~ 6350 2900
Wire Wire Line
	6350 2600 6850 2600
Connection ~ 6350 2600
Wire Wire Line
	6350 2600 6150 2600
Wire Wire Line
	6600 2500 6600 2300
Wire Wire Line
	6600 2300 6150 2300
Text Label 6600 2600 0    50   ~ 0
+3V3
Text Label 6650 2700 0    50   ~ 0
GND
$Comp
L Device:C C6
U 1 1 603A2797
P 6350 3750
F 0 "C6" H 6100 3800 50  0000 L CNN
F 1 "0.1uF" H 6100 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 3600 50  0001 C CNN
F 3 "~" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 603A279D
P 6350 3900
F 0 "#PWR012" H 6350 3650 50  0001 C CNN
F 1 "GND" H 6355 3727 50  0000 C CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3500 6850 3500
$Comp
L Device:R_US R5
U 1 1 603A27A4
P 6150 3450
F 0 "R5" H 6218 3496 50  0000 L CNN
F 1 "4K7" H 6218 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6190 3440 50  0001 C CNN
F 3 "~" H 6150 3450 50  0001 C CNN
	1    6150 3450
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 603A27AA
P 6350 3600
F 0 "#PWR011" H 6350 3450 50  0001 C CNN
F 1 "+3V3" H 6365 3773 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Text Label 6650 3500 0    50   ~ 0
IO17
Wire Wire Line
	6850 3700 6600 3700
Wire Wire Line
	6600 3900 6350 3900
Wire Wire Line
	6600 3700 6600 3900
Connection ~ 6350 3900
Wire Wire Line
	6350 3600 6850 3600
Connection ~ 6350 3600
Wire Wire Line
	6350 3600 6150 3600
Wire Wire Line
	6600 3500 6600 3300
Wire Wire Line
	6600 3300 6150 3300
Text Label 6600 3600 0    50   ~ 0
+3V3
Text Label 6650 3700 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 603A27B1
P 7050 3600
F 0 "J3" H 7130 3642 50  0000 L CNN
F 1 "TH1" H 7130 3551 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00233_1x03_P5.08mm_Horizontal" H 7050 3600 50  0001 C CNN
F 3 "~" H 7050 3600 50  0001 C CNN
	1    7050 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6036229E
P 7050 2600
F 0 "J2" H 7130 2642 50  0000 L CNN
F 1 "TH2" H 7130 2551 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00233_1x03_P5.08mm_Horizontal" H 7050 2600 50  0001 C CNN
F 3 "~" H 7050 2600 50  0001 C CNN
	1    7050 2600
	1    0    0    -1  
$EndComp
Connection ~ 6450 1000
Wire Wire Line
	6450 1000 7050 1000
$Comp
L Device:D_TVS_ALT D1
U 1 1 60442E97
P 6450 1200
F 0 "D1" V 6300 1250 50  0000 L CNN
F 1 "SMBJ6.0A" V 6500 1250 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 6450 1200 50  0001 C CNN
F 3 "~" H 6450 1200 50  0001 C CNN
	1    6450 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 1050 6450 1000
Wire Wire Line
	6450 1350 6450 1400
$Comp
L Device:CP1 C4
U 1 1 6046B68D
P 6100 1150
F 0 "C4" H 6150 1250 50  0000 L CNN
F 1 "220uF" H 6150 1050 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 6100 1150 50  0001 C CNN
F 3 "~" H 6100 1150 50  0001 C CNN
F 4 "25V" H 6100 1150 50  0001 C CNN "Voltage"
	1    6100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1300 6100 1400
Wire Wire Line
	6100 1400 5950 1400
Wire Wire Line
	5750 1000 6100 1000
Wire Wire Line
	6100 1000 6450 1000
Connection ~ 6100 1000
Wire Wire Line
	6450 1400 6100 1400
Connection ~ 6100 1400
Wire Wire Line
	7050 1400 7350 1400
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U2
U 1 1 6049BB8C
P 7950 1000
F 0 "U2" H 7950 1242 50  0000 C CNN
F 1 "NCP1117-3.3_SOT223" H 7950 1151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7950 1200 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 8050 750 50  0001 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1000 7650 1000
Wire Wire Line
	7950 1400 7950 1300
Wire Wire Line
	8250 1000 8500 1000
$Comp
L Device:C C9
U 1 1 604BB3F1
P 8500 1150
F 0 "C9" H 8550 1250 50  0000 L CNN
F 1 "0.1uF" H 8550 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8538 1000 50  0001 C CNN
F 3 "~" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1400 8500 1400
Wire Wire Line
	8800 1400 8800 1300
Connection ~ 7950 1400
Wire Wire Line
	8500 1400 8500 1300
Connection ~ 8500 1400
Wire Wire Line
	8500 1400 8800 1400
Wire Wire Line
	7950 1400 7350 1400
Connection ~ 7350 1400
$Comp
L power:GND #PWR018
U 1 1 604CAB23
P 9500 1700
F 0 "#PWR018" H 9500 1450 50  0001 C CNN
F 1 "GND" H 9505 1527 50  0000 C CNN
F 2 "" H 9500 1700 50  0001 C CNN
F 3 "" H 9500 1700 50  0001 C CNN
	1    9500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1000 8800 1000
$Comp
L Device:C C11
U 1 1 604DA088
P 8800 1150
F 0 "C11" H 8850 1250 50  0000 L CNN
F 1 "10uF" H 8850 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8838 1000 50  0001 C CNN
F 3 "~" H 8800 1150 50  0001 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
Connection ~ 8800 1000
Wire Wire Line
	8800 1000 9500 1000
$Comp
L Mechanical:Housing N1
U 1 1 6037A12C
P 6450 7350
F 0 "N1" H 6603 7384 50  0000 L CNN
F 1 "Housing" H 6603 7293 50  0000 L CNN
F 2 "Voltlog:Bernic_BE4969842011" H 6500 7400 50  0001 C CNN
F 3 "~" H 6500 7400 50  0001 C CNN
	1    6450 7350
	1    0    0    -1  
$EndComp
Text Label 4800 800  0    20   ~ 0
L_FUSED
Text Label 4800 1200 0    20   ~ 0
N
Text Label 5900 1000 0    50   ~ 0
+5V
Wire Wire Line
	5750 1200 5850 1200
Wire Wire Line
	5850 1200 5850 1400
Wire Wire Line
	5850 1400 5950 1400
Connection ~ 5950 1400
$Comp
L Memory_NVRAM:FM24C64C U3
U 1 1 603CBEB9
P 2500 6300
F 0 "U3" H 2650 6800 50  0000 C CNN
F 1 "FM24C64C" H 2800 6700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 6300 50  0001 C CNN
F 3 "http://www.cypress.com/file/41651/download" H 2300 6650 50  0001 C CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 603CC3B3
P 1900 5950
F 0 "C17" H 1650 6000 50  0000 L CNN
F 1 "0.1uF" H 1650 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 5800 50  0001 C CNN
F 3 "~" H 1900 5950 50  0001 C CNN
	1    1900 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 603CCE23
P 2500 5700
F 0 "#PWR019" H 2500 5550 50  0001 C CNN
F 1 "+3V3" H 2515 5873 50  0000 C CNN
F 2 "" H 2500 5700 50  0001 C CNN
F 3 "" H 2500 5700 50  0001 C CNN
	1    2500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5900 2500 5800
Wire Wire Line
	1900 5800 2500 5800
Connection ~ 2500 5800
Wire Wire Line
	2500 5800 2500 5700
Wire Wire Line
	2100 6100 2100 6200
Wire Wire Line
	2100 6500 2100 6300
Wire Wire Line
	2100 6300 2100 6200
Connection ~ 2100 6300
Connection ~ 2100 6200
$Comp
L power:GND #PWR020
U 1 1 603E53E1
P 2500 6850
F 0 "#PWR020" H 2500 6600 50  0001 C CNN
F 1 "GND" H 2505 6677 50  0000 C CNN
F 2 "" H 2500 6850 50  0001 C CNN
F 3 "" H 2500 6850 50  0001 C CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6850 2500 6700
Wire Wire Line
	2500 6700 2100 6700
Wire Wire Line
	2100 6700 2100 6500
Connection ~ 2500 6700
Connection ~ 2100 6500
Wire Wire Line
	1900 6100 1900 6700
Wire Wire Line
	1900 6700 2100 6700
Connection ~ 2100 6700
Wire Wire Line
	3200 6200 2900 6200
Wire Wire Line
	3200 6400 2900 6400
Text Label 3200 6200 2    50   ~ 0
SDA
Text Label 3200 6400 2    50   ~ 0
SCL
Text Label 1750 2200 0    50   ~ 0
EN
Text Label 8200 2700 0    50   ~ 0
IO25
Wire Wire Line
	3500 3900 3100 3900
Text Label 3500 3900 2    50   ~ 0
IO25
Wire Wire Line
	3450 2900 3100 2900
Text Label 3450 2900 2    50   ~ 0
IO13
Wire Wire Line
	4150 6850 4500 6850
Text Label 4150 6850 0    50   ~ 0
IO13
Wire Wire Line
	4150 6550 4500 6550
Wire Wire Line
	4150 6250 4500 6250
Wire Wire Line
	4150 5950 4500 5950
Text Label 4150 6550 0    50   ~ 0
IO26
Text Label 4150 6250 0    50   ~ 0
IO27
Wire Wire Line
	3450 2600 3100 2600
Text Label 3450 2600 2    50   ~ 0
IO4
Text Label 4150 5950 0    50   ~ 0
IO4
Wire Wire Line
	3450 2700 3100 2700
Text Label 3450 2700 2    50   ~ 0
IO5
Wire Wire Line
	3500 3800 3100 3800
Text Label 3500 3800 2    50   ~ 0
IO23
$Comp
L Connector:TestPoint_Alt TP1
U 1 1 6049F634
P 4750 1550
F 0 "TP1" H 4692 1576 50  0000 R CNN
F 1 "Floating Ground" H 4692 1667 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 4950 1550 50  0001 C CNN
F 3 "~" H 4950 1550 50  0001 C CNN
	1    4750 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1100 4750 1100
Wire Wire Line
	4750 1100 4750 1550
$Comp
L Connector:TestPoint TP4
U 1 1 604D885D
P 8800 1000
F 0 "TP4" H 8858 1118 50  0000 L CNN
F 1 "3V3" H 8858 1027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9000 1000 50  0001 C CNN
F 3 "~" H 9000 1000 50  0001 C CNN
	1    8800 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 604D94E0
P 6450 1000
F 0 "TP2" H 6508 1118 50  0000 L CNN
F 1 "5V" H 6508 1027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 1000 50  0001 C CNN
F 3 "~" H 6650 1000 50  0001 C CNN
	1    6450 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 604D9D99
P 6450 1400
F 0 "TP3" H 6392 1426 50  0000 R CNN
F 1 "GND" H 6392 1517 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6650 1400 50  0001 C CNN
F 3 "~" H 6650 1400 50  0001 C CNN
	1    6450 1400
	-1   0    0    1   
$EndComp
Connection ~ 6450 1400
$Comp
L Device:Varistor RV1
U 1 1 603F900F
P 4250 1000
F 0 "RV1" H 4353 1046 50  0000 L CNN
F 1 "275V" H 4353 955 50  0000 L CNN
F 2 "Varistor:RV_Disc_D12mm_W5mm_P7.5mm" V 4180 1000 50  0001 C CNN
F 3 "https://store.comet.bg/download-file.php?id=4472" H 4250 1000 50  0001 C CNN
F 4 "B72210S0271K101" H 4250 1000 50  0001 C CNN "Mfr"
F 5 "S10K275" H 4250 1000 50  0001 C CNN "PN"
	1    4250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 800  3700 1050
Wire Wire Line
	4000 800  4250 800 
Wire Wire Line
	4950 800  4950 1000
Wire Wire Line
	4250 800  4250 850 
Connection ~ 4250 800 
Wire Wire Line
	4250 800  4950 800 
Wire Wire Line
	4250 1150 4250 1200
Connection ~ 4250 1200
Wire Wire Line
	4250 1200 4950 1200
$Comp
L Graphic:SYM_Flash_Large #SYM2
U 1 1 6051A252
P 5200 6400
F 0 "#SYM2" V 5050 6400 50  0001 C CNN
F 1 "SYM_Flash_Large" V 5330 6400 50  0001 C CNN
F 2 "" H 5190 6310 50  0001 C CNN
F 3 "~" H 5600 6300 50  0001 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
$Comp
L voltlog:VoltLink_target J5
U 1 1 604F8B78
P 7650 5550
F 0 "J5" H 7778 5596 50  0000 L CNN
F 1 "VoltLink_target" H 7778 5505 50  0000 L CNN
F 2 "Voltlog:VoltLink" H 7750 6050 50  0001 C CNN
F 3 "" H 7750 6050 50  0001 C CNN
	1    7650 5550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
