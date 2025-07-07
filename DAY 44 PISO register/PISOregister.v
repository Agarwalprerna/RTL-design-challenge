module PISOregister ( 
input clk , 
input rst , 
input [3:0] pi , 
input sel,
output so);

 wire [5:0] w;

D_ff d0 ( pi[3] , clk ,rst, w[5]);
mux_2x1 M1 ( w[5] , pi[2] , sel , w[4]);

D_ff d1 ( w[4] , clk ,rst, w[3]);
mux_2x1 M2 ( w[3] , pi[1] , sel , w[2]);
D_ff d2 ( w[2] , clk ,rst, w[1]);
mux_2x1 M3 (w[1] , pi[0] , sel , w[0]);
D_ff d3 ( w[0] , clk ,rst, so);

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

module mux_2x1 (input  i0 ,i1,sel ,output reg y);

always @(*) begin 
    case(sel)
    1'b0 : y = i0;
    1'b1 : y =i1;
    default: $display("invlaid input");
    endcase
end

endmodule
 



