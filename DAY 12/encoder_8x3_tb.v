module encoder_8x3_tb;
reg[7:0] in;
wire [2:0] y;

encoder_8x3 dut(in,y);

initial begin
    $display("input    |   output");
    in=8'b10001000 ;#2;
    $display(" %b           %b ", in , y);

    in= 8'b00000100 ; #2;
    $display(" %b           %b",in,y);
 
    $finish;
end

endmodule