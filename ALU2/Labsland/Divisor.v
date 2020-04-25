module Divisor(A,B,init,clk,reset,R,done);
	
input [2:0] A;
input [2:0] B;
input init;
input clk;
input reset;
   
output [2:0] R;
output done;
	
reg [2:0] acum;
reg [2:0] R;
reg done;
reg [1:0] i;

always @(init) 
begin
if(init==1) 
begin acum =0;
   R=0;
   done=0;
   R = B;
   for (i=0; i<3; i=i+1) 
begin acum = acum << 1;
   acum[0] = R[2];
   R = R << 1;
   if (acum >= A) 
begin
   R = R+1;
   acum = acum - A;
 end
end
done = 1;
end
end

endmodule