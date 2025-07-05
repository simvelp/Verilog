`timescale 1ns / 1ps

module tb_FSM_mealy;

reg clk;
reg rst;
reg [1:0] in;
wire [1:0] state;
wire out;

FSM_mealy uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .state(state),
    .out(out)
);

// Clock: 10ns period
always #5 clk = ~clk;

initial begin

    clk = 0; rst = 1; in = 2'b00;
    #10 rst = 0;

    // State transitions
    #10 in = 2'b00;  // S0 stays, out = 0
    #10 in = 2'b01;  // S0 -> S1, out = 0
    #10 in = 2'b00;  // S1 -> S0, out = 1
    #10 in = 2'b11;  // S0 -> S3, out = 1
    #10 in = 2'b01;  // S3 -> S1, out = 0
    #10 in = 2'b00;  // S1 -> S0, out = 1
    #10 in = 2'b10;  // S0 -> S2, out = 0
    #10 in = 2'b11;  // S2 -> S3, out = 1
    #10 in = 2'b10;  // S3 -> S2, out = 0
    #10 in = 2'b01;  // S2 -> S1, out = 0
    #10 in = 2'b00;  // S1 -> S0, out = 1

    #10 $finish;
end

endmodule
