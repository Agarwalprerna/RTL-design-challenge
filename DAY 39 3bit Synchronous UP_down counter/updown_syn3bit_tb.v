module updown_syn3bit_tb;
reg clk ,rst,m;
wire [2:0] q ,qbar;

updown_syn3bit dut(clk ,rst,m,q,qbar);
always #5 clk = ~clk;
initial clk = 0;

initial begin
rst = 1;
#10;
rst =0; m=0;   //down counter 
#70;
rst =0 ; m=1;  //up counter
#200;
$finish;
end

endmodule


