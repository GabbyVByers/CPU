module LOAD_DEMUX (
	input  wire [1:0] DST_SELECTION,
	input  wire       LOAD_DST,
	output wire       LOAD_R0,
	output wire       LOAD_R1,
	output wire       LOAD_R2,
	output wire       LOAD_R3
);

assign LOAD_R0 = (DST_SELECTION == 2'd0)? LOAD_DST : 0;
assign LOAD_R1 = (DST_SELECTION == 2'd1)? LOAD_DST : 0;
assign LOAD_R2 = (DST_SELECTION == 2'd2)? LOAD_DST : 0;
assign LOAD_R3 = (DST_SELECTION == 2'd3)? LOAD_DST : 0;

endmodule

