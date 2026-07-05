`timescale 1ns / 1ps

module b4_counter_tb;
    reg clk;
    reg rst;

    wire [3:0] count;

    b4_counter DUT (
        .clk(clk),
        .rst(rst),
        .count(count)
    );


    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        rst = 1;

        #10;
        rst = 0;

        #100;

        rst = 1;

        #10;
        rst = 0;

        #50;

        $finish;

    end

    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | count = %d (%b)",
                  $time, clk, rst, count, count);
    end
endmodule