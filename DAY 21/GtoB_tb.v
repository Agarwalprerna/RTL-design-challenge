module GtoB_tb;
reg [4:0]G;
wire [4:0]B;

GtoB dut(G,B);

initial begin
    G=5'b10110 ; #2;
    $display("%b\n%b",G,B);
end
endmodule
