module SISO_tb;
reg clk , si , rst;
wire so ;

SISOregister dut(si, clk ,rst,so);

always #5 clk = ~clk;
initial clk =0;

initial begin
rst =1;
#10;
rst =0;
//pass the data serially
si =1;
#5;
si =0;
#10
si =1;
#5;
si =1;
#10
$finish;
end
endmodule

