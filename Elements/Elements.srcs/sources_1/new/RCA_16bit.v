`timescale 1ns / 1ps

module RCA_16bit (
    input  wire [15:0] A,
    input  wire [15:0] B,
    input  wire        Cin,
    output wire [15:0] Sum,
    output wire        Cout
);

    wire [15:0] carry;

    // 첫 비트는 Cin 사용
    full_adder FA0 (
        .A(A[0]), .B(B[0]), .Cin(Cin),
        .Sum(Sum[0]), .Cout(carry[0])
    );

    // 이후 비트는 이전 carry 사용
    full_adder FA1  (.A(A[1]),  .B(B[1]),  .Cin(carry[0]),  .Sum(Sum[1]),  .Cout(carry[1]));
    full_adder FA2  (.A(A[2]),  .B(B[2]),  .Cin(carry[1]),  .Sum(Sum[2]),  .Cout(carry[2]));
    full_adder FA3  (.A(A[3]),  .B(B[3]),  .Cin(carry[2]),  .Sum(Sum[3]),  .Cout(carry[3]));
    full_adder FA4  (.A(A[4]),  .B(B[4]),  .Cin(carry[3]),  .Sum(Sum[4]),  .Cout(carry[4]));
    full_adder FA5  (.A(A[5]),  .B(B[5]),  .Cin(carry[4]),  .Sum(Sum[5]),  .Cout(carry[5]));
    full_adder FA6  (.A(A[6]),  .B(B[6]),  .Cin(carry[5]),  .Sum(Sum[6]),  .Cout(carry[6]));
    full_adder FA7  (.A(A[7]),  .B(B[7]),  .Cin(carry[6]),  .Sum(Sum[7]),  .Cout(carry[7]));
    full_adder FA8  (.A(A[8]),  .B(B[8]),  .Cin(carry[7]),  .Sum(Sum[8]),  .Cout(carry[8]));
    full_adder FA9  (.A(A[9]),  .B(B[9]),  .Cin(carry[8]),  .Sum(Sum[9]),  .Cout(carry[9]));
    full_adder FA10 (.A(A[10]), .B(B[10]), .Cin(carry[9]),  .Sum(Sum[10]), .Cout(carry[10]));
    full_adder FA11 (.A(A[11]), .B(B[11]), .Cin(carry[10]), .Sum(Sum[11]), .Cout(carry[11]));
    full_adder FA12 (.A(A[12]), .B(B[12]), .Cin(carry[11]), .Sum(Sum[12]), .Cout(carry[12]));
    full_adder FA13 (.A(A[13]), .B(B[13]), .Cin(carry[12]), .Sum(Sum[13]), .Cout(carry[13]));
    full_adder FA14 (.A(A[14]), .B(B[14]), .Cin(carry[13]), .Sum(Sum[14]), .Cout(carry[14]));
    full_adder FA15 (.A(A[15]), .B(B[15]), .Cin(carry[14]), .Sum(Sum[15]), .Cout(Cout));

endmodule
