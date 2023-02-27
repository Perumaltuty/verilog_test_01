`timescale 1ns / 1ps

module fifo (
  input clk,          
  input rst,          
  input wr_en,        
  input rd_en,        
  input [31:0] wr_data,
  output reg [31:0] rd_data,
  output empty,       
  output full         
);
parameter DEPTH = 1024;
reg [31:0] mem [0:DEPTH-1];
reg [9:0] wr_ptr;
reg [9:0] rd_ptr;
reg [9:0] count;
assign empty = (count == 0);
assign full = (count == DEPTH);
always @(posedge clk) begin
  if (rst) begin
    wr_ptr <= 0;
  end else if (wr_en && !full) begin
    mem[wr_ptr] <= wr_data;
    wr_ptr <= wr_ptr + 1;
  end
end
always @(posedge clk) begin
  if (rst) begin
    rd_ptr <= 0;
  end else if (rd_en && !empty) begin
    rd_data <= mem[rd_ptr];
    rd_ptr <= rd_ptr + 1;
  end
end
always @(posedge clk) begin
  if (rst) begin
    count <= 0;
  end else 
    case ({wr_en,rd_en})
2'b00 : count <= count;
2'b01 : count <= (count==0) ? 0 :count-1;
2'b10 : count <= (count==1203) ? 1203 :count+1;
2'b11 : count <= count;
default : count <= count;
    endcase
end
  endmodule
