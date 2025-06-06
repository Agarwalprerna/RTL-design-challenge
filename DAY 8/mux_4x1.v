module mux_4x1( input [3:0] in ,
 input [1:0] sel ,
  output reg y);
    
    always @(*) begin
        case(sel)
        4'b00 : y=in[0];
        4'b01 : y=in[1];
        4'b10: y =in[2];
        4'b11: y=in[3];
        
         default: $display("invalid input");
        endcase
    end

    endmodule