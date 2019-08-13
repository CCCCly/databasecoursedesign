module Instruction(Instruction,op,Rs,Rt,Rd,func,imm16,Target);
input [31:0]Instruction;
output [5:0]op;
output [4:0]Rs,Rt,Rd;
output [5:0]func;
output [15:0]imm16;
output [25:0]Target;

assign op=Instruction[31:26];


assign Rs=Instruction[25:21];
assign Rt=Instruction[20:16];

assign Rd=Instruction[15:11];
assign func=Instruction[5:0];

assign imm16=Instruction[15:0];
assign Target=Instruction[25:0];
endmodule