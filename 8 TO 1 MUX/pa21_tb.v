module testbench; 
	reg[1:0] in;
	reg sel;
	wire out;
	mux2x1 DUT(in,sel,out);

	
	initial
		begin
			
			$monitor("At time: ",$time," in=%b, sel=%b, out=%b",in,sel,out);  // what is printed
			$dumpfile("pa21_tb.vcd");
			$dumpvars(0,testbench);

			#5 in=2'b01;sel=0;
			#5 in=2'b01;sel=1;
			#5 $finish;

		end
endmodule