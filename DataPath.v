module DataPath(clk,rst,Branch, Jump, RegDst, ALUSrc, MemtoReg, RegWr, MemWr, ExtOp, ALUctr,op, func);
input clk , rst;
input Branch,Jump,RegDst,ALUSrc,MemtoReg,RegWr,MemWr,ExtOp;
input [2:0]ALUctr;

output [5:0] op,func;

wire [31:0]instruction;
wire [4:0] Rs,Rt,Rd;
wire [15:0]imm16;
wire [25:0]Target;
Instruction in(instruction,op,Rs,Rt,Rd,func,imm16,Target);

wire [31:0] imm32;
Ext ext(ExtOp,imm16, imm32);

wire[31:0] bus_B,busB;
assign bus_B = ALUSrc ? imm32 :busB;

wire Zero;
wire [31:0] busA;
wire[31:0] Result;
ALU alu(ALUctr,busA,bus_B, Result, Zero);

wire [31:0] Dout;
DM_4k dm(Result,busB,clk,MemWr,Dout);

wire [31:0] busW;
assign busW = MemtoReg ? Dout : Result;

wire [4:0] Rw;
assign Rw = RegDst ? Rd : Rt;
registers regs(busW,clk,RegWr,Rw,Rs,Rt,busA,busB);



wire [31:0] PC,NPC;
npc np(PC,imm16,Branch,Zero,Jump,Target,NPC);
pc p(NPC, clk, rst, PC);
IM_4k im(PC[11:2],instruction);
endmodule

