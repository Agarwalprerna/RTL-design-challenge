// implement ABC + A'C' + D 

module boolean_func(input a ,b,c,d , output y );
     
     wire w1,w2,w3,w4 ,w5,w6 ;
     and(w1,a,b);
     and(w5,w1,c);
     not(w2,a);
     not(w3,c);
     and(w4,w3,w2);
     or(w6, w5,w4);
     or(y,w6,d);
endmodule
