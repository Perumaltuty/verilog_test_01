`timescale 1ns / 1ps
module mux_behav(input a, c, sel, output reg b);
   always @(a, c, sel)
      if (sel == 0)
         b = a;
      else
         b = c;
endmodule
