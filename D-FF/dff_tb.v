`timescale 1ns / 1ps

module dff_tb;
    reg clock;
    reg D;
        
    wire Q;
    wire Qbar;
    
    d_ff DUT(.D(D), .clock(clock), .Q(Q), .Qbar(Qbar));
    
    initial 
        begin
            clock = 0;
            forever #5 clock = ~clock;
        end
    
    initial 
        begin
            D=0;
            
            #3 D=1;
            #5 D=0;
            #5 D=0;
            #5 D=1;
            #5 D=0;
            
            #10;
        $finish;
        end
    endmodule