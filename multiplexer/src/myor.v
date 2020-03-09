module myor(
	input A,
	input B,
	output out
);

	wire anot;
	wire bnot;

	mynot(A, anot);
	mynot(B, bnot);

	mynand(anot, bnot, out);

endmodule
