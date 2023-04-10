`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2023 01:46:29
// Design Name: 
// Module Name: d_ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module d_ff_tb;

reg clk;
reg rst;
reg d; 
wire q;

// Instantiate the Unit Under Test (UUT)
d_flip_flop UUT(.clk(clk),.rst(rst),.d(d),.q(q));

initial
begin
//initialize Inputs
    d=0;
    clk=0;
    rst=0;
end

//generates clock
always #5 clk=~clk;

//define input D
always #10 d=~d;


initial
begin
#10 rst<=1'b1;
$monitor("D=%b, CLOCK=%b, Q=%b",d,clk,q);
#200 $finish;
end

endmodule
