module Ext #(parameter WIDTH = 16, ExtWIDTH = 32)
(ExtOp,Din,Dout);
input ExtOp;
input [WIDTH-1:0]Din;
output [ExtWIDTH-1:0]Dout;

assign Dout = ExtOp ? {{ExtWIDTH-WIDTH{Din[WIDTH-1]}},Din} :{{ExtWIDTH-WIDTH{1'b0}},Din};

endmodule
