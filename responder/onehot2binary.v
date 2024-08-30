module onehot2binary(CLK,onehot,binary);

    input CLK;
    input [3:0] onehot;
    output reg [3:0] binary;
   
    always@(posedge CLK) //如果没有按键按下 onehot不动,则输出数据保持
        case(onehot) 
            4'b0001 : binary <= 4'b0001;
            4'b0010 : binary <= 4'b0010;
            4'b0100 : binary <= 4'b0100;
            4'b1000 : binary <= 4'b1000;
        endcase

endmodule
