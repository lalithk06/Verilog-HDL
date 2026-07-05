`timescale 1ns/1ps

module priority_encoder_tb;
    reg [7:0] IN; 
    wire [2:0] OUT;
    
    priority_encoder DUT(.IN(IN), .OUT(OUT));
    
    initial begin
        IN = 8'bxxxxxxxx;
        
        #5 IN = 8'b00000001;
        #5 IN = 8'b00000100;
        #5 IN = 8'b00100000;
        #5 IN = 8'b01000001;
        #5 IN = 8'b10110001;
        #5 IN = 8'b00000111;
        #5 IN = 8'b11010000;
        #5 IN = 8'b01000110;
        
        $finish;
     end
     
     initial begin
        $monitor("Time=%0t | IN=%b | OUT=%b",
                  $time, IN, OUT);
     end 

endmodule