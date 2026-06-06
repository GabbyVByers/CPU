module CONTROL_DECODER (
	input  wire [31:0] CONTROL_LINES,
	output wire        LOAD_DST,
	output wire        ENABLE_DST_DATA_BUS,
	output wire        ENABLE_SRC_DATA_BUS,
	output wire        ENABLE_SRC_ADDRESS_BUS,
	output wire        ENABLE_SRC_ALU_RIGHT,
	output wire        ENABLE_ALU_SHR,
	output wire        ENABLE_ALU_SHL,
	output wire        ENABLE_ALU_ADD,
	output wire        ENABLE_ALU_SUB,
	output wire        ENABLE_ALU_AND,
	output wire        ENABLE_ALU_ORR,
	output wire        ENABLE_ALU_XOR,
	output wire        ENABLE_ALU_CMP,
	output wire        LOAD_RAM,
	output wire        ENABLE_RAM_DATA_BUS,
	output wire        INCREMENT_PC,
	output wire        LOAD_PC,
	output wire        ENABLE_PC_DATA_BUS,
	output wire        ENABLE_PC_ADDRESS_BUS,
	output wire        INCREMENT_SP,
	output wire        DECREMENT_SP,
	output wire        ENABLE_SP_DATA_BUS,
	output wire        ENABLE_SP_ADDRESS_BUS,
	output wire        LOAD_OPCODE,
	output wire        LOAD_OPERAND,
	output wire        ENABLE_OPERAND_DATA_BUS,
	output wire        ENABLE_OPERAND_ADDRESS_BUS,
	output wire        ENABLE_OPERAND_ALU_RIGHT,
	output wire        ENABLE_KEYBOARD_DATA_BUS,
	output wire        LOAD_VRAM
);

assign LOAD_DST                   = CONTROL_LINES[29];
assign ENABLE_DST_DATA_BUS        = CONTROL_LINES[28];
assign ENABLE_SRC_DATA_BUS        = CONTROL_LINES[27];
assign ENABLE_SRC_ADDRESS_BUS     = CONTROL_LINES[26];
assign ENABLE_SRC_ALU_RIGHT       = CONTROL_LINES[25];
assign ENABLE_ALU_SHR             = CONTROL_LINES[24];
assign ENABLE_ALU_SHL             = CONTROL_LINES[23];
assign ENABLE_ALU_ADD             = CONTROL_LINES[22];
assign ENABLE_ALU_SUB             = CONTROL_LINES[21];
assign ENABLE_ALU_AND             = CONTROL_LINES[20];
assign ENABLE_ALU_ORR             = CONTROL_LINES[19];
assign ENABLE_ALU_XOR             = CONTROL_LINES[18];
assign ENABLE_ALU_CMP             = CONTROL_LINES[17];
assign LOAD_RAM                   = CONTROL_LINES[16];
assign ENABLE_RAM_DATA_BUS        = CONTROL_LINES[15];
assign INCREMENT_PC               = CONTROL_LINES[14];
assign LOAD_PC                    = CONTROL_LINES[13];
assign ENABLE_PC_DATA_BUS         = CONTROL_LINES[12];
assign ENABLE_PC_ADDRESS_BUS      = CONTROL_LINES[11];
assign INCREMENT_SP               = CONTROL_LINES[10];
assign DECREMENT_SP               = CONTROL_LINES[ 9];
assign ENABLE_SP_DATA_BUS         = CONTROL_LINES[ 8];
assign ENABLE_SP_ADDRESS_BUS      = CONTROL_LINES[ 7];
assign LOAD_OPCODE                = CONTROL_LINES[ 6];
assign LOAD_OPERAND               = CONTROL_LINES[ 5];
assign ENABLE_OPERAND_DATA_BUS    = CONTROL_LINES[ 4];
assign ENABLE_OPERAND_ADDRESS_BUS = CONTROL_LINES[ 3];
assign ENABLE_OPERAND_ALU_RIGHT   = CONTROL_LINES[ 2];
assign ENABLE_KEYBOARD_DATA_BUS   = CONTROL_LINES[ 1];
assign LOAD_VRAM                  = CONTROL_LINES[ 0];

endmodule

