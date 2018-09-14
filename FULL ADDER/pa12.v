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


module add_sub_4 (A, B, In, Res, Out);
	input  [3:0] A, B;
	input In;
	output [3:0] Res;
	output Out;

	wire[3:0] Re;
	wire[3:0] carry;
	wire cnew;
	xor g1(Re[0],B[0],In);
	xor g2(Re[1],B[1],In);
	xor g3(Re[2],B[2],In);
	xor g4(Re[3],B[3],In);

	assign cnew = In;
	fadder DUT1(A[0],Re[0],cnew,Res[0],carry[0]);
	fadder DUT2(A[1],Re[1],carry[0],Res[1],carry[1]);
	fadder DUT3(A[2],Re[2],carry[1],Res[2],carry[2]);
	fadder DUT4(A[3],Re[3],carry[2],Res[3],carry[3]);
	assign Out = carry[3];



endmodule