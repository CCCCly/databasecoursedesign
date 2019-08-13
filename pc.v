module pc (NPC, clk, rst, PC);
    input [31:0] NPC;
    input clk, rst;
    
    output reg [31:0] PC;
    
    initial
    begin
        PC = 32'h0000_3000;
    end
    
    always@(posedge clk)
    begin
        PC <= rst ? 32'h0000_3000 : NPC;
    end

endmodule