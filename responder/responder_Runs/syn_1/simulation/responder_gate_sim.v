// Verilog netlist created by Tang Dynasty v5.6.71036
// Sat Jul 27 21:11:53 2024

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
  wire [24:0] \U1/Count_b2 ;
  wire [24:0] \U1/Count_b3 ;
  wire [3:0] \U1/LED_Out_b1 ;
  wire [3:0] \U1/Player_Number ;  // ../../Sel_module.v(10)
  wire [24:0] \U2/Count ;  // ../../Timer_module.v(19)
  wire [24:0] \U2/Count_b ;
  wire [24:0] \U2/Count_b1 ;
  wire [7:0] \U2/ROM ;  // ../../Timer_module.v(22)
  wire [3:0] \U2/TimerH ;  // ../../Timer_module.v(10)
  wire [3:0] \U2/TimerH_b1 ;
  wire [7:0] \U2/TimerH_b3 ;
  wire [3:0] \U2/TimerL ;  // ../../Timer_module.v(11)
  wire [3:0] \U2/TimerL_b1 ;
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
  wire [22:0] \U6/Count ;  // ../../../../1 run_led/run_led/led8_module.v(12)
  wire [22:0] \U6/Count_b ;
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
  wire \U1/Block_reg_syn_3 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_3 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_6 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_8 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_10 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_12 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_14 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_16 ;  // ../../Sel_module.v(20)
  wire \U1/Buzzer_Enable_reg_syn_18 ;  // ../../Sel_module.v(20)
  wire \U1/Timer_Start_reg_syn_3 ;  // ../../Sel_module.v(20)
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
  wire \U1/reg1_syn_7 ;  // ../../Sel_module.v(20)
  wire \U1/reg1_syn_9 ;  // ../../Sel_module.v(20)
  wire \U1/reg1_syn_11 ;  // ../../Sel_module.v(20)
  wire \U1/reg1_syn_13 ;  // ../../Sel_module.v(20)
  wire \U1/reg1_syn_15 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_7 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_9 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_11 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_13 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_15 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_17 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_19 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_21 ;  // ../../Sel_module.v(20)
  wire \U1/reg2_syn_24 ;  // ../../Sel_module.v(20)
  wire \U1/Block ;  // ../../Sel_module.v(15)
  wire \U1/Buzzer_Enable ;  // ../../Sel_module.v(12)
  wire \U1/Timer_Start ;  // ../../Sel_module.v(11)
  wire \U2/Block_Sel_Latched_reg_syn_4 ;  // ../../Timer_module.v(83)
  wire \U2/CLK1_reg_syn_3 ;  // ../../Timer_module.v(34)
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
  wire \U2/CLK1_n4 ;
  wire \U2/count1 ;  // ../../Timer_module.v(17)
  wire \U2/count1_n ;
  wire \U3/W_buzzer_reg_syn_5 ;  // ../../Buzzer_module.v(33)
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
  wire \U3/reg1_syn_26 ;  // ../../Buzzer_module.v(17)
  wire \U3/Count_b1_n ;
  wire \U3/Count_b_n2 ;
  wire \U3/Pulse_x_b_n ;
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
  wire \U4/reg0_syn_19 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_21 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_23 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_25 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_27 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_29 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_31 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_33 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_35 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_37 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg0_syn_39 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg1_syn_7 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_9 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_11 ;  // ../../Digitron_NumDisplay.v(57)
  wire \U4/reg1_syn_13 ;  // ../../Digitron_NumDisplay.v(57)
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
  wire \U4/reg3_syn_5 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/reg3_syn_7 ;  // ../../Digitron_NumDisplay.v(21)
  wire \U4/Count_b_n ;
  wire \U4/SingleNum_b_n4 ;
  wire \U4/W_DigitronCS_Out_n ;
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
  wire \U5/reg2_syn_7 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_9 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_11 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_13 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_15 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_17 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_19 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_21 ;  // ../../key_filter.v(24)
  wire \U5/reg2_syn_23 ;  // ../../key_filter.v(24)
  wire \U5/cnt_b_n ;
  wire \U6/add0_syn_117 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_119 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_121 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_123 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_125 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_127 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_129 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_131 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_133 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_135 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/add0_syn_137 ;  // ../../../../1 run_led/run_led/led8_module.v(33)
  wire \U6/reg1_syn_7 ;  // ../../../../1 run_led/run_led/led8_module.v(16)
  wire \U6/reg1_syn_9 ;  // ../../../../1 run_led/run_led/led8_module.v(16)
  wire \U6/reg1_syn_11 ;  // ../../../../1 run_led/run_led/led8_module.v(16)
  wire \U6/reg1_syn_13 ;  // ../../../../1 run_led/run_led/led8_module.v(16)
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
  wire \U7/temp_time_b1[3]_syn_2 ;
  wire \U7/temp_time_b1[2]_syn_2 ;
  wire \U7/temp_time_b1[2]_syn_6 ;

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
    .osclk(\U4/W_DigitronCS_Out_n ),
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
    .osclk(\U4/W_DigitronCS_Out_n ),
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
    .osclk(\U4/W_DigitronCS_Out_n ),
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
    .osclk(\U4/W_DigitronCS_Out_n ),
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
    .osclk(\U2/CLK1 ),
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
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/Block_reg  (
    .clk(CLK_dup_1),
    .d(\U1/Block_reg_syn_3 ),
    .sr(RSTn_dup_3),
    .q(\U1/Block ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("~(~D*~(~E*C*~(~B*A)))"),
    .INIT(32'hff00ffd0))
    \U1/Block_reg_syn_4  (
    .a(\U1/mux10_syn_16 ),
    .b(\U1/reg2_syn_21 ),
    .c(RSTn_dup_3),
    .d(\U1/Block ),
    .e(\U2/Block_Sel_Latched ),
    .o(\U1/Block_reg_syn_3 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/Buzzer_Enable_reg  (
    .clk(CLK_dup_1),
    .d(\U1/Buzzer_Enable_reg_syn_3 ),
    .sr(RSTn_dup_3),
    .q(\U1/Buzzer_Enable ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U1/Buzzer_Enable_reg_syn_11  (
    .a(\U1/Count [6]),
    .b(\U1/Count [7]),
    .c(\U1/Count [8]),
    .d(\U1/Count [9]),
    .o(\U1/Buzzer_Enable_reg_syn_12 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*~A)"),
    .INIT(16'h4000))
    \U1/Buzzer_Enable_reg_syn_13  (
    .a(\U1/Count [10]),
    .b(\U1/Count [11]),
    .c(\U1/Count [12]),
    .d(\U1/Count [13]),
    .o(\U1/Buzzer_Enable_reg_syn_14 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    \U1/Buzzer_Enable_reg_syn_15  (
    .a(\U1/Buzzer_Enable_reg_syn_10 ),
    .b(\U1/Buzzer_Enable_reg_syn_12 ),
    .c(\U1/Buzzer_Enable_reg_syn_14 ),
    .d(\U1/Count [0]),
    .e(\U1/Count [1]),
    .o(\U1/Buzzer_Enable_reg_syn_16 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("(E*~D*C*B*A)"),
    .INIT(32'h00800000))
    \U1/Buzzer_Enable_reg_syn_17  (
    .a(\U1/Buzzer_Enable_reg_syn_16 ),
    .b(\U1/Buzzer_Enable_reg_syn_8 ),
    .c(\U1/Count [22]),
    .d(\U1/Count [23]),
    .e(\U1/Count [24]),
    .o(\U1/Buzzer_Enable_reg_syn_18 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("~(~A*(~(E*~C)*~(B)*~(D)+~(E*~C)*B*~(D)+~(~(E*~C))*B*D+~(E*~C)*B*D))"),
    .INIT(32'hbbafbbaa))
    \U1/Buzzer_Enable_reg_syn_19  (
    .a(\U1/mux15_syn_19 ),
    .b(\U1/Buzzer_Enable_reg_syn_18 ),
    .c(\U1/mux15_syn_11 ),
    .d(\U1/mux14_syn_104 ),
    .e(\U1/Buzzer_Enable ),
    .o(\U1/Buzzer_Enable_reg_syn_3 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \U1/Buzzer_Enable_reg_syn_4  (
    .a(RSTn_dup_3),
    .b(\U1/Timer_Start ),
    .o(\U1/mux14_syn_104 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    \U1/Buzzer_Enable_reg_syn_5  (
    .a(\U1/Count [14]),
    .b(\U1/Count [15]),
    .c(\U1/Count [16]),
    .d(\U1/Count [17]),
    .o(\U1/Buzzer_Enable_reg_syn_6 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    \U1/Buzzer_Enable_reg_syn_7  (
    .a(\U1/Buzzer_Enable_reg_syn_6 ),
    .b(\U1/Count [18]),
    .c(\U1/Count [19]),
    .d(\U1/Count [20]),
    .e(\U1/Count [21]),
    .o(\U1/Buzzer_Enable_reg_syn_8 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U1/Buzzer_Enable_reg_syn_9  (
    .a(\U1/Count [2]),
    .b(\U1/Count [3]),
    .c(\U1/Count [4]),
    .d(\U1/Count [5]),
    .o(\U1/Buzzer_Enable_reg_syn_10 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[0]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [0]),
    .o(\U1/Count_b2 [0]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[1]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [1]),
    .o(\U1/Count_b2 [1]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[2]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [2]),
    .o(\U1/Count_b2 [2]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[3]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [3]),
    .o(\U1/Count_b2 [3]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[4]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [4]),
    .o(\U1/Count_b2 [4]));
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U1/Count_b2[5]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [5]),
    .o(\U1/Count_b2 [5]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U1/Count_b2[6]_syn_1  (
    .a(\U1/Buzzer_Enable_reg_syn_18 ),
    .b(\U1/Count_b3 [6]),
    .o(\U1/Count_b2 [6]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U1/LED_Out_b1[0]_syn_1  (
    .a(\U1/reg2_syn_15 ),
    .b(\U1/reg2_syn_17 ),
    .c(\LED_Out[0]_dup_3 ),
    .o(\U1/LED_Out_b1 [0]));
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \U1/LED_Out_b1[2]_syn_1  (
    .a(\U1/reg1_syn_15 ),
    .b(\U1/reg2_syn_15 ),
    .c(\LED_Out[2]_dup_3 ),
    .o(\U1/LED_Out_b1 [2]));
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/Timer_Start_reg  (
    .clk(CLK_dup_1),
    .d(\U1/Timer_Start_reg_syn_3 ),
    .sr(RSTn_dup_3),
    .q(\U1/Timer_Start ));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*~B))"),
    .INIT(8'h54))
    \U1/Timer_Start_reg_syn_4  (
    .a(\U1/mux15_syn_19 ),
    .b(\U1/mux15_syn_11 ),
    .c(\U1/Timer_Start ),
    .o(\U1/Timer_Start_reg_syn_3 ));  // ../../Sel_module.v(20)
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
    .f({\U1/Count_b3 [1],open_n641}),
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
    .a({open_n734,\U1/Count [23]}),
    .b({open_n735,\U1/Count [24]}),
    .c(2'b00),
    .d({open_n738,1'b0}),
    .e({open_n739,1'b0}),
    .fci(\U1/add0_syn_149 ),
    .f({open_n754,\U1/Count_b3 [23]}),
    .fx({open_n756,\U1/Count_b3 [24]}));  // ../../Sel_module.v(47)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_28  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [0]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [0]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_30  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [1]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [1]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_32  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [2]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [2]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_34  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [3]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [3]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_36  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [4]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [4]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_38  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [5]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [5]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_40  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b2 [6]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [6]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_42  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [7]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [7]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_44  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [8]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [8]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_46  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [9]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [9]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_48  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [10]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [10]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_50  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [11]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [11]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_52  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [12]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [12]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_54  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [13]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [13]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_56  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [14]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [14]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_58  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [15]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [15]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_60  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [16]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [16]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_62  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [17]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [17]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_64  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [18]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [18]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_66  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [19]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [19]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_68  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [20]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [20]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_70  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [21]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [21]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_72  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [22]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [22]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_74  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [23]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [23]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg0_syn_76  (
    .ce(\U1/mux14_syn_104 ),
    .clk(CLK_dup_1),
    .d(\U1/Count_b3 [24]),
    .sr(RSTn_dup_3),
    .q(\U1/Count [24]));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U1/reg1_syn_14  (
    .a(\U1/reg2_syn_17 ),
    .b(\U1/reg2_syn_19 ),
    .c(\U5/key_reg0 [2]),
    .d(\U5/key_reg1 [2]),
    .o(\U1/reg1_syn_15 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(D*~((C*A))*~(B)+D*(C*A)*~(B)+~(D)*(C*A)*B+D*(C*A)*B)"),
    .INIT(16'hb380))
    \U1/reg1_syn_16  (
    .a(\U1/mux10_syn_16 ),
    .b(\U1/reg2_syn_15 ),
    .c(\U1/reg2_syn_21 ),
    .d(\LED_Out[3]_dup_3 ),
    .o(\U1/LED_Out_b1 [3]));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \U1/reg1_syn_17  (
    .a(\U1/reg1_syn_15 ),
    .b(\U1/mux15_syn_11 ),
    .c(\LED_Out[2]_dup_3 ),
    .o(\U1/reg1_syn_11 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \U1/reg1_syn_18  (
    .a(\U1/LED_Out_b1 [3]),
    .b(RSTn_dup_3),
    .c(\LED_Out[3]_dup_3 ),
    .o(\U1/reg1_syn_13 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(D*~((C*~B))*~(A)+D*(C*~B)*~(A)+~(D)*(C*~B)*A+D*(C*~B)*A)"),
    .INIT(16'h7520))
    \U1/reg1_syn_19  (
    .a(\U1/reg2_syn_15 ),
    .b(\U1/reg2_syn_17 ),
    .c(\U1/reg2_syn_19 ),
    .d(\LED_Out[1]_dup_3 ),
    .o(\U1/LED_Out_b1 [1]));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)"),
    .INIT(8'hb8))
    \U1/reg1_syn_20  (
    .a(\U1/LED_Out_b1 [1]),
    .b(RSTn_dup_3),
    .c(\LED_Out[1]_dup_3 ),
    .o(\U1/reg1_syn_9 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U1/reg1_syn_21  (
    .a(\U1/mux15_syn_11 ),
    .b(\U1/reg2_syn_17 ),
    .c(\LED_Out[0]_dup_3 ),
    .o(\U1/reg1_syn_7 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg1_syn_23  (
    .clk(CLK_dup_1),
    .d(\U1/reg1_syn_7 ),
    .sr(RSTn_dup_3),
    .q(\LED_Out[0]_dup_3 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg1_syn_25  (
    .clk(CLK_dup_1),
    .d(\U1/reg1_syn_9 ),
    .sr(RSTn_dup_3),
    .q(\LED_Out[1]_dup_3 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg1_syn_27  (
    .clk(CLK_dup_1),
    .d(\U1/reg1_syn_11 ),
    .sr(RSTn_dup_3),
    .q(\LED_Out[2]_dup_3 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg1_syn_29  (
    .clk(CLK_dup_1),
    .d(\U1/reg1_syn_13 ),
    .sr(RSTn_dup_3),
    .q(\LED_Out[3]_dup_3 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U1/reg2_syn_14  (
    .a(\U1/Block ),
    .b(\U2/Block_Sel_Latched ),
    .o(\U1/reg2_syn_15 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U1/reg2_syn_16  (
    .a(\U5/key_reg0 [0]),
    .b(\U5/key_reg1 [0]),
    .o(\U1/reg2_syn_17 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U1/reg2_syn_18  (
    .a(\U5/key_reg0 [1]),
    .b(\U5/key_reg1 [1]),
    .o(\U1/reg2_syn_19 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U1/reg2_syn_20  (
    .a(\U5/key_reg0 [3]),
    .b(\U5/key_reg1 [3]),
    .o(\U1/reg2_syn_21 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \U1/reg2_syn_22  (
    .a(\U1/reg2_syn_15 ),
    .b(RSTn_dup_3),
    .o(\U1/mux15_syn_11 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*~B))"),
    .INIT(8'h54))
    \U1/reg2_syn_23  (
    .a(\U1/reg2_syn_19 ),
    .b(\U5/key_reg0 [2]),
    .c(\U5/key_reg1 [2]),
    .o(\U1/reg2_syn_24 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \U1/reg2_syn_25  (
    .a(\U1/reg2_syn_24 ),
    .b(\U1/reg2_syn_17 ),
    .o(\U1/mux10_syn_16 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("(A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .INIT(16'hbb80))
    \U1/reg2_syn_26  (
    .a(\U1/mux10_syn_16 ),
    .b(\U1/mux15_syn_11 ),
    .c(\U1/reg2_syn_21 ),
    .d(\U1/Player_Number [2]),
    .o(\U1/reg2_syn_11 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+~(A)*~(B)*C*D*E+~(A)*B*C*D*E)"),
    .INIT(32'h575f0202))
    \U1/reg2_syn_27  (
    .a(\U1/mux15_syn_11 ),
    .b(\U1/reg2_syn_24 ),
    .c(\U1/reg2_syn_17 ),
    .d(\U1/reg2_syn_21 ),
    .e(\U1/Player_Number [1]),
    .o(\U1/reg2_syn_9 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT3 #(
    .EQN("(B*~(~C*A))"),
    .INIT(8'hc4))
    \U1/reg2_syn_28  (
    .a(\U1/mux10_syn_16 ),
    .b(\U1/mux15_syn_11 ),
    .c(\U1/reg2_syn_21 ),
    .o(\U1/mux15_syn_19 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT5 #(
    .EQN("~(~(~(~D*~B)*C)*~(E*~A))"),
    .INIT(32'hf5d5f0c0))
    \U1/reg2_syn_29  (
    .a(\U1/mux15_syn_19 ),
    .b(\U1/reg1_syn_15 ),
    .c(\U1/mux15_syn_11 ),
    .d(\U1/reg2_syn_17 ),
    .e(\U1/Player_Number [0]),
    .o(\U1/reg2_syn_7 ));  // ../../Sel_module.v(20)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U1/reg2_syn_30  (
    .a(\U1/mux15_syn_19 ),
    .b(\U1/Player_Number [3]),
    .o(\U1/reg2_syn_13 ));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_32  (
    .clk(CLK_dup_1),
    .d(\U1/reg2_syn_7 ),
    .sr(RSTn_dup_3),
    .q(\U1/Player_Number [0]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_34  (
    .clk(CLK_dup_1),
    .d(\U1/reg2_syn_9 ),
    .sr(RSTn_dup_3),
    .q(\U1/Player_Number [1]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_36  (
    .clk(CLK_dup_1),
    .d(\U1/reg2_syn_11 ),
    .sr(RSTn_dup_3),
    .q(\U1/Player_Number [2]));  // ../../Sel_module.v(20)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U1/reg2_syn_38  (
    .clk(CLK_dup_1),
    .d(\U1/reg2_syn_13 ),
    .sr(RSTn_dup_3),
    .q(\U1/Player_Number [3]));  // ../../Sel_module.v(20)
  AL_MAP_LUT4 #(
    .EQN("~(~C*~(D*B*A))"),
    .INIT(16'hf8f0))
    \U2/Block_Sel_Latched_reg_syn_5  (
    .a(\U2/TimerL_b1[3]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_2 ),
    .c(\U2/Block_Sel_Latched ),
    .d(\U2/TimerL [0]),
    .o(\U2/Block_Sel_Latched_reg_syn_4 ));  // ../../Timer_module.v(83)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/Block_Sel_Latched_reg_syn_7  (
    .clk(\U2/CLK1 ),
    .d(\U2/Block_Sel_Latched_reg_syn_4 ),
    .sr(RSTn_dup_3),
    .q(\U2/Block_Sel_Latched ));  // ../../Timer_module.v(83)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U2/CLK1_reg  (
    .clk(CLK_dup_1),
    .d(\U2/CLK1_reg_syn_3 ),
    .q(\U2/CLK1 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U2/CLK1_reg_syn_10  (
    .a(\U2/Count [6]),
    .b(\U2/Count [7]),
    .c(\U2/Count [8]),
    .d(\U2/Count [9]),
    .o(\U2/CLK1_reg_syn_11 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*~B*A)"),
    .INIT(32'h20000000))
    \U2/CLK1_reg_syn_12  (
    .a(\U2/CLK1_reg_syn_11 ),
    .b(\U2/Count [10]),
    .c(\U2/Count [11]),
    .d(\U2/Count [12]),
    .e(\U2/Count [13]),
    .o(\U2/CLK1_reg_syn_13 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U2/CLK1_reg_syn_14  (
    .a(\U2/CLK1_reg_syn_13 ),
    .b(\U2/CLK1_reg_syn_9 ),
    .c(\U2/Count [0]),
    .d(\U2/Count [1]),
    .o(\U2/CLK1_reg_syn_15 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT5 #(
    .EQN("(E*~D*C*B*A)"),
    .INIT(32'h00800000))
    \U2/CLK1_reg_syn_16  (
    .a(\U2/CLK1_reg_syn_15 ),
    .b(\U2/CLK1_reg_syn_7 ),
    .c(\U2/Count [22]),
    .d(\U2/Count [23]),
    .e(\U2/Count [24]),
    .o(\U2/CLK1_n4 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT3 #(
    .EQN("(C@(B*A))"),
    .INIT(8'h78))
    \U2/CLK1_reg_syn_17  (
    .a(\U2/CLK1_n4 ),
    .b(\U1/Timer_Start ),
    .c(\U2/CLK1 ),
    .o(\U2/CLK1_reg_syn_3 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    \U2/CLK1_reg_syn_4  (
    .a(\U2/Count [14]),
    .b(\U2/Count [15]),
    .c(\U2/Count [16]),
    .d(\U2/Count [17]),
    .o(\U2/CLK1_reg_syn_5 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT5 #(
    .EQN("(E*D*C*B*A)"),
    .INIT(32'h80000000))
    \U2/CLK1_reg_syn_6  (
    .a(\U2/CLK1_reg_syn_5 ),
    .b(\U2/Count [18]),
    .c(\U2/Count [19]),
    .d(\U2/Count [20]),
    .e(\U2/Count [21]),
    .o(\U2/CLK1_reg_syn_7 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U2/CLK1_reg_syn_8  (
    .a(\U2/Count [2]),
    .b(\U2/Count [3]),
    .c(\U2/Count [4]),
    .d(\U2/Count [5]),
    .o(\U2/CLK1_reg_syn_9 ));  // ../../Timer_module.v(34)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[0]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [0]),
    .o(\U2/Count_b [0]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[11]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [11]),
    .o(\U2/Count_b [11]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[12]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [12]),
    .o(\U2/Count_b [12]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[13]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [13]),
    .o(\U2/Count_b [13]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[14]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [14]),
    .o(\U2/Count_b [14]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[16]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [16]),
    .o(\U2/Count_b [16]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[18]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [18]),
    .o(\U2/Count_b [18]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[19]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [19]),
    .o(\U2/Count_b [19]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[20]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [20]),
    .o(\U2/Count_b [20]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[21]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [21]),
    .o(\U2/Count_b [21]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[22]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [22]),
    .o(\U2/Count_b [22]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[24]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [24]),
    .o(\U2/Count_b [24]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U2/Count_b[6]_syn_1  (
    .a(\U2/CLK1_n4 ),
    .b(\U2/Count_b1 [6]),
    .o(\U2/Count_b [6]));
  AL_MAP_LUT2 #(
    .EQN("(~B*A)"),
    .INIT(4'h2))
    \U2/TimerH_b1[0]_syn_1  (
    .a(\U2/TimerL_b1[1]_syn_2 ),
    .b(\U2/TimerL [0]),
    .o(\U2/TimerH_b1[0]_syn_2 ));
  AL_MAP_LUT3 #(
    .EQN("(~B*(C@A))"),
    .INIT(8'h12))
    \U2/TimerH_b1[0]_syn_3  (
    .a(\U2/TimerH_b1[0]_syn_2 ),
    .b(\U2/TimerL_b1[3]_syn_2 ),
    .c(\U2/TimerH [0]),
    .o(\U2/TimerH_b1[0]_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("~(~B*~(D*~(C*~A)))"),
    .INIT(16'hefcc))
    \U2/TimerH_b1[0]_syn_5  (
    .a(\U2/TimerL_b1[1]_syn_17 ),
    .b(\U2/TimerH_b1[0]_syn_4 ),
    .c(\U2/TimerL_b1[1]_syn_19 ),
    .d(\U2/TimerL_b1[1]_syn_6 ),
    .o(\U2/TimerH_b1 [0]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+A*B*~(C)*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+A*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+A*B*C*D)"),
    .INIT(16'h8fad))
    \U2/TimerH_b1[1]_syn_1  (
    .a(\U2/TimerH_b1[0]_syn_2 ),
    .b(\U2/TimerL_b1[3]_syn_2 ),
    .c(\U2/TimerH [1]),
    .d(\U2/TimerH [0]),
    .o(\U2/TimerH_b1[1]_syn_2 ));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(C*B))"),
    .INIT(8'h15))
    \U2/TimerH_b1[1]_syn_3  (
    .a(\U2/TimerH_b1[1]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_13 ),
    .c(\U2/TimerL_b1[1]_syn_6 ),
    .o(\U2/TimerH_b1 [1]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*A)"),
    .INIT(8'h02))
    \U2/TimerH_b1[2]_syn_1  (
    .a(\U2/TimerH_b1[0]_syn_2 ),
    .b(\U2/TimerH [1]),
    .c(\U2/TimerH [0]),
    .o(\U2/TimerH_b1[2]_syn_2 ));
  AL_MAP_LUT5 #(
    .EQN("~(~(C*B)*(~(A)*~(D)*~(E)+A*~(D)*~(E)+~(A)*D*~(E)+A*~(D)*E+A*D*E))"),
    .INIT(32'hd5d5eac0))
    \U2/TimerH_b1[2]_syn_3  (
    .a(\U2/TimerH_b1[2]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_6 ),
    .c(\U2/TimerH_b3 [2]),
    .d(\U2/TimerH [3]),
    .e(\U2/TimerH [2]),
    .o(\U2/TimerH_b1 [2]));
  AL_MAP_LUT5 #(
    .EQN("(A*(~(B)*~(C)*~(D)*~(E)+B*~(C)*~(D)*~(E)+~(B)*C*~(D)*~(E)+B*C*~(D)*~(E)+~(B)*~(C)*D*~(E)+~(B)*C*~(D)*E+B*C*~(D)*E+~(B)*~(C)*D*E+B*~(C)*D*E+~(B)*C*D*E))"),
    .INIT(32'h2aa002aa))
    \U2/TimerH_b1[3]_syn_1  (
    .a(\U2/TimerL_b1[1]_syn_6 ),
    .b(\U2/ROM [4]),
    .c(\U2/ROM [5]),
    .d(\U2/ROM [6]),
    .e(\U2/ROM [7]),
    .o(\U2/TimerH_b1[3]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(C*~A*~(~D*B))"),
    .INIT(16'h5010))
    \U2/TimerH_b1[3]_syn_3  (
    .a(\U2/TimerH_b1[3]_syn_2 ),
    .b(\U2/TimerH_b1[2]_syn_2 ),
    .c(\U2/TimerH [3]),
    .d(\U2/TimerH [2]),
    .o(\U2/TimerH_b1 [3]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~(B*A))"),
    .INIT(8'h07))
    \U2/TimerL_b1[0]_syn_1  (
    .a(\U2/TimerL_b1[3]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_2 ),
    .c(\U2/TimerL [0]),
    .o(\U2/TimerL_b1 [0]));
  AL_MAP_LUT3 #(
    .EQN("(~C*~B*~A)"),
    .INIT(8'h01))
    \U2/TimerL_b1[1]_syn_1  (
    .a(\U2/TimerL [1]),
    .b(\U2/TimerL [3]),
    .c(\U2/TimerL [2]),
    .o(\U2/TimerL_b1[1]_syn_2 ));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+A*~(B)*C*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hcef3bcef))
    \U2/TimerL_b1[1]_syn_10  (
    .a(\U2/ROM [3]),
    .b(\U2/ROM [4]),
    .c(\U2/ROM [5]),
    .d(\U2/ROM [6]),
    .e(\U2/ROM [7]),
    .o(\U2/TimerL_b1[1]_syn_11 ));
  AL_MAP_LUT5 #(
    .EQN("(B*~(~C*(~(A)*D*~(E)+~(A)*~(D)*E+~(A)*D*E+A*D*E)))"),
    .INIT(32'hc0c8c8cc))
    \U2/TimerL_b1[1]_syn_12  (
    .a(\U2/TimerH_b3 [2]),
    .b(\U2/TimerL_b1[1]_syn_11 ),
    .c(\U2/TimerL_b1[1]_syn_9 ),
    .d(\U2/ROM [2]),
    .e(\U2/ROM [3]),
    .o(\U2/TimerL_b1[1]_syn_13 ));
  AL_MAP_LUT2 #(
    .EQN("(B@A)"),
    .INIT(4'h6))
    \U2/TimerL_b1[1]_syn_14  (
    .a(\U2/TimerH_b3 [2]),
    .b(\U2/ROM [3]),
    .o(\U2/TimerL_b1[1]_syn_15 ));
  AL_MAP_LUT4 #(
    .EQN("(B*(A*C*~(D)+A*~(C)*D+~(A)*C*D+A*C*D))"),
    .INIT(16'hc880))
    \U2/TimerL_b1[1]_syn_16  (
    .a(\U2/TimerL_b1[1]_syn_13 ),
    .b(\U2/TimerL_b1[1]_syn_15 ),
    .c(\U2/ROM [1]),
    .d(\U2/ROM [2]),
    .o(\U2/TimerL_b1[1]_syn_17 ));
  AL_MAP_LUT5 #(
    .EQN("(A*B*~(C)*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hcfc5ede8))
    \U2/TimerL_b1[1]_syn_18  (
    .a(\U2/TimerH_b3 [2]),
    .b(\U2/TimerL_b1[1]_syn_11 ),
    .c(\U2/TimerL_b1[1]_syn_9 ),
    .d(\U2/ROM [2]),
    .e(\U2/ROM [3]),
    .o(\U2/TimerL_b1[1]_syn_19 ));
  AL_MAP_LUT4 #(
    .EQN("(C*~(D@(B*~A)))"),
    .INIT(16'h40b0))
    \U2/TimerL_b1[1]_syn_20  (
    .a(\U2/TimerL_b1[1]_syn_17 ),
    .b(\U2/TimerL_b1[1]_syn_19 ),
    .c(\U2/TimerL_b1[1]_syn_6 ),
    .d(\U2/ROM [1]),
    .o(\U2/TimerL_b1[1]_syn_21 ));
  AL_MAP_LUT4 #(
    .EQN("~(~A*~(~B*~(D@C)))"),
    .INIT(16'hbaab))
    \U2/TimerL_b1[1]_syn_22  (
    .a(\U2/TimerL_b1[1]_syn_21 ),
    .b(\U2/TimerL_b1[1]_syn_2 ),
    .c(\U2/TimerL [1]),
    .d(\U2/TimerL [0]),
    .o(\U2/TimerL_b1 [1]));
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    \U2/TimerL_b1[1]_syn_3  (
    .a(\U2/TimerH [3]),
    .b(\U2/TimerH [2]),
    .c(\U2/TimerL [1]),
    .d(\U2/TimerL [0]),
    .o(\U2/TimerL_b1[1]_syn_4 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*B*A)"),
    .INIT(32'h00000800))
    \U2/TimerL_b1[1]_syn_5  (
    .a(\U2/TimerL_b1[1]_syn_4 ),
    .b(\U2/TimerH [1]),
    .c(\U2/TimerH [0]),
    .d(\U2/TimerL [3]),
    .e(\U2/TimerL [2]),
    .o(\U2/TimerL_b1[1]_syn_6 ));
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E)"),
    .INIT(32'h3e0f83e0))
    \U2/TimerL_b1[1]_syn_7  (
    .a(\U2/ROM [3]),
    .b(\U2/ROM [4]),
    .c(\U2/ROM [5]),
    .d(\U2/ROM [6]),
    .e(\U2/ROM [7]),
    .o(\U2/TimerH_b3 [2]));
  AL_MAP_LUT4 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)+~(A)*B*~(C)*~(D)+~(A)*~(B)*C*~(D)+A*~(B)*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+~(A)*B*~(C)*D+~(A)*~(B)*C*D+~(A)*B*C*D+A*B*C*D)"),
    .INIT(16'hd6b5))
    \U2/TimerL_b1[1]_syn_8  (
    .a(\U2/ROM [4]),
    .b(\U2/ROM [5]),
    .c(\U2/ROM [6]),
    .d(\U2/ROM [7]),
    .o(\U2/TimerL_b1[1]_syn_9 ));
  AL_MAP_LUT3 #(
    .EQN("(~C*~(B*~A))"),
    .INIT(8'h0b))
    \U2/TimerL_b1[2]_syn_1  (
    .a(\U2/TimerL_b1[1]_syn_17 ),
    .b(\U2/TimerL_b1[1]_syn_19 ),
    .c(\U2/ROM [1]),
    .o(\U2/TimerL_b1[2]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(~(B)*~((~C*~A))*~(D)+B*~((~C*~A))*~(D)+~(B)*(~C*~A)*~(D)+~(B)*(~C*~A)*D+B*(~C*~A)*D)"),
    .INIT(16'h05fb))
    \U2/TimerL_b1[2]_syn_3  (
    .a(\U2/TimerL [1]),
    .b(\U2/TimerL [3]),
    .c(\U2/TimerL [0]),
    .d(\U2/TimerL [2]),
    .o(\U2/TimerL_b1[2]_syn_4 ));
  AL_MAP_LUT5 #(
    .EQN("~(D*~(C*~(E@B@A)))"),
    .INIT(32'h60ff90ff))
    \U2/TimerL_b1[2]_syn_5  (
    .a(\U2/TimerL_b1[2]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_13 ),
    .c(\U2/TimerL_b1[1]_syn_6 ),
    .d(\U2/TimerL_b1[2]_syn_4 ),
    .e(\U2/ROM [2]),
    .o(\U2/TimerL_b1 [2]));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U2/TimerL_b1[3]_syn_1  (
    .a(\U2/TimerH [1]),
    .b(\U2/TimerH [3]),
    .c(\U2/TimerH [0]),
    .d(\U2/TimerH [2]),
    .o(\U2/TimerL_b1[3]_syn_2 ));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+A*B*C*~(D)*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hfcaded4f))
    \U2/TimerL_b1[3]_syn_3  (
    .a(\U2/TimerL_b1[1]_syn_13 ),
    .b(\U2/TimerL_b1[1]_syn_19 ),
    .c(\U2/TimerL_b1[1]_syn_15 ),
    .d(\U2/ROM [1]),
    .e(\U2/ROM [2]),
    .o(\U2/TimerL_b1[3]_syn_4 ));
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(C)*~((~E*~D*~B))+A*~(C)*~((~E*~D*~B))+A*~(C)*(~E*~D*~B)+~(A)*C*(~E*~D*~B)+A*C*(~E*~D*~B))"),
    .INIT(32'h0f0f0f3e))
    \U2/TimerL_b1[3]_syn_5  (
    .a(\U2/TimerL_b1[3]_syn_2 ),
    .b(\U2/TimerL [1]),
    .c(\U2/TimerL [3]),
    .d(\U2/TimerL [0]),
    .e(\U2/TimerL [2]),
    .o(\U2/TimerL_b1[3]_syn_6 ));
  AL_MAP_LUT3 #(
    .EQN("(~C*~(B*A))"),
    .INIT(8'h07))
    \U2/TimerL_b1[3]_syn_7  (
    .a(\U2/TimerL_b1[3]_syn_4 ),
    .b(\U2/TimerL_b1[1]_syn_6 ),
    .c(\U2/TimerL_b1[3]_syn_6 ),
    .o(\U2/TimerL_b1 [3]));
  EG_PHY_LSLICE #(
    //.MACRO("U2/add0_syn_152"),
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
    \U2/add0_syn_152  (
    .a({\U2/Count [1],1'b0}),
    .b({\U2/Count [2],\U2/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U2/Count_b1 [1],open_n787}),
    .fco(\U2/add0_syn_129 ),
    .fx({\U2/Count_b1 [2],\U2/Count_b1 [0]}));  // ../../Timer_module.v(42)
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
    .a({open_n880,\U2/Count [23]}),
    .b({open_n881,\U2/Count [24]}),
    .c(2'b00),
    .d({open_n884,1'b0}),
    .e({open_n885,1'b0}),
    .fci(\U2/add0_syn_149 ),
    .f({open_n900,\U2/Count_b1 [23]}),
    .fx({open_n902,\U2/Count_b1 [24]}));  // ../../Timer_module.v(42)
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    \U2/count1_n_syn_1  (
    .a(\U2/TimerL_b1[3]_syn_2 ),
    .b(\U2/TimerL_b1[1]_syn_2 ),
    .c(\U2/count1 ),
    .d(\U2/TimerL [0]),
    .o(\U2/count1_n ));
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/count1_reg  (
    .clk(\U2/CLK1 ),
    .d(\U2/count1_n ),
    .sr(RSTn_dup_3),
    .q(\U2/count1 ));  // ../../Timer_module.v(83)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_28  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [0]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [0]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_30  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [1]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [1]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_32  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [2]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [2]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_34  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [3]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [3]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_36  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [4]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [4]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_38  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [5]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [5]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_40  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [6]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [6]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_42  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [7]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [7]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_44  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [8]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [8]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_46  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [9]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [9]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_48  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [10]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [10]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_50  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [11]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [11]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_52  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [12]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [12]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_54  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [13]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [13]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_56  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [14]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [14]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_58  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [15]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [15]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_60  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [16]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [16]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_62  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [17]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [17]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_64  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [18]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [18]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_66  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [19]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [19]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_68  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [20]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [20]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_70  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [21]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [21]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_72  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [22]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [22]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_74  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b1 [23]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [23]));  // ../../Timer_module.v(34)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg0_syn_76  (
    .clk(CLK_dup_1),
    .d(\U2/Count_b [24]),
    .sr(\U1/Timer_Start ),
    .q(\U2/Count [24]));  // ../../Timer_module.v(34)
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
    .b({\U7/TimerL_Set [1],open_n931}),
    .clk(Set_Time_dup_1),
    .fco(\U7/add0_syn_39 ),
    .q({\U2/ROM [1],open_n954}));  // ../../Timer_module.v(24)
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
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_11  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [3]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerH [3]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_13  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [0]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerH [0]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_15  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [2]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerH [2]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg2_syn_9  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [1]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerH [1]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_11  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [3]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerL [3]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_13  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [0]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerL [0]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_15  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [2]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerL [2]));  // ../../Timer_module.v(47)
  AL_MAP_SEQ #(
    .CEMUX("CE"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U2/reg3_syn_9  (
    .ce(\U1/Timer_Start ),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [1]),
    .sr(RSTn_dup_3),
    .q(\U2/TimerL [1]));  // ../../Timer_module.v(47)
  AL_MAP_LUT2 #(
    .EQN("~(~B*~A)"),
    .INIT(4'he))
    \U3/Pulse_x_b_n_syn_1  (
    .a(\U1/Buzzer_Enable ),
    .b(\U2/count1 ),
    .o(\U3/Pulse_x_b_n ));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \U3/W_buzzer_n2_syn_1  (
    .a(Buzzer_Out_dup_3),
    .o(\U3/W_buzzer_n2 ));
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/W_buzzer_reg  (
    .clk(CLK_dup_1),
    .d(\U3/W_buzzer_reg_syn_5 ),
    .q(Buzzer_Out_dup_3));  // ../../Buzzer_module.v(33)
  AL_MAP_LUT3 #(
    .EQN("~(B*~(C@A))"),
    .INIT(8'h7b))
    \U3/W_buzzer_reg_syn_6  (
    .a(\U3/Count_b1_n ),
    .b(\U3/Count_b_n2 ),
    .c(Buzzer_Out_dup_3),
    .o(\U3/W_buzzer_reg_syn_5 ));  // ../../Buzzer_module.v(33)
  EG_PHY_LSLICE #(
    //.MACRO("U3/add0_syn_140"),
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
    \U3/add0_syn_140  (
    .a({\U3/Count [1],1'b0}),
    .b({\U3/Count [2],\U3/Count [0]}),
    .c(2'b00),
    .d(2'b01),
    .e(2'b01),
    .f({\U3/Count_b2 [1],open_n1038}),
    .fco(\U3/add0_syn_119 ),
    .fx({\U3/Count_b2 [2],\U3/Count_b2 [0]}));  // ../../Buzzer_module.v(43)
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
  AL_MAP_LUT3 #(
    .EQN("(B*(C@A))"),
    .INIT(8'h48))
    \U3/mux3_syn_162  (
    .a(\U3/Pulse_x [8]),
    .b(\U3/Pulse_x [10]),
    .c(\U3/Pulse_x [12]),
    .o(\U3/Count_b_n2 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+A*B*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+~(A)*B*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+~(A)*B*C*D*E)"),
    .INIT(32'h7ffffffe))
    \U3/mux3_syn_163  (
    .a(\U3/Count [0]),
    .b(\U3/Count [1]),
    .c(\U3/Count [5]),
    .d(\U3/Count [7]),
    .e(\U3/Pulse_x [10]),
    .o(\U3/mux3_syn_164 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT4 #(
    .EQN("(~A*(~(B)*~(C)*~(D)+B*C*D))"),
    .INIT(16'h4001))
    \U3/mux3_syn_165  (
    .a(\U3/mux3_syn_164 ),
    .b(\U3/Count [12]),
    .c(\U3/Count [13]),
    .d(\U3/Pulse_x [12]),
    .o(\U3/mux3_syn_166 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    \U3/mux3_syn_167  (
    .a(\U3/Count [3]),
    .b(\U3/Count [4]),
    .c(\U3/Pulse_x [10]),
    .d(\U3/Pulse_x [12]),
    .o(\U3/mux3_syn_168 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT4 #(
    .EQN("(~(D@B)*~(C@A))"),
    .INIT(16'h8421))
    \U3/mux3_syn_169  (
    .a(\U3/Count [15]),
    .b(\U3/Count [16]),
    .c(\U3/Pulse_x [8]),
    .d(\U3/Pulse_x [12]),
    .o(\U3/mux3_syn_170 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT4 #(
    .EQN("(A*(~(B)*~(C)*~(D)+B*C*D))"),
    .INIT(16'h8002))
    \U3/mux3_syn_171  (
    .a(\U3/mux3_syn_170 ),
    .b(\U3/Count [10]),
    .c(\U3/Count [14]),
    .d(\U3/Pulse_x [10]),
    .o(\U3/mux3_syn_172 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U3/mux3_syn_173  (
    .a(\U3/Count [9]),
    .b(\U3/Count [11]),
    .c(\U3/Count [17]),
    .d(\U3/Count [18]),
    .o(\U3/mux3_syn_174 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT5 #(
    .EQN("(~D*~C*~B*~(E@A))"),
    .INIT(32'h00020001))
    \U3/mux3_syn_175  (
    .a(\U3/Count [8]),
    .b(\U3/Count [19]),
    .c(\U3/Count [20]),
    .d(\U3/Count [21]),
    .e(\U3/Pulse_x [8]),
    .o(\U3/mux3_syn_176 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*B*A)"),
    .INIT(32'h00000080))
    \U3/mux3_syn_177  (
    .a(\U3/mux3_syn_172 ),
    .b(\U3/mux3_syn_176 ),
    .c(\U3/mux3_syn_174 ),
    .d(\U3/Count [6]),
    .e(\U3/Count [22]),
    .o(\U3/mux3_syn_178 ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT5 #(
    .EQN("(C*B*A*~(E@D))"),
    .INIT(32'h80000080))
    \U3/mux3_syn_179  (
    .a(\U3/mux3_syn_178 ),
    .b(\U3/mux3_syn_166 ),
    .c(\U3/mux3_syn_168 ),
    .d(\U3/Count [2]),
    .e(\U3/Pulse_x [8]),
    .o(\U3/Count_b1_n ));  // ../../Buzzer_module.v(35)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U3/mux3_syn_180  (
    .a(\U3/Count_b1_n ),
    .b(\U3/Count_b_n2 ),
    .o(\U3/mux3_syn_102 ));  // ../../Buzzer_module.v(35)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_26  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [0]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [0]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_28  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [1]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [1]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_30  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [2]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [2]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_32  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [3]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [3]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_34  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [4]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [4]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_36  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [5]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [5]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_38  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [6]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [6]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_40  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [7]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [7]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_42  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [8]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [8]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_44  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [9]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [9]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_46  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [10]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [10]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_48  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [11]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [11]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_50  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [12]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [12]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_52  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [13]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [13]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_54  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [14]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [14]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_56  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [15]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [15]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_58  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [16]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [16]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_60  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [17]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [17]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_62  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [18]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [18]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_64  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [19]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [19]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_66  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [20]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [20]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_68  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [21]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [21]));  // ../../Buzzer_module.v(33)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("INV"))
    \U3/reg0_syn_70  (
    .clk(CLK_dup_1),
    .d(\U3/Count_b2 [22]),
    .sr(\U3/mux3_syn_102 ),
    .q(\U3/Count [22]));  // ../../Buzzer_module.v(33)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U3/reg1_syn_27  (
    .a(\U1/Buzzer_Enable ),
    .b(\U2/count1 ),
    .o(\U3/reg1_syn_26 ));  // ../../Buzzer_module.v(17)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/reg1_syn_29  (
    .clk(CLK_dup_1),
    .d(\U3/reg1_syn_26 ),
    .q(\U3/Pulse_x [8]));  // ../../Buzzer_module.v(17)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/reg1_syn_31  (
    .clk(CLK_dup_1),
    .d(\U3/Pulse_x_b_n ),
    .q(\U3/Pulse_x [10]));  // ../../Buzzer_module.v(17)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U3/reg1_syn_33  (
    .clk(CLK_dup_1),
    .d(\U1/Buzzer_Enable ),
    .q(\U3/Pulse_x [12]));  // ../../Buzzer_module.v(17)
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \U4/W_DigitronCS_Out_b[1]_syn_1  (
    .a(\U4/cnt [0]),
    .o(\U4/W_DigitronCS_Out_b [1]));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \U4/W_DigitronCS_Out_b[2]_syn_1  (
    .a(\U4/cnt [1]),
    .o(\U4/W_DigitronCS_Out_b [2]));
  AL_MAP_LUT2 #(
    .EQN("(B*A)"),
    .INIT(4'h8))
    \U4/W_DigitronCS_Out_n_syn_1  (
    .a(\U4/cnt [0]),
    .b(\U4/cnt [1]),
    .o(\U4/mux0_syn_3 ));
  AL_MAP_LUT1 #(
    .EQN("(~A)"),
    .INIT(2'h1))
    \U4/W_DigitronCS_Out_n_syn_2  (
    .a(\U4/mux0_syn_3 ),
    .o(\U4/W_DigitronCS_Out_n ));
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U4/add1_syn_125  (
    .a({\U4/Count [0],1'b0}),
    .b({1'b1,open_n1161}),
    .f({\U4/Count_b1 [0],open_n1181}),
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
    .f({\U4/Count_b1 [4],open_n1203}),
    .fco(\U4/add1_syn_86 ),
    .q({open_n1206,\U4/Count [3]}));  // ../../Digitron_NumDisplay.v(33)
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
    .f({\U4/Count_b1 [6],open_n1224}),
    .fco(\U4/add1_syn_88 ),
    .q({open_n1227,\U4/Count [5]}));  // ../../Digitron_NumDisplay.v(33)
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
    .f({\U4/Count_b1 [8],open_n1245}),
    .fco(\U4/add1_syn_90 ),
    .q({open_n1248,\U4/Count [7]}));  // ../../Digitron_NumDisplay.v(33)
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
    .f({\U4/Count_b1 [14],open_n1266}),
    .fco(\U4/add1_syn_96 ),
    .q({open_n1269,\U4/Count [13]}));  // ../../Digitron_NumDisplay.v(33)
  EG_PHY_MSLICE #(
    //.MACRO("U4/add1_syn_125"),
    //.R_POSITION("X0Y4Z0"),
    .ALUTYPE("ADD"),
    .INIT_LUT0(16'b0110011001101010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U4/add1_syn_136  (
    .a({open_n1270,\U4/Count [15]}),
    .b({open_n1271,1'b0}),
    .fci(\U4/add1_syn_96 ),
    .f({open_n1290,\U4/Count_b1 [15]}));  // ../../Digitron_NumDisplay.v(33)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001110011111))
    \U4/mux2_syn_10  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[1]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+A*~B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001111111011))
    \U4/mux2_syn_11  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[2]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001101101101))
    \U4/mux2_syn_12  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[3]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+~A*B*~C*~D+~A*B*C*~D+~A*~B*~C*D)"),
    .INIT(16'b0000000101000101))
    \U4/mux2_syn_13  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[4]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001101110001))
    \U4/mux2_syn_14  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[5]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*B*~C*~D+A*B*~C*~D+~A*~B*C*~D+A*~B*C*~D+~A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001101111100))
    \U4/mux2_syn_15  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[6]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT4 #(
    .EQN("(~A*~B*~C*~D+~A*B*~C*~D+A*B*~C*~D+A*~B*C*~D+~A*B*C*~D+A*B*C*~D+~A*~B*~C*D+A*~B*~C*D)"),
    .INIT(16'b0000001111101101))
    \U4/mux2_syn_9  (
    .a(\U4/sel1_syn_2 [0]),
    .b(\U4/sel1_syn_2 [1]),
    .c(\U4/sel1_syn_2 [2]),
    .d(\U4/sel1_syn_2 [3]),
    .o(\Digitron_Out[0]_dup_1 ));  // ../../Digitron_NumDisplay.v(64)
  AL_MAP_LUT2 #(
    .EQN("(A*~B+~A*B)"),
    .INIT(4'b0110))
    \U4/mux4_syn_9  (
    .a(\U4/cnt [0]),
    .b(\U4/cnt [1]),
    .o(\U4/W_DigitronCS_Out_b [0]));  // ../../Digitron_NumDisplay.v(40)
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
    .f({open_n1334,\U4/Count_b1 [9]}),
    .fco(\U4/add1_syn_92 ),
    .q({\U4/Count [10],open_n1337}));  // ../../Digitron_NumDisplay.v(21)
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
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*A)"),
    .INIT(16'h0020))
    \U4/reg0_syn_32  (
    .a(\U4/Count [4]),
    .b(\U4/Count [5]),
    .c(\U4/Count [6]),
    .d(\U4/Count [7]),
    .o(\U4/reg0_syn_33 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~B*~A)"),
    .INIT(16'h0001))
    \U4/reg0_syn_34  (
    .a(\U4/Count [0]),
    .b(\U4/Count [1]),
    .c(\U4/Count [2]),
    .d(\U4/Count [3]),
    .o(\U4/reg0_syn_35 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*~A)"),
    .INIT(16'h1000))
    \U4/reg0_syn_36  (
    .a(\U4/Count [12]),
    .b(\U4/Count [13]),
    .c(\U4/Count [14]),
    .d(\U4/Count [15]),
    .o(\U4/reg0_syn_37 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    \U4/reg0_syn_38  (
    .a(\U4/Count [8]),
    .b(\U4/Count [9]),
    .c(\U4/Count [10]),
    .d(\U4/Count [11]),
    .o(\U4/reg0_syn_39 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U4/reg0_syn_40  (
    .a(\U4/reg0_syn_33 ),
    .b(\U4/reg0_syn_35 ),
    .c(\U4/reg0_syn_37 ),
    .d(\U4/reg0_syn_39 ),
    .o(\U4/Count_b_n ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_41  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [15]),
    .o(\U4/reg0_syn_31 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_42  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [14]),
    .o(\U4/reg0_syn_29 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_43  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [0]),
    .o(\U4/reg0_syn_19 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_44  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [8]),
    .o(\U4/reg0_syn_25 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_45  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [6]),
    .o(\U4/reg0_syn_23 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_46  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [9]),
    .o(\U4/reg0_syn_27 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U4/reg0_syn_47  (
    .a(\U4/Count_b_n ),
    .b(\U4/Count_b1 [4]),
    .o(\U4/reg0_syn_21 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_49  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_19 ),
    .q(\U4/Count [0]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_57  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_21 ),
    .q(\U4/Count [4]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_61  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_23 ),
    .q(\U4/Count [6]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_65  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_25 ),
    .q(\U4/Count [8]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_67  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_27 ),
    .q(\U4/Count [9]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_77  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_29 ),
    .q(\U4/Count [14]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg0_syn_79  (
    .clk(CLK_dup_1),
    .d(\U4/reg0_syn_31 ),
    .q(\U4/Count [15]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT4 #(
    .EQN("(D*(A*B*~(C)+A*~(B)*C+~(A)*B*C))"),
    .INIT(16'h6800))
    \U4/reg1_syn_14  (
    .a(\DigitronCS_Out[0]_dup_1 ),
    .b(\DigitronCS_Out[1]_dup_1 ),
    .c(\DigitronCS_Out[2]_dup_1 ),
    .d(\DigitronCS_Out[3]_dup_1 ),
    .o(\U4/SingleNum_b_n4 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("((C*~(D)*~(E)+C*D*~(E)+~(C)*D*E+C*D*E)*~(~B*~A))"),
    .INIT(32'hee00e0e0))
    \U4/reg1_syn_15  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_63 ),
    .c(\U7/reg0_syn_120 ),
    .d(\U7/reg0_syn_126 ),
    .e(\U7/reg0_syn_128 ),
    .o(\U4/reg1_syn_16 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("((C*~(D)*~(E)+C*D*~(E)+~(C)*D*E+C*D*E)*~(~B*~A))"),
    .INIT(32'hee00e0e0))
    \U4/reg1_syn_17  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_43 ),
    .c(\U7/reg0_syn_100 ),
    .d(\U7/reg0_syn_106 ),
    .e(\U7/reg0_syn_108 ),
    .o(\U4/reg1_syn_18 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U4/reg1_syn_19  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_53 ),
    .o(\U4/reg1_syn_20 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT3 #(
    .EQN("(A*~(B)*~(C)+A*B*~(C)+~(A)*B*C+A*B*C)"),
    .INIT(8'hca))
    \U4/reg1_syn_21  (
    .a(\U7/reg0_syn_110 ),
    .b(\U7/reg0_syn_116 ),
    .c(\U7/reg0_syn_118 ),
    .o(\U7/reg0_syn_56 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("((C*~(D)*~(E)+C*D*~(E)+~(C)*D*E+C*D*E)*~(~B*~A))"),
    .INIT(32'hee00e0e0))
    \U4/reg1_syn_22  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_53 ),
    .c(\U7/reg0_syn_110 ),
    .d(\U7/reg0_syn_116 ),
    .e(\U7/reg0_syn_118 ),
    .o(\U4/reg1_syn_23 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT3 #(
    .EQN("(A*~(~C*~B))"),
    .INIT(8'ha8))
    \U4/reg1_syn_24  (
    .a(\U4/reg1_syn_16 ),
    .b(\U4/reg1_syn_18 ),
    .c(\U4/reg1_syn_23 ),
    .o(\U7/TimerH_Set [3]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*~(~B*~A))"),
    .INIT(16'h000e))
    \U4/reg1_syn_25  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_33 ),
    .c(\U7/reg0_syn_90 ),
    .d(\U7/reg0_syn_98 ),
    .o(\U4/reg1_syn_26 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+A*~(B)*~(C)*D+~(A)*B*C*D)"),
    .INIT(16'h42d2))
    \U4/reg1_syn_27  (
    .a(\U4/reg1_syn_16 ),
    .b(\U4/reg1_syn_18 ),
    .c(\U4/reg1_syn_23 ),
    .d(\U4/reg1_syn_26 ),
    .o(\U7/TimerH_Set [2]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("((C*~(D)*~(E)+C*D*~(E)+~(C)*D*E+C*D*E)*~(~B*~A))"),
    .INIT(32'hee00e0e0))
    \U4/reg1_syn_28  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_23 ),
    .c(\U7/reg0_syn_80 ),
    .d(\U7/reg0_syn_86 ),
    .e(\U7/reg0_syn_88 ),
    .o(\U4/reg1_syn_29 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*~(C)*~(D)*~(E)+~(A)*B*~(C)*~(D)*~(E)+A*~(B)*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*D*~(E)+A*~(B)*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+A*B*C*~(D)*E+A*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E+A*B*C*D*E)"),
    .INIT(32'hb6926626))
    \U4/reg1_syn_30  (
    .a(\U4/reg1_syn_16 ),
    .b(\U4/reg1_syn_18 ),
    .c(\U4/reg1_syn_23 ),
    .d(\U4/reg1_syn_29 ),
    .e(\U4/reg1_syn_26 ),
    .o(\U7/TimerH_Set [1]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("((C*~(D)*~(E)+C*D*~(E)+~(C)*D*E+C*D*E)*~(~B*~A))"),
    .INIT(32'hee00e0e0))
    \U4/reg1_syn_31  (
    .a(\U7/reg0_syn_11 ),
    .b(\U7/reg0_syn_13 ),
    .c(\U7/reg0_syn_70 ),
    .d(\U7/reg0_syn_76 ),
    .e(\U7/reg0_syn_78 ),
    .o(\U4/reg1_syn_32 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(A*~(B)*~(C)*~(D)+~(A)*~(B)*C*~(D)+~(A)*B*C*~(D)+A*B*C*~(D)+~(A)*~(B)*~(C)*D+~(A)*B*~(C)*D+A*B*~(C)*D+~(A)*~(B)*C*D+A*~(B)*C*D+A*B*C*D)"),
    .INIT(16'hbdd2))
    \U4/reg1_syn_33  (
    .a(\U4/reg1_syn_16 ),
    .b(\U4/reg1_syn_18 ),
    .c(\U4/reg1_syn_23 ),
    .d(\U4/reg1_syn_26 ),
    .o(\U4/reg1_syn_34 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(~(A)*B*~(C)*~((~E*D))+A*~(B)*C*~((~E*D))+~(A)*B*C*~((~E*D))+A*~(B)*~(C)*(~E*D)+~(A)*B*~(C)*(~E*D)+A*~(B)*C*(~E*D))"),
    .INIT(32'h64642664))
    \U4/reg1_syn_35  (
    .a(\U4/reg1_syn_16 ),
    .b(\U4/reg1_syn_18 ),
    .c(\U4/reg1_syn_26 ),
    .d(\U7/reg0_syn_56 ),
    .e(\U4/reg1_syn_20 ),
    .o(\U4/reg1_syn_36 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*~(B)*~(C)*~(D)*E+A*~(B)*~(C)*~(D)*E+A*B*~(C)*~(D)*E+~(A)*~(B)*C*~(D)*E+~(A)*B*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+A*~(B)*~(C)*D*E+A*B*~(C)*D*E+~(A)*~(B)*C*D*E+A*~(B)*C*D*E)"),
    .INIT(32'h3bdb1bca))
    \U4/reg1_syn_37  (
    .a(\U7/TimerH_Set [1]),
    .b(\U4/reg1_syn_34 ),
    .c(\U4/reg1_syn_36 ),
    .d(\U4/reg1_syn_29 ),
    .e(\U4/reg1_syn_32 ),
    .o(\U7/TimerH_Set [0]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(~(A)*~(B)*~(C)*~(D)*~(E)+~(A)*~(B)*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+A*~(B)*C*D*~(E)+~(A)*B*C*~(D)*E+A*B*~(C)*D*E)"),
    .INIT(32'h08402211))
    \U4/reg1_syn_38  (
    .a(\U7/TimerH_Set [1]),
    .b(\U4/reg1_syn_34 ),
    .c(\U4/reg1_syn_36 ),
    .d(\U4/reg1_syn_29 ),
    .e(\U4/reg1_syn_32 ),
    .o(\U7/TimerL_Set [3]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*C*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*~(B)*~(C)*D*~(E)+~(A)*B*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*B*C*D*~(E)+A*~(B)*~(C)*~(D)*E+A*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+A*B*C*~(D)*E+~(A)*~(B)*~(C)*D*E+~(A)*B*~(C)*D*E+~(A)*~(B)*C*D*E+~(A)*B*C*D*E)"),
    .INIT(32'h55aa4e60))
    \U4/reg1_syn_39  (
    .a(\U7/TimerH_Set [1]),
    .b(\U4/reg1_syn_34 ),
    .c(\U4/reg1_syn_36 ),
    .d(\U4/reg1_syn_29 ),
    .e(\U4/reg1_syn_32 ),
    .o(\U7/TimerL_Set [2]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(A*~(B)*~(C)*~(D)*~(E)+A*B*~(C)*~(D)*~(E)+~(A)*B*C*~(D)*~(E)+A*B*C*~(D)*~(E)+~(A)*~(B)*~(C)*D*~(E)+A*~(B)*~(C)*D*~(E)+A*B*~(C)*D*~(E)+~(A)*~(B)*C*D*~(E)+~(A)*B*~(C)*~(D)*E+A*~(B)*C*~(D)*E+~(A)*B*~(C)*D*E+~(A)*B*C*D*E+A*B*C*D*E)"),
    .INIT(32'hc4241bca))
    \U4/reg1_syn_40  (
    .a(\U7/TimerH_Set [1]),
    .b(\U4/reg1_syn_34 ),
    .c(\U4/reg1_syn_36 ),
    .d(\U4/reg1_syn_29 ),
    .e(\U4/reg1_syn_32 ),
    .o(\U7/TimerL_Set [1]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(D*~(C*~(~B*~A)))"),
    .INIT(16'h1f00))
    \U4/reg1_syn_41  (
    .a(Set_Time_dup_1),
    .b(\U2/TimerL [0]),
    .c(\DigitronCS_Out[1]_dup_1 ),
    .d(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_42 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(B*~(~E*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT(32'hcccc404c))
    \U4/reg1_syn_43  (
    .a(\U7/TimerH_Set [0]),
    .b(\U4/reg1_syn_42 ),
    .c(Set_Time_dup_1),
    .d(\U2/TimerH [0]),
    .e(\DigitronCS_Out[1]_dup_1 ),
    .o(\U4/reg1_syn_44 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(B*~A*~(~D*~C))"),
    .INIT(16'h4440))
    \U4/reg1_syn_45  (
    .a(\U4/reg1_syn_44 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [0]),
    .d(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_7 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(E*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    .INIT(32'hff470000))
    \U4/reg1_syn_46  (
    .a(\U7/TimerH_Set [3]),
    .b(Set_Time_dup_1),
    .c(\U2/TimerH [3]),
    .d(\DigitronCS_Out[1]_dup_1 ),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_47 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(B*~(E*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT(32'h404ccccc))
    \U4/reg1_syn_48  (
    .a(\U7/TimerL_Set [3]),
    .b(\U4/reg1_syn_47 ),
    .c(Set_Time_dup_1),
    .d(\U2/TimerL [3]),
    .e(\DigitronCS_Out[1]_dup_1 ),
    .o(\U4/reg1_syn_49 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(B*~A*~(~D*~C))"),
    .INIT(16'h4440))
    \U4/reg1_syn_50  (
    .a(\U4/reg1_syn_49 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [3]),
    .d(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_13 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(E*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    .INIT(32'hff470000))
    \U4/reg1_syn_51  (
    .a(\U7/TimerH_Set [2]),
    .b(Set_Time_dup_1),
    .c(\U2/TimerH [2]),
    .d(\DigitronCS_Out[1]_dup_1 ),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_52 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(B*~(E*(D*~(A)*~(C)+D*A*~(C)+~(D)*A*C+D*A*C)))"),
    .INIT(32'h404ccccc))
    \U4/reg1_syn_53  (
    .a(\U7/TimerL_Set [2]),
    .b(\U4/reg1_syn_52 ),
    .c(Set_Time_dup_1),
    .d(\U2/TimerL [2]),
    .e(\DigitronCS_Out[1]_dup_1 ),
    .o(\U4/reg1_syn_54 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(B*~A*~(~D*~C))"),
    .INIT(16'h4440))
    \U4/reg1_syn_55  (
    .a(\U4/reg1_syn_54 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [2]),
    .d(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_11 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B))"),
    .INIT(16'hb800))
    \U4/reg1_syn_56  (
    .a(\U7/TimerL_Set [1]),
    .b(Set_Time_dup_1),
    .c(\U2/TimerL [1]),
    .d(\DigitronCS_Out[1]_dup_1 ),
    .o(\U4/reg1_syn_57 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT5 #(
    .EQN("(E*~(~D*(C*~(A)*~(B)+C*A*~(B)+~(C)*A*B+C*A*B)))"),
    .INIT(32'hff470000))
    \U4/reg1_syn_58  (
    .a(\U7/TimerH_Set [1]),
    .b(Set_Time_dup_1),
    .c(\U2/TimerH [1]),
    .d(\DigitronCS_Out[1]_dup_1 ),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_59 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U4/reg1_syn_60  (
    .a(\U1/Player_Number [1]),
    .b(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/reg1_syn_61 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~(B*~A))"),
    .INIT(16'h00b0))
    \U4/reg1_syn_62  (
    .a(\U4/reg1_syn_57 ),
    .b(\U4/reg1_syn_59 ),
    .c(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_61 ),
    .o(\U4/reg1_syn_9 ));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_64  (
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_7 ),
    .q(\U4/SingleNum [0]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_66  (
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_9 ),
    .q(\U4/SingleNum [1]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_68  (
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_11 ),
    .q(\U4/SingleNum [2]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg1_syn_70  (
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_13 ),
    .q(\U4/SingleNum [3]));  // ../../Digitron_NumDisplay.v(57)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_11  (
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [1]),
    .q(\DigitronCS_Out[1]_dup_1 ));  // ../../Digitron_NumDisplay.v(38)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_13  (
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [2]),
    .q(\DigitronCS_Out[2]_dup_1 ));  // ../../Digitron_NumDisplay.v(38)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_15  (
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_n ),
    .q(\DigitronCS_Out[3]_dup_1 ));  // ../../Digitron_NumDisplay.v(38)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("INV"),
    .DFFMODE("LATCH"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg2_syn_9  (
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [0]),
    .q(\DigitronCS_Out[0]_dup_1 ));  // ../../Digitron_NumDisplay.v(38)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg3_syn_11  (
    .clk(CLK_dup_1),
    .d(\U4/reg3_syn_5 ),
    .q(\U4/cnt [0]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U4/reg3_syn_13  (
    .clk(CLK_dup_1),
    .d(\U4/reg3_syn_7 ),
    .q(\U4/cnt [1]));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT3 #(
    .EQN("(A*~(B)*~(C)+~(A)*B*~(C)+~(A)*B*C)"),
    .INIT(8'h46))
    \U4/reg3_syn_8  (
    .a(\U4/Count_b_n ),
    .b(\U4/cnt [0]),
    .c(\U4/cnt [1]),
    .o(\U4/reg3_syn_5 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT3 #(
    .EQN("(A*B*~(C)+~(A)*~(B)*C+~(A)*B*C)"),
    .INIT(8'h58))
    \U4/reg3_syn_9  (
    .a(\U4/Count_b_n ),
    .b(\U4/cnt [0]),
    .c(\U4/cnt [1]),
    .o(\U4/reg3_syn_7 ));  // ../../Digitron_NumDisplay.v(21)
  AL_MAP_LUT5 #(
    .EQN("(D*~((~A*~(~E*~C)))*~(B)+D*(~A*~(~E*~C))*~(B)+~(D)*(~A*~(~E*~C))*B+D*(~A*~(~E*~C))*B)"),
    .INIT(32'h77447340))
    \U4/sel1_syn_88  (
    .a(\U4/reg1_syn_44 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [0]),
    .d(\U4/SingleNum [0]),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/sel1_syn_2 [0]));  // ../../Digitron_NumDisplay.v(58)
  AL_MAP_LUT5 #(
    .EQN("(D*~((~A*~(~E*~C)))*~(B)+D*(~A*~(~E*~C))*~(B)+~(D)*(~A*~(~E*~C))*B+D*(~A*~(~E*~C))*B)"),
    .INIT(32'h77447340))
    \U4/sel1_syn_89  (
    .a(\U4/reg1_syn_49 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [3]),
    .d(\U4/SingleNum [3]),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/sel1_syn_2 [3]));  // ../../Digitron_NumDisplay.v(58)
  AL_MAP_LUT5 #(
    .EQN("(D*~((~A*~(~E*~C)))*~(B)+D*(~A*~(~E*~C))*~(B)+~(D)*(~A*~(~E*~C))*B+D*(~A*~(~E*~C))*B)"),
    .INIT(32'h77447340))
    \U4/sel1_syn_90  (
    .a(\U4/reg1_syn_54 ),
    .b(\U4/SingleNum_b_n4 ),
    .c(\U1/Player_Number [2]),
    .d(\U4/SingleNum [2]),
    .e(\DigitronCS_Out[2]_dup_1 ),
    .o(\U4/sel1_syn_2 [2]));  // ../../Digitron_NumDisplay.v(58)
  AL_MAP_LUT5 #(
    .EQN("(E*~((~D*~(B*~A)))*~(C)+E*(~D*~(B*~A))*~(C)+~(E)*(~D*~(B*~A))*C+E*(~D*~(B*~A))*C)"),
    .INIT(32'h0fbf00b0))
    \U4/sel1_syn_91  (
    .a(\U4/reg1_syn_57 ),
    .b(\U4/reg1_syn_59 ),
    .c(\U4/SingleNum_b_n4 ),
    .d(\U4/reg1_syn_61 ),
    .e(\U4/SingleNum [1]),
    .o(\U4/sel1_syn_2 [1]));  // ../../Digitron_NumDisplay.v(58)
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
    .f({\U5/cnt_b1 [6],open_n1432}),
    .fco(\U5/add0_syn_108 ),
    .q({open_n1435,\U5/cnt [5]}));  // ../../key_filter.v(17)
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
    .f({\U5/cnt_b1 [14],open_n1453}),
    .fco(\U5/add0_syn_116 ),
    .q({open_n1456,\U5/cnt [13]}));  // ../../key_filter.v(17)
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
    .f({\U5/cnt_b1 [16],open_n1474}),
    .fco(\U5/add0_syn_118 ),
    .q({open_n1477,\U5/cnt [15]}));  // ../../key_filter.v(17)
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
    .a({open_n1500,\U5/cnt [19]}),
    .b({open_n1501,1'b0}),
    .clk(CLK_dup_1),
    .fci(\U5/add0_syn_120 ),
    .sr(\U5/cnt_b_n ),
    .q({open_n1523,\U5/cnt [19]}));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_25  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [1]),
    .q(\U5/cnt [1]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg0_syn_27  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [2]),
    .q(\U5/cnt [2]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_35  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [6]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [6]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_41  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [9]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [9]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_51  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [14]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [14]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_55  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [16]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [16]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_57  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [17]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [17]));  // ../../key_filter.v(12)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("SYNC"),
    .SRMUX("SR"))
    \U5/reg0_syn_59  (
    .clk(CLK_dup_1),
    .d(\U5/cnt_b1 [18]),
    .sr(\U5/cnt_b_n ),
    .q(\U5/cnt [18]));  // ../../key_filter.v(12)
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
    .b({1'b1,open_n1534}),
    .clk(CLK_dup_1),
    .sr(\U5/cnt_b_n ),
    .fco(\U5/add0_syn_102 ),
    .q({\U5/cnt [0],open_n1556}));  // ../../key_filter.v(12)
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
    .f({open_n1616,\U5/cnt_b1 [9]}),
    .fco(\U5/add0_syn_112 ),
    .q({\U5/cnt [10],open_n1619}));  // ../../key_filter.v(12)
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
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U5/reg2_syn_14  (
    .a(\U5/cnt [0]),
    .b(\U5/cnt [1]),
    .c(\U5/cnt [2]),
    .d(\U5/cnt [3]),
    .o(\U5/reg2_syn_15 ));  // ../../key_filter.v(24)
  AL_MAP_LUT5 #(
    .EQN("(~E*~D*C*B*A)"),
    .INIT(32'h00000080))
    \U5/reg2_syn_16  (
    .a(\U5/reg2_syn_15 ),
    .b(\U5/cnt [4]),
    .c(\U5/cnt [5]),
    .d(\U5/cnt [6]),
    .e(\U5/cnt [7]),
    .o(\U5/reg2_syn_17 ));  // ../../key_filter.v(24)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U5/reg2_syn_18  (
    .a(\U5/cnt [16]),
    .b(\U5/cnt [17]),
    .c(\U5/cnt [18]),
    .d(\U5/cnt [19]),
    .o(\U5/reg2_syn_19 ));  // ../../key_filter.v(24)
  AL_MAP_LUT4 #(
    .EQN("(~D*C*~B*~A)"),
    .INIT(16'h0010))
    \U5/reg2_syn_20  (
    .a(\U5/cnt [12]),
    .b(\U5/cnt [13]),
    .c(\U5/cnt [14]),
    .d(\U5/cnt [15]),
    .o(\U5/reg2_syn_21 ));  // ../../key_filter.v(24)
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*~A)"),
    .INIT(16'h0004))
    \U5/reg2_syn_22  (
    .a(\U5/cnt [8]),
    .b(\U5/cnt [9]),
    .c(\U5/cnt [10]),
    .d(\U5/cnt [11]),
    .o(\U5/reg2_syn_23 ));  // ../../key_filter.v(24)
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U5/reg2_syn_24  (
    .a(\U5/reg2_syn_17 ),
    .b(\U5/reg2_syn_19 ),
    .c(\U5/reg2_syn_21 ),
    .d(\U5/reg2_syn_23 ),
    .o(\U5/cnt_b_n ));  // ../../key_filter.v(24)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U5/reg2_syn_25  (
    .a(\U5/cnt_b_n ),
    .b(\U5/key_reg0 [0]),
    .c(\U5/key_reg1 [0]),
    .o(\U5/reg2_syn_7 ));  // ../../key_filter.v(24)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U5/reg2_syn_26  (
    .a(\U5/cnt_b_n ),
    .b(\U5/key_reg0 [1]),
    .c(\U5/key_reg1 [1]),
    .o(\U5/reg2_syn_9 ));  // ../../key_filter.v(24)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U5/reg2_syn_27  (
    .a(\U5/cnt_b_n ),
    .b(\U5/key_reg0 [2]),
    .c(\U5/key_reg1 [2]),
    .o(\U5/reg2_syn_11 ));  // ../../key_filter.v(24)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U5/reg2_syn_28  (
    .a(\U5/cnt_b_n ),
    .b(\U5/key_reg0 [3]),
    .c(\U5/key_reg1 [3]),
    .o(\U5/reg2_syn_13 ));  // ../../key_filter.v(24)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_30  (
    .clk(CLK_dup_1),
    .d(\U5/reg2_syn_7 ),
    .q(\U5/key_reg1 [0]));  // ../../key_filter.v(24)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_32  (
    .clk(CLK_dup_1),
    .d(\U5/reg2_syn_9 ),
    .q(\U5/key_reg1 [1]));  // ../../key_filter.v(24)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_34  (
    .clk(CLK_dup_1),
    .d(\U5/reg2_syn_11 ),
    .q(\U5/key_reg1 [2]));  // ../../key_filter.v(24)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U5/reg2_syn_36  (
    .clk(CLK_dup_1),
    .d(\U5/reg2_syn_13 ),
    .q(\U5/key_reg1 [3]));  // ../../key_filter.v(24)
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[0]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [0]),
    .o(\U6/Count_b [0]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[11]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [11]),
    .o(\U6/Count_b [11]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[14]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [14]),
    .o(\U6/Count_b [14]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[18]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [18]),
    .o(\U6/Count_b [18]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[19]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [19]),
    .o(\U6/Count_b [19]));
  AL_MAP_LUT4 #(
    .EQN("(~D*~C*B*A)"),
    .INIT(16'h0008))
    \U6/Count_b[22]_syn_1  (
    .a(\U6/Count [4]),
    .b(\U6/Count [5]),
    .c(\U6/Count [6]),
    .d(\U6/Count [7]),
    .o(\U6/Count_b[22]_syn_2 ));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*~B*A)"),
    .INIT(16'h0200))
    \U6/Count_b[22]_syn_11  (
    .a(\U6/Count_b[22]_syn_10 ),
    .b(\U6/Count [20]),
    .c(\U6/Count [21]),
    .d(\U6/Count [22]),
    .o(\U6/Count_b[22]_syn_12 ));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U6/Count_b[22]_syn_13  (
    .a(\U6/Count_b[22]_syn_8 ),
    .b(\U6/Count_b[22]_syn_12 ),
    .c(\U6/Count_b[22]_syn_2 ),
    .d(\U6/Count_b[22]_syn_4 ),
    .o(\U6/Count_b_n ));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[22]_syn_14  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [22]),
    .o(\U6/Count_b [22]));
  AL_MAP_LUT4 #(
    .EQN("(D*C*B*A)"),
    .INIT(16'h8000))
    \U6/Count_b[22]_syn_3  (
    .a(\U6/Count [0]),
    .b(\U6/Count [1]),
    .c(\U6/Count [2]),
    .d(\U6/Count [3]),
    .o(\U6/Count_b[22]_syn_4 ));
  AL_MAP_LUT4 #(
    .EQN("(D*~C*B*A)"),
    .INIT(16'h0800))
    \U6/Count_b[22]_syn_5  (
    .a(\U6/Count [8]),
    .b(\U6/Count [9]),
    .c(\U6/Count [10]),
    .d(\U6/Count [11]),
    .o(\U6/Count_b[22]_syn_6 ));
  AL_MAP_LUT5 #(
    .EQN("(~E*D*~C*~B*A)"),
    .INIT(32'h00000200))
    \U6/Count_b[22]_syn_7  (
    .a(\U6/Count_b[22]_syn_6 ),
    .b(\U6/Count [12]),
    .c(\U6/Count [13]),
    .d(\U6/Count [14]),
    .e(\U6/Count [15]),
    .o(\U6/Count_b[22]_syn_8 ));
  AL_MAP_LUT4 #(
    .EQN("(D*C*~B*~A)"),
    .INIT(16'h1000))
    \U6/Count_b[22]_syn_9  (
    .a(\U6/Count [16]),
    .b(\U6/Count [17]),
    .c(\U6/Count [18]),
    .d(\U6/Count [19]),
    .o(\U6/Count_b[22]_syn_10 ));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[6]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [6]),
    .o(\U6/Count_b [6]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[8]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [8]),
    .o(\U6/Count_b [8]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U6/Count_b[9]_syn_1  (
    .a(\U6/Count_b_n ),
    .b(\U6/Count_b1 [9]),
    .o(\U6/Count_b [9]));
  EG_PHY_MSLICE #(
    //.MACRO("U6/add0_syn_176"),
    //.R_POSITION("X0Y0Z0"),
    .ALUTYPE("ADD_CARRY"),
    .INIT_LUT0(16'b0000000000001010),
    .INIT_LUT1(16'b0110011001101010),
    .MODE("RIPPLE"))
    \U6/add0_syn_176  (
    .a({\U6/Count [0],1'b0}),
    .b({1'b1,open_n1649}),
    .f({\U6/Count_b1 [0],open_n1669}),
    .fco(\U6/add0_syn_117 ));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .f({\U6/Count_b1 [6],open_n1690}),
    .fco(\U6/add0_syn_123 ),
    .q({open_n1693,\U6/Count [5]}));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .f({\U6/Count_b1 [8],open_n1710}),
    .fco(\U6/add0_syn_125 ),
    .q({open_n1713,\U6/Count [7]}));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .f({\U6/Count_b1 [14],open_n1730}),
    .fco(\U6/add0_syn_131 ),
    .q({open_n1733,\U6/Count [13]}));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .f({\U6/Count_b1 [18],open_n1750}),
    .fco(\U6/add0_syn_135 ),
    .q({open_n1753,\U6/Count [17]}));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .f({\U6/Count_b1 [22],open_n1770}),
    .q({open_n1774,\U6/Count [21]}));  // ../../../../1 run_led/run_led/led8_module.v(33)
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
    .q(\U6/Count [2:1]));  // ../../../../1 run_led/run_led/led8_module.v(16)
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
    .q(\U6/Count [4:3]));  // ../../../../1 run_led/run_led/led8_module.v(16)
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
    .f({open_n1831,\U6/Count_b1 [9]}),
    .fco(\U6/add0_syn_127 ),
    .q({\U6/Count [10],open_n1834}));  // ../../../../1 run_led/run_led/led8_module.v(16)
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
    .f({open_n1851,\U6/Count_b1 [11]}),
    .fco(\U6/add0_syn_129 ),
    .q({\U6/Count [12],open_n1854}));  // ../../../../1 run_led/run_led/led8_module.v(16)
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
    .q(\U6/Count [16:15]));  // ../../../../1 run_led/run_led/led8_module.v(16)
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
    .f({open_n1891,\U6/Count_b1 [19]}),
    .fco(\U6/add0_syn_137 ),
    .q({\U6/Count [20],open_n1894}));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_26  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [0]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [0]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_38  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [6]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [6]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_42  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [8]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [8]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_44  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [9]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [9]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_48  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [11]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [11]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_54  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [14]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [14]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_62  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [18]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [18]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_64  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [19]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [19]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg0_syn_70  (
    .clk(CLK_dup_1),
    .d(\U6/Count_b [22]),
    .sr(RSTn_dup_3),
    .q(\U6/Count [22]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_LUT4 #(
    .EQN("~(~B*~(~D*~C*~A))"),
    .INIT(16'hcccd))
    \U6/reg1_syn_14  (
    .a(\LED_Run[0]_dup_3 ),
    .b(\LED_Run[1]_dup_3 ),
    .c(\LED_Run[2]_dup_3 ),
    .d(\LED_Run[3]_dup_3 ),
    .o(\U6/rLED_Out_b1 [0]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_LUT3 #(
    .EQN("(B*~(C)*~(A)+B*C*~(A)+~(B)*C*A+B*C*A)"),
    .INIT(8'he4))
    \U6/reg1_syn_15  (
    .a(\U6/Count_b_n ),
    .b(\LED_Run[2]_dup_3 ),
    .c(\LED_Run[3]_dup_3 ),
    .o(\U6/reg1_syn_11 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U6/reg1_syn_16  (
    .a(\U6/Count_b_n ),
    .b(\LED_Run[0]_dup_3 ),
    .c(\LED_Run[3]_dup_3 ),
    .o(\U6/reg1_syn_13 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_LUT3 #(
    .EQN("(C*~(B)*~(A)+C*B*~(A)+~(C)*B*A+C*B*A)"),
    .INIT(8'hd8))
    \U6/reg1_syn_17  (
    .a(\U6/Count_b_n ),
    .b(\U6/rLED_Out_b1 [0]),
    .c(\LED_Run[0]_dup_3 ),
    .o(\U6/reg1_syn_7 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_LUT3 #(
    .EQN("(B*~(C)*~(A)+B*C*~(A)+~(B)*C*A+B*C*A)"),
    .INIT(8'he4))
    \U6/reg1_syn_18  (
    .a(\U6/Count_b_n ),
    .b(\LED_Run[1]_dup_3 ),
    .c(\LED_Run[2]_dup_3 ),
    .o(\U6/reg1_syn_9 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_20  (
    .clk(CLK_dup_1),
    .d(\U6/reg1_syn_7 ),
    .sr(RSTn_dup_3),
    .q(\LED_Run[0]_dup_3 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_22  (
    .clk(CLK_dup_1),
    .d(\U6/reg1_syn_9 ),
    .sr(RSTn_dup_3),
    .q(\LED_Run[1]_dup_3 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_24  (
    .clk(CLK_dup_1),
    .d(\U6/reg1_syn_11 ),
    .sr(RSTn_dup_3),
    .q(\LED_Run[2]_dup_3 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("INV"))
    \U6/reg1_syn_26  (
    .clk(CLK_dup_1),
    .d(\U6/reg1_syn_13 ),
    .sr(RSTn_dup_3),
    .q(\LED_Run[3]_dup_3 ));  // ../../../../1 run_led/run_led/led8_module.v(16)
  EG_PHY_MULT18 #(
    .INPUTREGA("DISABLE"),
    .INPUTREGB("DISABLE"),
    .MODE("MULT9X9C"),
    .OUTPUTREG("DISABLE"),
    .SIGNEDAMUX("0"),
    .SIGNEDBMUX("0"))
    \U7/mult0_syn_2  (
    .a({open_n1908,open_n1909,open_n1910,open_n1911,open_n1912,open_n1913,open_n1914,open_n1915,open_n1916,5'b00000,\U7/TimerH_Set }),
    .b({open_n1935,open_n1936,open_n1937,open_n1938,open_n1939,open_n1940,open_n1941,open_n1942,open_n1943,9'b000000101}),
    .p({open_n2009,open_n2010,open_n2011,open_n2012,open_n2013,open_n2014,open_n2015,open_n2016,open_n2017,open_n2018,open_n2019,open_n2020,open_n2021,open_n2022,open_n2023,open_n2024,open_n2025,open_n2026,open_n2027,open_n2028,open_n2029,open_n2030,open_n2031,open_n2032,open_n2033,open_n2034,open_n2035,open_n2036,open_n2037,\U7/Change_Time_b [7:1]}));  // ../../countdown_module.v(51)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_143  (
    .clk(Set_Time_dup_1),
    .d(1'b1),
    .q(\U7/reg0_syn_11 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_145  (
    .clk(\U7/temp_time_b3 [0]),
    .d(1'b1),
    .q(\U7/reg0_syn_13 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_147  (
    .clk(Set_Time_dup_1),
    .d(\U7/temp_time_b3 [0]),
    .sr(\U7/temp_time_b1 [0]),
    .q(\U7/reg0_syn_70 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_149  (
    .clk(\U7/temp_time_b [1]),
    .d(1'b1),
    .q(\U7/reg0_syn_23 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_151  (
    .clk(Set_Time_dup_1),
    .d(\U7/temp_time_b [1]),
    .sr(\U7/temp_time_b1 [1]),
    .q(\U7/reg0_syn_80 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_153  (
    .clk(\U7/temp_time_b1 [2]),
    .d(1'b1),
    .q(\U7/reg0_syn_33 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_155  (
    .clk(Set_Time_dup_1),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [2]),
    .q(\U7/reg0_syn_90 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_157  (
    .clk(\U7/temp_time_b3 [3]),
    .d(1'b1),
    .q(\U7/reg0_syn_43 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_159  (
    .clk(Set_Time_dup_1),
    .d(\U7/temp_time_b3 [3]),
    .sr(\U7/temp_time_b1 [3]),
    .q(\U7/reg0_syn_100 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_161  (
    .clk(\U7/temp_time_b [4]),
    .d(1'b1),
    .q(\U7/reg0_syn_53 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_163  (
    .clk(Set_Time_dup_1),
    .d(\U7/temp_time_b [4]),
    .sr(\U7/temp_time_b1 [4]),
    .q(\U7/reg0_syn_110 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    //.INIT(1'b0),
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("0"))
    \U7/reg0_syn_165  (
    .clk(\U7/temp_time_b [5]),
    .d(1'b1),
    .q(\U7/reg0_syn_63 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_167  (
    .clk(Set_Time_dup_1),
    .d(\U7/temp_time_b [5]),
    .sr(\U7/temp_time_b1 [5]),
    .q(\U7/reg0_syn_120 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_169  (
    .clk(Set_Time_dup_1),
    .d(1'b0),
    .sr(\U7/temp_time_b3 [0]),
    .q(\U7/reg0_syn_76 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_171  (
    .clk(\U7/temp_time_b3 [0]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [0]),
    .q(\U7/reg0_syn_78 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_173  (
    .clk(Set_Time_dup_1),
    .d(1'b0),
    .sr(\U7/temp_time_b [1]),
    .q(\U7/reg0_syn_86 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_175  (
    .clk(\U7/temp_time_b [1]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [1]),
    .q(\U7/reg0_syn_88 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_177  (
    .clk(\U7/temp_time_b [2]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [2]),
    .q(\U7/reg0_syn_98 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_179  (
    .clk(Set_Time_dup_1),
    .d(1'b0),
    .sr(\U7/temp_time_b3 [3]),
    .q(\U7/reg0_syn_106 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_181  (
    .clk(\U7/temp_time_b3 [3]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [3]),
    .q(\U7/reg0_syn_108 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_183  (
    .clk(Set_Time_dup_1),
    .d(1'b0),
    .sr(\U7/temp_time_b [4]),
    .q(\U7/reg0_syn_116 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_185  (
    .clk(\U7/temp_time_b [4]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [4]),
    .q(\U7/reg0_syn_118 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("SET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_187  (
    .clk(Set_Time_dup_1),
    .d(1'b0),
    .sr(\U7/temp_time_b [5]),
    .q(\U7/reg0_syn_126 ));  // ../../countdown_module.v(41)
  AL_MAP_SEQ #(
    .CEMUX("1"),
    .CLKMUX("CLK"),
    .DFFMODE("FF"),
    .REGSET("RESET"),
    .SRMODE("ASYNC"),
    .SRMUX("SR"))
    \U7/reg0_syn_189  (
    .clk(\U7/temp_time_b [5]),
    .d(1'b1),
    .sr(\U7/temp_time_b1 [5]),
    .q(\U7/reg0_syn_128 ));  // ../../countdown_module.v(41)
  AL_MAP_LUT4 #(
    .EQN("~(~B*~(~C*~(~D*~A)))"),
    .INIT(16'hcfce))
    \U7/temp_time_b1[0]_syn_1  (
    .a(\U7/temp_time_b8 [2]),
    .b(Sel_Time1_dup_7),
    .c(Sel_Time2_dup_9),
    .d(Sel_Time3_dup_5),
    .o(\U7/temp_time_b3 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[0]_syn_2  (
    .a(\U7/temp_time_b1[2]_syn_6 ),
    .b(\U7/temp_time_b3 [0]),
    .o(\U7/temp_time_b1 [0]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[2]_syn_1  (
    .a(Sel_Time1_dup_7),
    .b(Sel_Time2_dup_9),
    .o(\U7/temp_time_b1[2]_syn_2 ));
  AL_MAP_LUT3 #(
    .EQN("(C*~B*~A)"),
    .INIT(8'h10))
    \U7/temp_time_b1[2]_syn_3  (
    .a(Sel_Time3_dup_5),
    .b(Sel_Time4_dup_1),
    .c(Sel_Time5_dup_1),
    .o(\U7/temp_time_b8 [2]));
  AL_MAP_LUT4 #(
    .EQN("~(~D*~C*~B*A)"),
    .INIT(16'hfffd))
    \U7/temp_time_b1[2]_syn_4  (
    .a(\U7/temp_time_b1[2]_syn_2 ),
    .b(Sel_Time3_dup_5),
    .c(Sel_Time4_dup_1),
    .d(Sel_Time5_dup_1),
    .o(\U7/temp_time_b1 [5]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[2]_syn_5  (
    .a(\U7/temp_time_b1 [5]),
    .b(Sel_Time6_dup_1),
    .o(\U7/temp_time_b1[2]_syn_6 ));
  AL_MAP_LUT3 #(
    .EQN("(~B*~(~C*~A))"),
    .INIT(8'h32))
    \U7/temp_time_b1[2]_syn_7  (
    .a(\U7/temp_time_b8 [2]),
    .b(Sel_Time1_dup_7),
    .c(Sel_Time2_dup_9),
    .o(\U7/temp_time_b [2]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[2]_syn_8  (
    .a(\U7/temp_time_b1[2]_syn_6 ),
    .b(\U7/temp_time_b [2]),
    .o(\U7/temp_time_b1 [2]));
  AL_MAP_LUT3 #(
    .EQN("(~A*~(~C*~B))"),
    .INIT(8'h54))
    \U7/temp_time_b1[3]_syn_1  (
    .a(Sel_Time3_dup_5),
    .b(Sel_Time4_dup_1),
    .c(Sel_Time5_dup_1),
    .o(\U7/temp_time_b1[3]_syn_2 ));
  AL_MAP_LUT2 #(
    .EQN("~(B*~A)"),
    .INIT(4'hb))
    \U7/temp_time_b1[3]_syn_3  (
    .a(\U7/temp_time_b1[3]_syn_2 ),
    .b(\U7/temp_time_b1[2]_syn_2 ),
    .o(\U7/temp_time_b3 [3]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[3]_syn_4  (
    .a(\U7/temp_time_b1[2]_syn_6 ),
    .b(\U7/temp_time_b3 [3]),
    .o(\U7/temp_time_b1 [3]));
  AL_MAP_LUT4 #(
    .EQN("(A*~(~D*~C*~B))"),
    .INIT(16'haaa8))
    \U7/temp_time_b1[4]_syn_1  (
    .a(\U7/temp_time_b1[2]_syn_2 ),
    .b(Sel_Time3_dup_5),
    .c(Sel_Time4_dup_1),
    .d(Sel_Time5_dup_1),
    .o(\U7/temp_time_b [4]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b1[4]_syn_2  (
    .a(\U7/temp_time_b1[2]_syn_6 ),
    .b(\U7/temp_time_b [4]),
    .o(\U7/temp_time_b1 [4]));
  AL_MAP_LUT3 #(
    .EQN("~(~B*~(~C*A))"),
    .INIT(8'hce))
    \U7/temp_time_b[1]_syn_1  (
    .a(\U7/temp_time_b1[3]_syn_2 ),
    .b(Sel_Time1_dup_7),
    .c(Sel_Time2_dup_9),
    .o(\U7/temp_time_b1 [1]));
  AL_MAP_LUT2 #(
    .EQN("(~B*~A)"),
    .INIT(4'h1))
    \U7/temp_time_b[1]_syn_2  (
    .a(\U7/temp_time_b1[2]_syn_6 ),
    .b(\U7/temp_time_b1 [1]),
    .o(\U7/temp_time_b [1]));
  AL_MAP_LUT2 #(
    .EQN("(B*~A)"),
    .INIT(4'h4))
    \U7/temp_time_b[5]_syn_1  (
    .a(\U7/temp_time_b1 [5]),
    .b(Sel_Time6_dup_1),
    .o(\U7/temp_time_b [5]));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

