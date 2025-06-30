
module  mod5_asyncnt_tb;
reg j ,k ,clk , rst;
wire [2:0] q , qbar;

mod5_asyncnt dut( .j(j) , .k(k) , .clk(clk) , .rst(rst) , .q(q) , .qbar(qbar));
always #5 clk = ~clk;
initial clk = 0;

initial begin
rst= 1; j =1 ; k=1;
#10
rst = 0; j =1 ; k=1;
#50;
rst = 1; j =1 ; k =1;
#10;
 rst =0 ; j =1 ; k=1;
end
endmodule

