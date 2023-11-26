split(List, 0, [], List).
split([H | T], N, [H | L1], L2) :-
    N > 0,
    N1 is N - 1,
    split(T, N1, L1, L2).
