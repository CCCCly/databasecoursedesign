
module mux3 #(parameter WIDTH = 32) (
input [1:0]ctr,	
input [WIDTH-1:0] d0, d1,d2,		output reg[WIDTH-1:0] r
);	
always@(d0 or d1 or d2 or ctr)	
begin
	case(ctr)
	2'b00: r = d0;
	2'b01: r = d1;
	2'b10: r = d2;
	endcase
end
endmodule 