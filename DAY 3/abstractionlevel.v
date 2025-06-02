// implemting all levels of abstraction to design half adder

// data flow modelling

module half_adder(input a ,b, output S ,C);
    assign S = a^b;
    assign C = a &b;
endmodule

//behavioural modelling

module half_adder( input  a ,b , output reg S ,C);
     always @(*) begin
        S = a^b;
        C = a&b;
     end
endmodule


// structural modelling
module half_adder (
    input a, b,
    output sum, carry
);

  // Instantiate XOR gate for sum
  xor G1(sum, a, b);

  // Instantiate AND gate for carry
  and G2(carry, a, b);

endmodule



///////////////////////////////////  FULL ADDER ////////////////

// dataflow modelling
module full_adder(input a ,b,cin , output Sum , Cout);
     assign Sum= a^b^cin;
     assign Cout =  (a&b) | (b&cin) | (cin&a);
     endmodule


// behavioural 
module full_adder( input a , b,cin, output reg Sum , Cout);
   always @(*) begin
      Sum = a^b^cin;
      Cout = (a&b) | ((a^b)& cin);
    
   end    
   endmodule

//  gate level 
module full_adder(input a ,b,cin , output Sum , Cout);
wire s1,w1,w2;
    //sum logic
     xor(s1 , a,b);
     xor(Sum , s1,cin);
     
     //carry logic
     and(w1 , s1,cin);
     and(w2,a,b);
     or(Cout ,w2,w1);

     endmodule

// structural modelling
module full_adder(input a ,b,cin , output Sum , Cout);
wire s1,w1,w2;
    //sum logic
    //instantiate xor primitive
     xor  x1(s1 , a,b);
     xor   x2(Sum , s1,cin);
     
     //carry logic
     and  and1(w1 , s1,cin);
     and  and2(w2,a,b);
     or  u1(Cout ,w2,w1);

endmodule