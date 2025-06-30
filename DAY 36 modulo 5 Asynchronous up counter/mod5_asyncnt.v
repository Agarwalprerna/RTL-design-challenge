module mod5_asyncnt( input clk ,rst,j ,k ,output [2:0] q , qbar);
wire x;


// upward counter and passing positve edge clock pulse 
//so do clk connection with Qbar of next flipflops


JK_ff jk0 ( .J(j) , .K(k) , .clk(clk) , .rst(x) , .Q(q[0]) , .Qbar(qbar[0]));

JK_ff jk1 ( .J(j) , .K(k) , .clk(qbar[0]) , .rst(x) , .Q(q[1]) , .Qbar(qbar[1]));

JK_ff jk2 ( .J(j) , .K(k) , .clk(qbar[1]) , .rst(x) , .Q(q[2]) , .Qbar(qbar[2]));

nand (x , q[0] , q[2]);


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
