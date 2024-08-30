module Sel_module
(
	RSTn, CLK, K1, K2, K3, K4, LED_Out, Player_Number, Timer_Start, Buzzer_Enable, Block_Sel
); 
	input CLK;
	input RSTn;
	input K1, K2, K3, K4; 
   input Block_Sel; // 从 Timer_module 获取 Block_Sel 信号
	output reg [3:0]LED_Out;
	output reg [3:0]Player_Number;
	output reg Timer_Start;
    output reg Buzzer_Enable;

	 	 
	reg Block; 	
	reg [24:0]Count = 'd0;

	always @ ( posedge CLK or negedge RSTn ) 
	begin 	
		if( !RSTn ) 
		begin 
			LED_Out <= 4'b0; //改成b0使得LED不会出现诡异的1010亮暗组合
			Block <= 0; 
			Timer_Start <= 0;			
			Count <= 'd0;	
			Player_Number <= 4'd10;	//最开始全部数码管都灭的效果	
			Buzzer_Enable <= 0;			
		end
		else if( RSTn == 1 )	//改成RSTn=1 主持人用一个键进行控制	
		begin
			if (!Block && !Block_Sel) // 如果没有抢答并且计时器未结束
            begin
            	LED_Out <= 4'b0; //改的不对记得删掉！
				Timer_Start <= 1;  // 主持人上播SW0开始倒计时。 
                Buzzer_Enable<=0;              
			end
			if( !Timer_Start ) 	// 抢答成功后停止计时，增加取反符号。
			begin
				if( Count == 25'd24_999_999 )
				begin
					Buzzer_Enable <= 0;		//改成Enable					
					Count <= Count;
				end
				else 
				begin
					Buzzer_Enable <= 1;	//改成Enable
					Count <= Count + 25'b1;
				end
			end
			
			if (!Block_Sel) // 计时器未结束时允许按键操作
			begin
				if( K1 && !Block ) 	
				begin 
					LED_Out <= 4'b0001;	
					Block <= 1; 
					Timer_Start <= 0;	// 有选手按下按钮之后，倒计时停止
					Player_Number <= 4'd1; 
					Buzzer_Enable <= 1; 
				end 
				else if( K2 && !Block ) 
				begin 
					LED_Out <= 4'b0010;
					Block <= 1;
					Timer_Start <= 0;
					Player_Number <= 4'd2;
					Buzzer_Enable <= 1;	
				end 		
				else if( K3 && !Block ) 
				begin 
					LED_Out <= 4'b0100;
					Block <= 1;
					Timer_Start <= 0; 
					Player_Number <= 4'd3;
					Buzzer_Enable <= 1;
				end 	 
				else if( K4 && !Block ) 
				begin 
					LED_Out <= 4'b1000;
					Block <= 1;
					Timer_Start <= 0;
					Player_Number <= 4'd4;	
					Buzzer_Enable <= 1;
				end 
			end
		end
	end 
endmodule
