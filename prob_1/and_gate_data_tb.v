`timescale 1ns / 1ps
module and_gate_tb;
   reg A;
   reg B;
     wire C;
    and_gate tb (
      .A(A),
      .B(B),
      .C(C)
   );
   initial begin
 
      A = 0; B = 0;
      #10;
      if (C !== 0) $display("Test case 1 failed");
        A = 0; B = 1;
      #10;
      if (C !== 0) $display("Test case 2 failed");
       A = 1; B = 0;
      #10;
      if (C !== 0) $display("Test case 3 failed");
      A = 1; B = 1;
      #10;
      if (C !== 1) $display("Test case 4 failed"); 
      $display("All test cases passed");
      $finish;
   end
   
endmodule
