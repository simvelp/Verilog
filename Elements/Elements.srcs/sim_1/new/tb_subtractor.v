`timescale 1ns / 1ps


module tb_subtractor;

    reg A, B;
    wire D, Bout;
    
    half_subtractor uut(
        .A(A),
        .B(B),
        .Bout(Bout),
        .D(D)
    );
    
    initial begin
    
        A = 0; B = 0; #10 $display("%b, %b, | %b, %b", A, B, Bout, D);
        A = 0; B = 1; #10 $display("%b, %b, | %b, %b", A, B, Bout, D);
        A = 1; B = 0; #10 $display("%b, %b, | %b, %b", A, B, Bout, D);
        A = 1; B = 1; #10 $display("%b, %b, | %b, %b", A, B, Bout, D);
        
        $finish;
    end

endmodule
