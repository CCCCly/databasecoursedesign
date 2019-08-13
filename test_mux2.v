module test_mux2();
   reg [31:0] A,B;
   reg ctr;
   wire [31:0] Result;
  
mux2 #(.WIDTH(32)) mux2(ctr,A,B,Result);
   initial
   begin
   A = 32'b1;
   B = 32'b10;
   ctr = 1'b1;
   #10 A = 32'b11;
    B = 32'b110;
   ctr = 1'b0;
   end
   
endmodule
