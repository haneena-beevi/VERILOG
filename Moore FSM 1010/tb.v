

module seqDet1010_tb();

reg in,clk,rst;
wire out;
//wire [2:0]s;

seq_det1010 UUT(.in(in),.clk(clk),.rst(rst),.out(out));

initial
begin
$monitor("simtime=%g,in=%b,rst=%b,out=%b",$time,in,clk,rst,out);
end

initial
begin
clk=0;
rst=0;
in=0;
end

initial
begin
#10
rst=1'b1;

@(posedge clk)
in=1;

@(posedge clk)
in=1;

@(posedge clk)
in=0;

@(posedge clk)
in=1;

@(posedge clk)
in=0;

@(posedge clk)
in=0;

@(posedge clk)
in=1;

#100
$finish;

end

always #5 clk=~clk;


endmodule
