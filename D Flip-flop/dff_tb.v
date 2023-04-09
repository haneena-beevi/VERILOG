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
wire q;
reg clk;
reg d; 
reg rst;

	// Instantiate the Unit Under Test (UUT)

d_flip_flop UUT(.q(q),.clk(clk),.d(d),.rst(rst));

initial
begin
//initialize Inputs
    d=0;
    clk=0;
    rst=0;
end

//generate clock
always #10 d=~d;
always #5 clk=~clk;

initial
begin
$monitor("D=%b, CLOCK=%b, Q=%b",d,clk,q);
#200 $finish;
end

endmodule
