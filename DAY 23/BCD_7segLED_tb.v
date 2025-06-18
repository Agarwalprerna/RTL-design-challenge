module BCD_7segLED_tb;
reg [3:0] bcd ;
wire [6:0] led;

BCD_7segLED dut(bcd,led);
initial begin
    bcd = 4'b1111; #3;
    $display("%0t bcd = %0d -> LED= %b",$time,bcd,led);
    
     bcd = 4'b1001; #3;
    $display("%0t bcd = %0d -> LED= %b",$time,bcd,led);

     bcd = 4'b0011; #3;
    $display("%0t bcd = %0d -> LED= %b",$time,bcd,led);
    
    $finish;

end

endmodule
