module BCD_EX3_tb;
reg [3:0] BCD;
wire [3:0] y;

BCD_EX3 dut( BCD,y);

initial begin
    $display("BCD\tExcess3");

    for(integer i =0 ; i<9;i=i+1)begin
        BCD = i;
        #2;
        $display("%d - > %d",BCD ,y);
    end
    $finish;
end

endmodule