module top(
	input wire  CLK_IN,
	input wire  RST_N,			// 押した時0
	output wire [2:0]RGB_LED	// 0の時点灯
);

//mux mux0(1, 0, RST_N, RGB_LED[0]);
//mux mux1(0, 1, RST_N, RGB_LED[1]);

myxor(0, RST_N, RGB_LED[0]);

//myor(0, RST_N, RGB_LED[0]);

//myand myand(1, 0, RGB_LED[0]);

//mynot(RST_N, RGB_LED[0]);

//assign RGB_LED[0] = 1;
assign RGB_LED[1] = 1;
assign RGB_LED[2] = 1;

endmodule
