module fulladder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
xor x1(c,a,b);
and a1(d,a,b);
xor x2(sum,c,cin);
and a2(e,c,cin);
or o1(carry,e,d);
endmodule