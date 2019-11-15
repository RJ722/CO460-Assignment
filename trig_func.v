module trig_func(Y, flag, A, B, C, D);
    input A, B, C, D;
    input [4:0] flag;
    output Y;

    reg Y;

    always @ (A or B or C or D or flag)
    begin
        if (flag == 5'b11001) begin
            case ({A, B, C, D})
                4'd0: Y = 1;
                4'd1: Y = 1;
                4'd2: Y = 1;
                4'd3: Y = 0;
                4'd4: Y = 1;
                4'd5: Y = 1;
                4'd6: Y = 0;
                4'd7: Y = 1;
                4'd8: Y = 0;
                4'd9: Y = 1;
                4'd10: Y = 0;
                4'd11: Y = 1;
                4'd12: Y = 0;
                4'd13: Y = 0;
                4'd14: Y = 0;
                4'd15: Y = 0;
                default: Y = 1'bz;
            endcase
        end else begin
            Y = 1'bz;
        end
    end
endmodule
