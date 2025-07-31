module reg_bank(clk,rst,a1,a2,a3,a4,alu_result,en1,en2,en3,en4,write,out_sel,o1,o2,o3,o4);
  input clk,rst,write;
  input en1,en2,en3,en4;
  input[7:0] a1,a2,a3,a4,alu_result;
  input[1:0] out_sel;
  output[7:0] o1,o2,o3,o4;
  reg[7:0] bank[3:0];
  assign o1 = bank[0];
  assign o2 = bank[1];
  assign o3 = bank[2];
  assign o4 = bank[3];
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      bank[0] <= 0;
      bank[1] <= 0;
      bank[2] <= 0;
      bank[3] <= 0;
    end
    else begin
      if(en1)
        bank[0] <= a1;
      if(en2)
        bank[1] <= a2;
      if(en3)
        bank[2] <= a3;
      if(en4)
        bank[3] <= a4;
      if(write)
        bank[out_sel] <= alu_result;
    end
  end
endmodule