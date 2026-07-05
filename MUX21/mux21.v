`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 10:28:28
// Design Name: 
// Module Name: mux21
// Project Name: Verilog_Learning
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux21(
    input A,
    input B,
    input S,
    output reg Y
    );
    
    always @(A, B, S)
    begin
        if (S)
        begin
            Y = B;
        end
        
        else
        begin
            Y = A;
        end
    end
endmodule
