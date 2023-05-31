  `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module seq_det1010(
                    input clk, input in,input rst,
                    output reg out);
                    
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
reg [2:0]cs,ns;

always@(posedge clk,negedge rst)
begin
if(!rst)
begin
cs<=s0;
end
else
cs<=ns;
end

always @(*)
begin 
case(cs)
    s0: ns=in?s1:s0;
    s1: ns=in?s1:s2;
    s2: ns=in?s3:s0;
    s3: ns=in?s1:s4;
    s4: ns=in?s1:s0;
    default: ns=s0;
endcase
end

always @(*)
begin 
case(cs)
    s0: out=0;
    s1: out=0;
    s2: out=0;
    s3: out=0;
    s4: out=1;
    default: out=0;
endcase
end
endmodule
