`timescale 1ns / 1ps

module half_subtractor(
    input wire A,
    input wire B,
    output D,
    output Bout
    );
    
    assign D = A ^ B;
    assign Bout = ~A & B;
    
endmodule
