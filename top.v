module top(
    input [0:0] sw,
    output [9:0] led, 
    input btnC, 
    input btnU 
);

    wire z_oh, z_bin;
    wire A, B, C, D, E;
    wire [2:0] bin_state;

    onehot oh_inst(
        .w(sw[0]), .clk(btnC), .reset(btnU),
        .z(z_oh),
        .Astate(A), .Bstate(B), .Cstate(C),
        .Dstate(D), .Estate(E)
    );

    binary bin_inst(
        .w(sw[0]), .clk(btnC), .reset(btnU),
        .z(z_bin),
        .State(bin_state)
    );

    assign led[0] = z_oh;       // One-hot Z
    assign led[1] = z_bin;      // Binary Z
    assign led[2] = A;          // One-hot state A
    assign led[3] = B;          // One-hot state B
    assign led[4] = C;          // One-hot state C
    assign led[5] = D;          // One-hot state D
    assign led[6] = E;          // One-hot state E
    assign led[9:7] = bin_state;// Binary state bits


endmodule
