module testbench; 
	reg[7:0] in;
	reg[2:0] sel;
	wire out;
	mux8x1 DUT(in,sel,out);

	
	initial
		begin
			
			$monitor("At time: ",$time," in=%b, sel=%b, out=%b",in,sel,out);  // what is printed
			$dumpfile("pa21_tb.vcd");
			$dumpvars(0,testbench);

			#5 in=8'b01100110;sel=3'b000;
			#5 in=8'b01100110;sel=3'b001;
			#5 in=8'b01100110;sel=3'b010;
			#5 in=8'b01100110;sel=3'b011;
			#5 in=8'b01100110;sel=3'b100;
			#5 in=8'b00000000;sel=3'b101;
			#5 in=8'b01100110;sel=3'b110;
			#5 in=8'b01100110;sel=3'b111;
			#5 in=8'b00000001;sel=3'b000;
			#5 in=8'b00100010;sel=3'b001;
			#5 $finish;

		end
endmodule