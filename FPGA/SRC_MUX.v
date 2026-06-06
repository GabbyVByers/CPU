module SRC_MUX (
	input  wire [1:0]  SRC_SELECTION,
	input  wire [15:0] SRC_A,
	input  wire [15:0] SRC_B,
	input  wire [15:0] SRC_C,
	input  wire [15:0] SRC_D,
	output wire [15:0] SRC_OUT
);

assign SRC_OUT = (SRC_SELECTION == 2'd0)? SRC_A :
                 (SRC_SELECTION == 2'd1)? SRC_B :
                 (SRC_SELECTION == 2'd2)? SRC_C :
                 (SRC_SELECTION == 2'd3)? SRC_D : SRC_A;

endmodule

