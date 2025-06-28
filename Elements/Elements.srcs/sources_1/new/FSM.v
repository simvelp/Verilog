`timescale 1ns / 1ps

module FSM(
    
    input wire clk,
    input wire rst,
    input wire [1:0] in,
    output reg [1:0] state
    );
    
    // State
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;
    
    // state transition
    always @(posedge clk or posedge rst)begin
        if (rst) begin
            state <= S0;
        end else begin
            case(in)
                2'b00: state <= 2'b00;
                2'b01: state <= 2'b01;
                2'b10: state <= 2'b10;
                2'b11: state <= 2'b11;
                default: state <= S0;
        endcase
      end
    end
       
endmodule
