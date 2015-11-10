-module(tail_sublist).
-compile(export_all).

tail_sublist(L,N)->lists:reverse(tail_sublist(L,N,[])).
tail_sublist(_,0,Sublist)->Sublist;
tail_sublist([],_,Sublist)->Sublist;
tail_sublist([H|T],N,Sublist) when N>0->
	tail_sublist(T,N-1,[H|Sublist]).