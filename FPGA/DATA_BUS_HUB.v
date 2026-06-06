module DATA_BUS_HUB (
	input  wire [15:0] DST,
	input  wire [15:0] SRC,
	input  wire [15:0] RAM,
	input  wire [15:0] PC,
	input  wire [15:0] OPERAND,
	input  wire [15:0] KEYBOARD,
	input  wire [15:0] SP,
	input  wire [15:0] ALU,
	
	input  wire        ENABLE_DST_DATA_BUS,
	input  wire        ENABLE_SRC_DATA_BUS,
	input  wire        ENABLE_RAM_DATA_BUS,
	input  wire        ENABLE_PC_DATA_BUS,
	input  wire        ENABLE_OPERAND_DATA_BUS,
	input  wire        ENABLE_KEYBOARD_DATA_BUS,
	input  wire        ENABLE_SP_DATA_BUS,
	
	output wire [15:0] DATA_BUS
);

assign DATA_BUS = (ENABLE_DST_DATA_BUS?      DST      : 16'd0) |
                  (ENABLE_SRC_DATA_BUS?      SRC      : 16'd0) |
                  (ENABLE_RAM_DATA_BUS?      RAM      : 16'd0) |
                  (ENABLE_PC_DATA_BUS?       PC       : 16'd0) |
                  (ENABLE_OPERAND_DATA_BUS?  OPERAND  : 16'd0) |
                  (ENABLE_KEYBOARD_DATA_BUS? KEYBOARD : 16'd0) |
                  (ENABLE_SP_DATA_BUS?       SP       : 16'd0) |
						 ALU;

endmodule

