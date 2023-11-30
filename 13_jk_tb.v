
`include "13_jk.v"
module jk_tb;
reg c;
reg J,K;
wire Q,Qc;
jk a(J,K,c,Q,Qc);
initial begin
    c=1;
    forever #1 c=~c;
end
initial begin
    $dumpfile("13_jk.vcd");
    $dumpvars(0,jk_tb);
    J=1'b0;
    K=1'b0;
   
  #8 $finish();     
end
always #4 J=~J;
always #2 K=~K;
endmodule