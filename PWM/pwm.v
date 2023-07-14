`timescale 1ns / 1ps
module pwm(input clk,
            output [7:0] led
    );
    
    reg [8:0]pwm_clk;
    
    always@(posedge clk)
    begin
    if(pwm_clk<500)
    pwm_clk<=pwm_clk+1;
   else
    pwm_clk<=0;
   end
   
   assign led[0]=(pwm_clk<=50)?1:0;
   assign led[1]=(pwm_clk<=100)?1:0;
   assign led[2]=(pwm_clk<=150)?1:0;
   assign led[3]=(pwm_clk<=200)?1:0;
   assign led[4]=(pwm_clk<=250)?1:0;
   assign led[5]=(pwm_clk<=300)?1:0;
   assign led[6]=(pwm_clk<=350)?1:0;
   assign led[7]=(pwm_clk<=400)?1:0;
 
 endmodule
