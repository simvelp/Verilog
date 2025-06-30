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


- `FSM` : Verilog RTL for FSM

    ![FSM](FSM.jpg)


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