module test_dm();
   reg [11:2] addr;
   reg [31:0] din;
   reg  we,clk;
   wire [31:0] dout;
   DM_4k dm(addr,din,we,clk,dout);   

   initial
   begin
     clk = 0;
     we = 0;
     addr = 32'b1;
     #10 addr = 32'b10;
     #10 addr = 32'b1;
      we = 1;
      din = 32'b100000;
     #10 addr = 32'b10;
      we = 1;
       din = 32'b0;
     #10 addr = 32'b1;
       we = 0;
       din = 32'b0;
       
   end
   always #5 clk = ~clk;

endmodule

