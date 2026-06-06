module FLAG_VALIDATOR (
	input  wire [3:0] CURRENT_FLAG,
	input  wire       ZERO_FLAG,
	input  wire       EQUAL_FLAG,
	input  wire       GREATER_THAN_FLAG,
	input  wire       LESS_THAN_FLAG,
	output wire       FLAGS_ARE_VALID
);

wire FLAG_MUST_BE_TESTED = CURRENT_FLAG[3];
wire INVERT_FLAG         = CURRENT_FLAG[2];
wire SELECTED_FLAG = (CURRENT_FLAG[1:0] == 2'd0)? ZERO_FLAG         :
                     (CURRENT_FLAG[1:0] == 2'd1)? EQUAL_FLAG        :
                     (CURRENT_FLAG[1:0] == 2'd2)? GREATER_THAN_FLAG :
                     (CURRENT_FLAG[1:0] == 2'd3)? LESS_THAN_FLAG    : ZERO_FLAG;

assign FLAGS_ARE_VALID = (!FLAG_MUST_BE_TESTED) | ((INVERT_FLAG) ^ (SELECTED_FLAG));
							
endmodule

