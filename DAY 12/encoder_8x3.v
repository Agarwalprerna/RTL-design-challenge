module encoder_8x3(input [7:0] in , output reg [2:0] y);
   always @(*) begin
    case(in)
         8'b00000000: y = 3'b000;
         8'b00000010: y = 3'b001;
         8'b00000100: y = 3'b010;
         8'b00001000: y = 3'b011;
         8'b00010000: y = 3'b100;
         8'b00100000: y = 3'b101;
         8'b01000000: y = 3'b110;
         8'b10000000: y = 3'b111;
         default : y = 3'bxxx;
    endcase
   end
   endmodule

   //other way to define encoder  (dataflow modeeling)

//    module encoder_8x3( input[7:0] in , output [2:0] y);
//       assign y = in[0] ? 3'b000:
//                   in[1] ? 3'b001:
//                   in[2] ? 3'b010:
//                   in[3] ? 3'b111:
//                   in[4] ? 3'b100:
//                   in[5] ? 3'b101:
//                   in[6] ? 3'b110:
//                   in[7] ? 3'b111: 3'bxxx;
// endmodule

          
        