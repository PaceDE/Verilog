`include "08_fulladder.v"
module fulladder_tb;
reg a,b,cin;
wire c,d,e,sum,carry;
fulladder x1(a,b,cin,sum,carry);
fulladder a1(a,b,cin,sum,carry);
fulladder x2(a,b,cin,sum,carry);
fulladder a2(a,b,cin,sum,carry);
fulladder o1(a,b,cin,sum,carry);
initial begin
    $dumpfile("08_fulladder.vcd");
    $dumpvars(0,fulladder_tb);
     a=0; b=0; cin=0;
    #10
     a=0; b=0; cin=1;
    #10
     a=0; b=1; cin=0;
    #10
     a=0; b=1; cin=1;
    #10
     a=1; b=0; cin=0;
    #10
     a=1; b=0; cin=1;
    #10
     a=1; b=1; cin=0;
    #10
     a=1; b=1; cin=1;
    #10

    $finish;
     
end
endmodule