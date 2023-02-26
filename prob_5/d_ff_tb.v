`timescale 1ns / 1ps
module d_ff_tb;
  reg clk, d;
  wire q;
  d_ff tb(
    .clk(clk),
    .d(d),
    .q(q)
  );
  always #5 clk = ~clk;
  initial begin
    d = 0;
    clk = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10 $finish;
  end
endmodule
