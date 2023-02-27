`timescale 1ns / 1ps
module tristate_bf_behav (input data_in, input enable, output reg data_out);

  always @ (data_in or enable) begin
    if (enable) begin
      data_out <= data_in;
    end else begin
      data_out <= 1'bz;
    end
  end

endmodule
