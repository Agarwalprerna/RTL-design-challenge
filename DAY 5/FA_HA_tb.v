module FA_HA_tb;
   reg a ,b,cin;
   wire sum ,cout;

   full_adder dut(a ,b,cin,sum,cout);

   initial begin
    $display("A B Cin |  SUM COUT ");

    for(integer i =0; i<8; i =i+1)begin
        {a ,b,cin} =i;
        #2;
        $display(" %b %b  %b | %b %b ", a,b,cin, sum,cout);
    end
    $finish;
   end
   endmodule