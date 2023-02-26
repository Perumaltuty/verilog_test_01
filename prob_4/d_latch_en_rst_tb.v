`timescale 1ns / 1ps
module d_latch_en_rst_tb;
    reg D;
    reg en;
    reg rst;
    wire Q;
    d_latch_en_rst tb (
        .D(D),
        .en(en),
        .rst(rst),
        .Q(Q)
    );
    initial begin
        D = 0;
        en = 0;
        rst = 0;
        #10;
        rst = 1;
        #10;
        rst = 0;
        #10;
        en = 1;
        D = 1;
        #10;
        en = 0;
        #10;
        en = 1;
        D = 0;
        #10;
        en = 0;
        #10;
        $finish;
    end
endmodule
