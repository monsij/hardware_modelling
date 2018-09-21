module testbench;
	reg[7:0]DATA;
	wire[2:0]CODE;

	encoder DUT(CODE,DATA);
	initial
		begin
			$monitor("At time : ",$time," DATA=%b, CODE=%d",DATA,CODE);
			// CODE variable gives output as 3 bit binary but %d will print it as integer %b as binary
			$dumpfile("pa5.vcd");
			$dumpvars(0,testbench);

			#5 DATA=8'b10000000;
			#5 DATA=8'b01000000;
			#5 DATA=8'b01100000;
			#5 DATA=8'b00000001;
			#5 $finish;
		end
endmodule
