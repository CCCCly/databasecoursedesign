module registers (busW, clk, WE, RW, RA, RB, busA, busB);
    input [31:0] busW;
    input clk, WE;
    input [4:0] RW, RA, RB;
    output [31:0] busA, busB;
    
    reg [31:0] regs[31:0];
    
    initial
    begin
        regs[0] = 0;
    end
    assign busA = regs[RA];
    assign busB = regs[RB];
    
    always@(posedge clk)
    begin
        if (WE && (RW != 0) ) regs[RW] <= busW;
    end

endmodule
