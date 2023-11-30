`include "09_mux.v"
module mux_tb;
reg s0,s1,I0,I1,I2,I3;
wire O0,O1,O2,O3,Output;
mux m(s0,s1,I0,I1,I2,I3,O0,O1,O2,O3,Output);
initial begin
    $dumpfile("09_mux.vcd");
    $dumpvars(0,mux_tb);
     s0=0; s1=0; I0=1; I1=1; I2=1; I3=1;
    #10
       s0=0; s1=1; I0=1; I1=1; I2=1; I3=1;
    #10
        s0=1; s1=0; I0=1; I1=1; I2=1; I3=1;
    #10
       s0=1; s1=1; I0=1; I1=1; I2=1; I3=1;

    #10

    $finish;
     
end
endmodule