module tb_2;
  reg rst_n;
  reg d;
  reg clk= 0;
  d_negedge_ff dut(.rst_n(rst_n), .d(d), .clk(clk), .q(q));
   always #5 clk=~clk;
  initial begin
    rst_n=0;
    d=0;
    #5 rst_n=1;
    d=1;
    #5 d=0;
    #5 d=1;
    #5 rst_n =1;
  end
endmodule
  
