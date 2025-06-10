module RCA_tb;
 parameter N=6;

reg[N-1:0]a ,b;
reg cin;
wire[N-1:0] sum;
wire cout;

RCA #(N) dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $display("t\tA\tB\tCin\tsum\tCout");
    // for(integer i =0;i<5;i=i+1)begin
    //     cin = $random;
    //     a= $random;
    //     b=$random;
    //     #2;
    //     $display("%0t\t%b\t%b\t%b\t%b\t%b",$time,a,b,cin,sum,cout);
    // end
    
    // Test values
        a = 6'b000101;  // 5
        b = 6'b001011;  // 11
        cin = 1'b0;
        #10;
         $display("%0t\t%b\t%b\t%b\t%b\t%b",$time,a,b,cin,sum,cout);

    $finish;
end
endmodule
