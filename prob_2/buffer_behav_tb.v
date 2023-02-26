`timescale 1ns / 1ps
module buffer_behav_tb;
  reg a;
   wire c;
   buffer_behav tb (.a(a), .c(c));
   initial begin
      a = 0;
      #5;
      if (c !== 0) begin
         $display("Test Case 1 Failed");
      end
      a = 1;
      #5;
      if (c !== 1) begin
         $display("Test Case 2 Failed");
              end
               $display("All Test case Passed");
      $finish;
   end
   
endmodule
