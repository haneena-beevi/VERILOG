`timescale 1ns / 1ps

module tb_clock_divider;
 
 reg clk_in;
 wire clk_out;

 // Instantiate the Unit Under Test (UUT)

 clock_divider uut (
  .clk_in(clk_in), 
  .clk_out(clk_out)
 );
 initial begin
  // Initialize Inputs
  clk_in = 0;

end
  // create input clock 50MHz
  always #10 clk_in = ~clk_in;

      
endmodule
