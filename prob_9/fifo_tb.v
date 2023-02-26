`timescale 1ns / 1ps
module fifo_tb;
  reg clk=0;
  reg rst;
  reg wr_en;
  reg rd_en;
  reg [31:0] wr_data;
  wire [31:0] rd_data;
  wire empty;
  wire full;
  fifo dut (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .wr_data(wr_data),
    .rd_data(rd_data),
    .empty(empty),
    .full(full)
  );
  always #5 clk = ~clk;
  initial begin
 
    rst = 1;
    #10;
    rst = 0;
  end
  initial begin
    #100;
    wr_en = 1;
    for (integer i = 0; i < 10; i=i+1) begin
      wr_data = i;
      #10;
    end
    wr_en = 0;
    rd_en = 1;
    for (integer i = 0; i < 10; i=i+1) begin
      #10;
      if (!empty) begin
        $display("Read data: %d", rd_data);
      end
    end
    rd_en = 0;
    wr_en = 1;
    for (integer i = 10; i < 20; i=i+1) begin
      wr_data = i;
      #10;
    end
    wr_en = 0;
    rd_en = 1;
    for (integer i = 10; i < 20; i=i+1) begin
      #10;
      if (!empty) begin
        $display("Read data: %d", rd_data);
      end
    end
    rd_en = 0;
    wr_en = 1;
    for (integer i = 0; i < 1025; i=i+1) begin
      wr_data = i;
      #10;
    end
    wr_en = 0;
  end
   
endmodule
