`timescale 1ns / 1ps

module tb_Encoder_8_3;

reg [7:0] in;
wire [2:0] code;


Encoder_8_3 uut(
    .in(in),
    .code(code)
);

initial begin
    //000
    in = 8'b0000_0001;  #10;
    $display("in=%b  code=%b (expect 000)", in, code);

    //001
    in = 8'b0000_0010;  #10;
    $display("in=%b  code=%b (expect 001)", in, code);

    //010
    in = 8'b0000_0100;  #10;
    $display("in=%b  code=%b (expect 010)", in, code);

    //011
    in = 8'b0000_1000;  #10;
    $display("in=%b  code=%b (expect 011)", in, code);

    //100
    in = 8'b0001_0000;  #10;
    $display("in=%b  code=%b (expect 100)", in, code);

    //101
    in = 8'b0010_0000;  #10;
    $display("in=%b  code=%b (expect 101)", in, code);

    //110
    in = 8'b0100_0000;  #10;
    $display("in=%b  code=%b (expect 110)", in, code);

    //111
    in = 8'b1000_0000;  #10;
    $display("in=%b  code=%b (expect 111)", in, code);
  $finish;
end
endmodule
