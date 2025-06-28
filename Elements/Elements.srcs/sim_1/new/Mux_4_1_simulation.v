`timescale 1ns / 1ps

module Mux_4_1_simulation;

    reg A, B, C, D, S1, S2;
    wire Y;
    
    MUX_4_1 uut(
    
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .S1(S1),
        .S2(S2),
        .Y(Y)
    );
    
    initial begin
        
        A = 1; B = 0; C = 0; D = 0; S1 = 0; S2 = 0; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 1; C = 0; D = 0; S1 = 0; S2 = 0; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 1; C = 0; D = 0; S1 = 0; S2 = 1; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 0; C = 1; D = 0; S1 = 0; S2 = 1; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 0; C = 1; D = 0; S1 = 1; S2 = 0; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 0; C = 0; D = 1; S1 = 1; S2 = 0; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 0; B = 0; C = 0; D = 1; S1 = 1; S2 = 1; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        A = 1; B = 0; C = 0; D = 0; S1 = 1; S2 = 1; #10 $display("%b %b %b %b %b %b | %b", A, B, C, D, S1, S2, Y);
        
        $finish;
    end
    
endmodule
