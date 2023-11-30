module encoder (I2,I1,I0,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
input I2,I1,I0;
output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
assign Y0=~I2 & ~I1 & ~I0;
assign Y1=~I2 & ~I1 & I0;
assign Y2=~I2 & I1 & ~I0;
assign Y3=~I2 & I1 & I0;
assign Y4=I2 & ~I1 & ~I0;
assign Y5=I2 & ~I1 & I0;
assign Y6=I2 & I1 & ~I0;
assign Y7=I2 & I1 & I0;

endmodule