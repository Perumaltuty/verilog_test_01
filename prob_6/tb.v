
module tb;
  reg d,rst;
  reg clk=0;
  wire out,q;
d_ff dut( .d(d),.clk(clk),.rst(rst),.out(out),.q(q)); 
   always #5 clk = ~clk;
   initial begin
     rst=0;
       d=1;
     #5 rst=1;
     #5 d=1;
     #5 d=1;
     #5 rst =0;
     #5 d=0;
     #5 d=1;
     #5 rst=1;
   end
 endmodule
 
     
