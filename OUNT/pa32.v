module srlatch (S, R, En, Q, Qc);
	input S, R;
	input En;
	output Q, Qc;
	reg Q,Qc;
	always @(S or R or En)
		begin
			if(En)
			begin
				if(S!=R)
				begin
					Q=S;
					Qc=R;
				end

				else if(S==1 && R==1)
				begin
					Q=1'bZ;
					Qc=1'bZ;
				end
			end
		end
endmodule

module srlatch4 (S, R, En, Q, Qc);
	input [3:0] S, R;
	input En;
	output [3:0] Q, Qc;

	srlatch DUT1(S[0],R[0],En,Q[0],Qc[0]);
	srlatch DUT2(S[1],R[1],En,Q[1],Qc[1]);
	srlatch DUT3(S[2],R[2],En,Q[2],Qc[2]);
	srlatch DUT4(S[3],R[3],En,Q[3],Qc[3]);

endmodule
