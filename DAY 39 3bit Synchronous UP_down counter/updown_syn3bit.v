module updown_syn3bit( input clk , rst , m , output [2:0] q ,qbar);
wire w1,w2;
assign w1 = (m&q[0]) | ( ~m & qbar[0]) ;
assign w2 = ( m& q[1] &q[0]) | (~m &qbar[0] & qbar[1]);

JK_ff jk0 (1'b1 , 1'b1 , clk,rst, q[0] , qbar[0]);
JK_ff jk1 (w1, w1 , clk,rst, q[1] , qbar[1]);
JK_ff jk2 (w2 , w2 , clk,rst, q[2] , qbar[2]);

endmodule




module JK_ff( input J , K ,clk ,rst , output reg Q ,Qbar);
  always @(posedge clk) begin
    
    if(rst) begin
      Q <= 0 ;
      Qbar <=1;
    end
    
    else begin
      case({J,K})
        2'b00: {Q , Qbar} <= {Q , Qbar};
        2'b01: {Q , Qbar} <= {1'b0 , 1'b1};
        2'b10: {Q , Qbar} <= {1'b1 , 1'b0};
        2'b11: {Q , Qbar} <= {Qbar , Q};
        default : begin end
      endcase
    end
      
    end
    endmodule
