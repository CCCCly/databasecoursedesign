module npc (pc,imm16,branch,zero,jump,target,npc);

	input [31:0]pc;
	input [15:0] imm16;
	input branch,zero,jump;
	input [25:0]target;
	output [31:0] npc;

	wire [31:0] pc_plus_4,pc_br,pc_jump;
	assign pc_plus_4=pc+4;
	assign pc_br=pc_plus_4+{{14{imm16[15]}},imm16,2'b00};
	assign pc_jump={pc[31:28],target,2'b00};
	assign npc=jump? pc_jump : ((branch&zero)? pc_br : pc_plus_4);

endmodule