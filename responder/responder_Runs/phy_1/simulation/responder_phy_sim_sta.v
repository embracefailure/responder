// Verilog netlist created by Tang Dynasty v5.6.71036
// Sat Jul 27 21:12:11 2024

`timescale 1ns / 1ps
module responder  // ../../responder.v(1)
  (
  CLK,
  Key_In,
  RSTn,
  Sel_Time1,
  Sel_Time2,
  Sel_Time3,
  Sel_Time4,
  Sel_Time5,
  Sel_Time6,
  Set_Time,
  Buzzer_Out,
  DigitronCS_Out,
  Digitron_Out,
  Key_Row,
  LED_Out,
  LED_OverTime_Out,
  LED_Run
  );

  input CLK;  // ../../responder.v(6)
  input [3:0] Key_In;  // ../../responder.v(8)
  input RSTn;  // ../../responder.v(5)
  input Sel_Time1;  // ../../responder.v(9)
  input Sel_Time2;  // ../../responder.v(10)
  input Sel_Time3;  // ../../responder.v(11)
  input Sel_Time4;  // ../../responder.v(12)
  input Sel_Time5;  // ../../responder.v(13)
  input Sel_Time6;  // ../../responder.v(14)
  input Set_Time;  // ../../responder.v(7)
  output Buzzer_Out;  // ../../responder.v(16)
  output [3:0] DigitronCS_Out;  // ../../responder.v(19)
  output [7:0] Digitron_Out;  // ../../responder.v(18)
  output [3:0] Key_Row;  // ../../responder.v(20)
  output [3:0] LED_Out;  // ../../responder.v(15)
  output LED_OverTime_Out;  // ../../responder.v(17)
  output [3:0] LED_Run;  // ../../responder.v(21)

  wire [24:0] \U1/Count ;  // ../../Sel_module.v(16)
  wire [24:0] \U1/Count_b3 ;
  wire [3:0] \U1/LED_Out_b1 ;
  wire [3:0] \U1/Player_Number ;  // ../../Sel_module.v(10)
  wire [24:0] \U2/Count ;  // ../../Timer_module.v(19)
  wire [24:0] \U2/Count_b1 ;
  wire [7:0] \U2/ROM ;  // ../../Timer_module.v(22)
  wire [3:0] \U2/TimerH ;  // ../../Timer_module.v(10)
  wire [7:0] \U2/TimerH_b3 ;
  wire [3:0] \U2/TimerL ;  // ../../Timer_module.v(11)
  wire [22:0] \U3/Count ;  // ../../Buzzer_module.v(13)
  wire [22:0] \U3/Count_b2 ;
  wire [22:0] \U3/Pulse_x ;  // ../../Buzzer_module.v(14)
  wire [15:0] \U4/Count ;  // ../../Digitron_NumDisplay.v(18)
  wire [15:0] \U4/Count_b1 ;
  wire [3:0] \U4/SingleNum ;  // ../../Digitron_NumDisplay.v(50)
  wire [3:0] \U4/W_DigitronCS_Out_b ;
  wire [1:0] \U4/cnt ;  // ../../Digitron_NumDisplay.v(19)
  wire [3:0] \U4/sel1_syn_2 ;
  wire [19:0] \U5/cnt ;  // ../../key_filter.v(10)
  wire [19:0] \U5/cnt_b1 ;
  wire [3:0] \U5/key_reg0 ;  // ../../key_filter.v(20)
  wire [3:0] \U5/key_reg1 ;  // ../../key_filter.v(21)
  wire [22:0] \U6/Count ;  // ../../../../1_run_led/run_led/led8_module.v(12)
  wire [22:0] \U6/Count_b1 ;
  wire [3:0] \U6/rLED_Out_b1 ;
  wire [7:0] \U7/Change_Time_b ;
  wire [3:0] \U7/TimerH_Set ;  // ../../countdown_module.v(21)
  wire [3:0] \U7/TimerL_Set ;  // ../../countdown_module.v(22)
  wire [5:0] \U7/temp_time_b ;
  wire [5:0] \U7/temp_time_b1 ;
  wire [5:0] \U7/temp_time_b3 ;
  wire [5:0] \U7/temp_time_b8 ;
  wire Buzzer_Out_dup_3;  // ../../responder.v(16)
  wire CLK_dup_1;  // ../../responder.v(6)
  wire \DigitronCS_Out[3]_dup_1 ;  // ../../responder.v(19)
  wire \DigitronCS_Out[2]_dup_1 ;  // ../../responder.v(19)
  wire \DigitronCS_Out[1]_dup_1 ;  // ../../responder.v(19)
  wire \DigitronCS_Out[0]_dup_1 ;  // ../../responder.v(19)
  wire \Digitron_Out[6]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[5]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[4]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[3]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[2]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[1]_dup_1 ;  // ../../responder.v(18)
  wire \Digitron_Out[0]_dup_1 ;  // ../../responder.v(18)
  wire \LED_Out[3]_dup_3 ;  // ../../responder.v(15)
  wire \LED_Out[2]_dup_3 ;  // ../../responder.v(15)
  wire \LED_Out[1]_dup_3 ;  // ../../responder.v(15)
  wire \LED_Out[0]_dup_3 ;  // ../../responder.v(15)
  wire \LED_Run[3]_dup_3 ;  // ../../responder.v(21)
  wire \LED_Run[2]_dup_3 ;  // ../../responder.v(21)
  wire \LED_Run[1]_dup_3 ;  // ../../responder.v(21)
  wire \LED_Run[0]_dup_3 ;  // ../../responder.v(21)
  wire RSTn_dup_3;  // ../../responder.v(5)
  wire Sel_Time1_dup_7;  // ../../responder.v(9)
  wire Sel_Time2_dup_9;  // ../../responder.v(10)
  wire Sel_Time3_dup_5;  // ../../responder.v(11)
  wire Sel_Time4_dup_1;  // ../../responder.v(12)
  wire Sel_Time5_dup_1;  // ../../responder.v(13)
  wire Sel_Time6_dup_1;  // ../../responder.v(14)
  wire Set_Time_dup_1;  // ../../responder.v(7)
  wire \U1/Buzzer_Enable_reg_syn_6 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_8 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_10 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_12 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_14 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_16 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_18 ;  // ../../Sel_module.v(20)
  wire \U1/add0_syn_129 ;  // ../../Sel_module.v(47)
  wire \U1/add0_syn_133 ;  // ../../Sel_module.v(47)
  wire \U1/add0_syn_137 ;  // ../../Sel_module.v(47)
  wire \U1/add0_syn_141 ;  // ../../Sel_module.v(47)
  wire \U1/add0_syn_145 ;  // ../../Sel_module.v(47)
  wire \U1/add0_syn_149 ;  // ../../Sel_module.v(47)
  wire \U1/mux10_syn_16 ;  // ../../Sel_module.v(53)
  wire \U1/mux14_syn_104 ;  // ../../Sel_module.v(29)
  wire \U1/mux15_syn_11 ;  // ../../Sel_module.v(29)
  wire \U1/mux15_syn_19 ;  // ../../Sel_module.v(29)
  wire \U1/reg1_syn_15 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_15 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_17 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_19 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_21 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_24 ;  // ../../Sel_module.v(20)
  wire \U1/Block ;  // ../../Sel_module.v(15)
  wire \U1/Buzzer_Enable ;  // ../../Sel_module.v(12)
  wire \U1/Timer_Start ;  // ../../Sel_module.v(11)
  wire \U2/CLK1_reg_syn_5 ;  // ../../Timer_module.v(34)
  wire \U2/CLK1_reg_syn_7 ;  // ../../Timer_module.v(34)
  wire \U2/CLK1_reg_syn_9 ;  // ../../Timer_module.v(34)
  wire \U2/CLK1_reg_syn_11 ;  // ../../Timer_module.v(34)
  wire \U2/CLK1_reg_syn_13 ;  // ../../Timer_module.v(34)
  wire \U2/CLK1_reg_syn_15 ;  // ../../Timer_module.v(34)
  wire \U2/add0_syn_129 ;  // ../../Timer_module.v(42)
  wire \U2/add0_syn_133 ;  // ../../Timer_module.v(42)
  wire \U2/add0_syn_137 ;  // ../../Timer_module.v(42)
  wire \U2/add0_syn_141 ;  // ../../Timer_module.v(42)
  wire \U2/add0_syn_145 ;  // ../../Timer_module.v(42)
  wire \U2/add0_syn_149 ;  // ../../Timer_module.v(42)
  wire \U2/TimerH_b1[3]_syn_2 ;
  wire \U2/TimerH_b1[2]_syn_2 ;
  wire \U2/TimerH_b1[1]_syn_2 ;
  wire \U2/TimerH_b1[0]_syn_2 ;
  wire \U2/TimerH_b1[0]_syn_4 ;
  wire \U2/TimerL_b1[3]_syn_2 ;
  wire \U2/TimerL_b1[3]_syn_4 ;
  wire \U2/TimerL_b1[3]_syn_6 ;
  wire \U2/TimerL_b1[2]_syn_2 ;
  wire \U2/TimerL_b1[2]_syn_4 ;
  wire \U2/TimerL_b1[1]_syn_2 ;
  wire \U2/TimerL_b1[1]_syn_4 ;
  wire \U2/TimerL_b1[1]_syn_6 ;
  wire \U2/TimerL_b1[1]_syn_9 ;
  wire \U2/TimerL_b1[1]_syn_11 ;
  wire \U2/TimerL_b1[1]_syn_13 ;
  wire \U2/TimerL_b1[1]_syn_15 ;
  wire \U2/TimerL_b1[1]_syn_17 ;
  wire \U2/TimerL_b1[1]_syn_19 ;
  wire \U2/TimerL_b1[1]_syn_21 ;
  wire \U2/Block_Sel_Latched ;  // ../../Timer_module.v(20)
  wire \U2/CLK1 ;  // ../../Timer_module.v(18)
  wire \U2/CLK1_syn_4 ;  // ../../Timer_module.v(18)
  wire \U2/CLK1_n4 ;
  wire \U2/count1 ;  // ../../Timer_module.v(17)
  wire \U2/count1_n ;
  wire \U3/add0_syn_119 ;  // ../../Buzzer_module.v(43)
  wire \U3/add0_syn_123 ;  // ../../Buzzer_module.v(43)
  wire \U3/add0_syn_127 ;  // ../../Buzzer_module.v(43)
  wire \U3/add0_syn_131 ;  // ../../Buzzer_module.v(43)
  wire \U3/add0_syn_135 ;  // ../../Buzzer_module.v(43)
  wire \U3/mux3_syn_102 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_164 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_166 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_168 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_170 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_172 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_174 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_176 ;  // ../../Buzzer_module.v(35)
  wire \U3/mux3_syn_178 ;  // ../../Buzzer_module.v(35)
  wire \U3/Count_b1_n ;
  wire \U3/Count_b_n2 ;
  wire \U3/W_buzzer_n2 ;
  wire \U4/add1_syn_82 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_84 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_86 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_88 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_90 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_92 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_94 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/add1_syn_96 ;  // ../../Digitron_NumDisplay.v(33)
  wire \U4/mux0_syn_3 ;  // ../../Digitron_NumDisplay.v(40)
  wire \U4/reg0_syn_33 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_35 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_37 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_39 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg1_syn_16 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_18 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_20 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_23 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_26 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_29 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_32 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_34 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_36 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_42 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_44 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_47 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_49 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_52 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_54 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_57 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_59 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_61 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/Count_b_n ;
  wire \U4/SingleNum_b_n4 ;
  wire \U4/SingleNum_b_n4_syn_10 ;
  wire \U4/W_DigitronCS_Out_n ;
  wire \U4/W_DigitronCS_Out_n_syn_4 ;
  wire \U5/add0_syn_102 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_104 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_106 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_108 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_110 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_112 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_114 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_116 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_118 ;  // ../../key_filter.v(17)
  wire \U5/add0_syn_120 ;  // ../../key_filter.v(17)
  wire \U5/reg2_syn_15 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_17 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_19 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_21 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_23 ;  // ../../key_filter.v(24)
  wire \U5/cnt_b_n ;
  wire \U6/add0_syn_117 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_119 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_121 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_123 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_125 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_127 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_129 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_131 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_133 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_135 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_137 ;  // ../../../../1_run_led/run_led/led8_module.v(33)
  wire \U6/Count_b[22]_syn_2 ;
  wire \U6/Count_b[22]_syn_4 ;
  wire \U6/Count_b[22]_syn_6 ;
  wire \U6/Count_b[22]_syn_8 ;
  wire \U6/Count_b[22]_syn_10 ;
  wire \U6/Count_b[22]_syn_12 ;
  wire \U6/Count_b_n ;
  wire \U7/add0_syn_39 ;  // ../../countdown_module.v(51)
  wire \U7/add0_syn_41 ;  // ../../countdown_module.v(51)
  wire \U7/add0_syn_43 ;  // ../../countdown_module.v(51)
  wire \U7/reg0_syn_11 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_13 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_23 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_33 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_43 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_53 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_56 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_63 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_70 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_76 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_78 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_80 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_86 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_88 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_90 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_98 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_100 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_106 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_108 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_110 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_116 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_118 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_120 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_126 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_128 ;  // ../../countdown_module.v(41)
  wire \U7/temp_time_b[5]_syn_3 ;
  wire \U7/temp_time_b[4]_syn_2 ;
  wire \U7/temp_time_b[1]_syn_4 ;
  wire \U7/temp_time_b1[3]_syn_2 ;
  wire \U7/temp_time_b1[2]_syn_2 ;
  wire \U7/temp_time_b1[2]_syn_6 ;
  wire \U7/temp_time_b3[3]_syn_2 ;
  wire \U7/temp_time_b3[0]_syn_2 ;

  initial $sdf_annotate("responder.sdf");
  EG_PHY_PAD #(
    //.LOCATION("H11"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("SET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("SYNC"),
    .TSMUX("0"))
    Buzzer_Out_syn_4 (
    .ce(\U3/Count_b1_n ),
    .do({open_n0,open_n1,open_n2,\U3/W_buzzer_n2 }),
    .osclk(CLK_dup_1),
    .rst(\U3/Count_b_n2 ),
    .opad(Buzzer_Out));  // ../../responder.v(16)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("R7"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    CLK_syn_2 (
    .ipad(CLK),
    .di(CLK_dup_1));  // ../../responder.v(6)
  EG_PHY_PAD #(
    //.LOCATION("C9"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \DigitronCS_Out[0]_syn_2  (
    .do({open_n32,open_n33,open_n34,\U4/W_DigitronCS_Out_b [0]}),
    .osclk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .opad(DigitronCS_Out[0]));  // ../../responder.v(19)
  EG_PHY_PAD #(
    //.LOCATION("B6"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \DigitronCS_Out[1]_syn_2  (
    .do({open_n48,open_n49,open_n50,\U4/W_DigitronCS_Out_b [1]}),
    .osclk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .opad(DigitronCS_Out[1]));  // ../../responder.v(19)
  EG_PHY_PAD #(
    //.LOCATION("A5"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("0"),
    .OUTSCLKMUX("INV"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \DigitronCS_Out[2]_syn_2  (
    .do({open_n64,open_n65,open_n66,\U4/W_DigitronCS_Out_b [2]}),
    .osclk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .opad(DigitronCS_Out[2]));  // ../../responder.v(19)
  EG_PHY_PAD #(
    //.LOCATION("A3"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("LATCH"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("RST"),
    .OUTSCLKMUX("INV"),
    .SRMODE("SYNC"),
    .TSMUX("0"))
    \DigitronCS_Out[3]_syn_2  (
    .do({open_n80,open_n81,open_n82,1'b1}),
    .osclk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .rst(\U4/mux0_syn_3 ),
    .opad(DigitronCS_Out[3]));  // ../../responder.v(19)
  EG_PHY_PAD #(
    //.LOCATION("A4"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[0]_syn_2  (
    .do({open_n95,open_n96,open_n97,\Digitron_Out[0]_dup_1 }),
    .opad(Digitron_Out[0]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("A6"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[1]_syn_2  (
    .do({open_n112,open_n113,open_n114,\Digitron_Out[1]_dup_1 }),
    .opad(Digitron_Out[1]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("B8"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[2]_syn_2  (
    .do({open_n129,open_n130,open_n131,\Digitron_Out[2]_dup_1 }),
    .opad(Digitron_Out[2]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("E8"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[3]_syn_2  (
    .do({open_n146,open_n147,open_n148,\Digitron_Out[3]_dup_1 }),
    .opad(Digitron_Out[3]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("A7"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[4]_syn_2  (
    .do({open_n163,open_n164,open_n165,\Digitron_Out[4]_dup_1 }),
    .opad(Digitron_Out[4]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("B5"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[5]_syn_2  (
    .do({open_n180,open_n181,open_n182,\Digitron_Out[5]_dup_1 }),
    .opad(Digitron_Out[5]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("A8"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[6]_syn_2  (
    .do({open_n197,open_n198,open_n199,\Digitron_Out[6]_dup_1 }),
    .opad(Digitron_Out[6]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.LOCATION("C8"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Digitron_Out[7]_syn_1  (
    .do({open_n214,open_n215,open_n216,1'b0}),
    .opad(Digitron_Out[7]));  // ../../responder.v(18)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("E11"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IDDRPIPEMODE("NONE"),
    .INCEMUX("CE"),
    .INPCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \Key_In[0]_syn_4  (
    .ce(\U5/cnt_b_n ),
    .ipad(Key_In[0]),
    .ipclk(CLK_dup_1),
    .diq({open_n240,open_n241,open_n242,\U5/key_reg0 [0]}));  // ../../responder.v(8)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("D11"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IDDRPIPEMODE("NONE"),
    .INCEMUX("CE"),
    .INPCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \Key_In[1]_syn_4  (
    .ce(\U5/cnt_b_n ),
    .ipad(Key_In[1]),
    .ipclk(CLK_dup_1),
    .diq({open_n255,open_n256,open_n257,\U5/key_reg0 [1]}));  // ../../responder.v(8)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("C11"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IDDRPIPEMODE("NONE"),
    .INCEMUX("CE"),
    .INPCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \Key_In[2]_syn_4  (
    .ce(\U5/cnt_b_n ),
    .ipad(Key_In[2]),
    .ipclk(CLK_dup_1),
    .diq({open_n270,open_n271,open_n272,\U5/key_reg0 [2]}));  // ../../responder.v(8)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("F10"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IDDRPIPEMODE("NONE"),
    .INCEMUX("CE"),
    .INPCLKMUX("CLK"),
    .INRSTMUX("0"),
    .IN_DFFMODE("FF"),
    .IN_REGSET("RESET"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .SRMODE("ASYNC"),
    .TSMUX("1"))
    \Key_In[3]_syn_4  (
    .ce(\U5/cnt_b_n ),
    .ipad(Key_In[3]),
    .ipclk(CLK_dup_1),
    .diq({open_n285,open_n286,open_n287,\U5/key_reg0 [3]}));  // ../../responder.v(8)
  EG_PHY_PAD #(
    //.LOCATION("D9"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Key_Row[0]_syn_1  (
    .do({open_n291,open_n292,open_n293,1'b1}),
    .opad(Key_Row[0]));  // ../../responder.v(20)
  EG_PHY_PAD #(
    //.LOCATION("F9"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Key_Row[1]_syn_1  (
    .do({open_n308,open_n309,open_n310,1'b1}),
    .opad(Key_Row[1]));  // ../../responder.v(20)
  EG_PHY_PAD #(
    //.LOCATION("C10"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Key_Row[2]_syn_2  (
    .do({open_n325,open_n326,open_n327,1'b1}),
    .opad(Key_Row[2]));  // ../../responder.v(20)
  EG_PHY_PAD #(
    //.LOCATION("E10"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .TSMUX("0"))
    \Key_Row[3]_syn_1  (
    .do({open_n342,open_n343,open_n344,1'b0}),
    .opad(Key_Row[3]));  // ../../responder.v(20)
  EG_PHY_PAD #(
    //.LOCATION("D3"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Out[0]_syn_4  (
    .ce(RSTn_dup_3),
    .do({open_n358,open_n359,open_n360,\U1/LED_Out_b1 [0]}),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Out[0]));  // ../../responder.v(15)
  EG_PHY_PAD #(
    //.LOCATION("E4"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Out[1]_syn_4  (
    .ce(RSTn_dup_3),
    .do({open_n372,open_n373,open_n374,\U1/LED_Out_b1 [1]}),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Out[1]));  // ../../responder.v(15)
  EG_PHY_PAD #(
    //.LOCATION("C1"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Out[2]_syn_4  (
    .ce(RSTn_dup_3),
    .do({open_n386,open_n387,open_n388,\U1/LED_Out_b1 [2]}),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Out[2]));  // ../../responder.v(15)
  EG_PHY_PAD #(
    //.LOCATION("C2"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Out[3]_syn_4  (
    .ce(RSTn_dup_3),
    .do({open_n400,open_n401,open_n402,\U1/LED_Out_b1 [3]}),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Out[3]));  // ../../responder.v(15)
  EG_PHY_PAD #(
    //.LOCATION("F16"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("1"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    LED_OverTime_Out_syn_1 (
    .do({open_n415,open_n416,open_n417,\U2/count1_n }),
    .osclk(\U2/CLK1_syn_4 ),
    .rst(RSTn_dup_3),
    .opad(LED_OverTime_Out));  // ../../responder.v(17)
  EG_PHY_PAD #(
    //.LOCATION("B14"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Run[0]_syn_4  (
    .ce(\U6/Count_b_n ),
    .do({open_n429,open_n430,open_n431,\U6/rLED_Out_b1 [0]}),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Run[0]));  // ../../responder.v(21)
  EG_PHY_PAD #(
    //.LOCATION("B15"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Run[1]_syn_4  (
    .ce(\U6/Count_b_n ),
    .do({open_n443,open_n444,open_n445,\LED_Run[2]_dup_3 }),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Run[1]));  // ../../responder.v(21)
  EG_PHY_PAD #(
    //.LOCATION("B16"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Run[2]_syn_4  (
    .ce(\U6/Count_b_n ),
    .do({open_n457,open_n458,open_n459,\LED_Run[3]_dup_3 }),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Run[2]));  // ../../responder.v(21)
  EG_PHY_PAD #(
    //.LOCATION("C15"),
    //.PULLMODE("NONE"),
    //.SLEWRATE("SLOW"),
    .DO_DFFMODE("FF"),
    .DO_REGSET("RESET"),
    .DRIVE("8"),
    .IOTYPE("LVCMOS33"),
    .MODE("OUT"),
    .ODDRMODE("OFF"),
    .OUTCEMUX("CE"),
    .OUTRSTMUX("INV"),
    .OUTSCLKMUX("CLK"),
    .SRMODE("ASYNC"),
    .TSMUX("0"))
    \LED_Run[3]_syn_4  (
    .ce(\U6/Count_b_n ),
    .do({open_n471,open_n472,open_n473,\LED_Run[0]_dup_3 }),
    .osclk(CLK_dup_1),
    .rst(RSTn_dup_3),
    .opad(LED_Run[3]));  // ../../responder.v(21)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A9"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    RSTn_syn_4 (
    .ipad(RSTn),
    .di(RSTn_dup_3));  // ../../responder.v(5)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("B10"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time1_syn_8 (
    .ipad(Sel_Time1),
    .di(Sel_Time1_dup_7));  // ../../responder.v(9)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A11"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time2_syn_10 (
    .ipad(Sel_Time2),
    .di(Sel_Time2_dup_9));  // ../../responder.v(10)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A12"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time3_syn_6 (
    .ipad(Sel_Time3),
    .di(Sel_Time3_dup_5));  // ../../responder.v(11)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("B12"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time4_syn_2 (
    .ipad(Sel_Time4),
    .di(Sel_Time4_dup_1));  // ../../responder.v(12)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A13"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time5_syn_2 (
    .ipad(Sel_Time5),
    .di(Sel_Time5_dup_1));  // ../../responder.v(13)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A14"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Sel_Time6_syn_2 (
    .ipad(Sel_Time6),
    .di(Sel_Time6_dup_1));  // ../../responder.v(14)
  EG_PHY_PAD #(
    //.HYSTERESIS("OFF"),
    //.LOCATION("A10"),
    //.PCICLAMP("OFF"),
    //.PULLMODE("PULLUP"),
    .IOTYPE("LVCMOS33"),
    .MODE("IN"),
    .TSMUX("1"))
    Set_Time_syn_2 (
    .ipad(Set_Time),
    .di(Set_Time_dup_1));  // ../../responder.v(7)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/LED_Out_b1[0]_syn_5  (
    .b({\U1/reg2_syn_17 ,open_n623}),
    .c({\LED_Out[0]_dup_3 ,\U6/Count_b1 [14]}),
    .clk(CLK_dup_1),
    .d({\U1/reg2_syn_15 ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .f({\U1/LED_Out_b1 [0],open_n641}),
    .q({open_n645,\U6/Count [14]}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUT1("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111110000110000),
    .INIT_LUT1(16'b1111110000110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/LED_Out_b1[2]_syn_5  (
    .b({\U1/reg2_syn_15 ,RSTn_dup_3}),
    .c({\LED_Out[2]_dup_3 ,\LED_Out[3]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\U1/reg1_syn_15 ,\U1/LED_Out_b1 [3]}),
    .sr(RSTn_dup_3),
    .f({\U1/LED_Out_b1 [2],open_n661}),
    .q({open_n665,\LED_Out[3]_dup_3 }));
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y0Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_152  (
    .a({\U1/Count [1],1'b0}),
    .b({\U1/Count [2],\U1/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U1/Count_b3 [1],open_n683}),
    .fco(\U1/add0_syn_129 ),
    .fx({\U1/Count_b3 [2],\U1/Count_b3 [0]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_153  (
    .a({\U1/Count [5],\U1/Count [3]}),
    .b({\U1/Count [6],\U1/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0_syn_129 ),
    .f({\U1/Count_b3 [5],\U1/Count_b3 [3]}),
    .fco(\U1/add0_syn_133 ),
    .fx({\U1/Count_b3 [6],\U1/Count_b3 [4]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_154  (
    .a({\U1/Count [9],\U1/Count [7]}),
    .b({\U1/Count [10],\U1/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0_syn_133 ),
    .f({\U1/Count_b3 [9],\U1/Count_b3 [7]}),
    .fco(\U1/add0_syn_137 ),
    .fx({\U1/Count_b3 [10],\U1/Count_b3 [8]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_155  (
    .a({\U1/Count [13],\U1/Count [11]}),
    .b({\U1/Count [14],\U1/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0_syn_137 ),
    .f({\U1/Count_b3 [13],\U1/Count_b3 [11]}),
    .fco(\U1/add0_syn_141 ),
    .fx({\U1/Count_b3 [14],\U1/Count_b3 [12]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_156  (
    .a({\U1/Count [17],\U1/Count [15]}),
    .b({\U1/Count [18],\U1/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0_syn_141 ),
    .f({\U1/Count_b3 [17],\U1/Count_b3 [15]}),
    .fco(\U1/add0_syn_145 ),
    .fx({\U1/Count_b3 [18],\U1/Count_b3 [16]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_157  (
    .a({\U1/Count [21],\U1/Count [19]}),
    .b({\U1/Count [22],\U1/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U1/add0_syn_145 ),
    .f({\U1/Count_b3 [21],\U1/Count_b3 [19]}),
    .fco(\U1/add0_syn_149 ),
    .fx({\U1/Count_b3 [22],\U1/Count_b3 [20]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.MACRO("U1/add0_syn_152"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U1/add0_syn_158  (
    .a({open_n776,\U1/Count [23]}),
    .b({open_n777,\U1/Count [24]}),
    .c(2'b00),
    .d({open_n780,1'b0}),
    .e({open_n781,1'b0}),
    .fci(\U1/add0_syn_149 ),
    .f({open_n796,\U1/Count_b3 [23]}),
    .fx({open_n798,\U1/Count_b3 [24]}));  // ../../Sel_module.v(47)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*D*~C*B*A)"),
    //.LUTF1("(~D*C*~B*A)"),
    //.LUTG0("(~1*D*~C*B*A)"),
    //.LUTG1("(~D*C*~B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000100000000000),
    .INIT_LUTF1(16'b0000000000100000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b0000000000100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_129  (
    .a({\U2/TimerH [3],\U2/TimerL_b1[1]_syn_4 }),
    .b(\U2/TimerH [2:1]),
    .c({\U2/TimerL [1],\U2/TimerH [0]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerL [0],\U2/TimerL [3]}),
    .e({open_n801,\U2/TimerL [2]}),
    .mi({\U1/Count_b3 [8],\U1/Count_b3 [11]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerL_b1[1]_syn_4 ,\U2/TimerL_b1[1]_syn_6 }),
    .q({\U1/Count [8],\U1/Count [11]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+A*~(B)*C*~(D)*0+A*B*C*~(D)*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(~C*~(B*~D))"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+A*~(B)*C*~(D)*1+A*B*C*~(D)*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(~C*~(B*~D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110110101001111),
    .INIT_LUTF1(16'b0000111100000011),
    .INIT_LUTG0(16'b1111110010101101),
    .INIT_LUTG1(16'b0000111100000011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_132  (
    .a({open_n817,\U2/TimerL_b1[1]_syn_13 }),
    .b({\U2/TimerL_b1[1]_syn_19 ,\U2/TimerL_b1[1]_syn_19 }),
    .c({\U2/ROM [1],\U2/TimerL_b1[1]_syn_15 }),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerL_b1[1]_syn_17 ,\U2/ROM [1]}),
    .e({open_n818,\U2/ROM [2]}),
    .mi({\U1/Count_b3 [20],\U1/Count_b3 [24]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerL_b1[2]_syn_2 ,\U2/TimerL_b1[3]_syn_4 }),
    .q({\U1/Count [20],\U1/Count [24]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*~D*C*B*A)"),
    //.LUTF1("(~D*C*~B*A)"),
    //.LUTG0("(1*~D*C*B*A)"),
    //.LUTG1("(~D*C*~B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000100000),
    .INIT_LUTG0(16'b0000000010000000),
    .INIT_LUTG1(16'b0000000000100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_135  (
    .a({\U1/Count [14],\U1/Buzzer_Enable_reg_syn_16 }),
    .b({\U1/Count [15],\U1/Buzzer_Enable_reg_syn_8 }),
    .c({\U1/Count [16],\U1/Count [22]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Count [17],\U1/Count [23]}),
    .e({open_n834,\U1/Count [24]}),
    .mi(\U1/Count_b3 [22:21]),
    .sr(RSTn_dup_3),
    .f({\U1/Buzzer_Enable_reg_syn_6 ,\U1/Buzzer_Enable_reg_syn_18 }),
    .q(\U1/Count [22:21]));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(C*~(D@(B*~A)))"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(C*~(D@(B*~A)))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0100000010110000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0100000010110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_138  (
    .a({\U2/TimerL_b1[1]_syn_17 ,\U1/Buzzer_Enable_reg_syn_6 }),
    .b({\U2/TimerL_b1[1]_syn_19 ,\U1/Count [18]}),
    .c({\U2/TimerL_b1[1]_syn_6 ,\U1/Count [19]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/ROM [1],\U1/Count [20]}),
    .e({open_n850,\U1/Count [21]}),
    .mi({\U1/Count_b3 [19],\U1/Count_b3 [23]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerL_b1[1]_syn_21 ,\U1/Buzzer_Enable_reg_syn_8 }),
    .q({\U1/Count [19],\U1/Count [23]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(~D*~C*~B*~A)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(~D*~C*~B*~A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000000000001),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_141  (
    .a({\U1/Count [6],\U1/Buzzer_Enable_reg_syn_10 }),
    .b({\U1/Count [7],\U1/Buzzer_Enable_reg_syn_12 }),
    .c({\U1/Count [8],\U1/Buzzer_Enable_reg_syn_14 }),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Count [9],\U1/Count [0]}),
    .e({open_n866,\U1/Count [1]}),
    .mi(\U1/Count_b3 [17:16]),
    .sr(RSTn_dup_3),
    .f({\U1/Buzzer_Enable_reg_syn_12 ,\U1/Buzzer_Enable_reg_syn_16 }),
    .q(\U1/Count [17:16]));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*D)"),
    //.LUTF1("(~C*~B*D)"),
    //.LUTG0("(~C*D)"),
    //.LUTG1("(~C*~B*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000111100000000),
    .INIT_LUTF1(16'b0000001100000000),
    .INIT_LUTG0(16'b0000111100000000),
    .INIT_LUTG1(16'b0000001100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_144  (
    .b({\U2/TimerH [1],open_n884}),
    .c({\U2/TimerH [0],\U1/Timer_Start }),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerH_b1[0]_syn_2 ,RSTn_dup_3}),
    .mi({\U1/Count_b3 [13],\U1/Count_b3 [15]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerH_b1[2]_syn_2 ,\U1/mux14_syn_104 }),
    .q({\U1/Count [13],\U1/Count [15]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTF1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+A*B*C*D)"),
    //.LUTG0("(~D*~C*~B*~A)"),
    //.LUTG1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+A*B*C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b1000111110101101),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b1000111110101101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_147  (
    .a({\U2/TimerH_b1[0]_syn_2 ,\U2/TimerH [1]}),
    .b({\U2/TimerL_b1[3]_syn_2 ,\U2/TimerH [3]}),
    .c(\U2/TimerH [1:0]),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerH [0],\U2/TimerH [2]}),
    .mi({\U1/Count_b3 [7],\U1/Count_b3 [9]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerH_b1[1]_syn_2 ,\U2/TimerL_b1[3]_syn_2 }),
    .q({\U1/Count [7],\U1/Count [9]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~(B)*~((~C*~A))*~(D)+B*~((~C*~A))*~(D)+~(B)*(~C*~A)*~(D)+~(B)*(~C*~A)*D+B*(~C*~A)*D)"),
    //.LUTF1("(~B*(C@D))"),
    //.LUTG0("(~(B)*~((~C*~A))*~(D)+B*~((~C*~A))*~(D)+~(B)*(~C*~A)*~(D)+~(B)*(~C*~A)*D+B*(~C*~A)*D)"),
    //.LUTG1("(~B*(C@D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000010111111011),
    .INIT_LUTF1(16'b0000001100110000),
    .INIT_LUTG0(16'b0000010111111011),
    .INIT_LUTG1(16'b0000001100110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_150  (
    .a({open_n919,\U2/TimerL [1]}),
    .b({\U2/TimerL_b1[3]_syn_2 ,\U2/TimerL [3]}),
    .c({\U2/TimerH [0],\U2/TimerL [0]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerH_b1[0]_syn_2 ,\U2/TimerL [2]}),
    .mi({\U1/Count_b3 [10],\U1/Count_b3 [12]}),
    .sr(RSTn_dup_3),
    .f({\U2/TimerH_b1[0]_syn_4 ,\U2/TimerL_b1[2]_syn_4 }),
    .q({\U1/Count [10],\U1/Count [12]}));  // ../../Sel_module.v(20)
  EG_PHY_MSLICE #(
    //.LUT0("(D*C*B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0100000000000000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_153  (
    .a({\U1/Count [2],\U1/Count [10]}),
    .b({\U1/Count [3],\U1/Count [11]}),
    .c({\U1/Count [4],\U1/Count [12]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Count [5],\U1/Count [13]}),
    .mi({\U1/Count_b3 [14],\U1/Count_b3 [18]}),
    .sr(RSTn_dup_3),
    .f({\U1/Buzzer_Enable_reg_syn_10 ,\U1/Buzzer_Enable_reg_syn_14 }),
    .q({\U1/Count [14],\U1/Count [18]}));  // ../../Sel_module.v(20)
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("~(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b1111111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_156  (
    .c({\U1/Count_b3 [2],\U1/Count_b3 [0]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Buzzer_Enable_reg_syn_18 ,\U1/Buzzer_Enable_reg_syn_18 }),
    .sr(RSTn_dup_3),
    .q({\U1/Count [2],\U1/Count [0]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_159  (
    .c({\U1/Count_b3 [6],\U1/Count_b3 [1]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Buzzer_Enable_reg_syn_18 ,\U1/Buzzer_Enable_reg_syn_18 }),
    .sr(RSTn_dup_3),
    .q({\U1/Count [6],\U1/Count [1]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~D)"),
    //.LUTF1("~(~C*~D)"),
    //.LUTG0("~(~C*~D)"),
    //.LUTG1("~(~C*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111110000),
    .INIT_LUTF1(16'b1111111111110000),
    .INIT_LUTG0(16'b1111111111110000),
    .INIT_LUTG1(16'b1111111111110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_162  (
    .c({\U1/Count_b3 [5],\U1/Count_b3 [3]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U1/Buzzer_Enable_reg_syn_18 ,\U1/Buzzer_Enable_reg_syn_18 }),
    .sr(RSTn_dup_3),
    .q({\U1/Count [5],\U1/Count [3]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(D*~((C*~B))*~(A)+D*(C*~B)*~(A)+~(D)*(C*~B)*A+D*(C*~B)*A)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(D*~((C*~B))*~(A)+D*(C*~B)*~(A)+~(D)*(C*~B)*A+D*(C*~B)*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b0111010100100000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b0111010100100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg1_syn_52  (
    .a({\U1/reg2_syn_15 ,open_n1021}),
    .b({\U1/reg2_syn_17 ,\U1/reg2_syn_17 }),
    .c({\U1/reg2_syn_19 ,\LED_Out[0]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\LED_Out[1]_dup_3 ,\U1/mux15_syn_11 }),
    .sr(RSTn_dup_3),
    .f({\U1/LED_Out_b1 [1],open_n1039}),
    .q({open_n1043,\LED_Out[0]_dup_3 }));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~((C*A))*~(B)+D*(C*A)*~(B)+~(D)*(C*A)*B+D*(C*A)*B)"),
    //.LUTG0("(D*~((C*A))*~(B)+D*(C*A)*~(B)+~(D)*(C*A)*B+D*(C*A)*B)"),
    .INIT_LUTF0(16'b1011001110000000),
    .INIT_LUTG0(16'b1011001110000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \U1/reg1_syn_56  (
    .a({open_n1044,\U1/mux10_syn_16 }),
    .b({open_n1045,\U1/reg2_syn_15 }),
    .c({open_n1046,\U1/reg2_syn_21 }),
    .d({open_n1049,\LED_Out[3]_dup_3 }),
    .f({open_n1067,\U1/LED_Out_b1 [3]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~D*~(~0*C*~(~B*A)))"),
    //.LUTF1("~(~(~(~D*~B)*C)*~(0*~A))"),
    //.LUTG0("~(~D*~(~1*C*~(~B*A)))"),
    //.LUTG1("~(~(~(~D*~B)*C)*~(1*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111010000),
    .INIT_LUTF1(16'b1111000011000000),
    .INIT_LUTG0(16'b1111111100000000),
    .INIT_LUTG1(16'b1111010111010101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_64  (
    .a({\U1/mux15_syn_19 ,\U1/mux10_syn_16 }),
    .b({\U1/reg1_syn_15 ,\U1/reg2_syn_21 }),
    .c({\U1/mux15_syn_11 ,RSTn_dup_3}),
    .clk(CLK_dup_1),
    .d({\U1/reg2_syn_17 ,\U1/Block }),
    .e({\U1/Player_Number [0],\U2/Block_Sel_Latched }),
    .sr(RSTn_dup_3),
    .q({\U1/Player_Number [0],\U1/Block }));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+~(A)*B*C*D*0)"),
    //.LUTF1("(A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    //.LUTG0("(A*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+~(A)*B*C*D*1)"),
    //.LUTG1("(A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000001000000010),
    .INIT_LUTF1(16'b1011101110000000),
    .INIT_LUTG0(16'b0101011101011111),
    .INIT_LUTG1(16'b1011101110000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_67  (
    .a({\U1/mux10_syn_16 ,\U1/mux15_syn_11 }),
    .b({\U1/mux15_syn_11 ,\U1/reg2_syn_24 }),
    .c({\U1/reg2_syn_21 ,\U1/reg2_syn_17 }),
    .clk(CLK_dup_1),
    .d({\U1/Player_Number [2],\U1/reg2_syn_21 }),
    .e({open_n1094,\U1/Player_Number [1]}),
    .sr(RSTn_dup_3),
    .q(\U1/Player_Number [2:1]));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~((~A*~(~0*~C)))*~(B)+D*(~A*~(~0*~C))*~(B)+~(D)*(~A*~(~0*~C))*B+D*(~A*~(~0*~C))*B)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(D*~((~A*~(~1*~C)))*~(B)+D*(~A*~(~1*~C))*~(B)+~(D)*(~A*~(~1*~C))*B+D*(~A*~(~1*~C))*B)"),
    //.LUTG1("(C*D)"),
    .INIT_LUTF0(16'b0111001101000000),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0111011101000100),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U1/reg2_syn_69  (
    .a({open_n1114,\U4/reg1_syn_49 }),
    .b({open_n1115,\U4/SingleNum_b_n4 }),
    .c({RSTn_dup_3,\U1/Player_Number [3]}),
    .d({\U1/reg2_syn_15 ,\U4/SingleNum [3]}),
    .e({open_n1118,\DigitronCS_Out[2]_dup_1 }),
    .f({\U1/mux15_syn_11 ,\U4/sel1_syn_2 [3]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1111110000110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("SET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_71  (
    .b({open_n1141,\U1/mux15_syn_11 }),
    .c({\U1/Player_Number [3],\LED_Out[2]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\U1/mux15_syn_19 ,\U1/reg1_syn_15 }),
    .sr(RSTn_dup_3),
    .q({\U1/Player_Number [3],\LED_Out[2]_dup_3 }));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U1/reg2_syn_73  (
    .b({open_n1166,\U5/key_reg0 [3]}),
    .c({\U5/key_reg1 [1],\U5/key_reg1 [3]}),
    .clk(CLK_dup_1),
    .d({\U5/key_reg0 [1],\U5/cnt_b_n }),
    .f({\U1/reg2_syn_19 ,open_n1185}),
    .q({open_n1189,\U5/key_reg1 [3]}));  // ../../Sel_module.v(20)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U1/reg2_syn_75  (
    .b({open_n1192,\U5/key_reg0 [0]}),
    .c({\U5/key_reg1 [0],\U5/key_reg1 [0]}),
    .clk(CLK_dup_1),
    .d({\U5/key_reg0 [0],\U5/cnt_b_n }),
    .f({\U1/reg2_syn_17 ,open_n1207}),
    .q({open_n1211,\U5/key_reg1 [0]}));  // ../../Sel_module.v(20)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~A)"),
    //.LUTF1("(~D*~(~C*~B))"),
    //.LUTG0("(~D*~C*~B*~A)"),
    //.LUTG1("(~D*~(~C*~B))"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b0000000011111100),
    .INIT_LUTG0(16'b0000000000000001),
    .INIT_LUTG1(16'b0000000011111100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U1/reg2_syn_77  (
    .a({open_n1212,\U1/reg2_syn_17 }),
    .b({\U5/key_reg0 [2],\U1/reg2_syn_19 }),
    .c({\U5/key_reg1 [2],\U5/key_reg0 [2]}),
    .d({\U1/reg2_syn_19 ,\U5/key_reg1 [2]}),
    .f({\U1/reg2_syn_24 ,\U1/reg1_syn_15 }));  // ../../Sel_module.v(20)
  EG_PHY_MSLICE #(
    //.LUT0("(0*D*C*~B*A)"),
    //.LUT1("(1*D*C*~B*A)"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b0010000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U2/CLK1_reg_syn_30  (
    .a({\U2/CLK1_reg_syn_11 ,\U2/CLK1_reg_syn_11 }),
    .b({\U2/Count [10],\U2/Count [10]}),
    .c({\U2/Count [11],\U2/Count [11]}),
    .d({\U2/Count [12],\U2/Count [12]}),
    .mi({open_n1249,\U2/Count [13]}),
    .fx({open_n1254,\U2/CLK1_reg_syn_13 }));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(C@(B*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0011110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/CLK1_reg_syn_32  (
    .b({open_n1259,\U1/Timer_Start }),
    .c({open_n1260,\U2/CLK1 }),
    .clk(CLK_dup_1),
    .d({open_n1262,\U2/CLK1_n4 }),
    .q({open_n1281,\U2/CLK1 }));  // ../../Timer_module.v(34)
  EG_PHY_GCLK \U2/CLK1_syn_3  (
    .clki(\U2/CLK1 ),
    .clko(\U2/CLK1_syn_4 ));  // ../../Timer_module.v(18)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~(B*D))"),
    //.LUT1("(~C*D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000001100001111),
    .INIT_LUT1(16'b0000111100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/TimerH_b1[0]_syn_11  (
    .b({open_n1284,\U2/TimerL_b1[1]_syn_2 }),
    .c({\U2/TimerL [0],\U2/TimerL [0]}),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U2/TimerL_b1[1]_syn_2 ,\U2/TimerL_b1[3]_syn_2 }),
    .sr(RSTn_dup_3),
    .f({\U2/TimerH_b1[0]_syn_2 ,open_n1297}),
    .q({open_n1301,\U2/TimerL [0]}));
  EG_PHY_MSLICE #(
    //.LUT0("(A*(~(B)*~(C)*~(D)*~(0)+B*~(C)*~(D)*~(0)+~(B)*C*~(D)*~(0)+B*C*~(D)*~(0)+~(B)*~(C)*D*~(0)+~(B)*C*~(D)*0+B*C*~(D)*0+~(B)*~(C)*D*0+B*~(C)*D*0+~(B)*C*D*0))"),
    //.LUT1("(A*(~(B)*~(C)*~(D)*~(1)+B*~(C)*~(D)*~(1)+~(B)*C*~(D)*~(1)+B*C*~(D)*~(1)+~(B)*~(C)*D*~(1)+~(B)*C*~(D)*1+B*C*~(D)*1+~(B)*~(C)*D*1+B*~(C)*D*1+~(B)*C*D*1))"),
    .INIT_LUT0(16'b0000001010101010),
    .INIT_LUT1(16'b0010101010100000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U2/TimerH_b1[3]_syn_8  (
    .a({\U2/TimerL_b1[1]_syn_6 ,\U2/TimerL_b1[1]_syn_6 }),
    .b({\U2/ROM [4],\U2/ROM [4]}),
    .c({\U2/ROM [5],\U2/ROM [5]}),
    .d({\U2/ROM [6],\U2/ROM [6]}),
    .mi({open_n1314,\U2/ROM [7]}),
    .fx({open_n1319,\U2/TimerH_b1[3]_syn_2 }));
  EG_PHY_MSLICE #(
    //.LUT0("(A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0)"),
    //.LUT1("(A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1)"),
    .INIT_LUT0(16'b1000001111100000),
    .INIT_LUT1(16'b0011111000001111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U2/TimerL_b1[1]_syn_40  (
    .a({\U2/ROM [3],\U2/ROM [3]}),
    .b({\U2/ROM [4],\U2/ROM [4]}),
    .c({\U2/ROM [5],\U2/ROM [5]}),
    .d({\U2/ROM [6],\U2/ROM [6]}),
    .mi({open_n1334,\U2/ROM [7]}),
    .fx({open_n1339,\U2/TimerH_b3 [2]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+A*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTF1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+A*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    //.LUTG1("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT_LUTF0(16'b1011110011101111),
    .INIT_LUTF1(16'b1101011010110101),
    .INIT_LUTG0(16'b1100111011110011),
    .INIT_LUTG1(16'b1101011010110101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U2/TimerL_b1[1]_syn_43  (
    .a(\U2/ROM [4:3]),
    .b(\U2/ROM [5:4]),
    .c(\U2/ROM [6:5]),
    .d(\U2/ROM [7:6]),
    .e({open_n1344,\U2/ROM [7]}),
    .f({\U2/TimerL_b1[1]_syn_9 ,\U2/TimerL_b1[1]_syn_11 }));
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(~C*~B*~D)"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000000000000011),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/TimerL_b1[1]_syn_45  (
    .b({\U2/TimerL [3],open_n1367}),
    .c({\U2/TimerL [2],\U1/Count_b3 [4]}),
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d({\U2/TimerL [1],\U1/Buzzer_Enable_reg_syn_18 }),
    .sr(RSTn_dup_3),
    .f({\U2/TimerL_b1[1]_syn_2 ,open_n1380}),
    .q({open_n1384,\U1/Count [4]}));
  EG_PHY_MSLICE #(
    //.LUT0("(~(A)*~(C)*~((~0*~D*~B))+A*~(C)*~((~0*~D*~B))+A*~(C)*(~0*~D*~B)+~(A)*C*(~0*~D*~B)+A*C*(~0*~D*~B))"),
    //.LUT1("(~(A)*~(C)*~((~1*~D*~B))+A*~(C)*~((~1*~D*~B))+A*~(C)*(~1*~D*~B)+~(A)*C*(~1*~D*~B)+A*C*(~1*~D*~B))"),
    .INIT_LUT0(16'b0000111100111110),
    .INIT_LUT1(16'b0000111100001111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U2/TimerL_b1[3]_syn_14  (
    .a({\U2/TimerL_b1[3]_syn_2 ,\U2/TimerL_b1[3]_syn_2 }),
    .b({\U2/TimerL [1],\U2/TimerL [1]}),
    .c({\U2/TimerL [3],\U2/TimerL [3]}),
    .d({\U2/TimerL [0],\U2/TimerL [0]}),
    .mi({open_n1397,\U2/TimerL [2]}),
    .fx({open_n1402,\U2/TimerL_b1[3]_syn_6 }));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/add0_syn_152  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .clk(CLK_dup_1),
    .d(2'b01),
    .e(2'b01),
    .mi(\U2/Count_b1 [5:4]),
    .sr(\U1/Timer_Start ),
    .f({\U2/Count_b1 [1],open_n1418}),
    .fco(\U2/add0_syn_129 ),
    .fx({\U2/Count_b1 [2],\U2/Count_b1 [0]}),
    .q(\U2/Count [5:4]));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_153  (
    .a({\U2/Count [5],\U2/Count [3]}),
    .b({\U2/Count [6],\U2/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0_syn_129 ),
    .f({\U2/Count_b1 [5],\U2/Count_b1 [3]}),
    .fco(\U2/add0_syn_133 ),
    .fx({\U2/Count_b1 [6],\U2/Count_b1 [4]}));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_154  (
    .a({\U2/Count [9],\U2/Count [7]}),
    .b({\U2/Count [10],\U2/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0_syn_133 ),
    .f({\U2/Count_b1 [9],\U2/Count_b1 [7]}),
    .fco(\U2/add0_syn_137 ),
    .fx({\U2/Count_b1 [10],\U2/Count_b1 [8]}));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_155  (
    .a({\U2/Count [13],\U2/Count [11]}),
    .b({\U2/Count [14],\U2/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0_syn_137 ),
    .f({\U2/Count_b1 [13],\U2/Count_b1 [11]}),
    .fco(\U2/add0_syn_141 ),
    .fx({\U2/Count_b1 [14],\U2/Count_b1 [12]}));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_156  (
    .a({\U2/Count [17],\U2/Count [15]}),
    .b({\U2/Count [18],\U2/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0_syn_141 ),
    .f({\U2/Count_b1 [17],\U2/Count_b1 [15]}),
    .fco(\U2/add0_syn_145 ),
    .fx({\U2/Count_b1 [18],\U2/Count_b1 [16]}));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_157  (
    .a({\U2/Count [21],\U2/Count [19]}),
    .b({\U2/Count [22],\U2/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U2/add0_syn_145 ),
    .f({\U2/Count_b1 [21],\U2/Count_b1 [19]}),
    .fco(\U2/add0_syn_149 ),
    .fx({\U2/Count_b1 [22],\U2/Count_b1 [20]}));  // ../../Timer_module.v(42)
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
    //.R_POSITION("X0Y3Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U2/add0_syn_158  (
    .a({open_n1509,\U2/Count [23]}),
    .b({open_n1510,\U2/Count [24]}),
    .c(2'b00),
    .d({open_n1513,1'b0}),
    .e({open_n1514,1'b0}),
    .fci(\U2/add0_syn_149 ),
    .f({open_n1529,\U2/Count_b1 [23]}),
    .fx({open_n1531,\U2/Count_b1 [24]}));  // ../../Timer_module.v(42)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000100000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/count1_reg_syn_5  (
    .a({open_n1534,\U2/TimerL_b1[3]_syn_2 }),
    .b({open_n1535,\U2/TimerL_b1[1]_syn_2 }),
    .c({open_n1536,\U2/count1 }),
    .clk(\U2/CLK1_syn_4 ),
    .d({open_n1538,\U2/TimerL [0]}),
    .sr(RSTn_dup_3),
    .f({open_n1551,\U2/count1_n }),
    .q({open_n1555,\U2/count1 }));  // ../../Timer_module.v(83)
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(~C*(~(A)*D*~(0)+~(A)*~(D)*0+~(A)*D*0+A*D*0)))"),
    //.LUTF1("(A*B*~(C)*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUTG0("(B*~(~C*(~(A)*D*~(1)+~(A)*~(D)*1+~(A)*D*1+A*D*1)))"),
    //.LUTG1("(A*B*~(C)*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100100011001100),
    .INIT_LUTF1(16'b1110110111101000),
    .INIT_LUTG0(16'b1100000011001000),
    .INIT_LUTG1(16'b1100111111000101),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_125  (
    .a({\U2/TimerH_b3 [2],\U2/TimerH_b3 [2]}),
    .b({\U2/TimerL_b1[1]_syn_11 ,\U2/TimerL_b1[1]_syn_11 }),
    .c({\U2/TimerL_b1[1]_syn_9 ,\U2/TimerL_b1[1]_syn_9 }),
    .clk(CLK_dup_1),
    .d({\U2/ROM [2],\U2/ROM [2]}),
    .e({\U2/ROM [3],\U2/ROM [3]}),
    .mi({\U2/Count_b1 [7],\U2/Count_b1 [8]}),
    .sr(\U1/Timer_Start ),
    .f({\U2/TimerL_b1[1]_syn_19 ,\U2/TimerL_b1[1]_syn_13 }),
    .q({\U2/Count [7],\U2/Count [8]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*~D*C*B*A)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(1*~D*C*B*A)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000010000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_128  (
    .a({open_n1572,\U2/CLK1_reg_syn_15 }),
    .b({open_n1573,\U2/CLK1_reg_syn_7 }),
    .c({\U2/Count_b1 [22],\U2/Count [22]}),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/Count [23]}),
    .e({open_n1575,\U2/Count [24]}),
    .mi({open_n1577,\U2/Count_b1 [23]}),
    .sr(\U1/Timer_Start ),
    .f({open_n1589,\U2/CLK1_n4 }),
    .q({\U2/Count [22],\U2/Count [23]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*D*C*B*A)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(1*D*C*B*A)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_131  (
    .a({open_n1593,\U2/CLK1_reg_syn_5 }),
    .b({open_n1594,\U2/Count [18]}),
    .c({\U2/Count_b1 [18],\U2/Count [19]}),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/Count [20]}),
    .e({open_n1596,\U2/Count [21]}),
    .mi({open_n1598,\U2/Count_b1 [15]}),
    .sr(\U1/Timer_Start ),
    .f({open_n1610,\U2/CLK1_reg_syn_7 }),
    .q({\U2/Count [18],\U2/Count [15]}));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(B*(A*C*~(D)+A*~(C)*D+~(A)*C*D+A*C*D))"),
    //.LUT1("(C@D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100100010000000),
    .INIT_LUT1(16'b0000111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_134  (
    .a({open_n1614,\U2/TimerL_b1[1]_syn_13 }),
    .b({open_n1615,\U2/TimerL_b1[1]_syn_15 }),
    .c({\U2/ROM [3],\U2/ROM [1]}),
    .clk(CLK_dup_1),
    .d({\U2/TimerH_b3 [2],\U2/ROM [2]}),
    .mi(\U2/Count_b1 [2:1]),
    .sr(\U1/Timer_Start ),
    .f({\U2/TimerL_b1[1]_syn_15 ,\U2/TimerL_b1[1]_syn_17 }),
    .q(\U2/Count [2:1]));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_137  (
    .c({\U2/Count_b1 [13],\U2/Count_b1 [11]}),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/CLK1_n4 }),
    .sr(\U1/Timer_Start ),
    .q({\U2/Count [13],\U2/Count [11]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_140  (
    .c({\U2/Count_b1 [14],\U2/Count_b1 [12]}),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/CLK1_n4 }),
    .sr(\U1/Timer_Start ),
    .q({\U2/Count [14],\U2/Count [12]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*C*~B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000100000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000100000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_143  (
    .a({\U2/Count [14],open_n1678}),
    .b({\U2/Count [15],open_n1679}),
    .c({\U2/Count [16],\U2/Count_b1 [16]}),
    .clk(CLK_dup_1),
    .d({\U2/Count [17],\U2/CLK1_n4 }),
    .mi({\U2/Count_b1 [17],open_n1684}),
    .sr(\U1/Timer_Start ),
    .f({\U2/CLK1_reg_syn_5 ,open_n1696}),
    .q(\U2/Count [17:16]));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_146  (
    .c(\U2/Count_b1 [20:19]),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/CLK1_n4 }),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [20:19]));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_149  (
    .c({\U2/Count_b1 [24],\U2/Count_b1 [21]}),
    .clk(CLK_dup_1),
    .d({\U2/CLK1_n4 ,\U2/CLK1_n4 }),
    .sr(\U1/Timer_Start ),
    .q({\U2/Count [24],\U2/Count [21]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_152  (
    .a({\U2/Count [2],open_n1744}),
    .b({\U2/Count [3],open_n1745}),
    .c({\U2/Count [4],\U2/Count_b1 [0]}),
    .clk(CLK_dup_1),
    .d({\U2/Count [5],\U2/CLK1_n4 }),
    .mi({\U2/Count_b1 [3],open_n1750}),
    .sr(\U1/Timer_Start ),
    .f({\U2/CLK1_reg_syn_9 ,open_n1762}),
    .q({\U2/Count [3],\U2/Count [0]}));  // ../../Timer_module.v(34)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_155  (
    .a({\U2/CLK1_reg_syn_13 ,open_n1766}),
    .b({\U2/CLK1_reg_syn_9 ,open_n1767}),
    .c({\U2/Count [0],\U2/Count_b1 [6]}),
    .clk(CLK_dup_1),
    .d({\U2/Count [1],\U2/CLK1_n4 }),
    .mi({\U2/Count_b1 [9],open_n1772}),
    .sr(\U1/Timer_Start ),
    .f({\U2/CLK1_reg_syn_15 ,open_n1784}),
    .q({\U2/Count [9],\U2/Count [6]}));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_157  (
    .a({open_n1788,\U2/Count [6]}),
    .b({open_n1789,\U2/Count [7]}),
    .c({open_n1790,\U2/Count [8]}),
    .clk(CLK_dup_1),
    .d({open_n1792,\U2/Count [9]}),
    .mi({open_n1803,\U2/Count_b1 [10]}),
    .sr(\U1/Timer_Start ),
    .f({open_n1804,\U2/CLK1_reg_syn_11 }),
    .q({open_n1808,\U2/Count [10]}));  // ../../Timer_module.v(34)
  EG_PHY_MSLICE #(
    //.MACRO("U2/reg1_syn_39"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/reg1_syn_39  (
    .a({\U7/Change_Time_b [1],1'b0}),
    .b({\U7/TimerL_Set [1],open_n1809}),
    .clk(Set_Time_dup_1),
    .fco(\U7/add0_syn_39 ),
    .q({\U2/ROM [1],open_n1832}));  // ../../Timer_module.v(24)
  EG_PHY_MSLICE #(
    //.MACRO("U2/reg1_syn_39"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("SET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/reg1_syn_42  (
    .a(\U7/Change_Time_b [3:2]),
    .b(\U7/TimerL_Set [3:2]),
    .clk(Set_Time_dup_1),
    .fci(\U7/add0_syn_39 ),
    .fco(\U7/add0_syn_41 ),
    .q(\U2/ROM [3:2]));  // ../../Timer_module.v(24)
  EG_PHY_MSLICE #(
    //.MACRO("U2/reg1_syn_39"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/reg1_syn_45  (
    .a(\U7/Change_Time_b [5:4]),
    .b(2'b00),
    .clk(Set_Time_dup_1),
    .fci(\U7/add0_syn_41 ),
    .fco(\U7/add0_syn_43 ),
    .q(\U2/ROM [5:4]));  // ../../Timer_module.v(24)
  EG_PHY_MSLICE #(
    //.MACRO("U2/reg1_syn_39"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/reg1_syn_48  (
    .a(\U7/Change_Time_b [7:6]),
    .b(2'b00),
    .clk(Set_Time_dup_1),
    .fci(\U7/add0_syn_43 ),
    .q(\U2/ROM [7:6]));  // ../../Timer_module.v(24)
  EG_PHY_MSLICE #(
    //.LUT0("~(~(C*B)*(~(A)*~(D)*~(0)+A*~(D)*~(0)+~(A)*D*~(0)+A*~(D)*0+A*D*0))"),
    //.LUT1("~(~(C*B)*(~(A)*~(D)*~(1)+A*~(D)*~(1)+~(A)*D*~(1)+A*~(D)*1+A*D*1))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1110101011000000),
    .INIT_LUT1(16'b1101010111010101),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_25  (
    .a({\U2/TimerH_b1[2]_syn_2 ,\U2/TimerH_b1[2]_syn_2 }),
    .b({\U2/TimerL_b1[1]_syn_6 ,\U2/TimerL_b1[1]_syn_6 }),
    .c({\U2/TimerH_b3 [2],\U2/TimerH_b3 [2]}),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U2/TimerH [3],\U2/TimerH [3]}),
    .mi({open_n1907,\U2/TimerH [2]}),
    .sr(RSTn_dup_3),
    .q({open_n1913,\U2/TimerH [2]}));  // ../../Timer_module.v(47)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~A*~(~B*~(D@C)))"),
    //.LUTF1("(~D*~(C*B))"),
    //.LUTG0("~(~A*~(~B*~(D@C)))"),
    //.LUTG1("(~D*~(C*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011101010101011),
    .INIT_LUTF1(16'b0000000000111111),
    .INIT_LUTG0(16'b1011101010101011),
    .INIT_LUTG1(16'b0000000000111111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .REG1_REGSET("SET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_27  (
    .a({open_n1914,\U2/TimerL_b1[1]_syn_21 }),
    .b({\U2/TimerL_b1[1]_syn_13 ,\U2/TimerL_b1[1]_syn_2 }),
    .c({\U2/TimerL_b1[1]_syn_6 ,\U2/TimerL [1]}),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U2/TimerH_b1[1]_syn_2 ,\U2/TimerL [0]}),
    .sr(RSTn_dup_3),
    .q({\U2/TimerH [1],\U2/TimerL [1]}));  // ../../Timer_module.v(47)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~B*~(D*~(C*~A)))"),
    //.LUTF1("(C*~A*~(~D*B))"),
    //.LUTG0("~(~B*~(D*~(C*~A)))"),
    //.LUTG1("(C*~A*~(~D*B))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110111111001100),
    .INIT_LUTF1(16'b0101000000010000),
    .INIT_LUTG0(16'b1110111111001100),
    .INIT_LUTG1(16'b0101000000010000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("SET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_30  (
    .a({\U2/TimerH_b1[3]_syn_2 ,\U2/TimerL_b1[1]_syn_17 }),
    .b({\U2/TimerH_b1[2]_syn_2 ,\U2/TimerH_b1[0]_syn_4 }),
    .c({\U2/TimerH [3],\U2/TimerL_b1[1]_syn_19 }),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U2/TimerH [2],\U2/TimerL_b1[1]_syn_6 }),
    .sr(RSTn_dup_3),
    .q({\U2/TimerH [3],\U2/TimerH [0]}));  // ../../Timer_module.v(47)
  EG_PHY_MSLICE #(
    //.LUT0("~(D*~(C*~(0@B@A)))"),
    //.LUT1("~(D*~(C*~(1@B@A)))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1001000011111111),
    .INIT_LUT1(16'b0110000011111111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"),
    .REG0_REGSET("RESET"),
    .REG0_SD("FX"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_25  (
    .a({\U2/TimerL_b1[2]_syn_2 ,\U2/TimerL_b1[2]_syn_2 }),
    .b({\U2/TimerL_b1[1]_syn_13 ,\U2/TimerL_b1[1]_syn_13 }),
    .c({\U2/TimerL_b1[1]_syn_6 ,\U2/TimerL_b1[1]_syn_6 }),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U2/TimerL_b1[2]_syn_4 ,\U2/TimerL_b1[2]_syn_4 }),
    .mi({open_n1967,\U2/ROM [2]}),
    .sr(RSTn_dup_3),
    .q({open_n1973,\U2/TimerL [2]}));  // ../../Timer_module.v(47)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~(B*D))"),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000001100001111),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_29  (
    .b({open_n1976,\U2/TimerL_b1[1]_syn_6 }),
    .c({open_n1977,\U2/TimerL_b1[3]_syn_6 }),
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1_syn_4 ),
    .d({open_n1978,\U2/TimerL_b1[3]_syn_4 }),
    .sr(RSTn_dup_3),
    .q({open_n1996,\U2/TimerL [3]}));  // ../../Timer_module.v(47)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTG0("(~D)"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTG0(16'b0000000011111111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \U3/W_buzzer_n2_syn_5  (
    .d({open_n2005,Buzzer_Out_dup_3}),
    .f({open_n2023,\U3/W_buzzer_n2 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("~(B*~(C@D))"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("~(B*~(C@D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0011111111110011),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0011111111110011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/W_buzzer_reg_syn_11  (
    .b({\U3/Count_b_n2 ,open_n2031}),
    .c({Buzzer_Out_dup_3,\U3/Count_b_n2 }),
    .clk(CLK_dup_1),
    .d({\U3/Count_b1_n ,\U3/Count_b1_n }),
    .mi({open_n2036,\U5/cnt_b1 [2]}),
    .f({open_n2049,\U3/mux3_syn_102 }),
    .q({Buzzer_Out_dup_3,\U5/cnt [2]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y0Z0"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'h000A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/add0_syn_140  (
    .a({\U3/Count [1],1'b0}),
    .b({\U3/Count [2],\U3/Count [0]}),
    .c(2'b00),
    .clk(CLK_dup_1),
    .d(2'b01),
    .e(2'b01),
    .mi(\U3/Count_b2 [13:12]),
    .sr(\U3/mux3_syn_102 ),
    .f({\U3/Count_b2 [1],open_n2066}),
    .fco(\U3/add0_syn_119 ),
    .fx({\U3/Count_b2 [2],\U3/Count_b2 [0]}),
    .q(\U3/Count [13:12]));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y0Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U3/add0_syn_141  (
    .a({\U3/Count [5],\U3/Count [3]}),
    .b({\U3/Count [6],\U3/Count [4]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0_syn_119 ),
    .f({\U3/Count_b2 [5],\U3/Count_b2 [3]}),
    .fco(\U3/add0_syn_123 ),
    .fx({\U3/Count_b2 [6],\U3/Count_b2 [4]}));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y1Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U3/add0_syn_142  (
    .a({\U3/Count [9],\U3/Count [7]}),
    .b({\U3/Count [10],\U3/Count [8]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0_syn_123 ),
    .f({\U3/Count_b2 [9],\U3/Count_b2 [7]}),
    .fco(\U3/add0_syn_127 ),
    .fx({\U3/Count_b2 [10],\U3/Count_b2 [8]}));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y1Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U3/add0_syn_143  (
    .a({\U3/Count [13],\U3/Count [11]}),
    .b({\U3/Count [14],\U3/Count [12]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0_syn_127 ),
    .f({\U3/Count_b2 [13],\U3/Count_b2 [11]}),
    .fco(\U3/add0_syn_131 ),
    .fx({\U3/Count_b2 [14],\U3/Count_b2 [12]}));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y2Z0"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U3/add0_syn_144  (
    .a({\U3/Count [17],\U3/Count [15]}),
    .b({\U3/Count [18],\U3/Count [16]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0_syn_131 ),
    .f({\U3/Count_b2 [17],\U3/Count_b2 [15]}),
    .fco(\U3/add0_syn_135 ),
    .fx({\U3/Count_b2 [18],\U3/Count_b2 [16]}));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
    //.R_POSITION("X0Y2Z1"),
    .DEMUX0("E"),
    .DEMUX1("E"),
    .INIT_LUTF0(16'hA55A),
    .INIT_LUTF1(16'hA55A),
    .INIT_LUTG0(16'hC33C),
    .INIT_LUTG1(16'hC33C),
    .LSFMUX0("SUM"),
    .LSFMUX1("SUM"),
    .LSFXMUX0("SUM"),
    .LSFXMUX1("SUM"),
    .MODE("RIPPLE"))
    \U3/add0_syn_145  (
    .a({\U3/Count [21],\U3/Count [19]}),
    .b({\U3/Count [22],\U3/Count [20]}),
    .c(2'b00),
    .d(2'b00),
    .e(2'b00),
    .fci(\U3/add0_syn_135 ),
    .f({\U3/Count_b2 [21],\U3/Count_b2 [19]}),
    .fx({\U3/Count_b2 [22],\U3/Count_b2 [20]}));  // ../../Buzzer_module.v(43)
  EG_PHY_LSLICE #(
    //.LUTF0("(B*(C@D))"),
    //.LUTF1("(~A*(~(B)*~(C)*~(D)+B*C*D))"),
    //.LUTG0("(B*(C@D))"),
    //.LUTG1("(~A*(~(B)*~(C)*~(D)+B*C*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110011000000),
    .INIT_LUTF1(16'b0100000000000001),
    .INIT_LUTG0(16'b0000110011000000),
    .INIT_LUTG1(16'b0100000000000001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_100  (
    .a({\U3/mux3_syn_164 ,open_n2158}),
    .b({\U3/Count [12],\U3/Pulse_x [10]}),
    .c({\U3/Count [13],\U3/Pulse_x [12]}),
    .clk(CLK_dup_1),
    .d({\U3/Pulse_x [12],\U3/Pulse_x [8]}),
    .mi({\U3/Count_b2 [17],\U3/Count_b2 [15]}),
    .sr(\U3/mux3_syn_102 ),
    .f({\U3/mux3_syn_166 ,\U3/Count_b_n2 }),
    .q({\U3/Count [17],\U3/Count [15]}));  // ../../Buzzer_module.v(33)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_102  (
    .a({open_n2177,\U3/Count [9]}),
    .b({open_n2178,\U3/Count [11]}),
    .c({open_n2179,\U3/Count [17]}),
    .clk(CLK_dup_1),
    .d({open_n2181,\U3/Count [18]}),
    .mi({open_n2192,\U3/Count_b2 [19]}),
    .sr(\U3/mux3_syn_102 ),
    .f({open_n2193,\U3/mux3_syn_174 }),
    .q({open_n2197,\U3/Count [19]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_105  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [8],\U3/Count_b2 [11]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [8],\U3/Count [11]}));  // ../../Buzzer_module.v(33)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_108  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [9],\U3/Count_b2 [10]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [9],\U3/Count [10]}));  // ../../Buzzer_module.v(33)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_111  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [6],\U3/Count_b2 [7]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [6],\U3/Count [7]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_114  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [3],\U3/Count_b2 [5]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [3],\U3/Count [5]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_117  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [0],\U3/Count_b2 [4]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [0],\U3/Count [4]}));  // ../../Buzzer_module.v(33)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_120  (
    .clk(CLK_dup_1),
    .mi({\U3/Count_b2 [1],\U3/Count_b2 [2]}),
    .sr(\U3/mux3_syn_102 ),
    .q({\U3/Count [1],\U3/Count [2]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~B*~(0@A))"),
    //.LUTF1("(~(D@B)*~(C@A))"),
    //.LUTG0("(~D*~C*~B*~(1@A))"),
    //.LUTG1("(~(D@B)*~(C@A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000000001),
    .INIT_LUTF1(16'b1000010000100001),
    .INIT_LUTG0(16'b0000000000000010),
    .INIT_LUTG1(16'b1000010000100001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_91  (
    .a({\U3/Count [15],\U3/Count [8]}),
    .b({\U3/Count [16],\U3/Count [19]}),
    .c({\U3/Pulse_x [8],\U3/Count [20]}),
    .clk(CLK_dup_1),
    .d({\U3/Pulse_x [12],\U3/Count [21]}),
    .e({open_n2355,\U3/Pulse_x [8]}),
    .mi({\U3/Count_b2 [21],\U3/Count_b2 [22]}),
    .sr(\U3/mux3_syn_102 ),
    .f({\U3/mux3_syn_170 ,\U3/mux3_syn_176 }),
    .q({\U3/Count [21],\U3/Count [22]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*B*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+~(A)*B*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+~(A)*B*C*D*0)"),
    //.LUTF1("(~(D@B)*~(C@A))"),
    //.LUTG0("(A*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*B*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+~(A)*B*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+~(A)*B*C*D*1)"),
    //.LUTG1("(~(D@B)*~(C@A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111111111110),
    .INIT_LUTF1(16'b1000010000100001),
    .INIT_LUTG0(16'b0111111111111111),
    .INIT_LUTG1(16'b1000010000100001),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_94  (
    .a({\U3/Count [3],\U3/Count [0]}),
    .b({\U3/Count [4],\U3/Count [1]}),
    .c({\U3/Pulse_x [10],\U3/Count [5]}),
    .clk(CLK_dup_1),
    .d({\U3/Pulse_x [12],\U3/Count [7]}),
    .e({open_n2372,\U3/Pulse_x [10]}),
    .mi({\U3/Count_b2 [16],\U3/Count_b2 [14]}),
    .sr(\U3/mux3_syn_102 ),
    .f({\U3/mux3_syn_168 ,\U3/mux3_syn_164 }),
    .q({\U3/Count [16],\U3/Count [14]}));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*B*A)"),
    //.LUTF1("(A*(~(B)*~(C)*~(D)+B*C*D))"),
    //.LUTG0("(~1*~D*C*B*A)"),
    //.LUTG1("(A*(~(B)*~(C)*~(D)+B*C*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b1000000000000010),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000000000000010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_97  (
    .a({\U3/mux3_syn_170 ,\U3/mux3_syn_172 }),
    .b({\U3/Count [10],\U3/mux3_syn_176 }),
    .c({\U3/Count [14],\U3/mux3_syn_174 }),
    .clk(CLK_dup_1),
    .d({\U3/Pulse_x [10],\U3/Count [6]}),
    .e({open_n2389,\U3/Count [22]}),
    .mi({\U3/Count_b2 [20],\U3/Count_b2 [18]}),
    .sr(\U3/mux3_syn_102 ),
    .f({\U3/mux3_syn_172 ,\U3/mux3_syn_178 }),
    .q({\U3/Count [20],\U3/Count [18]}));  // ../../Buzzer_module.v(33)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/reg1_syn_42  (
    .c({open_n2409,\U5/key_reg1 [3]}),
    .clk(CLK_dup_1),
    .d({open_n2411,\U5/key_reg0 [3]}),
    .mi({open_n2422,\U1/Buzzer_Enable }),
    .f({open_n2424,\U1/reg2_syn_21 }),
    .q({open_n2428,\U3/Pulse_x [12]}));  // ../../Buzzer_module.v(17)
  EG_PHY_MSLICE #(
    //.LUT0("~(~C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1111111111110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/reg1_syn_45  (
    .c({\U2/count1 ,\U2/count1 }),
    .clk(CLK_dup_1),
    .d({\U1/Buzzer_Enable ,\U1/Buzzer_Enable }),
    .q({\U3/Pulse_x [8],\U3/Pulse_x [10]}));  // ../../Buzzer_module.v(17)
  EG_PHY_GCLK \U4/SingleNum_b_n4_syn_9  (
    .clki(\U4/SingleNum_b_n4 ),
    .clko(\U4/SingleNum_b_n4_syn_10 ));
  EG_PHY_GCLK \U4/W_DigitronCS_Out_n_syn_3  (
    .clki(\U4/W_DigitronCS_Out_n ),
    .clko(\U4/W_DigitronCS_Out_n_syn_4 ));
  EG_PHY_LSLICE #(
    //.LUTF0("(~D)"),
    //.LUTF1("(C*D)"),
    //.LUTG0("(~D)"),
    //.LUTG1("(C*D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b0000000011111111),
    .INIT_LUTF1(16'b1111000000000000),
    .INIT_LUTG0(16'b0000000011111111),
    .INIT_LUTG1(16'b1111000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/W_DigitronCS_Out_n_syn_9  (
    .c({\U4/cnt [1],open_n2456}),
    .clk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .d({\U4/cnt [0],\U4/cnt [0]}),
    .f({\U4/mux0_syn_3 ,\U4/W_DigitronCS_Out_b [1]}),
    .q({open_n2478,\DigitronCS_Out[1]_dup_1 }));
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U4/add1_syn_125  (
    .a({\U4/Count [0],1'b0}),
    .b({1'b1,open_n2479}),
    .f({\U4/Count_b1 [0],open_n2499}),
    .fco(\U4/add1_syn_82 ));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/add1_syn_127  (
    .a(\U4/Count [4:3]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_84 ),
    .f({\U4/Count_b1 [4],open_n2521}),
    .fco(\U4/add1_syn_86 ),
    .q({open_n2524,\U4/Count [3]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/add1_syn_129  (
    .a(\U4/Count [6:5]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_86 ),
    .f({\U4/Count_b1 [6],open_n2542}),
    .fco(\U4/add1_syn_88 ),
    .q({open_n2545,\U4/Count [5]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/add1_syn_131  (
    .a(\U4/Count [8:7]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_88 ),
    .f({\U4/Count_b1 [8],open_n2563}),
    .fco(\U4/add1_syn_90 ),
    .q({open_n2566,\U4/Count [7]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/add1_syn_134  (
    .a(\U4/Count [14:13]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_94 ),
    .f({\U4/Count_b1 [14],open_n2584}),
    .fco(\U4/add1_syn_96 ),
    .q({open_n2587,\U4/Count [13]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U4/add1_syn_136  (
    .a({open_n2588,\U4/Count [15]}),
    .b({open_n2589,1'b0}),
    .fci(\U4/add1_syn_96 ),
    .f({open_n2608,\U4/Count_b1 [15]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.LUT0("(~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    //.LUT1("(~A*~B*~C*~D+~A*B*~C*~D+~A*B*C*~D+~A*~B*~C*D)"),
    .INIT_LUT0(16'b0000001101111100),
    .INIT_LUT1(16'b0000000101000101),
    .MODE("LOGIC"))
    \U4/mux2_syn_32  (
    .a({\U4/sel1_syn_2 [0],\U4/sel1_syn_2 [0]}),
    .b({\U4/sel1_syn_2 [1],\U4/sel1_syn_2 [1]}),
    .c({\U4/sel1_syn_2 [2],\U4/sel1_syn_2 [2]}),
    .d({\U4/sel1_syn_2 [3],\U4/sel1_syn_2 [3]}),
    .f({\Digitron_Out[4]_dup_1 ,\Digitron_Out[6]_dup_1 }));  // ../../Digitron_NumDisplay.v(64)
  EG_PHY_MSLICE #(
    //.LUT0("(~A*~B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    //.LUT1("(~A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT_LUT0(16'b0000001101110001),
    .INIT_LUT1(16'b0000001111101101),
    .MODE("LOGIC"))
    \U4/mux2_syn_35  (
    .a({\U4/sel1_syn_2 [0],\U4/sel1_syn_2 [0]}),
    .b({\U4/sel1_syn_2 [1],\U4/sel1_syn_2 [1]}),
    .c({\U4/sel1_syn_2 [2],\U4/sel1_syn_2 [2]}),
    .d({\U4/sel1_syn_2 [3],\U4/sel1_syn_2 [3]}),
    .f({\Digitron_Out[0]_dup_1 ,\Digitron_Out[5]_dup_1 }));  // ../../Digitron_NumDisplay.v(64)
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*~B*~C*~D+A*~B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    //.LUTG0("(~A*~B*~C*~D+A*~B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT_LUTF0(16'b0000001111111011),
    .INIT_LUTG0(16'b0000001111111011),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \U4/mux2_syn_38  (
    .a({open_n2654,\U4/sel1_syn_2 [0]}),
    .b({open_n2655,\U4/sel1_syn_2 [1]}),
    .c({open_n2656,\U4/sel1_syn_2 [2]}),
    .d({open_n2659,\U4/sel1_syn_2 [3]}),
    .f({open_n2677,\Digitron_Out[2]_dup_1 }));  // ../../Digitron_NumDisplay.v(64)
  EG_PHY_MSLICE #(
    //.LUT0("(~A*~B*~C*~D+A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT_LUT0(16'b0000001110011111),
    .MODE("LOGIC"))
    \U4/mux2_syn_40  (
    .a({open_n2683,\U4/sel1_syn_2 [0]}),
    .b({open_n2684,\U4/sel1_syn_2 [1]}),
    .c({open_n2685,\U4/sel1_syn_2 [2]}),
    .d({open_n2688,\U4/sel1_syn_2 [3]}),
    .f({open_n2702,\Digitron_Out[1]_dup_1 }));  // ../../Digitron_NumDisplay.v(64)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_100  (
    .a(\U4/Count [2:1]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_82 ),
    .fco(\U4/add1_syn_84 ),
    .q(\U4/Count [2:1]));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_105  (
    .a(\U4/Count [10:9]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_90 ),
    .f({open_n2746,\U4/Count_b1 [9]}),
    .fco(\U4/add1_syn_92 ),
    .q({\U4/Count [10],open_n2749}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_108  (
    .a(\U4/Count [12:11]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U4/add1_syn_92 ),
    .fco(\U4/add1_syn_94 ),
    .q(\U4/Count [12:11]));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_143  (
    .c({\U4/Count_b1 [6],\U4/Count_b1 [4]}),
    .clk(CLK_dup_1),
    .d({\U4/Count_b_n ,\U4/Count_b_n }),
    .q({\U4/Count [6],\U4/Count [4]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~D*~C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000001000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000001000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_146  (
    .a({\U4/Count [8],open_n2798}),
    .b({\U4/Count [9],open_n2799}),
    .c({\U4/Count [10],\U4/Count_b1 [9]}),
    .clk(CLK_dup_1),
    .d({\U4/Count [11],\U4/Count_b_n }),
    .f({\U4/reg0_syn_39 ,open_n2818}),
    .q({open_n2822,\U4/Count [9]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_149  (
    .a({\U4/reg0_syn_33 ,open_n2823}),
    .b({\U4/reg0_syn_35 ,open_n2824}),
    .c({\U4/reg0_syn_37 ,\U4/Count_b1 [8]}),
    .clk(CLK_dup_1),
    .d({\U4/reg0_syn_39 ,\U4/Count_b_n }),
    .f({\U4/Count_b_n ,open_n2839}),
    .q({open_n2843,\U4/Count [8]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000000001),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_152  (
    .a({\U4/Count [0],open_n2844}),
    .b({\U4/Count [1],open_n2845}),
    .c({\U4/Count [2],\U4/Count_b1 [0]}),
    .clk(CLK_dup_1),
    .d({\U4/Count [3],\U4/Count_b_n }),
    .f({\U4/reg0_syn_35 ,open_n2860}),
    .q({open_n2864,\U4/Count [0]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_155  (
    .a({\U4/Count [12],open_n2865}),
    .b({\U4/Count [13],open_n2866}),
    .c({\U4/Count [14],\U4/Count_b1 [14]}),
    .clk(CLK_dup_1),
    .d({\U4/Count [15],\U4/Count_b_n }),
    .f({\U4/reg0_syn_37 ,open_n2885}),
    .q({open_n2889,\U4/Count [14]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTG0("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTG0(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_157  (
    .c({open_n2894,\U4/Count_b1 [15]}),
    .clk(CLK_dup_1),
    .d({open_n2896,\U4/Count_b_n }),
    .q({open_n2919,\U4/Count [15]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*C*~B*A)"),
    //.LUTG0("(~D*C*~B*A)"),
    .INIT_LUTF0(16'b0000000000100000),
    .INIT_LUTG0(16'b0000000000100000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \U4/reg0_syn_159  (
    .a({open_n2920,\U4/Count [4]}),
    .b({open_n2921,\U4/Count [5]}),
    .c({open_n2922,\U4/Count [6]}),
    .d({open_n2925,\U4/Count [7]}),
    .f({open_n2943,\U4/reg0_syn_33 }));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~A*(~(0*~C)*~(B)*~(D)+~(0*~C)*B*~(D)+~(~(0*~C))*B*D+~(0*~C)*B*D))"),
    //.LUTF1("(A*~(B)*~(C)*~(D)*~(0)+~(A)*B*~(C)*~(D)*~(0)+A*~(B)*C*~(D)*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*D*~(0)+A*~(B)*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+A*B*C*~(D)*0+A*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0+A*B*C*D*0)"),
    //.LUTG0("~(~A*(~(1*~C)*~(B)*~(D)+~(1*~C)*B*~(D)+~(~(1*~C))*B*D+~(1*~C)*B*D))"),
    //.LUTG1("(A*~(B)*~(C)*~(D)*~(1)+~(A)*B*~(C)*~(D)*~(1)+A*~(B)*C*~(D)*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*D*~(1)+A*~(B)*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+A*B*C*~(D)*1+A*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1+A*B*C*D*1)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1011101110101010),
    .INIT_LUTF1(16'b0110011000100110),
    .INIT_LUTG0(16'b1011101110101111),
    .INIT_LUTG1(16'b1011011010010010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_syn_129  (
    .a({\U4/reg1_syn_16 ,\U1/mux15_syn_19 }),
    .b({\U4/reg1_syn_18 ,\U1/Buzzer_Enable_reg_syn_18 }),
    .c({\U4/reg1_syn_23 ,\U1/mux15_syn_11 }),
    .clk(CLK_dup_1),
    .d({\U4/reg1_syn_29 ,\U1/mux14_syn_104 }),
    .e({\U4/reg1_syn_26 ,\U1/Buzzer_Enable }),
    .sr(RSTn_dup_3),
    .f({\U7/TimerH_Set [1],open_n2964}),
    .q({open_n2968,\U1/Buzzer_Enable }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    //.LUTF1("(D*~(C*~(~B*~A)))"),
    //.LUTG0("(1*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    //.LUTG1("(D*~(C*~(~B*~A)))"),
    .INIT_LUTF0(16'b0000000000000000),
    .INIT_LUTF1(16'b0001111100000000),
    .INIT_LUTG0(16'b1111111101000111),
    .INIT_LUTG1(16'b0001111100000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U4/reg1_syn_132  (
    .a({Set_Time_dup_1,\U7/TimerH_Set [1]}),
    .b({\U2/TimerL [0],Set_Time_dup_1}),
    .c({\DigitronCS_Out[1]_dup_1 ,\U2/TimerH [1]}),
    .d({\DigitronCS_Out[2]_dup_1 ,\DigitronCS_Out[1]_dup_1 }),
    .e({open_n2971,\DigitronCS_Out[2]_dup_1 }),
    .f({\U4/reg1_syn_42 ,\U4/reg1_syn_59 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("((C*~(D)*~(0)+C*D*~(0)+~(C)*D*0+C*D*0)*~(~B*~A))"),
    //.LUTF1("(~(A)*B*~(C)*~((~0*D))+A*~(B)*C*~((~0*D))+~(A)*B*C*~((~0*D))+A*~(B)*~(C)*(~0*D)+~(A)*B*~(C)*(~0*D)+A*~(B)*C*(~0*D))"),
    //.LUTG0("((C*~(D)*~(1)+C*D*~(1)+~(C)*D*1+C*D*1)*~(~B*~A))"),
    //.LUTG1("(~(A)*B*~(C)*~((~1*D))+A*~(B)*C*~((~1*D))+~(A)*B*C*~((~1*D))+A*~(B)*~(C)*(~1*D)+~(A)*B*~(C)*(~1*D)+A*~(B)*C*(~1*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110000011100000),
    .INIT_LUTF1(16'b0010011001100100),
    .INIT_LUTG0(16'b1110111000000000),
    .INIT_LUTG1(16'b0110010001100100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_134  (
    .a({\U4/reg1_syn_16 ,\U7/reg0_syn_11 }),
    .b({\U4/reg1_syn_18 ,\U7/reg0_syn_53 }),
    .c({\U4/reg1_syn_26 ,\U7/reg0_syn_110 }),
    .clk(\U7/temp_time_b3[3]_syn_2 ),
    .d({\U7/reg0_syn_56 ,\U7/reg0_syn_116 }),
    .e({\U4/reg1_syn_20 ,\U7/reg0_syn_118 }),
    .mi({open_n2994,1'b1}),
    .f({\U4/reg1_syn_36 ,\U4/reg1_syn_23 }),
    .q({open_n3010,\U7/reg0_syn_43 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(0*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    //.LUT1("(1*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1111111101000111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_136  (
    .a({\U7/TimerH_Set [2],\U7/TimerH_Set [2]}),
    .b({Set_Time_dup_1,Set_Time_dup_1}),
    .c({\U2/TimerH [2],\U2/TimerH [2]}),
    .d({\DigitronCS_Out[1]_dup_1 ,\DigitronCS_Out[1]_dup_1 }),
    .mi({open_n3023,\DigitronCS_Out[2]_dup_1 }),
    .fx({open_n3028,\U4/reg1_syn_52 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(0*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    //.LUT1("(1*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    .INIT_LUT0(16'b0000000000000000),
    .INIT_LUT1(16'b1111111101000111),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_138  (
    .a({\U7/TimerH_Set [3],\U7/TimerH_Set [3]}),
    .b({Set_Time_dup_1,Set_Time_dup_1}),
    .c({\U2/TimerH [3],\U2/TimerH [3]}),
    .d({\DigitronCS_Out[1]_dup_1 ,\DigitronCS_Out[1]_dup_1 }),
    .mi({open_n3043,\DigitronCS_Out[2]_dup_1 }),
    .fx({open_n3048,\U4/reg1_syn_47 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(~0*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    //.LUT1("(B*~(~1*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT_LUT0(16'b0100000001001100),
    .INIT_LUT1(16'b1100110011001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_140  (
    .a({\U7/TimerH_Set [0],\U7/TimerH_Set [0]}),
    .b({\U4/reg1_syn_42 ,\U4/reg1_syn_42 }),
    .c({Set_Time_dup_1,Set_Time_dup_1}),
    .d({\U2/TimerH [0],\U2/TimerH [0]}),
    .mi({open_n3063,\DigitronCS_Out[1]_dup_1 }),
    .fx({open_n3068,\U4/reg1_syn_44 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(0*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    //.LUT1("(B*~(1*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT_LUT0(16'b1100110011001100),
    .INIT_LUT1(16'b0100000001001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_142  (
    .a({\U7/TimerL_Set [2],\U7/TimerL_Set [2]}),
    .b({\U4/reg1_syn_52 ,\U4/reg1_syn_52 }),
    .c({Set_Time_dup_1,Set_Time_dup_1}),
    .d({\U2/TimerL [2],\U2/TimerL [2]}),
    .mi({open_n3083,\DigitronCS_Out[1]_dup_1 }),
    .fx({open_n3088,\U4/reg1_syn_54 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(0*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    //.LUT1("(B*~(1*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT_LUT0(16'b1100110011001100),
    .INIT_LUT1(16'b0100000001001100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_144  (
    .a({\U7/TimerL_Set [3],\U7/TimerL_Set [3]}),
    .b({\U4/reg1_syn_47 ,\U4/reg1_syn_47 }),
    .c({Set_Time_dup_1,Set_Time_dup_1}),
    .d({\U2/TimerL [3],\U2/TimerL [3]}),
    .mi({open_n3103,\DigitronCS_Out[1]_dup_1 }),
    .fx({open_n3108,\U4/reg1_syn_49 }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(A*~(B)*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+~(A)*B*~(C)*~(D)*0+A*~(B)*C*~(D)*0+~(A)*B*~(C)*D*0+~(A)*B*C*D*0+A*B*C*D*0)"),
    //.LUT1("(A*~(B)*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+~(A)*B*~(C)*~(D)*1+A*~(B)*C*~(D)*1+~(A)*B*~(C)*D*1+~(A)*B*C*D*1+A*B*C*D*1)"),
    .INIT_LUT0(16'b0001101111001010),
    .INIT_LUT1(16'b1100010000100100),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U4/reg1_syn_146  (
    .a({\U7/TimerH_Set [1],\U7/TimerH_Set [1]}),
    .b({\U4/reg1_syn_34 ,\U4/reg1_syn_34 }),
    .c({\U4/reg1_syn_36 ,\U4/reg1_syn_36 }),
    .d({\U4/reg1_syn_29 ,\U4/reg1_syn_29 }),
    .mi({open_n3123,\U4/reg1_syn_32 }),
    .fx({open_n3128,\U7/TimerL_Set [1]}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~(B)*C*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*~(B)*~(C)*D*~(0)+~(A)*B*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*B*C*D*~(0)+A*~(B)*~(C)*~(D)*0+A*B*~(C)*~(D)*0+A*~(B)*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+~(A)*B*~(C)*D*0+~(A)*~(B)*C*D*0+~(A)*B*C*D*0)"),
    //.LUTF1("(A*~(B)*~(C)*~(D)*~(0)+A*B*~(C)*~(D)*~(0)+~(A)*B*C*~(D)*~(0)+A*B*C*~(D)*~(0)+~(A)*~(B)*~(C)*D*~(0)+A*~(B)*~(C)*D*~(0)+A*B*~(C)*D*~(0)+~(A)*~(B)*C*D*~(0)+~(A)*~(B)*~(C)*~(D)*0+A*~(B)*~(C)*~(D)*0+A*B*~(C)*~(D)*0+~(A)*~(B)*C*~(D)*0+~(A)*B*C*~(D)*0+A*B*C*~(D)*0+~(A)*~(B)*~(C)*D*0+A*~(B)*~(C)*D*0+A*B*~(C)*D*0+~(A)*~(B)*C*D*0+A*~(B)*C*D*0)"),
    //.LUTG0("(A*~(B)*C*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*~(B)*~(C)*D*~(1)+~(A)*B*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*B*C*D*~(1)+A*~(B)*~(C)*~(D)*1+A*B*~(C)*~(D)*1+A*~(B)*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+~(A)*B*~(C)*D*1+~(A)*~(B)*C*D*1+~(A)*B*C*D*1)"),
    //.LUTG1("(A*~(B)*~(C)*~(D)*~(1)+A*B*~(C)*~(D)*~(1)+~(A)*B*C*~(D)*~(1)+A*B*C*~(D)*~(1)+~(A)*~(B)*~(C)*D*~(1)+A*~(B)*~(C)*D*~(1)+A*B*~(C)*D*~(1)+~(A)*~(B)*C*D*~(1)+~(A)*~(B)*~(C)*~(D)*1+A*~(B)*~(C)*~(D)*1+A*B*~(C)*~(D)*1+~(A)*~(B)*C*~(D)*1+~(A)*B*C*~(D)*1+A*B*C*~(D)*1+~(A)*~(B)*~(C)*D*1+A*~(B)*~(C)*D*1+A*B*~(C)*D*1+~(A)*~(B)*C*D*1+A*~(B)*C*D*1)"),
    .INIT_LUTF0(16'b0100111001100000),
    .INIT_LUTF1(16'b0001101111001010),
    .INIT_LUTG0(16'b0101010110101010),
    .INIT_LUTG1(16'b0011101111011011),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U4/reg1_syn_149  (
    .a({\U7/TimerH_Set [1],\U7/TimerH_Set [1]}),
    .b({\U4/reg1_syn_34 ,\U4/reg1_syn_34 }),
    .c({\U4/reg1_syn_36 ,\U4/reg1_syn_36 }),
    .d({\U4/reg1_syn_29 ,\U4/reg1_syn_29 }),
    .e({\U4/reg1_syn_32 ,\U4/reg1_syn_32 }),
    .f({\U7/TimerH_Set [0],\U7/TimerL_Set [2]}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("(~(A)*~(B)*~(C)*~(D)*~(0)+~(A)*~(B)*C*~(D)*~(0)+A*~(B)*~(C)*D*~(0)+A*~(B)*C*D*~(0)+~(A)*B*C*~(D)*0+A*B*~(C)*D*0)"),
    //.LUTF1("(D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B))"),
    //.LUTG0("(~(A)*~(B)*~(C)*~(D)*~(1)+~(A)*~(B)*C*~(D)*~(1)+A*~(B)*~(C)*D*~(1)+A*~(B)*C*D*~(1)+~(A)*B*C*~(D)*1+A*B*~(C)*D*1)"),
    //.LUTG1("(D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B))"),
    .INIT_LUTF0(16'b0010001000010001),
    .INIT_LUTF1(16'b1011100000000000),
    .INIT_LUTG0(16'b0000100001000000),
    .INIT_LUTG1(16'b1011100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U4/reg1_syn_152  (
    .a({\U7/TimerL_Set [1],\U7/TimerH_Set [1]}),
    .b({Set_Time_dup_1,\U4/reg1_syn_34 }),
    .c({\U2/TimerL [1],\U4/reg1_syn_36 }),
    .d({\DigitronCS_Out[1]_dup_1 ,\U4/reg1_syn_29 }),
    .e({open_n3155,\U4/reg1_syn_32 }),
    .f({\U4/reg1_syn_57 ,\U7/TimerL_Set [3]}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("(0*~((~D*~(B*~A)))*~(C)+0*(~D*~(B*~A))*~(C)+~(0)*(~D*~(B*~A))*C+0*(~D*~(B*~A))*C)"),
    //.LUTF1("(B*~A*~(~D*~C))"),
    //.LUTG0("(1*~((~D*~(B*~A)))*~(C)+1*(~D*~(B*~A))*~(C)+~(1)*(~D*~(B*~A))*C+1*(~D*~(B*~A))*C)"),
    //.LUTG1("(B*~A*~(~D*~C))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUTF0(16'b0000000010110000),
    .INIT_LUTF1(16'b0100010001000000),
    .INIT_LUTG0(16'b0000111110111111),
    .INIT_LUTG1(16'b0100010001000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_154  (
    .a({\U4/reg1_syn_54 ,\U4/reg1_syn_57 }),
    .b({\U4/SingleNum_b_n4 ,\U4/reg1_syn_59 }),
    .c({\U1/Player_Number [2],\U4/SingleNum_b_n4 }),
    .clk(\U4/SingleNum_b_n4_syn_10 ),
    .d({\DigitronCS_Out[2]_dup_1 ,\U4/reg1_syn_61 }),
    .e({open_n3177,\U4/SingleNum [1]}),
    .f({open_n3193,\U4/sel1_syn_2 [1]}),
    .q({\U4/SingleNum [2],open_n3197}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*~(~C*~B))"),
    //.LUT1("(A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+~(A)*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011111100),
    .INIT_LUT1(16'b0100001011010010),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_syn_156  (
    .a({\U4/reg1_syn_16 ,open_n3198}),
    .b({\U4/reg1_syn_18 ,\U1/mux15_syn_11 }),
    .c({\U4/reg1_syn_23 ,\U1/Timer_Start }),
    .clk(CLK_dup_1),
    .d({\U4/reg1_syn_26 ,\U1/mux15_syn_19 }),
    .sr(RSTn_dup_3),
    .f({\U7/TimerH_Set [2],open_n3212}),
    .q({open_n3216,\U1/Timer_Start }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_LSLICE #(
    //.LUTF0("~(~C*~(D*B*A))"),
    //.LUTF1("(A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    //.LUTG0("~(~C*~(D*B*A))"),
    //.LUTG1("(A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111100011110000),
    .INIT_LUTF1(16'b1011110111010010),
    .INIT_LUTG0(16'b1111100011110000),
    .INIT_LUTG1(16'b1011110111010010),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U4/reg1_syn_158  (
    .a({\U4/reg1_syn_16 ,\U2/TimerL_b1[3]_syn_2 }),
    .b({\U4/reg1_syn_18 ,\U2/TimerL_b1[1]_syn_2 }),
    .c({\U4/reg1_syn_23 ,\U2/Block_Sel_Latched }),
    .clk(\U2/CLK1_syn_4 ),
    .d({\U4/reg1_syn_26 ,\U2/TimerL [0]}),
    .sr(RSTn_dup_3),
    .f({\U4/reg1_syn_34 ,open_n3234}),
    .q({open_n3238,\U2/Block_Sel_Latched }));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(D*(A*B*~(C)+A*~(B)*C+~(A)*B*C))"),
    //.LUT1("(B*~A*~(~D*~C))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0110100000000000),
    .INIT_LUT1(16'b0100010001000000),
    .MODE("LOGIC"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_161  (
    .a({\U4/reg1_syn_44 ,\DigitronCS_Out[0]_dup_1 }),
    .b({\U4/SingleNum_b_n4 ,\DigitronCS_Out[1]_dup_1 }),
    .c({\U1/Player_Number [0],\DigitronCS_Out[2]_dup_1 }),
    .clk(\U4/SingleNum_b_n4_syn_10 ),
    .d({\DigitronCS_Out[2]_dup_1 ,\DigitronCS_Out[3]_dup_1 }),
    .f({open_n3253,\U4/SingleNum_b_n4 }),
    .q({\U4/SingleNum [0],open_n3257}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~A*~(~D*~C))"),
    //.LUT1("(~D*C*~(B*~A))"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0100010001000000),
    .INIT_LUT1(16'b0000000010110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_164  (
    .a({\U4/reg1_syn_57 ,\U4/reg1_syn_49 }),
    .b({\U4/reg1_syn_59 ,\U4/SingleNum_b_n4 }),
    .c({\U4/SingleNum_b_n4 ,\U1/Player_Number [3]}),
    .clk(\U4/SingleNum_b_n4_syn_10 ),
    .d({\U4/reg1_syn_61 ,\DigitronCS_Out[2]_dup_1 }),
    .q({\U4/SingleNum [1],\U4/SingleNum [3]}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~(~C*~B))"),
    .INIT_LUT0(16'b1111110000000000),
    .MODE("LOGIC"))
    \U4/reg1_syn_166  (
    .b({open_n3279,\U4/reg1_syn_18 }),
    .c({open_n3280,\U4/reg1_syn_23 }),
    .d({open_n3283,\U4/reg1_syn_16 }),
    .f({open_n3297,\U7/TimerH_Set [3]}));  // ../../Digitron_NumDisplay.v(57)
  EG_PHY_MSLICE #(
    //.LUT0("(~D)"),
    //.LUT1("(~D)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0000000011111111),
    .INIT_LUT1(16'b0000000011111111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_26  (
    .clk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .d({\U4/mux0_syn_3 ,\U4/cnt [1]}),
    .f({\U4/W_DigitronCS_Out_n ,\U4/W_DigitronCS_Out_b [2]}),
    .q({\DigitronCS_Out[3]_dup_1 ,\DigitronCS_Out[2]_dup_1 }));  // ../../Digitron_NumDisplay.v(38)
  EG_PHY_MSLICE #(
    //.LUT0("(D*~C+~D*C)"),
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .INIT_LUT0(16'b0000111111110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_29  (
    .c({open_n3330,\U4/cnt [1]}),
    .clk(\U4/W_DigitronCS_Out_n_syn_4 ),
    .d({open_n3332,\U4/cnt [0]}),
    .f({open_n3346,\U4/W_DigitronCS_Out_b [0]}),
    .q({open_n3350,\DigitronCS_Out[0]_dup_1 }));  // ../../Digitron_NumDisplay.v(38)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*B*~(C)+~(D)*~(B)*C+~(D)*B*C)"),
    //.LUTF1("(D*~(B)*~(C)+~(D)*B*~(C)+~(D)*B*C)"),
    //.LUTG0("(D*B*~(C)+~(D)*~(B)*C+~(D)*B*C)"),
    //.LUTG1("(D*~(B)*~(C)+~(D)*B*~(C)+~(D)*B*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000110011110000),
    .INIT_LUTF1(16'b0000001111001100),
    .INIT_LUTG0(16'b0000110011110000),
    .INIT_LUTG1(16'b0000001111001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg3_syn_22  (
    .b({\U4/cnt [0],\U4/cnt [0]}),
    .c({\U4/cnt [1],\U4/cnt [1]}),
    .clk(CLK_dup_1),
    .d({\U4/Count_b_n ,\U4/Count_b_n }),
    .q({\U4/cnt [0],\U4/cnt [1]}));  // ../../Digitron_NumDisplay.v(21)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~((~A*~(~0*~C)))*~(B)+D*(~A*~(~0*~C))*~(B)+~(D)*(~A*~(~0*~C))*B+D*(~A*~(~0*~C))*B)"),
    //.LUTF1("(D*~((~A*~(~0*~C)))*~(B)+D*(~A*~(~0*~C))*~(B)+~(D)*(~A*~(~0*~C))*B+D*(~A*~(~0*~C))*B)"),
    //.LUTG0("(D*~((~A*~(~1*~C)))*~(B)+D*(~A*~(~1*~C))*~(B)+~(D)*(~A*~(~1*~C))*B+D*(~A*~(~1*~C))*B)"),
    //.LUTG1("(D*~((~A*~(~1*~C)))*~(B)+D*(~A*~(~1*~C))*~(B)+~(D)*(~A*~(~1*~C))*B+D*(~A*~(~1*~C))*B)"),
    .INIT_LUTF0(16'b0111001101000000),
    .INIT_LUTF1(16'b0111001101000000),
    .INIT_LUTG0(16'b0111011101000100),
    .INIT_LUTG1(16'b0111011101000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U4/sel1_syn_102  (
    .a({\U4/reg1_syn_44 ,\U4/reg1_syn_54 }),
    .b({\U4/SingleNum_b_n4 ,\U4/SingleNum_b_n4 }),
    .c({\U1/Player_Number [0],\U1/Player_Number [2]}),
    .d({\U4/SingleNum [0],\U4/SingleNum [2]}),
    .e({\DigitronCS_Out[2]_dup_1 ,\DigitronCS_Out[2]_dup_1 }),
    .f({\U4/sel1_syn_2 [0],\U4/sel1_syn_2 [2]}));  // ../../Digitron_NumDisplay.v(58)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U5/add0_syn_155  (
    .a(\U5/cnt [2:1]),
    .b(2'b00),
    .fci(\U5/add0_syn_102 ),
    .f(\U5/cnt_b1 [2:1]),
    .fco(\U5/add0_syn_104 ));  // ../../key_filter.v(17)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/add0_syn_157  (
    .a(\U5/cnt [6:5]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_106 ),
    .f({\U5/cnt_b1 [6],open_n3437}),
    .fco(\U5/add0_syn_108 ),
    .q({open_n3440,\U5/cnt [5]}));  // ../../key_filter.v(17)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/add0_syn_160  (
    .a(\U5/cnt [14:13]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_114 ),
    .f({\U5/cnt_b1 [14],open_n3458}),
    .fco(\U5/add0_syn_116 ),
    .q({open_n3461,\U5/cnt [13]}));  // ../../key_filter.v(17)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/add0_syn_162  (
    .a(\U5/cnt [16:15]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_116 ),
    .f({\U5/cnt_b1 [16],open_n3479}),
    .fco(\U5/add0_syn_118 ),
    .q({open_n3482,\U5/cnt [15]}));  // ../../key_filter.v(17)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U5/add0_syn_165  (
    .a(\U5/cnt [18:17]),
    .b(2'b00),
    .fci(\U5/add0_syn_118 ),
    .f(\U5/cnt_b1 [18:17]),
    .fco(\U5/add0_syn_120 ));  // ../../key_filter.v(17)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_103  (
    .a({open_n3505,\U5/cnt [19]}),
    .b({open_n3506,1'b0}),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_120 ),
    .sr(\U5/cnt_b_n ),
    .q({open_n3528,\U5/cnt [19]}));  // ../../key_filter.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("(~0*~D*C*B*A)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~1*~D*C*B*A)"),
    //.LUTG1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000000000000000),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_122  (
    .a({\U5/cnt [0],\U5/reg2_syn_15 }),
    .b({\U5/cnt [1],\U5/cnt [4]}),
    .c({\U5/cnt [2],\U5/cnt [5]}),
    .clk(CLK_dup_1),
    .d({\U5/cnt [3],\U5/cnt [6]}),
    .e({open_n3530,\U5/cnt [7]}),
    .mi({\U5/cnt_b1 [6],\U5/cnt_b1 [9]}),
    .sr(\U5/cnt_b_n ),
    .f({\U5/reg2_syn_15 ,\U5/reg2_syn_17 }),
    .q({\U5/cnt [6],\U5/cnt [9]}));  // ../../key_filter.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTF1("(~D*~C*B*~A)"),
    //.LUTG0("(D*C*B*A)"),
    //.LUTG1("(~D*~C*B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTF1(16'b0000000000000100),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b0000000000000100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_126  (
    .a({\U5/cnt [8],\U5/reg2_syn_17 }),
    .b({\U5/cnt [9],\U5/reg2_syn_19 }),
    .c({\U5/cnt [10],\U5/reg2_syn_21 }),
    .clk(CLK_dup_1),
    .d({\U5/cnt [11],\U5/reg2_syn_23 }),
    .mi({\U5/cnt_b1 [14],\U5/cnt_b1 [16]}),
    .sr(\U5/cnt_b_n ),
    .f({\U5/reg2_syn_23 ,\U5/cnt_b_n }),
    .q({\U5/cnt [14],\U5/cnt [16]}));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.LUT0("(~D*C*~B*~A)"),
    //.LUT1("(D*C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000010000),
    .INIT_LUT1(16'b1000000000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("MI"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_129  (
    .a({\U5/cnt [16],\U5/cnt [12]}),
    .b({\U5/cnt [17],\U5/cnt [13]}),
    .c({\U5/cnt [18],\U5/cnt [14]}),
    .clk(CLK_dup_1),
    .d({\U5/cnt [19],\U5/cnt [15]}),
    .mi(\U5/cnt_b1 [18:17]),
    .sr(\U5/cnt_b_n ),
    .f({\U5/reg2_syn_19 ,\U5/reg2_syn_21 }),
    .q(\U5/cnt [18:17]));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_87  (
    .a({\U5/cnt [0],1'b0}),
    .b({1'b1,open_n3578}),
    .clk(CLK_dup_1),
    .sr(\U5/cnt_b_n ),
    .fco(\U5/add0_syn_102 ),
    .q({\U5/cnt [0],open_n3600}));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_90  (
    .a(\U5/cnt [4:3]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_104 ),
    .fco(\U5/add0_syn_106 ),
    .q(\U5/cnt [4:3]));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_94  (
    .a(\U5/cnt [8:7]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_108 ),
    .fco(\U5/add0_syn_110 ),
    .q(\U5/cnt [8:7]));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_96  (
    .a(\U5/cnt [10:9]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_110 ),
    .f({open_n3660,\U5/cnt_b1 [9]}),
    .fco(\U5/add0_syn_112 ),
    .q({\U5/cnt [10],open_n3663}));  // ../../key_filter.v(12)
  EG_PHY_MSLICE #(
    //.MACRO("U5/reg0_syn_87"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_99  (
    .a(\U5/cnt [12:11]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_112 ),
    .fco(\U5/add0_syn_114 ),
    .q(\U5/cnt [12:11]));  // ../../key_filter.v(12)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*B*A*~(0@D))"),
    //.LUTF1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG0("(C*B*A*~(1@D))"),
    //.LUTG1("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000010000000),
    .INIT_LUTF1(16'b1100110011110000),
    .INIT_LUTG0(16'b1000000000000000),
    .INIT_LUTG1(16'b1100110011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_56  (
    .a({open_n3685,\U3/mux3_syn_178 }),
    .b({\U5/key_reg0 [1],\U3/mux3_syn_166 }),
    .c({\U5/key_reg1 [1],\U3/mux3_syn_168 }),
    .clk(CLK_dup_1),
    .d({\U5/cnt_b_n ,\U3/Count [2]}),
    .e({open_n3687,\U3/Pulse_x [8]}),
    .mi({open_n3689,\U5/cnt_b1 [1]}),
    .f({open_n3702,\U3/Count_b1_n }),
    .q({\U5/key_reg1 [1],\U5/cnt [1]}));  // ../../key_filter.v(24)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_58  (
    .b({open_n3708,\U5/key_reg0 [2]}),
    .c({open_n3709,\U5/key_reg1 [2]}),
    .clk(CLK_dup_1),
    .d({open_n3711,\U5/cnt_b_n }),
    .q({open_n3730,\U5/key_reg1 [2]}));  // ../../key_filter.v(24)
  EG_PHY_MSLICE #(
    //.LUT0("(~0*D*~C*~B*A)"),
    //.LUT1("(~1*D*~C*~B*A)"),
    .INIT_LUT0(16'b0000001000000000),
    .INIT_LUT1(16'b0000000000000000),
    .MODE("LOGIC"),
    .MSFXMUX("ON"))
    \U6/Count_b[22]_syn_31  (
    .a({\U6/Count_b[22]_syn_6 ,\U6/Count_b[22]_syn_6 }),
    .b({\U6/Count [12],\U6/Count [12]}),
    .c({\U6/Count [13],\U6/Count [13]}),
    .d({\U6/Count [14],\U6/Count [14]}),
    .mi({open_n3743,\U6/Count [15]}),
    .fx({open_n3748,\U6/Count_b[22]_syn_8 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUTF1("(D*C*~B*~A)"),
    //.LUTG0("(C*~(D)*~(B)+C*D*~(B)+~(C)*D*B+C*D*B)"),
    //.LUTG1("(D*C*~B*~A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111110000110000),
    .INIT_LUTF1(16'b0001000000000000),
    .INIT_LUTG0(16'b1111110000110000),
    .INIT_LUTG1(16'b0001000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/Count_b[22]_syn_33  (
    .a({\U6/Count [16],open_n3751}),
    .b({\U6/Count [17],RSTn_dup_3}),
    .c({\U6/Count [18],\LED_Out[1]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\U6/Count [19],\U1/LED_Out_b1 [1]}),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b[22]_syn_10 ,open_n3769}),
    .q({open_n3773,\LED_Out[1]_dup_3 }));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(~D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000000001000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/Count_b[22]_syn_35  (
    .a({\U6/Count [4],open_n3774}),
    .b({\U6/Count [5],open_n3775}),
    .c({\U6/Count [6],\U6/Count_b1 [6]}),
    .clk(CLK_dup_1),
    .d({\U6/Count [7],\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b[22]_syn_2 ,open_n3789}),
    .q({open_n3793,\U6/Count [6]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(D*~C*B*A)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(D*~C*B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000100000000000),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000100000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/Count_b[22]_syn_37  (
    .a({\U6/Count [8],open_n3794}),
    .b({\U6/Count [9],open_n3795}),
    .c({\U6/Count [10],\U6/Count_b1 [11]}),
    .clk(CLK_dup_1),
    .d({\U6/Count [11],\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b[22]_syn_6 ,open_n3813}),
    .q({open_n3817,\U6/Count [11]}));
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(D*~C*~B*A)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000001000000000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/Count_b[22]_syn_39  (
    .a({\U6/Count_b[22]_syn_10 ,open_n3818}),
    .b({\U6/Count [20],open_n3819}),
    .c({\U6/Count [21],\U6/Count_b1 [22]}),
    .clk(CLK_dup_1),
    .d({\U6/Count [22],\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b[22]_syn_12 ,open_n3833}),
    .q({open_n3837,\U6/Count [22]}));
  EG_PHY_LSLICE #(
    //.LUTF0("(~A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    //.LUTF1("(D*C*B*A)"),
    //.LUTG0("(~A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    //.LUTG1("(D*C*B*A)"),
    .INIT_LUTF0(16'b0000001101101101),
    .INIT_LUTF1(16'b1000000000000000),
    .INIT_LUTG0(16'b0000001101101101),
    .INIT_LUTG1(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"))
    \U6/Count_b[22]_syn_41  (
    .a({\U6/Count [0],\U4/sel1_syn_2 [0]}),
    .b({\U6/Count [1],\U4/sel1_syn_2 [1]}),
    .c({\U6/Count [2],\U4/sel1_syn_2 [2]}),
    .d({\U6/Count [3],\U4/sel1_syn_2 [3]}),
    .f({\U6/Count_b[22]_syn_4 ,\Digitron_Out[3]_dup_1 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(D*C*B*A)"),
    //.LUTG0("(D*C*B*A)"),
    .INIT_LUTF0(16'b1000000000000000),
    .INIT_LUTG0(16'b1000000000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"))
    \U6/Count_b[22]_syn_43  (
    .a({open_n3862,\U6/Count_b[22]_syn_8 }),
    .b({open_n3863,\U6/Count_b[22]_syn_12 }),
    .c({open_n3864,\U6/Count_b[22]_syn_2 }),
    .d({open_n3867,\U6/Count_b[22]_syn_4 }),
    .f({open_n3885,\U6/Count_b_n }));
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U6/add0_syn_176  (
    .a({\U6/Count [0],1'b0}),
    .b({1'b1,open_n3891}),
    .f({\U6/Count_b1 [0],open_n3911}),
    .fco(\U6/add0_syn_117 ));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y1Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/add0_syn_178  (
    .a(\U6/Count [6:5]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_121 ),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b1 [6],open_n3932}),
    .fco(\U6/add0_syn_123 ),
    .q({open_n3935,\U6/Count [5]}));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y2Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/add0_syn_180  (
    .a(\U6/Count [8:7]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_123 ),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b1 [8],open_n3952}),
    .fco(\U6/add0_syn_125 ),
    .q({open_n3955,\U6/Count [7]}));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y3Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/add0_syn_184  (
    .a(\U6/Count [14:13]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_129 ),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b1 [14],open_n3972}),
    .fco(\U6/add0_syn_131 ),
    .q({open_n3975,\U6/Count [13]}));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y4Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/add0_syn_186  (
    .a(\U6/Count [18:17]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_133 ),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b1 [18],open_n3992}),
    .fco(\U6/add0_syn_135 ),
    .q({open_n3995,\U6/Count [17]}));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y5Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/add0_syn_189  (
    .a(\U6/Count [22:21]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_137 ),
    .sr(RSTn_dup_3),
    .f({\U6/Count_b1 [22],open_n4012}),
    .q({open_n4016,\U6/Count [21]}));  // ../../../../1_run_led/run_led/led8_module.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y0Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_101  (
    .a(\U6/Count [2:1]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_117 ),
    .sr(RSTn_dup_3),
    .fco(\U6/add0_syn_119 ),
    .q(\U6/Count [2:1]));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y1Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_104  (
    .a(\U6/Count [4:3]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_119 ),
    .sr(RSTn_dup_3),
    .fco(\U6/add0_syn_121 ),
    .q(\U6/Count [4:3]));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y2Z1"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_108  (
    .a(\U6/Count [10:9]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_125 ),
    .sr(RSTn_dup_3),
    .f({open_n4073,\U6/Count_b1 [9]}),
    .fco(\U6/add0_syn_127 ),
    .q({\U6/Count [10],open_n4076}));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y3Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_110  (
    .a(\U6/Count [12:11]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_127 ),
    .sr(RSTn_dup_3),
    .f({open_n4093,\U6/Count_b1 [11]}),
    .fco(\U6/add0_syn_129 ),
    .q({\U6/Count [12],open_n4096}));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_114  (
    .a(\U6/Count [16:15]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_131 ),
    .sr(RSTn_dup_3),
    .fco(\U6/add0_syn_133 ),
    .q(\U6/Count [16:15]));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y5Z0"),
    .ALUTYPE("ADD"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_117  (
    .a(\U6/Count [20:19]),
    .b(2'b00),
    .clk(CLK_dup_1),
    .fci(\U6/add0_syn_135 ),
    .sr(RSTn_dup_3),
    .f({open_n4133,\U6/Count_b1 [19]}),
    .fco(\U6/add0_syn_137 ),
    .q({\U6/Count [20],open_n4136}));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTF1("(C*~D)"),
    //.LUTG0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUTG1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100110011110000),
    .INIT_LUTF1(16'b0000000011110000),
    .INIT_LUTG0(16'b1100110011110000),
    .INIT_LUTG1(16'b0000000011110000),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_138  (
    .b({open_n4139,\U6/rLED_Out_b1 [0]}),
    .c({\U6/Count_b1 [0],\LED_Run[0]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\U6/Count_b_n ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .q({\U6/Count [0],\LED_Run[0]_dup_3 }));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_142  (
    .c(\U6/Count_b1 [9:8]),
    .clk(CLK_dup_1),
    .d({\U6/Count_b_n ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .q(\U6/Count [9:8]));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~D)"),
    //.LUT1("(C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000011110000),
    .INIT_LUT1(16'b0000000011110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_147  (
    .c(\U6/Count_b1 [19:18]),
    .clk(CLK_dup_1),
    .d({\U6/Count_b_n ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .q(\U6/Count [19:18]));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MSLICE #(
    //.LUT0("(C*~(B)*~(D)+C*B*~(D)+~(C)*B*D+C*B*D)"),
    //.LUT1("~(~B*~(~D*~C*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100110011110000),
    .INIT_LUT1(16'b1100110011001101),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_43  (
    .a({\LED_Run[0]_dup_3 ,open_n4206}),
    .b({\LED_Run[1]_dup_3 ,\LED_Run[0]_dup_3 }),
    .c({\LED_Run[2]_dup_3 ,\LED_Run[3]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\LED_Run[3]_dup_3 ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .f({\U6/rLED_Out_b1 [0],open_n4220}),
    .q({open_n4224,\LED_Run[3]_dup_3 }));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_LSLICE #(
    //.LUTF0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTF1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG0("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    //.LUTG1("(B*~(C)*~(D)+B*C*~(D)+~(B)*C*D+B*C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111000011001100),
    .INIT_LUTF1(16'b1111000011001100),
    .INIT_LUTG0(16'b1111000011001100),
    .INIT_LUTG1(16'b1111000011001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .REG1_REGSET("RESET"),
    .REG1_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_46  (
    .b({\LED_Run[1]_dup_3 ,\LED_Run[2]_dup_3 }),
    .c({\LED_Run[2]_dup_3 ,\LED_Run[3]_dup_3 }),
    .clk(CLK_dup_1),
    .d({\U6/Count_b_n ,\U6/Count_b_n }),
    .sr(RSTn_dup_3),
    .q({\LED_Run[1]_dup_3 ,\LED_Run[2]_dup_3 }));  // ../../../../1_run_led/run_led/led8_module.v(16)
  EG_PHY_MULT18 #(
    .INPUTREGA("DISABLE"),
    .INPUTREGB("DISABLE"),
    .MODE("MULT9X9C"),
    .OUTPUTREG("DISABLE"),
    .SIGNEDAMUX("0"),
    .SIGNEDBMUX("0"))
    \U7/mult0_syn_2  (
    .a({open_n4249,open_n4250,open_n4251,open_n4252,open_n4253,open_n4254,open_n4255,open_n4256,open_n4257,5'b00000,\U7/TimerH_Set }),
    .b({open_n4276,open_n4277,open_n4278,open_n4279,open_n4280,open_n4281,open_n4282,open_n4283,open_n4284,9'b000000101}),
    .p({open_n4350,open_n4351,open_n4352,open_n4353,open_n4354,open_n4355,open_n4356,open_n4357,open_n4358,open_n4359,open_n4360,open_n4361,open_n4362,open_n4363,open_n4364,open_n4365,open_n4366,open_n4367,open_n4368,open_n4369,open_n4370,open_n4371,open_n4372,open_n4373,open_n4374,open_n4375,open_n4376,open_n4377,open_n4378,\U7/Change_Time_b [7:1]}));  // ../../countdown_module.v(51)
  EG_PHY_LSLICE #(
    //.LUTF0("((C*~(D)*~(0)+C*D*~(0)+~(C)*D*0+C*D*0)*~(~B*~A))"),
    //.LUTG0("((C*~(D)*~(1)+C*D*~(1)+~(C)*D*1+C*D*1)*~(~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110000011100000),
    .INIT_LUTG0(16'b1110111000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_233  (
    .a({open_n4379,\U7/reg0_syn_11 }),
    .b({open_n4380,\U7/reg0_syn_63 }),
    .c({open_n4381,\U7/reg0_syn_120 }),
    .clk(Set_Time_dup_1),
    .d({open_n4383,\U7/reg0_syn_126 }),
    .e({open_n4384,\U7/reg0_syn_128 }),
    .mi({open_n4386,1'b0}),
    .sr(\U7/temp_time_b [1]),
    .f({open_n4398,\U4/reg1_syn_16 }),
    .q({open_n4402,\U7/reg0_syn_86 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("((C*~(D)*~(0)+C*D*~(0)+~(C)*D*0+C*D*0)*~(~B*~A))"),
    //.LUTG0("((C*~(D)*~(1)+C*D*~(1)+~(C)*D*1+C*D*1)*~(~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110000011100000),
    .INIT_LUTG0(16'b1110111000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_235  (
    .a({open_n4403,\U7/reg0_syn_11 }),
    .b({open_n4404,\U7/reg0_syn_43 }),
    .c({open_n4405,\U7/reg0_syn_100 }),
    .clk(\U7/temp_time_b [2]),
    .d({open_n4407,\U7/reg0_syn_106 }),
    .e({open_n4408,\U7/reg0_syn_108 }),
    .mi({open_n4410,1'b1}),
    .sr(\U7/temp_time_b1 [2]),
    .f({open_n4422,\U4/reg1_syn_18 }),
    .q({open_n4426,\U7/reg0_syn_98 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("((C*~(D)*~(0)+C*D*~(0)+~(C)*D*0+C*D*0)*~(~B*~A))"),
    //.LUTG0("((C*~(D)*~(1)+C*D*~(1)+~(C)*D*1+C*D*1)*~(~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110000011100000),
    .INIT_LUTG0(16'b1110111000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_238  (
    .a({open_n4427,\U7/reg0_syn_11 }),
    .b({open_n4428,\U7/reg0_syn_23 }),
    .c({open_n4429,\U7/reg0_syn_80 }),
    .clk(\U7/temp_time_b[1]_syn_4 ),
    .d({open_n4431,\U7/reg0_syn_86 }),
    .e({open_n4432,\U7/reg0_syn_88 }),
    .mi({open_n4434,1'b1}),
    .sr(\U7/temp_time_b1 [1]),
    .f({open_n4446,\U4/reg1_syn_29 }),
    .q({open_n4450,\U7/reg0_syn_88 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("((C*~(D)*~(0)+C*D*~(0)+~(C)*D*0+C*D*0)*~(~B*~A))"),
    //.LUTG0("((C*~(D)*~(1)+C*D*~(1)+~(C)*D*1+C*D*1)*~(~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1110000011100000),
    .INIT_LUTG0(16'b1110111000000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_240  (
    .a({open_n4451,\U7/reg0_syn_11 }),
    .b({open_n4452,\U7/reg0_syn_13 }),
    .c({open_n4453,\U7/reg0_syn_70 }),
    .clk(\U7/temp_time_b3[0]_syn_2 ),
    .d({open_n4455,\U7/reg0_syn_76 }),
    .e({open_n4456,\U7/reg0_syn_78 }),
    .mi({open_n4458,1'b1}),
    .sr(\U7/temp_time_b1 [0]),
    .f({open_n4470,\U4/reg1_syn_32 }),
    .q({open_n4474,\U7/reg0_syn_78 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000111100000000),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_242  (
    .c({open_n4479,\U1/reg2_syn_17 }),
    .clk(Set_Time_dup_1),
    .d({open_n4481,\U1/reg2_syn_24 }),
    .mi({open_n4492,1'b0}),
    .sr(\U7/temp_time_b [4]),
    .f({open_n4493,\U1/mux10_syn_16 }),
    .q({open_n4497,\U7/reg0_syn_116 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_244  (
    .c({open_n4502,\U7/temp_time_b3 [0]}),
    .clk(Set_Time_dup_1),
    .d({open_n4504,\U7/temp_time_b1[2]_syn_6 }),
    .mi({open_n4515,1'b0}),
    .sr(\U7/temp_time_b3 [3]),
    .f({open_n4516,\U7/temp_time_b1 [0]}),
    .q({open_n4520,\U7/reg0_syn_106 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTG0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_246  (
    .c({open_n4525,\U7/temp_time_b [2]}),
    .clk(Set_Time_dup_1),
    .d({open_n4527,\U7/temp_time_b1[2]_syn_6 }),
    .mi({open_n4531,1'b0}),
    .sr(\U7/temp_time_b [5]),
    .f({open_n4543,\U7/temp_time_b1 [2]}),
    .q({open_n4547,\U7/reg0_syn_126 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    //.LUTG0("(D*~(B)*~(C)+D*B*~(C)+~(D)*B*C+D*B*C)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1100111111000000),
    .INIT_LUTG0(16'b1100111111000000),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("SET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_248  (
    .b({open_n4550,\U7/reg0_syn_116 }),
    .c({open_n4551,\U7/reg0_syn_118 }),
    .clk(Set_Time_dup_1),
    .d({open_n4553,\U7/reg0_syn_110 }),
    .mi({open_n4557,1'b0}),
    .sr(\U7/temp_time_b3 [0]),
    .f({open_n4569,\U7/reg0_syn_56 }),
    .q({open_n4573,\U7/reg0_syn_76 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTG0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_250  (
    .c({open_n4578,\DigitronCS_Out[2]_dup_1 }),
    .clk(Set_Time_dup_1),
    .d({open_n4580,\U1/Player_Number [1]}),
    .mi({open_n4584,1'b1}),
    .sr(\U7/temp_time_b1 [2]),
    .f({open_n4596,\U4/reg1_syn_61 }),
    .q({open_n4600,\U7/reg0_syn_90 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_252  (
    .clk(Set_Time_dup_1),
    .mi({open_n4620,1'b1}),
    .q({open_n4627,\U7/reg0_syn_11 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(B*~(~C*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100000011001100),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_254  (
    .b({open_n4630,\U1/mux15_syn_11 }),
    .c({open_n4631,\U1/reg2_syn_21 }),
    .clk(\U7/temp_time_b[1]_syn_4 ),
    .d({open_n4633,\U1/mux10_syn_16 }),
    .mi({open_n4644,1'b1}),
    .f({open_n4646,\U1/mux15_syn_19 }),
    .q({open_n4650,\U7/reg0_syn_23 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(~D*~C*~(~B*~A))"),
    //.LUTG0("(~D*~C*~(~B*~A))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001110),
    .INIT_LUTG0(16'b0000000000001110),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_256  (
    .a({open_n4651,\U7/reg0_syn_11 }),
    .b({open_n4652,\U7/reg0_syn_33 }),
    .c({open_n4653,\U7/reg0_syn_90 }),
    .clk(\U7/temp_time_b[4]_syn_2 ),
    .d({open_n4655,\U7/reg0_syn_98 }),
    .mi({open_n4659,1'b1}),
    .sr(\U7/temp_time_b1 [4]),
    .f({open_n4671,\U4/reg1_syn_26 }),
    .q({open_n4675,\U7/reg0_syn_118 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_259  (
    .c({open_n4680,\U7/temp_time_b3 [3]}),
    .clk(\U7/temp_time_b[5]_syn_3 ),
    .d({open_n4682,\U7/temp_time_b1[2]_syn_6 }),
    .mi({open_n4693,1'b1}),
    .sr(\U7/temp_time_b1 [5]),
    .f({open_n4694,\U7/temp_time_b1 [3]}),
    .q({open_n4698,\U7/reg0_syn_128 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTG0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_262  (
    .c({open_n4703,\U7/temp_time_b [4]}),
    .clk(\U7/temp_time_b3[3]_syn_2 ),
    .d({open_n4705,\U7/temp_time_b1[2]_syn_6 }),
    .mi({open_n4709,1'b1}),
    .sr(\U7/temp_time_b1 [3]),
    .f({open_n4721,\U7/temp_time_b1 [4]}),
    .q({open_n4725,\U7/reg0_syn_108 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    //.LUTF0("(~C*~D)"),
    //.LUTG0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_264  (
    .c({open_n4730,\U2/Block_Sel_Latched }),
    .clk(\U7/temp_time_b3[0]_syn_2 ),
    .d({open_n4732,\U1/Block }),
    .mi({open_n4736,1'b1}),
    .f({open_n4749,\U1/reg2_syn_15 }),
    .q({open_n4753,\U7/reg0_syn_13 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_266  (
    .c({open_n4758,\U7/reg0_syn_53 }),
    .clk(\U7/temp_time_b[4]_syn_2 ),
    .d({open_n4760,\U7/reg0_syn_11 }),
    .mi({open_n4771,1'b1}),
    .f({open_n4773,\U4/reg1_syn_20 }),
    .q({open_n4777,\U7/reg0_syn_53 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_268  (
    .c({open_n4782,\U7/temp_time_b1 [1]}),
    .clk(Set_Time_dup_1),
    .d({open_n4784,\U7/temp_time_b1[2]_syn_6 }),
    .sr(\U7/temp_time_b1 [1]),
    .f({open_n4797,\U7/temp_time_b [1]}),
    .q({open_n4801,\U7/reg0_syn_80 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_272  (
    .clk(\U7/temp_time_b1 [2]),
    .mi({open_n4814,1'b1}),
    .q({open_n4832,\U7/reg0_syn_33 }));  // ../../countdown_module.v(41)
  EG_PHY_LSLICE #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REG0_REGSET("RESET"),
    .REG0_SD("MI"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_274  (
    .clk(\U7/temp_time_b[5]_syn_3 ),
    .mi({open_n4845,1'b1}),
    .q({open_n4863,\U7/reg0_syn_63 }));  // ../../countdown_module.v(41)
  EG_PHY_MSLICE #(
    //.LUT0("~(~B*~(~C*~(~D*~A)))"),
    //.LUT1("(~B*~(~C*~D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUT0(16'b1100111111001110),
    .INIT_LUT1(16'b0011001100110000),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/temp_time_b1[2]_syn_21  (
    .a({open_n4864,\U7/temp_time_b8 [2]}),
    .b({Sel_Time1_dup_7,Sel_Time1_dup_7}),
    .c({Sel_Time2_dup_9,Sel_Time2_dup_9}),
    .clk(Set_Time_dup_1),
    .d({\U7/temp_time_b8 [2],Sel_Time3_dup_5}),
    .sr(\U7/temp_time_b1 [0]),
    .f({\U7/temp_time_b [2],\U7/temp_time_b3 [0]}),
    .q({open_n4881,\U7/reg0_syn_70 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(C*~D)"),
    //.LUTF1("(~C*~D)"),
    //.LUTG0("(C*~D)"),
    //.LUTG1("(~C*~D)"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b0000000011110000),
    .INIT_LUTF1(16'b0000000000001111),
    .INIT_LUTG0(16'b0000000011110000),
    .INIT_LUTG1(16'b0000000000001111),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/temp_time_b1[2]_syn_23  (
    .c({Sel_Time6_dup_1,Sel_Time6_dup_1}),
    .clk(Set_Time_dup_1),
    .d({\U7/temp_time_b1 [5],\U7/temp_time_b1 [5]}),
    .sr(\U7/temp_time_b1 [5]),
    .f({\U7/temp_time_b1[2]_syn_6 ,\U7/temp_time_b [5]}),
    .q({open_n4906,\U7/reg0_syn_120 }));
  EG_PHY_MSLICE #(
    //.LUT0("~(~D*~C*~B*A)"),
    //.LUT1("(C*~B*~D)"),
    .INIT_LUT0(16'b1111111111111101),
    .INIT_LUT1(16'b0000000000110000),
    .MODE("LOGIC"))
    \U7/temp_time_b1[2]_syn_26  (
    .a({open_n4907,\U7/temp_time_b1[2]_syn_2 }),
    .b({Sel_Time4_dup_1,Sel_Time3_dup_5}),
    .c({Sel_Time5_dup_1,Sel_Time4_dup_1}),
    .d({Sel_Time3_dup_5,Sel_Time5_dup_1}),
    .f({\U7/temp_time_b8 [2],\U7/temp_time_b1 [5]}));
  EG_PHY_MSLICE #(
    //.LUT0("(~C*~D)"),
    .INIT_LUT0(16'b0000000000001111),
    .MODE("LOGIC"))
    \U7/temp_time_b1[2]_syn_28  (
    .c({open_n4932,Sel_Time2_dup_9}),
    .d({open_n4935,Sel_Time1_dup_7}),
    .f({open_n4949,\U7/temp_time_b1[2]_syn_2 }));
  EG_PHY_LSLICE #(
    //.LUTF0("(A*~(~D*~C*~B))"),
    //.LUTF1("(~D*~(~C*~B))"),
    //.LUTG0("(A*~(~D*~C*~B))"),
    //.LUTG1("(~D*~(~C*~B))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1010101010101000),
    .INIT_LUTF1(16'b0000000011111100),
    .INIT_LUTG0(16'b1010101010101000),
    .INIT_LUTG1(16'b0000000011111100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/temp_time_b1[3]_syn_10  (
    .a({open_n4955,\U7/temp_time_b1[2]_syn_2 }),
    .b({Sel_Time4_dup_1,Sel_Time3_dup_5}),
    .c({Sel_Time5_dup_1,Sel_Time4_dup_1}),
    .clk(Set_Time_dup_1),
    .d({Sel_Time3_dup_5,Sel_Time5_dup_1}),
    .sr(\U7/temp_time_b1 [4]),
    .f({\U7/temp_time_b1[3]_syn_2 ,\U7/temp_time_b [4]}),
    .q({open_n4976,\U7/reg0_syn_110 }));
  EG_PHY_GCLK \U7/temp_time_b3[0]_syn_1  (
    .clki(\U7/temp_time_b3 [0]),
    .clko(\U7/temp_time_b3[0]_syn_2 ));
  EG_PHY_GCLK \U7/temp_time_b3[3]_syn_1  (
    .clki(\U7/temp_time_b3 [3]),
    .clko(\U7/temp_time_b3[3]_syn_2 ));
  EG_PHY_GCLK \U7/temp_time_b[1]_syn_3  (
    .clki(\U7/temp_time_b [1]),
    .clko(\U7/temp_time_b[1]_syn_4 ));
  EG_PHY_LSLICE #(
    //.LUTF0("~(C*~D)"),
    //.LUTF1("~(~B*~(~C*D))"),
    //.LUTG0("~(C*~D)"),
    //.LUTG1("~(~B*~(~C*D))"),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .INIT_LUTF0(16'b1111111100001111),
    .INIT_LUTF1(16'b1100111111001100),
    .INIT_LUTG0(16'b1111111100001111),
    .INIT_LUTG1(16'b1100111111001100),
    .LSFMUX0("FUNC5"),
    .LSFMUX1("FUNC5"),
    .MODE("LOGIC"),
    .REG0_REGSET("RESET"),
    .REG0_SD("F"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/temp_time_b[1]_syn_9  (
    .b({Sel_Time1_dup_7,open_n4979}),
    .c({Sel_Time2_dup_9,\U7/temp_time_b1[2]_syn_2 }),
    .clk(Set_Time_dup_1),
    .d({\U7/temp_time_b1[3]_syn_2 ,\U7/temp_time_b1[3]_syn_2 }),
    .sr(\U7/temp_time_b1 [3]),
    .f({\U7/temp_time_b1 [1],\U7/temp_time_b3 [3]}),
    .q({open_n5000,\U7/reg0_syn_100 }));
  EG_PHY_GCLK \U7/temp_time_b[4]_syn_1  (
    .clki(\U7/temp_time_b [4]),
    .clko(\U7/temp_time_b[4]_syn_2 ));
  EG_PHY_GCLK \U7/temp_time_b[5]_syn_2  (
    .clki(\U7/temp_time_b [5]),
    .clko(\U7/temp_time_b[5]_syn_3 ));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

