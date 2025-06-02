//include "full_adder.v"            //load the file where full_adder code is written

//Top level module is testbech code which can not be instantiated itself but can contain all other modules 
module Full_adder_tb;
reg a ,b,Cin ;
 wire sum ,Cout;


//creating module instance  of full_adder file with name FA
        full_adder FA(  a ,b ,Cin ,sum ,Cout);     //same naming as in full_adder.v file

 initial begin
    $monitor("a=%b, b=%b, cin=%b -> sum=%b, cout=%b", a, b, Cin, sum, Cout);
    
    // Test cases
    a = 0; b = 0; Cin = 0; #10;
    a = 0; b = 1; Cin = 0; #10;
    a = 1; b = 0; Cin = 1; #10;
    a = 1; b = 1; Cin = 1; #10;

    $finish;
end
endmodule
