module ALU (
	input  wire [15:0] LEFT,
	input  wire [15:0] RIGHT,
	input  wire        CLK,
	input  wire        RST,
	input  wire        SHR,
	input  wire        SHL,
	input  wire        ADD,
	input  wire        SUB,
	input  wire        AND,
	input  wire        ORR,
	input  wire        XOR,
	input  wire        CMP,
	
	output wire [15:0] RESULT,
	output reg         FLAG_ZERO,
	output reg         FLAG_EQUAL,
	output reg         FLAG_GREATER_THAN,
	output reg         FLAG_LESS_THAN
);

wire [15:0] A_SHIFT_RIGHT = LEFT >> 1;
wire [15:0] A_SHIFT_LEFT  = LEFT << 1;
wire [15:0] A_PLUS_B      = LEFT + RIGHT;
wire [15:0] A_MINUS_B     = LEFT - RIGHT;
wire [15:0] A_AND_B       = LEFT & RIGHT;
wire [15:0] A_ORR_B       = LEFT | RIGHT;
wire [15:0] A_XOR_B       = LEFT ^ RIGHT;

assign RESULT = (SHR) ? A_SHIFT_RIGHT :
                (SHL) ? A_SHIFT_LEFT  :
                (ADD) ? A_PLUS_B      :
                (SUB) ? A_MINUS_B     :
                (AND) ? A_AND_B       :
                (ORR) ? A_ORR_B       :
                (XOR) ? A_XOR_B       : 16'd0;

always @(posedge CLK) begin
	if (RST) begin
		FLAG_ZERO         <= 1'b0;
		FLAG_EQUAL        <= 1'b0;
		FLAG_GREATER_THAN <= 1'b0;
		FLAG_LESS_THAN    <= 1'b0;
	end
	else if (CMP) begin
		FLAG_ZERO         <= (LEFT == 16'd0);
		FLAG_EQUAL        <= (LEFT == RIGHT);
		FLAG_GREATER_THAN <= (LEFT >  RIGHT);
		FLAG_LESS_THAN    <= (LEFT <  RIGHT);
	end
end

endmodule

