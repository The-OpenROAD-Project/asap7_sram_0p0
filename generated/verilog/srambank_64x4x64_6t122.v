// synchronous SRAM verilog

module srambank_64x4x64_6t122 (
			    input clk
			  , input [7:0] ADDRESS          // address
			  , input [63:0] wd                // data to write
		       	  , input banksel                    // access enable
			  , input read                       // read enable
			  , input write                      // write enable
			  , output reg [63:0] dataout      // latched data output (only updated on read)
			    );

   reg [63:0] 				      mem [255:0];

   always @ (posedge(clk))
     begin                            // should have an error assert on read & write at once...
	if (write & banksel)
	  mem[ADDRESS] <= wd;
	else if (read & banksel)
	  dataout <= mem[ADDRESS];    // output is latched until next read, independent of writes
     end
endmodule // 

 
