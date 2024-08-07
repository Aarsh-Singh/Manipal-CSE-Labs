module rc(clock,set,Resetn,Q);
input set,clock,Resetn;
output [3:0]Q;
dff s0(Q[0],clock,set,Resetn,Q[3]);
dff s1(Q[3],clock,~set,Resetn,Q[2]);
dff s2(Q[2],clock,~set,Resetn,Q[1]);
dff s3(Q[1],clock,~set,Resetn,Q[0]);
endmodule

module dff(D,clock,set,Resetn,Q);
input D,set,clock,Resetn;
output reg Q;
always @ (posedge clock )
begin
if(!Resetn && set)
	Q <= 1;
else if(!Resetn)
	Q <= 0;
else
	Q <= D;
end
endmodule
