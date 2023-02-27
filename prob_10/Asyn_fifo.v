//`timescale 1ns / 1ps
//module async_fifo (
//    input clk_a,
//    input clk_b,
//    input rst,
//    input wr_en,
//    input [7:0] wr_data,
//    output reg rd_en,
//    output reg [7:0] rd_data
//);
//parameter BURST_LENGTH = 100;
//parameter FILL_LEVEL_BITS = $clog2(BURST_LENGTH);
//reg [7:0] mem [0:BURST_LENGTH-1];
//reg [FILL_LEVEL_BITS-1:0] fill_level;
//reg [FILL_LEVEL_BITS-1:0] read_ptr;
//reg [FILL_LEVEL_BITS-1:0] write_ptr;
//reg wr_clk_edge;
//parameter WRITE_IDLE_COUNT = 1;
//parameter READ_IDLE_COUNT = 3;
//reg [31:0] write_idle_count;
//reg [31:0] read_idle_count;
//always @(posedge clk_a) begin
//    wr_clk_edge <= ~wr_clk_edge;
//    if (rst) begin
//        write_ptr <= 0;
//        fill_level <= 0;
//        write_idle_count <= 0;
//    end else if (wr_en && (write_idle_count == 0)) begin
//        mem[write_ptr] <= wr_data;
//        write_ptr <= write_ptr + 1;
//        fill_level <= fill_level + 1;
//        write_idle_count <= WRITE_IDLE_COUNT;
//    end else if (write_idle_count > 0) begin
//        write_idle_count <= write_idle_count - 1;
//    end
//end
//always @(posedge clk_b) begin
//    if (rst) begin
//        read_ptr <= 0;
//        fill_level <= 0;
//        rd_en <= 0;
//        read_idle_count <= 0;
//    end else if (fill_level > 0 && (read_idle_count == 0)) begin
//        rd_en <= 1;
//        rd_data <= mem[read_ptr];
//        read_ptr <= read_ptr + 1;
//        fill_level <= fill_level - 1;
//        read_idle_count <= READ_IDLE_COUNT;
//    end else if (read_idle_count > 0) begin
//        rd_en <= 0;
//        read_idle_count <= read_idle_count - 1;
//    end
//end
//endmodule
