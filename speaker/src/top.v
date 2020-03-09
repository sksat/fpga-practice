module top(
	input wire  CLK_IN,
	input wire  RST_N,
	output wire [2:0]RGB_LED,
	output wire SPEAKER
);

	parameter CLOCK_FREQ = 32'd24_000_000;

	reg [31:0] count;
	reg [31:0] count_440hz;
	reg clk_1hz, clk_2hz, clk_440hz;

	wire speaker;

	assign speaker = clk_440hz & (!RST_N);

	initial begin // 初期化
		count = 32'b0;
		count_440hz = 32'b0;
		clk_1hz = 0;
		clk_2hz = 0;
		clk_440hz = 1;
	end

	always @(posedge CLK_IN) begin
		if(count == CLOCK_FREQ) begin
			count <= 32'b0;
			clk_1hz <= !clk_1hz;
		end
		else begin
			count =  count + 1;
		end
	end

	always @(posedge CLK_IN) begin
		if(count_440hz >= (CLOCK_FREQ / 440)/2) begin
			count_440hz = 32'b0;
			clk_440hz <= !clk_440hz;
		end
		count_440hz = count_440hz + 1;
	end

	assign RGB_LED[0] = clk_1hz;
	assign RGB_LED[1] = 1;
	assign RGB_LED[2] = 1;
	assign SPEAKER = speaker;
endmodule
