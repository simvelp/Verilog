`timescale 1ns / 1ps

module MUX_4_1(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire S1,
    input wire S2,
    output wire Y
    );
    
    
    assign S1_bar = ~S1;
    assign S2_bar = ~S2;
    assign Address_0 = A & S1_bar & S2_bar;
    assign Address_1 = B & S1_bar & S2;
    assign Address_2 = C & S1 & S2_bar;
    assign Address_3 = D & S1 & S2;
    assign Y = Address_0 | Address_1 | Address_2 | Address_3;
    
endmodule
