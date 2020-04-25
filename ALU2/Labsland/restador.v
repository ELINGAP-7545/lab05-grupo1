module restador( 

input [2:0] A,  
input [2:0] B,  
input reset,
output reg [2:0] res,
output reg sig
);


reg [2:0] xi; 
reg [2:0] yi;
reg [2:0] ca1;
reg [2:0] ca2;
reg [2:0] neg;


always @(*) begin

if (reset == 1) begin

xi = 0;
yi = 0;
ca1 = 0;
ca2 = 0;

end

else begin

xi <= A;
yi <= B;

ca1 = ~yi;
ca2 = ca1 + 1;

if (xi < yi)begin

neg = xi + ca2;
neg = ~neg + 1;
res = neg;
sig = 1;

end

else begin

res = xi + ca2;
sig = 0;

end
end
end


endmodule