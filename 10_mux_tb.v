`include "10_mux.v"
module mux_tb;
reg s0,s1,I0,I1,I2,I3;
wire Output;
mux4 m(s0,s1,I0,I1,I2,I3,Output);
initial begin
    $dumpfile("10_mux.vcd");
    $dumpvars(0,mux_tb);
     s0=0; s1=0; I0=1; I1=0; I2=1; I3=0;
    #10
       s0=0; s1=1;  I0=1; I1=0; I2=1; I3=0;
    #10
        s0=1; s1=0;  I0=1; I1=0; I2=1; I3=0;
    #10
       s0=1; s1=1;  I0=1; I1=0; I2=1; I3=0;

    #10

    $finish;
     
end
endmodule