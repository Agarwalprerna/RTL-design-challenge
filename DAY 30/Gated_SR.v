module Gated_SR( input S ,R, EN , output  Q , Qbar);

wire w1,w2;
nand(w1, S,EN);
nand(w2,R,EN);
nand(Q, w1, Qbar);
nand(Qbar, w2,Q);
endmodule
