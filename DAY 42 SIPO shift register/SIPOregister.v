module SIPOregister ( input si , clk ,rst, output [3:0] po);
wire [2:0] w;

//si -> serial in
//so -> serial out 
D_ff D0 (si , clk  ,rst, w[2]);
D_ff D1 (w[2] , clk  ,rst, w[1]);
D_ff D2 (w[1] , clk  ,rst, w[0]);
D_ff D3 (w[0], clk  ,rst, po[0]);
assign po [3:1] = w[2:0];
endmodule


module D_ff(input D , clk ,rst , output reg Q );
always @(posedge clk ) begin
    if(rst)begin
        Q <=0;
        
    end  
    else begin
        Q <= D;
    end
end

endmodule
