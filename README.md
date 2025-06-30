# Initial Gate and Initial project🚀  

## How to Run✨  
  
1. Use a Vivado
2. Run the testbench file for simulation
  
## Files💻  
  
- `XNOR.v`: Verilog RTL for XNOR gate  
  
- `XOR.v` : Verilog RTL for XOR gate  
  
- `MUX.v` : Verilog RTL for MUX gate  
  
- `MUX_4_1` : Verilog RTL for 4:1 MUX gate

    ![4:1 MUX](4_1_MUX.jpg)

***
- `FSM` : Verilog RTL for FSM

    ![FSM](FSM.jpg)

***
- `Ripple-Carry-Adder` : Verilog RTL for 16bit Ripple Carry Adder
    ![Ripple Carry Adder](Ripple-Carry-Adder.jpg) sourece:  https://ko.m.wikipedia.org/wiki/%ED%8C%8C%EC%9D%BC:4-bit_ripple_carry_adder.svg

    Simulation result example.

    | Time(ns) |     A     |     B     | Cin |   Sum   | Cout |
    |----------|-----------|-----------|-----|---------|------|
    |   0      | 0x0000    | 0x0000    | 0   | 0x0000  | 0    |
    |  10      | 0x0001    | 0x0001    | 0   | 0x0002  | 0    |
    |  20      | 0xAAAA    | 0x5555    | 0   | 0xFFFF  | 0    |
    |  30      | 0xFFFF    | 0x0001    | 0   | 0x0000  | 1    |
    |  40      | 0xFFFF    | 0xFFFF    | 1   | 0xFFFF  | 1    |

***
- `Adder & Subtractor` : Cerilog RTL for 16bit Adder & Subtractor
    ![Adder & Subtractor](add_sub_16bit.jpg) source: https://suyeon96.tistory.com/7

    Simulation result example

    | Time(ns) | M (연산) |     A     |     B     |     S (결과)    | Cout |
    |----------|----------|-----------|-----------|-----------------|------|
    |   0      |    0     | 0x0005    | 0x0003    | 0x0008          | 0    |
    |  10      |    0     | 0x0064    | 0x00C8    | 0x012C (= 300)  | 0    |
    |  20      |    1     | 0x00C8    | 0x0064    | 0x0064 (= 100)  | 1    |
    |  30      |    1     | 0x0064    | 0x00C8    | 0xFF9C (= -100) | 0    |
    |  40      |    0     | 0xFFFF    | 0x0001    | 0x0000          | 1    |
    |  50      |    1     | 0x0000    | 0x0001    | 0xFFFF (= -1)   | 0    |
