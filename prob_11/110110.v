module sequence_detector_mealy(
    input clk, rst, 
    input din,      
    output reg dout 
);

reg [2:0] state; 
parameter S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4, S5 = 3'd5;

always @(posedge clk, posedge rst)
begin
    if (rst)
        state <= S0; 
    else
    begin
        case (state)
            S0: if (din == 1) state <= S1; else state <= S0;
            S1: if (din == 1) state <= S2; else state <= S0;
            S2: if (din == 0) state <= S3; else state <= S0;
            S3: if (din == 1) state <= S4; else state <= S0;
            S4: if (din == 1) state <= S5; else state <= S2;
            S5: if (din == 0) state <= S3; else state <= S0;
            default: state <= S0; 
        endcase
    end
end

always @(state, din)
begin
    case (state)
        S5: dout = 1; 
        default: dout = 0;
    endcase
end

endmodule
