`timescale 1ns / 1ps

module tb_FSM_moore;

reg clk;
reg rst;
reg [1:0] in;
wire [1:0] state;
wire [3:0] out;

FSM_moore uut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .state(state),
    .out(out)
);


always #5 clk = ~clk;

initial begin

    clk = 0; rst = 1; in = 2'b00;
    #10 rst = 0;
    
    #10 in = 2'b01;
    #5 in = 2'b01;
    #5 in = 2'b00;
    #10 in = 2'b10;
    #10 in = 2'b11;
    #10 in = 2'b11;
    #10 in = 2'b00;
    
    $finish;
end

endmodule
