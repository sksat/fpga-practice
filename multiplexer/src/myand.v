module myand(
	input A,
	input B,
	output out
);

	wire andout;

	mynand(A, B, andout);
	mynot(andout, out);

endmodule
