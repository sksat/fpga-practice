module top(
	input wire  CLK_IN,
	input wire  RST_N,
	output wire [2:0]RGB_LED,
	output wire [30:0]GPIO
);

assign RGB_LED[0] = RST_N;
assign RGB_LED[1] = 1;
assign RGB_LED[2] = 1;

endmodule
