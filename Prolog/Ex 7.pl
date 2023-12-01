7.Represente em Prolog os seguintes predicados genéricos sobre listas:

 a) adiciona(X, L1, L2)
adiciona(X, L1, [X|L1]).

 b) remover(X, L1, L2)
remover(X, L1, L2) :- delete(L1, X, L2).

 c) inverte(L1, L2) 
inverte([], []).
inverte([H|T], L2) :- inverte(T, Invertido), append(Invertido, [H], L2).

 d) tamanho(L1, X) 
tamanho([], 0).
tamanho([_|T], X) :- tamanho(T, N), X is N + 1.

 e) soma(L1, X) 
soma([], 0).
soma([H|T], X) :- soma(T, SomaResto), X is H + SomaResto.