module test_npc();
    reg [31:0] PC;
    reg [25:0] Target;
    reg [15:0] imm16;
    reg Branch, Zero, Jump;
    
    wire [31:0] NPC;
    npc _npc(PC, imm16, Branch, Zero, Jump,Target,  NPC);
   initial
    begin
     PC = 32'b100;
     Target = 26'b1000;
     imm16 = 16'b10;
     Zero = 1;
     Branch = 1;
     Jump = 0;
     #10 Jump=1;
     Branch = 0;
     
    end

   endmodule
