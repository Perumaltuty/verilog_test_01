module  d_negedge_ff (input rst_n, input d, input clk, output reg q);
  always @(negedge clk)
  begin
    if(!rst_n) 
      
q=1'b0;
  
else
    
  q=d;
 
 end

endmodule
    
  
      
