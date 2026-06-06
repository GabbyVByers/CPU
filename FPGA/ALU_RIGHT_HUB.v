module ALU_RIGHT_HUB (
	input  wire [15:0] OPERAND,
	input  wire [15:0] SRC,
	
	input  wire        ENABLE_OPERAND_ALU_RIGHT,
	input  wire        ENABLE_SRC_ALU_RIGHT,
	
	output wire [15:0] ALU_RIGHT
);

assign ALU_RIGHT = (ENABLE_OPERAND_ALU_RIGHT? OPERAND : 16'd0) | (ENABLE_SRC_ALU_RIGHT? SRC : 16'd0);

endmodule

