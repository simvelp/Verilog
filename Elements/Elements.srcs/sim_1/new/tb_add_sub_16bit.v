`timescale 1ns / 1ps

module tb_add_sub_16bit;

    reg [15:0] A, B;
    reg M;
    
    wire [15:0] S;
    wire Cout;
    
    add_sub_16bit uut(
        
        .A(A),
        .B(B),
        .M(M),
        .S(S),
        .Cout(Cout)
    );
    
    initial begin
    
        $monitor("%st\t%b\t%h\t%h\t%h\t%b", $time, M, A, B, S, Cout);
        
        //Test1 -> 5+3 = 8
        A = 16'd5; B = 16'd3; M= 1'b0; #10;
        
        //Test2 -> 100+200 = 300
        A = 16'd100; B=16'd200; M=1'b0; #10;
        
        //Test3 -> 200 - 100 = 100
        A = 16'd200; B= 16'd100; M = 1'b1; #10;
        
        //Test4 -> 100-200 = 0XFF93
        A = 16'd100; B = 16'd200; M = 1'b1; #10;
        
        //Test 5-> 0XFFFF + 1 = 0X0000, Cout = 1;
        A = 16'hFFFF; B = 16'd1; M = 1'b0; #10;
        
        //Test 6-> 0 - 1 = 0XFFFF
        A = 16'd0; B = 16'd1; M = 1'b1; #10;
        
        $finish;
     end
endmodule
