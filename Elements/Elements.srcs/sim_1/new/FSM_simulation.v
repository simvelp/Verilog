`timescale 1ns / 1ps

module FSM_simulation;

reg clk;
reg rst;
reg [1:0] in;
wire [1:0] state;

FSM uut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .state(state)
    );

always #5 clk = ~clk;

initial begin
    
    $monitor("%4t\t%b\t%02b\t%02b", $time, rst, in, state);
    
    clk = 0;
    rst = 1;
    in = 2'b00;
    #10 rst = 0;
    
    // Current State : S0
    #10 in = 2'b01; // S0 -> S1
    #10 in = 2'b10; // S1 -> S2
    #10 in = 2'b11; // S2 -> S3

    // Test (S3 → S0/S1/S2)
    #10 in = 2'b00; // S3 -> S0
    #10 in = 2'b11; // S0 -> S3
    #10 in = 2'b01; // S3 -> S1
    #10 in = 2'b11; // S1 -> S3
    #10 in = 2'b10; // S3 -> S2
    #10 in = 2'b11; // S3 -> S3 stay
    // From S2 to S0
    #10 in = 2'b00; // S2 -> S0
    #10 in = 2'b00; // S0 -> S0 stay
    // From S0 to S2
    #10 in = 2'b10; // S0 -> S2
    #10 in = 2'b10; // S2 -> S2 stay
    // From S2 to S1
    #10 in = 2'b01; // S2 -> S1
    #10 in = 2'b01; // S1 -> S1 stay
    // From S1 to S0
    #10 in = 2'b00; // S1 -> S0
    #10 in = 2'b00; // S0-> S0 stay
    $finish;
end


endmodule
