`timescale 1ns / 1ps

module MUX_simulation;

    reg A, B, S;
    wire Y;
    
    MUX uut(
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );
    
    initial begin
    
        A = 0; B = 0; S = 1; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 0; B = 1; S = 1; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 1; B = 0; S = 1; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 1; B = 1; S = 1; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 0; B = 0; S = 0; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 0; B = 1; S = 0; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 1; B = 0; S = 0; #10 $display("%b %b %b | %b", A, B, S, Y);
        A = 1; B = 1; S = 0; #10 $display("%b %b %b | %b", A, B, S, Y);
        
        $finish;
    end

endmodule
