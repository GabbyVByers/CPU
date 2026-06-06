module PROGRAM_COUNTER (
	input  wire        CLK,
	input  wire        RST,
	input  wire        INC,
	input  wire        LOAD,
	input  wire [15:0] DATA_BUS,
	output reg  [15:0] PC
);

always @(posedge CLK) begin
	if (RST) begin
		PC <= 16'd0;
	end
	else if (INC) begin
		PC <= PC + 16'd1;
	end
	else if (LOAD) begin
		PC <= DATA_BUS;
	end
end

endmodule

