module sequence_detector_110110_tb;

  reg clk, reset, din;
  wire dout;

  sequence_decetor_110110 tb(
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout(dout)
  );

  initial begin
    clk = 0;
    reset = 1;
    din = 0;
    #10 reset = 0;
    #10 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 $stop;
  end

  always #5 clk = ~clk;

endmodule
