module test_ins();
    reg [31:0] Instruction;
    wire [5:0] op;
    wire [4:0] Rs;
    wire [4:0] Rt;
    wire [4:0] Rd;
    wire [5:0] func;
    
    wire [15:0] imm16;
    wire  [25:0] Target;

   Instruction ins(Instruction, op, Rs, Rt, Rd, func, imm16, Target);
  
   initial
   begin
      Instruction = 32'h02538820;
      #10 Instruction = 32'hae320000;   
   end
 
endmodule
