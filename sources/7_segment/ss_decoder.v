module ss_decoder (
    input wire [3:0] data,
    output reg [7:0] segment
);

always @(Data) begin
    case(data) 
    4'd0 : begin // 0
        segment = 8'b1111_1101;
    end
    4'd1 : begin // 1
        segment = 8'b0110_0001;
    end
    4'd2 : begin // 2
        segment = 8'b1101_1011;
    end
    4'd3 : begin // 3
        segment = 8'b1111_0011;
    end
    4'd4 : begin // 4
        segment = 8'b0110_0111;
    end
    4'd5 : begin // 5
        segment = 8'b1011_0110;
    end
    4'd6 : begin // 6
        segment = 8'b1011_1110;
    end
    4'd7 : begin // 7
        segment = 8'b1110_0000;
    end
    4'd8 : begin // 8
        segment = 8'b1111_1110;
    end
    4'd9 : begin // 9
        segment = 8'b1111_0110;
    end
    // 4'd10 : begin // A
    //     segment = 8'b1110_1111;
    // end
    endcase
end

endmodule