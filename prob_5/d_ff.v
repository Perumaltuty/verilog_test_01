`timescale 1ns / 1ps
module d_ff(clk, d, q);
  input clk, d;
  output q;
  reg q;

  always @(posedge clk) begin
    q <= d;
  end

endmodule

