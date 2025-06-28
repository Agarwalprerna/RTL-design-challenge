module D_latch_tb;

reg D ,En;
wire Q , Qbar;

D_latch dut(D, En, Q, Qbar);

initial begin
$display("En\tD\tQ\tQbar");

En = 0 ; D = 0;
$display("%b\t%b\t%b\t%b" , En ,D,Q,Qbar);

En=1;
#5;
$display("%b\t%b\t%b\t%b" , En ,D,Q,Qbar);

D=0;
#5;
$display("%b\t%b\t%b\t%b" , En ,D,Q,Qbar);

D=1;
#5;
$display("%b\t%b\t%b\t%b" , En ,D,Q,Qbar);

$finish;

end
endmodule
