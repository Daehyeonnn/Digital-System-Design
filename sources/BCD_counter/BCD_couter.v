`timescale 1ns / 1ps
    module bcd_counter(
    input clk, 
    input inc,
    input reset, 
    output reg [3:0] Q, 
    output tc
);
    
always@(posedge clk or negedge reset) begin
    if(reset)
        Q <= 4'b0000;
    else if(inc)
        Q<=Q+1;
    if(Q == 4'd9)
        Q <= 4'd0;
end

assign tc = (Q==4'd9)&inc;
   
endmodule

