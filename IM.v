module IM_4k(Ad , Dout);
input [11:2] Ad;
output [31:0]Dout;
reg[31:0] im[1023:0];
initial 
begin
	$readmemh("code.txt",im);
end
assign Dout = im[Ad[11:2]];
endmodule