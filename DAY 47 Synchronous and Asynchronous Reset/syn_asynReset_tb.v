
module syn_asynReset_tb;
reg clk ,rst,D;
wire asyn_q , syn_q ;

syn_asynReset dut(clk ,rst, D ,syn_q , asyn_q);

initial forever #5 clk = ~clk;
initial forever #15 rst = ~rst;
initial begin
clk =0; rst =0 ; D =0;

 // Start simulation
        #10 D = 1;

       // #15 rst = 1;   // Assert reset
        //#20 rst = 0;   // Deassert reset

        #30 D = 0;
        #20 D = 1;
       // #30 rst = 1;   // Reset again
        //#10 rst = 0;

$finish;
end

endmodule

