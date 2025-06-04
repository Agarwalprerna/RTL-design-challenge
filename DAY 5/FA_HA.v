//implementing full adder using 2 half adder

module half_adder(input a , b , output sum , carry);
     assign sum = a^b;
     assign carry = a&b;
      endmodule

//full adder using 2 half adders
module full_adder(input a ,b ,cin , output sum , cout);
   
   wire sum1 , c1,c2;

//instantiate first half adder
half_adder HA1 (a,b,sum1 , c1);

//instantiate second half adder
half_adder HA2(sum1 ,cin ,sum , c2);

//final carry 
assign cout = c1|c2;
endmodule