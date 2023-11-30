module jk (J,K,c,Q,Qc);
input J,K;
input c;
output Q,Qc;
reg Q,Qc;
always @(posedge c)
 begin
if(J==0 & K==0)
 Q=Q;
if(J==0 & K==1)
 Q=0;
if(J==1 & K==0)
 Q=1;
if(J==1 & K==1)
 Q=~Q;

     Qc=~Q;
end
endmodule