
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:112

00:00:132	
480.5702	
136.090Z17-268h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top lab_6_top_level -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
L
#Helper process launched with PID %s4824*oasys2
592Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1342.336 ; gain = 448.375
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2

ave_data2
wire26
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
1078@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
lab_6_top_level2
 26
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

xadc_wiz_02
 2v
rC:/Users/User/453Labs/453_final/453_final.runs/synth_1/.Xil/Vivado-7340-DESKTOP-GTUF0U5/realtime/xadc_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xadc_wiz_02
 2
02
12v
rC:/Users/User/453Labs/453_final/453_final.runs/synth_1/.Xil/Vivado-7340-DESKTOP-GTUF0U5/realtime/xadc_wiz_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
output_mode_fsm2
 26
2C:/Users/User/453Labs/453_final/output_mode_fsm.sv2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
output_mode_fsm2
 2
02
126
2C:/Users/User/453Labs/453_final/output_mode_fsm.sv2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adc_processing2
 25
1C:/Users/User/453Labs/453_final/adc_processing.sv2
118@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

averager2
 2/
+C:/Users/User/453Labs/453_final/averager.sv2
18@Z8-6157h px� 
\
%s
*synth2D
B	Parameter power bound to: 32'sb00000000000000000000000000001000 
h p
x
� 
X
%s
*synth2@
>	Parameter N bound to: 32'sb00000000000000000000000000010000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

averager2
 2
02
12/
+C:/Users/User/453Labs/453_final/averager.sv2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adc_processing2
 2
02
125
1C:/Users/User/453Labs/453_final/adc_processing.sv2
118@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

bin_to_bcd2
 21
-C:/Users/User/453Labs/453_final/bin_to_bcd.sv2
438@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

bin_to_bcd2
 2
02
121
-C:/Users/User/453Labs/453_final/bin_to_bcd.sv2
438@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux4_16_bits2
 23
/C:/Users/User/453Labs/453_final/mux4_16_bits.sv2
18@Z8-6157h px� 
|
default block is never used226*oasys23
/C:/Users/User/453Labs/453_final/mux4_16_bits.sv2
128@Z8-226h px� 
|
default block is never used226*oasys23
/C:/Users/User/453Labs/453_final/mux4_16_bits.sv2
228@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux4_16_bits2
 2
02
123
/C:/Users/User/453Labs/453_final/mux4_16_bits.sv2
18@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
122
in22
162
mux4_16_bits26
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
1068@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12
in32
162
mux4_16_bits26
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
1078@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2!
seven_segment_display_subsystem2
 2F
BC:/Users/User/453Labs/453_final/seven_segment_display_subsystem.sv2
268@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
digit_multiplexor2
 28
4C:/Users/User/453Labs/453_final/digit_multiplexor.sv2
398@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
digit_multiplexor2
 2
02
128
4C:/Users/User/453Labs/453_final/digit_multiplexor.sv2
398@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
seven_segment_digit_selector2
 2C
?C:/Users/User/453Labs/453_final/seven_segment_digit_selector.sv2
368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
seven_segment_digit_selector2
 2
02
12C
?C:/Users/User/453Labs/453_final/seven_segment_digit_selector.sv2
368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
seven_segment_decoder2
 2<
8C:/Users/User/453Labs/453_final/seven_segment_decoder.sv2
378@Z8-6157h px� 
�
default block is never used226*oasys2<
8C:/Users/User/453Labs/453_final/seven_segment_decoder.sv2
558@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
seven_segment_decoder2
 2
02
12<
8C:/Users/User/453Labs/453_final/seven_segment_decoder.sv2
378@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
seven_segment_display_subsystem2
 2
02
12F
BC:/Users/User/453Labs/453_final/seven_segment_display_subsystem.sv2
268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
triangle_generator2
 28
4C:/Users/User/453Labs/453_final/triangle_waveform.sv2
48@Z8-6157h px� 
\
%s
*synth2D
B	Parameter WIDTH bound to: 32'sb00000000000000000000000000001000 
h p
x
� 
a
%s
*synth2I
G	Parameter CLOCK_FREQ bound to: 32'sb00000101111101011110000100000000 
h p
x
� 
R
%s
*synth2:
8	Parameter WAVE_FREQ bound to: 1.000000 - type: double 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
downcounter2
 22
.C:/Users/User/453Labs/453_final/downcounter.sv2
18@Z8-6157h px� 
N
%s
*synth26
4	Parameter PERIOD bound to: 196078 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
downcounter2
 2
02
122
.C:/Users/User/453Labs/453_final/downcounter.sv2
18@Z8-6155h px� 
~
synthesizing module '%s'%s4497*oasys2
pwm2
 2*
&C:/Users/User/453Labs/453_final/pwm.sv2
18@Z8-6157h px� 
\
%s
*synth2D
B	Parameter WIDTH bound to: 32'sb00000000000000000000000000001000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm2
 2
02
12*
&C:/Users/User/453Labs/453_final/pwm.sv2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
triangle_generator2
 2
02
128
4C:/Users/User/453Labs/453_final/triangle_waveform.sv2
48@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

buzzer_pwm2
 21
-C:/Users/User/453Labs/453_final/buzzer_pwm.sv2
18@Z8-6157h px� 
a
%s
*synth2I
G	Parameter CLOCK_FREQ bound to: 32'sb00000101111101011110000100000000 
h p
x
� 
b
%s
*synth2J
H	Parameter BUZZER_FREQ bound to: 32'sb00000000000000000000001111101000 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
downcounter__parameterized02
 22
.C:/Users/User/453Labs/453_final/downcounter.sv2
18@Z8-6157h px� 
]
%s
*synth2E
C	Parameter PERIOD bound to: 32'sb00000000000000001100001101010000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
downcounter__parameterized02
 2
02
122
.C:/Users/User/453Labs/453_final/downcounter.sv2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

buzzer_pwm2
 2
02
121
-C:/Users/User/453Labs/453_final/buzzer_pwm.sv2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
lab_6_top_level2
 2
02
126
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
138@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	ready_reg21
-C:/Users/User/453Labs/453_final/bin_to_bcd.sv2
598@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

ave_data2
lab_6_top_level26
2C:/Users/User/453Labs/453_final/lab_6_top_level.sv2
1078@Z8-3848h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1460.762 ; gain = 566.801
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1460.762 ; gain = 566.801
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1460.762 ; gain = 566.801
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1092

1460.7622
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2n
jc:/Users/User/453Labs/453_final/453_final.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
	XADC_INST	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2n
jc:/Users/User/453Labs/453_final/453_final.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
	XADC_INST	8Z20-847h px� 
u
Parsing XDC File [%s]
179*designutils24
0C:/Users/User/453Labs/453_final/Basys3_Lab_6.xdc8Z20-179h px� 
~
Finished Parsing XDC File [%s]
178*designutils24
0C:/Users/User/453Labs/453_final/Basys3_Lab_6.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project22
0C:/Users/User/453Labs/453_final/Basys3_Lab_6.xdc2#
!.Xil/lab_6_top_level_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1563.5662
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0562

1563.5662
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:41 ; elapsed = 00:00:45 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:41 ; elapsed = 00:00:45 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:41 ; elapsed = 00:00:45 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:44 ; elapsed = 00:00:48 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   4 Input   24 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 4     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               18 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 260   
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   31 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   13 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
dDSP Report: Generating DSP ADC_PROC/scaled_adc_data_temp_reg, operation Mode is: ((A:0x13879)*B2)'.
h p
x
� 
�
%s
*synth2q
oDSP Report: register ADC_PROC/scaled_adc_data_temp_reg is absorbed into DSP ADC_PROC/scaled_adc_data_temp_reg.
h p
x
� 
�
%s
*synth2q
oDSP Report: register ADC_PROC/scaled_adc_data_temp_reg is absorbed into DSP ADC_PROC/scaled_adc_data_temp_reg.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator ADC_PROC/scaled_adc_data_temp0 is absorbed into DSP ADC_PROC/scaled_adc_data_temp_reg.
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:52 ; elapsed = 00:00:58 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
%s
*synth2W
U Sort Area is  ADC_PROC/scaled_adc_data_temp_reg_0 : 0 0 : 1173 1173 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+----------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name     | DSP Mapping       | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+----------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|lab_6_top_level | ((A:0x13879)*B2)' | 16     | 17     | -      | -      | 33     | 1    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
�+----------------+-------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:09 ; elapsed = 00:01:15 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:12 ; elapsed = 00:01:18 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:22 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:22 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+----------------+------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name     | RTL Name                                 | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+----------------+------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|lab_6_top_level | ADC_PROC/AVERAGER/REG_ARRAY_reg[256][15] | 256    | 16    | YES          | NO                 | YES               | 0      | 128     | 
h p
x
� 
�
%s
*synth2�
�+----------------+------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name     | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|lab_6_top_level | ((A'*B)')'  | 16     | 17     | -      | -      | 33     | 1    | 0    | -    | -    | -     | 1    | 1    | 
h p
x
� 
�
%s
*synth2�
�+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |xadc_wiz_0    |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |xadc_wiz |     1|
h px� 
4
%s*synth2
|2     |BUFG     |     1|
h px� 
4
%s*synth2
|3     |CARRY4   |    21|
h px� 
4
%s*synth2
|4     |DSP48E1  |     1|
h px� 
4
%s*synth2
|5     |LUT1     |    41|
h px� 
4
%s*synth2
|6     |LUT2     |    60|
h px� 
4
%s*synth2
|7     |LUT3     |    51|
h px� 
4
%s*synth2
|8     |LUT4     |    35|
h px� 
4
%s*synth2
|9     |LUT5     |    35|
h px� 
4
%s*synth2
|10    |LUT6     |    88|
h px� 
4
%s*synth2
|11    |SRLC32E  |   128|
h px� 
4
%s*synth2
|12    |FDCE     |     2|
h px� 
4
%s*synth2
|13    |FDRE     |   428|
h px� 
4
%s*synth2
|14    |FDSE     |    26|
h px� 
4
%s*synth2
|15    |IBUF     |     8|
h px� 
4
%s*synth2
|16    |OBUF     |    38|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1563.566 ; gain = 669.605
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:58 ; elapsed = 00:01:23 . Memory (MB): peak = 1563.566 ; gain = 566.801
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:23 ; elapsed = 00:01:30 . Memory (MB): peak = 1563.566 ; gain = 669.605
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0212

1563.5662
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
22Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1563.5662
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

58fb5d11Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522
52
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:322

00:01:422

1563.5662

1070.129Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0072

1563.5662
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2L
JC:/Users/User/453Labs/453_final/453_final.runs/synth_1/lab_6_top_level.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2i
greport_utilization -file lab_6_top_level_utilization_synth.rpt -pb lab_6_top_level_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Nov  7 08:51:51 2024Z17-206h px� 


End Record