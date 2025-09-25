module ss_decoder (
    input wire [3:0] data,
    output reg [7:0] segment
);

always @(data) begin
    case(data) 
    4'd0 : begin // 0
        segment = 8'b1100_0000;
    end
    4'd1 : begin // 1
        segment = 8'b1111_1001;
    end
    4'd2 : begin // 2
        segment = 8'b1010_0100;
    end
    4'd3 : begin // 3
        segment = 8'1011_0000;
    end
    4'd4 : begin // 4
        segment = 8'b1001_1001;
    end
    4'd5 : begin // 5
        segment = 8'b1001_0010;
    end
    4'd6 : begin // 6
        segment = 8'b1000_0010;
    end
    4'd7 : begin // 7
        segment = 8'b1111_1000;
    end
    4'd8 : begin // 8
        segment = 8'b1000_0000;
    end
    4'd9 : begin // 9
        segment = 8'b1001_0000;
    end
    4'd10 : begin // A
        segment = 8'b1000_1000;
    end
    4'd11 : begin // B
        segment = 8'b1000_0011;
    end
    4'd12 : begin // C
        segment = 8'b1100_0110;
    end
    4'd13 : begin // D
        segment = 8'b1010_0001;
    end
    4'd14 : begin // E
        segment = 8'b1000_0110;
    end
    4'd15 : begin // F
        segment = 8'b1000_1110;
    end
    
    default : segment = 8'b1111_1111; // 잘못 입력시 LED off

    endcase
end

endmodule