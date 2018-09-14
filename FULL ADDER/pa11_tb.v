module testbench;
	reg A,B,Cin;
	wire Sum,Cout;

	fadder DUT(A,B,Cin,Sum,Cout);

	initial
		begin

			$monitor("At time : ",$time," A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b",A,B,Cin,Sum,Cout);
			$dumpfile("pa11.vcd");
			$dumpvars(0,testbench);
			#5 A=0;B=0;Cin=0;
			#5 A=0;B=0;Cin=1;
			#5 A=0;B=1;Cin=0;
			#5 A=0;B=1;Cin=1;

			#5 A=1;B=0;Cin=0;
			#5 A=1;B=0;Cin=1;
			#5 A=1;B=1;Cin=0;
			#5 A=1;B=1;Cin=1;

			#5 $finish;
		end
endmodule