module decoder_3x8_tb;
reg [2:0] in;
wire [7:0] y;

decoder_3x8 dut(in ,y);

initial begin

    $display(" t  abc  output");

     for( integer i =0 ; i<8;i=i+1) begin
        in = i;
        #2;
        $display(" %0t  %b  %b", $time , in,y);
     end
    
    $finish;
end
endmodule