module MAIN_RANDOM_ACCESS_MEMORY (
	input  wire        CLK,
	input  wire        LOAD,
	input  wire [15:0] ADDRESS,
	input  wire [15:0] DATA_IN,
	output wire [15:0] DATA_OUT
);

reg [15:0] MEMORY [0:65535];

initial begin
	$readmemh("memory_init.hex", MEMORY);
end

assign DATA_OUT = MEMORY[ADDRESS];

always @(posedge CLK) begin
	if (LOAD) begin
		MEMORY[ADDRESS] <= DATA_IN;
	end
end

endmodule

