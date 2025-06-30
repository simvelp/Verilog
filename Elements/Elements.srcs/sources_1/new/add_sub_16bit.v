`timescale 1ns / 1ps

module add_sub_16bit(
    input wire [15:0] A,
    input wire [15:0] B,
    input wire M,
    output wire [15:0] S,
    output wire Cout
    );
    
    wire [15:0] B_eff;
    wire [15:0] carry;
    
    assign B_eff[0] = B[0] ^ M;
    assign B_eff[1] = B[1] ^ M;
    assign B_eff[2] = B[2] ^ M;
    assign B_eff[3] = B[3] ^ M;
    assign B_eff[4] = B[4] ^ M;
    assign B_eff[5] = B[5] ^ M;
    assign B_eff[6] = B[6] ^ M;
    assign B_eff[7] = B[7] ^ M;
    assign B_eff[8] = B[8] ^ M;
    assign B_eff[9] = B[9] ^ M;
    assign B_eff[10] = B[10] ^ M;
    assign B_eff[11] = B[11] ^ M;
    assign B_eff[12] = B[12] ^ M;
    assign B_eff[13] = B[13] ^ M;
    assign B_eff[14] = B[14] ^ M;
    assign B_eff[15] = B[15] ^ M;
    
    full_adder FA0(.A(A[0]), .B(B_eff[0]), .Cin(M), .Sum(S[0]), .Cout(carry[0]));
    full_adder FA1(.A(A[1]), .B(B_eff[1]), .Cin(carry[0]), .Sum(S[1]), .Cout(carry[1]));
    full_adder FA2(.A(A[2]), .B(B_eff[2]), .Cin(carry[1]), .Sum(S[2]), .Cout(carry[2]));
    full_adder FA3(.A(A[3]), .B(B_eff[3]), .Cin(carry[2]), .Sum(S[3]), .Cout(carry[3]));
    full_adder FA4(.A(A[4]), .B(B_eff[4]), .Cin(carry[3]), .Sum(S[4]), .Cout(carry[4]));
    full_adder FA5(.A(A[5]), .B(B_eff[5]), .Cin(carry[4]), .Sum(S[5]), .Cout(carry[5]));
    full_adder FA6(.A(A[6]), .B(B_eff[6]), .Cin(carry[5]), .Sum(S[6]), .Cout(carry[6]));
    full_adder FA7(.A(A[7]), .B(B_eff[7]), .Cin(carry[6]), .Sum(S[7]), .Cout(carry[7]));
    full_adder FA8(.A(A[8]), .B(B_eff[8]), .Cin(carry[7]), .Sum(S[8]), .Cout(carry[8]));
    full_adder FA9(.A(A[9]), .B(B_eff[9]), .Cin(carry[8]), .Sum(S[9]), .Cout(carry[9]));
    full_adder FA10(.A(A[10]), .B(B_eff[10]), .Cin(carry[9]), .Sum(S[10]), .Cout(carry[10]));
    full_adder FA11(.A(A[11]), .B(B_eff[11]), .Cin(carry[10]), .Sum(S[11]), .Cout(carry[11]));
    full_adder FA12(.A(A[12]), .B(B_eff[12]), .Cin(carry[11]), .Sum(S[12]), .Cout(carry[12]));
    full_adder FA13(.A(A[13]), .B(B_eff[13]), .Cin(carry[12]), .Sum(S[13]), .Cout(carry[13]));
    full_adder FA14(.A(A[14]), .B(B_eff[14]), .Cin(carry[13]), .Sum(S[14]), .Cout(carry[14]));
    full_adder FA15(.A(A[15]), .B(B_eff[15]), .Cin(carry[14]), .Sum(S[15]), .Cout(carry[15]));
    
    assign Cout = carry[15];
    
endmodule
