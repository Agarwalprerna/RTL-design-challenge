module PIPOregister ( input [3:0] pi , clk ,rst, output [3:0] po);

// pi = parallel in
// po = parallel out  
D_ff D0 (pi[3] , clk  ,rst, po[3]);
D_ff D1 (pi[2] , clk  ,rst, po[2]);
D_ff D2 (pi[1] , clk  ,rst, po[1]);
D_ff D3 (pi[0], clk  ,rst, po[0]);

endmodule


module D_ff(input D , clk ,rst , output reg Q );
always @(posedge clk ) begin
    if(rst)begin
        Q <=0;
        
    end  
    else begin
        case(D)
        1'b0: Q = 1'b0;
         1'b1: Q = 1'b1;
endcase
    end
end

endmodule
