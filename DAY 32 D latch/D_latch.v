module D_latch( input D , En , output Q , Qbar);

wire w1, w2 , Dn;
not(Dn ,D);
nand(w1 , D , En);
nand(w2, Dn ,En);
nand(Q , w1 , Qbar);
nand(Qbar , w2,Q);

endmodule
