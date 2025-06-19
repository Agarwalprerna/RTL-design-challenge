module EvenParity #(parameter N =4 )(
    input [N-1:0] data,
    output wire paritybit
);

assign paritybit = (^data) ;  //invert of reduction xor of data to check total counts in data =1s

endmodule