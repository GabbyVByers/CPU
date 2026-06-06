module MICRO_COUNTER (
	input  wire       CLK,
	input  wire       RST,
	output reg  [1:0] COUNTER
);

always @(negedge CLK) begin
	if (RST) begin
		COUNTER <= 2'd0;
	end
	else begin
		COUNTER <= COUNTER + 2'd1;
	end
end

endmodule

