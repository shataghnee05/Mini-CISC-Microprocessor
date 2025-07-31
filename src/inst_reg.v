module inst_reg(clk,rst,instr,opcode,rs1,rs2);
  input clk,rst;
  input[7:0] instr;
  output reg[1:0] rs1,rs2;
  output reg[3:0] opcode;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      opcode <= 4'b0;
      rs1 <= 2'b0;
      rs2 <= 2'b0;
    end
    else begin
      opcode <= instr[7:4];
      rs1 <= instr[3:2];
      rs2 <= instr[1:0];
    end
  end
endmodule