
module d_ff( input d,input clk,input rst,output reg out,output reg q); 
   always @(*)
   begin
    case(rst)
      1'b0:out=0;
      1'b1:out=d;
    endcase
  end
    always @ (posedge clk)
     begin
       q<=out;
     end
  endmodule
  
      
    
