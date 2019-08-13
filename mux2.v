module mux2 #(parameter WIDTH = 32) (
input s,
input [WIDTH-1:0] d0, d1,			output [WIDTH-1:0] y
);	assign y = s ? d1 : d0;
endmodule 