module top_module (
    input wire [3:0] sw,
    output wire [7:0] segment,
    output wire AN0
);

wire AN0 = 1'b0;

 ss_decoder segment (
    .data(sw),
    .segment(segment)
 );


endmodule