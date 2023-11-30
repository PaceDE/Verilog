module mux4(s0,s1,I0,I1,I2,I3,Output);
input s0,s1,I0,I1,I2,I3;
output Output;
assign Output=  ((~s1) &(~s0) & I0) |((~s1) &s0 & I1)| (s1 &(~s0) & I2)| (s1 &s0 & I3);

endmodule