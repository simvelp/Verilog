`timescale 1ns / 1ps

module tb_full_subtractor;

    reg A, B, Bin;
    wire D, Bout;
    
    full_subtractor uut(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );
    
    initial begin
    
        A = 0; B = 0; Bin = 0; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 0; B = 1; Bin = 1; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 0; B = 0; Bin = 0; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 0; B = 1; Bin = 1; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 1; B = 0; Bin = 0; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 1; B = 1; Bin = 1; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 1; B = 0; Bin = 0; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        A = 1; B = 1; Bin = 1; #10 $display("%b %b %b | %b %b", A, B, Bin, D, Bout);
        
        $finish;
    end

endmodule
