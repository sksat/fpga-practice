module mux(
	input wire A,
	input wire B,
	input wire select,
	output wire out
);

	assign out = (select ? A : B);

endmodule
