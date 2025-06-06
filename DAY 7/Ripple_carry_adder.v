//implementing 4 bit ripple carry adder using 4 -full adder

module full_adder(input a , b ,cin ,output sum ,cout);      // a is at position 1 similary b is at position 2 and so on 
    wire s1,c1,c2;
        xor(s1,a,b);
    xor(sum , s1,cin);
    and(c1,a,b);
    and(c2 , s1,cin);
    or(cout , c1,c2);
endmodule

module Ripple_carry_adder( 
    input [3:0] a ,b ,          // we have 4  fulladder that is why we took wire type input in vector form
    input cin ,
    output [3:0] sum,
    output cout);

   wire c0,c1,c2;
 
 //instantiate all 4 full adders
full_adder FA1( a[0], b[0] ,cin ,sum[0],c0);
full_adder FA2( a[1], b[1] ,c0 ,sum[1],c1);
full_adder FA3( a[2], b[2] ,c1 ,sum[2],c2);
full_adder FA4( a[3], b[3] ,c2 ,sum[3],cout);

   endmodule