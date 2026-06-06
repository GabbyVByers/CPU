module OPCODE_REGISTER (
	input  wire        CLK,
	input  wire        RST,
	input  wire        LOAD,
	input  wire [15:0] DATA_BUS,
	output wire [7:0]  INSTRUCTION,
	output wire [1:0]  DST_SELECTION,
	output wire [1:0]  SRC_SELECTION,
	output wire [3:0]  FLAG
);

reg [15:0] REG;
assign INSTRUCTION   = REG[15:8];
assign DST_SELECTION = REG[7:6];
assign SRC_SELECTION = REG[5:4];
assign FLAG          = REG[3:0];

always @(posedge CLK) begin
	if (RST) begin
		REG <= 16'd0;
	end
	else if (LOAD) begin
		REG <= DATA_BUS;
	end
end

endmodule

