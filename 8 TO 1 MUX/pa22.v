module mux2x1 (in, sel, out);
	input [1:0] in;
	input sel;
	output out;

	assign out = in[sel];
endmodule


module mux8x1 (in, sel, out);
	input [7:0] in;
	input [2:0] sel;
	output out;

	wire[3:0] p1;
	wire[1:0] p2;

	mux2x1 DUT1(in[1:0],sel[0],p1[0]);
	mux2x1 DUT2(in[3:2],sel[0],p1[1]);
	mux2x1 DUT3(in[5:4],sel[0],p1[2]);
	mux2x1 DUT4(in[7:6],sel[0],p1[3]);

	mux2x1 DUT5(p1[1:0],sel[1],p2[0]);
	mux2x1 DUT6(p1[3:2],sel[1],p2[1]);

	mux2x1 DUT7(p2[1:0],sel[2],out);

endmodule