module Ripple_carry_tb;
reg [3:0] a,b;
reg Cin;
wire [3:0] sum;
wire Cout;

//instantiate the 4 bit ripple carry  adder module

Ripple_carry_adder dut(a ,b,Cin,sum,Cout);

initial begin
    a = 4'b0000; b=4'b0000;  Cin =0;
    #5;
    $display(" %0t  a = %d  b =%d   cin = %d sum = %d cout = %d" ,$time ,a,b,Cin, sum ,Cout);

    a = 4'b0001 ; b = 4'b1000 ; Cin = 1;
    $display(" %0t  a = %d  b =%d   cin = %d sum = %d cout = %d" ,$time ,a,b,Cin, sum ,Cout);
    #5;  
    a = 4'b1010 ; b = 4'b1011 ; Cin = 1;
    $display("%0t  a = %d  b =%d    cin = %d sum = %d cout = %d" ,$time,a,b,Cin, sum ,Cout);
    #5;  
    a = 4'b0111 ; b = 4'b1011 ; Cin = 0;
    $display(" %0t  a = %d  b =%d    cin = %d sum = %d cout = %d" ,$time ,a,b,Cin, sum ,Cout);
    #5;  
    a = 4'b0110 ; b = 4'b0010 ; Cin = 1;
    $display(" %0t  a = %d  b =%d    cin = %d sum = %d cout = %d" ,$time , a,b,Cin, sum ,Cout);
 

    $finish;
end

endmodule