`include "11_mux.v"
module mux_tb;
reg s0,s1,I0,I1,I2,I3;
wire Output;
mux4 m(s0,s1,I0,I1,I2,I3,Output);
initial begin
    $dumpfile("11_mux.vcd");
    $dumpvars(0,mux_tb);
    I0=1'b0;
    I1=1'b0;
    I2=1'b0;
    I3=1'b0;
    s0=1'b0;
    s1=1'b0;
  #64 $stop;


    $finish;
     
end
always #32 s1=~s1;
always #16 s0=~s0;

always #8 I3=~I3;
always #4 I2=~I2;
always #2 I1=~I1;
always #1 I0=~I0;
endmodule