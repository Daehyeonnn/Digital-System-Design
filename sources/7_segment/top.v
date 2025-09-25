module top_module (
    input wire [3:0] sw,
    output wire [7:0] segment,
    output wire AN0
);

assign AN0 = 1'b0;

 ss_decoder decoder_U0 (
    .data(sw),
    .segment(segment)
 );


endmodule