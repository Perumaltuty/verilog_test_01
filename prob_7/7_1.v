

module d_flipflop( input d,input clk,input enable,output reg out,output reg q); 
   always @(*)
   begin
    case(enable)
      1'b0:out=q;
      1'b1:out=d;
    endcase
  end
    always @ (posedge clk)
     begin
       q<=out;
     end
  endmodule
  
      
    
