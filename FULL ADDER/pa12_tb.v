module testbench; 
	reg[3:0] A,B;
	wire[3:0] Res;
	reg In;
	wire Out;
	add_sub_4 DUT(A,B,In,Res,Out);


	initial
		begin
			
			$monitor("At time: ",$time," A=%b, B=%b, In=%b, Res=%b, Out=%b",A,B,In,Res,Out);  // what is printed
			$dumpfile("pa12_tb.vcd");
			$dumpvars(0,testbench);
			#5 A=4'b0101;B=4'b0010;In=0;
			#5 A=4'b0011;B=4'b0111;In=1;
			#5 $finish;
		end
endmodule