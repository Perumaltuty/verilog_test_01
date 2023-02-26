
module d_7(input d,input clk, input en, output reg q);
  wire gclk;
 assign  gclk = en & clk;
  always @(posedge gclk)
  begin
    q <=d;
  end
endmodule

  
