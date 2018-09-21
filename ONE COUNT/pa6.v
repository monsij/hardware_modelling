// Module system testing passed but sample cases passed with local failed testing
module onecount (COUNT, DATA);
	input [15:0] DATA;
	output [4:0] COUNT;

	integer count=0;
	integer iter=0;
	integer ind=0;

	reg [4:0] COUNT;
	reg[4:0] temp;
	always @* begin
		while(iter<=15)
			begin
				if(DATA[iter]==1)
					count=count + 1;
              	iter = iter + 1;
			end

		temp[0]=0;
		temp[1]=0;
		temp[2]=0;
		temp[3]=0;
		temp[4]=0;


		while(count>0)
			begin
              temp[ind]= (count % 2);
				count = count / 2;
				ind = ind + 1;
			end

		COUNT = temp;
	end
endmodule