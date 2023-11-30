module mux4(s0,s1,I0,I1,I2,I3,Output);
input s0,s1,I0,I1,I2,I3;
output Output;
assign Output= ((~s0) &(~s1) & I0) |((~s0) &s1 & I1)| (s0 &(~s1) & I2)| (s0 &s1 & I3);

endmodule