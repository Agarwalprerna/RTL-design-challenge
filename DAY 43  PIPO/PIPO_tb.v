module PIPO_tb;

reg [3:0] pi;
reg clk , rst;
wire [3:0] po ;

PIPOregister dut( pi , clk ,rst,po);

always #5 clk = ~clk;
initial clk =0;

initial begin
rst =1;
#10;
rst =0;
//pass the data serially
pi = 1111;
#10;
pi = 1010;
#10;
pi = 1101;
#10;
pi = 0010;
#10;
$finish;
end
endmodule
