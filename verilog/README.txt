The verilog here is exemplary. 
The SRAMs are synchronous and read/write on the clock high, when either (READ or WRITE) and banksel are asserted high.
Outputs are static latched until the next read operation.

