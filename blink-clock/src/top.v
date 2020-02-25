module top(
	input wire CLK_IN,
	input wire RST_N,
	output reg R_LED
);

	always @ (posedge CLK_IN) begin // クロックの立ち上がり時に起動
		R_LED = RST_N;
	end

endmodule
