module test_ext();
    reg Extop;
    reg [15:0] in;
    wire [31:0] out;
    
   Ext #(16,32) ext(Extop, in, out);
  
   initial
   begin
    Extop = 0;
    in = 16'b11;
    #10 in = 16'hE001;  
      
   end
     

endmodule

