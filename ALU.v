module ALU (ALUctr, A, B, Result, Zero);
    input [2:0] ALUctr;
    input [31:0] A, B;
    output reg [31:0] Result;
    output reg Zero;
   
    initial
    begin
        Zero = 0;
    end
    
    always@(A or B or ALUctr)
    begin
        case (ALUctr)
            3'b000 : Result = A + B;
            3'b001 : Result = A - B;
            3'b010 : Result = A & B;
            3'b011 : Result = A | B;
            3'b100 : Result = A < B;
        endcase
        Zero = (Result == 0);
    end
endmodule