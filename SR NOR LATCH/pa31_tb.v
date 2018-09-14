module testbench; 
	reg S,R,En;
	wire Q,Qc;
	srlatch DUT(S,R,En,Q,Qc);

	initial
		begin
			$monitor("At time: ",$time," S=%b, R=%b, En=%b, Q=%b, Qc=%b",S,R,En,Q,Qc);
			$dumpfile("pa31_tb.vcd");
			$dumpvars(0,testbench);

			#5 S=1;R=0;En=0;
			#5 S=0;R=1;En=0;
			#5 S=0;R=0;En=0;
			#5 S=1;R=1;En=0;
			#5 S=1;R=0;En=1;
			#5 S=1;R=1;En=1;
			#5 S=0;R=1;En=1;
			#5 S=1;R=1;En=1;
			#5 S=0;R=0;En=1;

			#5 $finish;
		end
endmodule

