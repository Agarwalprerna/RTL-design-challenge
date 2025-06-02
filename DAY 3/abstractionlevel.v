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


