// synchronous SRAM verilog

module srambank_128x4x80_6t122 (
			    input clk
			  , input [8:0] ADDRESS          // address
			  , input [79:0] wd                // data to write
		       	  , input banksel                    // access enable
			  , input read                       // read enable
			  , input write                      // write enable
			  , output reg [79:0] dataout      // latched data output (only updated on read)
			    );

   reg [79:0] 				      mem [511:0];

   always @ (posedge(clk))
     begin                            // should have an error assert on read & write at once...
	if (write & banksel)
	  mem[ADDRESS] <= wd;
	else if (read & banksel)
	  dataout <= mem[ADDRESS];    // output is latched until next read, independent of writes
     end
endmodule // 

 
