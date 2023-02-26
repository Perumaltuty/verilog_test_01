`timescale 1ns / 1ps


module tb_7;
  reg d,enable;
  reg clk=0;
  wire out,q;
d_flipflop dut( .d(d),.clk(clk),.enable(enable),.out(out),.q(q)); 
   always #5 clk = ~clk;
   initial begin
    enable=0;
       d=1;
     #5 enable=1;
     #5 d=1;
     #5 d=0;
     #5 enable =0;
     #5 d=0;
     #5 d=1;
     #5 enable=1;
     #5 d=0;
     
   end
 endmodule
 
     
