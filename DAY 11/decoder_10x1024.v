module decoder_10x1024( input[9:0] in , input enable, output [1023:0] y );

// Behavioral assignment for the decoder logic:
    // If 'enable' is high (1), the output 'decode_out' will be a one-hot vector
    // where the bit at the index specified by 'select' is high (1'b1),
    // and all other bits are low.
    //
    // The expression (1'b1 << select) performs a left-shift operation:
    // It takes a 1-bit value '1' and shifts it left by 'select' positions.
    // For example:
    // - If select = 0, (1'b1 << 0) = 1024'b...0001 (only decode_out[0] is high)
    // - If select = 1, (1'b1 << 1) = 1024'b...0010 (only decode_out[1] is high)
    // - If select = 1023 (10'b11_1111_1111), (1'b1 << 1023) will have decode_out[1023] high
    //
    // If 'enable' is low (0), the output 'decode_out' will be an all-zeros vector (1024'b0).


    assign y = enable ? (1024'b1 << in): 1024'b0;
    endmodule
   
