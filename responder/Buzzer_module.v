module Buzzer_module
(
	CLK, RSTn, Buzzer_TimeOver, Buzzer_Out,Buzzer_Enable
);
	 input CLK;
	 input RSTn;
	 input Buzzer_TimeOver;
    input Buzzer_Enable;
 	 output Buzzer_Out;

	 parameter _Answer = 17'd95419, _TimeOver = 17'd50607;
	
    reg [22:0]Count;
    reg [22:0]Pulse_x;
	 reg W_buzzer;
	
   always @ ( posedge CLK )
		begin
        if(Buzzer_Enable == 1 | Buzzer_TimeOver == 1 )
        begin
			if( Buzzer_Enable == 1) 
				Pulse_x <= _Answer;
			else if( Buzzer_TimeOver == 1 )
				Pulse_x <= _TimeOver;
			else 
				Pulse_x <= 'd20000;
        end
        else 
        	Pulse_x <='d0; 
        
		end
		
   always @ ( posedge CLK )
		begin			
			if( Pulse_x != 'd0 && (Pulse_x == _Answer || Pulse_x == _TimeOver))
				begin
					if( Count == Pulse_x )
						begin
							Count <= 23'd0;
							W_buzzer <= ~W_buzzer;
						end
					else 
						Count <= Count + 1'b1;
				end
			else 
				begin
					W_buzzer <= 1'b1;
					Count <= 23'd0;
				end
		end	
		
	 assign Buzzer_Out = W_buzzer;
	
endmodule
