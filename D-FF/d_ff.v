`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 11:08:02
// Design Name: Negatice edge triggered D-FF
// Module Name: d_ff
// Project Name: 
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


module d_ff(
    input clock, D,
    output reg Q, Qbar
    );
    
    always @(negedge clock)
    begin
        Q    <=  D;  //Non-Blocking assignment
        Qbar <= ~D;
    end
endmodule
