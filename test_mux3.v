module test_mux3();
   reg [31:0] A,B,C;
   reg [1:0] ctr;
   wire [31:0] Result;
  
   mux3 #(.WIDTH(32)) mux3(ctr,A,B,C,Result);
   initial
   begin
   A = 32'b1;
   B = 32'b10;
   C = 32'b100;
   ctr = 2'b1;
   #10 A = 32'b11;
    B = 32'b110;
    C = 32'b0;
   ctr = 2'b0;
   end
   
endmodule

