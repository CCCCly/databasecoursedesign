module Test();
reg clk,rst;
MIPS mips(clk,rst);

initial 
begin 
	clk=0;
	rst=0;
	#2000 clk=1;
	#20 rst=0;
end
always #30 clk=~clk;
endmodule