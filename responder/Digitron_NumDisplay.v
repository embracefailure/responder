module Digitron_NumDisplay
(
	CLK, Set_Time,Player_Number, TimerH, TimerL, Digitron_Out, DigitronCS_Out,TimerH_Set ,
       TimerL_Set
);
	 input CLK;
     input Set_Time;
	 input [3:0]Player_Number;
	 input [3:0]TimerH;
	 input [3:0]TimerL;
     input [3:0]TimerH_Set;
     input [3:0]TimerL_Set;
	 output [7:0]Digitron_Out; 
	 output [3:0]DigitronCS_Out;
		

     parameter T1MS = 16'd50000;
	 reg [15:0]Count;
	 reg [1:0]cnt ;
	 
	 always @ ( posedge CLK )
		begin	
			 if( Count == T1MS )
			 begin
				  Count <= 16'd0 ;
				  if(cnt == 2'b10)
						cnt <= 2'b00;
				  else 
						cnt <= cnt + 1'b1;					

			 end
			 else
				Count <= Count+1'b1;					 
	    end
	 	
	 reg [3:0]W_DigitronCS_Out ;
			 
	 always@(cnt)
	 begin
			case (cnt)
			2'b00:
				W_DigitronCS_Out = 4'b1110 ;
			2'b01:
				W_DigitronCS_Out = 4'b1101 ;	
			2'b10:
				W_DigitronCS_Out = 4'b1011 ;				
			endcase
	 end
	 
	 reg [3:0]SingleNum;
	 reg [7:0]W_Digitron_Out;
	 parameter _0 = 8'b0011_1111, _1 = 8'b0000_0110, _2 = 8'b0101_1011,
			 	 _3 = 8'b0100_1111, _4 = 8'b0110_0110, _5 = 8'b0110_1101,
			 	 _6 = 8'b0111_1101, _7 = 8'b0000_0111, _8 = 8'b0111_1111,
				 _9 = 8'b0110_1111,_10 = 8'b0000_0000;//_10表示全灭，当RSTn为低电平时，数码管灭。
				 
	always @(W_DigitronCS_Out or Set_Time or TimerH or TimerL or TimerH_Set or TimerL_Set or Player_Number) begin
		case (W_DigitronCS_Out)
			4'b1110: SingleNum = Set_Time ? TimerL_Set : TimerL;    // Display TimerL_Set if Set_Time, else TimerL Set_Time ? TimerL_Set : TimerL; ->TimerL_Set
			4'b1101: SingleNum = Set_Time ? TimerH_Set : TimerH;   // Display TimerH_Set if Set_Time, else TimerH
			4'b1011: SingleNum = Player_Number;  // Always display Player_Number
		endcase

		case (SingleNum)
			0:  W_Digitron_Out = _0;
			1:  W_Digitron_Out = _1;
			2:  W_Digitron_Out = _2;
			3:  W_Digitron_Out = _3;
			4:  W_Digitron_Out = _4;
			5:  W_Digitron_Out = _5;
			6:  W_Digitron_Out = _6;
			7:  W_Digitron_Out = _7;
			8:  W_Digitron_Out = _8;
			9:  W_Digitron_Out = _9;
			default: W_Digitron_Out = _10;  // Turn off display
		endcase
	 end

	assign Digitron_Out = W_Digitron_Out;
	assign DigitronCS_Out = W_DigitronCS_Out;
endmodule