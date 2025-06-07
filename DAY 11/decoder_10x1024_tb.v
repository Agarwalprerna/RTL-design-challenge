module decoder_10x1024_tb;
reg [9:0]in;
wire [1023:0] y;
reg En;

decoder_10x1024 dut( in , En,y);

initial begin
    // y=1024'd0;
    $display(" EN  in    output");

    En = 1'b0; in= 10'd3 ; #2;
    $display(" %b   %b   %0d", En , in, y);

    En = 1'b1 ; in = 10'd2 ; #2;
    $display(" %b   %b   %0d", En , in, y);

    En = 1'b1 ; in = 10'd3 ; #2;
    $display(" %b   %b   %0d", En , in, y);
    
    $finish;
end
endmodule