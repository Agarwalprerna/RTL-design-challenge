// implementing minterm exmaple 

//data flow modelling
module minterm_exp1(input a ,b,c , output y1);
    assign y1 = (~a & ~b & ~c) | (~a & b &c)|(a &~b &c) | ( a & ~b &~c ) | (a & b & ~c);
    //y = minterms(0,3,4,5,6)

endmodule


// behavioral modelling
module minterm_exp2( input [2:0] in , output  y2);
    
    always @(*) begin
        //using case statement 
        case(in)
            3'b000: y2 =1;
            3'b011: y2 =1;
            3'b100: y2 =1;
            3'b101: y2 =1;
            3'b110: y2=1;
            default: y2=0;

        endcase
    end
    endmodule


