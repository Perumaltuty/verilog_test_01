`timescale 1ns / 1ps
module tristate_bf_cont (
    input enable,
    input data_in,
    output  data_out
);

assign data_out = enable ? data_in : 1'bz;

endmodule
