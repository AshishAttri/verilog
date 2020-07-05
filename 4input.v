module xorgate(a,b,o);
input [3:0] a,b;
output [3:0] o;
xor x1(o[3],a[3],b[3]);
xor x2(o[2],a[2],b[2]);
xor x3(o[1],a[1],b[1]);
xor x4(o[0],a[0],b[0]);
endmodule 