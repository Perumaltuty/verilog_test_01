`timescale 1ns / 1ps
module tristate_bf_behav_tb;
  reg data_in;
  reg enable;
  wire data_out;
  tristate_bf_behav tb (
    .data_in(data_in),
    .enable(enable),
    .data_out(data_out)
  );
  reg clk = 0;
  always #5 clk = ~clk;
  initial begin
    enable = 1;
    data_in = 1;
    #10;
    if (data_out !== 1) $display("Error: Test case 1 failed");
    enable = 0;
    data_in = 0;
    #10;
    if (data_out !== 1'bz) $display("Error: Test case 2 failed");
    enable = 1;
    data_in = 0;
    #10;
    if (data_out !== 0) $display("Error: Test case 3 failed");
    $display("Test bench completed");
    $finish;
   end
  endmodule
