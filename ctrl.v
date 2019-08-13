module ctrl(op, func, Branch, Jump, RegDst, ALUSrc, ALUctr, MemtoReg, RegWr, MemWr, ExtOp);
	input [5:0] op,func;
	output reg Branch,Jump,RegDst,ALUSrc,MemtoReg,MemWr,ExtOp,RegWr;
	output reg[2:0]ALUctr;
	
	always@(op or func)
	begin 
	if(op==6'b000000)
		begin 
			Branch =0;
			Jump=0;
			RegDst=1;
			ALUSrc=0;
			MemtoReg=0;
			RegWr=1;
			MemWr=0;
			case (func)
			6'b100000: ALUctr=3'b000;
			6'b100010,6'b100011: ALUctr=3'b001;
			6'b101010,6'b101011: ALUctr=3'b100;
			6'b100100: ALUctr = 3'b010;
			6'b100101: ALUctr = 3'b011;
			endcase
		end
	else
	begin
		case (op)
			6'b001100: //and
			begin 
				Branch =0;
				Jump=0;
				RegDst=0;
				ALUSrc=1;
				ALUctr=3'b010;//and
				MemtoReg=0;
				RegWr=1;
				MemWr=0;
				ExtOp=0;
			end
			6'b001101: //ori
			begin 
				Branch =0;
				Jump=0;
				RegDst=0;
				ALUSrc=1;
				ALUctr=3'b011;//or
				MemtoReg=0;
				RegWr=1;
				MemWr=0;
				ExtOp=0;
			end
			6'b001001,6'b001000://addiu,addi
			begin
				Branch =0;
				Jump=0;
				RegDst=0;
				ALUSrc=1;
				ALUctr=3'b000;//+
				MemtoReg=0;
				RegWr=1;
				MemWr=0;
				ExtOp=1;
			end
			6'b100011://lw
			begin
				Branch =0;
				Jump=0;
				RegDst=0;
				ALUSrc=1;
				ALUctr=3'b000;//+
				MemtoReg=1;
				RegWr=1;
				MemWr=0;
				ExtOp=1;
			end
			6'b101011://sw
			begin 
				Branch =0;
				Jump=0;
				ALUSrc=1;
				ALUctr=3'b000;//+
				RegWr=0;
				MemWr=1;
				ExtOp=1;
			end
			6'b000100://beq
			begin
				Branch =1;
				Jump=0;
				ALUSrc=0;
				ALUctr=3'b001;//-
				RegWr=0;
				MemWr=0;
			end
			6'b000010://jump
			begin
				Branch =0;
				Jump=1;
				RegWr=0;
				MemWr=0;
			end
		endcase
	end	
	end
endmodule	
	
	