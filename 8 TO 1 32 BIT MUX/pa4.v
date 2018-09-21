module bus_multiplexer(DATABUS,D0,D1,D2,D3,D4,D5,D6,D7,SEL);
  input [31:0]D0,D1,D2,D3,D4,D5,D6,D7;
  input[2:0]SEL;
  output[31:0]DATABUS;
  reg[31:0]DATABUS;
  always @* begin
  case(SEL)
    3'b000 : DATABUS = D0;
    3'b001 : DATABUS = D1;
    3'b010 : DATABUS = D2;
    3'b011 : DATABUS = D3;
    3'b100 : DATABUS = D4;
    3'b101 : DATABUS = D5;
    3'b110 : DATABUS = D6;
    3'b111 : DATABUS = D7;
  endcase
  end
  
endmodule

  
  