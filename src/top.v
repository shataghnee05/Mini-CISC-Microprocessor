module top(clk,rst,a1,a2,a3,a4,en_1,en_2,en_3,en_4);
  input clk,rst;
  input[7:0] a1,a2,a3,a4;
  input en_1,en_2,en_3,en_4;
  wire pc_en,write;
  wire [7:0] pc,instr;
  wire[3:0] opcode,al_op;
  wire[1:0] rs1,rs2,rout;
  wire[7:0] d1,d2,d3,d4;
  wire[7:0] op_1,op_2;
  wire[7:0] result;
  pro_count p1(clk,rst,pc_en,pc);
  memory m1(clk,rst,pc,instr);
  inst_reg i1(clk,rst,instr,opcode,rs1,rs2);
  reg_bank b1(clk,rst,a1,a2,a3,a4,result,en_1,en_2,en_3,en_4,write,rout,d1,d2,d3,d4);
  reg_sel s1(clk,rst,d1,d2,d3,d4,rs1,rs2,op_1,op_2);
  cu c1(clk,rst,opcode,rs2,al_op,pc_en,rout,write);
  alu a0(op_1,op_2,result,al_op);
endmodule