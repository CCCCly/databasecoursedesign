module test_pc();
    reg[31:0] NPC;
    reg clk, rst;
    
    wire [31:0] PC;

  pc _pc(NPC, clk, rst, PC);
   initial
   begin
       clk = 0;
       rst = 0;
       NPC =  32'h0000_3001;
       #10
        rst = 1; 
   end
   always #30 clk = ~clk;
    

endmodule
