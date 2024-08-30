module responder
(
	RSTn, CLK, Set_Time, Key_In, Sel_Time1,Sel_Time2,Sel_Time3,Sel_Time4,Sel_Time5,Sel_Time6,LED_Out, Buzzer_Out, LED_OverTime_Out, Digitron_Out, DigitronCS_Out,Key_Row,LED_Run
);
	 input RSTn;	//SW0
	 input CLK; 
	 input Set_Time;		//SW1
	 input [3:0]Key_In; 
    input Sel_Time1;
    input Sel_Time2;
    input Sel_Time3;
    input Sel_Time4;
    input Sel_Time5;
    input Sel_Time6;
	 output [3:0]LED_Out;
	 output Buzzer_Out;
	 output LED_OverTime_Out;		//LED7
	 output [7:0]Digitron_Out; 
	 output [3:0]DigitronCS_Out;
	 output [3:0]Key_Row;
	 output [3:0]LED_Run;
     
	 assign Key_Row =4'b0111 ;
	 
	 wire [3:0]Player_Number;
	 wire [3:0]TimerH;
	 wire [3:0]TimerL;
     wire [3:0]TimerH_Set;
     wire [3:0]TimerL_Set;
	 wire Buzzer_TimeOver;
	 wire Timer_Start;
     wire [3:0]Key_Out ;	
	 wire Block_Sel;
     wire Buzzer_Enable;
     wire Set_Time;//adjust countdown seconds
     wire [7:0]Change_Time;
	key_filter U5(
        .clk(CLK),
        .rstn(1'b1),
        .key_in(Key_In),
        .key_deb(Key_Out),
        .Set_Time(Set_Time) 
    );

	Sel_module U1
	(
		.RSTn( RSTn ) ,
		.CLK( CLK ) ,			
		.K1( Key_Out[0] ) ,	// input - from top	
		.K2( Key_Out[1] ) ,	// input - from top
		.K3( Key_Out[2] ) ,	// input - from top
		.K4( Key_Out[3] ) ,	// input - from top	       
		.LED_Out( LED_Out[3:0] ) ,	// output [3:0] - to top	
		.Player_Number( Player_Number ) ,	// output [3:0] - to U4	
		.Timer_Start( Timer_Start ), 	// output - to U2
        .Block_Sel(Block_Sel),
        .Buzzer_Enable(Buzzer_Enable)
	);

	Timer_module U2
	(
		.RSTn( RSTn ) ,	
		.CLK( CLK ) ,	
		.Timer_Start( Timer_Start ) ,		// input - from top	
		.TimerH( TimerH ) ,	// output [3:0] - to U4	
		.TimerL( TimerL ) ,	// output [3:0] - to U4	
		.Buzzer_TimeOver( Buzzer_TimeOver ) ,	// output - to U3	
		.LED_OverTime( LED_OverTime_Out ),	// output - to top 	
        .Block_Sel(Block_Sel),
        .Change_Time(Change_Time),
        .Set_Time(Set_Time)
	);

	Buzzer_module U3
	(
		.CLK( CLK ) ,	
		.RSTn( RSTn ) ,	
		.Buzzer_TimeOver( Buzzer_TimeOver ) ,	// input - from U2
		.Buzzer_Out( Buzzer_Out ) ,		// output - to top
        .Buzzer_Enable(Buzzer_Enable)
	);

	Digitron_NumDisplay U4
	(
		.CLK( CLK ) ,
		.Player_Number( Player_Number ) ,	// input [3:0] - from U1
		.TimerH( TimerH ) ,	// input [3:0] - from U2
		.TimerL( TimerL ) ,	// input [3:0] - from U2
		.Digitron_Out( Digitron_Out ) ,	// output - to top	
		.DigitronCS_Out( DigitronCS_Out ) ,	// output - to top	
        .TimerH_Set( TimerH_Set ),	
        .TimerL_Set( TimerL_Set ),
        .Set_Time(Set_Time)
	);

	led8_module U6
    (
        .CLK(CLK), 
        .RSTn(RSTn),
        .LED_Run(LED_Run),
        .Block_Sel(Block_Sel)
    );

    countdown_module U7 
    (
       .CLK(CLK),
       .RSTn(RSTn),
       .Set_Time(Set_Time),
       .Change_Time(Change_Time),
       .TimerH_Set( TimerH_Set ),	// output [3:0] - to U4	
       .TimerL_Set( TimerL_Set ),
       .Sel_Time1(Sel_Time1),
       .Sel_Time2(Sel_Time2),
       .Sel_Time3(Sel_Time3),
       .Sel_Time4(Sel_Time4),
       .Sel_Time5(Sel_Time5),
       .Sel_Time6(Sel_Time6)
        
    );
     
endmodule 