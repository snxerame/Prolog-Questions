cbal_tree(0, nil).
cbal_tree(N, t(x, Left, Right)) :-
    N > 0,
    N1 is (N - 1) // 2,
    N2 is N - 1 - N1,
    cbal_tree(N1, Left),
    cbal_tree(N2, Right).
