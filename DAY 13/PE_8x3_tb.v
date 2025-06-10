module PE_8x3_tb;
reg [7:0] in;
wire[2:0] y;

priority_encoder dut(in,y);

initial begin

    for(integer i =0; i<10;i=i+1)begin
        in = $random;
        #2;
        $display("in = %b   | output = %b",in,y);
    end
    $finish;
end
endmodule