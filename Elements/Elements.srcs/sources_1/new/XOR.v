`timescale 1ns / 1ps

module XOR(
    input wire A,
    input wire B,
    output wire Y
    );
    
    assign NOT_A = ~A;
    assign NOT_B = ~B;
    assign AND1 = NOT_A & B;
    assign AND2 = A & NOT_B;
    assign OR_output = AND1 | AND2;
    assign Y = OR_output;
    
endmodule
