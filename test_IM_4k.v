module test_im();
   reg [11:2] addr;
   wire [31:0] dout;
   
   IM_4k im(addr,dout);
   initial
   begin
    addr = 10'b1;
    #10 addr = 10'b10;
    #10 addr = 10'b11;
    #10 addr = 10'b100;
   end

endmodule
