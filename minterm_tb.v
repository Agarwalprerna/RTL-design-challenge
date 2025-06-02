module minterm_tb;
reg a ,b,c;
reg [2:0] in;
wire y1 ,y2 ;

//instantiate dataflow module
minterm_exp1 df (a ,b,c,y1);

//instantiate behavioral module
minterm_exp2 beh(in, y2);

initial begin
    $display("time\tABC\tdataflow\tbehavioral");
   
    
   //apply all inputs combinations (8 combination)
    for(integer i =0 ; i<8 ; i=i+1)begin
       {a,b,c} = i;
       in={a,b,c};
       
        #5; 
         $display("%0t\t%B%B%B\t %b\t %b",$time ,a,b,c,y1,y2);
    end
   $finish;
end
endmodule
