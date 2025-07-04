`timescale 1ns / 1ps

module FSM_moore(
    input wire clk,
    input wire rst,
    input wire [1:0] in,
    output reg [1:0] state,
    output reg [3:0] out
    );
    
localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b10;
localparam S3 = 2'b11;

always @(posedge clk or posedge rst) begin
    if (rst) state <= S0;
    else begin
        case (in)
            2'b00: state <= S0;
            2'b01: state <= S1;
            2'b10: state <= S2;
            2'b11: state <= S3;
        endcase
    end
end

always @(state) begin

    case (state)
        S0 : out = 4'b0000;
        S1 : out = 4'b0001;
        S2 : out = 4'b0010;
        S3 : out = 4'b0011;
    endcase
end

endmodule
