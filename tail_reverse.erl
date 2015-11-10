-module(tail_reverse).
-compile(export_all).

tail_reverse(L)->tail_reverse(L,[]).
tail_reverse([],Acc)->Acc;
tail_reverse([H|T],Acc)->tail_reverse(T,[H|Acc]).
