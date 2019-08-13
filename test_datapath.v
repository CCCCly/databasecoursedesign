module test_datapath();
     reg clk, rst,Branch, Jump, RegDst, ALUSrc, MemtoReg, RegWr, MemWr, ExtOp;
     reg [2:0] ALUctr;
     wire [2:0] op,func;

DataPath datap(.clk(clk), .rst(rst),
    .Branch(Branch), .Jump(Jump), .RegDst(RegDst), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .RegWr(RegWr), .MemWr(MemWr), .ExtOp(ExtOp), .ALUctr(ALUctr),
    .op(op), .func(func));
    
     initial
       begin
       clk = 0;
       rst = 0;
       Branch = 0;
       Jump = 0;
       RegDst = 1;
       ALUctr = 3'b000;
       ALUSrc = 0;
       MemtoReg = 0;
       RegWr = 1;
       MemWr = 0;
       end
     always #30 clk = ~clk;   


endmodule
