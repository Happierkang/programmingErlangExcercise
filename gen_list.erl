-module(gen_list).
-compile(export_all).

%gen_list(0)->[];
%gen_list(N)->[N|gen_list(N-1)].

gen_list(N)->gen_list([],N).%Add a temp variable that contains the result 
gen_list(Acc,0)->Acc;% base case that means when the recursion exits
gen_list(Acc,N) when N>0->gen_list([N|Acc],N-1).%before "." pattern-matching