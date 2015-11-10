-module(tail_recursion).
-compile(export_all).

tail_fac(N)->tail_fac(N,1).
tail_fac(0,Acc)->Acc;
tail_fac(N,Acc) when N>0 ->tail_fac(N-1,N*Acc).
