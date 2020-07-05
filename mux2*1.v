module mux2x1(a,b,sel,out);
input a,b,sel;
output reg out;
always @(a,b,sel) begin
if (sel==1)
out=b;
else
out=a;
end
endmodule 

module mux2x1_tb;
wire out;
reg sel,a,b;
mux2x1 mux1(a,b,sel,out);
initial begin
sel=0;
#20 sel=1;
#20 sel=0;
#25 sel=0;
#35 sel=1;
end
initial begin
a=0;b=0;
#20 a=0;b=1;
#25 a=1;b=0;
#35 a=1;b=1;
end
endmodule
