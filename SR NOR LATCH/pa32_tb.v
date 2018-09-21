module testbench; 
	reg[3:0] S,R;
	reg En;
	wire[3:0] Q,Qc;
	srlatch4 DUT(S,R,En,Q,Qc);

	initial
		begin
			$monitor("At time: ",$time," S=%b, R=%b, En=%b, Q=%b, Qc=%b",S,R,En,Q,Qc);
			$dumpfile("pa31_tb.vcd");
			$dumpvars(0,testbench);

			//#5 S=4'b0000;R=4'b0000;En=0;Q=4'b0000;Qc=4'b1111;

			
			#5 S=4'b0011;R=4'b0000;En=0;
			#5 S=4'b0011;R=4'b0000;En=0;
			#5 S=4'b0011;R=4'b0001;En=1;
			#5 S=4'b0011;R=4'b0110;En=1;
			#5 S=4'b0111;R=4'b0100;En=1;
			#5 S=4'b0101;R=4'b0110;En=1;
			#5 S=4'b0011;R=4'b0001;En=1;
			#5 S=4'b0001;R=4'b1010;En=1;
			
			#5 $finish;
		end
endmodule

