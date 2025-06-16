module BtoG_tb;
reg [5:0] B;
wire [5:0] G;
 
 BtoG dut(B,G);

 initial begin
    B=6'b010010 ; #5;
    $display("%b\n%b",B,G);
 end
endmodule
