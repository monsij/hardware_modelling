module testbench;
	reg[15:0]DATA;
	//wire[4:0]COUNT;

	wire COUNT;
	onecount DUT(COUNT,DATA);

	initial
		begin
			$monitor("At time : ",$time," DATA=%b, COUNT=%d",DATA,COUNT);
			//$dumpfile("pa6.vcd");
			//$dumpvars(0,testbench);

			#5 DATA = 16'b0101010101010111;
			#5 DATA = 16'b0000000000000001;
			#5 DATA = 16'b0000000100000000;
			#5 DATA = 16'b0111111111111111;
			#5 DATA = 16'b0000000000000000;
			#5 $finish;
		end
endmodule
