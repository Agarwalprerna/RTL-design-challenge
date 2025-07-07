module PISO_tb;
reg clk ,rst , sel;
reg [3:0] pi;
wire so;

PISOregister dut(clk , rst, pi , sel ,so);
  
always #5 clk = ~clk;
initial clk =0;

initial begin
rst =1;
#10;
rst =0;
sel =1;
pi = 4'b1101;
#10;
sel =1;
pi = 4'b1010;
#10;
rst =1;
$finish;
end
endmodule

