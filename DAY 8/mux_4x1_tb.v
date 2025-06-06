module mux_4x1_tb;
reg[3:0] in ;
reg[1:0] sel;
wire y;

mux_4x1 dut(in ,sel,y);
    initial begin
    $display("t  i0 i1 i2 i3 sel | y ");
    
    in = 4'b0000 ; sel =00;
     #2;
    $display("%0t  %b %B %b %b %b | %b", $time , in[0], in[1], in[2], in[3] ,sel,y);
    in = 4'b0101; sel = 11;#2;
    $display("%0t  %b %B %b %b %b | %b", $time , in[0], in[1], in[2], in[3] ,sel,y);
    in = 4'b1110; sel= 10 ; #2;
    $display("%0t  %b %B %b %b %b | %b", $time , in[0], in[1], in[2], in[3] ,sel,y);
    
    $finish;
end
endmodule
