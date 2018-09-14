// S-R NOR LATCH

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
