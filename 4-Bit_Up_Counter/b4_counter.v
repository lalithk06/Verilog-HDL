`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 11:30:11
// Design Name: 
// Module Name: b4_counter
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


module b4_counter(
    input clk,
    input rst,
    output reg [3:0] count
    );
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            count <= 4'b0000;
        else
            count <= count + 4'b0001;
    end
endmodule
