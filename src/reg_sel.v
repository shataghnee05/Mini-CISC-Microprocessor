module reg_sel(clk,rst,bank0,bank1,bank2,bank3,reg_write1,reg_write2,out1,out2);
  input clk,rst;
  input[1:0] reg_write1,reg_write2;
  input[7:0] bank0,bank1,bank2,bank3;
  output reg[7:0] out1,out2;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      out1 <= 0;
      out2 <= 0;
    end
    else begin
      case(reg_write1)
        2'b00 : out1 <= bank0;
        2'b01 : out1 <= bank1;
        2'b10 : out1 <= bank2;
        2'b11 : out1 <= bank3;
      endcase
      case(reg_write2)
        2'b00 : out2 <= bank0;
        2'b01 : out2 <= bank1;
        2'b10 : out2 <= bank2;
        2'b11 : out2 <= bank3;
      endcase
    end
  end
endmodule