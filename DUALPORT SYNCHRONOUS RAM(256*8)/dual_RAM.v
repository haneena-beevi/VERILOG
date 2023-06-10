
module dual_RAM(clk,rst,re,we,rd_addr,wr_addr,data_in,data_out);
    
parameter RAM_WIDTH=8;
parameter RAM_DEPTH=256;
parameter ADDR_SIZE=8;

input clk,rst,re,we;
input [RAM_WIDTH-1:0]data_in;
input [ADDR_SIZE-1:0]rd_addr,wr_addr;
output reg [RAM_WIDTH-1:0]data_out;

reg [RAM_WIDTH-1:0]ram[RAM_DEPTH-1:0];
integer i;

always @(posedge clk)
begin
        if(rst)
            begin
            for(i=0;i<RAM_DEPTH;i=i+1)
            ram[i]<=0;
            data_out<=0;
            end
            
        else
            begin
            if(we)
            ram[wr_addr]<=data_in;
            if(re)
            data_out<=ram[rd_addr];
            end
end 
    
endmodule
