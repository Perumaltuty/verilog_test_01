module D_latch_en (en, d, q);
  input en, d;
  output q;
  reg q;

  always @(en, d) begin
    if (en) begin
      q <= d;
    end
  end

endmodule
