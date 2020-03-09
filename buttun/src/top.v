module top(
	input wire  CLK_IN,
	input wire  RST_N,
	output wire [2:0]RGB_LED,
	inout wire [30:0]GPIO
);

	assign GPIO[30] = 0;
	assign GPIO[27] = 0;
	assign GPIO[24] = 0;

	assign RGB_LED[0] = GPIO[28];
	assign RGB_LED[1] = GPIO[25];
	assign RGB_LED[2] = GPIO[22];

endmodule
