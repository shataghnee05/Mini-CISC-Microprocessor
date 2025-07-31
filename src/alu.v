module alu(a,b,y,opcode);
  input [7:0] a,b;
  input [3:0] opcode;
  output reg[7:0] y;
  always@(*) begin
    case(opcode)
      4'b0001 : y = a+b;
      4'b0010 : y = a-b;
      4'b0011 : y = a*b;
      4'b0100 : y = (!b == 0)?a/b:8'b0;
      4'b0101 : y = a&b;
      4'b0110 : y = a^b;
      4'b0111 : y = a >> 2;
      4'b1000 : y = a << 2;
      4'b1001 : y = b + 1;
      4'b1010 : y = b - 1;
      4'b1011 : y = (~a)*b;
      4'b1100 : y = a*(~b);
     default : y = 8'b0;
    endcase
  end
endmodule