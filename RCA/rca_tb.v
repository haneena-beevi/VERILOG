
module ripple_adder_tb;

 reg [3:0]a,b;
  reg c_in;
  wire [3:0]s;
  wire c_out;
  
  	// Instantiate the Unit Under Test (UUT)

  	add4 UUT(.a(a), .b(b),.c_in(c_in), .s(s), .c_out(c_out));
	
	initial begin
 $monitor("a=%d b=%d c=%d -> SUM=%d CARRY_OUT=%b",a,b,c_in,s,c_out);
// Initialize Inputs
a=4'd0; b=4'd0; c_in=0;
    
    #10 a=4'd2; b=4'd3;
    #10 a=4'd5; b=4'd6;
    #10 a=4'd7; b=4'd9;
    #10 a=4'd10; b=4'd11;
    #10 a=4'd12; b=4'd15;
    #10 a=4'd1; b=4'd2;
    #10 a=4'd13; b=4'd13;
    #10 a=4'd6; b=4'd9;
    #10 a=4'd3; b=4'd3;
    #10 a=4'd12; b=4'd13;
    #10 a=4'd0; b=4'd0;
    end
endmodule
