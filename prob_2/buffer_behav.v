`timescale 1ns / 1ps
module buffer_behav(input a, output reg c);
   always @(a)
      c = a;
endmodule
