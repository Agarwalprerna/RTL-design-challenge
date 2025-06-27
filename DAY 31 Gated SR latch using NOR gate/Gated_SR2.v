module Gated_SR2( input S ,R,En, output Q, Qbar);

wire w1,w2;
and(w1,R,En);
and(w2, S,En);
nor(Q, w1,Qbar);
nor(Qbar, w2,Q);
endmodule
