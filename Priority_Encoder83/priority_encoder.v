`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 13:23:17
// Design Name: 
// Module Name: priority_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Lowest Priority model. IN[0] ha the highest priority and IN[7] has the lowest priority
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder(
    input [7:0] IN,
    output reg [2:0] OUT
    );
    
    always @(IN)
    begin
        if(IN[0])      OUT = 3'b000;
        else if(IN[1]) OUT = 3'b001;
        else if(IN[2]) OUT = 3'b010;
        else if(IN[3]) OUT = 3'b011;
        else if(IN[4]) OUT = 3'b100;
        else if(IN[5]) OUT = 3'b101;
        else if(IN[6]) OUT = 3'b110;
        else if(IN[6]) OUT = 3'b110;
        else           OUT = 3'b000;
    end        
endmodule
