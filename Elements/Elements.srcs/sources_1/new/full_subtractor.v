`timescale 1ns / 1ps

module full_subtractor(
    input wire A,
    input wire B,
    input wire Bin,
    output wire D,
    output wire Bout 
    );
    
    wire D1, Bout1, Bout2;
    
    // first halr_subtractor
    half_subtractor hs1(
        .A(A),
        .B(B),
        .D(D1),
        .Bout(Bout1)
    );
    
    // second half_subtractor
    half_subtractor hs2(
        .A(D1),
        .B(Bin),
        .D(D),
        .Bout(Bout2)
    );
    
    assign Bout = Bout1 | Bout2;
    
    
endmodule
