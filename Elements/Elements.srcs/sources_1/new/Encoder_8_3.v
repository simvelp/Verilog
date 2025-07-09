`timescale 1ns / 1ps

module Encoder_8_3(
    input wire [7:0] in, // one-hot input
    output wire [2:0] code // encoding result of 3bit
    );
    
    assign code[0] = in[1] | in[3] | in[5] | in[7];
    assign code[1] = in[2] | in[3] | in[6] | in[7];
    assign code[2] = in[4] | in[5] | in[6] | in[7];
endmodule
