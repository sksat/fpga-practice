module top(
	input wire CLK_IN,
	input wire RST_N,
	output wire R_LED
);

	reg [31:0] count;
	reg ledout;

	initial begin // 初期化
		count = 32'b0;
	end

	always @ (posedge CLK_IN) begin // クロックの立ち上がり時に起動
		if(count == 32'd24_000_000) begin
			count <= 32'b0;
			ledout <= !ledout;
		end
		else begin
			count =  count + 1;
		end
	end

	assign R_LED = ledout;
endmodule
