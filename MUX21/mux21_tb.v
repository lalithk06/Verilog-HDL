`timescale 1ns / 1ps

module mux21_tb;

reg A;
reg B;
reg S;

wire Y;

mux21 DUT(

    .A(A),
    .B(B),
    .S(S),
    .Y(Y)

);

initial
begin

    A = 0; B = 0; S = 0;
    #10;

    A = 0; B = 1; S = 0;
    #10;

    A = 1; B = 0; S = 1;
    #10;

    A = 1; B = 1; S = 1;
    #10;

    $finish;

end

endmodule