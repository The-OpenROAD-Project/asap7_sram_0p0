## SRAMs for the ASAP7 7-nm PDK

- LEF, liberty, and (very basic) verilog files in a variety of sizes
- GDSII and CDL netlists are provided for the three base sizes 
(other sizes were derived) from these basic blocks

The SRAMs are similar to those described in V. Vashishtha, et al., below.

The enclosed arrays do not include read or write assist--these do not affect APR usage.

Be careful with power gridding in APR. The SRAM gridding is not as good as it should be.
The smallest (most difficult) height (as measured by bitline length) has been tested with Innovus and 
works fine if the correct M5 vertical lines are built in the power planning. These drop to M4 lines at 
each bit (column group--see the reference) and in the decode/control block. The taller arrays will of course 
be easier to land M5 power rails on. 

The timing pins (sdel[4:0]) can be tied high/low as desired. The sense timer is adjustable, but this is not 
reflected in the verilog. 

The GDS and CDL should provide a good starting point to modifications, including read/write assist and
improved power gridding, by bit write masking, etc. The build up uses the center decode/control and 
column groups as the primary blocks. Pins are on M5 to allow M4/M5 metal to metal capacitors over the
cell arrays for the read and write assists, but this is not implemented.

**If you use the SRAM files here in any combination or part thereof  in any published work, then
we would appreciate citation of the following article:**

[V. Vashishtha, M. Vangala, P. Sharma, and L. T. Clark, "Robust 7-nm SRAM design on a predictive PDK,"
in Proc. IEEE Int. Symp. Circuits Syst. (ISCAS), May 2017, pp. 149-154](https://doi.org/10.1109/ISCAS.2017.8050316)

## License

ASAP PDK and libraries have a BSD 3-Clause license. 

## Primary Contributors

Dr. Vinay Vashishtha, Prof. Lawrence T. Clark, Maximilian Siath, Parv Sharma

