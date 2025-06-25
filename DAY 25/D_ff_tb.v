module D_ff_tb();
reg D , clk,rst;
wire Qbar , Q;

D_ff dut(D, clk,rst, Q, Qbar);

always #5 clk =~clk;
initial clk =0;

initial begin

    $dumpfile("D_ff.vcd");
    $dumpvars(0,D_ff_tb);
    $display("in\tQ\t~Q");
    rst= 1; #5;   // flip flop set to reset condition 
    $display("%b\t%b\t%b",D,Q,Qbar);
    D = 1; #10;
    $display("%b\t%b\t%b",D,Q,Qbar);
    D = 0; #10;
    $display("%b\t%b\t%b",D,Q,Qbar);

end

endmodule

