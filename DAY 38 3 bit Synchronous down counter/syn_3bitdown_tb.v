module syn_3bitdown_tb;
reg clk ,rst;
wire [2:0] q, qbar;

syn_3bitdown dut(clk , rst,q ,qbar);
always #5 clk = ~clk;
initial clk =0;

initial begin
rst =1;
#10;
rst =0;
#100;
$finish;
end
endmodule


