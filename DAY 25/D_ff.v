module D_ff(input D , clk ,rst , output reg Q ,Qbar);
always @(posedge clk ) begin
    if(rst)begin
        Q <=0;
        Qbar<=1;
    end  
    else begin
        Q <= D;
        Qbar <= ~D;
    end
    end
endmodule
