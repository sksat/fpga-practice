module mynand(
	input A,
	input B,
	output out
);

	assign out = ~(A & B);

endmodule
