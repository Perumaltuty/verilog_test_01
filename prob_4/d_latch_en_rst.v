`timescale 1ns / 1ps
module d_latch_en_rst (
    input D,
    input en,
    input rst,
    output reg Q
);

always @ (D, en, rst)
begin
    if (rst)  
        Q <= 1'b0;
    else if (en)  
        Q <= D;
end

endmodule
