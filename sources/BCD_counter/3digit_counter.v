module BCD_counter_3digit (
    input clk,
    input reset,
    input inc,
    output reg [3:0] Q0,  
    output reg [3:0] Q1, 
    output reg [3:0] Q2, 
    output tc
);

always @(posedge clk or negedge reset) begin
    if (reset) begin
        Q0 <= 4'd0;
        Q1 <= 4'd0;
        Q2 <= 4'd0;
    end else if (inc) begin
        if (Q0 == 4'd9) begin
            Q0 <= 4'd0;
            if (Q1 == 4'd9) begin
                Q1 <= 4'd0;
                if (Q2 == 4'd9)
                    Q2 <= 4'd0;
                else
                    Q2 <= Q2 + 1;
            end else begin
                Q1 <= Q1 + 1;
            end
        end else begin
            Q0 <= Q0 + 1;
        end
    end
end

assign tc = (Q0 == 4'd9) && (Q1 == 4'd9) && (Q2 == 4'd9) && inc;

endmodule