module myxor(
	input A,
	input B,
	output out
);

	wire tmp1;
	wire tmp2;
	wire tmp3;

	mynand(A, B, tmp1);
	mynand(A, tmp1, tmp2);
	mynand(tmp1, B, tmp3);
	mynand(tmp2, tmp3, out);

endmodule
