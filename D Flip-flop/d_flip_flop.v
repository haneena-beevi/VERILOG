`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 00:28:13
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(q,d,clk,rst);

input d,clk,rst,rst;
output reg q;

    
//with active low asynchronous reset
always @(posedge clk or negedge rst)
begin
if(!rst)
    q<=0;
else
    q<=d;
end

endmodule
