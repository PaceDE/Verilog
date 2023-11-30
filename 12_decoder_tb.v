`include "12_decoder.v"
module decoder_tb;
reg I2,I1,I0;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
encoder e(I2,I1,I0,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
initial begin
    $dumpfile("12_decoder.vcd");
    $dumpvars(0,decoder_tb);
    I0=1'b0;
    I1=1'b0;
    I2=1'b0;
  #8 $stop;



     
end


always #4 I2=~I2;
always #2 I1=~I1;
always #1 I0=~I0;
endmodule