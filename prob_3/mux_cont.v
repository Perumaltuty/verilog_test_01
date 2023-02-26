`timescale 1ns / 1ps
module mux_cont(input a, c, sel, output b);
   assign b = (sel == 0) ? a : c;
endmodule

