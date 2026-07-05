`timescale 1ns/1ps

module bcd_to_7seg_tb;
    reg [3:0] bcd;
    wire [6:0] seg;
    
    bcd_7seg DUT(.bcd(bcd), .seg(seg));
    
    initial begin
              
        bcd = 4'd0;
        #5 bcd = 4'd1;
        #5 bcd = 4'd2;
        #5 bcd = 4'd3;
        #5 bcd = 4'd4;
        #5 bcd = 4'd5;
        #5 bcd = 4'd6;
        #5 bcd = 4'd7;
        #5 bcd = 4'd8;
        #5 bcd = 4'd9;
        
        $finish;
    end

endmodule