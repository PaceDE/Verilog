module mux(s0,s1,I0,I1,I2,I3,O0,O1,O2,O3,Output);
input s0,s1,I0,I1,I2,I3;
output O0,O1,O2,O3,Output;
assign O0= (~s0) &(~s1) & I0;
assign O1= (~s0) &s1 & I1;
assign O2= s0 &(~s1) & I2;
assign O3= s0 &s1 & I3;
assign Output= O0 | O1 | O2 | O3;

endmodule