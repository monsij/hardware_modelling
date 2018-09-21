module encoder (CODE, DATA);
	input [7:0] DATA;
	output [2:0] CODE;
	
	reg [2:0]CODE;
	always @* begin
		if(DATA == 8'b10000000)
			CODE = 3'b111;
		else if(DATA == 8'b01000000)
			CODE = 3'b110;
		else if(DATA == 8'b00100000)
			CODE = 3'b101;
		else if(DATA == 8'b00010000)
			CODE = 3'b100;
		else if(DATA == 8'b00001000)
			CODE = 3'b011;
		else if(DATA == 8'b00000100)
			CODE = 3'b010;
		else if(DATA == 8'b00000010)
			CODE = 3'b001;
		else if(DATA == 8'b00000001)
			CODE = 3'b000;
		else
			CODE = 3'bxxx;
	end
endmodule