// Verilog netlist created by Tang Dynasty v5.6.71036
// Sat Jul 27 21:11:51 2024

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
  wire [3:0] \U1/LED_Out_b2 ;
  wire [3:0] \U1/LED_Out_b4 ;
  wire [3:0] \U1/LED_Out_b5 ;
  wire [3:0] \U1/LED_Out_b6 ;
  wire [3:0] \U1/Player_Number ;  // ../../Sel_module.v(10)
  wire [3:0] \U1/Player_Number_b3 ;
  wire [3:0] \U1/Player_Number_b4 ;
  wire [3:0] \U1/Player_Number_b5 ;
  wire [3:0] \U1/mux10_syn_2 ;
  wire [3:0] \U1/mux9_syn_2 ;
  wire [7:0] \U2/Change_Time ;  // ../../Timer_module.v(8)
  wire [24:0] \U2/Count ;  // ../../Timer_module.v(19)
  wire [24:0] \U2/Count_b ;
  wire [24:0] \U2/Count_b1 ;
  wire [7:0] \U2/ROM ;  // ../../Timer_module.v(22)
  wire [3:0] \U2/TimerH ;  // ../../Timer_module.v(10)
  wire [3:0] \U2/TimerH_b1 ;
  wire [3:0] \U2/TimerH_b2 ;
  wire [7:0] \U2/TimerH_b3 ;
  wire [3:0] \U2/TimerH_b4 ;
  wire [3:0] \U2/TimerH_b5 ;
  wire [3:0] \U2/TimerL ;  // ../../Timer_module.v(11)
  wire [3:0] \U2/TimerL_b1 ;
  wire [7:0] \U2/TimerL_b10 ;
  wire [3:0] \U2/TimerL_b2 ;
  wire [3:0] \U2/TimerL_b3 ;
  wire [3:0] \U2/TimerL_b4 ;
  wire [3:0] \U2/TimerL_b5 ;
  wire [7:0] \U2/TimerL_b6 ;
  wire [7:0] \U2/TimerL_b7 ;
  wire [7:0] \U2/TimerL_b8 ;
  wire [7:0] \U2/TimerL_b9 ;
  wire [0:0] \U2/count1_b ;
  wire [22:0] \U3/Count ;  // ../../Buzzer_module.v(13)
  wire [22:0] \U3/Count_b2 ;
  wire [22:0] \U3/Pulse_x ;  // ../../Buzzer_module.v(14)
  wire [15:0] \U4/Count ;  // ../../Digitron_NumDisplay.v(18)
  wire [15:0] \U4/Count_b1 ;
  wire [3:0] \U4/SingleNum ;  // ../../Digitron_NumDisplay.v(50)
  wire [3:0] \U4/SingleNum_b1 ;
  wire [3:0] \U4/SingleNum_b2 ;
  wire [3:0] \U4/W_DigitronCS_Out_b ;
  wire [1:0] \U4/cnt ;  // ../../Digitron_NumDisplay.v(19)
  wire [1:0] \U4/cnt_b1 ;
  wire [1:0] \U4/cnt_b2 ;
  wire [3:0] \U4/sel1_syn_12 ;
  wire [3:0] \U4/sel1_syn_2 ;
  wire [3:0] \U4/sel1_syn_7 ;
  wire [19:0] \U5/cnt ;  // ../../key_filter.v(10)
  wire [19:0] \U5/cnt_b1 ;
  wire [3:0] \U5/key_deb_b2 ;
  wire [3:0] \U5/key_deb_b4 ;
  wire [3:0] \U5/key_deb_b5 ;
  wire [3:0] \U5/key_reg0 ;  // ../../key_filter.v(20)
  wire [3:0] \U5/key_reg1 ;  // ../../key_filter.v(21)
  wire [22:0] \U6/Count ;  // ../../../../1 run_led/run_led/led8_module.v(12)
  wire [22:0] \U6/Count_b ;
  wire [22:0] \U6/Count_b1 ;
  wire [3:0] \U6/rLED_Out_b1 ;
  wire [7:0] \U7/Change_Time_b ;
  wire [3:0] \U7/TimerH_Set ;  // ../../countdown_module.v(21)
  wire [7:0] \U7/TimerH_Set_b ;
  wire [3:0] \U7/TimerL_Set ;  // ../../countdown_module.v(22)
  wire [7:0] \U7/TimerL_Set_b ;
  wire [7:0] \U7/TimerL_Set_b2 ;
  wire [7:0] \U7/TimerL_Set_b3 ;
  wire [7:0] \U7/temp_time ;  // ../../countdown_module.v(23)
  wire [5:0] \U7/temp_time_b ;
  wire [5:0] \U7/temp_time_b1 ;
  wire [5:0] \U7/temp_time_b10 ;
  wire [5:0] \U7/temp_time_b11 ;
  wire [5:0] \U7/temp_time_b12 ;
  wire [5:0] \U7/temp_time_b2 ;
  wire [5:0] \U7/temp_time_b3 ;
  wire [5:0] \U7/temp_time_b4 ;
  wire [5:0] \U7/temp_time_b5 ;
  wire [5:0] \U7/temp_time_b6 ;
  wire [5:0] \U7/temp_time_b7 ;
  wire [5:0] \U7/temp_time_b8 ;
  wire [5:0] \U7/temp_time_b9 ;
  wire Sel_Time1_syn_2;  // ../../responder.v(9)
  wire Sel_Time2_syn_2;  // ../../responder.v(10)
  wire Sel_Time3_syn_2;  // ../../responder.v(11)
  wire \U1/Block_i_syn_3 ;  // ../../Sel_module.v(29)
  wire \U1/Block_i2_syn_3 ;  // ../../Sel_module.v(51)
  wire \U1/Block_i3_syn_5 ;  // ../../Sel_module.v(53)
  wire \U1/Block_i3_syn_7 ;  // ../../Sel_module.v(53)
  wire \U1/Block_i5_syn_3 ;  // ../../Sel_module.v(61)
  wire \U1/Block_i7_syn_3 ;  // ../../Sel_module.v(69)
  wire \U1/Buzzer_Enable_i1_syn_3 ;  // ../../Sel_module.v(51)
  wire \U1/Buzzer_Enable_i3_syn_8 ;  // ../../Sel_module.v(53)
  wire \U1/mux10_syn_16 ;  // ../../Sel_module.v(53)
  wire \U1/mux11_syn_11 ;  // ../../Sel_module.v(51)
  wire \U1/mux14_syn_104 ;  // ../../Sel_module.v(29)
  wire \U1/mux15_syn_11 ;  // ../../Sel_module.v(29)
  wire \U1/mux15_syn_19 ;  // ../../Sel_module.v(29)
  wire \U1/mux7_syn_11 ;  // ../../Sel_module.v(61)
  wire \U1/mux9_syn_16 ;  // ../../Sel_module.v(53)
  wire \U1/Block ;  // ../../Sel_module.v(15)
  wire \U1/Block_n4 ;
  wire \U1/Block_n9 ;
  wire \U1/Buzzer_Enable ;  // ../../Sel_module.v(12)
  wire \U1/Buzzer_Enable_syn_2 ;  // ../../Sel_module.v(12)
  wire \U1/Buzzer_Enable_n1 ;
  wire \U1/Buzzer_Enable_n2 ;
  wire \U1/Buzzer_Enable_n4 ;
  wire \U1/Buzzer_Enable_n5 ;
  wire \U1/Buzzer_Enable_n6 ;
  wire \U1/Buzzer_Enable_n8 ;
  wire \U1/Buzzer_Enable_n9 ;
  wire \U1/Timer_Start ;  // ../../Sel_module.v(11)
  wire \U1/Timer_Start_n1 ;
  wire \U1/Timer_Start_n2 ;
  wire \U2/CLK1_i_syn_3 ;  // ../../Timer_module.v(34)
  wire \U2/u25_syn_3 ;  // ../../Timer_module.v(90)
  wire \U2/Block_Sel_Latched ;  // ../../Timer_module.v(20)
  wire \U2/Block_Sel_Latched_n2 ;
  wire \U2/Block_Sel_Latched_n3 ;
  wire \U2/Block_Sel_Latched_n4 ;
  wire \U2/Buzzer_TimeOver_n1 ;
  wire \U2/CLK1 ;  // ../../Timer_module.v(18)
  wire \U2/CLK1_n3 ;
  wire \U2/CLK1_n4 ;
  wire \U2/TimerH_b1_n ;
  wire \U2/TimerH_b1_n1 ;
  wire \U2/TimerH_b1_n2 ;
  wire \U2/TimerH_b2_n ;
  wire \U2/TimerH_b3_n ;
  wire \U2/TimerH_b3_n1 ;
  wire \U2/TimerH_b3_n13 ;
  wire \U2/TimerH_b3_n14 ;
  wire \U2/TimerH_b3_n15 ;
  wire \U2/TimerH_b3_n22 ;
  wire \U2/TimerH_b3_n23 ;
  wire \U2/TimerH_b3_n24 ;
  wire \U2/TimerH_b3_n3 ;
  wire \U2/TimerH_b3_n31 ;
  wire \U2/TimerH_b3_n32 ;
  wire \U2/TimerH_b3_n33 ;
  wire \U2/TimerH_b3_n37 ;
  wire \U2/TimerH_b3_n4 ;
  wire \U2/TimerH_b3_n5 ;
  wire \U2/TimerH_b3_n6 ;
  wire \U2/TimerL_b3_n1 ;
  wire \U2/TimerL_b3_n13 ;
  wire \U2/TimerL_b3_n31 ;
  wire \U2/TimerL_b3_n7 ;
  wire \U2/count1 ;  // ../../Timer_module.v(17)
  wire \U2/count1_n ;
  wire \U3/mux1_syn_20 ;  // ../../Buzzer_module.v(19)
  wire \U3/mux3_syn_102 ;  // ../../Buzzer_module.v(35)
  wire \U3/Count_b1_n ;
  wire \U3/Count_b1_n_syn_2 ;
  wire \U3/Count_b_n2 ;
  wire \U3/Count_b_n3 ;
  wire \U3/Count_b_n4 ;
  wire \U3/Pulse_x_b_n ;
  wire \U3/W_buzzer_n2 ;
  wire \U4/mux0_syn_3 ;  // ../../Digitron_NumDisplay.v(40)
  wire \U4/W_DigitronCS_Out[1]_syn_2 ;  // ../../Digitron_NumDisplay.v(36)
  wire \U4/Count_b_n ;
  wire \U4/SingleNum_b_n ;
  wire \U4/SingleNum_b_n1 ;
  wire \U4/SingleNum_b_n2 ;
  wire \U4/SingleNum_b_n4 ;
  wire \U4/SingleNum_b_n5 ;
  wire \U4/W_DigitronCS_Out_n ;
  wire \U4/cnt_b1_n ;
  wire \U5/key_deb_b2[3]_syn_2 ;
  wire \U5/key_deb_b2[2]_syn_2 ;
  wire \U5/key_deb_b2[1]_syn_2 ;
  wire \U5/key_deb_b2[0]_syn_2 ;
  wire \U5/cnt_b_n ;
  wire \U6/Count_b_n ;
  wire \U6/rLED_Out_b1_n ;
  wire \U7/mux0_syn_13 ;  // ../../countdown_module.v(27)
  wire \U7/mux0_syn_17 ;  // ../../countdown_module.v(27)
  wire \U7/mux1_syn_13 ;  // ../../countdown_module.v(29)
  wire \U7/reg0_syn_11 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_13 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_15 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_16 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_23 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_25 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_26 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_33 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_35 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_36 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_43 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_45 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_46 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_53 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_55 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_56 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_63 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_65 ;  // ../../countdown_module.v(41)
  wire \U7/reg0_syn_66 ;  // ../../countdown_module.v(41)
  wire \U7/TimerH_Set_n ;
  wire \U7/TimerH_Set_n11 ;
  wire \U7/TimerH_Set_n12 ;
  wire \U7/TimerH_Set_n13 ;
  wire \U7/TimerH_Set_n18 ;
  wire \U7/TimerH_Set_n19 ;
  wire \U7/TimerH_Set_n20 ;
  wire \U7/TimerH_Set_n4 ;
  wire \U7/TimerH_Set_n5 ;
  wire \U7/TimerH_Set_n6 ;
  wire \U7/TimerL_Set_n1 ;
  wire \U7/TimerL_Set_n10 ;
  wire \U7/TimerL_Set_n13 ;
  wire \U7/TimerL_Set_n4 ;
  wire \U7/TimerL_Set_n7 ;

  assign Digitron_Out[7] = 1'b0;
  assign Key_Row[3] = 1'b0;
  assign Key_Row[2] = 1'b1;
  assign Key_Row[1] = 1'b1;
  assign Key_Row[0] = 1'b1;
  assign LED_OverTime_Out = \U2/count1 ;
  not Sel_Time1_syn_1 (Sel_Time1_syn_2, Sel_Time1);  // ../../responder.v(9)
  not Sel_Time2_syn_1 (Sel_Time2_syn_2, Sel_Time2);  // ../../responder.v(10)
  not Sel_Time3_syn_1 (Sel_Time3_syn_2, Sel_Time3);  // ../../responder.v(11)
  and \U1/Block_i2_syn_2  (\U1/Block_i2_syn_3 , \U1/Block_n4 , \U1/Block_i3_syn_7 );  // ../../Sel_module.v(51)
  and \U1/Block_i3_syn_4  (\U1/Block_i3_syn_5 , \U5/key_deb_b2[0]_syn_2 , \U1/Block_i5_syn_3 );  // ../../Sel_module.v(53)
  not \U1/Block_i3_syn_6  (\U1/Block_i3_syn_7 , \U1/Block_i3_syn_5 );  // ../../Sel_module.v(53)
  not \U1/Block_i4  (\U1/Block_n4 , \U2/Block_Sel_Latched );  // ../../Sel_module.v(31)
  and \U1/Block_i5_syn_2  (\U1/Block_i5_syn_3 , \U5/key_deb_b2[1]_syn_2 , \U1/Block_i7_syn_3 );  // ../../Sel_module.v(61)
  and \U1/Block_i7_syn_2  (\U1/Block_i7_syn_3 , \U5/key_deb_b2[2]_syn_2 , \U5/key_deb_b2[3]_syn_2 );  // ../../Sel_module.v(69)
  not \U1/Block_i9  (\U1/Block_n9 , \U1/Block );  // ../../Sel_module.v(31)
  and \U1/Block_i_syn_2  (\U1/Block_i_syn_3 , RSTn, \U1/Block_i2_syn_3 );  // ../../Sel_module.v(29)
  AL_DFF_X \U1/Block_reg  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(1'b1),
    .en(\U1/Block_i_syn_3 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Block ));  // ../../Sel_module.v(20)
  AL_MUX \U1/Buzzer_Enable_i1  (
    .i0(\U1/Buzzer_Enable_n2 ),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_i1_syn_3 ),
    .o(\U1/Buzzer_Enable_n1 ));  // ../../Sel_module.v(51)
  and \U1/Buzzer_Enable_i1_syn_2  (\U1/Buzzer_Enable_i1_syn_3 , \U1/Block_n4 , \U1/Buzzer_Enable_i3_syn_8 );  // ../../Sel_module.v(51)
  AL_MUX \U1/Buzzer_Enable_i2  (
    .i0(\U1/Buzzer_Enable_n4 ),
    .i1(\U1/Buzzer_Enable_n5 ),
    .sel(\U1/Buzzer_Enable_n6 ),
    .o(\U1/Buzzer_Enable_n2 ));  // ../../Sel_module.v(37)
  and \U1/Buzzer_Enable_i3_syn_7  (\U1/Buzzer_Enable_i3_syn_8 , \U1/Block_n9 , \U1/Block_i3_syn_7 );  // ../../Sel_module.v(53)
  AL_MUX \U1/Buzzer_Enable_i4  (
    .i0(\U1/Buzzer_Enable ),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/Buzzer_Enable_n4 ));  // ../../Sel_module.v(31)
  not \U1/Buzzer_Enable_i5  (\U1/Buzzer_Enable_n5 , \U1/Buzzer_Enable_n9 );  // ../../Sel_module.v(39)
  not \U1/Buzzer_Enable_i6  (\U1/Buzzer_Enable_n6 , \U1/Timer_Start );  // ../../Sel_module.v(37)
  and \U1/Buzzer_Enable_i8  (\U1/Buzzer_Enable_n8 , \U1/Block_n9 , \U1/Block_n4 );  // ../../Sel_module.v(31)
  AL_DFF_X \U1/Buzzer_Enable_reg  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Buzzer_Enable_n1 ),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Buzzer_Enable ));  // ../../Sel_module.v(20)
  not \U1/Buzzer_Enable_syn_1  (\U1/Buzzer_Enable_syn_2 , \U1/Buzzer_Enable );  // ../../Sel_module.v(12)
  AL_MUX \U1/Timer_Start_i1  (
    .i0(\U1/Timer_Start_n2 ),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_i1_syn_3 ),
    .o(\U1/Timer_Start_n1 ));  // ../../Sel_module.v(51)
  AL_MUX \U1/Timer_Start_i2  (
    .i0(\U1/Timer_Start ),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/Timer_Start_n2 ));  // ../../Sel_module.v(31)
  AL_DFF_X \U1/Timer_Start_reg  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Timer_Start_n1 ),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Timer_Start ));  // ../../Sel_module.v(20)
  add_pu25_pu25_o25 \U1/add0  (
    .i0(\U1/Count ),
    .i1(25'b0000000000000000000000001),
    .o(\U1/Count_b3 ));  // ../../Sel_module.v(47)
  eq_w25 \U1/eq0  (
    .i0(\U1/Count ),
    .i1(25'b1011111010111100000111111),
    .o(\U1/Buzzer_Enable_n9 ));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux0_syn_1  (
    .i0(LED_Out[0]),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/LED_Out_b2 [0]));  // ../../Sel_module.v(31)
  binary_mux_s1_w1 \U1/mux0_syn_2  (
    .i0(LED_Out[1]),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/LED_Out_b2 [1]));  // ../../Sel_module.v(31)
  binary_mux_s1_w1 \U1/mux0_syn_3  (
    .i0(LED_Out[2]),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/LED_Out_b2 [2]));  // ../../Sel_module.v(31)
  binary_mux_s1_w1 \U1/mux0_syn_4  (
    .i0(LED_Out[3]),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n8 ),
    .o(\U1/LED_Out_b2 [3]));  // ../../Sel_module.v(31)
  and \U1/mux10_syn_15  (\U1/mux10_syn_16 , \U5/key_deb_b2[0]_syn_2 , \U1/mux7_syn_11 );  // ../../Sel_module.v(53)
  AL_MUX \U1/mux10_syn_17  (
    .i0(1'b0),
    .i1(\U1/Player_Number_b5 [2]),
    .sel(\U1/mux10_syn_16 ),
    .o(\U1/mux10_syn_2 [2]));  // ../../Sel_module.v(53)
  binary_mux_s1_w1 \U1/mux10_syn_6  (
    .i0(\U1/Player_Number_b3 [0]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [0]),
    .o(\U1/mux10_syn_2 [0]));  // ../../Sel_module.v(53)
  binary_mux_s1_w1 \U1/mux10_syn_7  (
    .i0(\U1/Player_Number_b3 [1]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [0]),
    .o(\U1/mux10_syn_2 [1]));  // ../../Sel_module.v(53)
  and \U1/mux11_syn_10  (\U1/mux11_syn_11 , \U1/Block_n4 , \U1/Block_n9 );  // ../../Sel_module.v(51)
  AL_MUX \U1/mux11_syn_12  (
    .i0(\U1/LED_Out_b2 [1]),
    .i1(\U1/mux9_syn_2 [1]),
    .sel(\U1/mux11_syn_11 ),
    .o(\U1/LED_Out_b1 [1]));  // ../../Sel_module.v(51)
  AL_MUX \U1/mux11_syn_16  (
    .i0(\U1/LED_Out_b2 [2]),
    .i1(\U1/mux9_syn_2 [2]),
    .sel(\U1/mux11_syn_11 ),
    .o(\U1/LED_Out_b1 [2]));  // ../../Sel_module.v(51)
  AL_MUX \U1/mux11_syn_20  (
    .i0(\U1/LED_Out_b2 [3]),
    .i1(\U1/mux9_syn_2 [3]),
    .sel(\U1/mux11_syn_11 ),
    .o(\U1/LED_Out_b1 [3]));  // ../../Sel_module.v(51)
  AL_MUX \U1/mux11_syn_8  (
    .i0(\U1/LED_Out_b2 [0]),
    .i1(\U1/mux9_syn_2 [0]),
    .sel(\U1/mux11_syn_11 ),
    .o(\U1/LED_Out_b1 [0]));  // ../../Sel_module.v(51)
  and \U1/mux14_syn_103  (\U1/mux14_syn_104 , RSTn, \U1/Buzzer_Enable_n6 );  // ../../Sel_module.v(29)
  and \U1/mux15_syn_10  (\U1/mux15_syn_11 , RSTn, \U1/mux11_syn_11 );  // ../../Sel_module.v(29)
  and \U1/mux15_syn_18  (\U1/mux15_syn_19 , RSTn, \U1/Buzzer_Enable_i1_syn_3 );  // ../../Sel_module.v(29)
  binary_mux_s1_w1 \U1/mux1_syn_1  (
    .i0(\U1/Count_b3 [0]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [0]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_2  (
    .i0(\U1/Count_b3 [1]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [1]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_3  (
    .i0(\U1/Count_b3 [2]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [2]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_4  (
    .i0(\U1/Count_b3 [3]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [3]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_5  (
    .i0(\U1/Count_b3 [4]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [4]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_6  (
    .i0(\U1/Count_b3 [5]),
    .i1(1'b1),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [5]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux1_syn_7  (
    .i0(\U1/Count_b3 [6]),
    .i1(1'b0),
    .sel(\U1/Buzzer_Enable_n9 ),
    .o(\U1/Count_b2 [6]));  // ../../Sel_module.v(39)
  binary_mux_s1_w1 \U1/mux3_syn_3  (
    .i0(\U1/LED_Out_b2 [2]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [3]),
    .o(\U1/LED_Out_b6 [2]));  // ../../Sel_module.v(77)
  binary_mux_s1_w1 \U1/mux3_syn_4  (
    .i0(\U1/LED_Out_b2 [3]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [3]),
    .o(\U1/LED_Out_b6 [3]));  // ../../Sel_module.v(77)
  binary_mux_s1_w1 \U1/mux4_syn_1  (
    .i0(\U1/Player_Number [0]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [3]),
    .o(\U1/Player_Number_b5 [0]));  // ../../Sel_module.v(77)
  binary_mux_s1_w1 \U1/mux4_syn_2  (
    .i0(\U1/Player_Number [1]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [3]),
    .o(\U1/Player_Number_b5 [1]));  // ../../Sel_module.v(77)
  binary_mux_s1_w1 \U1/mux4_syn_3  (
    .i0(\U1/Player_Number [2]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [3]),
    .o(\U1/Player_Number_b5 [2]));  // ../../Sel_module.v(77)
  AL_MUX \U1/mux5_syn_12  (
    .i0(1'b0),
    .i1(\U1/LED_Out_b2 [1]),
    .sel(\U1/Block_i7_syn_3 ),
    .o(\U1/LED_Out_b5 [1]));  // ../../Sel_module.v(69)
  binary_mux_s1_w1 \U1/mux5_syn_3  (
    .i0(\U1/LED_Out_b6 [2]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [2]),
    .o(\U1/LED_Out_b5 [2]));  // ../../Sel_module.v(69)
  binary_mux_s1_w1 \U1/mux6_syn_1  (
    .i0(\U1/Player_Number_b5 [0]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [2]),
    .o(\U1/Player_Number_b4 [0]));  // ../../Sel_module.v(69)
  and \U1/mux7_syn_10  (\U1/mux7_syn_11 , \U5/key_deb_b2[1]_syn_2 , \U5/key_deb_b2[2]_syn_2 );  // ../../Sel_module.v(61)
  binary_mux_s1_w1 \U1/mux7_syn_2  (
    .i0(\U1/LED_Out_b5 [1]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [1]),
    .o(\U1/LED_Out_b4 [1]));  // ../../Sel_module.v(61)
  AL_MUX \U1/mux7_syn_8  (
    .i0(1'b0),
    .i1(\U1/LED_Out_b2 [0]),
    .sel(\U1/Block_i5_syn_3 ),
    .o(\U1/LED_Out_b4 [0]));  // ../../Sel_module.v(61)
  binary_mux_s1_w1 \U1/mux8_syn_1  (
    .i0(\U1/Player_Number_b4 [0]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [1]),
    .o(\U1/Player_Number_b3 [0]));  // ../../Sel_module.v(61)
  AL_MUX \U1/mux8_syn_8  (
    .i0(1'b1),
    .i1(\U1/Player_Number_b5 [1]),
    .sel(\U1/mux7_syn_11 ),
    .o(\U1/Player_Number_b3 [1]));  // ../../Sel_module.v(61)
  and \U1/mux9_syn_15  (\U1/mux9_syn_16 , \U5/key_deb_b2[0]_syn_2 , \U5/key_deb_b2[1]_syn_2 );  // ../../Sel_module.v(53)
  AL_MUX \U1/mux9_syn_17  (
    .i0(1'b0),
    .i1(\U1/LED_Out_b5 [2]),
    .sel(\U1/mux9_syn_16 ),
    .o(\U1/mux9_syn_2 [2]));  // ../../Sel_module.v(53)
  AL_MUX \U1/mux9_syn_21  (
    .i0(1'b0),
    .i1(\U1/LED_Out_b6 [3]),
    .sel(\U1/mux10_syn_16 ),
    .o(\U1/mux9_syn_2 [3]));  // ../../Sel_module.v(53)
  binary_mux_s1_w1 \U1/mux9_syn_6  (
    .i0(\U1/LED_Out_b4 [0]),
    .i1(1'b1),
    .sel(\U5/key_deb_b2 [0]),
    .o(\U1/mux9_syn_2 [0]));  // ../../Sel_module.v(53)
  binary_mux_s1_w1 \U1/mux9_syn_7  (
    .i0(\U1/LED_Out_b4 [1]),
    .i1(1'b0),
    .sel(\U5/key_deb_b2 [0]),
    .o(\U1/mux9_syn_2 [1]));  // ../../Sel_module.v(53)
  AL_DFF_0 \U1/reg0_syn_10  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [8]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [8]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_11  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [9]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [9]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_12  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [10]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [10]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_13  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [11]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [11]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_14  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [12]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [12]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_15  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [13]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [13]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_16  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [14]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [14]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_17  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [15]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [15]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_18  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [16]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [16]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_19  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [17]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [17]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [0]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [0]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_20  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [18]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [18]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_21  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [19]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [19]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_22  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [20]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [20]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_23  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [21]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [21]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_24  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [22]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [22]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_25  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [23]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [23]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_26  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [24]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [24]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_3  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [1]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [1]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_4  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [2]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [2]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_5  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [3]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [3]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_6  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [4]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [4]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_7  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [5]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [5]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_8  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b2 [6]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [6]));  // ../../Sel_module.v(20)
  AL_DFF_0 \U1/reg0_syn_9  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Count_b3 [7]),
    .en(\U1/mux14_syn_104 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Count [7]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg1_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/LED_Out_b1 [0]),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Out[0]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg1_syn_3  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/LED_Out_b1 [1]),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Out[1]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg1_syn_4  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/LED_Out_b1 [2]),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Out[2]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg1_syn_5  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/LED_Out_b1 [3]),
    .en(RSTn),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Out[3]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg2_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/mux10_syn_2 [0]),
    .en(\U1/mux15_syn_11 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Player_Number [0]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg2_syn_3  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(CLK),
    .d(\U1/mux10_syn_2 [1]),
    .en(\U1/mux15_syn_11 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Player_Number [1]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg2_syn_4  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/mux10_syn_2 [2]),
    .en(\U1/mux15_syn_11 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Player_Number [2]));  // ../../Sel_module.v(20)
  AL_DFF_X \U1/reg2_syn_5  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(CLK),
    .d(1'b0),
    .en(\U1/mux15_syn_19 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U1/Player_Number [3]));  // ../../Sel_module.v(20)
  and \U2/Block_Sel_Latched_i2  (\U2/Block_Sel_Latched_n2 , \U2/Block_Sel_Latched_n3 , \U2/Block_Sel_Latched_n4 );  // ../../Timer_module.v(90)
  AL_DFF_0 \U2/Block_Sel_Latched_reg_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(1'b1),
    .en(\U2/Block_Sel_Latched_n2 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Block_Sel_Latched ));  // ../../Timer_module.v(83)
  not \U2/Buzzer_TimeOver_i1  (\U2/Buzzer_TimeOver_n1 , \U2/count1 );  // ../../Timer_module.v(92)
  not \U2/CLK1_i3  (\U2/CLK1_n3 , \U2/CLK1 );  // ../../Timer_module.v(39)
  and \U2/CLK1_i_syn_2  (\U2/CLK1_i_syn_3 , \U1/Timer_Start , \U2/CLK1_n4 );  // ../../Timer_module.v(34)
  AL_DFF_X \U2/CLK1_reg  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/CLK1_n3 ),
    .en(\U2/CLK1_i_syn_3 ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/CLK1 ));  // ../../Timer_module.v(34)
  and \U2/TimerH_b1_i  (\U2/TimerH_b1_n , \U2/TimerH_b1_n1 , \U2/TimerH_b1_n2 );  // ../../Timer_module.v(55)
  not \U2/TimerH_b3_i  (\U2/TimerH_b3 [3], \U2/TimerH_b3_n );  // ../../Timer_module.v(57)
  not \U2/TimerH_b3_i1  (\U2/TimerH_b3 [2], \U2/TimerH_b3_n1 );  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i13  (
    .i0(\U2/TimerH_b3_n5 ),
    .i1(\U2/TimerL_b9 [6]),
    .sel(\U2/TimerH_b3 [3]),
    .o(\U2/TimerH_b3_n13 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i14  (
    .i0(\U2/TimerH_b3_n6 ),
    .i1(\U2/TimerL_b9 [5]),
    .sel(\U2/TimerH_b3 [3]),
    .o(\U2/TimerH_b3_n14 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i15  (
    .i0(\U2/ROM [4]),
    .i1(\U2/TimerL_b9 [4]),
    .sel(\U2/TimerH_b3 [3]),
    .o(\U2/TimerH_b3_n15 ));  // ../../Timer_module.v(57)
  not \U2/TimerH_b3_i2  (\U2/TimerH_b3 [1], \U2/TimerL_b3_n13 );  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i22  (
    .i0(\U2/TimerH_b3_n14 ),
    .i1(\U2/TimerL_b8 [5]),
    .sel(\U2/TimerH_b3 [2]),
    .o(\U2/TimerH_b3_n22 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i23  (
    .i0(\U2/TimerH_b3_n15 ),
    .i1(\U2/TimerL_b8 [4]),
    .sel(\U2/TimerH_b3 [2]),
    .o(\U2/TimerH_b3_n23 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i24  (
    .i0(\U2/ROM [3]),
    .i1(\U2/TimerL_b8 [3]),
    .sel(\U2/TimerH_b3 [2]),
    .o(\U2/TimerH_b3_n24 ));  // ../../Timer_module.v(57)
  not \U2/TimerH_b3_i3  (\U2/TimerH_b3 [0], \U2/TimerH_b3_n3 );  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i31  (
    .i0(\U2/TimerH_b3_n23 ),
    .i1(\U2/TimerL_b7 [4]),
    .sel(\U2/TimerH_b3 [1]),
    .o(\U2/TimerH_b3_n31 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i32  (
    .i0(\U2/TimerH_b3_n24 ),
    .i1(\U2/TimerL_b7 [3]),
    .sel(\U2/TimerH_b3 [1]),
    .o(\U2/TimerH_b3_n32 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i33  (
    .i0(\U2/ROM [2]),
    .i1(\U2/TimerL_b7 [2]),
    .sel(\U2/TimerH_b3 [1]),
    .o(\U2/TimerH_b3_n33 ));  // ../../Timer_module.v(57)
  not \U2/TimerH_b3_i37  (\U2/TimerH_b3_n37 , \U2/TimerL_b3_n31 );  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i4  (
    .i0(\U2/ROM [7]),
    .i1(\U2/TimerL_b10 [7]),
    .sel(\U2/TimerH_b3_n37 ),
    .o(\U2/TimerH_b3_n4 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i5  (
    .i0(\U2/ROM [6]),
    .i1(\U2/TimerL_b10 [6]),
    .sel(\U2/TimerH_b3_n37 ),
    .o(\U2/TimerH_b3_n5 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerH_b3_i6  (
    .i0(\U2/ROM [5]),
    .i1(\U2/TimerL_b10 [5]),
    .sel(\U2/TimerH_b3_n37 ),
    .o(\U2/TimerH_b3_n6 ));  // ../../Timer_module.v(57)
  AL_MUX \U2/TimerL_b3_i  (
    .i0(\U2/TimerH_b3_n32 ),
    .i1(\U2/TimerL_b6 [3]),
    .sel(\U2/TimerL_b3_n1 ),
    .o(\U2/TimerL_b3 [3]));  // ../../Timer_module.v(58)
  AL_MUX \U2/TimerL_b3_i1  (
    .i0(\U2/TimerH_b3_n33 ),
    .i1(\U2/TimerL_b6 [2]),
    .sel(\U2/TimerL_b3_n1 ),
    .o(\U2/TimerL_b3 [2]));  // ../../Timer_module.v(58)
  AL_MUX \U2/TimerL_b3_i2  (
    .i0(\U2/ROM [1]),
    .i1(\U2/TimerL_b6 [1]),
    .sel(\U2/TimerL_b3_n1 ),
    .o(\U2/TimerL_b3 [1]));  // ../../Timer_module.v(58)
  not \U2/TimerL_b3_i5  (\U2/TimerL_b3_n1 , \U2/TimerL_b3_n7 );  // ../../Timer_module.v(58)
  not \U2/TimerL_b5_i  (\U2/TimerL_b5 [0], \U2/Block_Sel_Latched_n3 );  // ../../Timer_module.v(64)
  add_pu25_pu25_o25 \U2/add0  (
    .i0(\U2/Count ),
    .i1(25'b0000000000000000000000001),
    .o(\U2/Count_b1 ));  // ../../Timer_module.v(42)
  add_pu1_pu1_o1 \U2/add1  (
    .i0(\U2/count1 ),
    .i1(1'b1),
    .o(\U2/count1_b ));  // ../../Timer_module.v(102)
  add_pu3_pu3_pu1_o3 \U2/add10_syn_5  (
    .i0({\U2/TimerH_b3_n32 ,\U2/TimerH_b3_n33 ,\U2/ROM [1]}),
    .i1(3'b010),
    .i2(1'b1),
    .o(\U2/TimerL_b6 [3:1]));  // ../../Timer_module.v(58)
  add_pu4_pu4_pu1_o4 \U2/add11_syn_5  (
    .i0({\U2/TimerH_b3_n23 ,\U2/TimerH_b3_n24 ,\U2/ROM [2:1]}),
    .i1(4'b0101),
    .i2(1'b1),
    .o({\U2/TimerL_b7 [4:2],open_n0}));  // ../../Timer_module.v(58)
  add_pu5_pu5_pu1_o5 \U2/add12_syn_5  (
    .i0({\U2/TimerH_b3_n14 ,\U2/TimerH_b3_n15 ,\U2/ROM [3:1]}),
    .i1(5'b01011),
    .i2(1'b1),
    .o({\U2/TimerL_b8 [5:3],open_n1,open_n2}));  // ../../Timer_module.v(58)
  add_pu6_pu6_pu1_o6 \U2/add13_syn_5  (
    .i0({\U2/TimerH_b3_n5 ,\U2/TimerH_b3_n6 ,\U2/ROM [4:1]}),
    .i1(6'b010111),
    .i2(1'b1),
    .o({\U2/TimerL_b9 [6:4],open_n3,open_n4,open_n5}));  // ../../Timer_module.v(58)
  add_pu7_pu7_pu1_o7 \U2/add14_syn_4  (
    .i0(\U2/ROM [7:1]),
    .i1(7'b0101111),
    .i2(1'b1),
    .o({\U2/TimerL_b10 [7:5],open_n6,open_n7,open_n8,open_n9}));  // ../../Timer_module.v(58)
  AL_DFF_0 \U2/count1_reg  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(\U2/count1_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/count1 ));  // ../../Timer_module.v(83)
  eq_w25 \U2/eq0  (
    .i0(\U2/Count ),
    .i1(25'b1011111010111100000111111),
    .o(\U2/CLK1_n4 ));  // ../../Timer_module.v(36)
  eq_w4 \U2/eq1  (
    .i0(\U2/TimerH ),
    .i1(4'b1010),
    .o(\U2/TimerH_b1_n1 ));  // ../../Timer_module.v(55)
  eq_w4 \U2/eq2  (
    .i0(\U2/TimerL ),
    .i1(4'b1010),
    .o(\U2/TimerH_b1_n2 ));  // ../../Timer_module.v(55)
  eq_w4 \U2/eq3  (
    .i0(\U2/TimerL ),
    .i1(4'b0000),
    .o(\U2/TimerH_b2_n ));  // ../../Timer_module.v(62)
  eq_w4 \U2/eq4  (
    .i0(\U2/TimerH ),
    .i1(4'b0000),
    .o(\U2/Block_Sel_Latched_n3 ));  // ../../Timer_module.v(64)
  eq_w4 \U2/eq5  (
    .i0(\U2/TimerL ),
    .i1(4'b0001),
    .o(\U2/Block_Sel_Latched_n4 ));  // ../../Timer_module.v(90)
  add_pu8_pu8_pu1_o8 \U2/lt0_syn_6  (
    .i0({1'b0,\U2/TimerH_b3_n4 ,\U2/TimerH_b3_n5 ,\U2/TimerH_b3_n6 ,\U2/ROM [4:1]}),
    .i1(8'b11010111),
    .i2(1'b1),
    .o({\U2/TimerH_b3_n ,open_n10,open_n11,open_n12,open_n13,open_n14,open_n15,open_n16}));  // ../../Timer_module.v(57)
  add_pu6_pu6_pu1_o6 \U2/lt10_syn_10  (
    .i0({1'b0,\U2/TimerH_b3_n22 ,\U2/TimerH_b3_n23 ,\U2/TimerH_b3_n24 ,\U2/ROM [2:1]}),
    .i1(6'b110101),
    .i2(1'b1),
    .o({\U2/TimerL_b3_n13 ,open_n17,open_n18,open_n19,open_n20,open_n21}));  // ../../Timer_module.v(58)
  add_pu8_pu8_pu1_o8 \U2/lt13_syn_6  (
    .i0({1'b0,\U2/ROM [7:1]}),
    .i1(8'b10101111),
    .i2(1'b1),
    .o({\U2/TimerL_b3_n31 ,open_n22,open_n23,open_n24,open_n25,open_n26,open_n27,open_n28}));  // ../../Timer_module.v(58)
  add_pu7_pu7_pu1_o7 \U2/lt1_syn_10  (
    .i0({1'b0,\U2/TimerH_b3_n13 ,\U2/TimerH_b3_n14 ,\U2/TimerH_b3_n15 ,\U2/ROM [3:1]}),
    .i1(7'b1101011),
    .i2(1'b1),
    .o({\U2/TimerH_b3_n1 ,open_n29,open_n30,open_n31,open_n32,open_n33,open_n34}));  // ../../Timer_module.v(57)
  lt_u4_u4 \U2/lt3_syn_3  (
    .ci(1'b0),
    .i0({\U2/TimerH_b3_n31 ,\U2/TimerH_b3_n32 ,\U2/TimerH_b3_n33 ,\U2/ROM [1]}),
    .i1(4'b0101),
    .o(\U2/TimerH_b3_n3 ));  // ../../Timer_module.v(57)
  add_pu5_pu5_pu1_o5 \U2/lt9_syn_10  (
    .i0({1'b0,\U2/TimerH_b3_n31 ,\U2/TimerH_b3_n32 ,\U2/TimerH_b3_n33 ,\U2/ROM [1]}),
    .i1(5'b11010),
    .i2(1'b1),
    .o({\U2/TimerL_b3_n7 ,open_n35,open_n36,open_n37,open_n38}));  // ../../Timer_module.v(58)
  binary_mux_s1_w1 \U2/mux0_syn_1  (
    .i0(\U2/Count_b1 [0]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [0]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_12  (
    .i0(\U2/Count_b1 [11]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [11]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_13  (
    .i0(\U2/Count_b1 [12]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [12]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_14  (
    .i0(\U2/Count_b1 [13]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [13]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_15  (
    .i0(\U2/Count_b1 [14]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [14]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_17  (
    .i0(\U2/Count_b1 [16]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [16]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_19  (
    .i0(\U2/Count_b1 [18]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [18]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_20  (
    .i0(\U2/Count_b1 [19]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [19]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_21  (
    .i0(\U2/Count_b1 [20]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [20]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_22  (
    .i0(\U2/Count_b1 [21]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [21]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_23  (
    .i0(\U2/Count_b1 [22]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [22]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_25  (
    .i0(\U2/Count_b1 [24]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [24]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux0_syn_7  (
    .i0(\U2/Count_b1 [6]),
    .i1(1'b0),
    .sel(\U2/CLK1_n4 ),
    .o(\U2/Count_b [6]));  // ../../Timer_module.v(36)
  binary_mux_s1_w1 \U2/mux1_syn_1  (
    .i0(\U2/TimerH_b5 [0]),
    .i1(1'b0),
    .sel(\U2/Block_Sel_Latched_n3 ),
    .o(\U2/TimerH_b4 [0]));  // ../../Timer_module.v(64)
  binary_mux_s1_w1 \U2/mux1_syn_2  (
    .i0(\U2/TimerH_b5 [1]),
    .i1(1'b0),
    .sel(\U2/Block_Sel_Latched_n3 ),
    .o(\U2/TimerH_b4 [1]));  // ../../Timer_module.v(64)
  binary_mux_s1_w1 \U2/mux1_syn_3  (
    .i0(\U2/TimerH_b5 [2]),
    .i1(1'b0),
    .sel(\U2/Block_Sel_Latched_n3 ),
    .o(\U2/TimerH_b4 [2]));  // ../../Timer_module.v(64)
  binary_mux_s1_w1 \U2/mux1_syn_4  (
    .i0(\U2/TimerH_b5 [3]),
    .i1(1'b0),
    .sel(\U2/Block_Sel_Latched_n3 ),
    .o(\U2/TimerH_b4 [3]));  // ../../Timer_module.v(64)
  binary_mux_s1_w1 \U2/mux2_syn_1  (
    .i0(\U2/TimerH [0]),
    .i1(\U2/TimerH_b4 [0]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerH_b2 [0]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux2_syn_2  (
    .i0(\U2/TimerH [1]),
    .i1(\U2/TimerH_b4 [1]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerH_b2 [1]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux2_syn_3  (
    .i0(\U2/TimerH [2]),
    .i1(\U2/TimerH_b4 [2]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerH_b2 [2]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux2_syn_4  (
    .i0(\U2/TimerH [3]),
    .i1(\U2/TimerH_b4 [3]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerH_b2 [3]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux3_syn_1  (
    .i0(\U2/TimerL_b4 [0]),
    .i1(\U2/TimerL_b5 [0]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerL_b2 [0]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux3_syn_2  (
    .i0(\U2/TimerL_b4 [1]),
    .i1(1'b0),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerL_b2 [1]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux3_syn_3  (
    .i0(\U2/TimerL_b4 [2]),
    .i1(1'b0),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerL_b2 [2]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux3_syn_4  (
    .i0(\U2/TimerL_b4 [3]),
    .i1(\U2/TimerL_b5 [0]),
    .sel(\U2/TimerH_b2_n ),
    .o(\U2/TimerL_b2 [3]));  // ../../Timer_module.v(62)
  binary_mux_s1_w1 \U2/mux4_syn_1  (
    .i0(\U2/TimerH_b2 [0]),
    .i1(\U2/TimerH_b3 [0]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerH_b1 [0]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux4_syn_2  (
    .i0(\U2/TimerH_b2 [1]),
    .i1(\U2/TimerH_b3 [1]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerH_b1 [1]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux4_syn_3  (
    .i0(\U2/TimerH_b2 [2]),
    .i1(\U2/TimerH_b3 [2]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerH_b1 [2]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux4_syn_4  (
    .i0(\U2/TimerH_b2 [3]),
    .i1(\U2/TimerH_b3 [3]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerH_b1 [3]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux5_syn_1  (
    .i0(\U2/TimerL_b2 [0]),
    .i1(1'b1),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerL_b1 [0]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux5_syn_2  (
    .i0(\U2/TimerL_b2 [1]),
    .i1(\U2/TimerL_b3 [1]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerL_b1 [1]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux5_syn_3  (
    .i0(\U2/TimerL_b2 [2]),
    .i1(\U2/TimerL_b3 [2]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerL_b1 [2]));  // ../../Timer_module.v(55)
  binary_mux_s1_w1 \U2/mux5_syn_4  (
    .i0(\U2/TimerL_b2 [3]),
    .i1(\U2/TimerL_b3 [3]),
    .sel(\U2/TimerH_b1_n ),
    .o(\U2/TimerL_b1 [3]));  // ../../Timer_module.v(55)
  AL_DFF_X \U2/reg0_syn_10  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [8]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_11  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [9]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_12  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [10]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_13  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [11]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_14  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [12]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_15  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [13]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_16  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [14]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_17  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [15]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_18  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [16]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_19  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [17]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_2  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [0]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_20  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [18]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_21  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [19]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_22  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [20]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_23  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [21]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_24  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [22]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_25  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [23]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [23]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_26  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [24]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [24]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_3  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [1]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_4  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [2]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_5  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [3]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_6  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [4]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_7  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [5]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_8  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [6]));  // ../../Timer_module.v(34)
  AL_DFF_X \U2/reg0_syn_9  (
    .ar(~\U1/Timer_Start ),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/Count_b1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/Count [7]));  // ../../Timer_module.v(34)
  AL_LATCH_0 \U2/reg1_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [1]));  // ../../Timer_module.v(24)
  AL_LATCH_0 \U2/reg1_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [2]));  // ../../Timer_module.v(24)
  AL_LATCH_1 \U2/reg1_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [3]));  // ../../Timer_module.v(24)
  AL_LATCH_0 \U2/reg1_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [4]));  // ../../Timer_module.v(24)
  AL_LATCH_0 \U2/reg1_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [5]));  // ../../Timer_module.v(24)
  AL_LATCH_0 \U2/reg1_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [6]));  // ../../Timer_module.v(24)
  AL_LATCH_0 \U2/reg1_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(\U2/Change_Time [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/ROM [7]));  // ../../Timer_module.v(24)
  AL_DFF_X \U2/reg2_syn_3  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [1]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerH [1]));  // ../../Timer_module.v(47)
  AL_DFF_X \U2/reg2_syn_5  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [3]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerH [3]));  // ../../Timer_module.v(47)
  AL_DFF_0 \U2/reg2_syn_6  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [0]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerH [0]));  // ../../Timer_module.v(47)
  AL_DFF_0 \U2/reg2_syn_7  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerH_b1 [2]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerH [2]));  // ../../Timer_module.v(47)
  AL_DFF_X \U2/reg3_syn_3  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [1]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerL [1]));  // ../../Timer_module.v(47)
  AL_DFF_X \U2/reg3_syn_5  (
    .ar(1'b0),
    .as(~RSTn),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [3]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerL [3]));  // ../../Timer_module.v(47)
  AL_DFF_0 \U2/reg3_syn_6  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [0]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerL [0]));  // ../../Timer_module.v(47)
  AL_DFF_0 \U2/reg3_syn_7  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(\U2/CLK1 ),
    .d(\U2/TimerL_b1 [2]),
    .en(\U1/Timer_Start ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U2/TimerL [2]));  // ../../Timer_module.v(47)
  add_pu4_mu4_o4 \U2/sub0  (
    .i0(\U2/TimerH ),
    .i1(4'b0001),
    .o(\U2/TimerH_b5 ));  // ../../Timer_module.v(71)
  add_pu4_mu4_o4 \U2/sub1  (
    .i0(\U2/TimerL ),
    .i1(4'b0001),
    .o(\U2/TimerL_b4 ));  // ../../Timer_module.v(76)
  AL_MUX \U2/u25  (
    .i0(1'b0),
    .i1(\U2/count1_b ),
    .sel(\U2/u25_syn_3 ),
    .o(\U2/count1_n ));  // ../../Timer_module.v(90)
  and \U2/u25_syn_2  (\U2/u25_syn_3 , \U2/Block_Sel_Latched_n2 , \U2/Buzzer_TimeOver_n1 );  // ../../Timer_module.v(90)
  not \U3/Count_b1_n_syn_1  (\U3/Count_b1_n_syn_2 , \U3/Count_b1_n );
  or \U3/Count_b_i1  (\U3/Count_b_n2 , \U3/Count_b_n3 , \U3/Count_b_n4 );  // ../../Buzzer_module.v(35)
  or \U3/Pulse_x_b_i  (\U3/Pulse_x_b_n , \U1/Buzzer_Enable , \U2/count1 );  // ../../Buzzer_module.v(19)
  not \U3/W_buzzer_i2  (\U3/W_buzzer_n2 , Buzzer_Out);  // ../../Buzzer_module.v(40)
  AL_DFF_X \U3/W_buzzer_reg  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/W_buzzer_n2 ),
    .en(\U3/Count_b1_n ),
    .sr(1'b0),
    .ss(~\U3/Count_b_n2 ),
    .q(Buzzer_Out));  // ../../Buzzer_module.v(33)
  add_pu23_pu23_o23 \U3/add0  (
    .i0(\U3/Count ),
    .i1(23'b00000000000000000000001),
    .o(\U3/Count_b2 ));  // ../../Buzzer_module.v(43)
  eq_w3 \U3/eq0  (
    .i0({\U3/Pulse_x [12],\U3/Pulse_x [8],\U3/Pulse_x [10]}),
    .i1(3'b101),
    .o(\U3/Count_b_n3 ));  // ../../Buzzer_module.v(35)
  eq_w3 \U3/eq1  (
    .i0({\U3/Pulse_x [12],\U3/Pulse_x [8],\U3/Pulse_x [10]}),
    .i1(3'b011),
    .o(\U3/Count_b_n4 ));  // ../../Buzzer_module.v(35)
  eq_w23 \U3/eq2  (
    .i0(\U3/Count ),
    .i1({6'b000000,\U3/Pulse_x [12],\U3/Pulse_x [8],\U3/Pulse_x [10],\U3/Pulse_x [12],\U3/Pulse_x [12],1'b0,\U3/Pulse_x [10],1'b0,\U3/Pulse_x [8],\U3/Pulse_x [10],1'b0,\U3/Pulse_x [10],\U3/Pulse_x [12],\U3/Pulse_x [10],\U3/Pulse_x [8],\U3/Pulse_x [10],\U3/Pulse_x [10]}),
    .o(\U3/Count_b1_n ));  // ../../Buzzer_module.v(37)
  and \U3/mux1_syn_19  (\U3/mux1_syn_20 , \U3/Pulse_x_b_n , \U1/Buzzer_Enable_syn_2 );  // ../../Buzzer_module.v(19)
  and \U3/mux3_syn_101  (\U3/mux3_syn_102 , \U3/Count_b_n2 , \U3/Count_b1_n_syn_2 );  // ../../Buzzer_module.v(35)
  AL_DFF_X \U3/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [8]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [8]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_11  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [9]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [9]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [10]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [10]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_13  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [11]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [11]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [12]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [12]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [13]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [13]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [14]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [14]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [15]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [15]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_18  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [16]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [16]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_19  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [17]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [17]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [0]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [0]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_20  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [18]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [18]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_21  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [19]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [19]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_22  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [20]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [20]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_23  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [21]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [21]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_24  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [22]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [22]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [1]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [1]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [2]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [2]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [3]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [3]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [4]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [4]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [5]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [5]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [6]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [6]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg0_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Count_b2 [7]),
    .en(1'b1),
    .sr(~\U3/mux3_syn_102 ),
    .ss(1'b0),
    .q(\U3/Count [7]));  // ../../Buzzer_module.v(33)
  AL_DFF_X \U3/reg1_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U2/count1 ),
    .en(1'b1),
    .sr(~\U3/mux1_syn_20 ),
    .ss(1'b0),
    .q(\U3/Pulse_x [8]));  // ../../Buzzer_module.v(17)
  AL_DFF_X \U3/reg1_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U3/Pulse_x_b_n ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U3/Pulse_x [10]));  // ../../Buzzer_module.v(17)
  AL_DFF_X \U3/reg1_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U1/Buzzer_Enable ),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U3/Pulse_x [12]));  // ../../Buzzer_module.v(17)
  or \U4/SingleNum_b_i1  (\U4/SingleNum_b_n4 , \U4/SingleNum_b_n2 , \U4/SingleNum_b_n5 );  // ../../Digitron_NumDisplay.v(58)
  or \U4/SingleNum_b_i2  (\U4/SingleNum_b_n5 , \U4/SingleNum_b_n1 , \U4/SingleNum_b_n );  // ../../Digitron_NumDisplay.v(58)
  not \U4/W_DigitronCS_Out[1]_syn_1  (\U4/W_DigitronCS_Out[1]_syn_2 , DigitronCS_Out[1]);  // ../../Digitron_NumDisplay.v(36)
  add_pu2_pu2_o2 \U4/add0  (
    .i0(\U4/cnt ),
    .i1(2'b01),
    .o(\U4/cnt_b2 ));  // ../../Digitron_NumDisplay.v(29)
  add_pu16_pu16_o16 \U4/add1  (
    .i0(\U4/Count ),
    .i1(16'b0000000000000001),
    .o(\U4/Count_b1 ));  // ../../Digitron_NumDisplay.v(33)
  eq_w16 \U4/eq0  (
    .i0(\U4/Count ),
    .i1(16'b1100001101010000),
    .o(\U4/Count_b_n ));  // ../../Digitron_NumDisplay.v(23)
  eq_w4 \U4/eq1  (
    .i0(DigitronCS_Out),
    .i1(4'b1110),
    .o(\U4/SingleNum_b_n ));  // ../../Digitron_NumDisplay.v(59)
  eq_w4 \U4/eq2  (
    .i0(DigitronCS_Out),
    .i1(4'b1101),
    .o(\U4/SingleNum_b_n1 ));  // ../../Digitron_NumDisplay.v(60)
  eq_w4 \U4/eq3  (
    .i0(DigitronCS_Out),
    .i1(4'b1011),
    .o(\U4/SingleNum_b_n2 ));  // ../../Digitron_NumDisplay.v(61)
  eq_w2 \U4/eq4  (
    .i0(\U4/cnt ),
    .i1(2'b10),
    .o(\U4/cnt_b1_n ));  // ../../Digitron_NumDisplay.v(26)
  AL_MUX \U4/mux0  (
    .i0(1'b1),
    .i1(1'b0),
    .sel(\U4/mux0_syn_3 ),
    .o(\U4/W_DigitronCS_Out_n ));  // ../../Digitron_NumDisplay.v(40)
  and \U4/mux0_syn_2  (\U4/mux0_syn_3 , \U4/cnt [0], \U4/cnt [1]);  // ../../Digitron_NumDisplay.v(40)
  binary_mux_s4_w1 \U4/mux2_syn_1  (
    .i0(1'b1),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b1),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[0]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_2  (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b0),
    .i6(1'b0),
    .i7(1'b1),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[1]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_3  (
    .i0(1'b1),
    .i1(1'b1),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b0),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b1),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[2]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_4  (
    .i0(1'b1),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b0),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b0),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[3]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_5  (
    .i0(1'b1),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b0),
    .i4(1'b0),
    .i5(1'b0),
    .i6(1'b1),
    .i7(1'b0),
    .i8(1'b1),
    .i9(1'b0),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[4]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_6  (
    .i0(1'b1),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b0),
    .i3(1'b0),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b0),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[5]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s4_w1 \U4/mux2_syn_7  (
    .i0(1'b0),
    .i1(1'b0),
    .i10(1'b0),
    .i11(1'b0),
    .i12(1'b0),
    .i13(1'b0),
    .i14(1'b0),
    .i15(1'b0),
    .i2(1'b1),
    .i3(1'b1),
    .i4(1'b1),
    .i5(1'b1),
    .i6(1'b1),
    .i7(1'b0),
    .i8(1'b1),
    .i9(1'b1),
    .sel(\U4/sel1_syn_2 ),
    .o(Digitron_Out[6]));  // ../../Digitron_NumDisplay.v(64)
  binary_mux_s1_w1 \U4/mux3_syn_1  (
    .i0(\U4/cnt_b2 [0]),
    .i1(1'b0),
    .sel(\U4/cnt_b1_n ),
    .o(\U4/cnt_b1 [0]));  // ../../Digitron_NumDisplay.v(26)
  binary_mux_s1_w1 \U4/mux3_syn_2  (
    .i0(\U4/cnt_b2 [1]),
    .i1(1'b0),
    .sel(\U4/cnt_b1_n ),
    .o(\U4/cnt_b1 [1]));  // ../../Digitron_NumDisplay.v(26)
  binary_mux_s2_w1 \U4/mux4_syn_1  (
    .i0(1'b0),
    .i1(1'b1),
    .i2(1'b1),
    .i3(1'b0),
    .sel(\U4/cnt ),
    .o(\U4/W_DigitronCS_Out_b [0]));  // ../../Digitron_NumDisplay.v(40)
  binary_mux_s2_w1 \U4/mux4_syn_2  (
    .i0(1'b1),
    .i1(1'b0),
    .i2(1'b1),
    .i3(1'b0),
    .sel(\U4/cnt ),
    .o(\U4/W_DigitronCS_Out_b [1]));  // ../../Digitron_NumDisplay.v(40)
  binary_mux_s2_w1 \U4/mux4_syn_3  (
    .i0(1'b1),
    .i1(1'b1),
    .i2(1'b0),
    .i3(1'b0),
    .sel(\U4/cnt ),
    .o(\U4/W_DigitronCS_Out_b [2]));  // ../../Digitron_NumDisplay.v(40)
  binary_mux_s1_w1 \U4/mux5_syn_1  (
    .i0(\U2/TimerH [0]),
    .i1(\U7/TimerH_Set [0]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b2 [0]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_2  (
    .i0(\U2/TimerH [1]),
    .i1(\U7/TimerH_Set [1]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b2 [1]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_3  (
    .i0(\U2/TimerH [2]),
    .i1(\U7/TimerH_Set [2]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b2 [2]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_4  (
    .i0(\U2/TimerH [3]),
    .i1(\U7/TimerH_Set [3]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b2 [3]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_5  (
    .i0(\U2/TimerL [0]),
    .i1(1'b1),
    .sel(Set_Time),
    .o(\U4/SingleNum_b1 [0]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_6  (
    .i0(\U2/TimerL [1]),
    .i1(\U7/TimerL_Set [1]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b1 [1]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_7  (
    .i0(\U2/TimerL [2]),
    .i1(\U7/TimerL_Set [2]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b1 [2]));  // ../../Digitron_NumDisplay.v(59)
  binary_mux_s1_w1 \U4/mux5_syn_8  (
    .i0(\U2/TimerL [3]),
    .i1(\U7/TimerL_Set [3]),
    .sel(Set_Time),
    .o(\U4/SingleNum_b1 [3]));  // ../../Digitron_NumDisplay.v(59)
  AL_DFF_X \U4/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [8]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [8]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_11  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [9]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [9]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [10]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_13  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [11]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [12]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [13]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [14]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [14]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [15]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [15]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [0]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [0]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [1]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [2]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [3]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [4]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [4]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [5]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [6]),
    .en(1'b1),
    .sr(\U4/Count_b_n ),
    .ss(1'b0),
    .q(\U4/Count [6]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg0_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/Count_b1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/Count [7]));  // ../../Digitron_NumDisplay.v(21)
  AL_LATCH_X \U4/reg1_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/sel1_syn_7 [0]),
    .en(1'b1),
    .sr(~\U4/SingleNum_b_n4 ),
    .ss(1'b0),
    .q(\U4/SingleNum [0]));  // ../../Digitron_NumDisplay.v(57)
  AL_LATCH_X \U4/reg1_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/sel1_syn_7 [1]),
    .en(1'b1),
    .sr(~\U4/SingleNum_b_n4 ),
    .ss(1'b0),
    .q(\U4/SingleNum [1]));  // ../../Digitron_NumDisplay.v(57)
  AL_LATCH_X \U4/reg1_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/sel1_syn_7 [2]),
    .en(1'b1),
    .sr(~\U4/SingleNum_b_n4 ),
    .ss(1'b0),
    .q(\U4/SingleNum [2]));  // ../../Digitron_NumDisplay.v(57)
  AL_LATCH_X \U4/reg1_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/SingleNum_b_n4 ),
    .d(\U4/sel1_syn_7 [3]),
    .en(1'b1),
    .sr(~\U4/SingleNum_b_n4 ),
    .ss(1'b0),
    .q(\U4/SingleNum [3]));  // ../../Digitron_NumDisplay.v(57)
  AL_LATCH_X \U4/reg2_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(DigitronCS_Out[0]));  // ../../Digitron_NumDisplay.v(38)
  AL_LATCH_X \U4/reg2_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(DigitronCS_Out[1]));  // ../../Digitron_NumDisplay.v(38)
  AL_LATCH_X \U4/reg2_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(\U4/W_DigitronCS_Out_b [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(DigitronCS_Out[2]));  // ../../Digitron_NumDisplay.v(38)
  AL_LATCH_X \U4/reg2_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U4/W_DigitronCS_Out_n ),
    .d(1'b1),
    .en(1'b1),
    .sr(\U4/mux0_syn_3 ),
    .ss(1'b0),
    .q(DigitronCS_Out[3]));  // ../../Digitron_NumDisplay.v(38)
  AL_DFF_X \U4/reg3_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/cnt_b1 [0]),
    .en(\U4/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/cnt [0]));  // ../../Digitron_NumDisplay.v(21)
  AL_DFF_X \U4/reg3_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U4/cnt_b1 [1]),
    .en(\U4/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U4/cnt [1]));  // ../../Digitron_NumDisplay.v(21)
  binary_mux_s1_w1 \U4/sel1_syn_16  (
    .i0(\U4/SingleNum [0]),
    .i1(\U4/sel1_syn_7 [0]),
    .sel(\U4/SingleNum_b_n4 ),
    .o(\U4/sel1_syn_2 [0]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_17  (
    .i0(\U4/SingleNum [1]),
    .i1(\U4/sel1_syn_7 [1]),
    .sel(\U4/SingleNum_b_n4 ),
    .o(\U4/sel1_syn_2 [1]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_18  (
    .i0(\U4/SingleNum [2]),
    .i1(\U4/sel1_syn_7 [2]),
    .sel(\U4/SingleNum_b_n4 ),
    .o(\U4/sel1_syn_2 [2]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_19  (
    .i0(\U4/SingleNum [3]),
    .i1(\U4/sel1_syn_7 [3]),
    .sel(\U4/SingleNum_b_n4 ),
    .o(\U4/sel1_syn_2 [3]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_20  (
    .i0(\U1/Player_Number [0]),
    .i1(\U4/sel1_syn_12 [0]),
    .sel(DigitronCS_Out[2]),
    .o(\U4/sel1_syn_7 [0]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_21  (
    .i0(\U1/Player_Number [1]),
    .i1(\U4/sel1_syn_12 [1]),
    .sel(DigitronCS_Out[2]),
    .o(\U4/sel1_syn_7 [1]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_22  (
    .i0(\U1/Player_Number [2]),
    .i1(\U4/sel1_syn_12 [2]),
    .sel(DigitronCS_Out[2]),
    .o(\U4/sel1_syn_7 [2]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_23  (
    .i0(\U1/Player_Number [3]),
    .i1(\U4/sel1_syn_12 [3]),
    .sel(DigitronCS_Out[2]),
    .o(\U4/sel1_syn_7 [3]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_24  (
    .i0(\U4/SingleNum_b1 [0]),
    .i1(\U4/SingleNum_b2 [0]),
    .sel(\U4/W_DigitronCS_Out[1]_syn_2 ),
    .o(\U4/sel1_syn_12 [0]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_25  (
    .i0(\U4/SingleNum_b1 [1]),
    .i1(\U4/SingleNum_b2 [1]),
    .sel(\U4/W_DigitronCS_Out[1]_syn_2 ),
    .o(\U4/sel1_syn_12 [1]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_26  (
    .i0(\U4/SingleNum_b1 [2]),
    .i1(\U4/SingleNum_b2 [2]),
    .sel(\U4/W_DigitronCS_Out[1]_syn_2 ),
    .o(\U4/sel1_syn_12 [2]));  // ../../Digitron_NumDisplay.v(58)
  binary_mux_s1_w1 \U4/sel1_syn_27  (
    .i0(\U4/SingleNum_b1 [3]),
    .i1(\U4/SingleNum_b2 [3]),
    .sel(\U4/W_DigitronCS_Out[1]_syn_2 ),
    .o(\U4/sel1_syn_12 [3]));  // ../../Digitron_NumDisplay.v(58)
  add_pu20_pu20_o20 \U5/add0  (
    .i0(\U5/cnt ),
    .i1(20'b00000000000000000001),
    .o(\U5/cnt_b1 ));  // ../../key_filter.v(17)
  eq_w20 \U5/eq0  (
    .i0(\U5/cnt ),
    .i1(20'b11110100001000111111),
    .o(\U5/cnt_b_n ));  // ../../key_filter.v(14)
  not \U5/key_deb_b2[0]_syn_1  (\U5/key_deb_b2[0]_syn_2 , \U5/key_deb_b2 [0]);
  not \U5/key_deb_b2[1]_syn_1  (\U5/key_deb_b2[1]_syn_2 , \U5/key_deb_b2 [1]);
  not \U5/key_deb_b2[2]_syn_1  (\U5/key_deb_b2[2]_syn_2 , \U5/key_deb_b2 [2]);
  not \U5/key_deb_b2[3]_syn_1  (\U5/key_deb_b2[3]_syn_2 , \U5/key_deb_b2 [3]);
  and \U5/key_deb_b2_i  (\U5/key_deb_b2 [0], \U5/key_deb_b4 [0], \U5/key_deb_b5 [0]);  // ../../key_filter.v(36)
  and \U5/key_deb_b2_i1  (\U5/key_deb_b2 [1], \U5/key_deb_b4 [1], \U5/key_deb_b5 [1]);  // ../../key_filter.v(36)
  and \U5/key_deb_b2_i2  (\U5/key_deb_b2 [2], \U5/key_deb_b4 [2], \U5/key_deb_b5 [2]);  // ../../key_filter.v(36)
  and \U5/key_deb_b2_i3  (\U5/key_deb_b2 [3], \U5/key_deb_b4 [3], \U5/key_deb_b5 [3]);  // ../../key_filter.v(36)
  not \U5/key_deb_b4_i  (\U5/key_deb_b4 [0], \U5/key_reg0 [0]);  // ../../key_filter.v(36)
  not \U5/key_deb_b4_i1  (\U5/key_deb_b4 [1], \U5/key_reg0 [1]);  // ../../key_filter.v(36)
  not \U5/key_deb_b4_i2  (\U5/key_deb_b4 [2], \U5/key_reg0 [2]);  // ../../key_filter.v(36)
  not \U5/key_deb_b4_i3  (\U5/key_deb_b4 [3], \U5/key_reg0 [3]);  // ../../key_filter.v(36)
  not \U5/key_deb_b5_i  (\U5/key_deb_b5 [0], \U5/key_reg1 [0]);  // ../../key_filter.v(36)
  not \U5/key_deb_b5_i1  (\U5/key_deb_b5 [1], \U5/key_reg1 [1]);  // ../../key_filter.v(36)
  not \U5/key_deb_b5_i2  (\U5/key_deb_b5 [2], \U5/key_reg1 [2]);  // ../../key_filter.v(36)
  not \U5/key_deb_b5_i3  (\U5/key_deb_b5 [3], \U5/key_reg1 [3]);  // ../../key_filter.v(36)
  AL_DFF_0 \U5/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [8]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_11  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [9]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [9]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [10]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_13  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [11]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_14  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [12]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_15  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [13]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_16  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [14]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [14]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_17  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [15]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_18  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [16]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [16]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_19  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [17]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [17]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [0]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [0]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_20  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [18]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [18]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_21  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [19]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [19]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [1]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [2]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [3]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_6  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [4]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_7  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [5]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_8  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [6]),
    .en(1'b1),
    .sr(\U5/cnt_b_n ),
    .ss(1'b0),
    .q(\U5/cnt [6]));  // ../../key_filter.v(12)
  AL_DFF_0 \U5/reg0_syn_9  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/cnt_b1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/cnt [7]));  // ../../key_filter.v(12)
  AL_DFF_X \U5/reg1_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(Key_In[0]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg0 [0]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg1_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(Key_In[1]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg0 [1]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg1_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(Key_In[2]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg0 [2]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg1_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(Key_In[3]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg0 [3]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg2_syn_2  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/key_reg0 [0]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg1 [0]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg2_syn_3  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/key_reg0 [1]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg1 [1]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg2_syn_4  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/key_reg0 [2]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg1 [2]));  // ../../key_filter.v(24)
  AL_DFF_X \U5/reg2_syn_5  (
    .ar(1'b0),
    .as(1'b0),
    .clk(CLK),
    .d(\U5/key_reg0 [3]),
    .en(\U5/cnt_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U5/key_reg1 [3]));  // ../../key_filter.v(24)
  add_pu23_pu23_o23 \U6/add0  (
    .i0(\U6/Count ),
    .i1(23'b00000000000000000000001),
    .o(\U6/Count_b1 ));  // ../../../../1 run_led/run_led/led8_module.v(33)
  eq_w23 \U6/eq0  (
    .i0(\U6/Count ),
    .i1(23'b10011000100101100111111),
    .o(\U6/Count_b_n ));  // ../../../../1 run_led/run_led/led8_module.v(21)
  eq_w4 \U6/eq1  (
    .i0(LED_Run),
    .i1(4'b0000),
    .o(\U6/rLED_Out_b1_n ));  // ../../../../1 run_led/run_led/led8_module.v(24)
  binary_mux_s1_w1 \U6/mux0_syn_1  (
    .i0(\U6/Count_b1 [0]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [0]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_10  (
    .i0(\U6/Count_b1 [9]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [9]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_12  (
    .i0(\U6/Count_b1 [11]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [11]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_15  (
    .i0(\U6/Count_b1 [14]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [14]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_19  (
    .i0(\U6/Count_b1 [18]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [18]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_20  (
    .i0(\U6/Count_b1 [19]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [19]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_23  (
    .i0(\U6/Count_b1 [22]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [22]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_7  (
    .i0(\U6/Count_b1 [6]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [6]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux0_syn_9  (
    .i0(\U6/Count_b1 [8]),
    .i1(1'b0),
    .sel(\U6/Count_b_n ),
    .o(\U6/Count_b [8]));  // ../../../../1 run_led/run_led/led8_module.v(21)
  binary_mux_s1_w1 \U6/mux2_syn_1  (
    .i0(LED_Run[1]),
    .i1(1'b1),
    .sel(\U6/rLED_Out_b1_n ),
    .o(\U6/rLED_Out_b1 [0]));  // ../../../../1 run_led/run_led/led8_module.v(24)
  AL_DFF_X \U6/reg0_syn_10  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [8]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [8]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_11  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [9]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [9]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_12  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [10]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [10]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_13  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [11]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [11]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_14  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [12]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [12]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_15  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [13]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [13]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_16  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [14]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [14]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_17  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [15]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [15]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_18  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [16]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [16]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_19  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [17]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [17]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [0]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [0]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_20  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [18]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [18]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_21  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [19]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [19]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_22  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [20]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [20]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_23  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [21]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [21]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_24  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [22]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [22]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_3  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [1]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [1]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_4  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [2]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [2]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_5  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [3]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [3]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_6  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [4]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [4]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_7  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [5]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [5]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_8  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b [6]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [6]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg0_syn_9  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/Count_b1 [7]),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U6/Count [7]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg1_syn_2  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(\U6/rLED_Out_b1 [0]),
    .en(\U6/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Run[0]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg1_syn_3  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(LED_Run[2]),
    .en(\U6/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Run[1]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg1_syn_4  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(LED_Run[3]),
    .en(\U6/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Run[2]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  AL_DFF_X \U6/reg1_syn_5  (
    .ar(~RSTn),
    .as(1'b0),
    .clk(CLK),
    .d(LED_Run[0]),
    .en(\U6/Count_b_n ),
    .sr(1'b0),
    .ss(1'b0),
    .q(LED_Run[3]));  // ../../../../1 run_led/run_led/led8_module.v(16)
  not \U7/TimerH_Set_i  (\U7/TimerH_Set [0], \U7/TimerH_Set_n );  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i11  (
    .i0(\U7/TimerH_Set_n19 ),
    .i1(\U7/TimerL_Set_b2 [5]),
    .sel(\U7/TimerH_Set [2]),
    .o(\U7/TimerH_Set_n11 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i12  (
    .i0(\U7/TimerH_Set_n20 ),
    .i1(\U7/TimerL_Set_b2 [4]),
    .sel(\U7/TimerH_Set [2]),
    .o(\U7/TimerH_Set_n12 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i13  (
    .i0(\U7/temp_time [3]),
    .i1(\U7/TimerL_Set_b2 [3]),
    .sel(\U7/TimerH_Set [2]),
    .o(\U7/TimerH_Set_n13 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i18  (
    .i0(\U7/temp_time [6]),
    .i1(\U7/TimerL_Set_b3 [6]),
    .sel(\U7/TimerH_Set [3]),
    .o(\U7/TimerH_Set_n18 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i19  (
    .i0(\U7/temp_time [5]),
    .i1(\U7/TimerL_Set_b3 [5]),
    .sel(\U7/TimerH_Set [3]),
    .o(\U7/TimerH_Set_n19 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i20  (
    .i0(\U7/temp_time [4]),
    .i1(\U7/TimerL_Set_b3 [4]),
    .sel(\U7/TimerH_Set [3]),
    .o(\U7/TimerH_Set_n20 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i4  (
    .i0(\U7/TimerH_Set_n12 ),
    .i1(\U7/TimerH_Set_b [4]),
    .sel(\U7/TimerH_Set [1]),
    .o(\U7/TimerH_Set_n4 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i5  (
    .i0(\U7/TimerH_Set_n13 ),
    .i1(\U7/TimerH_Set_b [3]),
    .sel(\U7/TimerH_Set [1]),
    .o(\U7/TimerH_Set_n5 ));  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerH_Set_i6  (
    .i0(\U7/temp_time [2]),
    .i1(\U7/TimerH_Set_b [2]),
    .sel(\U7/TimerH_Set [1]),
    .o(\U7/TimerH_Set_n6 ));  // ../../countdown_module.v(48)
  not \U7/TimerH_Set_i70  (\U7/TimerH_Set [1], \U7/TimerL_Set_n7 );  // ../../countdown_module.v(48)
  not \U7/TimerH_Set_i71  (\U7/TimerH_Set [2], \U7/TimerL_Set_n10 );  // ../../countdown_module.v(48)
  not \U7/TimerH_Set_i72  (\U7/TimerH_Set [3], \U7/TimerL_Set_n13 );  // ../../countdown_module.v(48)
  AL_MUX \U7/TimerL_Set_i18  (
    .i0(\U7/temp_time [1]),
    .i1(\U7/TimerL_Set_b [1]),
    .sel(\U7/TimerL_Set_n1 ),
    .o(\U7/TimerL_Set [1]));  // ../../countdown_module.v(49)
  AL_MUX \U7/TimerL_Set_i19  (
    .i0(\U7/TimerH_Set_n6 ),
    .i1(\U7/TimerL_Set_b [2]),
    .sel(\U7/TimerL_Set_n1 ),
    .o(\U7/TimerL_Set [2]));  // ../../countdown_module.v(49)
  not \U7/TimerL_Set_i2  (\U7/TimerL_Set_n1 , \U7/TimerL_Set_n4 );  // ../../countdown_module.v(49)
  AL_MUX \U7/TimerL_Set_i20  (
    .i0(\U7/TimerH_Set_n5 ),
    .i1(\U7/TimerL_Set_b [3]),
    .sel(\U7/TimerL_Set_n1 ),
    .o(\U7/TimerL_Set [3]));  // ../../countdown_module.v(49)
  add_pu7_pu7_o7 \U7/add0_syn_4  (
    .i0(\U7/Change_Time_b [7:1]),
    .i1({4'b0000,\U7/TimerL_Set [3:1]}),
    .o(\U2/Change_Time [7:1]));  // ../../countdown_module.v(51)
  add_pu5_pu5_pu1_o5 \U7/add11_syn_5  (
    .i0({\U7/TimerH_Set_n19 ,\U7/TimerH_Set_n20 ,\U7/temp_time [3:1]}),
    .i1(5'b01011),
    .i2(1'b1),
    .o({\U7/TimerL_Set_b2 [5:3],open_n39,open_n40}));  // ../../countdown_module.v(49)
  add_pu6_pu6_pu1_o6 \U7/add12_syn_5  (
    .i0(\U7/temp_time [6:1]),
    .i1(6'b010111),
    .i2(1'b1),
    .o({\U7/TimerL_Set_b3 [6:4],open_n41,open_n42,open_n43}));  // ../../countdown_module.v(49)
  add_pu4_pu4_pu1_o4 \U7/add1_syn_5  (
    .i0({\U7/TimerH_Set_n12 ,\U7/TimerH_Set_n13 ,\U7/temp_time [2:1]}),
    .i1(4'b0101),
    .i2(1'b1),
    .o({\U7/TimerH_Set_b [4:2],open_n44}));  // ../../countdown_module.v(48)
  add_pu3_pu3_pu1_o3 \U7/add9_syn_5  (
    .i0({\U7/TimerH_Set_n5 ,\U7/TimerH_Set_n6 ,\U7/temp_time [1]}),
    .i1(3'b010),
    .i2(1'b1),
    .o(\U7/TimerL_Set_b [3:1]));  // ../../countdown_module.v(49)
  lt_u4_u4 \U7/lt0_syn_2  (
    .ci(1'b0),
    .i0({\U7/TimerH_Set_n4 ,\U7/TimerH_Set_n5 ,\U7/TimerH_Set_n6 ,\U7/temp_time [1]}),
    .i1(4'b0101),
    .o(\U7/TimerH_Set_n ));  // ../../countdown_module.v(48)
  add_pu6_pu6_pu1_o6 \U7/lt10_syn_8  (
    .i0({1'b0,\U7/TimerH_Set_n11 ,\U7/TimerH_Set_n12 ,\U7/TimerH_Set_n13 ,\U7/temp_time [2:1]}),
    .i1(6'b110101),
    .i2(1'b1),
    .o({\U7/TimerL_Set_n7 ,open_n45,open_n46,open_n47,open_n48,open_n49}));  // ../../countdown_module.v(49)
  add_pu7_pu7_pu1_o7 \U7/lt11_syn_8  (
    .i0({1'b0,\U7/TimerH_Set_n18 ,\U7/TimerH_Set_n19 ,\U7/TimerH_Set_n20 ,\U7/temp_time [3:1]}),
    .i1(7'b1101011),
    .i2(1'b1),
    .o({\U7/TimerL_Set_n10 ,open_n50,open_n51,open_n52,open_n53,open_n54,open_n55}));  // ../../countdown_module.v(49)
  add_pu7_pu7_pu1_o7 \U7/lt12_syn_10  (
    .i0({1'b0,\U7/temp_time [6:1]}),
    .i1(7'b1010111),
    .i2(1'b1),
    .o({\U7/TimerL_Set_n13 ,open_n56,open_n57,open_n58,open_n59,open_n60,open_n61}));  // ../../countdown_module.v(49)
  add_pu5_pu5_pu1_o5 \U7/lt9_syn_8  (
    .i0({1'b0,\U7/TimerH_Set_n4 ,\U7/TimerH_Set_n5 ,\U7/TimerH_Set_n6 ,\U7/temp_time [1]}),
    .i1(5'b11010),
    .i2(1'b1),
    .o({\U7/TimerL_Set_n4 ,open_n62,open_n63,open_n64,open_n65}));  // ../../countdown_module.v(49)
  mult_u4_u3_o7 \U7/mult0  (
    .i0(\U7/TimerH_Set ),
    .i1(3'b101),
    .o(\U7/Change_Time_b [7:1]));  // ../../countdown_module.v(51)
  binary_mux_s1_w1 \U7/mux0_syn_1  (
    .i0(\U7/temp_time_b6 [0]),
    .i1(1'b1),
    .sel(Sel_Time1),
    .o(\U7/temp_time_b3 [0]));  // ../../countdown_module.v(27)
  AL_MUX \U7/mux0_syn_10  (
    .i0(1'b1),
    .i1(\U7/temp_time_b8 [3]),
    .sel(\U7/mux0_syn_13 ),
    .o(\U7/temp_time_b3 [3]));  // ../../countdown_module.v(27)
  and \U7/mux0_syn_12  (\U7/mux0_syn_13 , Sel_Time1_syn_2, Sel_Time2_syn_2);  // ../../countdown_module.v(27)
  AL_MUX \U7/mux0_syn_14  (
    .i0(1'b0),
    .i1(\U7/temp_time_b8 [4]),
    .sel(\U7/mux0_syn_13 ),
    .o(\U7/temp_time_b3 [4]));  // ../../countdown_module.v(27)
  and \U7/mux0_syn_16  (\U7/mux0_syn_17 , Sel_Time1_syn_2, \U7/mux1_syn_13 );  // ../../countdown_module.v(27)
  AL_MUX \U7/mux0_syn_18  (
    .i0(1'b0),
    .i1(\U7/temp_time_b10 [1]),
    .sel(\U7/mux0_syn_17 ),
    .o(\U7/temp_time_b3 [5]));  // ../../countdown_module.v(27)
  binary_mux_s1_w1 \U7/mux0_syn_2  (
    .i0(\U7/temp_time_b6 [1]),
    .i1(1'b0),
    .sel(Sel_Time1),
    .o(\U7/temp_time_b3 [1]));  // ../../countdown_module.v(27)
  binary_mux_s1_w1 \U7/mux0_syn_3  (
    .i0(\U7/temp_time_b6 [2]),
    .i1(1'b0),
    .sel(Sel_Time1),
    .o(\U7/temp_time_b3 [2]));  // ../../countdown_module.v(27)
  binary_mux_s1_w1 \U7/mux1_syn_1  (
    .i0(\U7/temp_time_b8 [0]),
    .i1(1'b0),
    .sel(Sel_Time2),
    .o(\U7/temp_time_b6 [0]));  // ../../countdown_module.v(29)
  AL_MUX \U7/mux1_syn_10  (
    .i0(1'b1),
    .i1(\U7/temp_time_b10 [1]),
    .sel(\U7/mux1_syn_13 ),
    .o(\U7/temp_time_b6 [1]));  // ../../countdown_module.v(29)
  and \U7/mux1_syn_12  (\U7/mux1_syn_13 , Sel_Time2_syn_2, Sel_Time3_syn_2);  // ../../countdown_module.v(29)
  binary_mux_s1_w1 \U7/mux1_syn_3  (
    .i0(\U7/temp_time_b8 [2]),
    .i1(1'b1),
    .sel(Sel_Time2),
    .o(\U7/temp_time_b6 [2]));  // ../../countdown_module.v(29)
  binary_mux_s1_w1 \U7/mux2_syn_1  (
    .i0(\U7/temp_time_b10 [0]),
    .i1(1'b1),
    .sel(Sel_Time3),
    .o(\U7/temp_time_b8 [0]));  // ../../countdown_module.v(32)
  binary_mux_s1_w1 \U7/mux2_syn_3  (
    .i0(\U7/temp_time_b10 [0]),
    .i1(1'b0),
    .sel(Sel_Time3),
    .o(\U7/temp_time_b8 [2]));  // ../../countdown_module.v(32)
  binary_mux_s1_w1 \U7/mux2_syn_4  (
    .i0(\U7/temp_time_b10 [3]),
    .i1(1'b0),
    .sel(Sel_Time3),
    .o(\U7/temp_time_b8 [3]));  // ../../countdown_module.v(32)
  binary_mux_s1_w1 \U7/mux2_syn_5  (
    .i0(\U7/temp_time_b10 [3]),
    .i1(1'b1),
    .sel(Sel_Time3),
    .o(\U7/temp_time_b8 [4]));  // ../../countdown_module.v(32)
  binary_mux_s1_w1 \U7/mux3_syn_1  (
    .i0(Sel_Time5),
    .i1(1'b0),
    .sel(Sel_Time4),
    .o(\U7/temp_time_b10 [0]));  // ../../countdown_module.v(35)
  binary_mux_s1_w1 \U7/mux3_syn_2  (
    .i0(\U7/temp_time_b12 [1]),
    .i1(1'b0),
    .sel(Sel_Time4),
    .o(\U7/temp_time_b10 [1]));  // ../../countdown_module.v(35)
  binary_mux_s1_w1 \U7/mux3_syn_4  (
    .i0(Sel_Time5),
    .i1(1'b1),
    .sel(Sel_Time4),
    .o(\U7/temp_time_b10 [3]));  // ../../countdown_module.v(35)
  AL_DFF_0 \U7/reg0_syn_10  (
    .ar(1'b0),
    .as(1'b0),
    .clk(Set_Time),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_11 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_12  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b3 [0]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_13 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_14  (\U7/reg0_syn_15 , \U7/reg0_syn_11 , \U7/reg0_syn_13 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_17  (
    .i0(1'b0),
    .i1(\U7/reg0_syn_16 ),
    .sel(\U7/reg0_syn_15 ),
    .o(\U7/temp_time [1]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_19  (
    .ar(\U7/temp_time_b1 [0]),
    .as(\U7/temp_time_b3 [0]),
    .clk(Set_Time),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_16 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_22  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b [1]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_23 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_24  (\U7/reg0_syn_25 , \U7/reg0_syn_11 , \U7/reg0_syn_23 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_27  (
    .i0(1'b0),
    .i1(\U7/reg0_syn_26 ),
    .sel(\U7/reg0_syn_25 ),
    .o(\U7/temp_time [2]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_29  (
    .ar(\U7/temp_time_b1 [1]),
    .as(\U7/temp_time_b [1]),
    .clk(Set_Time),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_26 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_32  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b1 [2]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_33 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_34  (\U7/reg0_syn_35 , \U7/reg0_syn_11 , \U7/reg0_syn_33 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_37  (
    .i0(1'b1),
    .i1(\U7/reg0_syn_36 ),
    .sel(\U7/reg0_syn_35 ),
    .o(\U7/temp_time [3]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_39  (
    .ar(\U7/temp_time_b1 [2]),
    .as(\U7/temp_time_b [2]),
    .clk(Set_Time),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_36 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_42  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b3 [3]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_43 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_44  (\U7/reg0_syn_45 , \U7/reg0_syn_11 , \U7/reg0_syn_43 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_47  (
    .i0(1'b0),
    .i1(\U7/reg0_syn_46 ),
    .sel(\U7/reg0_syn_45 ),
    .o(\U7/temp_time [4]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_49  (
    .ar(\U7/temp_time_b1 [3]),
    .as(\U7/temp_time_b3 [3]),
    .clk(Set_Time),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_46 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_52  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b [4]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_53 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_54  (\U7/reg0_syn_55 , \U7/reg0_syn_11 , \U7/reg0_syn_53 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_57  (
    .i0(1'b0),
    .i1(\U7/reg0_syn_56 ),
    .sel(\U7/reg0_syn_55 ),
    .o(\U7/temp_time [5]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_59  (
    .ar(\U7/temp_time_b1 [4]),
    .as(\U7/temp_time_b [4]),
    .clk(Set_Time),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_56 ));  // ../../countdown_module.v(41)
  AL_DFF_0 \U7/reg0_syn_62  (
    .ar(1'b0),
    .as(1'b0),
    .clk(\U7/temp_time_b [5]),
    .d(1'b1),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_63 ));  // ../../countdown_module.v(41)
  or \U7/reg0_syn_64  (\U7/reg0_syn_65 , \U7/reg0_syn_11 , \U7/reg0_syn_63 );  // ../../countdown_module.v(41)
  AL_MUX \U7/reg0_syn_67  (
    .i0(1'b0),
    .i1(\U7/reg0_syn_66 ),
    .sel(\U7/reg0_syn_65 ),
    .o(\U7/temp_time [6]));  // ../../countdown_module.v(41)
  AL_DFF_X \U7/reg0_syn_69  (
    .ar(\U7/temp_time_b1 [5]),
    .as(\U7/temp_time_b [5]),
    .clk(Set_Time),
    .d(1'b0),
    .en(1'b1),
    .sr(1'b0),
    .ss(1'b0),
    .q(\U7/reg0_syn_66 ));  // ../../countdown_module.v(41)
  or \U7/temp_time_b11_i  (\U7/temp_time_b11 [5], Sel_Time6, Sel_Time5);  // ../../countdown_module.v(38)
  and \U7/temp_time_b1_i  (\U7/temp_time_b1 [5], \U7/temp_time_b2 [5], \U7/temp_time_b4 [5]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b1_i1  (\U7/temp_time_b1 [4], \U7/temp_time_b2 [5], \U7/temp_time_b4 [4]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b1_i2  (\U7/temp_time_b1 [3], \U7/temp_time_b2 [5], \U7/temp_time_b4 [3]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b1_i3  (\U7/temp_time_b1 [2], \U7/temp_time_b2 [5], \U7/temp_time_b4 [2]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b1_i4  (\U7/temp_time_b1 [1], \U7/temp_time_b2 [5], \U7/temp_time_b4 [1]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b1_i5  (\U7/temp_time_b1 [0], \U7/temp_time_b2 [5], \U7/temp_time_b4 [0]);  // ../../countdown_module.v(41)
  or \U7/temp_time_b2_i  (\U7/temp_time_b2 [5], \U7/temp_time_b5 [5], Sel_Time1);  // ../../countdown_module.v(27)
  not \U7/temp_time_b4_i  (\U7/temp_time_b4 [5], \U7/temp_time_b3 [5]);  // ../../countdown_module.v(41)
  not \U7/temp_time_b4_i1  (\U7/temp_time_b4 [4], \U7/temp_time_b3 [4]);  // ../../countdown_module.v(41)
  not \U7/temp_time_b4_i2  (\U7/temp_time_b4 [3], \U7/temp_time_b3 [3]);  // ../../countdown_module.v(41)
  not \U7/temp_time_b4_i3  (\U7/temp_time_b4 [2], \U7/temp_time_b3 [2]);  // ../../countdown_module.v(41)
  not \U7/temp_time_b4_i4  (\U7/temp_time_b4 [1], \U7/temp_time_b3 [1]);  // ../../countdown_module.v(41)
  not \U7/temp_time_b4_i5  (\U7/temp_time_b4 [0], \U7/temp_time_b3 [0]);  // ../../countdown_module.v(41)
  or \U7/temp_time_b5_i  (\U7/temp_time_b5 [5], \U7/temp_time_b7 [5], Sel_Time2);  // ../../countdown_module.v(29)
  or \U7/temp_time_b7_i  (\U7/temp_time_b7 [5], \U7/temp_time_b9 [5], Sel_Time3);  // ../../countdown_module.v(32)
  or \U7/temp_time_b9_i  (\U7/temp_time_b9 [5], \U7/temp_time_b11 [5], Sel_Time4);  // ../../countdown_module.v(35)
  and \U7/temp_time_b_i  (\U7/temp_time_b [5], \U7/temp_time_b2 [5], \U7/temp_time_b3 [5]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b_i1  (\U7/temp_time_b [4], \U7/temp_time_b2 [5], \U7/temp_time_b3 [4]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b_i3  (\U7/temp_time_b [2], \U7/temp_time_b2 [5], \U7/temp_time_b3 [2]);  // ../../countdown_module.v(41)
  and \U7/temp_time_b_i4  (\U7/temp_time_b [1], \U7/temp_time_b2 [5], \U7/temp_time_b3 [1]);  // ../../countdown_module.v(41)
  not \U7/u  (\U7/temp_time_b12 [1], Sel_Time5);  // ../../countdown_module.v(38)

endmodule 

module add_pu25_pu25_o25
  (
  i0,
  i1,
  o
  );

  input [24:0] i0;
  input [24:0] i1;
  output [24:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;
  wire net_a16;
  wire net_b16;
  wire net_sum16;
  wire net_cout16;
  wire net_a17;
  wire net_b17;
  wire net_sum17;
  wire net_cout17;
  wire net_a18;
  wire net_b18;
  wire net_sum18;
  wire net_cout18;
  wire net_a19;
  wire net_b19;
  wire net_sum19;
  wire net_cout19;
  wire net_a20;
  wire net_b20;
  wire net_sum20;
  wire net_cout20;
  wire net_a21;
  wire net_b21;
  wire net_sum21;
  wire net_cout21;
  wire net_a22;
  wire net_b22;
  wire net_sum22;
  wire net_cout22;
  wire net_a23;
  wire net_b23;
  wire net_sum23;
  wire net_cout23;
  wire net_a24;
  wire net_b24;
  wire net_sum24;
  wire net_cout24;

  assign net_a24 = i0[24];
  assign net_a23 = i0[23];
  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b24 = i1[24];
  assign net_b23 = i1[23];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[24] = net_sum24;
  assign o[23] = net_sum23;
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_162 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_163 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_164 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_165 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_166 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_167 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_168 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_169 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_170 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_171 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_172 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_173 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_174 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_175 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_176 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_177 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD al_178 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD al_179 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD al_180 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD al_181 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD al_182 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD al_183 (
    .a(net_a21),
    .b(net_b21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD al_184 (
    .a(net_a22),
    .b(net_b22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));
  AL_FADD al_185 (
    .a(net_a23),
    .b(net_b23),
    .c(net_cout22),
    .cout(net_cout23),
    .sum(net_sum23));
  AL_FADD al_186 (
    .a(net_a24),
    .b(net_b24),
    .c(net_cout23),
    .cout(net_cout24),
    .sum(net_sum24));

endmodule 

module eq_w25
  (
  i0,
  i1,
  o
  );

  input [24:0] i0;
  input [24:0] i1;
  output o;

  wire i0_syn_26;
  wire i0_syn_28;
  wire i0_syn_30;
  wire i0_syn_32;
  wire i0_syn_34;
  wire i0_syn_36;
  wire i0_syn_38;
  wire i0_syn_40;
  wire i0_syn_42;
  wire i0_syn_44;
  wire i0_syn_46;
  wire i0_syn_48;
  wire i0_syn_50;
  wire i0_syn_52;
  wire i0_syn_54;
  wire i0_syn_56;
  wire i0_syn_58;
  wire i0_syn_60;
  wire i0_syn_62;
  wire i0_syn_64;
  wire i0_syn_66;
  wire i0_syn_68;
  wire i0_syn_70;
  wire i0_syn_72;
  wire i0_syn_74;
  wire i0_syn_76;
  wire i0_syn_78;
  wire i0_syn_80;
  wire i0_syn_82;
  wire i0_syn_84;
  wire i0_syn_86;
  wire i0_syn_88;
  wire i0_syn_90;
  wire i0_syn_92;
  wire i0_syn_94;
  wire i0_syn_96;
  wire i0_syn_98;
  wire i0_syn_100;
  wire i0_syn_102;
  wire i0_syn_104;
  wire i0_syn_106;
  wire i0_syn_108;
  wire i0_syn_110;
  wire i0_syn_112;
  wire i0_syn_114;
  wire i0_syn_116;
  wire i0_syn_118;
  wire i0_syn_120;
  wire i0_syn_122;

  not al_187 (o, i0_syn_122);
  or i0_syn_101 (i0_syn_102, i0_syn_58, i0_syn_60);
  or i0_syn_103 (i0_syn_104, i0_syn_56, i0_syn_102);
  or i0_syn_105 (i0_syn_106, i0_syn_100, i0_syn_104);
  or i0_syn_107 (i0_syn_108, i0_syn_64, i0_syn_66);
  or i0_syn_109 (i0_syn_110, i0_syn_62, i0_syn_108);
  or i0_syn_111 (i0_syn_112, i0_syn_68, i0_syn_70);
  or i0_syn_113 (i0_syn_114, i0_syn_72, i0_syn_74);
  or i0_syn_115 (i0_syn_116, i0_syn_112, i0_syn_114);
  or i0_syn_117 (i0_syn_118, i0_syn_110, i0_syn_116);
  or i0_syn_119 (i0_syn_120, i0_syn_106, i0_syn_118);
  or i0_syn_121 (i0_syn_122, i0_syn_96, i0_syn_120);
  xor i0_syn_25 (i0_syn_26, i0[0], i1[0]);
  xor i0_syn_27 (i0_syn_28, i0[1], i1[1]);
  xor i0_syn_29 (i0_syn_30, i0[2], i1[2]);
  xor i0_syn_31 (i0_syn_32, i0[3], i1[3]);
  xor i0_syn_33 (i0_syn_34, i0[4], i1[4]);
  xor i0_syn_35 (i0_syn_36, i0[5], i1[5]);
  xor i0_syn_37 (i0_syn_38, i0[6], i1[6]);
  xor i0_syn_39 (i0_syn_40, i0[7], i1[7]);
  xor i0_syn_41 (i0_syn_42, i0[8], i1[8]);
  xor i0_syn_43 (i0_syn_44, i0[9], i1[9]);
  xor i0_syn_45 (i0_syn_46, i0[10], i1[10]);
  xor i0_syn_47 (i0_syn_48, i0[11], i1[11]);
  xor i0_syn_49 (i0_syn_50, i0[12], i1[12]);
  xor i0_syn_51 (i0_syn_52, i0[13], i1[13]);
  xor i0_syn_53 (i0_syn_54, i0[14], i1[14]);
  xor i0_syn_55 (i0_syn_56, i0[15], i1[15]);
  xor i0_syn_57 (i0_syn_58, i0[16], i1[16]);
  xor i0_syn_59 (i0_syn_60, i0[17], i1[17]);
  xor i0_syn_61 (i0_syn_62, i0[18], i1[18]);
  xor i0_syn_63 (i0_syn_64, i0[19], i1[19]);
  xor i0_syn_65 (i0_syn_66, i0[20], i1[20]);
  xor i0_syn_67 (i0_syn_68, i0[21], i1[21]);
  xor i0_syn_69 (i0_syn_70, i0[22], i1[22]);
  xor i0_syn_71 (i0_syn_72, i0[23], i1[23]);
  xor i0_syn_73 (i0_syn_74, i0[24], i1[24]);
  or i0_syn_75 (i0_syn_76, i0_syn_28, i0_syn_30);
  or i0_syn_77 (i0_syn_78, i0_syn_26, i0_syn_76);
  or i0_syn_79 (i0_syn_80, i0_syn_34, i0_syn_36);
  or i0_syn_81 (i0_syn_82, i0_syn_32, i0_syn_80);
  or i0_syn_83 (i0_syn_84, i0_syn_78, i0_syn_82);
  or i0_syn_85 (i0_syn_86, i0_syn_40, i0_syn_42);
  or i0_syn_87 (i0_syn_88, i0_syn_38, i0_syn_86);
  or i0_syn_89 (i0_syn_90, i0_syn_46, i0_syn_48);
  or i0_syn_91 (i0_syn_92, i0_syn_44, i0_syn_90);
  or i0_syn_93 (i0_syn_94, i0_syn_88, i0_syn_92);
  or i0_syn_95 (i0_syn_96, i0_syn_84, i0_syn_94);
  or i0_syn_97 (i0_syn_98, i0_syn_52, i0_syn_54);
  or i0_syn_99 (i0_syn_100, i0_syn_50, i0_syn_98);

endmodule 

module binary_mux_s1_w1
  (
  i0,
  i1,
  sel,
  o
  );

  input i0;
  input i1;
  input sel;
  output o;


  AL_MUX al_161 (
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .o(o));

endmodule 

module add_pu1_pu1_o1
  (
  i0,
  i1,
  o
  );

  input i0;
  input i1;
  output o;

  wire net_a0;
  wire net_sum0;
  wire net_cout0;
  wire net_cin;

  assign net_a0 = i0;
  assign net_cin = i1;
  assign o = net_sum0;
  AL_FADD al_188 (
    .a(net_a0),
    .b(1'b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));

endmodule 

module add_pu3_pu3_pu1_o3
  (
  i0,
  i1,
  i2,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  input i2;
  output [2:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_cin;

  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_643 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_644 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_645 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));

endmodule 

module add_pu4_pu4_pu1_o4
  (
  i0,
  i1,
  i2,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  input i2;
  output [3:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_cin;

  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_562 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_563 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_564 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_565 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));

endmodule 

module add_pu5_pu5_pu1_o5
  (
  i0,
  i1,
  i2,
  o
  );

  input [4:0] i0;
  input [4:0] i1;
  input i2;
  output [4:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_cin;

  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_557 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_558 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_559 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_560 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_561 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));

endmodule 

module add_pu6_pu6_pu1_o6
  (
  i0,
  i1,
  i2,
  o
  );

  input [5:0] i0;
  input [5:0] i1;
  input i2;
  output [5:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_cin;

  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_551 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_552 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_553 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_554 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_555 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_556 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));

endmodule 

module add_pu7_pu7_pu1_o7
  (
  i0,
  i1,
  i2,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  input i2;
  output [6:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_cin;

  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_544 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_545 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_546 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_547 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_548 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_549 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_550 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));

endmodule 

module eq_w4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output o;

  wire i0_syn_124;
  wire i0_syn_126;
  wire i0_syn_128;
  wire i0_syn_130;
  wire i0_syn_132;
  wire i0_syn_134;
  wire i0_syn_136;

  not al_197 (o, i0_syn_136);
  xor i0_syn_123 (i0_syn_124, i0[0], i1[0]);
  xor i0_syn_125 (i0_syn_126, i0[1], i1[1]);
  xor i0_syn_127 (i0_syn_128, i0[2], i1[2]);
  xor i0_syn_129 (i0_syn_130, i0[3], i1[3]);
  or i0_syn_131 (i0_syn_132, i0_syn_124, i0_syn_126);
  or i0_syn_133 (i0_syn_134, i0_syn_128, i0_syn_130);
  or i0_syn_135 (i0_syn_136, i0_syn_132, i0_syn_134);

endmodule 

module add_pu8_pu8_pu1_o8
  (
  i0,
  i1,
  i2,
  o
  );

  input [7:0] i0;
  input [7:0] i1;
  input i2;
  output [7:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_cin;

  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign net_cin = i2;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_189 (
    .a(net_a0),
    .b(net_b0),
    .c(net_cin),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_190 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_191 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_192 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_193 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_194 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_195 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_196 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));

endmodule 

module lt_u4_u4
  (
  ci,
  i0,
  i1,
  o
  );

  input ci;
  input [3:0] i0;
  input [3:0] i1;
  output o;

  wire [3:0] al_624;
  wire o_0;
  wire o_1;
  wire o_2;

  xor al_628 (al_624[0], i0[0], i1[0]);
  xor al_629 (al_624[1], i0[1], i1[1]);
  xor al_630 (al_624[2], i0[2], i1[2]);
  xor al_631 (al_624[3], i0[3], i1[3]);
  AL_MUX al_632 (
    .i0(ci),
    .i1(i1[0]),
    .sel(al_624[0]),
    .o(o_0));
  AL_MUX al_633 (
    .i0(o_0),
    .i1(i1[1]),
    .sel(al_624[1]),
    .o(o_1));
  AL_MUX al_634 (
    .i0(o_1),
    .i1(i1[2]),
    .sel(al_624[2]),
    .o(o_2));
  AL_MUX al_635 (
    .i0(o_2),
    .i1(i1[3]),
    .sel(al_624[3]),
    .o(o));

endmodule 

module add_pu4_mu4_o4
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [3:0] i1;
  output [3:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_nb0;
  wire net_nb1;
  wire net_nb2;
  wire net_nb3;

  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_235 (
    .a(net_a0),
    .b(net_nb0),
    .c(1'b1),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_236 (
    .a(net_a1),
    .b(net_nb1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_237 (
    .a(net_a2),
    .b(net_nb2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_238 (
    .a(net_a3),
    .b(net_nb3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  not al_239 (net_nb0, net_b0);
  not al_240 (net_nb1, net_b1);
  not al_241 (net_nb2, net_b2);
  not al_242 (net_nb3, net_b3);

endmodule 

module add_pu23_pu23_o23
  (
  i0,
  i1,
  o
  );

  input [22:0] i0;
  input [22:0] i1;
  output [22:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;
  wire net_a16;
  wire net_b16;
  wire net_sum16;
  wire net_cout16;
  wire net_a17;
  wire net_b17;
  wire net_sum17;
  wire net_cout17;
  wire net_a18;
  wire net_b18;
  wire net_sum18;
  wire net_cout18;
  wire net_a19;
  wire net_b19;
  wire net_sum19;
  wire net_cout19;
  wire net_a20;
  wire net_b20;
  wire net_sum20;
  wire net_cout20;
  wire net_a21;
  wire net_b21;
  wire net_sum21;
  wire net_cout21;
  wire net_a22;
  wire net_b22;
  wire net_sum22;
  wire net_cout22;

  assign net_a22 = i0[22];
  assign net_a21 = i0[21];
  assign net_a20 = i0[20];
  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b22 = i1[22];
  assign net_b21 = i1[21];
  assign net_b20 = i1[20];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[22] = net_sum22;
  assign o[21] = net_sum21;
  assign o[20] = net_sum20;
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_243 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_244 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_245 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_246 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_247 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_248 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_249 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_250 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_251 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_252 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_253 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_254 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_255 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_256 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_257 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_258 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD al_259 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD al_260 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD al_261 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD al_262 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));
  AL_FADD al_263 (
    .a(net_a20),
    .b(net_b20),
    .c(net_cout19),
    .cout(net_cout20),
    .sum(net_sum20));
  AL_FADD al_264 (
    .a(net_a21),
    .b(net_b21),
    .c(net_cout20),
    .cout(net_cout21),
    .sum(net_sum21));
  AL_FADD al_265 (
    .a(net_a22),
    .b(net_b22),
    .c(net_cout21),
    .cout(net_cout22),
    .sum(net_sum22));

endmodule 

module eq_w3
  (
  i0,
  i1,
  o
  );

  input [2:0] i0;
  input [2:0] i1;
  output o;

  wire i0_syn_428;
  wire i0_syn_430;
  wire i0_syn_432;
  wire i0_syn_434;
  wire i0_syn_436;

  not al_616 (o, i0_syn_436);
  xor i0_syn_427 (i0_syn_428, i0[0], i1[0]);
  xor i0_syn_429 (i0_syn_430, i0[1], i1[1]);
  xor i0_syn_431 (i0_syn_432, i0[2], i1[2]);
  or i0_syn_433 (i0_syn_434, i0_syn_430, i0_syn_432);
  or i0_syn_435 (i0_syn_436, i0_syn_428, i0_syn_434);

endmodule 

module eq_w23
  (
  i0,
  i1,
  o
  );

  input [22:0] i0;
  input [22:0] i1;
  output o;

  wire i0_syn_138;
  wire i0_syn_140;
  wire i0_syn_142;
  wire i0_syn_144;
  wire i0_syn_146;
  wire i0_syn_148;
  wire i0_syn_150;
  wire i0_syn_152;
  wire i0_syn_154;
  wire i0_syn_156;
  wire i0_syn_158;
  wire i0_syn_160;
  wire i0_syn_162;
  wire i0_syn_164;
  wire i0_syn_166;
  wire i0_syn_168;
  wire i0_syn_170;
  wire i0_syn_172;
  wire i0_syn_174;
  wire i0_syn_176;
  wire i0_syn_178;
  wire i0_syn_180;
  wire i0_syn_182;
  wire i0_syn_184;
  wire i0_syn_186;
  wire i0_syn_188;
  wire i0_syn_190;
  wire i0_syn_192;
  wire i0_syn_194;
  wire i0_syn_196;
  wire i0_syn_198;
  wire i0_syn_200;
  wire i0_syn_202;
  wire i0_syn_204;
  wire i0_syn_206;
  wire i0_syn_208;
  wire i0_syn_210;
  wire i0_syn_212;
  wire i0_syn_214;
  wire i0_syn_216;
  wire i0_syn_218;
  wire i0_syn_220;
  wire i0_syn_222;
  wire i0_syn_224;
  wire i0_syn_226;

  not al_266 (o, i0_syn_226);
  xor i0_syn_137 (i0_syn_138, i0[0], i1[0]);
  xor i0_syn_139 (i0_syn_140, i0[1], i1[1]);
  xor i0_syn_141 (i0_syn_142, i0[2], i1[2]);
  xor i0_syn_143 (i0_syn_144, i0[3], i1[3]);
  xor i0_syn_145 (i0_syn_146, i0[4], i1[4]);
  xor i0_syn_147 (i0_syn_148, i0[5], i1[5]);
  xor i0_syn_149 (i0_syn_150, i0[6], i1[6]);
  xor i0_syn_151 (i0_syn_152, i0[7], i1[7]);
  xor i0_syn_153 (i0_syn_154, i0[8], i1[8]);
  xor i0_syn_155 (i0_syn_156, i0[9], i1[9]);
  xor i0_syn_157 (i0_syn_158, i0[10], i1[10]);
  xor i0_syn_159 (i0_syn_160, i0[11], i1[11]);
  xor i0_syn_161 (i0_syn_162, i0[12], i1[12]);
  xor i0_syn_163 (i0_syn_164, i0[13], i1[13]);
  xor i0_syn_165 (i0_syn_166, i0[14], i1[14]);
  xor i0_syn_167 (i0_syn_168, i0[15], i1[15]);
  xor i0_syn_169 (i0_syn_170, i0[16], i1[16]);
  xor i0_syn_171 (i0_syn_172, i0[17], i1[17]);
  xor i0_syn_173 (i0_syn_174, i0[18], i1[18]);
  xor i0_syn_175 (i0_syn_176, i0[19], i1[19]);
  xor i0_syn_177 (i0_syn_178, i0[20], i1[20]);
  xor i0_syn_179 (i0_syn_180, i0[21], i1[21]);
  xor i0_syn_181 (i0_syn_182, i0[22], i1[22]);
  or i0_syn_183 (i0_syn_184, i0_syn_138, i0_syn_140);
  or i0_syn_185 (i0_syn_186, i0_syn_144, i0_syn_146);
  or i0_syn_187 (i0_syn_188, i0_syn_142, i0_syn_186);
  or i0_syn_189 (i0_syn_190, i0_syn_184, i0_syn_188);
  or i0_syn_191 (i0_syn_192, i0_syn_150, i0_syn_152);
  or i0_syn_193 (i0_syn_194, i0_syn_148, i0_syn_192);
  or i0_syn_195 (i0_syn_196, i0_syn_156, i0_syn_158);
  or i0_syn_197 (i0_syn_198, i0_syn_154, i0_syn_196);
  or i0_syn_199 (i0_syn_200, i0_syn_194, i0_syn_198);
  or i0_syn_201 (i0_syn_202, i0_syn_190, i0_syn_200);
  or i0_syn_203 (i0_syn_204, i0_syn_162, i0_syn_164);
  or i0_syn_205 (i0_syn_206, i0_syn_160, i0_syn_204);
  or i0_syn_207 (i0_syn_208, i0_syn_168, i0_syn_170);
  or i0_syn_209 (i0_syn_210, i0_syn_166, i0_syn_208);
  or i0_syn_211 (i0_syn_212, i0_syn_206, i0_syn_210);
  or i0_syn_213 (i0_syn_214, i0_syn_174, i0_syn_176);
  or i0_syn_215 (i0_syn_216, i0_syn_172, i0_syn_214);
  or i0_syn_217 (i0_syn_218, i0_syn_180, i0_syn_182);
  or i0_syn_219 (i0_syn_220, i0_syn_178, i0_syn_218);
  or i0_syn_221 (i0_syn_222, i0_syn_216, i0_syn_220);
  or i0_syn_223 (i0_syn_224, i0_syn_212, i0_syn_222);
  or i0_syn_225 (i0_syn_226, i0_syn_202, i0_syn_224);

endmodule 

module add_pu2_pu2_o2
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output [1:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;

  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_267 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_268 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));

endmodule 

module add_pu16_pu16_o16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output [15:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;

  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_269 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_270 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_271 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_272 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_273 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_274 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_275 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_276 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_277 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_278 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_279 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_280 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_281 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_282 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_283 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_284 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));

endmodule 

module eq_w16
  (
  i0,
  i1,
  o
  );

  input [15:0] i0;
  input [15:0] i1;
  output o;

  wire i0_syn_228;
  wire i0_syn_230;
  wire i0_syn_232;
  wire i0_syn_234;
  wire i0_syn_236;
  wire i0_syn_238;
  wire i0_syn_240;
  wire i0_syn_242;
  wire i0_syn_244;
  wire i0_syn_246;
  wire i0_syn_248;
  wire i0_syn_250;
  wire i0_syn_252;
  wire i0_syn_254;
  wire i0_syn_256;
  wire i0_syn_258;
  wire i0_syn_260;
  wire i0_syn_262;
  wire i0_syn_264;
  wire i0_syn_266;
  wire i0_syn_268;
  wire i0_syn_270;
  wire i0_syn_272;
  wire i0_syn_274;
  wire i0_syn_276;
  wire i0_syn_278;
  wire i0_syn_280;
  wire i0_syn_282;
  wire i0_syn_284;
  wire i0_syn_286;
  wire i0_syn_288;

  not al_285 (o, i0_syn_288);
  xor i0_syn_227 (i0_syn_228, i0[0], i1[0]);
  xor i0_syn_229 (i0_syn_230, i0[1], i1[1]);
  xor i0_syn_231 (i0_syn_232, i0[2], i1[2]);
  xor i0_syn_233 (i0_syn_234, i0[3], i1[3]);
  xor i0_syn_235 (i0_syn_236, i0[4], i1[4]);
  xor i0_syn_237 (i0_syn_238, i0[5], i1[5]);
  xor i0_syn_239 (i0_syn_240, i0[6], i1[6]);
  xor i0_syn_241 (i0_syn_242, i0[7], i1[7]);
  xor i0_syn_243 (i0_syn_244, i0[8], i1[8]);
  xor i0_syn_245 (i0_syn_246, i0[9], i1[9]);
  xor i0_syn_247 (i0_syn_248, i0[10], i1[10]);
  xor i0_syn_249 (i0_syn_250, i0[11], i1[11]);
  xor i0_syn_251 (i0_syn_252, i0[12], i1[12]);
  xor i0_syn_253 (i0_syn_254, i0[13], i1[13]);
  xor i0_syn_255 (i0_syn_256, i0[14], i1[14]);
  xor i0_syn_257 (i0_syn_258, i0[15], i1[15]);
  or i0_syn_259 (i0_syn_260, i0_syn_228, i0_syn_230);
  or i0_syn_261 (i0_syn_262, i0_syn_232, i0_syn_234);
  or i0_syn_263 (i0_syn_264, i0_syn_260, i0_syn_262);
  or i0_syn_265 (i0_syn_266, i0_syn_236, i0_syn_238);
  or i0_syn_267 (i0_syn_268, i0_syn_240, i0_syn_242);
  or i0_syn_269 (i0_syn_270, i0_syn_266, i0_syn_268);
  or i0_syn_271 (i0_syn_272, i0_syn_264, i0_syn_270);
  or i0_syn_273 (i0_syn_274, i0_syn_244, i0_syn_246);
  or i0_syn_275 (i0_syn_276, i0_syn_248, i0_syn_250);
  or i0_syn_277 (i0_syn_278, i0_syn_274, i0_syn_276);
  or i0_syn_279 (i0_syn_280, i0_syn_252, i0_syn_254);
  or i0_syn_281 (i0_syn_282, i0_syn_256, i0_syn_258);
  or i0_syn_283 (i0_syn_284, i0_syn_280, i0_syn_282);
  or i0_syn_285 (i0_syn_286, i0_syn_278, i0_syn_284);
  or i0_syn_287 (i0_syn_288, i0_syn_272, i0_syn_286);

endmodule 

module eq_w2
  (
  i0,
  i1,
  o
  );

  input [1:0] i0;
  input [1:0] i1;
  output o;

  wire i0_syn_290;
  wire i0_syn_292;
  wire i0_syn_294;

  not al_286 (o, i0_syn_294);
  xor i0_syn_289 (i0_syn_290, i0[0], i1[0]);
  xor i0_syn_291 (i0_syn_292, i0[1], i1[1]);
  or i0_syn_293 (i0_syn_294, i0_syn_290, i0_syn_292);

endmodule 

module binary_mux_s4_w1
  (
  i0,
  i1,
  i10,
  i11,
  i12,
  i13,
  i14,
  i15,
  i2,
  i3,
  i4,
  i5,
  i6,
  i7,
  i8,
  i9,
  sel,
  o
  );

  input i0;
  input i1;
  input i10;
  input i11;
  input i12;
  input i13;
  input i14;
  input i15;
  input i2;
  input i3;
  input i4;
  input i5;
  input i6;
  input i7;
  input i8;
  input i9;
  input [3:0] sel;
  output o;

  wire  al_292;
  wire  al_293;
  wire  al_294;
  wire  al_295;
  wire  al_296;
  wire  al_297;
  wire  al_298;
  wire  al_299;
  wire  al_300;
  wire  al_301;
  wire  al_302;
  wire  al_303;
  wire  al_304;
  wire  al_305;

  AL_MUX al_306 (
    .i0(al_292),
    .i1(al_293),
    .sel(sel[3]),
    .o(o));
  AL_MUX al_307 (
    .i0(al_294),
    .i1(al_295),
    .sel(sel[2]),
    .o(al_292));
  AL_MUX al_308 (
    .i0(al_296),
    .i1(al_297),
    .sel(sel[2]),
    .o(al_293));
  AL_MUX al_309 (
    .i0(al_298),
    .i1(al_299),
    .sel(sel[1]),
    .o(al_294));
  AL_MUX al_310 (
    .i0(al_300),
    .i1(al_301),
    .sel(sel[1]),
    .o(al_295));
  AL_MUX al_311 (
    .i0(al_302),
    .i1(al_303),
    .sel(sel[1]),
    .o(al_296));
  AL_MUX al_312 (
    .i0(al_304),
    .i1(al_305),
    .sel(sel[1]),
    .o(al_297));
  AL_MUX al_313 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(al_298));
  AL_MUX al_314 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(al_299));
  AL_MUX al_315 (
    .i0(i4),
    .i1(i5),
    .sel(sel[0]),
    .o(al_300));
  AL_MUX al_316 (
    .i0(i6),
    .i1(i7),
    .sel(sel[0]),
    .o(al_301));
  AL_MUX al_317 (
    .i0(i8),
    .i1(i9),
    .sel(sel[0]),
    .o(al_302));
  AL_MUX al_318 (
    .i0(i10),
    .i1(i11),
    .sel(sel[0]),
    .o(al_303));
  AL_MUX al_319 (
    .i0(i12),
    .i1(i13),
    .sel(sel[0]),
    .o(al_304));
  AL_MUX al_320 (
    .i0(i14),
    .i1(i15),
    .sel(sel[0]),
    .o(al_305));

endmodule 

module binary_mux_s2_w1
  (
  i0,
  i1,
  i2,
  i3,
  sel,
  o
  );

  input i0;
  input i1;
  input i2;
  input i3;
  input [1:0] sel;
  output o;

  wire  al_287;
  wire  al_288;

  AL_MUX al_289 (
    .i0(al_287),
    .i1(al_288),
    .sel(sel[1]),
    .o(o));
  AL_MUX al_290 (
    .i0(i0),
    .i1(i1),
    .sel(sel[0]),
    .o(al_287));
  AL_MUX al_291 (
    .i0(i2),
    .i1(i3),
    .sel(sel[0]),
    .o(al_288));

endmodule 

module add_pu20_pu20_o20
  (
  i0,
  i1,
  o
  );

  input [19:0] i0;
  input [19:0] i1;
  output [19:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;
  wire net_a7;
  wire net_b7;
  wire net_sum7;
  wire net_cout7;
  wire net_a8;
  wire net_b8;
  wire net_sum8;
  wire net_cout8;
  wire net_a9;
  wire net_b9;
  wire net_sum9;
  wire net_cout9;
  wire net_a10;
  wire net_b10;
  wire net_sum10;
  wire net_cout10;
  wire net_a11;
  wire net_b11;
  wire net_sum11;
  wire net_cout11;
  wire net_a12;
  wire net_b12;
  wire net_sum12;
  wire net_cout12;
  wire net_a13;
  wire net_b13;
  wire net_sum13;
  wire net_cout13;
  wire net_a14;
  wire net_b14;
  wire net_sum14;
  wire net_cout14;
  wire net_a15;
  wire net_b15;
  wire net_sum15;
  wire net_cout15;
  wire net_a16;
  wire net_b16;
  wire net_sum16;
  wire net_cout16;
  wire net_a17;
  wire net_b17;
  wire net_sum17;
  wire net_cout17;
  wire net_a18;
  wire net_b18;
  wire net_sum18;
  wire net_cout18;
  wire net_a19;
  wire net_b19;
  wire net_sum19;
  wire net_cout19;

  assign net_a19 = i0[19];
  assign net_a18 = i0[18];
  assign net_a17 = i0[17];
  assign net_a16 = i0[16];
  assign net_a15 = i0[15];
  assign net_a14 = i0[14];
  assign net_a13 = i0[13];
  assign net_a12 = i0[12];
  assign net_a11 = i0[11];
  assign net_a10 = i0[10];
  assign net_a9 = i0[9];
  assign net_a8 = i0[8];
  assign net_a7 = i0[7];
  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b19 = i1[19];
  assign net_b18 = i1[18];
  assign net_b17 = i1[17];
  assign net_b16 = i1[16];
  assign net_b15 = i1[15];
  assign net_b14 = i1[14];
  assign net_b13 = i1[13];
  assign net_b12 = i1[12];
  assign net_b11 = i1[11];
  assign net_b10 = i1[10];
  assign net_b9 = i1[9];
  assign net_b8 = i1[8];
  assign net_b7 = i1[7];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[19] = net_sum19;
  assign o[18] = net_sum18;
  assign o[17] = net_sum17;
  assign o[16] = net_sum16;
  assign o[15] = net_sum15;
  assign o[14] = net_sum14;
  assign o[13] = net_sum13;
  assign o[12] = net_sum12;
  assign o[11] = net_sum11;
  assign o[10] = net_sum10;
  assign o[9] = net_sum9;
  assign o[8] = net_sum8;
  assign o[7] = net_sum7;
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_321 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_322 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_323 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_324 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_325 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_326 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_327 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));
  AL_FADD al_328 (
    .a(net_a7),
    .b(net_b7),
    .c(net_cout6),
    .cout(net_cout7),
    .sum(net_sum7));
  AL_FADD al_329 (
    .a(net_a8),
    .b(net_b8),
    .c(net_cout7),
    .cout(net_cout8),
    .sum(net_sum8));
  AL_FADD al_330 (
    .a(net_a9),
    .b(net_b9),
    .c(net_cout8),
    .cout(net_cout9),
    .sum(net_sum9));
  AL_FADD al_331 (
    .a(net_a10),
    .b(net_b10),
    .c(net_cout9),
    .cout(net_cout10),
    .sum(net_sum10));
  AL_FADD al_332 (
    .a(net_a11),
    .b(net_b11),
    .c(net_cout10),
    .cout(net_cout11),
    .sum(net_sum11));
  AL_FADD al_333 (
    .a(net_a12),
    .b(net_b12),
    .c(net_cout11),
    .cout(net_cout12),
    .sum(net_sum12));
  AL_FADD al_334 (
    .a(net_a13),
    .b(net_b13),
    .c(net_cout12),
    .cout(net_cout13),
    .sum(net_sum13));
  AL_FADD al_335 (
    .a(net_a14),
    .b(net_b14),
    .c(net_cout13),
    .cout(net_cout14),
    .sum(net_sum14));
  AL_FADD al_336 (
    .a(net_a15),
    .b(net_b15),
    .c(net_cout14),
    .cout(net_cout15),
    .sum(net_sum15));
  AL_FADD al_337 (
    .a(net_a16),
    .b(net_b16),
    .c(net_cout15),
    .cout(net_cout16),
    .sum(net_sum16));
  AL_FADD al_338 (
    .a(net_a17),
    .b(net_b17),
    .c(net_cout16),
    .cout(net_cout17),
    .sum(net_sum17));
  AL_FADD al_339 (
    .a(net_a18),
    .b(net_b18),
    .c(net_cout17),
    .cout(net_cout18),
    .sum(net_sum18));
  AL_FADD al_340 (
    .a(net_a19),
    .b(net_b19),
    .c(net_cout18),
    .cout(net_cout19),
    .sum(net_sum19));

endmodule 

module eq_w20
  (
  i0,
  i1,
  o
  );

  input [19:0] i0;
  input [19:0] i1;
  output o;

  wire i0_syn_296;
  wire i0_syn_298;
  wire i0_syn_300;
  wire i0_syn_302;
  wire i0_syn_304;
  wire i0_syn_306;
  wire i0_syn_308;
  wire i0_syn_310;
  wire i0_syn_312;
  wire i0_syn_314;
  wire i0_syn_316;
  wire i0_syn_318;
  wire i0_syn_320;
  wire i0_syn_322;
  wire i0_syn_324;
  wire i0_syn_326;
  wire i0_syn_328;
  wire i0_syn_330;
  wire i0_syn_332;
  wire i0_syn_334;
  wire i0_syn_336;
  wire i0_syn_338;
  wire i0_syn_340;
  wire i0_syn_342;
  wire i0_syn_344;
  wire i0_syn_346;
  wire i0_syn_348;
  wire i0_syn_350;
  wire i0_syn_352;
  wire i0_syn_354;
  wire i0_syn_356;
  wire i0_syn_358;
  wire i0_syn_360;
  wire i0_syn_362;
  wire i0_syn_364;
  wire i0_syn_366;
  wire i0_syn_368;
  wire i0_syn_370;
  wire i0_syn_372;

  not al_341 (o, i0_syn_372);
  xor i0_syn_295 (i0_syn_296, i0[0], i1[0]);
  xor i0_syn_297 (i0_syn_298, i0[1], i1[1]);
  xor i0_syn_299 (i0_syn_300, i0[2], i1[2]);
  xor i0_syn_301 (i0_syn_302, i0[3], i1[3]);
  xor i0_syn_303 (i0_syn_304, i0[4], i1[4]);
  xor i0_syn_305 (i0_syn_306, i0[5], i1[5]);
  xor i0_syn_307 (i0_syn_308, i0[6], i1[6]);
  xor i0_syn_309 (i0_syn_310, i0[7], i1[7]);
  xor i0_syn_311 (i0_syn_312, i0[8], i1[8]);
  xor i0_syn_313 (i0_syn_314, i0[9], i1[9]);
  xor i0_syn_315 (i0_syn_316, i0[10], i1[10]);
  xor i0_syn_317 (i0_syn_318, i0[11], i1[11]);
  xor i0_syn_319 (i0_syn_320, i0[12], i1[12]);
  xor i0_syn_321 (i0_syn_322, i0[13], i1[13]);
  xor i0_syn_323 (i0_syn_324, i0[14], i1[14]);
  xor i0_syn_325 (i0_syn_326, i0[15], i1[15]);
  xor i0_syn_327 (i0_syn_328, i0[16], i1[16]);
  xor i0_syn_329 (i0_syn_330, i0[17], i1[17]);
  xor i0_syn_331 (i0_syn_332, i0[18], i1[18]);
  xor i0_syn_333 (i0_syn_334, i0[19], i1[19]);
  or i0_syn_335 (i0_syn_336, i0_syn_296, i0_syn_298);
  or i0_syn_337 (i0_syn_338, i0_syn_302, i0_syn_304);
  or i0_syn_339 (i0_syn_340, i0_syn_300, i0_syn_338);
  or i0_syn_341 (i0_syn_342, i0_syn_336, i0_syn_340);
  or i0_syn_343 (i0_syn_344, i0_syn_306, i0_syn_308);
  or i0_syn_345 (i0_syn_346, i0_syn_312, i0_syn_314);
  or i0_syn_347 (i0_syn_348, i0_syn_310, i0_syn_346);
  or i0_syn_349 (i0_syn_350, i0_syn_344, i0_syn_348);
  or i0_syn_351 (i0_syn_352, i0_syn_342, i0_syn_350);
  or i0_syn_353 (i0_syn_354, i0_syn_316, i0_syn_318);
  or i0_syn_355 (i0_syn_356, i0_syn_322, i0_syn_324);
  or i0_syn_357 (i0_syn_358, i0_syn_320, i0_syn_356);
  or i0_syn_359 (i0_syn_360, i0_syn_354, i0_syn_358);
  or i0_syn_361 (i0_syn_362, i0_syn_326, i0_syn_328);
  or i0_syn_363 (i0_syn_364, i0_syn_332, i0_syn_334);
  or i0_syn_365 (i0_syn_366, i0_syn_330, i0_syn_364);
  or i0_syn_367 (i0_syn_368, i0_syn_362, i0_syn_366);
  or i0_syn_369 (i0_syn_370, i0_syn_360, i0_syn_368);
  or i0_syn_371 (i0_syn_372, i0_syn_352, i0_syn_370);

endmodule 

module add_pu7_pu7_o7
  (
  i0,
  i1,
  o
  );

  input [6:0] i0;
  input [6:0] i1;
  output [6:0] o;

  wire net_a0;
  wire net_b0;
  wire net_sum0;
  wire net_cout0;
  wire net_a1;
  wire net_b1;
  wire net_sum1;
  wire net_cout1;
  wire net_a2;
  wire net_b2;
  wire net_sum2;
  wire net_cout2;
  wire net_a3;
  wire net_b3;
  wire net_sum3;
  wire net_cout3;
  wire net_a4;
  wire net_b4;
  wire net_sum4;
  wire net_cout4;
  wire net_a5;
  wire net_b5;
  wire net_sum5;
  wire net_cout5;
  wire net_a6;
  wire net_b6;
  wire net_sum6;
  wire net_cout6;

  assign net_a6 = i0[6];
  assign net_a5 = i0[5];
  assign net_a4 = i0[4];
  assign net_a3 = i0[3];
  assign net_a2 = i0[2];
  assign net_a1 = i0[1];
  assign net_a0 = i0[0];
  assign net_b6 = i1[6];
  assign net_b5 = i1[5];
  assign net_b4 = i1[4];
  assign net_b3 = i1[3];
  assign net_b2 = i1[2];
  assign net_b1 = i1[1];
  assign net_b0 = i1[0];
  assign o[6] = net_sum6;
  assign o[5] = net_sum5;
  assign o[4] = net_sum4;
  assign o[3] = net_sum3;
  assign o[2] = net_sum2;
  assign o[1] = net_sum1;
  assign o[0] = net_sum0;
  AL_FADD al_636 (
    .a(net_a0),
    .b(net_b0),
    .c(1'b0),
    .cout(net_cout0),
    .sum(net_sum0));
  AL_FADD al_637 (
    .a(net_a1),
    .b(net_b1),
    .c(net_cout0),
    .cout(net_cout1),
    .sum(net_sum1));
  AL_FADD al_638 (
    .a(net_a2),
    .b(net_b2),
    .c(net_cout1),
    .cout(net_cout2),
    .sum(net_sum2));
  AL_FADD al_639 (
    .a(net_a3),
    .b(net_b3),
    .c(net_cout2),
    .cout(net_cout3),
    .sum(net_sum3));
  AL_FADD al_640 (
    .a(net_a4),
    .b(net_b4),
    .c(net_cout3),
    .cout(net_cout4),
    .sum(net_sum4));
  AL_FADD al_641 (
    .a(net_a5),
    .b(net_b5),
    .c(net_cout4),
    .cout(net_cout5),
    .sum(net_sum5));
  AL_FADD al_642 (
    .a(net_a6),
    .b(net_b6),
    .c(net_cout5),
    .cout(net_cout6),
    .sum(net_sum6));

endmodule 

module mult_u4_u3_o7
  (
  i0,
  i1,
  o
  );

  input [3:0] i0;
  input [2:0] i1;
  output [6:0] o;

  wire [3:0] al_468;
  wire [3:0] al_472;
  wire [3:0] al_476;
  wire [3:0] al_480;
  wire [3:0] al_484;
  wire [3:0] al_488;

  and al_492 (al_468[0], i0[0], i1[0]);
  and al_493 (al_468[1], i0[1], i1[0]);
  and al_494 (al_468[2], i0[2], i1[0]);
  and al_495 (al_468[3], i0[3], i1[0]);
  and al_496 (al_476[0], i0[0], i1[1]);
  and al_497 (al_476[1], i0[1], i1[1]);
  and al_498 (al_476[2], i0[2], i1[1]);
  and al_499 (al_476[3], i0[3], i1[1]);
  and al_500 (al_484[0], i0[0], i1[2]);
  and al_501 (al_484[1], i0[1], i1[2]);
  and al_502 (al_484[2], i0[2], i1[2]);
  and al_503 (al_484[3], i0[3], i1[2]);
  add_pu6_pu5_pu4_o7 al_543 (
    .i0({al_484[3],al_476[3],al_468}),
    .i1({al_484[2],al_476[2:0],1'b0}),
    .i2({al_484[1:0],2'b00}),
    .o(o));

endmodule 

module add_pu6_pu5_pu4_o7
  (
  i0,
  i1,
  i2,
  o
  );

  input [5:0] i0;
  input [4:0] i1;
  input [3:0] i2;
  output [6:0] o;

  wire [5:0] al_504;
  wire [5:0] al_510;
  wire [6:0] al_522;
  wire [6:0] al_529;

  assign o[6] = al_522[6];
  assign o[5] = al_522[5];
  assign o[4] = al_522[4];
  assign o[3] = al_522[3];
  assign o[2] = al_522[2];
  assign o[1] = al_522[1];
  assign o[0] = al_522[0];
  AL_FADD al_516 (
    .a(i1[0]),
    .b(i0[0]),
    .c(1'b0),
    .cout(al_510[0]),
    .sum(al_504[0]));
  AL_FADD al_517 (
    .a(i1[1]),
    .b(i0[1]),
    .c(al_510[0]),
    .cout(al_510[1]),
    .sum(al_504[1]));
  AL_FADD al_518 (
    .a(i1[2]),
    .b(i0[2]),
    .c(al_510[1]),
    .cout(al_510[2]),
    .sum(al_504[2]));
  AL_FADD al_519 (
    .a(i1[3]),
    .b(i0[3]),
    .c(al_510[2]),
    .cout(al_510[3]),
    .sum(al_504[3]));
  AL_FADD al_520 (
    .a(i1[4]),
    .b(i0[4]),
    .c(al_510[3]),
    .cout(al_510[4]),
    .sum(al_504[4]));
  AL_FADD al_521 (
    .a(1'b0),
    .b(i0[5]),
    .c(al_510[4]),
    .cout(al_510[5]),
    .sum(al_504[5]));
  AL_FADD al_536 (
    .a(i2[0]),
    .b(al_504[0]),
    .c(1'b0),
    .cout(al_529[0]),
    .sum(al_522[0]));
  AL_FADD al_537 (
    .a(i2[1]),
    .b(al_504[1]),
    .c(al_529[0]),
    .cout(al_529[1]),
    .sum(al_522[1]));
  AL_FADD al_538 (
    .a(i2[2]),
    .b(al_504[2]),
    .c(al_529[1]),
    .cout(al_529[2]),
    .sum(al_522[2]));
  AL_FADD al_539 (
    .a(i2[3]),
    .b(al_504[3]),
    .c(al_529[2]),
    .cout(al_529[3]),
    .sum(al_522[3]));
  AL_FADD al_540 (
    .a(1'b0),
    .b(al_504[4]),
    .c(al_529[3]),
    .cout(al_529[4]),
    .sum(al_522[4]));
  AL_FADD al_541 (
    .a(1'b0),
    .b(al_504[5]),
    .c(al_529[4]),
    .cout(al_529[5]),
    .sum(al_522[5]));
  AL_FADD al_542 (
    .a(1'b0),
    .b(al_510[5]),
    .c(al_529[5]),
    .cout(al_529[6]),
    .sum(al_522[6]));

endmodule 

