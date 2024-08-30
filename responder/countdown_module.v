module countdown_module(
    CLK,
    RSTn,
    Set_Time,
    Change_Time,
    TimerH_Set,
    TimerL_Set,
    Sel_Time1,
    Sel_Time2,
    Sel_Time3,
    Sel_Time4,
    Sel_Time5,
    Sel_Time6
);

    input CLK;
    input RSTn;
    input Set_Time;
    input Sel_Time1,Sel_Time2,Sel_Time3,Sel_Time4,Sel_Time5,Sel_Time6; 
    output [7:0] Change_Time;
    output reg [3:0] TimerH_Set;
    output reg [3:0] TimerL_Set;
    reg [7:0] temp_time = 8'd9;
    always @(posedge Set_Time or posedge Sel_Time1 or posedge Sel_Time2 or posedge Sel_Time3 or posedge Sel_Time4 or posedge Sel_Time5 or posedge Sel_Time6) begin
            // 在设置时间时，使用初始值或保持现有值
            //temp_time <= 8'd9;
            if (Sel_Time1) begin
            temp_time <= 8'd19;
        end else if (Sel_Time2) begin
            temp_time <= 8'd29;
        end
        else if(Sel_Time3)begin
        	temp_time <= 8'd39;
            end
        else if(Sel_Time4)begin
        temp_time <= 8'd49;
        end
        else if(Sel_Time5)begin
        temp_time <= 8'd59;
        end
        else if(Sel_Time6)begin
        temp_time <= 8'd69;
        end
        else
        begin
        temp_time <=8'd9;
        end
        TimerH_Set <= temp_time / 10;  // 计算十位
        TimerL_Set <= temp_time % 10;  // 计算个位
    end
    assign Change_Time = TimerH_Set * 10 + TimerL_Set;
endmodule
