istree(nil).
istree(t(_, Left, Right)) :-
    istree(Left),
    istree(Right).
