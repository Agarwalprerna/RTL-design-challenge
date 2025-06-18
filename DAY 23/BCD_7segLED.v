module BCD_7segLED( input [3:0] BCD , output reg [6:0] led);
always @(BCD) begin
    case(BCD)
    4'b0000 : led = 7'b1111110;
    4'b0001 : led =7'b0110000;
    4'b0010 : led = 7'b1101101;
    4'b0011 : led =7'b1111001;
    4'b0100 : led = 7'b0110011;
    4'b0101 : led = 7'b1011011;
    4'b0110 : led =7'b0011111;
    4'b0111 : led =7'b1110000;
    4'b1000 : led =7'b1111111;
    4'b1001 : led =7'b1110011;
    default: led = 7'd0;
    endcase

end
endmodule