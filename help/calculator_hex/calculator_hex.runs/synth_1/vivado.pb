
|
Command: %s
53*	vivadotcl2K
7synth_design -top calculator_top -part xc7a100tfgg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 393.949 ; gain = 98.781
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2"
calculator_top2default:default2
 2default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_top.v2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2?
yC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.runs/synth_1/.Xil/Vivado-9520-612-18/realtime/clk_div_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
12default:default2
12default:default2?
yC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.runs/synth_1/.Xil/Vivado-9520-612-18/realtime/clk_div_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
calculator_hex2default:default2
 2default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
12default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter add bound to: 3'b000 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter minus bound to: 3'b001 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter mul bound to: 3'b010 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter div bound to: 3'b011 
2default:defaulth p
x
? 
M
%s
*synth25
!	Parameter mod bound to: 3'b100 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter square bound to: 3'b101 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
button_reg_reg2default:default2"
calculator_hex2default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
462default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
calculator_hex2default:default2
 2default:default2
22default:default2
12default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
calculator_display2default:default2
 2default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
592default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
led_display2default:default2
 2default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter delay bound to: 25000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
led_display2default:default2
 2default:default2
32default:default2
12default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
12default:default8@Z8-6155h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
button_reg_reg2default:default2&
calculator_display2default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
922default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
calculator_display2default:default2
 2default:default2
42default:default2
12default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
592default:default8@Z8-6155h px? 
?
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2(
u_calculator_display2default:default2&
calculator_display2default:default2
142default:default2
132default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_top.v2default:default2
392default:default8@Z8-350h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
calculator_top2default:default2
 2default:default2
52default:default2
12default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_top.v2default:default2
12default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2&
calculator_display2default:default2
done2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 450.328 ; gain = 155.160
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 450.328 ; gain = 155.160
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 450.328 ; gain = 155.160
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tfgg484-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
uc:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/ip/clk_div/clk_div/clk_div_in_context.xdc2default:default2
	u_clk_div	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
uc:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/ip/clk_div/clk_div/clk_div_in_context.xdc2default:default2
	u_clk_div	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default8Z20-179h px? 
?
No nets matched '%s'.
507*	planAhead2
button_IBUF2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
12default:default8@Z12-507h px?
?
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
72default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[14]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
82default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[13]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
92default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[12]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
102default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[11]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
112default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[10]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
122default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[9]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
132default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[8]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
142default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[7]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
152default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[6]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
162default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[5]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
172default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[4]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
182default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[3]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
192default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[2]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
202default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[1]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
212default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[0]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
222default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[15]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
892default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[14]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
902default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[13]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
912default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[12]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
922default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[11]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
932default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[10]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
942default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[9]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
952default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[8]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
962default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[7]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
972default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[6]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
982default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[5]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
992default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[4]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
1002default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[3]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
1012default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[2]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
1022default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[1]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
1032default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
led[0]2default:default2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default2
1042default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2m
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2k
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default24
 .Xil/calculator_top_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2k
WC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/constrs_1/new/pin.xdc2default:default24
 .Xil/calculator_top_propImpl.xdc2default:defaultZ1-236h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
803.9492default:default2
0.0002default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
803.9492default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
803.9492default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
803.9492default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 803.949 ; gain = 508.781
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tfgg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 803.949 ; gain = 508.781
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 803.949 ; gain = 508.781
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
tim2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
cnt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 803.949 ; gain = 508.781
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 8x32  Multipliers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                32x32  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
C
%s
*synth2+
Module calculator_hex 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 8x32  Multipliers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                32x32  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module led_display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 17    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module calculator_display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys27
#u_calculator_display/button_reg_reg2default:default23
u_calculator_hex/button_reg_reg2default:default2z
dC:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_display.v2default:default2
922default:default8@Z8-4471h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2:
&u_calculator_display/u_led_display/tim2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2:
&u_calculator_display/u_led_display/cnt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
42default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
542default:default8@Z8-5845h px? 
?
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
512default:default8@Z8-5845h px? 
}
%s
*synth2e
QDSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2p
\DSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
}
%s
*synth2e
QDSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2p
\DSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
}
%s
*synth2e
QDSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2p
\DSP Report: Generating DSP u_calculator_hex/cal_result0, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
%s
*synth2y
eDSP Report: operator u_calculator_hex/cal_result0 is absorbed into DSP u_calculator_hex/cal_result0.
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default23
\u_calculator_hex/continue_reg 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[15][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[14][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[13][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[12][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[11][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[10][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[9][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[8][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[7][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[6][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[5][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[4][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[3][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[2][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[1][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[0][7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[15][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[14][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[13][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[12][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[11][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[10][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[9][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[8][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[7][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[6][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[5][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[4][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[3][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[2][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[1][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[0][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[15][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[14][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[13][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[12][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[11][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[10][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[9][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[8][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[7][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[6][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[5][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[4][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[3][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[2][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[1][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[0][5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[15][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[14][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[13][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[12][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[11][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[10][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[9][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[8][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[7][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[6][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[5][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[4][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[3][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[0][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[15][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[14][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[13][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[12][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[11][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[10][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[9][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[8][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[7][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[6][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[5][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[4][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[3][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[0][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[15][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[14][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[13][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[12][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[11][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[10][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[9][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[8][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[7][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[6][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[5][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[4][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[3][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2F
2\u_calculator_display/u_led_display/map_reg[2][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2F
2\u_calculator_display/u_led_display/map_reg[0][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[15][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2G
3\u_calculator_display/u_led_display/map_reg[14][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2G
3\u_calculator_display/u_led_display/map_reg[13][1] 2default:defaultZ8-3333h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 803.949 ; gain = 508.781
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name    | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | A*B            | 18     | 9      | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | (PCIN>>17)+A*B | 16     | 9      | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|calculator_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+---------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2&
u_clk_div/clk_out12default:default2/
u_clk_div/bbstub_clk_out1/O2default:defaultZ8-5578h px? 
?
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 837.207 ; gain = 542.039
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2v
`C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.srcs/sources_1/new/calculator_hex.v2default:default2
312default:default8@Z8-5844h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |clk_div       |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |clk_div |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |CARRY4  |   214|
2default:defaulth px? 
E
%s*synth2-
|3     |DSP48E1 |     5|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |    25|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |   110|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |   514|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |    32|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |    47|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |    65|
2default:defaulth px? 
E
%s*synth2-
|10    |MUXF7   |     1|
2default:defaulth px? 
E
%s*synth2-
|11    |FDCE    |   136|
2default:defaulth px? 
E
%s*synth2-
|12    |FDRE    |     1|
2default:defaulth px? 
E
%s*synth2-
|13    |IBUF    |    13|
2default:defaulth px? 
E
%s*synth2-
|14    |OBUF    |    16|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
h
%s
*synth2P
<+------+-----------------------+-------------------+------+
2default:defaulth p
x
? 
h
%s
*synth2P
<|      |Instance               |Module             |Cells |
2default:defaulth p
x
? 
h
%s
*synth2P
<+------+-----------------------+-------------------+------+
2default:defaulth p
x
? 
h
%s
*synth2P
<|1     |top                    |                   |  1181|
2default:defaulth p
x
? 
h
%s
*synth2P
<|2     |  u_calculator_display |calculator_display |   162|
2default:defaulth p
x
? 
h
%s
*synth2P
<|3     |    u_led_display      |led_display        |   130|
2default:defaulth p
x
? 
h
%s
*synth2P
<|4     |  u_calculator_hex     |calculator_hex     |   524|
2default:defaulth p
x
? 
h
%s
*synth2P
<+------+-----------------------+-------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 877.113 ; gain = 228.324
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 877.113 ; gain = 581.945
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2202default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
877.1132default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1482default:default2
382default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:232default:default2
00:00:252default:default2
877.1132default:default2
593.4102default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
877.1132default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\C:/Users/Administrator/Desktop/calculator_hex/calculator_hex.runs/synth_1/calculator_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file calculator_top_utilization_synth.rpt -pb calculator_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec 15 18:50:48 20212default:defaultZ17-206h px? 


End Record