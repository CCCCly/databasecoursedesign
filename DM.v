module DM_4k( Ad, Din, clk, WE, Dout ) ;
    input   [11:2]  Ad ;  // address bus
    input   [31:0]  Din ;   // 32-bit input data
    input           clk ;   // clock
    input           WE ;    // memory write enable
    output  [31:0]  Dout ;  // 32-bit memory output

    reg     [31:0]  dm[1023:0] ;
    
    integer i;
    initial
    begin
        for(i = 0; i < 1024; i=i+1) 
		dm[i] = 32'b0;
    end
    assign Dout = dm[Ad[11:2]];
    
    always@(posedge clk)
        if (WE)
            dm[Ad[11:2]] <= Din;
endmodule