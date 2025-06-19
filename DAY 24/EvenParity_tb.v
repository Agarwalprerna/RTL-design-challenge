module EvenParity_tb;
parameter N=4;

reg [N-1:0] in;
wire y;

EvenParity #(N) dut (in,y);

initial begin
    $display("time\tdata\tParity");

    for(integer i =0 ; i<10;i=i+1)begin
        in =i;
        #3;
        $display(" %0t\t%b\t%b",$time ,in,y);
    end
    $finish;
end
endmodule