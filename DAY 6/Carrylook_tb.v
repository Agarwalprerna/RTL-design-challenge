module Carrylook_tb;
     reg[3:0] A ,B;
     reg cin;
     wire[3:0] sum;
     wire cout;

CLA dut( A , B , sum , cout,cin);

initial begin
    //test cases
    A = 4'b0100 ; B =4'b0111 ;cin =0;
    #2;
    $display(" %0t  a=%d b = %d  cin = %d  | sum = %d cout=%d",$time , A,B,cin ,sum,cout);

    A = 4'b1000 ; B =4'b1100 ;cin =1;
    #2;
    $display(" %0t  a=%d b = %d  cin = %d  | sum = %d cout=%d",$time , A,B,cin ,sum,cout);

     A = 4'b0101 ; B =4'b0110 ;cin =0;
    #2;
    $display(" %0t  a=%d b = %d  cin = %d  | sum = %d cout=%d",$time , A,B,cin ,sum,cout);

     A = 4'b1101 ; B =4'b1111 ;cin =1;
    #2;
    $display(" %0t  a=%d b = %d  cin = %d  | sum = %d cout=%d",$time , A,B,cin ,sum,cout);

    $finish; 
end

endmodule
