module STACK_POINTER (
	input  wire        CLK,
	input  wire        RST,
	input  wire        INC,
	input  wire        DEC,
	output reg  [15:0] SP
);

always @(posedge CLK) begin
	if (RST) begin
		SP <= 16'd0;
	end
	else if (INC) begin
		SP <= SP + 16'd1;
	end
	else if (DEC) begin
		SP <= SP - 16'd1;
	end
end

endmodule

