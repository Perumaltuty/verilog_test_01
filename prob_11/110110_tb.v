module sequence_detector_mealy_overlap_110110_tb;
reg clk, rst, din;
wire dout;

sequence_detector_mealy_overlap_110110 tb(
    .clk(clk),
    .rst(rst),
    .din(din),
    .dout(dout)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    din = 0;
    #10 rst = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #100 $finish;
end

always @(posedge clk)
begin
    $display("state=%d din=%d dout=%d", dut.state, din, dout);
end

endmodule
