`timescale 1ns / 1ps

module MUX(
    input wire A,
    input wire B,
    input wire S,
    output wire Y
    );
    
    assign NOT_S = ~S;
    assign NAND_1 = A & NOT_S;
    assign NAND_2 = B & S;
    assign Y = NAND_1 | NAND_2;
    
    
endmodule
