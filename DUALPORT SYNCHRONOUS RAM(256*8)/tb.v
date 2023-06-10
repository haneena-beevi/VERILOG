module tb_RAM;
    
    // Inputs
    reg clk;
    reg [7:0]data_in;
    reg we;
    reg re;
    reg [7:0]rd_addr;
    reg [7:0]wr_addr;
    
    // Outputs
    wire [7:0] data_out;
    
    // Instantiate the dual_RAM module
    dual_RAM uut (
        .clk(clk),
        .data_in(data_in),
        .we(we),
        .re(re),
        .rd_addr(rd_addr),
        .wr_addr(wr_addr),
        .data_out(data_out)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Stimulus
    initial begin
        clk = 0;
        we = 0;
        re = 0;
        rd_addr = 0;
        wr_addr=0;
        data_in = 8'b0;
        
        // Write operation
        #10;
        we = 1'b1;
        wr_addr = 3'b000;
        data_in = 8'b00000001;


        # 10 wr_addr = 8'b00000001;
        data_in = 8'b00000010;
        

        # 10 wr_addr = 8'b00000010;
        data_in = 8'b00000011;
        
        
        # 10 wr_addr = 8'b00000011;
        data_in = 8'b00000100;
        
        # 10 wr_addr = 8'b00000100;
        data_in = 8'b00000101;
        
        #10        we=0;
        data_in = 8'b00000000;
        // Read operation
        
        re = 1;
       
        rd_addr = 8'b00000000;
        #10 rd_addr = 8'b00000001;
        #10 rd_addr = 8'b00000010;
        #10 rd_addr = 8'b00000011;
        #10 rd_addr = 8'b00000100;
        

        #10;
        re = 0;
        
        we=1;
        wr_addr = 8'b00000101;
        data_in = 8'b00000110;
        
        # 10 wr_addr = 8'b00000110;
        data_in = 8'b00000111;
        
        # 10 wr_addr = 8'b00000111;
        data_in = 8'b00001000;
        
        #10 wr_addr=8'bxxxxxxxx;
        data_in=8'bxxxxxxxx;


        
        #10;
        we = 1'b0;
        re = 1'b1;
        #10 rd_addr = 8'b00000101;
        #10 rd_addr = 8'b00000110;
        #10 rd_addr = 8'b00000111;
        #10 rd_addr = 8'bxxxxxxxx;
        
        #10 re=1'b0;
        
        #200;
        $finish;
    end
    
endmodule


