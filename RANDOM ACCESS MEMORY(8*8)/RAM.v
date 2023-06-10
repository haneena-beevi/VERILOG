`timescale 1ns / 1ps
module RAM(
    input clk,
    input [7:0] data_in,
    input wr,
    input rd,
    input [2:0] add, //2^3=8; so 3 bits address is required to denote 8 locations
    output [7:0]data_out);
    
    
reg [7:0] ram[0:7]; //8 bit of data from 8 memory locations

always @(posedge clk)
begin
        if(wr)
        ram[add]<=data_in;
        //assign data_out=8'bxxxxxxxx;
end 
    
assign data_out=rd?ram[add]:8'bxxxxxxxx;
endmodule
