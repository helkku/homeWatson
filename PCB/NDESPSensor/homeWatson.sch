EESchema Schematic File Version 2
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
LIBS:homeWatson-cache
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
L LD1117S33CTR U1
U 1 1 5A565C45
P 2750 2150
F 0 "U1" H 2750 2400 50  0000 C CNN
F 1 "LD1117S33CTR" H 2750 2350 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 2750 2250 50  0000 C CNN
F 3 "" H 2750 2150 50  0000 C CNN
	1    2750 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P2
U 1 1 5A565E70
P 4250 1850
F 0 "P2" H 4250 2100 50  0000 C CNN
F 1 "CONN_02X04" H 4250 1600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 4250 650 50  0001 C CNN
F 3 "" H 4250 650 50  0000 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG P1
U 1 1 5A565EB3
P 1400 1150
F 0 "P1" H 1725 1025 50  0000 C CNN
F 1 "USB_OTG" H 1400 1350 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 1350 1050 50  0001 C CNN
F 3 "" V 1350 1050 50  0000 C CNN
	1    1400 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 5A7F5C1E
P 4600 2850
F 0 "P3" H 4600 3050 50  0000 C CNN
F 1 "CONN_01X03" V 4700 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4600 2850 50  0001 C CNN
F 3 "" H 4600 2850 50  0000 C CNN
	1    4600 2850
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 5A7F5EDB
P 4650 1000
F 0 "P4" H 4650 1200 50  0000 C CNN
F 1 "CONN_01X03" V 4750 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0000 C CNN
	1    4650 1000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 P5
U 1 1 5A7F5F80
P 5900 900
F 0 "P5" H 5900 1100 50  0000 C CNN
F 1 "CONN_01X03" V 6000 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5900 900 50  0001 C CNN
F 3 "" H 5900 900 50  0000 C CNN
	1    5900 900 
	0    -1   -1   0   
$EndComp
Text Notes 3550 2000 0    60   ~ 0
TX\nCH_PD\nRST\nVCC
Text Notes 4700 2000 0    60   ~ 0
GND\nGPIO2\nGPIO0\nRX
NoConn ~ 4000 1900
NoConn ~ 1500 1450
NoConn ~ 1400 1450
NoConn ~ 1300 1450
Text Notes 4500 800  0    60   ~ 0
GPIO2
Text Notes 5750 750  0    60   ~ 0
GPIO0
Text Notes 5300 1800 0    60   ~ 0
FW UPLOAD SWITCH
Text Notes 4500 3100 0    60   ~ 0
FTDI
NoConn ~ 1800 1050
$Comp
L CONN_01X03 P6
U 1 1 5A800BDE
P 5700 2200
F 0 "P6" H 5700 2400 50  0000 C CNN
F 1 "CONN_01X03" V 5800 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5700 2200 50  0001 C CNN
F 3 "" H 5700 2200 50  0000 C CNN
	1    5700 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1450 1200 2100
Wire Wire Line
	1200 2100 2350 2100
Wire Wire Line
	1600 2400 6650 2400
Wire Wire Line
	1600 2400 1600 1450
Wire Wire Line
	3150 2100 4000 2100
Wire Wire Line
	4000 2100 4000 2000
Wire Wire Line
	3150 1800 4000 1800
Wire Wire Line
	3150 1200 3150 2100
Wire Wire Line
	4500 1700 5050 1700
Wire Wire Line
	5050 1700 5050 2650
Connection ~ 2750 2400
Wire Wire Line
	6250 1950 6250 1400
Wire Wire Line
	6250 1400 5900 1400
Wire Wire Line
	5900 1400 5900 1100
Connection ~ 5050 2400
Wire Wire Line
	4500 2650 4500 2000
Wire Wire Line
	4600 2650 4600 1350
Wire Wire Line
	4600 1350 4000 1350
Wire Wire Line
	4000 1350 4000 1700
Wire Wire Line
	5050 2650 4700 2650
Wire Wire Line
	6000 1100 6650 1100
Wire Wire Line
	6650 1100 6650 2400
Wire Wire Line
	5800 1100 5800 1450
Wire Wire Line
	5800 1450 3150 1450
Connection ~ 3150 1800
Connection ~ 3150 1450
Wire Wire Line
	3150 1200 4550 1200
Wire Wire Line
	4650 1200 4650 1800
Wire Wire Line
	4650 1800 4500 1800
Wire Wire Line
	4750 1200 4750 2400
Connection ~ 4750 2400
Wire Wire Line
	6250 1950 5800 1950
Wire Wire Line
	5800 1950 5800 2000
Wire Wire Line
	4500 1900 5700 1900
Wire Wire Line
	5700 1900 5700 2000
Wire Wire Line
	5600 2000 5300 2000
Wire Wire Line
	5300 2000 5300 2400
Connection ~ 5300 2400
$EndSCHEMATC
