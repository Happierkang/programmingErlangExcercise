-module(quick_sort).
-compile(export_all).

quicksort([])->[];
quicksort([Pivot|Rest])->
	{Smaller,Larger}=partion(Pivot,Rest,[],[]),
	quicksort(Smaller)++[Pivot]++quicksort(Larger).

partion(_,[],Smaller,Larger)->{Smaller,Larger};

partion(Pivot,[H|T],Smaller,Larger)->
	if
		H=<Pivot ->partion(Pivot,T,[H|Smaller],Larger);
		H>Pivot->partion(Pivot,T,Smaller,[H|Larger])	
	end.