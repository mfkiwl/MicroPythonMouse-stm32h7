EESchema Schematic File Version 4
LIBS:micromouse-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  7650 0    50   ~ 0
derived from Futura-project\n\nsingle-LED:\n10 Ohm\nV=5V\nVf = 1.7V @ 330mA (SFH4545)\nVr = 330mA * 10 Ohm = 3.3V\n\ntwo LEDs in series:\n5.6 Ohm | 5.6 Ohm = 2.8 Ohm\nVf = 1.8V @ 450mA (SFH4545)\nVr = 400mA * 2.8 Ohm = 1.26V\n\nproposal: constant current sources using cheap LDOs\nLDO with small Vfb (<= 0.55V) and enable, shunt (ca. 1.25 Ohm)\ne.g. TLV75801PDRVR (unfortunately "softstart"-feature)\nalt. with Vfb=1.25V Micrel MIC5353 (cheap (30 Cent), also for µC-supply)\nalt. with Vfb=1.18V ST LDL212PVR (also cheap (37 Cent), Vin,max=18V, also for µC-supply) - could work out: 300mV@600mA@125°C, 2x Vf=1.75V, Vfb=1.18
$Comp
L ldl212:LDL212PUR IC?
U 1 1 5C8ADEB4
P 2550 1800
F 0 "IC?" H 2550 2165 50  0000 C CNN
F 1 "LDL212PUR" H 2550 2074 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.5mm_EP0.61x1.42mm" H 2250 1450 50  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/ldl212.pdf" H 2250 1350 50  0001 L CNN
F 4 "511-LDL212PUR" H 2250 1250 50  0001 L CNN "Mouser"
	1    2550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C8AF100
P 2050 1550
F 0 "#PWR?" H 2050 1400 50  0001 C CNN
F 1 "+5V" H 2065 1723 50  0000 C CNN
F 2 "" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C8AF12B
P 2550 2200
F 0 "#PWR?" H 2550 1950 50  0001 C CNN
F 1 "GND" H 2555 2027 50  0000 C CNN
F 2 "" H 2550 2200 50  0001 C CNN
F 3 "" H 2550 2200 50  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2200 2550 2150
Wire Wire Line
	2550 2150 2500 2150
Wire Wire Line
	2500 2150 2500 2100
Wire Wire Line
	2600 2100 2600 2150
Wire Wire Line
	2600 2150 2550 2150
Connection ~ 2550 2150
Wire Wire Line
	2150 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1550
$Comp
L LED:SFH4546 D?
U 1 1 5C8B0B0B
P 3450 1550
F 0 "D?" V 3446 1472 50  0000 R CNN
F 1 "SFH4545" V 3355 1472 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 3450 1725 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic1/00101982_0.pdf" H 3400 1550 50  0001 C CNN
	1    3450 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1700 3150 1700
Wire Wire Line
	3150 1700 3150 1400
Wire Wire Line
	3150 1400 3450 1400
Wire Wire Line
	3450 1400 3450 1450
$Comp
L Device:R R?
U 1 1 5C8B0C1F
P 3450 2000
F 0 "R?" H 3520 2046 50  0000 L CNN
F 1 "3" H 3520 1955 50  0000 L CNN
F 2 "" V 3380 2000 50  0001 C CNN
F 3 "~" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Text Notes 3000 1800 0    50   ~ 0
Vadj=1.18V
Text Notes 2350 1300 0    50   ~ 0
1.18V/400mA=2,95 Ohm
Wire Wire Line
	2950 1800 3450 1800
Wire Wire Line
	3450 1800 3450 1750
Wire Wire Line
	3450 1850 3450 1800
Connection ~ 3450 1800
NoConn ~ 2950 1900
$Comp
L power:GND #PWR?
U 1 1 5C8B1080
P 3450 2200
F 0 "#PWR?" H 3450 1950 50  0001 C CNN
F 1 "GND" H 3455 2027 50  0000 C CNN
F 2 "" H 3450 2200 50  0001 C CNN
F 3 "" H 3450 2200 50  0001 C CNN
	1    3450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2200 3450 2150
Text GLabel 1900 1900 0    50   Input ~ 0
EMITTER_LF
Wire Wire Line
	1900 1900 2150 1900
$Comp
L ldl212:LDL212PUR IC?
U 1 1 5C8B1559
P 5050 1800
F 0 "IC?" H 5050 2165 50  0000 C CNN
F 1 "LDL212PUR" H 5050 2074 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.5mm_EP0.61x1.42mm" H 4750 1450 50  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/ldl212.pdf" H 4750 1350 50  0001 L CNN
F 4 "511-LDL212PUR" H 4750 1250 50  0001 L CNN "Mouser"
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C8B155F
P 4550 1550
F 0 "#PWR?" H 4550 1400 50  0001 C CNN
F 1 "+5V" H 4565 1723 50  0000 C CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C8B1565
P 5050 2200
F 0 "#PWR?" H 5050 1950 50  0001 C CNN
F 1 "GND" H 5055 2027 50  0000 C CNN
F 2 "" H 5050 2200 50  0001 C CNN
F 3 "" H 5050 2200 50  0001 C CNN
	1    5050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2200 5050 2150
Wire Wire Line
	5050 2150 5000 2150
Wire Wire Line
	5000 2150 5000 2100
Wire Wire Line
	5100 2100 5100 2150
Wire Wire Line
	5100 2150 5050 2150
Connection ~ 5050 2150
Wire Wire Line
	4650 1700 4550 1700
Wire Wire Line
	4550 1700 4550 1550
$Comp
L LED:SFH4546 D?
U 1 1 5C8B1573
P 5950 1550
F 0 "D?" V 5946 1472 50  0000 R CNN
F 1 "SFH4545" V 5855 1472 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5950 1725 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic1/00101982_0.pdf" H 5900 1550 50  0001 C CNN
	1    5950 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 1700 5650 1700
Wire Wire Line
	5650 1700 5650 1050
Wire Wire Line
	5650 1050 5950 1050
Wire Wire Line
	5950 1050 5950 1100
$Comp
L Device:R R?
U 1 1 5C8B157D
P 5950 2000
F 0 "R?" H 6020 2046 50  0000 L CNN
F 1 "3" H 6020 1955 50  0000 L CNN
F 2 "" V 5880 2000 50  0001 C CNN
F 3 "~" H 5950 2000 50  0001 C CNN
	1    5950 2000
	1    0    0    -1  
$EndComp
Text Notes 5500 1800 0    50   ~ 0
Vadj=1.18V
Wire Wire Line
	5450 1800 5950 1800
Wire Wire Line
	5950 1800 5950 1750
Wire Wire Line
	5950 1850 5950 1800
Connection ~ 5950 1800
NoConn ~ 5450 1900
$Comp
L power:GND #PWR?
U 1 1 5C8B1589
P 5950 2200
F 0 "#PWR?" H 5950 1950 50  0001 C CNN
F 1 "GND" H 5955 2027 50  0000 C CNN
F 2 "" H 5950 2200 50  0001 C CNN
F 3 "" H 5950 2200 50  0001 C CNN
	1    5950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2200 5950 2150
Text GLabel 4400 1900 0    50   Input ~ 0
EMITTER_DIAG
Wire Wire Line
	4400 1900 4650 1900
$Comp
L ldl212:LDL212PUR IC?
U 1 1 5C8B1AD2
P 7550 1800
F 0 "IC?" H 7550 2165 50  0000 C CNN
F 1 "LDL212PUR" H 7550 2074 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-6-1EP_2x2mm_P0.5mm_EP0.61x1.42mm" H 7250 1450 50  0001 L CNN
F 3 "http://www.st.com/resource/en/datasheet/ldl212.pdf" H 7250 1350 50  0001 L CNN
F 4 "511-LDL212PUR" H 7250 1250 50  0001 L CNN "Mouser"
	1    7550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C8B1AD8
P 7050 1550
F 0 "#PWR?" H 7050 1400 50  0001 C CNN
F 1 "+5V" H 7065 1723 50  0000 C CNN
F 2 "" H 7050 1550 50  0001 C CNN
F 3 "" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C8B1ADE
P 7550 2200
F 0 "#PWR?" H 7550 1950 50  0001 C CNN
F 1 "GND" H 7555 2027 50  0000 C CNN
F 2 "" H 7550 2200 50  0001 C CNN
F 3 "" H 7550 2200 50  0001 C CNN
	1    7550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2200 7550 2150
Wire Wire Line
	7550 2150 7500 2150
Wire Wire Line
	7500 2150 7500 2100
Wire Wire Line
	7600 2100 7600 2150
Wire Wire Line
	7600 2150 7550 2150
Connection ~ 7550 2150
Wire Wire Line
	7150 1700 7050 1700
Wire Wire Line
	7050 1700 7050 1550
$Comp
L LED:SFH4546 D?
U 1 1 5C8B1AEC
P 8450 1550
F 0 "D?" V 8446 1472 50  0000 R CNN
F 1 "SFH4545" V 8355 1472 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 8450 1725 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic1/00101982_0.pdf" H 8400 1550 50  0001 C CNN
	1    8450 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 1700 8150 1700
Wire Wire Line
	8150 1700 8150 1400
Wire Wire Line
	8150 1400 8450 1400
Wire Wire Line
	8450 1400 8450 1450
$Comp
L Device:R R?
U 1 1 5C8B1AF6
P 8450 2000
F 0 "R?" H 8520 2046 50  0000 L CNN
F 1 "3" H 8520 1955 50  0000 L CNN
F 2 "" V 8380 2000 50  0001 C CNN
F 3 "~" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
Text Notes 8000 1800 0    50   ~ 0
Vadj=1.18V
Wire Wire Line
	7950 1800 8450 1800
Wire Wire Line
	8450 1800 8450 1750
Wire Wire Line
	8450 1850 8450 1800
Connection ~ 8450 1800
NoConn ~ 7950 1900
$Comp
L power:GND #PWR?
U 1 1 5C8B1B02
P 8450 2200
F 0 "#PWR?" H 8450 1950 50  0001 C CNN
F 1 "GND" H 8455 2027 50  0000 C CNN
F 2 "" H 8450 2200 50  0001 C CNN
F 3 "" H 8450 2200 50  0001 C CNN
	1    8450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2200 8450 2150
Text GLabel 6900 1900 0    50   Input ~ 0
EMITTER_RF
Wire Wire Line
	6900 1900 7150 1900
$Comp
L LED:SFH4546 D?
U 1 1 5C8B2CE4
P 5950 1200
F 0 "D?" V 5946 1122 50  0000 R CNN
F 1 "SFH4545" V 5855 1122 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm_IRGrey" H 5950 1375 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic1/00101982_0.pdf" H 5900 1200 50  0001 C CNN
	1    5950 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1400 5950 1450
$Comp
L Device:Q_Photo_NPN_EC Q?
U 1 1 5C8B6544
P 2850 3400
F 0 "Q?" H 3041 3446 50  0000 L CNN
F 1 "TEFT4300" H 3041 3355 50  0000 L CNN
F 2 "" H 3050 3500 50  0001 C CNN
F 3 "~" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5C8B6789
P 2950 3150
F 0 "#PWR?" H 2950 3000 50  0001 C CNN
F 1 "VDDA" H 2967 3323 50  0000 C CNN
F 2 "" H 2950 3150 50  0001 C CNN
F 3 "" H 2950 3150 50  0001 C CNN
	1    2950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3200 2950 3150
Text GLabel 2750 3650 0    50   Output ~ 0
RECEIVER_LF
$Comp
L Device:R R?
U 1 1 5C8B7041
P 2950 3850
F 0 "R?" H 3020 3896 50  0000 L CNN
F 1 "1800" H 3020 3805 50  0000 L CNN
F 2 "" V 2880 3850 50  0001 C CNN
F 3 "~" H 2950 3850 50  0001 C CNN
	1    2950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4050 2950 4000
Wire Wire Line
	2950 3700 2950 3650
Wire Wire Line
	2750 3650 2950 3650
Connection ~ 2950 3650
Wire Wire Line
	2950 3650 2950 3600
$Comp
L Device:Q_Photo_NPN_EC Q?
U 1 1 5C8BA196
P 4450 3400
F 0 "Q?" H 4641 3446 50  0000 L CNN
F 1 "TEFT4300" H 4641 3355 50  0000 L CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5C8BA19C
P 4550 3150
F 0 "#PWR?" H 4550 3000 50  0001 C CNN
F 1 "VDDA" H 4567 3323 50  0000 C CNN
F 2 "" H 4550 3150 50  0001 C CNN
F 3 "" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3200 4550 3150
Text GLabel 4350 3650 0    50   Output ~ 0
RECEIVER_L
$Comp
L Device:R R?
U 1 1 5C8BA1A4
P 4550 3850
F 0 "R?" H 4620 3896 50  0000 L CNN
F 1 "1800" H 4620 3805 50  0000 L CNN
F 2 "" V 4480 3850 50  0001 C CNN
F 3 "~" H 4550 3850 50  0001 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4050 4550 4000
Wire Wire Line
	4550 3700 4550 3650
Wire Wire Line
	4350 3650 4550 3650
Connection ~ 4550 3650
Wire Wire Line
	4550 3650 4550 3600
$Comp
L Device:Q_Photo_NPN_EC Q?
U 1 1 5C8BB150
P 6050 3400
F 0 "Q?" H 6241 3446 50  0000 L CNN
F 1 "TEFT4300" H 6241 3355 50  0000 L CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "~" H 6050 3400 50  0001 C CNN
	1    6050 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5C8BB156
P 6150 3150
F 0 "#PWR?" H 6150 3000 50  0001 C CNN
F 1 "VDDA" H 6167 3323 50  0000 C CNN
F 2 "" H 6150 3150 50  0001 C CNN
F 3 "" H 6150 3150 50  0001 C CNN
	1    6150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3200 6150 3150
Text GLabel 5950 3650 0    50   Output ~ 0
RECEIVER_R
$Comp
L Device:R R?
U 1 1 5C8BB15E
P 6150 3850
F 0 "R?" H 6220 3896 50  0000 L CNN
F 1 "1800" H 6220 3805 50  0000 L CNN
F 2 "" V 6080 3850 50  0001 C CNN
F 3 "~" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4050 6150 4000
Wire Wire Line
	6150 3700 6150 3650
Wire Wire Line
	5950 3650 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	6150 3650 6150 3600
$Comp
L Device:Q_Photo_NPN_EC Q?
U 1 1 5C8BB16F
P 7650 3400
F 0 "Q?" H 7841 3446 50  0000 L CNN
F 1 "TEFT4300" H 7841 3355 50  0000 L CNN
F 2 "" H 7850 3500 50  0001 C CNN
F 3 "~" H 7650 3400 50  0001 C CNN
	1    7650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5C8BB175
P 7750 3150
F 0 "#PWR?" H 7750 3000 50  0001 C CNN
F 1 "VDDA" H 7767 3323 50  0000 C CNN
F 2 "" H 7750 3150 50  0001 C CNN
F 3 "" H 7750 3150 50  0001 C CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3200 7750 3150
Text GLabel 7550 3650 0    50   Output ~ 0
RECEIVER_RF
$Comp
L Device:R R?
U 1 1 5C8BB17D
P 7750 3850
F 0 "R?" H 7820 3896 50  0000 L CNN
F 1 "1800" H 7820 3805 50  0000 L CNN
F 2 "" V 7680 3850 50  0001 C CNN
F 3 "~" H 7750 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4050 7750 4000
Wire Wire Line
	7750 3700 7750 3650
Wire Wire Line
	7550 3650 7750 3650
Connection ~ 7750 3650
Wire Wire Line
	7750 3650 7750 3600
$Comp
L power:GNDA #PWR?
U 1 1 5C89B1C4
P 2950 4050
F 0 "#PWR?" H 2950 3800 50  0001 C CNN
F 1 "GNDA" H 2955 3877 50  0000 C CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C89EB37
P 4550 4050
F 0 "#PWR?" H 4550 3800 50  0001 C CNN
F 1 "GNDA" H 4555 3877 50  0000 C CNN
F 2 "" H 4550 4050 50  0001 C CNN
F 3 "" H 4550 4050 50  0001 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C89EB78
P 6150 4050
F 0 "#PWR?" H 6150 3800 50  0001 C CNN
F 1 "GNDA" H 6155 3877 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C89EBB9
P 7750 4050
F 0 "#PWR?" H 7750 3800 50  0001 C CNN
F 1 "GNDA" H 7755 3877 50  0000 C CNN
F 2 "" H 7750 4050 50  0001 C CNN
F 3 "" H 7750 4050 50  0001 C CNN
	1    7750 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC