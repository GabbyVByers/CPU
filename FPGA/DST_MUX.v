module DST_MUX (
	input  wire [1:0]  DST_SELECTION,
	input  wire [15:0] DST_A,
	input  wire [15:0] DST_B,
	input  wire [15:0] DST_C,
	input  wire [15:0] DST_D,
	output wire [15:0] DST_OUT
);

assign DST_OUT = (DST_SELECTION == 2'd0)? DST_A :
                 (DST_SELECTION == 2'd1)? DST_B :
                 (DST_SELECTION == 2'd2)? DST_C :
                 (DST_SELECTION == 2'd3)? DST_D : DST_A;

endmodule

