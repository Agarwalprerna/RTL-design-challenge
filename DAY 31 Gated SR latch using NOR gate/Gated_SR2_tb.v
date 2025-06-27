module Gated_SR2_tb;
reg R,S,EN;
wire  Q , Qbar;

Gated_SR2 dut(R,S, EN,Q,Qbar);

initial begin
$display("En\tS\tR\tQ\t~Q");
//EN = 0;
//S = 1; R =0;
//$display("%b\t%b\t%b\t%b\t%b" , EN , S ,R ,Q,Qbar);
EN =1;
S = 0; R=0;
#10;
$display("%b\t%b\t%b\t%b\t%b" , EN , S ,R ,Q,Qbar);
S= 0; R =1;
#10;

$display("%b\t%b\t%b\t%b\t%b" , EN , S ,R ,Q,Qbar);
S= 1; R =1;
$display("%b\t%b\t%b\t%b\t%b" , EN , S ,R ,Q,Qbar);
$finish;
end

endmodule