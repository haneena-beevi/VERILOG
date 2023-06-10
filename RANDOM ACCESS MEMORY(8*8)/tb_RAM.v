`timescale 1ns / 1ps

module tb_RAM;
    
    // Inputs
    reg clk;
    reg [7:0] data_in;
    reg wr;
    reg rd;
    reg [2:0] add;
    
    // Outputs
    wire [7:0] data_out;
    
    // Instantiate the RAM module
    RAM uut (
        .clk(clk),
        .data_in(data_in),
        .wr(wr),
        .rd(rd),
        .add(add),
        .data_out(data_out)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Stimulus
    initial begin
        clk = 0;
        wr = 0;
        rd = 0;
        add = 0;
        data_in = 8'b0;
        
        // Write operation
        #10;
        wr = 1'b1;
        add = 3'b000;
        data_in = 8'b00000001;


        # 10 add = 3'b001;
        data_in = 8'b00000010;
        

        # 10 add = 3'b010;
        data_in = 8'b00000011;
        
        
        # 10 add = 3'b011;
        data_in = 8'b00000100;
        
        # 10 add = 3'b100;
        data_in = 8'b00000101;
        
        # 10 add = 3'b101;
        data_in = 8'b00000110;
        
        # 10 add = 3'b110;
        data_in = 8'b00000111;
        
        # 10 add = 3'b111;
        data_in = 8'b00001000;
        
        #10 add=3'bxxx;
        data_in=8'bxxxxxxxx;


        
        #10;
        wr = 1'b0;
        
        // Read operation
        #10;
        rd = 1;
       
        #10 add = 3'b000;
        #10 add = 3'b001;
        #10 add = 3'b010;
        #10 add = 3'b011;
        #10 add = 3'b100;
        #10 add = 3'b101;
        #10 add = 3'b110;
        #10 add = 3'b111;
        #10 add = 3'bxxx;

        #10;
        rd = 0;
        
        
        
        #100;
        $finish;
    end
    
endmodule
