`timescale 1ns/1ps
module Demux_8x1_tb;
reg in;
reg[2:0] sel;
wire[7:0] y;

Demux_8x1 dut( in , sel,y);

initial begin
     $display("t  in sel | y");
       
      $dumpfile("Demux_8x1.vcd");
     $dumpvars(0,Demux_8x1_tb);

      in=1 ; sel=3'b001 ; #3;
      $display("  %0t  %b  %b | %b",$time ,in ,sel ,y);

      in=1 ; sel=3'b101 ; #3;
      $display("  %0t  %b  %b | %b",$time ,in ,sel ,y);

      in=1 ; sel=3'b011 ; #3;
      $display("  %0t  %b  %b | %b",$time ,in ,sel ,y);
     
     in=1 ; sel=3'b111 ; #3;
      $display("  %0t  %b  %b | %b",$time ,in ,sel ,y);

      in=1 ; sel=3'b010 ; #3;
      $display("  %0t  %b  %b | %b",$time ,in ,sel ,y);
      
      $finish;
end
    
endmodule