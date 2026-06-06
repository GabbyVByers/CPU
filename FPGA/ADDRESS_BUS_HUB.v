module ADDRESS_BUS_HUB (
	input wire [15:0] SRC,
	input wire [15:0] PC,
	input wire [15:0] SP,
	input wire [15:0] OPERAND,
	
	input wire         ENABLE_SRC_ADDRESS_BUS,
	input wire         ENABLE_PC_ADDRESS_BUS,
	input wire         ENABLE_SP_ADDRESS_BUS,
	input wire         ENABLE_OPERAND_ADDRESS_BUS,
	
	output wire [15:0] ADDRESS_BUS
);

assign ADDRESS_BUS = (ENABLE_SRC_ADDRESS_BUS?     SRC     : 16'd0) |
                     (ENABLE_PC_ADDRESS_BUS?      PC      : 16'd0) |
                     (ENABLE_SP_ADDRESS_BUS?      SP      : 16'd0) |
                     (ENABLE_OPERAND_ADDRESS_BUS? OPERAND : 16'd0);

endmodule

