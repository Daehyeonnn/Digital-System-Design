`timescale 1ns / 1ps

module tb_bcd_counter;

reg clk, reset, inc;
wire tc;
wire [3:0] Q;

bcd_counter uut(
    .clk(clk), 
    .reset(reset), 
    .inc(inc), 
    .tc(tc), 
    .Q(Q)
 );

always #1 clk = ~clk;

initial begin
clk = 0; reset = 1; inc = 0;
#2reset = 0;
#2 inc = 1; 
#200 inc = 0;
#20 inc = 1;
#200 $stop;

end

endmodule
