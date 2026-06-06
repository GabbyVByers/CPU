module REGISTER (
	input  wire        CLK,
	input  wire        RST,
	input  wire        LOAD,
	input  wire [15:0] DATA_BUS,
	output reg  [15:0] REG
);

always @(posedge CLK) begin
	if (RST) begin
		REG <= 16'd0;
	end
	else if (LOAD) begin
		REG <= DATA_BUS;
	end
end

endmodule

