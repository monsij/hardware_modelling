module fadder (A, B, Cin, Sum, Cout);
	input A, B;
	input Cin;
	output Sum;
	output Cout;
	wire t1,t2,t3;
	xor g1(Sum,A,B,Cin);
	and g2(t1,B,Cin);
	and g3(t2,A,Cin);
	and g4(t3,A,B);
	or g5(Cout,t1,t2,t3);
endmodule //fadder


