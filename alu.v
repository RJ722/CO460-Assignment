module alu(Y, Cout, S, A, B);
    input [3:0] S;
    input [4:0] A, B;
    output [4:0] Y;
    output Cout;

    reg [4:0] Y;
    reg Cout;

    always @ (S)
    begin
        Cout = 0;
        case(S)
        4'd0:   {Cout, Y} = A + B;  // Add
        4'd1:   Y = A - B;          // Subtract
        4'd2:   {Cout, Y} = A << 1; // Shift L
        4'd3:   Y = A >> 1;         // Shift R
        4'd4:   Y = (A << 1) | (A >> ~1); // Rotate L
        4'd5:   Y = (A >> 1) | (A << ~1); // Roatate R
        4'd6:   Y = A & B;    // AND
        4'd7:   Y = A | B;    // OR
        4'd8:   Y = A ^ B;    // XOR
        4'd9:   Y = ~(A | B); // NOR
        4'd10:  Y = ~(A & B); // NAND
        4'd11:  Y = A ~^ B;   // XNOR
        4'd12:  Y = (A > B);
        4'd13:  Y = (A < B);
        4'd14:  Y = (A === B);
        default: Y = 5'hz;
        endcase
    end
endmodule
