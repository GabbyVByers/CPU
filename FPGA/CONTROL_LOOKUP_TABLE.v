module CONTROL_ROM (
	input  wire [7:0]  instruction,
	input  wire [1:0]  micro_counter,
	input  wire        flags_valid,
	output wire [31:0] control_lines
);

reg  [31:0] rom_data;
wire [6:0]  rom_input = {instruction[4:0], micro_counter};

always @(*) begin
	case (rom_input)
		7'd0   : rom_data = 32'd51264;
		7'd1   : rom_data = 32'd51232;
		7'd2   : rom_data = 32'd536870928;
		7'd3   : rom_data = 32'd0;
		7'd4   : rom_data = 32'd51264;
		7'd5   : rom_data = 32'd51232;
		7'd6   : rom_data = 32'd536903688;
		7'd7   : rom_data = 32'd0;
		7'd8   : rom_data = 32'd51264;
		7'd9   : rom_data = 32'd51232;
		7'd10  : rom_data = 32'd268501000;
		7'd11  : rom_data = 32'd0;
		7'd12  : rom_data = 32'd51264;
		7'd13  : rom_data = 32'd604012544;
		7'd14  : rom_data = 32'd0;
		7'd15  : rom_data = 32'd0;
		7'd16  : rom_data = 32'd51264;
		7'd17  : rom_data = 32'd335609856;
		7'd18  : rom_data = 32'd0;
		7'd19  : rom_data = 32'd0;
		7'd20  : rom_data = 32'd51264;
		7'd21  : rom_data = 32'd671088640;
		7'd22  : rom_data = 32'd0;
		7'd23  : rom_data = 32'd0;
		7'd24  : rom_data = 32'd51264;
		7'd25  : rom_data = 32'd553648128;
		7'd26  : rom_data = 32'd0;
		7'd27  : rom_data = 32'd0;
		7'd28  : rom_data = 32'd51264;
		7'd29  : rom_data = 32'd545259520;
		7'd30  : rom_data = 32'd0;
		7'd31  : rom_data = 32'd0;
		7'd32  : rom_data = 32'd51264;
		7'd33  : rom_data = 32'd51232;
		7'd34  : rom_data = 32'd541065220;
		7'd35  : rom_data = 32'd0;
		7'd36  : rom_data = 32'd51264;
		7'd37  : rom_data = 32'd574619648;
		7'd38  : rom_data = 32'd0;
		7'd39  : rom_data = 32'd0;
		7'd40  : rom_data = 32'd51264;
		7'd41  : rom_data = 32'd572522496;
		7'd42  : rom_data = 32'd0;
		7'd43  : rom_data = 32'd0;
		7'd44  : rom_data = 32'd51264;
		7'd45  : rom_data = 32'd571473920;
		7'd46  : rom_data = 32'd0;
		7'd47  : rom_data = 32'd0;
		7'd48  : rom_data = 32'd51264;
		7'd49  : rom_data = 32'd570949632;
		7'd50  : rom_data = 32'd0;
		7'd51  : rom_data = 32'd0;
		7'd52  : rom_data = 32'd51264;
		7'd53  : rom_data = 32'd570687488;
		7'd54  : rom_data = 32'd0;
		7'd55  : rom_data = 32'd0;
		7'd56  : rom_data = 32'd51264;
		7'd57  : rom_data = 32'd33685504;
		7'd58  : rom_data = 32'd0;
		7'd59  : rom_data = 32'd0;
		7'd60  : rom_data = 32'd51264;
		7'd61  : rom_data = 32'd536870914;
		7'd62  : rom_data = 32'd0;
		7'd63  : rom_data = 32'd0;
		7'd64  : rom_data = 32'd51264;
		7'd65  : rom_data = 32'd1;
		7'd66  : rom_data = 32'd0;
		7'd67  : rom_data = 32'd0;
		7'd68  : rom_data = 32'd51264;
		7'd69  : rom_data = 32'd51232;
		7'd70  : rom_data = 32'd8208;
		7'd71  : rom_data = 32'd0;
		7'd72  : rom_data = 32'd51264;
		7'd73  : rom_data = 32'd51232;
		7'd74  : rom_data = 32'd70784;
		7'd75  : rom_data = 32'd8208;
		7'd76  : rom_data = 32'd51264;
		7'd77  : rom_data = 32'd512;
		7'd78  : rom_data = 32'd41088;
		7'd79  : rom_data = 32'd0;
		7'd80  : rom_data = 32'd51264;
		7'd81  : rom_data = 32'd536871168;
		7'd82  : rom_data = 32'd0;
		7'd83  : rom_data = 32'd0;
		7'd84  : rom_data = 32'd51264;
		7'd85  : rom_data = 32'd268502144;
		7'd86  : rom_data = 32'd0;
		7'd87  : rom_data = 32'd0;
		7'd88  : rom_data = 32'd51264;
		7'd89  : rom_data = 32'd512;
		7'd90  : rom_data = 32'd536903808;
		7'd91  : rom_data = 32'd0;
		7'd92  : rom_data = 32'd51264;
		7'd93  : rom_data = 32'd0;
		7'd94  : rom_data = 32'd0;
		7'd95  : rom_data = 32'd0;
		7'd96  : rom_data = 32'd51264;
		7'd97  : rom_data = 32'd0;
		7'd98  : rom_data = 32'd0;
		7'd99  : rom_data = 32'd0;
		7'd100 : rom_data = 32'd51264;
		7'd101 : rom_data = 32'd0;
		7'd102 : rom_data = 32'd0;
		7'd103 : rom_data = 32'd0;
		7'd104 : rom_data = 32'd51264;
		7'd105 : rom_data = 32'd0;
		7'd106 : rom_data = 32'd0;
		7'd107 : rom_data = 32'd0;
		7'd108 : rom_data = 32'd51264;
		7'd109 : rom_data = 32'd0;
		7'd110 : rom_data = 32'd0;
		7'd111 : rom_data = 32'd0;
		7'd112 : rom_data = 32'd51264;
		7'd113 : rom_data = 32'd0;
		7'd114 : rom_data = 32'd0;
		7'd115 : rom_data = 32'd0;
		7'd116 : rom_data = 32'd51264;
		7'd117 : rom_data = 32'd0;
		7'd118 : rom_data = 32'd0;
		7'd119 : rom_data = 32'd0;
		7'd120 : rom_data = 32'd51264;
		7'd121 : rom_data = 32'd0;
		7'd122 : rom_data = 32'd0;
		7'd123 : rom_data = 32'd0;
		7'd124 : rom_data = 32'd51264;
		7'd125 : rom_data = 32'd0;
		7'd126 : rom_data = 32'd0;
		7'd127 : rom_data = 32'd0;
		default: rom_data = 32'd0;
	endcase
end

wire [31:0] always_allowed_control_lines;
assign always_allowed_control_lines[31:16] = 16'd0;
assign always_allowed_control_lines[15]    = rom_data[15]; // Enable RAM -> Data Bus
assign always_allowed_control_lines[14]    = rom_data[14]; // Increment PC
assign always_allowed_control_lines[13:12] = 2'd0;
assign always_allowed_control_lines[11]    = rom_data[11]; // Enable PC -> Address Bus
assign always_allowed_control_lines[10:7]  = 4'd0;
assign always_allowed_control_lines[6]     = rom_data[6];  // Load OPCODE
assign always_allowed_control_lines[5]     = rom_data[5];  // Load OPERAND
assign always_allowed_control_lines[4:0]   = 5'd0;

assign control_lines = (flags_valid)? rom_data : always_allowed_control_lines;

endmodule

