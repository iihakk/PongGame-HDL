
�
Command: %s
1870*	planAhead2�
pread_checkpoint -auto_incremental -incremental C:/Users/Yara2005/Pong/Pong.srcs/utils_1/imports/synth_1/game.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2U
AC:/Users/Yara2005/Pong/Pong.srcs/utils_1/imports/synth_1/game.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top game -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
183282default:defaultZ8-7075h px� 
�
.redeclaration of ansi port '%s' is not allowed6229*oasys2
count2default:default2;
%C:/Users/Yara2005/Downloads/Counter.v2default:default2
252default:default8@Z8-9971h px� 
�
%s*synth2�
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
game2default:default2
 2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Paddle2default:default2
 2default:default2M
7C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Paddle.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
Ex2_PushbuttonDetect2default:default2
 2default:default2H
2C:/Users/Yara2005/Downloads/Ex2_PushbuttonDetect.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clock_div2default:default2
 2default:default2?
)C:/Users/Yara2005/Downloads/clock_div-1.v2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter n bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
Counter2default:default2
 2default:default2;
%C:/Users/Yara2005/Downloads/Counter.v2default:default2
232default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter x bound to: 32 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter n bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Counter2default:default2
 2default:default2
02default:default2
12default:default2;
%C:/Users/Yara2005/Downloads/Counter.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clock_div2default:default2
 2default:default2
02default:default2
12default:default2?
)C:/Users/Yara2005/Downloads/clock_div-1.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2=
'C:/Users/Yara2005/Downloads/Debouncer.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
02default:default2
12default:default2=
'C:/Users/Yara2005/Downloads/Debouncer.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
synchronizer2default:default2
 2default:default2@
*C:/Users/Yara2005/Downloads/synchronizer.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
synchronizer2default:default2
 2default:default2
02default:default2
12default:default2@
*C:/Users/Yara2005/Downloads/synchronizer.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
Ex1_EdgeDetect2default:default2
 2default:default2B
,C:/Users/Yara2005/Downloads/Ex1_EdgeDetect.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
Ex1_EdgeDetect2default:default2
 2default:default2
02default:default2
12default:default2B
,C:/Users/Yara2005/Downloads/Ex1_EdgeDetect.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
Ex2_PushbuttonDetect2default:default2
 2default:default2
02default:default2
12default:default2H
2C:/Users/Yara2005/Downloads/Ex2_PushbuttonDetect.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Paddle2default:default2
 2default:default2
02default:default2
12default:default2M
7C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Paddle.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Ball2default:default2
 2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Ball.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Ball2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Ball.v2default:default2
22default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
Goal12default:default2
92default:default2
Ball2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
312default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
Goal22default:default2
92default:default2
Ball2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
312default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Score2default:default2
 2default:default2L
6C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Score.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2+
Counter__parameterized02default:default2
 2default:default2;
%C:/Users/Yara2005/Downloads/Counter.v2default:default2
232default:default8@Z8-6157h px� 
V
%s
*synth2>
*	Parameter x bound to: 4 - type: integer 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter n bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
Counter__parameterized02default:default2
 2default:default2
02default:default2
12default:default2;
%C:/Users/Yara2005/Downloads/Counter.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Score2default:default2
 2default:default2
02default:default2
12default:default2L
6C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Score.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
segmentDecoder2default:default2
 2default:default2U
?C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/segmentDecoder.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
segmentDecoder2default:default2
 2default:default2
02default:default2
12default:default2U
?C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/segmentDecoder.v2default:default2
22default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2!
player1_units2default:default2
12default:default2"
segmentDecoder2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
342default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2 
player1_tens2default:default2
12default:default2"
segmentDecoder2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
342default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2!
player2_units2default:default2
12default:default2"
segmentDecoder2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
342default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2 
player2_tens2default:default2
12default:default2"
segmentDecoder2default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
342default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2

VGAControl2default:default2
 2default:default2Q
;C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/VGAControl.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

VGAControl2default:default2
 2default:default2
02default:default2
12default:default2Q
;C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/VGAControl.v2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
game2default:default2
 2default:default2
02default:default2
12default:default2K
5C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/game.v2default:default2
232default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
clk2default:default2
Score2default:default2L
6C:/Users/Yara2005/Pong/Pong.srcs/sources_1/new/Score.v2default:default2
52default:default8@Z8-3848h px� 
�
%s*synth2�
rFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2"
Ex1_EdgeDetect2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                       A |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                       B |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                       C |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2"
Ex1_EdgeDetect2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 24    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
zFinished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
tFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|1     |Ball           |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$|2     |segmentDecoder |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$|3     |VGAControl     |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px� 
L
%s*synth24
 |      |Cell           |Count |
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px� 
L
%s*synth24
 |1     |Ball           |     1|
2default:defaulth px� 
L
%s*synth24
 |2     |VGAControl     |     1|
2default:defaulth px� 
L
%s*synth24
 |3     |segmentDecoder |     1|
2default:defaulth px� 
L
%s*synth24
 |4     |BUFG           |     1|
2default:defaulth px� 
L
%s*synth24
 |5     |CARRY4         |    36|
2default:defaulth px� 
L
%s*synth24
 |6     |LUT1           |     6|
2default:defaulth px� 
L
%s*synth24
 |7     |LUT2           |     6|
2default:defaulth px� 
L
%s*synth24
 |8     |LUT3           |     2|
2default:defaulth px� 
L
%s*synth24
 |9     |LUT4           |    32|
2default:defaulth px� 
L
%s*synth24
 |10    |LUT5           |   144|
2default:defaulth px� 
L
%s*synth24
 |11    |LUT6           |     6|
2default:defaulth px� 
L
%s*synth24
 |12    |FDCE           |   144|
2default:defaulth px� 
L
%s*synth24
 |13    |FDRE           |    30|
2default:defaulth px� 
L
%s*synth24
 |14    |IBUF           |     6|
2default:defaulth px� 
L
%s*synth24
 |15    |OBUF           |    16|
2default:defaulth px� 
L
%s*synth24
 +------+---------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
h
%s
*synth2P
<+------+-------------------+-----------------------+------+
2default:defaulth p
x
� 
h
%s
*synth2P
<|      |Instance           |Module                 |Cells |
2default:defaulth p
x
� 
h
%s
*synth2P
<+------+-------------------+-----------------------+------+
2default:defaulth p
x
� 
h
%s
*synth2P
<|1     |top                |                       |   481|
2default:defaulth p
x
� 
h
%s
*synth2P
<|2     |  paddle1          |Paddle                 |   203|
2default:defaulth p
x
� 
h
%s
*synth2P
<|3     |    d1             |Ex2_PushbuttonDetect_7 |    96|
2default:defaulth p
x
� 
h
%s
*synth2P
<|4     |      cd           |clock_div_14           |    82|
2default:defaulth p
x
� 
h
%s
*synth2P
<|5     |        counterMod |Counter_18             |    81|
2default:defaulth p
x
� 
h
%s
*synth2P
<|6     |      d            |debouncer_15           |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|7     |      e            |Ex1_EdgeDetect_16      |     8|
2default:defaulth p
x
� 
h
%s
*synth2P
<|8     |      s            |synchronizer_17        |     2|
2default:defaulth p
x
� 
h
%s
*synth2P
<|9     |    d2             |Ex2_PushbuttonDetect_8 |    92|
2default:defaulth p
x
� 
h
%s
*synth2P
<|10    |      cd           |clock_div_9            |    82|
2default:defaulth p
x
� 
h
%s
*synth2P
<|11    |        counterMod |Counter_13             |    81|
2default:defaulth p
x
� 
h
%s
*synth2P
<|12    |      d            |debouncer_10           |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|13    |      e            |Ex1_EdgeDetect_11      |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|14    |      s            |synchronizer_12        |     2|
2default:defaulth p
x
� 
h
%s
*synth2P
<|15    |  paddle2          |Paddle_0               |   203|
2default:defaulth p
x
� 
h
%s
*synth2P
<|16    |    d1             |Ex2_PushbuttonDetect   |    96|
2default:defaulth p
x
� 
h
%s
*synth2P
<|17    |      cd           |clock_div_2            |    82|
2default:defaulth p
x
� 
h
%s
*synth2P
<|18    |        counterMod |Counter_6              |    81|
2default:defaulth p
x
� 
h
%s
*synth2P
<|19    |      d            |debouncer_3            |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|20    |      e            |Ex1_EdgeDetect_4       |     8|
2default:defaulth p
x
� 
h
%s
*synth2P
<|21    |      s            |synchronizer_5         |     2|
2default:defaulth p
x
� 
h
%s
*synth2P
<|22    |    d2             |Ex2_PushbuttonDetect_1 |    92|
2default:defaulth p
x
� 
h
%s
*synth2P
<|23    |      cd           |clock_div              |    82|
2default:defaulth p
x
� 
h
%s
*synth2P
<|24    |        counterMod |Counter                |    81|
2default:defaulth p
x
� 
h
%s
*synth2P
<|25    |      d            |debouncer              |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|26    |      e            |Ex1_EdgeDetect         |     4|
2default:defaulth p
x
� 
h
%s
*synth2P
<|27    |      s            |synchronizer           |     2|
2default:defaulth p
x
� 
h
%s
*synth2P
<+------+-------------------+-----------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1285.277 ; gain = 0.000
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1285.2772default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
362default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1285.2772default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
11924dc52default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
92default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:202default:default2
1285.2772default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2E
1C:/Users/Yara2005/Pong/Pong.runs/synth_1/game.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_utilization -file game_utilization_synth.rpt -pb game_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Nov 25 17:46:30 20242default:defaultZ17-206h px� 


End Record