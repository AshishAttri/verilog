//clock frequency divider by 2 in verilog
module clk_divide_by_2(
                       input rst,
                       input clk,
                       output reg out_clk
                       );

always @ (posedge clk)
begin
    if (rst)
        out_clk<=0;
    else
        out_clk<=~out_clk;
        
end

endmodule

module clk_tb;

reg rst;
reg clk;
wire out_clk;

clk_divide_by_2 dut1( rst, clk, out_clk);

always #5 clk=~clk;

initial 
    clk=0;

initial begin
    rst=0;
    #10 rst=1;
    #40 rst=0;
    
    #100 $finish;
    
end

initial begin
    $monitor("[@%0d], rst=%b, clk=%b, out_clk=%b", $time, rst,clk,out_clk);
    $dumpfile("clk2.vcd");
    $dumpvars(0,clk_tb);
end
endmodule

