`timescale 1ns / 1ps

module tb_RCA_16bit;

    // DUT (Device Under Test) 입출력 선언
    reg  [15:0] A;
    reg  [15:0] B;
    reg         Cin;
    wire [15:0] Sum;
    wire        Cout;

    // DUT 인스턴스
    RCA_16bit dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // 테스트 시나리오
    initial begin
        // 출력 보기
        $display("Time\t\tA\t\tB\t\tCin\tSum\t\tCout");
        $monitor("%0t\t%h\t%h\t%b\t%h\t%b", $time, A, B, Cin, Sum, Cout);

        // 테스트 케이스 1
        A = 16'h0000; B = 16'h0000; Cin = 1'b0; #10;

        // 테스트 케이스 2
        A = 16'h0001; B = 16'h0001; Cin = 1'b0; #10;

        // 테스트 케이스 3
        A = 16'hAAAA; B = 16'h5555; Cin = 1'b0; #10;

        // 테스트 케이스 4
        A = 16'hFFFF; B = 16'h0001; Cin = 1'b0; #10;

        // 테스트 케이스 5
        A = 16'hFFFF; B = 16'hFFFF; Cin = 1'b1; #10;

        // 테스트 종료
        $finish;
    end

endmodule
