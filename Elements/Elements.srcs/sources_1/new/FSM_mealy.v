`timescale 1ns / 1ps

module FSM_mealy(
    input wire clk,
    input wire rst,
    input wire [1:0] in,
    output reg [1:0] state,
    output reg out
    );

localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b10;
localparam S3 = 2'b11;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else begin
        case (state)
            S0: begin
                case (in)
                    2'b00: begin state <= S0; out <= 0; end
                    2'b01: begin state <= S1; out <= 0; end
                    2'b10: begin state <= S2; out <= 0; end
                    2'b11: begin state <= S3; out <= 1; end
                endcase
            end
            S1: begin
                case (in)
                    2'b00: begin state <= S0; out <= 1; end
                    2'b01: begin state <= S1; out <= 0; end
                    2'b10: begin state <= S2; out <= 0; end
                    2'b11: begin state <= S3; out <= 1; end
                endcase
            end
            S2: begin
                case (in)
                    2'b00: begin state <= S0; out <= 0; end
                    2'b01: begin state <= S1; out <= 0; end
                    2'b10: begin state <= S2; out <= 0; end
                    2'b11: begin state <= S3; out <= 1; end
                endcase
            end
            S3: begin
                case (in)
                    2'b00: begin state <= S0; out <= 0; end
                    2'b01: begin state <= S1; out <= 0; end
                    2'b10: begin state <= S2; out <= 0; end
                    2'b11: begin state <= S3; out <= 1; end
                endcase
            end
        endcase
    end
end

endmodule
