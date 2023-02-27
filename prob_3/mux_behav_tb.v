module mux_behav_tb;
   reg a, c, sel;
   wire b;
   mux_behav tb(.a(a), .b(b), .sel(sel), .c(c));
   initial begin
      a = 1; c = 0; sel = 0;
      #10;
      if (b !== 0) $display("Test 1 failed");
      a = 1; c = 0; sel = 1;
      #10;
      if (b !== 1) $display("Test 2 failed");
      $display("All tests passed!");
      $finish;
   end
endmodule
