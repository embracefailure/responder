module Timer_module
(	
	RSTn, CLK, Timer_Start, TimerH, TimerL, Buzzer_TimeOver, LED_OverTime, Block_Sel,Change_Time,Set_Time//LED_Debug由于与流水灯共用了LED所以暂时去掉，本来留着也只是测试用。
); 
	input RSTn;
	input CLK; 
	input Timer_Start;
    input [7:0]Change_Time;
    input Set_Time;
	output reg [3:0]TimerH;
	output reg [3:0]TimerL;
	output reg Buzzer_TimeOver;
	output reg LED_OverTime;
	output reg Block_Sel;
   //output reg LED_Debug;

	reg count1 = 0;
	reg CLK1; 
	reg [24:0] Count;
	reg Block_Sel_Latched;  // 新增的寄存器用于锁存 Block_Sel 状态
	parameter T1S = 25'd25_000_000;		
	reg [7:0]ROM = 8'd9;//存新的倒计时的时间，默认9秒
    
   always @ (Set_Time)//Change->Set
   begin
   		if(Set_Time)
         begin
   			ROM <= Change_Time;
         end
   end
    
	always @ (posedge CLK or negedge Timer_Start) 
	begin 
		if (!Timer_Start)
			Count <= 0;				
		else if (Count == T1S - 25'b1)
		begin
			Count <= 0;
			CLK1 <= ~CLK1;		
		end
		else
			Count <= Count + 1;
	end

	always @ (posedge CLK1 or negedge RSTn)
	begin
		if (!RSTn)  		
		begin
			TimerH <= 4'd10; //改成d10 
			TimerL <= 4'd10; //改成d10 使得清零之后数码管灭。10->5看看能不能从5开始倒计时
			//Block_Sel_Latched <= 0;  // 复位时清零
		end
		else if (Timer_Start == 1) //开始倒计时，从9开始倒计时。		
		begin
        	if(TimerH == 4'd10 && TimerL == 4'd10)
            begin 
            		TimerH <= ROM/10;//d0改成Change_Time/10
					TimerL <= ROM%10;//d9改成Change_Time%10 不知道为什么这个不起作用，怎么改都是从9开始倒计时
            end
          else
            	begin
                if (TimerL == 4'd0) 
						begin
							if (TimerH == 4'd0)		
								begin
									TimerH <= TimerH;
									TimerL <= TimerL;
								end
							else 
								begin
									TimerH <= TimerH - 1'b1;
									TimerL <= 4'd9;
								end
						end
					else 
						TimerL <= TimerL - 1'b1;
             end
		end
	end
	
	always @ (posedge CLK1 or negedge RSTn)
	begin
		if (!RSTn)
		begin
			Buzzer_TimeOver <= 0;
			LED_OverTime <= 0;
			count1 <= 0;	
			Block_Sel_Latched <= 0;  // 确保复位时清零
		end
		else if (TimerH == 'd0 && TimerL == 'd1) 	
		begin
			if (count1 == 1'b1)
			begin
				Buzzer_TimeOver <= 0;
				LED_OverTime <= 0;
				count1 <= 0;
			end
			else 
			begin
				Buzzer_TimeOver <= 1;		
				LED_OverTime <= 1;			
				count1 <= count1 + 1'b1;
			end
			Block_Sel_Latched <= 1;  // 锁存 Block_Sel 状态
		end
		else
		begin
			Buzzer_TimeOver <= 0;
			LED_OverTime <= 0;
			count1 <= 0;	
		end
		Block_Sel <= Block_Sel_Latched;  // 将锁存状态赋值给 Block_Sel
       //LED_Debug <= Block_Sel;
	end	
endmodule
