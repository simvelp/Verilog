`timescale 1ns / 1ps


module XNOR(
    input wire A,
    input wire B,
    output wire Y
);
    
    assign NOT_A = ~A;
    assign NOT_B = ~B;
    assign AND1 = A & B;
    assign AND2 = NOT_A & NOT_B;
    assign OR_out = AND1 | AND2;
    assign Y = OR_out;
    
endmodule
