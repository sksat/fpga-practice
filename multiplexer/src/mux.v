module mux(
	input wire A,
	input wire B,
	input wire select,
	output wire out
);

	wire nsel;
	wire c1;
	wire c2;

	mynot mux_mynot(select, nsel);
	myand mux_myand1(nsel, A, c1);
	myand mux_myand2(select, B, c2);
	myor mux_myor(c1, c2, out);

//	assign out = (select ? A : B);

endmodule
