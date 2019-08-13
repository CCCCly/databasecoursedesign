module MIPS(clk, rst) ;
    input clk ;   // clock
    input rst ;   // reset
    
    wire [5:0] op, func;
    
    wire Branch, Jump, RegDst, ALUSrc, MemtoReg, RegWr, MemWr, ExtOp;
    wire [2:0] ALUctr;

    ctrl ct(op, func, Branch, Jump, RegDst, ALUSrc, ALUctr, MemtoReg, RegWr, MemWr, ExtOp);
    
    DataPath dp(clk, rst,Branch, Jump, RegDst, ALUSrc, MemtoReg, RegWr, MemWr, ExtOp, ALUctr,op, func);
endmodule
