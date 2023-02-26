`timescale 1ns / 1ps
module and_gate_behav(input a,b, output reg c    );
always @(posedge a or b)
begin 
if (a == 0 && b ==0 )
 c <=0;
 else if (a == 0 && b ==1 )
 c <= 0;
 else if (a == 1 && b ==0 )
 c <=0;
 else if  (a == 1 && b ==1 )
 c <=1;
end 
endmodule
